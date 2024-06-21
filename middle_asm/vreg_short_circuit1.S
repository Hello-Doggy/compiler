		.text
		.align 1
		.globl add
		.type add, @function
add:
		sd ra, %ra
.L_add_entry:
		ld %t, %0
		li %tt, ~fs
		add %ttt, %t, %tt
		sd %ttt, %0
		li %2, 0
		li %t, 8
		mul %2, %2, %t
		ld %t, %0
		add %2, %2, %t
		li %3, 0
		li %t, 8
		mul %3, %3, %t
		ld %t, %0
		add %3, %3, %t
		ld %4, %3
		li %t, 1
		add %5, %4, %t
		sd %5, %2
		li %t, 1
		sd %t, %ret.addr
		j .L_add_exit
.L_add_exit:
		ld %9, %ret.addr
		mv a0, %9
		ld ra, %ra
		ret
		.size add, .-add
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 10
		sd %t, %0
		li %3, 0
		li %t, 8
		mul %3, %3, %t
		li %t, ~%2
		add %3, %3, %t
		li %t, 10
		sd %t, %3
		j .L_main_6
.L_main_6:
		ld %7, %0
		li %t, 10
		slt %8, %t, %7
		bnez %8, .L_main_10
		j .L_main_18
.L_main_10:
		li %t, ~%2
		mv a0, %t
		sd %t, -8(sp)
		call add
		mv %11, a0
		bnez %11, .L_main_13
		j .L_main_18
.L_main_13:
		li %14, 0
		li %t, 8
		mul %14, %14, %t
		li %t, ~%2
		add %14, %14, %t
		ld %15, %14
		mv a0, %15
		sd %15, -8(sp)
		call putint
		j .L_main_23
.L_main_18:
		li %19, 0
		li %t, 8
		mul %19, %19, %t
		li %t, ~%2
		add %19, %19, %t
		ld %20, %19
		mv a0, %20
		sd %20, -8(sp)
		call putint
		j .L_main_23
.L_main_23:
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %26, %ret.addr
		mv a0, %26
		ld ra, %ra
		ret
		.size main, .-main
