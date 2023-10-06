; Disassembly of file: del3.test.o
; Sat Oct  7 00:16:58 2023
; Type: ELF64
; Syntax: NASM
; Instruction set: Pentium Pro, x64

default rel

global areStatesEquivalent
global findTransition
global sameLanguage

extern __stack_chk_fail                                 ; near
extern memset                                           ; near


SECTION .text   align=16 exec                           ; section number 1, code

areStatesEquivalent:; Function begin
        ;endbr64                                         ; 0000 _ F3: 0F 1E. FA
        shr     rdi, 32                                 ; 0004 _ 48: C1. EF, 20
        shr     rsi, 32                                 ; 0008 _ 48: C1. EE, 20
        cmp     dil, sil                                ; 000C _ 40: 38. F7
        sete    al                                      ; 000F _ 0F 94. C0
        ret                                             ; 0012 _ C3
; areStatesEquivalent End of function

; Filling space: 0DH
; Filler type: Multi-byte NOP
;       db 66H, 66H, 2EH, 0FH, 1FH, 84H, 00H, 00H
;       db 00H, 00H, 00H, 66H, 90H

ALIGN   16

findTransition:; Function begin
        ;endbr64                                         ; 0020 _ F3: 0F 1E. FA
        mov     ecx, dword [rdi+14H]                    ; 0024 _ 8B. 4F, 14
        test    ecx, ecx                                ; 0027 _ 85. C9
        jle     ?_003                                   ; 0029 _ 7E, 35
        mov     rax, qword [rdi+8H]                     ; 002B _ 48: 8B. 47, 08
        sub     ecx, 1                                  ; 002F _ 83. E9, 01
        lea     rcx, [rcx+rcx*2]                        ; 0032 _ 48: 8D. 0C 49
        lea     rcx, [rax+rcx*4+0CH]                    ; 0036 _ 48: 8D. 4C 88, 0C
        jmp     ?_002                                   ; 003B _ EB, 0C

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8
?_001:  add     rax, 12                                 ; 0040 _ 48: 83. C0, 0C
        cmp     rax, rcx                                ; 0044 _ 48: 39. C8
        jz      ?_003                                   ; 0047 _ 74, 17
?_002:  mov     r8, rax                                 ; 0049 _ 49: 89. C0
        cmp     dword [rax], esi                        ; 004C _ 39. 30
        jnz     ?_001                                   ; 004E _ 75, F0
        cmp     byte [rax+8H], dl                       ; 0050 _ 38. 50, 08
        jnz     ?_001                                   ; 0053 _ 75, EB
        mov     rax, r8                                 ; 0055 _ 4C: 89. C0
        ret                                             ; 0058 _ C3

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8
?_003:  xor     r8d, r8d                                ; 0060 _ 45: 31. C0
        mov     rax, r8                                 ; 0063 _ 4C: 89. C0
        ret                                             ; 0066 _ C3
; findTransition End of function

; Filling space: 9H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 84H, 00H, 00H, 00H, 00H
;       db 00H

ALIGN   16

sameLanguage:; Function begin
        ;endbr64                                         ; 0070 _ F3: 0F 1E. FA
        push    rbp                                     ; 0074 _ 55
        mov     rbp, rsp                                ; 0075 _ 48: 89. E5
        push    r15                                     ; 0078 _ 41: 57
        push    r14                                     ; 007A _ 41: 56
        push    r13                                     ; 007C _ 41: 55
        mov     r13, rsi                                ; 007E _ 49: 89. F5
        push    r12                                     ; 0081 _ 41: 54
        mov     r12, rdi                                ; 0083 _ 49: 89. FC
        push    rbx                                     ; 0086 _ 53
        sub     rsp, 88                                 ; 0087 _ 48: 83. EC, 58
        movsxd  r14, dword [rdi+18H]                    ; 008B _ 4C: 63. 77, 18
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        mov     rax, qword [fs:abs 28H]                 ; 008F _ 64 48: 8B. 04 25, 00000028
        mov     qword [rbp-38H], rax                    ; 0098 _ 48: 89. 45, C8
        mov     rax, qword [rdi]                        ; 009C _ 48: 8B. 07
        mov     rbx, r14                                ; 009F _ 4C: 89. F3
        movzx   r15d, byte [rax+r14*8+4H]               ; 00A2 _ 46: 0F B6. 7C F0, 04
        mov     qword [rbp-70H], rax                    ; 00A8 _ 48: 89. 45, 90
        test    r15b, r15b                              ; 00AC _ 45: 84. FF
        jnz     ?_004                                   ; 00AF _ 75, 12
        movsxd  rdx, dword [rsi+18H]                    ; 00B1 _ 48: 63. 56, 18
        mov     rax, qword [rsi]                        ; 00B5 _ 48: 8B. 06
        cmp     byte [rax+rdx*8+4H], 0                  ; 00B8 _ 80. 7C D0, 04, 00
        je      ?_009                                   ; 00BD _ 0F 84, 0000009C
