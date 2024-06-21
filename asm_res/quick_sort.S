		.text
		.align 1
		.globl Swap
		.type Swap, @function
Swap:
		addi sp, sp, -104
		sd ra, 72(sp)
.L_Swap_entry:
		ld t0, 96(sp)
		li t1, 104
		add t0, t0, t1
		sd t0, 96(sp)
		ld t0, 88(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, 96(sp)
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		sd t0, 0(sp)
		ld t0, 88(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, 96(sp)
		add t0, t0, t1
		ld t1, 80(sp)
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		ld t2, 96(sp)
		add t1, t1, t2
		add t1, t1, sp
		ld t1, 0(t1)
		add t0, t0, sp
		sd t1, 0(t0)
		ld t0, 80(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, 96(sp)
		add t0, t0, t1
		ld t1, 0(sp)
		add t0, t0, sp
		sd t1, 0(t0)
		li t0, 0
		sd t0, 8(sp)
		j .L_Swap_exit
.L_Swap_exit:
		ld t0, 8(sp)
		mv a0, t0
		ld ra, 72(sp)
		addi sp, sp, 104
		ret
		.size Swap, .-Swap
		.align 1
		.globl Partition
		.type Partition, @function
Partition:
		addi sp, sp, -104
		sd ra, 72(sp)
.L_Partition_entry:
		ld t0, 96(sp)
		li t1, 104
		add t0, t0, t1
		sd t0, 96(sp)
		ld t0, 88(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, 96(sp)
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		sd t0, 0(sp)
		j .L_Partition_12
.L_Partition_12:
		ld t0, 88(sp)
		ld t1, 80(sp)
		slt t0, t0, t1
		bnez t0, .L_Partition_17
		j .L_Partition_19
.L_Partition_17:
		j .L_Partition_23
.L_Partition_19:
		ld t0, 88(sp)
		sd t0, 8(sp)
		j .L_Partition_exit
.L_Partition_23:
		ld t0, 88(sp)
		ld t1, 80(sp)
		slt t0, t0, t1
		bnez t0, .L_Partition_28
		j .L_Partition_40
.L_Partition_28:
		ld t0, 80(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, 96(sp)
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		ld t1, 0(sp)
		slt t0, t0, t1
		xori t0, t0, 1
		bnez t0, .L_Partition_35
		j .L_Partition_40
.L_Partition_35:
		ld t0, 80(sp)
		li t1, 1
		sub t0, t0, t1
		sd t0, 80(sp)
		j .L_Partition_23
.L_Partition_40:
		ld t0, 88(sp)
		ld t1, 80(sp)
		ld t2, 96(sp)
		mv a0, t2
		sd t2, -8(sp)
		mv a1, t0
		sd t0, -16(sp)
		mv a2, t1
		sd t1, -24(sp)
		call Swap
		j .L_Partition_45
.L_Partition_45:
		ld t0, 88(sp)
		ld t1, 80(sp)
		slt t0, t0, t1
		bnez t0, .L_Partition_50
		j .L_Partition_62
.L_Partition_50:
		ld t0, 88(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		ld t1, 96(sp)
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		ld t1, 0(sp)
		slt t0, t1, t0
		xori t0, t0, 1
		bnez t0, .L_Partition_57
		j .L_Partition_62
.L_Partition_57:
		ld t0, 88(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 88(sp)
		j .L_Partition_45
.L_Partition_62:
		ld t0, 88(sp)
		ld t1, 80(sp)
		ld t2, 96(sp)
		mv a0, t2
		sd t2, -8(sp)
		mv a1, t0
		sd t0, -16(sp)
		mv a2, t1
		sd t1, -24(sp)
		call Swap
		j .L_Partition_12
.L_Partition_exit:
		ld t0, 8(sp)
		mv a0, t0
		ld ra, 72(sp)
		addi sp, sp, 104
		ret
		.size Partition, .-Partition
		.align 1
		.globl QuickSort
		.type QuickSort, @function
QuickSort:
		addi sp, sp, -104
		sd ra, 72(sp)
.L_QuickSort_entry:
		ld t0, 96(sp)
		li t1, 104
		add t0, t0, t1
		sd t0, 96(sp)
		j .L_QuickSort_8
.L_QuickSort_8:
		ld t0, 88(sp)
		ld t1, 80(sp)
		slt t0, t0, t1
		bnez t0, .L_QuickSort_13
		j .L_QuickSort_27
.L_QuickSort_13:
		ld t0, 88(sp)
		ld t1, 80(sp)
		ld t2, 96(sp)
		mv a0, t2
		sd t2, -8(sp)
		mv a1, t0
		sd t0, -16(sp)
		mv a2, t1
		sd t1, -24(sp)
		call Partition
		mv t0, a0
		sd t0, 0(sp)
		ld t0, 88(sp)
		ld t1, 0(sp)
		li t2, 1
		sub t1, t1, t2
		ld t2, 96(sp)
		mv a0, t2
		sd t2, -8(sp)
		mv a1, t0
		sd t0, -16(sp)
		mv a2, t1
		sd t1, -24(sp)
		call QuickSort
		ld t0, 0(sp)
		li t1, 1
		add t0, t0, t1
		ld t1, 80(sp)
		ld t2, 96(sp)
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
		sd t0, 8(sp)
		j .L_QuickSort_exit
.L_QuickSort_exit:
		ld t0, 8(sp)
		mv a0, t0
		ld ra, 72(sp)
		addi sp, sp, 104
		ret
		.size QuickSort, .-QuickSort
		.align 1
		.globl main
		.type main, @function
main:
		addi sp, sp, -152
		sd ra, 144(sp)
.L_main_entry:
		li t0, 8
		sd t0, 72(sp)
		li t0, 0
		sd t0, 0(sp)
		j .L_main_6
.L_main_6:
		ld t0, 0(sp)
		ld t1, 72(sp)
		slt t0, t0, t1
		bnez t0, .L_main_11
		j .L_main_20
.L_main_11:
		ld t0, 0(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 8
		add t0, t0, t1
		sd t0, 136(sp)
		call getint
		ld t0, 136(sp)
		mv t1, a0
		add t0, t0, sp
		sd t1, 0(t0)
		ld t0, 0(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 0(sp)
		j .L_main_6
.L_main_20:
		ld t0, 72(sp)
		li t1, 1
		sub t0, t0, t1
		li t1, 8
		mv a0, t1
		sd t1, -8(sp)
		li t1, 0
		mv a1, t1
		sd t1, -16(sp)
		mv a2, t0
		sd t0, -24(sp)
		call QuickSort
		li t0, 0
		sd t0, 0(sp)
		j .L_main_26
.L_main_26:
		ld t0, 0(sp)
		ld t1, 72(sp)
		slt t0, t0, t1
		bnez t0, .L_main_31
		j .L_main_41
.L_main_31:
		ld t0, 0(sp)
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, 8
		add t0, t0, t1
		add t0, t0, sp
		ld t0, 0(t0)
		mv a0, t0
		sd t0, -8(sp)
		call putint
		li t0, 32
		mv a0, t0
		sd t0, -8(sp)
		call putch
		ld t0, 0(sp)
		li t1, 1
		add t0, t0, t1
		sd t0, 0(sp)
		j .L_main_26
.L_main_41:
		li t0, 0
		sd t0, 80(sp)
		j .L_main_exit
.L_main_exit:
		ld t0, 80(sp)
		mv a0, t0
		ld ra, 144(sp)
		addi sp, sp, 152
		ret
		.size main, .-main
