.model small
.stack 100h
.data
.code
main proc 
 mov cx,26
 mov dx,97 
 PrintDigits:	  
 mov ah,2
 int 21h 
 Inc dx;
 Loop PrintDigits:  
mov ah, 4Ch
int 21h     
main endp
end main
