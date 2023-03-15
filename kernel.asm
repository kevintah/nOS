org 0x7c00
bits 16
	


readChar:
	mov ah, 0
	int 0x16

printChar: 
	mov ah, 0x0e
	cmp al, 0
	je end
	int 0x10
	
	
	
mov bx, osWelcome
	

printString: 
	mov ah, 0x0e
	mov al, [bx]
	cmp al, 0
	je end
	int 0x10
	inc bx
	jmp printString


end:



osWelcome:
	db  " Welcome to Njokom Operating System !", 0


times 510-($-$$) db 0

db 0x55, 0xaa


