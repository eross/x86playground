.section .data
output:
        .ascii "Hello World..."
.section .text 
.globl _start
_start:
_main:
        movl $4, %eax 
        movl $1, %ebx
        movl $output, %ecx
        movl $14, %edx
        int $0x80
        movl $1, %eax
        movl $0, %ebx
        int $0x80
