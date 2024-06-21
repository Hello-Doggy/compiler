		.text
		.align 1
		.globl f
		.type f, @function
f:
		addi sp, sp, -72
		sd ra, 64(sp)
.L_f_entry:
		li t0, 10
		sd t0, 0(sp)
		j .L_f_exit
.L_f_exit:
		ld t0, 0(sp)
		mv a0, t0
		ld ra, 64(sp)
		addi sp, sp, 72
		ret
		.size f, .-f
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -72
		sd ra, 64(sp)
.L_main_entry:
		call f
		mv t0, a0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 0
		sd t0, 0(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 0(sp)
		mv a0, t0
		ld ra, 64(sp)
		addi sp, sp, 72
		ret
		.size main, .-main
