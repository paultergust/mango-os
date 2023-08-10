[org 0x7c00]
mov ah, 0x0e
mov bx, foobar

printFoo:
  mov al, [bx]
  cmp al, 0
  je exit
  int 0x10
  inc bx
  jmp printFoo

exit:
  jmp $

foobar:
  db "String variable", 0


times 510-($-$$) db 0
db 0x55, 0xaa
