		.text
		.align 1
		.globl if_if_Else
		.type if_if_Else, @function
if_if_Else:
		sd ra, %ra
.L_if_if_Else_entry:
		li t0, 5
		sd t0, %0
		li t0, 10
		sd t0, %2
		j .L_if_if_Else_5
.L_if_if_Else_5:
		ld t0, %0
		li t1, 5
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_if_if_Else_9
		j .L_if_if_Else_11
.L_if_if_Else_9:
		j .L_if_if_Else_20
.L_if_if_Else_11:
		ld t0, %0
		li t1, 15
		add t0, t0, t1
		sd t0, %0
		j .L_if_if_Else_16
.L_if_if_Else_16:
		ld t0, %0
		sd t0, %ret.addr
		j .L_if_if_Else_exit
.L_if_if_Else_20:
		ld t0, %2
		li t1, 10
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_if_if_Else_24
		j .L_if_if_Else_27
.L_if_if_Else_24:
		li t0, 25
		sd t0, %0
		j .L_if_if_Else_27
.L_if_if_Else_27:
		j .L_if_if_Else_16
.L_if_if_Else_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size if_if_Else, .-if_if_Else
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call if_if_Else
		mv t0, a0
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
