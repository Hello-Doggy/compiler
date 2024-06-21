		.text
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -80
		sd ra, 72(sp)
.L_main_entry:
		li t0, 10
		sd t0, 0(sp)
		j .L_main_3
.L_main_3:
		ld t0, 0(sp)
		li t1, 0
		sub t0, t1, t0
		seqz t0, t0
		li t1, 0
		sub t0, t1, t0
		seqz t0, t0
		bnez t0, .L_main_8
		j .L_main_14
.L_main_8:
		li t0, 0
		li t1, 1
		sub t0, t0, t1
		li t1, 0
		sub t0, t1, t0
		li t1, 0
		sub t0, t1, t0
		sd t0, 0(sp)
		j .L_main_17
.L_main_14:
		li t0, 0
		sd t0, 0(sp)
		j .L_main_17
.L_main_17:
		ld t0, 0(sp)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, 8(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 8(sp)
		mv a0, t0
		ld ra, 72(sp)
		addi sp, sp, 80
		ret
		.size main, .-main
