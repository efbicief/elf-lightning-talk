; tiny.asm
GLOBAL _start ; object symbol used by linker to find entry point
_start:
        xor     al, al ; set al to 0
        inc     al     ; increment, rather than add 1 to it
        mov     bl, 2  ; write to 8-bit bl register instead of 32-bit ebx register
        int     0x80   ; linux system call interface - takes call from eax, parameter from ebx