?_004:  movsxd  rax, dword [r13+10H]                    ; 00C3 _ 49: 63. 45, 10
        movsxd  rcx, dword [r12+10H]                    ; 00C7 _ 49: 63. 4C 24, 10
        mov     rdi, rsp                                ; 00CC _ 48: 89. E7
        mov     rdx, rax                                ; 00CF _ 48: 89. C2
        mov     qword [rbp-60H], rax                    ; 00D2 _ 48: 89. 45, A0
        imul    rdx, rcx                                ; 00D6 _ 48: 0F AF. D1
        lea     rax, [rdx+0FH]                          ; 00DA _ 48: 8D. 42, 0F
        mov     rsi, rax                                ; 00DE _ 48: 89. C6
        and     rax, 0FFFFFFFFFFFFF000H                 ; 00E1 _ 48: 25, FFFFF000
        sub     rdi, rax                                ; 00E7 _ 48: 29. C7
        and     rsi, 0FFFFFFFFFFFFFFF0H                 ; 00EA _ 48: 83. E6, F0
        cmp     rsp, rdi                                ; 00EE _ 48: 39. FC
        jz      ?_006                                   ; 00F1 _ 74, 15
?_005:  sub     rsp, 4096                               ; 00F3 _ 48: 81. EC, 00001000
        or      qword [rsp+0FF8H], 00H                  ; 00FA _ 48: 83. 8C 24, 00000FF8, 00
        cmp     rsp, rdi                                ; 0103 _ 48: 39. FC
        jnz     ?_005                                   ; 0106 _ 75, EB
?_006:  and     esi, 0FFFH                              ; 0108 _ 81. E6, 00000FFF
        sub     rsp, rsi                                ; 010E _ 48: 29. F4
        test    rsi, rsi                                ; 0111 _ 48: 85. F6
        jnz     ?_011                                   ; 0114 _ 75, 74
?_007:  xor     esi, esi                                ; 0116 _ 31. F6
        mov     rdi, rsp                                ; 0118 _ 48: 89. E7
        mov     qword [rbp-48H], rcx                    ; 011B _ 48: 89. 4D, B8
        mov     qword [rbp-68H], rsp                    ; 011F _ 48: 89. 65, 98
        call    memset                                  ; 0123 _ E8, 00000000(PLT r)
        mov     rcx, qword [rbp-48H]                    ; 0128 _ 48: 8B. 4D, B8
        lea     rdx, [rcx*4+0FH]                        ; 012C _ 48: 8D. 14 8D, 0000000F
        mov     rcx, rsp                                ; 0134 _ 48: 89. E1
        mov     rax, rdx                                ; 0137 _ 48: 89. D0
        and     rdx, 0FFFFFFFFFFFFF000H                 ; 013A _ 48: 81. E2, FFFFF000
        and     rax, 0FFFFFFFFFFFFFFF0H                 ; 0141 _ 48: 83. E0, F0
        sub     rcx, rdx                                ; 0145 _ 48: 29. D1
?_008:  cmp     rsp, rcx                                ; 0148 _ 48: 39. CC
        jz      ?_012                                   ; 014B _ 74, 45
        sub     rsp, 4096                               ; 014D _ 48: 81. EC, 00001000
        or      qword [rsp+0FF8H], 00H                  ; 0154 _ 48: 83. 8C 24, 00000FF8, 00
        jmp     ?_008                                   ; 015D _ EB, E9

