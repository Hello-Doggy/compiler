		.text
		.align 1
		.globl ifWhile
		.type ifWhile, @function
ifWhile:
		sd ra, %ra
.L_ifWhile_entry:
		li %t, 0
		sd %t, %0
		li %t, 3
		sd %t, %2
		j .L_ifWhile_5
.L_ifWhile_5:
		ld %6, %0
		li %t, 5
		sub %7, %6, %t
		seqz %7, %7
		bnez %7, .L_ifWhile_9
		j .L_ifWhile_11
.L_ifWhile_9:
		j .L_ifWhile_17
.L_ifWhile_11:
		j .L_ifWhile_31
.L_ifWhile_13:
		ld %14, %2
		sd %14, %ret.addr
		j .L_ifWhile_exit
.L_ifWhile_17:
		ld %18, %2
		li %t, 2
		sub %19, %18, %t
		seqz %19, %19
		bnez %19, .L_ifWhile_21
		j .L_ifWhile_26
.L_ifWhile_21:
		ld %22, %2
		li %t, 2
		add %23, %22, %t
		sd %23, %2
		j .L_ifWhile_17
.L_ifWhile_26:
		ld %27, %2
		li %t, 25
		add %28, %27, %t
		sd %28, %2
		j .L_ifWhile_13
.L_ifWhile_31:
		ld %32, %0
		li %t, 5
		slt %33, %32, %t
		bnez %33, .L_ifWhile_35
		j .L_ifWhile_43
.L_ifWhile_35:
		ld %36, %2
		li %t, 2
		mul %37, %36, %t
		sd %37, %2
		ld %39, %0
		li %t, 1
		add %40, %39, %t
		sd %40, %0
		j .L_ifWhile_31
.L_ifWhile_43:
		j .L_ifWhile_13
.L_ifWhile_exit:
		ld %45, %ret.addr
		mv a0, %45
		ld ra, %ra
		ret
		.size ifWhile, .-ifWhile
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call ifWhile
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
