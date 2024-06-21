		.global a
		.bss
		.align 3
		.type a, @object
		.size a, 8
a:
		.zero 8
		.global b
		.bss
		.align 3
		.type b, @object
		.size b, 16
b:
		.zero 16
		.global c
		.bss
		.align 3
		.type c, @object
		.size c, 96
c:
		.zero 96
		.global i
		.bss
		.align 3
		.type i, @object
		.size i, 8
i:
		.zero 8
		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		la t0, @i
		li t1, 2024
		sd t1, 0(t0)
		j .L_main_3
.L_main_3:
		ld t0, @a
		li t1, 2
		slt t0, t0, t1
		bnez t0, .L_main_7
		j .L_main_17
.L_main_7:
		ld t0, @a
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		la t1, @b
		add t0, t0, t1
		ld t1, @a
		li t2, 2
		mul t1, t1, t2
		sd t1, $t0
		ld t0, @a
		li t1, 1
		add t0, t0, t1
		la t1, @a
		sd t0, 0(t1)
		j .L_main_3
.L_main_17:
		ld t0, @a
		li t1, 0
		li t2, 8
		mul t1, t1, t2
		la t2, @b
		add t1, t1, t2
		ld t1, $t1
		add t0, t0, t1
		li t1, 1
		li t2, 8
		mul t1, t1, t2
		la t2, @b
		add t1, t1, t2
		ld t1, $t1
		add t0, t0, t1
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		ld t0, @i
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		li t0, 0
		sd t0, %1
		j .L_main_32
.L_main_32:
		ld t0, %1
		li t1, 12
		slt t0, t0, t1
		bnez t0, .L_main_36
		j .L_main_47
.L_main_36:
		ld t0, %1
		li t1, 3
		div t0, t0, t1
		ld t1, %1
		li t2, 3
		rem t1, t1, t2
		mv t0, t0
		li t2, 3
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, @c
		add t0, t0, t1
		li t1, 0
		sd t1, $t0
		ld t0, %1
		li t1, 1
		add t0, t0, t1
		sd t0, %1
		j .L_main_32
.L_main_47:
		li t0, 0
		li t1, 3
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, @c
		add t0, t0, t1
		li t1, 1
		sd t1, $t0
		li t0, 0
		li t1, 3
		mul t0, t0, t1
		li t1, 1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, @c
		add t0, t0, t1
		li t1, 1
		sd t1, $t0
		li t0, 0
		li t1, 3
		mul t0, t0, t1
		li t1, 2
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, @c
		add t0, t0, t1
		li t1, 4
		sd t1, $t0
		li t0, 1
		li t1, 3
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, @c
		add t0, t0, t1
		li t1, 5
		sd t1, $t0
		li t0, 2
		li t1, 3
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, @c
		add t0, t0, t1
		li t1, 1
		sd t1, $t0
		li t0, 3
		li t1, 3
		mul t0, t0, t1
		li t1, 0
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, @c
		add t0, t0, t1
		li t1, 4
		sd t1, $t0
		li t0, 0
		sd t0, %1
		j .L_main_62
.L_main_62:
		ld t0, %1
		li t1, 12
		slt t0, t0, t1
		bnez t0, .L_main_66
		j .L_main_79
.L_main_66:
		ld t0, %1
		li t1, 3
		div t0, t0, t1
		ld t1, %1
		li t2, 3
		rem t1, t1, t2
		mv t0, t0
		li t2, 3
		mul t0, t0, t2
		mv t1, t1
		add t0, t0, t1
		li t1, 8
		mul t0, t0, t1
		la t1, @c
		add t0, t0, t1
		ld t0, $t0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		ld t0, %1
		li t1, 1
		add t0, t0, t1
		sd t0, %1
		j .L_main_62
.L_main_79:
		li t0, 0
		sd t0, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size main, .-main
