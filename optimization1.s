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
	.text
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
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
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	fopen@PLT
	movq	%rax, 8(%rsp)
	movl	$0, 4(%rsp)
	leaq	.LC6(%rip), %r15
	jmp	.L2
.L3:
	movq	%r15, %rdi
	movl	$0, %eax
	call	printf@PLT
.L4:
	addq	$1, %rbx
	cmpq	$16, %rbx
	je	.L13
.L5:
	cmpq	%rbp, %rbx
	jnb	.L3
	movzbl	(%rbx,%r13), %esi
	movq	%r12, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L4
.L13:
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	call	__ctype_b_loc@PLT
	movq	%rax, %r12
	leaq	16(%rsp), %rbx
	leaq	0(%rbp,%rbx), %r14
	movl	$46, %r13d
.L7:
	movzbl	(%rbx), %edi
	movzbl	%dil, %edx
	movq	(%r12), %rax
	testb	$64, 1(%rax,%rdx,2)
	cmove	%r13d, %edi
	movzbl	%dil, %edi
	call	putchar@PLT
	addq	$1, %rbx
	cmpq	%r14, %rbx
	jne	.L7
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	addl	%ebp, 4(%rsp)
.L2:
	leaq	16(%rsp), %rdi
	movq	8(%rsp), %rcx
	movl	$16, %edx
	movl	$1, %esi
	call	fread@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L14
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	4(%rsp), %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %ebx
	leaq	16(%rsp), %r13
	leaq	.LC5(%rip), %r12
	jmp	.L5
.L14:
	movq	8(%rsp), %rdi
	call	fclose@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L15
	movl	$0, %eax
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L15:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.1.1 20260430"
	.section	.note.GNU-stack,"",@progbits
