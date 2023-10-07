; Disassembly of file: del1.test.o
; Sat Sep 30 19:20:09 2023
; Type: ELF64
; Syntax: NASM
; Instruction set: Pentium Pro, x64

default rel

global readDfa

extern __stack_chk_fail                                 ; near
extern __printf_chk                                     ; near
extern puts                                             ; near
extern fseek                                            ; near
extern fclose                                           ; near
extern __isoc99_fscanf                                  ; near
extern malloc                                           ; near
extern fopen                                            ; near


SECTION .text   align=16 exec                           ; section number 1, code

readDfa:; Function begin
        ;endbr64                                         ; 0000 _ F3: 0F 1E. FA
        push    r15                                     ; 0004 _ 41: 57
        lea     rsi, [rel LLC0]                         ; 0006 _ 48: 8D. 35, 00000000(rel)
        push    r14                                     ; 000D _ 41: 56
        push    r13                                     ; 000F _ 41: 55
        push    r12                                     ; 0011 _ 41: 54
        mov     r12, rdi                                ; 0013 _ 49: 89. FC
        push    rbp                                     ; 0016 _ 55
        push    rbx                                     ; 0017 _ 53
        sub     rsp, 24                                 ; 0018 _ 48: 83. EC, 18
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        mov     rax, qword [fs:abs 28H]                 ; 001C _ 64 48: 8B. 04 25, 00000028
        mov     qword [rsp+8H], rax                     ; 0025 _ 48: 89. 44 24, 08
        xor     eax, eax                                ; 002A _ 31. C0
        call    fopen                                   ; 002C _ E8, 00000000(PLT r)
        test    rax, rax                                ; 0031 _ 48: 85. C0
        je      ?_012                                   ; 0034 _ 0F 84, 000001F9
        mov     edi, 32                                 ; 003A _ BF, 00000020
        mov     rbp, rax                                ; 003F _ 48: 89. C5
        call    malloc                                  ; 0042 _ E8, 00000000(PLT r)
        mov     r12, rax                                ; 0047 _ 49: 89. C4
        test    rax, rax                                ; 004A _ 48: 85. C0
        je      ?_011                                   ; 004D _ 0F 84, 000001CA
        lea     rcx, [rax+14H]                          ; 0053 _ 48: 8D. 48, 14
        lea     rdx, [rax+10H]                          ; 0057 _ 48: 8D. 50, 10
        mov     rdi, rbp                                ; 005B _ 48: 89. EF
        xor     eax, eax                                ; 005E _ 31. C0
        lea     rsi, [rel LLC3]                         ; 0060 _ 48: 8D. 35, 00000000(rel)
        call    __isoc99_fscanf                         ; 0067 _ E8, 00000000(PLT r)
        cmp     eax, 2                                  ; 006C _ 83. F8, 02
        jne     ?_010                                   ; 006F _ 0F 85, 0000019B
        movsxd  rdi, dword [r12+10H]                    ; 0075 _ 49: 63. 7C 24, 10
        xor     r13d, r13d                              ; 007A _ 45: 31. ED
        lea     r14, [rel LLC5]                         ; 007D _ 4C: 8D. 35, 00000000(rel)
        mov     r15, rdi                                ; 0084 _ 49: 89. FF
        shl     rdi, 3                                  ; 0087 _ 48: C1. E7, 03
        call    malloc                                  ; 008B _ E8, 00000000(PLT r)
        mov     qword [r12], rax                        ; 0090 _ 49: 89. 04 24
        mov     rbx, rax                                ; 0094 _ 48: 89. C3
        movsxd  rax, dword [r12+14H]                    ; 0097 _ 49: 63. 44 24, 14
        lea     rdi, [rax+rax*2]                        ; 009C _ 48: 8D. 3C 40
        shl     rdi, 2                                  ; 00A0 _ 48: C1. E7, 02
        call    malloc                                  ; 00A4 _ E8, 00000000(PLT r)
        mov     qword [r12+8H], rax                     ; 00A9 _ 49: 89. 44 24, 08
        test    r15d, r15d                              ; 00AE _ 45: 85. FF
        jle     ?_002                                   ; 00B1 _ 7E, 33
; Filling space: 5H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
?_001:  lea     r15, [r13*8]                            ; 00B8 _ 4E: 8D. 3C ED, 00000000
        mov     rsi, r14                                ; 00C0 _ 4C: 89. F6
        mov     rdi, rbp                                ; 00C3 _ 48: 89. EF
        xor     eax, eax                                ; 00C6 _ 31. C0
        lea     rdx, [rbx+r15]                          ; 00C8 _ 4A: 8D. 14 3B
        add     r13, 1                                  ; 00CC _ 49: 83. C5, 01
        call    __isoc99_fscanf                         ; 00D0 _ E8, 00000000(PLT r)
        mov     rbx, qword [r12]                        ; 00D5 _ 49: 8B. 1C 24
        mov     byte [rbx+r15+4H], 0                    ; 00D9 _ 42: C6. 44 3B, 04, 00
        cmp     dword [r12+10H], r13d                   ; 00DF _ 45: 39. 6C 24, 10
        jg      ?_001                                   ; 00E4 _ 7F, D2
