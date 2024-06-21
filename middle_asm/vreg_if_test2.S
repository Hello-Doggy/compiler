		.text
		.align 1
		.globl if_if_Else
		.type if_if_Else, @function
if_if_Else:
		sd ra, %ra
.L_if_if_Else_entry:
		li %t, 5
		sd %t, %0
		li %t, 10
		sd %t, %2
		j .L_if_if_Else_5
.L_if_if_Else_5:
		ld %6, %0
		li %t, 5
		sub %7, %6, %t
		seqz %7, %7
		bnez %7, .L_if_if_Else_9
		j .L_if_if_Else_11
.L_if_if_Else_9:
		j .L_if_if_Else_20
.L_if_if_Else_11:
		ld %12, %0
		li %t, 15
		add %13, %12, %t
		sd %13, %0
		j .L_if_if_Else_16
.L_if_if_Else_16:
		ld %17, %0
		sd %17, %ret.addr
		j .L_if_if_Else_exit
.L_if_if_Else_20:
		ld %21, %2
		li %t, 10
		sub %22, %21, %t
		seqz %22, %22
		bnez %22, .L_if_if_Else_24
		j .L_if_if_Else_27
.L_if_if_Else_24:
		li %t, 25
		sd %t, %0
		j .L_if_if_Else_27
.L_if_if_Else_27:
		j .L_if_if_Else_16
.L_if_if_Else_exit:
		ld %29, %ret.addr
		mv a0, %29
		ld ra, %ra
		ret
		.size if_if_Else, .-if_if_Else
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call if_if_Else
		mv %0, a0
		mv a0, %0
		sd %0, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %4, %ret.addr
		mv a0, %4
		ld ra, %ra
		ret
		.size main, .-main
