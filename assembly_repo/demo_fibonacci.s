	.text							#段指示符,
									# .text: 用于存放可执行代码的段，通常包含程序的指令。

									# .data: 用于存放程序的静态数据，如全局变量和静态变量。

									# .bss: 用于存放程序中未初始化的全局变量和静态变量。在程序执行前，这些变量会被初始化为0或者空。

									# .rodata（read-only data）: 用于存放只读数据，如字符串常量。

									# .data.rel, .text.rel, .rodata.rel: 这些段指示符通常用于存放可重定位目标文件中的重定位信息，用于链接时解析符号的地址。

									# .stack: 用于存放程序的栈空间，通常包含函数调用的局部变量和函数调用的返回地址。

	.file	"demo_fibonacci.c"		# 文件指示符,从该文件的C源文件生成的
	.globl	Fibo                    # -- Begin function Fibo	全局符号指示符，声明了Fibo函数是一个全局可见的符号，可以被其他模块引用。
	.p2align	2					# 对齐指示符，它要求后续指令在内存中按照2的幂进行对齐。在这里，.p2align 2表示指令将会在4字节（2^2）边界对齐。.p2align 3 就是要求对齐到 2^3 = 8 字节的边界。下一条指令的地址必须是 p^2 的倍数。
	.type	Fibo,@function			# 指定了Fibo符号的类型为函数。这有助于链接器正确地处理该符号。
									# @object: 用于声明符号为一个对象，通常指代数据或变量。
									# @gnu_unique_object: GNU 扩展的一个类型指示符，用于声明一个独一无二的对象。
									# @thread_local: 用于声明一个线程局部对象，在多线程程序中，每个线程都有自己独立的副本。
									# @indirect_symbol: 用于声明一个间接符号，通常指向一个指针，该指针指向实际的符号。
									# @non_lazy_symbol: 用于声明一个非惰性符号，即它在程序加载时立即解析。


Fibo:                                   # @Fibo
	.cfi_startproc					# （Call Frame Information，调用帧信息）
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32// 定义 CFA (Canonical Frame Address) 偏移
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	.cfi_offset ra, -4// 保存返回地址的偏移量
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0  // 定义 CFA 偏移为 0
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	bnez	a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	sw	zero, -16(s0)
	j	.LBB0_5
.LBB0_2:
	lw	a0, -20(s0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	addi	a0, zero, 1
	sw	a0, -16(s0) // Fibo(1) = 1 把1存入a0,用于返回函数值
	j	.LBB0_5
.LBB0_4:
	lw	a0, -20(s0)
	addi	a0, a0, -1
	call	Fibo
	mv	s1, a0
	lw	a0, -20(s0)
	addi	a0, a0, -2
	call	Fibo
	add	a0, s1, a0
	sw	a0, -16(s0)
	j	.LBB0_5
.LBB0_5:
	lw	a0, -16(s0)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	Fibo, .Lfunc_end0-Fibo
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	addi	a0, zero, 6
	call	Fibo
	sw	a0, -12(s0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
