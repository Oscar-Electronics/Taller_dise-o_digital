OUTPUT_ARCH(riscv)
ENTRY(_start)

MEMORY
{
    ROM (rx)  : ORIGIN = 0x00000000, LENGTH = 4K
    RAM (rwx) : ORIGIN = 0x00040000, LENGTH = 100K
}

SECTIONS
{
    .text : { *(.text) } > ROM
    .data : { *(.data) } > RAM AT> ROM
    .bss  : { *(.bss)  } > RAM
}