?_002:  mov     rdi, rbp                                ; 00E6 _ 48: 89. EF
        xor     eax, eax                                ; 00E9 _ 31. C0
        lea     r14, [rsp+4H]                           ; 00EB _ 4C: 8D. 74 24, 04
        mov     ebx, 4294967295                         ; 00F0 _ BB, FFFFFFFF
        lea     rsi, [rel LLC4]                         ; 00F5 _ 48: 8D. 35, 00000000(rel)
        lea     r13, [rel LLC7]                         ; 00FC _ 4C: 8D. 2D, 00000000(rel)
        call    __isoc99_fscanf                         ; 0103 _ E8, 00000000(PLT r)
        lea     r15, [rel LLC6]                         ; 0108 _ 4C: 8D. 3D, 00000000(rel)
        jmp     ?_004                                   ; 010F _ EB, 3B

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8
?_003:  movsxd  rcx, dword [rsp+4H]                     ; 0118 _ 48: 63. 4C 24, 04
        mov     rdx, qword [r12]                        ; 011D _ 49: 8B. 14 24
        lea     rdx, [rdx+rcx*8]                        ; 0121 _ 48: 8D. 14 CA
        cmp     byte [rdx+4H], 0                        ; 0125 _ 80. 7A, 04, 00
        jne     ?_009                                   ; 0129 _ 0F 85, 000000C1
        cmp     ecx, ebx                                ; 012F _ 39. D9
        jle     ?_009                                   ; 0131 _ 0F 8E, 000000B9
        mov     byte [rdx+4H], 1                        ; 0137 _ C6. 42, 04, 01
        mov     rsi, r15                                ; 013B _ 4C: 89. FE
        mov     rdi, rbp                                ; 013E _ 48: 89. EF
        xor     eax, eax                                ; 0141 _ 31. C0
        call    __isoc99_fscanf                         ; 0143 _ E8, 00000000(PLT r)
        mov     ebx, dword [rsp+4H]                     ; 0148 _ 8B. 5C 24, 04
?_004:  xor     eax, eax                                ; 014C _ 31. C0
        mov     rdx, r14                                ; 014E _ 4C: 89. F2
        mov     rsi, r13                                ; 0151 _ 4C: 89. EE
        mov     rdi, rbp                                ; 0154 _ 48: 89. EF
        call    __isoc99_fscanf                         ; 0157 _ E8, 00000000(PLT r)
        cmp     eax, 1                                  ; 015C _ 83. F8, 01
        jz      ?_003                                   ; 015F _ 74, B7
?_005:  lea     rsi, [rel LLC4]                         ; 0161 _ 48: 8D. 35, 00000000(rel)
        mov     rdi, rbp                                ; 0168 _ 48: 89. EF
        xor     eax, eax                                ; 016B _ 31. C0
        xor     ebx, ebx                                ; 016D _ 31. DB
        call    __isoc99_fscanf                         ; 016F _ E8, 00000000(PLT r)
        mov     eax, dword [r12+14H]                    ; 0174 _ 41: 8B. 44 24, 14
        lea     r13, [rel LLC8]                         ; 0179 _ 4C: 8D. 2D, 00000000(rel)
        test    eax, eax                                ; 0180 _ 85. C0
        jle     ?_007                                   ; 0182 _ 7E, 31
; Filling space: 4H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H

ALIGN   8
?_006:  mov     rax, qword [r12+8H]                     ; 0188 _ 49: 8B. 44 24, 08
        lea     rdx, [rbx+rbx*2]                        ; 018D _ 48: 8D. 14 5B
        mov     rsi, r13                                ; 0191 _ 4C: 89. EE
        mov     rdi, rbp                                ; 0194 _ 48: 89. EF
        add     rbx, 1                                  ; 0197 _ 48: 83. C3, 01
        lea     rdx, [rax+rdx*4]                        ; 019B _ 48: 8D. 14 90
        xor     eax, eax                                ; 019F _ 31. C0
        lea     rcx, [rdx+4H]                           ; 01A1 _ 48: 8D. 4A, 04
        lea     r8, [rdx+8H]                            ; 01A5 _ 4C: 8D. 42, 08
        call    __isoc99_fscanf                         ; 01A9 _ E8, 00000000(PLT r)
        cmp     dword [r12+14H], ebx                    ; 01AE _ 41: 39. 5C 24, 14
        jg      ?_006                                   ; 01B3 _ 7F, D3
?_007:  mov     dword [r12+18H], 0                      ; 01B5 _ 41: C7. 44 24, 18, 00000000
        mov     rdi, rbp                                ; 01BE _ 48: 89. EF
        call    fclose                                  ; 01C1 _ E8, 00000000(PLT r)
