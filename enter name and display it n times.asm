 .model small
.stack 100h
.data
    msg db 'AqsaAhmed$'
    msg1 db 'Enter a number: $'
.code
main proc
    mov ax, @data
    mov ds, ax
    mov dx, offset msg1
    mov ah, 09h
    int 21h
mov ah, 01h
    int 21h
    sub al, '0'        
      mov cx, ax           
print_name:             
   mov dx, offset msg
    mov ah, 09h
    int 21h
    loop print_name     
mov ax, 4C00h
    int 21h

main endp
end main
