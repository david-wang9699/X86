	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 13, 1
	.globl	_print_hello                    ## -- Begin function print_hello
	.p2align	4, 0x90
_print_hello:                           ## @print_hello
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Hello, world\n"

.subsections_via_symbols
