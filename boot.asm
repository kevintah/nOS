mov ah, 0x0e
mov al, 'n'
int 0x10
mov ah, 0x0e
mov al, 'O'
int 0x10
mov ah, 0x0e
mov al, 'S'
int 0x10


jmp $


times 510-($-$$) db 0

db 0x55, 0xaa


