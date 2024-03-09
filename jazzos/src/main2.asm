 org 0x7c00
    bits 16
    

    main:
        mov ax,0
        mov ds,0
        mov es,0
        mov ss,0

        mov sp,0x7c00
        mov si,os_boot_msg
        call print
        HLT

    halt:
        jmp halt
; this is a test

    print:
        push si
        pudh ax
        push bx

    print_loop:
        lodsb
        or,al,al
        jz done_print

        mov ah, 0x0e
        mov bh, 0
        int 0x10

        jmp print_loop

    done_print:
        pop bx
        pop ax
        pop si
        ret

    os_boot_msg: db 'Oue system booted!', 0x0d, 0x0a, 0
    times 510-($-$$) db 0
    dw 0aa55h