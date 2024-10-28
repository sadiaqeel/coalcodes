model small
.stack 100h

.data
    msg db 'Enter number: $'
    resultMsg db 'Sum is: $'
    result db 0

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 3
    add bx, bx

inputloop:
    mov dx, offset msg 
    mov ah, 09h
    int 21h

    mov ah, 01
    int 21h
    sub al, '0'
    add bl, al

    mov dl, 13
    mov ah, 2
    int 21h
    mov dl, 10
    mov ah, 2
    int 21h

    loop inputloop

    mov result, bl

    mov dx, offset resultMsg
    mov ah, 09h
    int 21h

    mov al, result
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h

main endp
end main

