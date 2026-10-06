section .data
    title db "ASCII Robot - NASM32", 10
    titleLen equ $ - title

    head db "     [@@@@@@]     ", 10
    headLen equ $ - head

    eyes db "     | o  o |     ", 10
    eyesLen equ $ - eyes

    mouth db "     |  --  |     ", 10
    mouthLen equ $ - mouth

    arms1 db "  --+        +--  ", 10
    arms1Len equ $ - arms1

    arms2 db "  --+        +--  ", 10
    arms2Len equ $ - arms2

    body db "     |  ||  |     ", 10
    bodyLen equ $ - body

    base db "     |  ||  |     ", 10
    baseLen equ $ - base

    legs db "     |  ||  |     ", 10
    legsLen equ $ - legs

    feet db "     |__||__|     ", 10
    feetLen equ $ - feet

section .text
    global _start

_start:
    mov ecx, title
    mov edx, titleLen
    call printString

    mov ecx, head
    mov edx, headLen
    call printString

    mov ecx, eyes
    mov edx, eyesLen
    call printString

    mov ecx, mouth
    mov edx, mouthLen
    call printString

    mov ecx, arms1
    mov edx, arms1Len
    call printString

    mov ecx, arms2
    mov edx, arms2Len
    call printString

    mov esi, 3
bodyLoop:
    mov ecx, body
    mov edx, bodyLen
    call printString
    dec esi
    jnz bodyLoop

    mov ecx, base
    mov edx, baseLen
    call printString

    mov ecx, legs
    mov edx, legsLen
    call printString

    mov ecx, feet
    mov edx, feetLen
    call printString

    mov eax, 1
    mov ebx, 0
    int 0x80

printString:
    mov eax, 4
    mov ebx, 1
    int 0x80
    ret
