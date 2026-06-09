#include <stdint.h>

#define SW         (*(volatile uint32_t*)0x2000)
#define LEDS       (*(volatile uint32_t*)0x2004)

#define UART_CTRL  (*(volatile uint32_t*)0x2010)
#define UART_DATA0 (*(volatile uint32_t*)0x2018)
#define UART_DATA1 (*(volatile uint32_t*)0x201C)

#define SPI_CTRL   (*(volatile uint32_t*)0x2020)
#define SPI_XY     (*(volatile uint32_t*)0x2028)
#define SPI_Z      (*(volatile uint32_t*)0x202C)

static void delay(volatile int n)
{
    while (n--) {
        __asm__ volatile ("nop");
    }
}

static void putc_uart(char c)
{
    UART_DATA0 = (uint8_t)c;
    UART_CTRL = 1;

    while (UART_CTRL & 1);

    UART_CTRL = 0;
}

static void puts_uart(const char *s)
{
    while (*s) {
        putc_uart(*s++);
    }
}

static void putnl(void)
{
    putc_uart('\r');
    putc_uart('\n');
}

static int uart_available(void)
{
    return (UART_CTRL & 2) ? 1 : 0;
}

static char getc_uart_nonblock(void)
{
    if (!uart_available()) {
        return 0;
    }

    char c = (char)(UART_DATA1 & 0xFF);
    UART_CTRL = 0;

    return c;
}

static void put_int(int n)
{
    int d, s = 0;

    if (n < 0) {
        putc_uart('-');
        n = -n;
    }

    if (n == 0) {
        putc_uart('0');
        return;
    }

    d = 0;
    while (n >= 10000) { n -= 10000; d++; }
    if (d || s) { putc_uart('0' + d); s = 1; }

    d = 0;
    while (n >= 1000) { n -= 1000; d++; }
    if (d || s) { putc_uart('0' + d); s = 1; }

    d = 0;
    while (n >= 100) { n -= 100; d++; }
    if (d || s) { putc_uart('0' + d); s = 1; }

    d = 0;
    while (n >= 10) { n -= 10; d++; }
    if (d || s) { putc_uart('0' + d); }

    putc_uart('0' + n);
}

static int spi_read_xyz(int *x, int *y, int *z)
{
    int timeout;

    SPI_CTRL = 1;

    timeout = 2000000;
    while ((SPI_CTRL & 1) && timeout > 0)
        timeout--;

    if (timeout == 0)
        return 0;

    timeout = 2000000;
    while (!(SPI_CTRL & 2) && timeout > 0)
        timeout--;

    if (timeout == 0)
        return 0;

    uint32_t xy = SPI_XY;
    uint32_t zz = SPI_Z;

    *x = (int16_t)(xy & 0xFFFF);
    *y = (int16_t)((xy >> 16) & 0xFFFF);
    *z = (int16_t)(zz & 0xFFFF);

    return 1;
}

static void send_xyz(int x, int y, int z)
{
    putc_uart('X');
    putc_uart('=');
    put_int(x);

    putc_uart(' ');

    putc_uart('Y');
    putc_uart('=');
    put_int(y);

    putc_uart(' ');

    putc_uart('Z');
    putc_uart('=');
    put_int(z);

    putnl();
}

static int check_control(void)
{
    while (uart_available()) {
        char c = getc_uart_nonblock();

        if (c >= 'a' && c <= 'z') {
            c = c - 32;
        }

        if (c == 'S') {
            return 1;   // START
        }

        if (c == 'F') {
            return 2;   // FINISH
        }
    }

    return 0;
}

static char accel_to_cmd(int x, int y, int z)
{
    int th_x = 300;
    int th_fire = 500;

    if (y > th_fire) {
        return 'W';     // disparo
    }

    if (x > th_x) {
        return 'D';     // derecha
    }

    if (x < -th_x) {
        return 'A';     // izquierda
    }

    return 'S';         // centro
}

int main(void)
{
    int x, y, z;

    int debug_running = 0;
    int last_mode = -1;

    char cmd;
    char last_cmd = 'S';

    LEDS = 0x00FF;

    while (1) {
        int debug_mode = (SW & 1) ? 1 : 0;

        if (debug_mode != last_mode) {
            last_mode = debug_mode;
            debug_running = 0;
            last_cmd = 'S';

            if (debug_mode) {
                LEDS = 0xAAAA;
                puts_uart("START_MODE?");
                putnl();
                puts_uart("S START");
                putnl();
                puts_uart("F FINISH");
                putnl();
            } else {
                LEDS = 0x5555;
                puts_uart("GAME MODE");
                putnl();
            }
        }

        if (!spi_read_xyz(&x, &y, &z)) {
            LEDS = 0xF000;
            puts_uart("SPI ERROR");
            putnl();
            delay(500000);
            continue;
        }

        if (debug_mode) {
            int c = check_control();

            if (c == 1) {
                debug_running = 1;
                LEDS = 0x0F0F;
                puts_uart("START");
                putnl();
            }

            if (c == 2) {
                debug_running = 0;
                LEDS = 0xAAAA;
                puts_uart("FINISH");
                putnl();
            }

            if (debug_running) {
                send_xyz(x, y, z);

                for (volatile int i = 0; i < 50; i++) {
                    int c2 = check_control();

                    if (c2 == 2) {
                        debug_running = 0;
                        LEDS = 0xAAAA;
                        puts_uart("FINISH");
                        putnl();
                        break;
                    }

                    delay(5000);
                }
            } else {
                delay(100000);
            }
        } else {
            cmd = accel_to_cmd(x, y, z);

            if (cmd == 'W') {
                if (last_cmd != 'W') {
                    putc_uart('W');
                    putnl();
                }
            } else {
                putc_uart(cmd);
                putnl();
            }

            last_cmd = cmd;

            delay(100000);
        }
    }

    return 0;
}