?_008:  mov     rax, qword [rsp+8H]                     ; 01C6 _ 48: 8B. 44 24, 08
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        sub     rax, qword [fs:abs 28H]                 ; 01CB _ 64 48: 2B. 04 25, 00000028
        jnz     ?_013                                   ; 01D4 _ 75, 7B
        add     rsp, 24                                 ; 01D6 _ 48: 83. C4, 18
        mov     rax, r12                                ; 01DA _ 4C: 89. E0
        pop     rbx                                     ; 01DD _ 5B
        pop     rbp                                     ; 01DE _ 5D
        pop     r12                                     ; 01DF _ 41: 5C
        pop     r13                                     ; 01E1 _ 41: 5D
        pop     r14                                     ; 01E3 _ 41: 5E
        pop     r15                                     ; 01E5 _ 41: 5F
        ret                                             ; 01E7 _ C3

; Filling space: 8H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16
?_009:  mov     edx, 1                                  ; 01F0 _ BA, 00000001
        mov     rsi, -1                                 ; 01F5 _ 48: C7. C6, FFFFFFFF
        mov     rdi, rbp                                ; 01FC _ 48: 89. EF
        call    fseek                                   ; 01FF _ E8, 00000000(PLT r)
        jmp     ?_005                                   ; 0204 _ E9, FFFFFF58

; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8
?_010:  mov     rdi, rbp                                ; 0210 _ 48: 89. EF
        xor     r12d, r12d                              ; 0213 _ 45: 31. E4
        call    fclose                                  ; 0216 _ E8, 00000000(PLT r)
        jmp     ?_008                                   ; 021B _ EB, A9

?_011:  mov     rdi, rbp                                ; 021D _ 48: 89. EF
        call    fclose                                  ; 0220 _ E8, 00000000(PLT r)
        lea     rdi, [rel LLC2]                         ; 0225 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 022C _ E8, 00000000(PLT r)
        jmp     ?_008                                   ; 0231 _ EB, 93

?_012:  mov     rdx, r12                                ; 0233 _ 4C: 89. E2
        lea     rsi, [rel LLC1]                         ; 0236 _ 48: 8D. 35, 00000000(rel)
        mov     edi, 1                                  ; 023D _ BF, 00000001
        xor     eax, eax                                ; 0242 _ 31. C0
        call    __printf_chk                            ; 0244 _ E8, 00000000(PLT r)
        xor     r12d, r12d                              ; 0249 _ 45: 31. E4
        jmp     ?_008                                   ; 024C _ E9, FFFFFF75
; readDfa End of function

?_013:  ; Local function
; Note: Function does not end with ret or jmp
        call    __stack_chk_fail                        ; 0251 _ E8, 00000000(PLT r)


SECTION .data                                           ; section number 2, data


SECTION .bss                                            ; section number 3, bss


SECTION .rodata.str1.1                                  ; section number 4, const

LLC0:                                                   ; byte
        db 72H, 00H                                     ; 0000 _ r.

LLC1:                                                   ; byte
        db 45H, 72H, 72H, 6FH, 72H, 3AH, 20H, 43H       ; 0002 _ Error: C
        db 61H, 6EH, 6EH, 6FH, 74H, 20H, 6FH, 70H       ; 000A _ annot op
        db 65H, 6EH, 20H, 66H, 69H, 6CH, 65H, 20H       ; 0012 _ en file 
        db 27H, 25H, 73H, 27H, 0AH, 00H                 ; 001A _ '%s'..

LLC3:                                                   ; byte
        db 25H, 64H, 2CH, 25H, 64H, 0AH, 00H            ; 0020 _ %d,%d..

LLC4:                                                   ; byte
        db 0AH, 00H                                     ; 0027 _ ..

LLC5:                                                   ; byte
        db 25H, 64H, 2CH, 00H                           ; 0029 _ %d,.

LLC6:                                                   ; byte
        db 2CH, 00H                                     ; 002D _ ,.

LLC7:                                                   ; byte
        db 25H, 64H, 00H                                ; 002F _ %d.

LLC8:                                                   ; byte
        db 25H, 64H, 2CH, 25H, 64H, 2CH, 25H, 63H       ; 0032 _ %d,%d,%c
        db 00H                                          ; 003A _ .


SECTION .rodata.str1.8                                  ; section number 5, const

LLC2:                                                   ; byte
        db 45H, 72H, 72H, 6FH, 72H, 3AH, 20H, 4DH       ; 0000 _ Error: M
        db 65H, 6DH, 6FH, 72H, 79H, 20H, 61H, 6CH       ; 0008 _ emory al
        db 6CH, 6FH, 63H, 61H, 74H, 69H, 6FH, 6EH       ; 0010 _ location
        db 20H, 66H, 61H, 69H, 6CH, 65H, 64H, 00H       ; 0018 _  failed.


SECTION .note.gnu.property                              ; section number 6, const

        db 04H, 00H, 00H, 00H, 10H, 00H, 00H, 00H       ; 0000 _ ........
        db 05H, 00H, 00H, 00H, 47H, 4EH, 55H, 00H       ; 0008 _ ....GNU.
        db 02H, 00H, 00H, 0C0H, 04H, 00H, 00H, 00H      ; 0010 _ ........
        db 03H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........


