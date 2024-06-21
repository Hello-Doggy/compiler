		.text
		.align 1
		.globl Swap
		.type Swap, @function
Swap:
		sd ra, %ra
.L_Swap_entry:
		ld %t, %0
		li %tt, ~fs
		add %ttt, %t, %tt
		sd %ttt, %0
		ld %7, %2
		mv %8, %7
		li %t, 8
		mul %8, %8, %t
		ld %t, %0
		add %8, %8, %t
		ld %9, %8
		sd %9, %6
		ld %11, %2
		mv %12, %11
		li %t, 8
		mul %12, %12, %t
		ld %t, %0
		add %12, %12, %t
		ld %13, %4
		mv %14, %13
		li %t, 8
		mul %14, %14, %t
		ld %t, %0
		add %14, %14, %t
		ld %15, %14
		sd %15, %12
		ld %17, %4
		mv %18, %17
		li %t, 8
		mul %18, %18, %t
		ld %t, %0
		add %18, %18, %t
		ld %19, %6
		sd %19, %18
		li %t, 0
		sd %t, %ret.addr
		j .L_Swap_exit
.L_Swap_exit:
		ld %23, %ret.addr
		mv a0, %23
		ld ra, %ra
		ret
		.size Swap, .-Swap
		.align 1
		.globl Partition
		.type Partition, @function
Partition:
		sd ra, %ra
.L_Partition_entry:
		ld %t, %0
		li %tt, ~fs
		add %ttt, %t, %tt
		sd %ttt, %0
		ld %7, %2
		mv %8, %7
		li %t, 8
		mul %8, %8, %t
		ld %t, %0
		add %8, %8, %t
		ld %9, %8
		sd %9, %6
		j .L_Partition_12
.L_Partition_12:
		ld %13, %2
		ld %14, %4
		slt %15, %13, %14
		bnez %15, .L_Partition_17
		j .L_Partition_19
.L_Partition_17:
		j .L_Partition_23
.L_Partition_19:
		ld %20, %2
		sd %20, %ret.addr
		j .L_Partition_exit
.L_Partition_23:
		ld %24, %2
		ld %25, %4
		slt %26, %24, %25
		bnez %26, .L_Partition_28
		j .L_Partition_40
.L_Partition_28:
		ld %29, %4
		mv %30, %29
		li %t, 8
		mul %30, %30, %t
		ld %t, %0
		add %30, %30, %t
		ld %31, %30
		ld %32, %6
		slt %33, %31, %32
		xori %33, %33, 1
		bnez %33, .L_Partition_35
		j .L_Partition_40
.L_Partition_35:
		ld %36, %4
		li %t, 1
		sub %37, %36, %t
		sd %37, %4
		j .L_Partition_23
.L_Partition_40:
		ld %41, %2
		ld %42, %4
		ld %t, %0
		mv a0, %t
		sd %t, -8(sp)
		mv a1, %41
		sd %41, -16(sp)
		mv a2, %42
		sd %42, -24(sp)
		call Swap
		j .L_Partition_45
.L_Partition_45:
		ld %46, %2
		ld %47, %4
		slt %48, %46, %47
		bnez %48, .L_Partition_50
		j .L_Partition_62
.L_Partition_50:
		ld %51, %2
		mv %52, %51
		li %t, 8
		mul %52, %52, %t
		ld %t, %0
		add %52, %52, %t
		ld %53, %52
		ld %54, %6
		slt %55, %54, %53
		xori %55, %55, 1
		bnez %55, .L_Partition_57
		j .L_Partition_62
.L_Partition_57:
		ld %58, %2
		li %t, 1
		add %59, %58, %t
		sd %59, %2
		j .L_Partition_45
.L_Partition_62:
		ld %63, %2
		ld %64, %4
		ld %t, %0
		mv a0, %t
		sd %t, -8(sp)
		mv a1, %63
		sd %63, -16(sp)
		mv a2, %64
		sd %64, -24(sp)
		call Swap
		j .L_Partition_12
.L_Partition_exit:
		ld %67, %ret.addr
		mv a0, %67
		ld ra, %ra
		ret
		.size Partition, .-Partition
		.align 1
		.globl QuickSort
		.type QuickSort, @function
QuickSort:
		sd ra, %ra
.L_QuickSort_entry:
		ld %t, %0
		li %tt, ~fs
		add %ttt, %t, %tt
		sd %ttt, %0
		j .L_QuickSort_8
.L_QuickSort_8:
		ld %9, %2
		ld %10, %4
		slt %11, %9, %10
		bnez %11, .L_QuickSort_13
		j .L_QuickSort_27
.L_QuickSort_13:
		ld %14, %2
		ld %15, %4
		ld %t, %0
		mv a0, %t
		sd %t, -8(sp)
		mv a1, %14
		sd %14, -16(sp)
		mv a2, %15
		sd %15, -24(sp)
		call Partition
		mv %16, a0
		sd %16, %6
		ld %18, %2
		ld %19, %6
		li %t, 1
		sub %20, %19, %t
		ld %t, %0
		mv a0, %t
		sd %t, -8(sp)
		mv a1, %18
		sd %18, -16(sp)
		mv a2, %20
		sd %20, -24(sp)
		call QuickSort
		ld %22, %6
		li %t, 1
		add %23, %22, %t
		ld %24, %4
		ld %t, %0
		mv a0, %t
		sd %t, -8(sp)
		mv a1, %23
		sd %23, -16(sp)
		mv a2, %24
		sd %24, -24(sp)
		call QuickSort
		j .L_QuickSort_27
.L_QuickSort_27:
		li %t, 0
		sd %t, %ret.addr
		j .L_QuickSort_exit
.L_QuickSort_exit:
		ld %30, %ret.addr
		mv a0, %30
		ld ra, %ra
		ret
		.size QuickSort, .-QuickSort
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li %t, 8
		sd %t, %0
		li %t, 0
		sd %t, %3
		j .L_main_6
.L_main_6:
		ld %7, %3
		ld %8, %0
		slt %9, %7, %8
		bnez %9, .L_main_11
		j .L_main_20
.L_main_11:
		ld %12, %3
		mv %13, %12
		li %t, 8
		mul %13, %13, %t
		li %t, ~%2
		add %13, %13, %t
		call getint
		mv %14, a0
		sd %14, %13
		ld %16, %3
		li %t, 1
		add %17, %16, %t
		sd %17, %3
		j .L_main_6
.L_main_20:
		ld %21, %0
		li %t, 1
		sub %22, %21, %t
		li %t, ~%2
		mv a0, %t
		sd %t, -8(sp)
		li %t, 0
		mv a1, %t
		sd %t, -16(sp)
		mv a2, %22
		sd %22, -24(sp)
		call QuickSort
		li %t, 0
		sd %t, %3
		j .L_main_26
.L_main_26:
		ld %27, %3
		ld %28, %0
		slt %29, %27, %28
		bnez %29, .L_main_31
		j .L_main_41
.L_main_31:
		ld %32, %3
		mv %33, %32
		li %t, 8
		mul %33, %33, %t
		li %t, ~%2
		add %33, %33, %t
		ld %34, %33
		mv a0, %34
		sd %34, -8(sp)
		call putint
		li %t, 32
		mv a0, %t
		sd %t, -8(sp)
		call putch
		ld %37, %3
		li %t, 1
		add %38, %37, %t
		sd %38, %3
		j .L_main_26
.L_main_41:
		li %t, 0
		sd %t, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld %44, %ret.addr
		mv a0, %44
		ld ra, %ra
		ret
		.size main, .-main
