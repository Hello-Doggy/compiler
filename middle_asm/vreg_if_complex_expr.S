		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 5
		sd %t, %0
		li %t, 5
		sd %t, %1
		li %t, 1
		sd %t, %2
		li %t, 0
		li %t, 2
		sub %8, %t, %t
		sd %8, %3
		li %t, 2
		sd %t, %4
		j .L_main_12
.L_main_12:
		ld %13, %3
		li %t, 1
		mul %14, %13, %t
		li %t, 2
		div %15, %14, %t
		li %t, 0
		slt %16, %15, %t
		bnez %16, .L_main_30
		j .L_main_18
.L_main_18:
		ld %19, %0
		ld %20, %1
		sub %21, %19, %20
		li %t, 0
		sub %22, %21, %t
		snez %22, %22
		bnez %22, .L_main_24
		j .L_main_34
.L_main_24:
		ld %25, %2
		li %t, 3
		add %26, %25, %t
		li %t, 2
		rem %27, %26, %t
		li %t, 0
		sub %28, %27, %t
		snez %28, %28
		bnez %28, .L_main_30
		j .L_main_34
.L_main_30:
		ld %31, %4
		mv a0, %31
		sd %31, -8(sp)
		call putint
		j .L_main_34
.L_main_34:
		j .L_main_36
.L_main_36:
		ld %37, %3
		li %t, 2
		rem %38, %37, %t
		li %t, 67
		add %39, %38, %t
		li %t, 0
		slt %40, %39, %t
		bnez %40, .L_main_54
		j .L_main_42
.L_main_42:
		ld %43, %0
		ld %44, %1
		sub %45, %43, %44
		li %t, 0
		sub %46, %45, %t
		snez %46, %46
		bnez %46, .L_main_48
		j .L_main_59
.L_main_48:
		ld %49, %2
		li %t, 2
		add %50, %49, %t
		li %t, 2
		rem %51, %50, %t
		li %t, 0
		sub %52, %51, %t
		snez %52, %52
		bnez %52, .L_main_54
		j .L_main_59
.L_main_54:
		li %t, 4
		sd %t, %4
		ld %56, %4
		mv a0, %56
		sd %56, -8(sp)
		call putint
		j .L_main_59
.L_main_59:
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %62, %ret.addr
		mv a0, %62
		ld ra, %ra
		ret
		.size main, .-main
