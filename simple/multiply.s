section .bss
    ; Variables to store user input and result
    var1 resb 2
    var2 resb 2
    result resb 2
    tensdigit resb 2
    onesdigit resb 2

section .text
global _start

_start:
    ; Read and save user input for var1
    mov eax, 3
    mov ebx, 0
    mov ecx, var1
    mov edx, 2
    int 80h

    ; Read and save user input for var2
    mov eax, 3
    mov ebx, 0
    mov ecx, var2
    mov edx, 2
    int 80h

    ; Convert ASCII characters to numeric values
    mov al, [var1]
    sub al, '0'
    mov bl, [var2]
    sub bl, '0'

    ; Multiply var1 by var2
    mul bl

    ; Store the result in the 'result' variable
    mov [result], ax

    ; Divide the result by ten
    mov ax, 0
    mov ax, [result]
    mov bx, 10
    div bx

    ; Extract tens and ones digits
    mov [tensdigit], al
    sub ax, 10
    mov [result], ax

    ; Convert digits back to ASCII
    add [tensdigit], word '0'
    add [result], word '0'

    ; Print tens digit
    mov eax, 4
    mov ebx, 1
    mov ecx, tensdigit
    mov edx, 2
    int 80h

    ; Print ones digit
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 2
    int 80h

    ; Exit the program
    mov eax, 1
    mov ebx, 0
    int 80h
