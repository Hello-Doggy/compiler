		.global a
		.bss
		.align 3
		.type a, @object
		.size a, 16
a:
		.zero 16
		.text
		.align 1
		.globl print
		.type print, @function
print:
		sd ra, %ra
.L_print_entry:
		ld %t, %0
		li %tt, ~fs
		add %ttt, %t, %tt
		sd %ttt, %0
		li %2, 0
		li %t, 4
		mul %2, %2, %t
		ld %t, %0
		add %2, %2, %t
		ld %3, %2
		mv a0, %3
		sd %3, -8(sp)
		call putint
		li %t, 10
		mv a0, %t
		sd %t, -8(sp)
		call putch
.L_print_exit:
		ld ra, %ra
		ret
		.size print, .-print
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %0, 0
		li %t, 4
		mul %0, %0, %t
		la %t, @a
		add $%0, %0, %t
		li %t, 1
		sd %t, %0
		li %2, 0
		li %t, 4
		mul %2, %2, %t
		la %t, @a
		add $%2, %2, %t
		ld %3, %2
		mv a0, %3
		sd %3, -8(sp)
		call putint
		li %t, 10
		mv a0, %t
		sd %t, -8(sp)
		call putch
		la %t, @a
		sub %t, %t, sp
		mv a0, %t
		sd %t, -8(sp)
		call print
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %9, %ret.addr
		mv a0, %9
		ld ra, %ra
		ret
		.size main, .-main
