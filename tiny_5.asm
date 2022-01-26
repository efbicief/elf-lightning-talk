BITS 64

            org     0x08048000

ehdr:                                                 ; Elf64_Ehdr
            db      0x7F, "ELF", 2, 1, 1, 2         ;   e_ident
    times 1 db      0
            xor     eax, eax
            inc     eax
            mov     bl, 2
            int     0x80
            db      0x10                            ;   e_nindent
            dw      2                               ;   e_type
            dw      62                              ;   e_machine
            dd      1                               ;   e_version
            dq      _start                          ;   e_entry
            dq      phdr - $$                       ;   e_phoff
            dq      0                               ;   e_shoff
            dd      0                               ;   e_flags
            dw      ehdrsize                        ;   e_ehsize
            dw      phdrsize                        ;   e_phentsize
            dw      1                               ;   e_phnum
            dw      0                               ;   e_shentsize
            dw      0                               ;   e_shnum
            dw      0                               ;   e_shstrndx

ehdrsize      equ     $ - ehdr

phdr:                                                 ; Elf64_Phdr
            dd      1                               ;   p_type
            dd      5                               ;   p_flags
            dq      0                               ;   p_offset
            dq      $$                              ;   p_vaddr
            dq      $$                              ;   p_paddr
            dq      filesize                        ;   p_filesz
            dq      filesize                        ;   p_memsz
            dq      0x1000                          ;   p_align

phdrsize      equ     $ - phdr

_start:
;        xor     eax, eax
;        inc     eax
;        mov     bl, 2
;        int     0x80

filesize      equ     $ - $$
