TITLE "Programa Hola programador"
.MODEL small 
.STACK 100h 
.data
	mensaje db "Hola, programador!",0dh,0ah
.code 
	_main_ PROC
     ;mov ax, @data
     ;mov ds,ax
     mov ah,40h
     mov bx,1
     mov cx,SIZEOF mensaje
     mov dx,OFFSET mensaje
     int 21h
	.EXIT 
	_main_ ENDP
END _main_