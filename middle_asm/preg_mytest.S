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
		ld t0, %0
		li t1, ~fs
		add t0, t0, t1
		sd t0, %0
		li t0, 0
		li t1, 4
		mul t0, t0, t1
		ld t1, %0
		add t0, t0, t1
		ld t0, ~t0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 10
		mv a0, t0
		sd t0, -8(sp)
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
		li t0, 0
		li t1, 4
		mul t0, t0, t1
		la t1, @a
		add t0, t0, t1
		li t1, 1
		sd t1, $t0
		li t0, 0
		li t1, 4
		mul t0, t0, t1
		la t1, @a
		add t0, t0, t1
		ld t0, $t0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 10
		mv a0, t0
		sd t0, -8(sp)
		call putch
		la t0, @a
		sub t0, t0, sp
		mv a0, t0
		sd t0, -8(sp)
		call print
		li t0, 0
		sd t0, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size main, .-main
