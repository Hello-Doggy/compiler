		.text
		.align 1
		.globl main
		.type main, @function
main:
		sd ra, %ra
.L_main_entry:
		li t0, 5
		sd t0, %0
		li t0, 0
		sd t0, %4
		j .L_main_14
.L_main_14:
		ld t0, %4
		ld t1, %0
		slt t0, t0, t1
		bnez t0, .L_main_19
		j .L_main_28
.L_main_19:
		ld t0, %4
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
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_14
.L_main_28:
		li t0, 1
		sd t0, %5
		j .L_main_31
.L_main_31:
		ld t0, %5
		ld t1, %0
		slt t0, t0, t1
		bnez t0, .L_main_36
		j .L_main_39
.L_main_36:
		li t0, 0
		sd t0, %4
		j .L_main_42
.L_main_39:
		li t0, 0
		sd t0, %4
		j .L_main_324
.L_main_42:
		ld t0, %4
		ld t1, %0
		ld t2, %5
		li t3, 2
		mul t2, t3, t2
		sub t1, t1, t2
		slt t0, t1, t0
		xori t0, t0, 1
		bnez t0, .L_main_50
		j .L_main_68
.L_main_50:
		ld t0, %4
		sd t0, %6
		ld t0, %6
		ld t1, %5
		add t0, t0, t1
		sd t0, %7
		ld t0, %6
		sd t0, %8
		ld t0, %7
		sd t0, %9
		ld t0, %9
		ld t1, %5
		add t0, t0, t1
		sd t0, %10
		ld t0, %9
		sd t0, %11
		j .L_main_70
.L_main_68:
		j .L_main_162
.L_main_70:
		ld t0, %8
		ld t1, %7
		slt t0, t0, t1
		bnez t0, .L_main_75
		j .L_main_82
.L_main_75:
		ld t0, %11
		ld t1, %10
		slt t0, t0, t1
		bnez t0, .L_main_80
		j .L_main_82
.L_main_80:
		j .L_main_84
.L_main_82:
		j .L_main_120
.L_main_84:
		ld t0, %8
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%2
		add t0, t0, t1
		ld t0, ~t0
		ld t1, %11
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%2
		add t1, t1, t2
		ld t1, ~t1
		slt t0, t0, t1
		bnez t0, .L_main_93
		j .L_main_104
.L_main_93:
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%3
		add t0, t0, t1
		ld t1, %8
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%2
		add t1, t1, t2
		ld t1, ~t1
		sd t1, ~t0
		ld t0, %8
		li t1, 1
		add t0, t0, t1
		sd t0, %8
		j .L_main_115
.L_main_104:
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%3
		add t0, t0, t1
		ld t1, %11
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%2
		add t1, t1, t2
		ld t1, ~t1
		sd t1, ~t0
		ld t0, %11
		li t1, 1
		add t0, t0, t1
		sd t0, %11
		j .L_main_115
.L_main_115:
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_70
.L_main_120:
		ld t0, %8
		ld t1, %7
		slt t0, t0, t1
		bnez t0, .L_main_125
		j .L_main_139
.L_main_125:
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%3
		add t0, t0, t1
		ld t1, %8
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%2
		add t1, t1, t2
		ld t1, ~t1
		sd t1, ~t0
		ld t0, %8
		li t1, 1
		add t0, t0, t1
		sd t0, %8
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_120
.L_main_139:
		j .L_main_141
.L_main_141:
		ld t0, %11
		ld t1, %10
		slt t0, t0, t1
		bnez t0, .L_main_146
		j .L_main_160
.L_main_146:
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%3
		add t0, t0, t1
		ld t1, %11
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%2
		add t1, t1, t2
		ld t1, ~t1
		sd t1, ~t0
		ld t0, %11
		li t1, 1
		add t0, t0, t1
		sd t0, %11
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_141
.L_main_160:
		j .L_main_42
.L_main_162:
		ld t0, %4
		ld t1, %5
		add t0, t0, t1
		ld t1, %0
		slt t0, t0, t1
		bnez t0, .L_main_169
		j .L_main_185
