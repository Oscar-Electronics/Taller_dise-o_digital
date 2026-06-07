.section .text
.global _start
_start:
    lui  sp, 0x40
    addi sp, sp, 0x7FC
    call main
_halt:
    j _halt