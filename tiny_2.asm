; tiny.asm
GLOBAL _start ; object symbol used by linker to find entry point
_start:
        mov     rax, 1 ; exit system call ID, see /usr/include/unistd.h
        mov     rbx, 2 ; rbx stores argument - value to return to the parent process
        int     0x80   ; linux system call interface - takes call from rax, parameter from rbx