?_009:  mov     eax, 1                                  ; 015F _ B8, 00000001
; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8
?_010:  mov     rdx, qword [rbp-38H]                    ; 0168 _ 48: 8B. 55, C8
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        sub     rdx, qword [fs:abs 28H]                 ; 016C _ 64 48: 2B. 14 25, 00000028
        jne     ?_031                                   ; 0175 _ 0F 85, 00000221
        lea     rsp, [rbp-28H]                          ; 017B _ 48: 8D. 65, D8
        pop     rbx                                     ; 017F _ 5B
        pop     r12                                     ; 0180 _ 41: 5C
        pop     r13                                     ; 0182 _ 41: 5D
        pop     r14                                     ; 0184 _ 41: 5E
        pop     r15                                     ; 0186 _ 41: 5F
        pop     rbp                                     ; 0188 _ 5D
        ret                                             ; 0189 _ C3

?_011:  or      qword [rsp+rsi-8H], 00H                 ; 018A _ 48: 83. 4C 34, F8, 00
        jmp     ?_007                                   ; 0190 _ EB, 84

?_012:  and     eax, 0FFFH                              ; 0192 _ 25, 00000FFF
        sub     rsp, rax                                ; 0197 _ 48: 29. C4
        test    rax, rax                                ; 019A _ 48: 85. C0
        jnz     ?_015                                   ; 019D _ 75, 4B
?_013:  lea     rax, [rsp+3H]                           ; 019F _ 48: 8D. 44 24, 03
        mov     rsi, rsp                                ; 01A4 _ 48: 89. E6
        mov     rcx, rax                                ; 01A7 _ 48: 89. C1
        and     rax, 0FFFFFFFFFFFFFFFCH                 ; 01AA _ 48: 83. E0, FC
        mov     qword [rbp-50H], rax                    ; 01AE _ 48: 89. 45, B0
        mov     rax, qword [rbp-60H]                    ; 01B2 _ 48: 8B. 45, A0
        shr     rcx, 2                                  ; 01B6 _ 48: C1. E9, 02
        lea     rdx, [rax*4+0FH]                        ; 01BA _ 48: 8D. 14 85, 0000000F
        mov     rax, rdx                                ; 01C2 _ 48: 89. D0
        and     rdx, 0FFFFFFFFFFFFF000H                 ; 01C5 _ 48: 81. E2, FFFFF000
        and     rax, 0FFFFFFFFFFFFFFF0H                 ; 01CC _ 48: 83. E0, F0
        sub     rsi, rdx                                ; 01D0 _ 48: 29. D6
?_014:  cmp     rsp, rsi                                ; 01D3 _ 48: 39. F4
        jz      ?_016                                   ; 01D6 _ 74, 1A
        sub     rsp, 4096                               ; 01D8 _ 48: 81. EC, 00001000
        or      qword [rsp+0FF8H], 00H                  ; 01DF _ 48: 83. 8C 24, 00000FF8, 00
        jmp     ?_014                                   ; 01E8 _ EB, E9

?_015:  or      qword [rsp+rax-8H], 00H                 ; 01EA _ 48: 83. 4C 04, F8, 00
        jmp     ?_013                                   ; 01F0 _ EB, AD

?_016:  and     eax, 0FFFH                              ; 01F2 _ 25, 00000FFF
        sub     rsp, rax                                ; 01F7 _ 48: 29. C4
        test    rax, rax                                ; 01FA _ 48: 85. C0
        jz      ?_017                                   ; 01FD _ 74, 06
        or      qword [rsp+rax-8H], 00H                 ; 01FF _ 48: 83. 4C 04, F8, 00
