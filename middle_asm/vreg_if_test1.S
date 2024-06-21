		.text
		.align 1
		.globl if_ifElse_
		.type if_ifElse_, @function
if_ifElse_:
		sd ra, %ra
.L_if_ifElse__entry:
		li %t, 5
		sd %t, %0
		li %t, 10
		sd %t, %2
		j .L_if_ifElse__5
.L_if_ifElse__5:
		ld %6, %0
		li %t, 5
		sub %7, %6, %t
		seqz %7, %7
		bnez %7, .L_if_ifElse__9
		j .L_if_ifElse__11
.L_if_ifElse__9:
		j .L_if_ifElse__15
.L_if_ifElse__11:
		ld %12, %0
		sd %12, %ret.addr
		j .L_if_ifElse__exit
.L_if_ifElse__15:
		ld %16, %2
		li %t, 10
		sub %17, %16, %t
		seqz %17, %17
		bnez %17, .L_if_ifElse__19
		j .L_if_ifElse__22
.L_if_ifElse__19:
		li %t, 25
		sd %t, %0
		j .L_if_ifElse__27
.L_if_ifElse__22:
		ld %23, %0
		li %t, 15
		add %24, %23, %t
		sd %24, %0
		j .L_if_ifElse__27
.L_if_ifElse__27:
		j .L_if_ifElse__11
.L_if_ifElse__exit:
		ld %29, %ret.addr
		mv a0, %29
		ld ra, %ra
		ret
		.size if_ifElse_, .-if_ifElse_
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		call if_ifElse_
		mv %0, a0
		mv a0, %0
		sd %0, -8(sp)
		call putint
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %4, %ret.addr
		mv a0, %4
		ld ra, %ra
		ret
		.size main, .-main
