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

static int spi_read_xyz(int *x, int *y, int *z)
{
    int timeout;

    SPI_CTRL = 1;

    timeout = 2000000;
    while ((SPI_CTRL & 1) && timeout > 0) timeout--;
    if (timeout == 0) return 0;

    timeout = 2000000;
    while (!(SPI_CTRL & 2) && timeout > 0) timeout--;
    if (timeout == 0) return 0;

    uint32_t xy = SPI_XY;
    uint32_t zz = SPI_Z;

    *x = (int16_t)(xy & 0xFFFF);
    *y = (int16_t)((xy >> 16) & 0xFFFF);
    *z = (int16_t)(zz & 0xFFFF);

    return 1;
}

static char accel_to_cmd(int x, int y, int z)
{
    int th_x = 300;
    int th_y = 700;
    int th_z = -1500;

    if (y > th_y)
        return 'W';   // disparar

    if (x > th_x)
        return 'D';   // derecha

    if (x < -th_x)
        return 'A';   // izquierda

    return 'S';       // centro / quieto
}

int main(void)
{
    int x, y, z;
    char cmd;
    char last_cmd = 0;

    LEDS = 0x00FF;

    while (1) {
        if (spi_read_xyz(&x, &y, &z)) {
            cmd = accel_to_cmd(x, y, z);

            if (cmd != last_cmd) {
                putc_uart(cmd);
                last_cmd = cmd;
            }

            LEDS = 0x0F0F;
        } else {
            LEDS = 0xF000;
        }

        delay(150000);
    }

    return 0;
}