.L_main_169:
		ld t0, %4
		sd t0, %6
		ld t0, %6
		ld t1, %5
		add t0, t0, t1
		sd t0, %7
		ld t0, %6
		sd t0, %8
		ld t0, %7
		sd t0, %9
		ld t0, %0
		sd t0, %10
		ld t0, %9
		sd t0, %11
		j .L_main_190
.L_main_185:
		j .L_main_285
.L_main_187:
		li t0, 0
		sd t0, %4
		j .L_main_303
.L_main_190:
		ld t0, %8
		ld t1, %7
		slt t0, t0, t1
		bnez t0, .L_main_195
		j .L_main_202
.L_main_195:
		ld t0, %11
		ld t1, %10
		slt t0, t0, t1
		bnez t0, .L_main_200
		j .L_main_202
.L_main_200:
		j .L_main_204
.L_main_202:
		j .L_main_243
.L_main_204:
		ld t0, %8
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%2
		add t0, t0, t1
		ld t0, ~t0
		ld t1, %11
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%2
		add t1, t1, t2
		ld t1, ~t1
		slt t0, t0, t1
		bnez t0, .L_main_213
		j .L_main_227
.L_main_213:
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%3
		add t0, t0, t1
		ld t1, %8
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%2
		add t1, t1, t2
		ld t1, ~t1
		sd t1, ~t0
		ld t0, %8
		li t1, 1
		add t0, t0, t1
		sd t0, %8
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_241
.L_main_227:
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%3
		add t0, t0, t1
		ld t1, %11
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%2
		add t1, t1, t2
		ld t1, ~t1
		sd t1, ~t0
		ld t0, %11
		li t1, 1
		add t0, t0, t1
		sd t0, %11
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_241
.L_main_241:
		j .L_main_190
.L_main_243:
		ld t0, %8
		ld t1, %7
		slt t0, t0, t1
		bnez t0, .L_main_248
		j .L_main_262
.L_main_248:
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%3
		add t0, t0, t1
		ld t1, %8
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%2
		add t1, t1, t2
		ld t1, ~t1
		sd t1, ~t0
		ld t0, %8
		li t1, 1
		add t0, t0, t1
		sd t0, %8
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_243
.L_main_262:
		j .L_main_264
.L_main_264:
		ld t0, %11
		ld t1, %10
		slt t0, t0, t1
		bnez t0, .L_main_269
		j .L_main_283
.L_main_269:
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%3
		add t0, t0, t1
		ld t1, %11
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%2
		add t1, t1, t2
		ld t1, ~t1
		sd t1, ~t0
		ld t0, %11
		li t1, 1
		add t0, t0, t1
		sd t0, %11
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_264
.L_main_283:
		j .L_main_187
.L_main_285:
		ld t0, %4
		ld t1, %0
		slt t0, t0, t1
		bnez t0, .L_main_290
		j .L_main_301
.L_main_290:
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%3
		add t0, t0, t1
		ld t1, %4
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%2
		add t1, t1, t2
		ld t1, ~t1
		sd t1, ~t0
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_285
.L_main_301:
		j .L_main_187
.L_main_303:
		ld t0, %4
		ld t1, %0
		slt t0, t0, t1
		bnez t0, .L_main_308
		j .L_main_319
.L_main_308:
		ld t0, %4
		mv t0, t0
		li t1, 8
		mul t0, t0, t1
		li t1, ~%2
		add t0, t0, t1
		ld t1, %4
		mv t1, t1
		li t2, 8
		mul t1, t1, t2
		li t2, ~%3
		add t1, t1, t2
		ld t1, ~t1
		sd t1, ~t0
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_303
.L_main_319:
		ld t0, %5
		li t1, 2
		mul t0, t0, t1
		sd t0, %5
		j .L_main_31
.L_main_324:
		ld t0, %4
		ld t1, %0
		slt t0, t0, t1
		bnez t0, .L_main_329
		j .L_main_339
.L_main_329:
		ld t0, %4
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
		ld t0, %4
		li t1, 1
		add t0, t0, t1
		sd t0, %4
		j .L_main_324
.L_main_339:
		li t0, 0
		sd t0, %ret.addr
		j .L_main_exit
.L_main_exit:
		ld t0, %ret.addr
		mv a0, t0
		ld ra, %ra
		ret
		.size main, .-main
