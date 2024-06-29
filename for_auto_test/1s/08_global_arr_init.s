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


.section ___func
    .text
    .align 4
    .globl main
    .type main,@function
main:
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
.L0_0:
    ld      ra,8(sp)
    ld      s0,0(sp)
    li      a0, 5
    addi    sp,sp,16
    ret
.section ___var
    .data
    .align 4
    .globl i
    .type i,@object
i:
    .word 1
    .word 2
    .word 3
    .word 4
    .word 5
    .zero 80
    .align 4
    .globl h
    .type h,@object
h:
    .zero 12
    .align 4
    .globl g
    .type g,@object
g:
    .word 1
    .word 2
    .word 3
    .word 4
    .word 7
    .word 10
    .word 11
    .word 12
    .zero 32
    .align 4
    .globl f
    .type f,@object
f:
    .zero 20
    .align 4
    .globl e
    .type e,@object
e:
    .word 1
    .word 2
    .word 3
    .word 4
    .word 5
    .word 6
    .word 7
    .word 8
    .word 9
    .word 10
    .word 11
    .word 12
    .word 13
    .word 14
    .word 15
    .zero 4
    .align 4
    .globl d
    .type d,@object
d:
    .word 1
    .word 2
    .word 3
    .word 4
    .word 5
    .word 6
    .word 7
    .word 8
    .word 9
    .word 10
    .word 11
    .word 12
    .word 13
    .word 14
    .word 15
    .zero 4
    .align 4
    .globl c
    .type c,@object
c:
    .word 1
    .word 2
    .word 3
    .word 4
    .word 5
    .word 6
    .word 7
    .word 8
    .word 9
    .word 10
    .word 11
    .word 12
    .word 13
    .word 14
    .word 15
    .zero 4
    .align 4
    .globl b
    .type b,@object
b:
    .zero 60
    .align 4
    .globl a
    .type a,@object
a:
    .zero 60
    .align 4
    .globl g0
    .type g0,@object
g0:
    .word 85
    .word 0
    .word 1
    .word 29
    .zero 24
    .align 4
    .globl f0
    .type f0,@object
f0:
    .zero 24
    .align 4
    .globl e0
    .type e0,@object
e0:
    .word 22
    .word 33
    .zero 4
    .align 4
    .globl d0
    .type d0,@object
d0:
    .zero 44
    .align 4
    .globl c0
    .type c0,@object
c0:
    .word 2
    .word 8
    .word 6
    .word 3
    .word 9
    .word 1
    .word 5
    .zero 4
    .align 4
    .globl b0
    .type b0,@object
b0:
    .word 0
    .word 1
    .zero 12
    .align 4
    .globl a0
    .type a0,@object
a0:
    .zero 12
