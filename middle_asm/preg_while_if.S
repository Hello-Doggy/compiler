		.text
		.align 1
		.globl get_one
		.type get_one, @function
get_one:
		sd ra, %ra
.L_get_one_entry:
		li t0, 1
		sd t0, %ret.addr
		j .L_get_one_exit
.L_get_one_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size get_one, .-get_one
		.align 1
		.globl deepWhileBr
		.type deepWhileBr, @function
deepWhileBr:
		sd ra, %ra
.L_deepWhileBr_entry:
		ld t0, %0
		ld t1, %2
		add t0, t0, t1
		sd t0, %4
		j .L_deepWhileBr_12
.L_deepWhileBr_12:
		ld t0, %4
		li t1, 75
		slt t0, t0, t1
		bnez t0, .L_deepWhileBr_16
		j .L_deepWhileBr_19
.L_deepWhileBr_16:
		li t0, 42
		sd t0, %9
		j .L_deepWhileBr_23
.L_deepWhileBr_19:
		ld t0, %4
		sd t0, %ret.addr
		j .L_deepWhileBr_exit
.L_deepWhileBr_23:
		ld t0, %4
		li t1, 100
		slt t0, t0, t1
		bnez t0, .L_deepWhileBr_27
		j .L_deepWhileBr_33
.L_deepWhileBr_27:
		ld t0, %4
		ld t1, %9
		add t0, t0, t1
		sd t0, %4
		j .L_deepWhileBr_35
.L_deepWhileBr_33:
		j .L_deepWhileBr_12
.L_deepWhileBr_35:
		ld t0, %4
		li t1, 99
		slt t0, t1, t0
		bnez t0, .L_deepWhileBr_39
		j .L_deepWhileBr_44
.L_deepWhileBr_39:
		ld t0, %9
		li t1, 2
		mul t0, t0, t1
		sd t0, %10
		j .L_deepWhileBr_46
.L_deepWhileBr_44:
		j .L_deepWhileBr_33
.L_deepWhileBr_46:
		li t0, 0
		mv a0, t0
		sd t0, -8(sp)
		call get_one
		mv t0, a0
		li t1, 1
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_deepWhileBr_50
		j .L_deepWhileBr_55
.L_deepWhileBr_50:
		ld t0, %10
		li t1, 2
		mul t0, t0, t1
		sd t0, %4
		j .L_deepWhileBr_55
.L_deepWhileBr_55:
		j .L_deepWhileBr_44
.L_deepWhileBr_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size deepWhileBr, .-deepWhileBr
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li t0, 2
		sd t0, %0
		ld t0, %0
		ld t1, %0
		mv a0, t0
		sd t0, -8(sp)
		mv a1, t1
		sd t1, -16(sp)
		call deepWhileBr
		mv t0, a0
		sd t0, %0
		ld t0, %0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size main, .-main
