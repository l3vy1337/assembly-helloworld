.intel_syntax noprefix
.section .data
    hello: .asciz "Hello, World!"

.section .text
.global _start

_start:
    mov eax, 4
    mov ebx, 1
    lea ecx, [hello]
    mov edx, 13
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
