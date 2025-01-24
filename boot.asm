[BITS 16]
[ORG 0x7C00]

start:
    mov ax, 0x07C0
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7BFF

    ; Load kernel (assuming it's at sector 2)
    mov ah, 0x02
    mov al, 1
    mov ch, 0
    mov cl, 2
    mov dh, 0
    mov dl, 0
    mov bx, 0x8000
    int 0x13

    jmp 0x8000:0

TIMES 510-($-$$) db 0
dw 0xAA55
