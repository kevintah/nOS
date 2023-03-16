org 0x7c00
bits 16
	

readChar:
	mov ah, 0
	int 0x16
	cmp al, 0
	jmp printChar
	jmp readChar

printChar: 
	mov ah, 0x0e
	cmp al, 0
	je printString
	int 0x10
	jmp readChar
	
	
	
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

hardwareData:
	db "Test"


times 510-($-$$) db 0

db 0x55, 0xaa


