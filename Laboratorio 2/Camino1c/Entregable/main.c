// main.c — Calculadora para sistema AXI
// El uart_axi_lite_wrapper usa el protocolo:
//   Escribir byte TX: UART_DATA = byte; UART_CTRL = 1; while(UART_CTRL & 1);
//   Leer byte RX:     while(!(UART_CTRL & 2)); byte = UART_DATA_RX;
#include <stdint.h>

#define LEDS       (*(volatile uint32_t*)0x2004)
#define UART_CTRL  (*(volatile uint32_t*)0x2010)
#define UART_DATA  (*(volatile uint32_t*)0x2018)  // TX
#define UART_DATA_RX (*(volatile uint32_t*)0x201C) // RX

static void putc_uart(char c) {
    UART_DATA = (uint8_t)c;   // cargar byte en tx_data_reg
    UART_CTRL = 1;             // disparar envio (bit0=1)
    while (UART_CTRL & 1);    // esperar que el HW limpie bit0
}

static char getc_uart(void) {
    while (!(UART_CTRL & 2)); // esperar rx_ready (bit1=1)
    return (char)(UART_DATA_RX & 0xFF);
}

static void putnl(void) { putc_uart('\r'); putc_uart('\n'); }

static void put_int(int n) {
    int d, s = 0;
    if (n < 0) { putc_uart('-'); n = -n; }
    if (n == 0) { putc_uart('0'); return; }
    d=0; while(n>=10000){n-=10000;d++;} if(d||s){putc_uart('0'+d);s=1;}
    d=0; while(n>=1000) {n-=1000; d++;} if(d||s){putc_uart('0'+d);s=1;}
    d=0; while(n>=100)  {n-=100;  d++;} if(d||s){putc_uart('0'+d);s=1;}
    d=0; while(n>=10)   {n-=10;   d++;} if(d||s){putc_uart('0'+d);}
    putc_uart('0'+n);
}

static int get_int(void) {
    int n = 0, neg = 0, digits = 0;
    char c;
    while (1) {
        c = getc_uart();
        if (c == '\r' || c == '\n') { putnl(); break; }
        if (c == '-' && digits == 0) { neg=1; putc_uart(c); continue; }
        if (c >= '0' && c <= '9' && digits < 4) {
            n = n*10 + (c-'0');
            digits++;
            putc_uart(c);
        }
    }
    return neg ? -n : n;
}

int main(void) {
    LEDS = 0x0F0F;  // todos LEDs = firmware OK

    putc_uart('F'); putc_uart('W'); putc_uart('8'); putnl();
    putc_uart('='); putc_uart('C'); putc_uart('a');
    putc_uart('l'); putc_uart('c'); putc_uart('='); putnl();

    while (1) {
        putc_uart('A'); putc_uart('=');
        int a = get_int();

        putc_uart('O'); putc_uart('p'); putc_uart(':');
        char op;
        do { op = getc_uart(); } while (op != '+' && op != '-');
        putc_uart(op); putnl();

        putc_uart('B'); putc_uart('=');
        int b = get_int();

        int res = (op == '+') ? a + b : a - b;
        putc_uart('='); putc_uart('>');
        put_int(res); putnl();
        putc_uart('-'); putc_uart('-'); putc_uart('-'); putnl();
    }
}