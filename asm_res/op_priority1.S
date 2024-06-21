		.text
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -112
		sd ra, 104(sp)
.L_main_entry:
		li t0, 10
		sd t0, 32(sp)
		li t0, 4
		sd t0, 24(sp)
		li t0, 2
		sd t0, 16(sp)
		li t0, 2
		sd t0, 8(sp)
		ld t0, 16(sp)
		ld t1, 32(sp)
		ld t2, 24(sp)
		mul t1, t1, t2
		add t0, t0, t1
		ld t1, 8(sp)
		sub t0, t0, t1
		sd t0, 0(sp)
		ld t0, 0(sp)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, 40(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 40(sp)
		mv a0, t0
		ld ra, 104(sp)
		addi sp, sp, 112
		ret
		.size main, .-main
