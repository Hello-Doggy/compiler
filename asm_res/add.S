		.text
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -88
		sd ra, 80(sp)
.L_main_entry:
		call getint
		mv t0, a0
		sd t0, 8(sp)
		call getint
		mv t0, a0
		sd t0, 0(sp)
		ld t0, 8(sp)
		ld t1, 0(sp)
		add t0, t0, t1
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, 16(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 16(sp)
		mv a0, t0
		ld ra, 80(sp)
		addi sp, sp, 88
		ret
		.size main, .-main
