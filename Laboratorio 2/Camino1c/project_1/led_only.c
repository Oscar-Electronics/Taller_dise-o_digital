#define LEDS (*(volatile unsigned int*)0x2004)

int main(void) {
    LEDS = 0xFFFF;
    while (1);
}