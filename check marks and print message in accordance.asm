org 100h

.model small
.stack 100h
.data
msg1 DB 10,13, "Enter your lab mid marks (0-9): $"
msg2 DB 10,13, "Need hard work.$"
msg3 DB 10,13, "Satisfactory.$"
msg4 DB 10,13, "Invalid input! Please enter a digit between 0 and 9.$"
.code
main proc
    mov ax, @data
    mov ds, ax

    mov dx, offset msg1
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    sub al, 30h   
    
   
    cmp al, 9
    jg invalid_input 
    cmp al, 0
    jl invalid_input  

    cmp al, 5
    jl hard_work      

    
    mov dx, offset msg3
    mov ah, 9
    int 21h
    jmp end_program

hard_work:
    
    mov dx, offset msg2
    mov ah, 9
    int 21h
    jmp end_program

invalid_input:
    
    mov dx, offset msg4
    mov ah, 9
    int 21h

end_program:
    
    mov ah, 4Ch
    int 21h
main endp
end main
