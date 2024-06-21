		.text
		.align 1
		.globl factorial
		.type factorial, @function
factorial:
		sd ra, %ra
.L_factorial_entry:
		li %t, 1
		sd %t, %2
		j .L_factorial_5
.L_factorial_5:
		ld %6, %0
		li %t, 1
		slt %7, %t, %6
		bnez %7, .L_factorial_9
		j .L_factorial_18
.L_factorial_9:
		ld %10, %2
		ld %11, %0
		mul %12, %10, %11
		sd %12, %2
		ld %14, %0
		li %t, 1
		sub %15, %14, %t
		sd %15, %0
		j .L_factorial_5
.L_factorial_18:
		ld %19, %2
		sd %19, %ret.addr
		j .L_factorial_exit
.L_factorial_exit:
		ld %22, %ret.addr
		mv a0, %22
		ld ra, %ra
		ret
		.size factorial, .-factorial
		.align 1
		.globl cal_combiniation
		.type cal_combiniation, @function
cal_combiniation:
		sd ra, %ra
.L_cal_combiniation_entry:
		ld %4, %0
		mv a0, %4
		sd %4, -8(sp)
		call factorial
		mv %5, a0
		ld %6, %2
		mv a0, %6
		sd %6, -8(sp)
		call factorial
		mv %7, a0
		ld %8, %0
		ld %9, %2
		sub %10, %8, %9
		mv a0, %10
		sd %10, -8(sp)
		call factorial
		mv %11, a0
		mul %12, %7, %11
		div %13, %5, %12
		sd %13, %ret.addr
		j .L_cal_combiniation_exit
.L_cal_combiniation_exit:
		ld %16, %ret.addr
		mv a0, %16
		ld ra, %ra
		ret
		.size cal_combiniation, .-cal_combiniation
		.align 1
		.globl cal_permutation
		.type cal_permutation, @function
cal_permutation:
		sd ra, %ra
.L_cal_permutation_entry:
		ld %4, %0
		mv a0, %4
		sd %4, -8(sp)
		call factorial
		mv %5, a0
		ld %6, %0
		ld %7, %2
		sub %8, %6, %7
		mv a0, %8
		sd %8, -8(sp)
		call factorial
		mv %9, a0
		div %10, %5, %9
		sd %10, %ret.addr
		j .L_cal_permutation_exit
.L_cal_permutation_exit:
		ld %13, %ret.addr
		mv a0, %13
		ld ra, %ra
		ret
		.size cal_permutation, .-cal_permutation
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call getint
		mv %1, a0
		sd %1, %0
		call getint
		mv %4, a0
		sd %4, %3
		ld %6, %0
		ld %7, %3
		mv a0, %6
		sd %6, -8(sp)
		mv a1, %7
		sd %7, -16(sp)
		call cal_combiniation
		mv %8, a0
		mv a0, %8
		sd %8, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		ld %11, %0
		ld %12, %3
		mv a0, %11
		sd %11, -8(sp)
		mv a1, %12
		sd %12, -16(sp)
		call cal_permutation
		mv %13, a0
		mv a0, %13
		sd %13, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %17, %ret.addr
		mv a0, %17
		ld ra, %ra
		ret
		.size main, .-main
