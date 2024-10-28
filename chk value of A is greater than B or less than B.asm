org 100h
.model small
.stack 100h
.data
msg1 DB 10,13, "Enter value of A:$"
msg2 DB 10,13, "Enter value of B:$"
msg3 DB 10,13, "A is greater than B:$"
msg4 DB 10,13, "A is less than B:$"
msg5 DB 10,13, "A is equal to B:$"
.code
main proc
    mov ax, @data
    mov ds, ax

    
    mov dx, offset msg1
    mov ah, 9
    int 21h
    mov ah, 1
    int 21h
    mov cl, al 
    mov dx, offset msg2
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    mov dl, al  
    cmp cl, dl
    jg label_greater   
    jl label_less     
    mov dx, offset msg5
    mov ah, 9
    int 21h
    jmp end_program

label_greater:
    mov dx, offset msg3
    mov ah, 9
    int 21h
    jmp end_program
label_less:
    mov dx, offset msg4
    mov ah, 9
    int 21h

end_program:
    
    mov ah, 4Ch
    int 21h
main endp
end main

