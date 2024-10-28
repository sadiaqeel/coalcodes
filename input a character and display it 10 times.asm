.model small
.stack 100h
.data 
msg DB 'Enter the character: $'
char db ?
.code
main proc
    mov cx, 10
    mov ax,@data
    mov ds,ax
    mov dl,msg
    mov dx,offset msg
    mov ah,9
    int 21h
    mov ah, 1
    int 21
  mov char, al	
    mov dl, 10
    mov ah, 2
    int 21h
PrintDigits:
    mov dl, char
    mov ah, 2
    int 21h 
    loop PrintDigits
    mov ah, 4Ch
    int 21h
main endp
end main
