		.section	__TEXT,__text,regular,pure_instructions
		.build_version macos, 12, 0	sdk_version 13, 1
		.globl	_main                           ## -- Begin function main
		.p2align	4, 0x90
	_main:                                  ## @main
		.cfi_startproc
	## %bb.0:
		pushq	%rbp
		.cfi_def_cfa_offset 16
		.cfi_offset %rbp, -16
		movq	%rsp, %rbp
		.cfi_def_cfa_register %rbp
		subq	$16, %rsp
		movl	$0, -4(%rbp)
		movl	%edi, -8(%rbp)
		movq	%rsi, -16(%rbp)
		movb	$0, %al
		callq	_print_hello
		xorl	%eax, %eax
		addq	$16, %rsp
		popq	%rbp
		retq
		.cfi_endproc
											## -- End function
	.subsections_via_symbols