?_017:  lea     rax, [rsp+3H]                           ; 0205 _ 48: 8D. 44 24, 03
        mov     rdi, qword [rbp-68H]                    ; 020A _ 48: 8B. 7D, 98
        mov     dword [rcx*4], ebx                      ; 020E _ 89. 1C 8D, 00000000
        xor     r8d, r8d                                ; 0215 _ 45: 31. C0
        mov     rsi, rax                                ; 0218 _ 48: 89. C6
        imul    r14, qword [rbp-60H]                    ; 021B _ 4C: 0F AF. 75, A0
        and     rax, 0FFFFFFFFFFFFFFFCH                 ; 0220 _ 48: 83. E0, FC
        mov     qword [rbp-58H], rax                    ; 0224 _ 48: 89. 45, A8
        movsxd  rax, dword [r13+18H]                    ; 0228 _ 49: 63. 45, 18
        shr     rsi, 2                                  ; 022C _ 48: C1. EE, 02
        lea     rcx, [rdi+rax]                          ; 0230 _ 48: 8D. 0C 07
        mov     rdi, qword [r13]                        ; 0234 _ 49: 8B. 7D, 00
        mov     dword [rsi*4], eax                      ; 0238 _ 89. 04 B5, 00000000
        mov     rdx, rax                                ; 023F _ 48: 89. C2
        mov     byte [rcx+r14], 1                       ; 0242 _ 42: C6. 04 31, 01
        mov     r14d, 1                                 ; 0247 _ 41: BE, 00000001
        mov     qword [rbp-78H], rdi                    ; 024D _ 48: 89. 7D, 88
        mov     rdi, qword [rbp-78H]                    ; 0251 _ 48: 8B. 7D, 88
        cmp     byte [rdi+rax*8+4H], r15b               ; 0255 _ 44: 38. 7C C7, 04
        jne     ?_027                                   ; 025A _ 0F 85, 000000FD
?_018:  mov     r9d, dword [r12+14H]                    ; 0260 _ 45: 8B. 4C 24, 14
        mov     ecx, 97                                 ; 0265 _ B9, 00000061
        lea     eax, [r9-1H]                            ; 026A _ 41: 8D. 41, FF
        lea     rdi, [rax+rax*2]                        ; 026E _ 48: 8D. 3C 40
        mov     eax, dword [r13+14H]                    ; 0272 _ 41: 8B. 45, 14
        shl     rdi, 2                                  ; 0276 _ 48: C1. E7, 02
?_019:  test    r9d, r9d                                ; 027A _ 45: 85. C9
        jle     ?_028                                   ; 027D _ 0F 8E, 000000E5
        mov     rsi, qword [r12+8H]                     ; 0283 _ 49: 8B. 74 24, 08
        lea     r10, [rsi+rdi+0CH]                      ; 0288 _ 4C: 8D. 54 3E, 0C
        jmp     ?_021                                   ; 028D _ EB, 0E

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
?_020:  add     rsi, 12                                 ; 0290 _ 48: 83. C6, 0C
        cmp     r10, rsi                                ; 0294 _ 49: 39. F2
        je      ?_028                                   ; 0297 _ 0F 84, 000000CB
?_021:  mov     r11, rsi                                ; 029D _ 49: 89. F3
        cmp     ebx, dword [rsi]                        ; 02A0 _ 3B. 1E
        jnz     ?_020                                   ; 02A2 _ 75, EC
        cmp     byte [rsi+8H], cl                       ; 02A4 _ 38. 4E, 08
        jnz     ?_020                                   ; 02A7 _ 75, E7
        test    eax, eax                                ; 02A9 _ 85. C0
        jle     ?_027                                   ; 02AB _ 0F 8E, 000000AC
?_022:  mov     rsi, qword [r13+8H]                     ; 02B1 _ 49: 8B. 75, 08
        xor     r10d, r10d                              ; 02B5 _ 45: 31. D2
        jmp     ?_024                                   ; 02B8 _ EB, 17

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_023:  add     r10d, 1                                 ; 02C0 _ 41: 83. C2, 01
        add     rsi, 12                                 ; 02C4 _ 48: 83. C6, 0C
        cmp     eax, r10d                               ; 02C8 _ 44: 39. D0
        jle     ?_030                                   ; 02CB _ 0F 8E, 000000BF
