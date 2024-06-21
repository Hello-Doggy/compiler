		.text
		.align 1
		.globl get_one
		.type get_one, @function
get_one:
		sd ra, %ra
.L_get_one_entry:
		li %t, 1
		sd %t, %ret.addr
		j .L_get_one_exit
.L_get_one_exit:
		ld %4, %ret.addr
		mv a0, %4
		ld ra, %ra
		ret
		.size get_one, .-get_one
		.align 1
		.globl deepWhileBr
		.type deepWhileBr, @function
deepWhileBr:
		sd ra, %ra
.L_deepWhileBr_entry:
		ld %5, %0
		ld %6, %2
		add %7, %5, %6
		sd %7, %4
		j .L_deepWhileBr_12
.L_deepWhileBr_12:
		ld %13, %4
		li %t, 75
		slt %14, %13, %t
		bnez %14, .L_deepWhileBr_16
		j .L_deepWhileBr_19
.L_deepWhileBr_16:
		li %t, 42
		sd %t, %9
		j .L_deepWhileBr_23
.L_deepWhileBr_19:
		ld %20, %4
		sd %20, %ret.addr
		j .L_deepWhileBr_exit
.L_deepWhileBr_23:
		ld %24, %4
		li %t, 100
		slt %25, %24, %t
		bnez %25, .L_deepWhileBr_27
		j .L_deepWhileBr_33
.L_deepWhileBr_27:
		ld %28, %4
		ld %29, %9
		add %30, %28, %29
		sd %30, %4
		j .L_deepWhileBr_35
.L_deepWhileBr_33:
		j .L_deepWhileBr_12
.L_deepWhileBr_35:
		ld %36, %4
		li %t, 99
		slt %37, %t, %36
		bnez %37, .L_deepWhileBr_39
		j .L_deepWhileBr_44
.L_deepWhileBr_39:
		ld %40, %9
		li %t, 2
		mul %41, %40, %t
		sd %41, %10
		j .L_deepWhileBr_46
.L_deepWhileBr_44:
		j .L_deepWhileBr_33
.L_deepWhileBr_46:
		li %t, 0
		mv a0, %t
		sd %t, -8(sp)
		call get_one
		mv %47, a0
		li %t, 1
		sub %48, %47, %t
		seqz %48, %48
		bnez %48, .L_deepWhileBr_50
		j .L_deepWhileBr_55
.L_deepWhileBr_50:
		ld %51, %10
		li %t, 2
		mul %52, %51, %t
		sd %52, %4
		j .L_deepWhileBr_55
.L_deepWhileBr_55:
		j .L_deepWhileBr_44
.L_deepWhileBr_exit:
		ld %57, %ret.addr
		mv a0, %57
		ld ra, %ra
		ret
		.size deepWhileBr, .-deepWhileBr
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 2
		sd %t, %0
		ld %2, %0
		ld %3, %0
		mv a0, %2
		sd %2, -8(sp)
		mv a1, %3
		sd %3, -16(sp)
		call deepWhileBr
		mv %4, a0
		sd %4, %0
		ld %6, %0
		mv a0, %6
		sd %6, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %10, %ret.addr
		mv a0, %10
		ld ra, %ra
		ret
		.size main, .-main
