		.text
		.align 1
		.globl whileIf
		.type whileIf, @function
whileIf:
		sd ra, %ra
.L_whileIf_entry:
		li %t, 0
		sd %t, %0
		li %t, 0
		sd %t, %2
		j .L_whileIf_5
.L_whileIf_5:
		ld %6, %0
		li %t, 100
		slt %7, %6, %t
		bnez %7, .L_whileIf_9
		j .L_whileIf_11
.L_whileIf_9:
		j .L_whileIf_15
.L_whileIf_11:
		ld %12, %2
		sd %12, %ret.addr
		j .L_whileIf_exit
.L_whileIf_15:
		ld %16, %0
		li %t, 5
		sub %17, %16, %t
		seqz %17, %17
		bnez %17, .L_whileIf_19
		j .L_whileIf_22
.L_whileIf_19:
		li %t, 25
		sd %t, %2
		j .L_whileIf_24
.L_whileIf_22:
		j .L_whileIf_29
.L_whileIf_24:
		ld %25, %0
		li %t, 1
		add %26, %25, %t
		sd %26, %0
		j .L_whileIf_5
.L_whileIf_29:
		ld %30, %0
		li %t, 10
		sub %31, %30, %t
		seqz %31, %31
		bnez %31, .L_whileIf_33
		j .L_whileIf_36
.L_whileIf_33:
		li %t, 42
		sd %t, %2
		j .L_whileIf_41
.L_whileIf_36:
		ld %37, %0
		li %t, 2
		mul %38, %37, %t
		sd %38, %2
		j .L_whileIf_41
.L_whileIf_41:
		j .L_whileIf_24
.L_whileIf_exit:
		ld %43, %ret.addr
		mv a0, %43
		ld ra, %ra
		ret
		.size whileIf, .-whileIf
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call whileIf
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