?_024:  cmp     edx, dword [rsi]                        ; 02D1 _ 3B. 16
        jnz     ?_023                                   ; 02D3 _ 75, EB
        cmp     byte [rsi+8H], cl                       ; 02D5 _ 38. 4E, 08
        jnz     ?_023                                   ; 02D8 _ 75, E6
        test    r11, r11                                ; 02DA _ 4D: 85. DB
        jz      ?_027                                   ; 02DD _ 74, 7E
        movsxd  r15, dword [r11+4H]                     ; 02DF _ 4D: 63. 7B, 04
        movsxd  rsi, dword [rsi+4H]                     ; 02E3 _ 48: 63. 76, 04
        mov     r10, r15                                ; 02E7 _ 4D: 89. FA
        imul    r15, qword [rbp-60H]                    ; 02EA _ 4C: 0F AF. 7D, A0
        mov     dword [rbp-48H], esi                    ; 02EF _ 89. 75, B8
        add     rsi, qword [rbp-68H]                    ; 02F2 _ 48: 03. 75, 98
        add     rsi, r15                                ; 02F6 _ 4C: 01. FE
        cmp     byte [rsi], 0                           ; 02F9 _ 80. 3E, 00
        jnz     ?_025                                   ; 02FC _ 75, 1E
        mov     r11, qword [rbp-50H]                    ; 02FE _ 4C: 8B. 5D, B0
        movsxd  r15, r14d                               ; 0302 _ 4D: 63. FE
        mov     byte [rsi], 1                           ; 0305 _ C6. 06, 01
        add     r14d, 1                                 ; 0308 _ 41: 83. C6, 01
        mov     dword [r11+r15*4], r10d                 ; 030C _ 47: 89. 14 BB
        mov     r11, qword [rbp-58H]                    ; 0310 _ 4C: 8B. 5D, A8
        mov     r10d, dword [rbp-48H]                   ; 0314 _ 44: 8B. 55, B8
        mov     dword [r11+r15*4], r10d                 ; 0318 _ 47: 89. 14 BB
?_025:  cmp     cl, 98                                  ; 031C _ 80. F9, 62
        jnz     ?_029                                   ; 031F _ 75, 5F
?_026:  add     r8, 1                                   ; 0321 _ 49: 83. C0, 01
        cmp     r14d, r8d                               ; 0325 _ 45: 39. C6
        jle     ?_009                                   ; 0328 _ 0F 8E, FFFFFE31
        mov     rax, qword [rbp-50H]                    ; 032E _ 48: 8B. 45, B0
        mov     rdi, qword [rbp-70H]                    ; 0332 _ 48: 8B. 7D, 90
        movsxd  rax, dword [rax+r8*4]                   ; 0336 _ 4A: 63. 04 80
        movzx   r15d, byte [rdi+rax*8+4H]               ; 033A _ 44: 0F B6. 7C C7, 04
        mov     rbx, rax                                ; 0340 _ 48: 89. C3
        mov     rax, qword [rbp-58H]                    ; 0343 _ 48: 8B. 45, A8
        mov     rdi, qword [rbp-78H]                    ; 0347 _ 48: 8B. 7D, 88
        movsxd  rax, dword [rax+r8*4]                   ; 034B _ 4A: 63. 04 80
        mov     rdx, rax                                ; 034F _ 48: 89. C2
        cmp     byte [rdi+rax*8+4H], r15b               ; 0352 _ 44: 38. 7C C7, 04
        je      ?_018                                   ; 0357 _ 0F 84, FFFFFF03
?_027:  xor     eax, eax                                ; 035D _ 31. C0
        jmp     ?_010                                   ; 035F _ E9, FFFFFE04

; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8
?_028:  xor     r11d, r11d                              ; 0368 _ 45: 31. DB
        test    eax, eax                                ; 036B _ 85. C0
        jg      ?_022                                   ; 036D _ 0F 8F, FFFFFF3E
        cmp     cl, 98                                  ; 0373 _ 80. F9, 62
        jz      ?_026                                   ; 0376 _ 74, A9
; Filling space: 8H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_029:  mov     ecx, 98                                 ; 0380 _ B9, 00000062
        jmp     ?_019                                   ; 0385 _ E9, FFFFFEF0

; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_030:  test    r11, r11                                ; 0390 _ 4D: 85. DB
        jz      ?_025                                   ; 0393 _ 74, 87
        xor     eax, eax                                ; 0395 _ 31. C0
        jmp     ?_010                                   ; 0397 _ E9, FFFFFDCC
; sameLanguage End of function

?_031:  ; Local function
; Note: Function does not end with ret or jmp
        call    __stack_chk_fail                        ; 039C _ E8, 00000000(PLT r)


SECTION .data                         ; section number 2, data


SECTION .bss                           ; section number 3, bss


SECTION .note.gnu.property              ; section number 4, const

        db 04H, 00H, 00H, 00H, 10H, 00H, 00H, 00H       ; 0000 _ ........
        db 05H, 00H, 00H, 00H, 47H, 4EH, 55H, 00H       ; 0008 _ ....GNU.
        db 02H, 00H, 00H, 0C0H, 04H, 00H, 00H, 00H      ; 0010 _ ........
        db 03H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........


