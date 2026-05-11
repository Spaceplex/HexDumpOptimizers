	.file	"optimizerComparison.c"
	.text
	.section	.rodata
.LC0:
	.string	"binary.out"
.LC1:
	.string	"rb"
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
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L2
.L11:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-76(%rbp), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$0, -72(%rbp)
	jmp	.L3
.L6:
	movq	-72(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L4
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L5
.L4:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L5:
	addq	$1, -72(%rbp)
.L3:
	cmpq	$15, -72(%rbp)
	jbe	.L6
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$0, -64(%rbp)
	jmp	.L7
.L10:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L8
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	jmp	.L9
.L8:
	movl	$46, %eax
.L9:
	movl	%eax, %edi
	call	putchar@PLT
	addq	$1, -64(%rbp)
.L7:
	movq	-64(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L10
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-40(%rbp), %rax
	addl	%eax, -76(%rbp)
.L2:
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L11
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.1.1 20260430"
	.section	.note.GNU-stack,"",@progbits
