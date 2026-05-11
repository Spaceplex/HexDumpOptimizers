	.file	"optimizerComparison.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"rb"
.LC1:
	.string	"binary.out"
.LC2:
	.string	"|ADDRESS| "
.LC3:
	.string	"%08x "
.LC4:
	.string	"|HEX| "
.LC5:
	.string	"%02x "
.LC6:
	.string	"   "
.LC7:
	.string	" |ASCII| "
.LC8:
	.string	" "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC1(%rip), %rdi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rsi
	movq	%rsi, 40(%rsp)
	leaq	.LC0(%rip), %rsi
	call	fopen@PLT
	movq	%rax, 8(%rsp)
	.p2align 4
	.p2align 3
.L2:
	movq	8(%rsp), %rcx
	movl	$16, %edx
	movl	$1, %esi
	leaq	16(%rsp), %rdi
	call	fread@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L18
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movl	$16, %ebx
	call	printf@PLT
	movl	%r13d, %esi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	xorl	%eax, %eax
	leaq	.LC4(%rip), %rdi
	call	printf@PLT
	cmpq	%rbx, %r12
	cmovbe	%r12, %rbx
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
.L3:
	movzbl	16(%rsp,%rbp), %esi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	addq	$1, %rbp
	call	printf@PLT
	cmpq	%rbx, %rbp
	jb	.L3
	cmpq	$15, %r12
	ja	.L6
	.p2align 4
	.p2align 3
.L5:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	addq	$1, %rbx
	call	printf@PLT
	cmpq	$16, %rbx
	jne	.L5
.L6:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	leaq	16(%rsp), %r15
	movl	$46, %ebx
	call	printf@PLT
	leaq	16(%rsp,%r12), %rbp
	call	__ctype_b_loc@PLT
	movq	%rax, %r14
	.p2align 4
	.p2align 3
.L8:
	movzbl	(%r15), %edx
	movq	(%r14), %rax
	movq	%rdx, %rdi
	testb	$64, 1(%rax,%rdx,2)
	cmove	%ebx, %edi
	addq	$1, %r15
	call	putchar@PLT
	cmpq	%rbp, %r15
	jne	.L8
	leaq	.LC8(%rip), %rdi
	addl	%r12d, %r13d
	call	puts@PLT
	jmp	.L2
.L18:
	movq	8(%rsp), %rdi
	call	fclose@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L19
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L19:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.1.1 20260430"
	.section	.note.GNU-stack,"",@progbits
