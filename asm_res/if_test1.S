		.text
		.align 1
		.globl if_ifElse_
		.type if_ifElse_, @function
if_ifElse_:
		addi sp, sp, -88
		sd ra, 80(sp)
.L_if_ifElse__entry:
		li t0, 5
		sd t0, 8(sp)
		li t0, 10
		sd t0, 0(sp)
		j .L_if_ifElse__5
.L_if_ifElse__5:
		ld t0, 8(sp)
		li t1, 5
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_if_ifElse__9
		j .L_if_ifElse__11
.L_if_ifElse__9:
		j .L_if_ifElse__15
.L_if_ifElse__11:
		ld t0, 8(sp)
		sd t0, 16(sp)
		j .L_if_ifElse__exit
.L_if_ifElse__15:
		ld t0, 0(sp)
		li t1, 10
		sub t0, t0, t1
		seqz t0, t0
		bnez t0, .L_if_ifElse__19
		j .L_if_ifElse__22
.L_if_ifElse__19:
		li t0, 25
		sd t0, 8(sp)
		j .L_if_ifElse__27
.L_if_ifElse__22:
		ld t0, 8(sp)
		li t1, 15
		add t0, t0, t1
		sd t0, 8(sp)
		j .L_if_ifElse__27
.L_if_ifElse__27:
		j .L_if_ifElse__11
.L_if_ifElse__exit:
		ld t0, 16(sp)
		mv a0, t0
		ld ra, 80(sp)
		addi sp, sp, 88
		ret
		.size if_ifElse_, .-if_ifElse_
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -72
		sd ra, 64(sp)
.L_main_entry:
		call if_ifElse_
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
