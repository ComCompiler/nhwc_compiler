# Built-in library
    .text
    .align 4
    .globl starttime
    .type starttime, @function
starttime:
    mv a0, zero
    tail _sysy_starttime

    .text
    .align 4
    .globl stoptime
    .type stoptime, @function
stoptime:
    mv a0, zero
    tail _sysy_stoptime

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
.Lmain$ENTRY:
	li	a0, 5
	ret

	.globl	a
	.section	.bss
	.type	a, @object
a:
	.zero	60

	.globl	a0
	.section	.bss
	.type	a0, @object
a0:
	.zero	12

	.globl	b
	.section	.bss
	.type	b, @object
b:
	.zero	60

	.globl	b0
	.section	.data
	.type	b0, @object
b0:
	.zero	4
	.word	1
	.zero	8

	.globl	c
	.section	.data
	.type	c, @object
c:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

	.globl	c0
	.section	.data
	.type	c0, @object
c0:
	.word	2
	.word	8
	.word	6
	.word	3
	.word	9
	.word	1
	.word	5

	.globl	d
	.section	.data
	.type	d, @object
d:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

	.globl	d0
	.section	.bss
	.type	d0, @object
d0:
	.zero	44

	.globl	e
	.section	.data
	.type	e, @object
e:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15

	.globl	e0
	.section	.data
	.type	e0, @object
e0:
	.word	22
	.word	33

	.globl	f
	.section	.bss
	.type	f, @object
f:
	.zero	20

	.globl	f0
	.section	.bss
	.type	f0, @object
f0:
	.zero	24

	.globl	g
	.section	.data
	.type	g, @object
g:
	.word	1
	.word	2
	.word	3
	.word	4
	.zero	8
	.word	7
	.zero	8
	.word	10
	.word	11
	.word	12
	.zero	12

	.globl	g0
	.section	.data
	.type	g0, @object
g0:
	.word	85
	.zero	4
	.word	1
	.word	29
	.zero	20

	.globl	h
	.section	.bss
	.type	h, @object
h:
	.zero	12

	.globl	i
	.section	.data
	.type	i, @object
i:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.zero	76

