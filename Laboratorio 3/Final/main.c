#include <stdint.h>

#define LEDS       (*(volatile uint32_t*)0x2004)

#define UART_CTRL  (*(volatile uint32_t*)0x2010)
#define UART_DATA0 (*(volatile uint32_t*)0x2018)

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
}

static void puts_uart(const char *s)
{
    while (*s)
        putc_uart(*s++);
}

static void putnl(void)
{
    putc_uart('\r');
    putc_uart('\n');
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
    while (n >= 10000) {
        n -= 10000;
        d++;
    }
    if (d || s) {
        putc_uart('0' + d);
        s = 1;
    }

    d = 0;
    while (n >= 1000) {
        n -= 1000;
        d++;
    }
    if (d || s) {
        putc_uart('0' + d);
        s = 1;
    }

    d = 0;
    while (n >= 100) {
        n -= 100;
        d++;
    }
    if (d || s) {
        putc_uart('0' + d);
        s = 1;
    }

    d = 0;
    while (n >= 10) {
        n -= 10;
        d++;
    }
    if (d || s)
        putc_uart('0' + d);

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

int main(void)
{
    int x, y, z;

    LEDS = 0x1111;

    puts_uart("ADXL362 XYZ");
    putnl();

    LEDS = 0x2222;

    while (1)
    {
        if (spi_read_xyz(&x, &y, &z))
        {
            LEDS = 0x7777;

            puts_uart("X=");
            put_int(x);

            puts_uart(" Y=");
            put_int(y);

            puts_uart(" Z=");
            put_int(z);

            putnl();
        }
        else
        {
            LEDS = 0xF000;

            puts_uart("SPI ERROR");
            putnl();
        }

        delay(500000);
    }

    return 0;
}