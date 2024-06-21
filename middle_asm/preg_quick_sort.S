		.text
		.align 1
		.globl Swap
		.type Swap, @function
Swap:
		sd ra, %ra
.L_Swap_entry:
		ld t0, %0
		li t1, ~fs
		add t0, t0, t1
		sd t0, %0
		ld t0, %2
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, %0
		add t0, t0, t1
		ld t0, ~t0
		sd t0, %6
		ld t0, %2
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, %0
		add t0, t0, t1
		ld t1, %4
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		ld t2, %0
		add t1, t1, t2
		ld t1, ~t1
		sd t1, ~t0
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, %0
		add t0, t0, t1
		ld t1, %6
		sd t1, ~t0
		li t0, 0
		sd t0, %ret.addr
		j .L_Swap_exit
.L_Swap_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size Swap, .-Swap
		.align 1
		.globl Partition
		.type Partition, @function
Partition:
		sd ra, %ra
.L_Partition_entry:
		ld t0, %0
		li t1, ~fs
		add t0, t0, t1
		sd t0, %0
		ld t0, %2
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, %0
		add t0, t0, t1
		ld t0, ~t0
		sd t0, %6
		j .L_Partition_12
.L_Partition_12:
		ld t0, %2
		ld t1, %4
		slt t0, t0, t1
		bnez t0, .L_Partition_17
		j .L_Partition_19
.L_Partition_17:
		j .L_Partition_23
.L_Partition_19:
		ld t0, %2
		sd t0, %ret.addr
		j .L_Partition_exit
.L_Partition_23:
		ld t0, %2
		ld t1, %4
		slt t0, t0, t1
		bnez t0, .L_Partition_28
		j .L_Partition_40
.L_Partition_28:
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, %0
		add t0, t0, t1
		ld t0, ~t0
		ld t1, %6
		slt t0, t0, t1
		xori t0, t0, 1
		bnez t0, .L_Partition_35
		j .L_Partition_40
.L_Partition_35:
		ld t0, %4
		li t1, 1
		sub t0, t0, t1
		sd t0, %4
		j .L_Partition_23
.L_Partition_40:
		ld t0, %2
		ld t1, %4
		ld t2, %0
		mv a0, t2
		sd t2, -8(sp)
		mv a1, t0
		sd t0, -16(sp)
		mv a2, t1
		sd t1, -24(sp)
		call Swap
		j .L_Partition_45
.L_Partition_45:
		ld t0, %2
		ld t1, %4
		slt t0, t0, t1
		bnez t0, .L_Partition_50
		j .L_Partition_62
.L_Partition_50:
		ld t0, %2
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, %0
		add t0, t0, t1
		ld t0, ~t0
		ld t1, %6
		slt t0, t1, t0
		xori t0, t0, 1
		bnez t0, .L_Partition_57
		j .L_Partition_62
.L_Partition_57:
		ld t0, %2
		li t1, 1
		add t0, t0, t1
		sd t0, %2
		j .L_Partition_45
.L_Partition_62:
		ld t0, %2
		ld t1, %4
		ld t2, %0
		mv a0, t2
		sd t2, -8(sp)
		mv a1, t0
		sd t0, -16(sp)
		mv a2, t1
		sd t1, -24(sp)
		call Swap
		j .L_Partition_12
.L_Partition_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size Partition, .-Partition
		.align 1
		.globl QuickSort
		.type QuickSort, @function
QuickSort:
		sd ra, %ra
.L_QuickSort_entry:
		ld t0, %0
		li t1, ~fs
		add t0, t0, t1
		sd t0, %0
		j .L_QuickSort_8
.L_QuickSort_8:
		ld t0, %2
		ld t1, %4
		slt t0, t0, t1
		bnez t0, .L_QuickSort_13
		j .L_QuickSort_27
.L_QuickSort_13:
		ld t0, %2
		ld t1, %4
		ld t2, %0
		mv a0, t2
		sd t2, -8(sp)
		mv a1, t0
		sd t0, -16(sp)
		mv a2, t1
		sd t1, -24(sp)
		call Partition
		mv t0, a0
		sd t0, %6
		ld t0, %2
		ld t1, %6
		li t2, 1
		sub t1, t1, t2
		ld t2, %0
		mv a0, t2
		sd t2, -8(sp)
		mv a1, t0
		sd t0, -16(sp)
		mv a2, t1
		sd t1, -24(sp)
		call QuickSort
		ld t0, %6
		li t1, 1
		add t0, t0, t1
		ld t1, %4
		ld t2, %0
		mv a0, t2
		sd t2, -8(sp)
		mv a1, t0
		sd t0, -16(sp)
		mv a2, t1
		sd t1, -24(sp)
		call QuickSort
		j .L_QuickSort_27
.L_QuickSort_27:
		li t0, 0
		sd t0, %ret.addr
		j .L_QuickSort_exit
.L_QuickSort_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size QuickSort, .-QuickSort
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li t0, 8
		sd t0, %0
		li t0, 0
		sd t0, %3
		j .L_main_6
.L_main_6:
		ld t0, %3
		ld t1, %0
		slt t0, t0, t1
		bnez t0, .L_main_11
		j .L_main_20
.L_main_11:
		ld t0, %3
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%2
		add t0, t0, t1
		sd t0, %t0
		call getint
		ld t0, %t0
		mv t1, a0
		sd t1, ~t0
		ld t0, %3
		li t1, 1
		add t0, t0, t1
		sd t0, %3
		j .L_main_6
.L_main_20:
		ld t0, %0
		li t1, 1
		sub t0, t0, t1
		li t1, ~%2
		mv a0, t1
		sd t1, -8(sp)
		li t1, 0
		mv a1, t1
		sd t1, -16(sp)
		mv a2, t0
		sd t0, -24(sp)
		call QuickSort
		li t0, 0
		sd t0, %3
		j .L_main_26
.L_main_26:
		ld t0, %3
		ld t1, %0
		slt t0, t0, t1
		bnez t0, .L_main_31
		j .L_main_41
.L_main_31:
		ld t0, %3
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%2
		add t0, t0, t1
		ld t0, ~t0
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		ld t0, %3
		li t1, 1
		add t0, t0, t1
		sd t0, %3
		j .L_main_26
.L_main_41:
		li t0, 0
		sd t0, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size main, .-main
