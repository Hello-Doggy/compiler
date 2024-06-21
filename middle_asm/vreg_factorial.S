		.text
		.align 1
		.globl factorial
		.type factorial, @function
factorial:
		sd ra, %ra
.L_factorial_entry:
		j .L_factorial_3
.L_factorial_3:
		ld %4, %0
		li %t, 0
		sub %5, %4, %t
		seqz %5, %5
		bnez %5, .L_factorial_7
		j .L_factorial_10
.L_factorial_7:
		li %t, 1
		sd %t, %ret.addr
		j .L_factorial_exit
.L_factorial_10:
		ld %11, %0
		ld %12, %0
		li %t, 1
		sub %13, %12, %t
		mv a0, %13
		sd %13, -8(sp)
		call factorial
		mv %14, a0
		mul %15, %11, %14
		sd %15, %ret.addr
		j .L_factorial_exit
.L_factorial_exit:
		ld %18, %ret.addr
		mv a0, %18
		ld ra, %ra
		ret
		.size factorial, .-factorial
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call getint
		mv %1, a0
		sd %1, %0
		ld %4, %0
		mv a0, %4
		sd %4, -8(sp)
		call factorial
		mv %5, a0
		sd %5, %3
		ld %7, %3
		mv a0, %7
		sd %7, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %11, %ret.addr
		mv a0, %11
		ld ra, %ra
		ret
		.size main, .-main
