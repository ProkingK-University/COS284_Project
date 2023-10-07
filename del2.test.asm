; Disassembly of file: del2.test.o
; Sat Sep 30 20:11:58 2023
; Type: ELF64
; Syntax: NASM
; Instruction set: Pentium Pro, x64

default rel

global simulateDfa


SECTION .text   align=16 exec                           ; section number 1, code

simulateDfa:; Function begin
        endbr64                                         ; 0000 _ F3: 0F 1E. FA
        movzx   r8d, byte [rsi]                         ; 0004 _ 44: 0F B6. 06
        mov     edx, dword [rdi+18H]                    ; 0008 _ 8B. 57, 18
        test    r8b, r8b                                ; 000B _ 45: 84. C0
        jz      ?_004                                   ; 000E _ 74, 53
        mov     r10d, dword [rdi+14H]                   ; 0010 _ 44: 8B. 57, 14
        add     rsi, 1                                  ; 0014 _ 48: 83. C6, 01
        lea     eax, [r10-1H]                           ; 0018 _ 41: 8D. 42, FF
        lea     r9, [rax+rax*2]                         ; 001C _ 4C: 8D. 0C 40
        shl     r9, 2                                   ; 0020 _ 49: C1. E1, 02
; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8
?_001:  test    r10d, r10d                              ; 0028 _ 45: 85. D2
        jle     ?_007                                   ; 002B _ 7E, 73
        mov     rax, qword [rdi+8H]                     ; 002D _ 48: 8B. 47, 08
        lea     rcx, [rax+r9+0CH]                       ; 0031 _ 4A: 8D. 4C 08, 0C
        jmp     ?_003                                   ; 0036 _ EB, 11

; Filling space: 8H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_002:  add     rax, 12                                 ; 0040 _ 48: 83. C0, 0C
        cmp     rax, rcx                                ; 0044 _ 48: 39. C8
        jz      ?_007                                   ; 0047 _ 74, 57
?_003:  cmp     dword [rax], edx                        ; 0049 _ 39. 10
        jnz     ?_002                                   ; 004B _ 75, F3
        cmp     byte [rax+8H], r8b                      ; 004D _ 44: 38. 40, 08
        jnz     ?_002                                   ; 0051 _ 75, ED
        movzx   r8d, byte [rsi]                         ; 0053 _ 44: 0F B6. 06
        add     rsi, 1                                  ; 0057 _ 48: 83. C6, 01
        mov     edx, dword [rax+4H]                     ; 005B _ 8B. 50, 04
        test    r8b, r8b                                ; 005E _ 45: 84. C0
        jnz     ?_001                                   ; 0061 _ 75, C5
?_004:  mov     ecx, dword [rdi+10H]                    ; 0063 _ 8B. 4F, 10
        test    ecx, ecx                                ; 0066 _ 85. C9
        jle     ?_007                                   ; 0068 _ 7E, 36
        mov     rax, qword [rdi]                        ; 006A _ 48: 8B. 07
        sub     ecx, 1                                  ; 006D _ 83. E9, 01
        lea     rcx, [rax+rcx*8+8H]                     ; 0070 _ 48: 8D. 4C C8, 08
        jmp     ?_006                                   ; 0075 _ EB, 12

; Filling space: 9H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 84H, 00H, 00H, 00H, 00H
;       db 00H

ALIGN   16
?_005:  add     rax, 8                                  ; 0080 _ 48: 83. C0, 08
        cmp     rax, rcx                                ; 0084 _ 48: 39. C8
        jz      ?_007                                   ; 0087 _ 74, 17
?_006:  cmp     dword [rax], edx                        ; 0089 _ 39. 10
        jnz     ?_005                                   ; 008B _ 75, F3
        movzx   r8d, byte [rax+4H]                      ; 008D _ 44: 0F B6. 40, 04
        test    r8b, r8b                                ; 0092 _ 45: 84. C0
        jnz     ?_008                                   ; 0095 _ 75, 0C
        add     rax, 8                                  ; 0097 _ 48: 83. C0, 08
        cmp     rax, rcx                                ; 009B _ 48: 39. C8
        jnz     ?_006                                   ; 009E _ 75, E9
?_007:  xor     r8d, r8d                                ; 00A0 _ 45: 31. C0
?_008:  mov     eax, r8d                                ; 00A3 _ 44: 89. C0
        ret                                             ; 00A6 _ C3
; simulateDfa End of function


SECTION .data                                           ; section number 2, data


SECTION .bss                                            ; section number 3, bss


SECTION .note.gnu.property                              ; section number 4, const

        db 04H, 00H, 00H, 00H, 10H, 00H, 00H, 00H       ; 0000 _ ........
        db 05H, 00H, 00H, 00H, 47H, 4EH, 55H, 00H       ; 0008 _ ....GNU.
        db 02H, 00H, 00H, 0C0H, 04H, 00H, 00H, 00H      ; 0010 _ ........
        db 03H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........


