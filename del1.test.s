	.file	"del1.test.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"Error: Cannot open file '%s'\n"
	.align 8
.LC2:
	.string	"Error: Memory allocation failed"
.LC3:
	.string	"%d,%d\n"
.LC4:
	.string	"%d,"
.LC5:
	.string	"\n"
.LC6:
	.string	","
.LC7:
	.string	"%d"
.LC8:
	.string	"%d,%d,%c"
	.text
	.globl	readDfa
	.type	readDfa, @function
readDfa:
.LFB6:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -56[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -56[rbp]
	lea	rdx, .LC0[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -24[rbp], rax
	cmp	QWORD PTR -24[rbp], 0
	jne	.L2
	mov	rax, QWORD PTR -56[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	jmp	.L15
.L2:
	mov	edi, 32
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L4
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	fclose@PLT
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 0
	jmp	.L15
.L4:
	mov	rax, QWORD PTR -16[rbp]
	lea	rcx, 20[rax]
	mov	rax, QWORD PTR -16[rbp]
	lea	rdx, 16[rax]
	mov	rax, QWORD PTR -24[rbp]
	lea	rsi, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	cmp	eax, 2
	je	.L5
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	eax, 0
	jmp	.L15
.L5:
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 16[rax]
	cdqe
	sal	rax, 3
	mov	rdi, rax
	call	malloc@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 20[rax]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	mov	rdi, rax
	call	malloc@PLT
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 8[rax], rdx
	mov	DWORD PTR -36[rbp], 0
	jmp	.L6
.L7:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, .LC4[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	BYTE PTR 4[rax], 0
	add	DWORD PTR -36[rbp], 1
.L6:
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 16[rax]
	cmp	DWORD PTR -36[rbp], eax
	jl	.L7
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	mov	DWORD PTR -32[rbp], -1
	jmp	.L8
.L12:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	movzx	eax, BYTE PTR 4[rax]
	test	al, al
	jne	.L9
	mov	eax, DWORD PTR -40[rbp]
	cmp	DWORD PTR -32[rbp], eax
	jl	.L10
.L9:
	mov	rax, QWORD PTR -24[rbp]
	mov	edx, 1
	mov	rsi, -1
	mov	rdi, rax
	call	fseek@PLT
	jmp	.L11
.L10:
	mov	rax, QWORD PTR -16[rbp]
	mov	rdx, QWORD PTR [rax]
	mov	eax, DWORD PTR -40[rbp]
	cdqe
	sal	rax, 3
	add	rax, rdx
	mov	BYTE PTR 4[rax], 1
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, .LC6[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	mov	eax, DWORD PTR -40[rbp]
	mov	DWORD PTR -32[rbp], eax
.L8:
	lea	rdx, -40[rbp]
	mov	rax, QWORD PTR -24[rbp]
	lea	rcx, .LC7[rip]
	mov	rsi, rcx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	cmp	eax, 1
	je	.L12
.L11:
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, .LC5[rip]
	mov	rsi, rdx
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	mov	DWORD PTR -28[rbp], 0
	jmp	.L13
.L14:
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rsi, 8[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR 8[rax]
	mov	eax, DWORD PTR -28[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rcx
	lea	rdx, 4[rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, QWORD PTR 8[rax]
	mov	eax, DWORD PTR -28[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	add	rax, rax
	add	rax, rcx
	sal	rax, 2
	add	rax, rdi
	mov	rdi, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	r8, rsi
	mov	rcx, rdx
	mov	rdx, rdi
	lea	rsi, .LC8[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_fscanf@PLT
	add	DWORD PTR -28[rbp], 1
.L13:
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR 20[rax]
	cmp	DWORD PTR -28[rbp], eax
	jl	.L14
	mov	rax, QWORD PTR -16[rbp]
	mov	DWORD PTR 24[rax], 0
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	fclose@PLT
	mov	rax, QWORD PTR -16[rbp]
.L15:
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	readDfa, .-readDfa
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
