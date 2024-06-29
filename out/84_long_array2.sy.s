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
    .globl f1
    .type f1,@function
f1:
    addi    sp,sp,-120
    sd      ra,112(sp)
    sd      s0,104(sp)
    addi    s0,sp,120
.L1_0:
    li      a1, 0
    li      a2, 1
    li      a3, 5
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    la      a5, a
    add     a1,a1,a5
    li      a6, 4000
    sw      a6,0(a1)
    li      a7, 0
    mul     s1,a2,a6
    add     a7,a7,s1
    slli a7,a7,2
    la      s2, a
    add     a7,a7,s2
    li      s3, 3
    sw      s3,0(a7)
    li      s4, 0
    li      s5, 4095
    mul     s6,a2,s5
    add     s4,s4,s6
    slli s4,s4,2
    la      s7, a
    add     s4,s4,s7
    li      s8, 7
    sw      s8,0(s4)
    li      s9, 0
    mul     s10,a2,s5
    add     s9,s9,s10
    slli s9,s9,2
    la      s11, a
    add     s9,s9,s11
    lw      a2,0(s9)
    li      a3, 0
    li      a4, 1
    mul     a5,a4,a2
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,a0
    li      a4, 0
    li      a5, 1
    li      a6, 2216
    mul     s1,a5,a6
    add     a4,a4,s1
    slli a4,a4,2
    la      a5, a
    add     a4,a4,a5
    lw      a5,0(a4)
    li      a6, 9
    add     s1,a5,a6
    sw      s1,0(a3)
    li      a6, 0
    li      s2, 1
    li      s3, 5
    mul     s5,s2,s3
    add     a6,a6,s5
    slli a6,a6,2
    la      s2, a
    add     a6,a6,s2
    lw      s2,0(a6)
    li      s3, 0
    li      s5, 1
    mul     s6,s5,s2
    add     s3,s3,s6
    slli s3,s3,2
    la      s5, a
    add     s3,s3,s5
    lw      s5,0(s3)
    ld      ra,112(sp)
    ld      s0,104(sp)
    sw      s5,4(sp)
    sd      a0,96(sp)
    lw      a0,4(sp)
    addi    sp,sp,120
    ret
    .globl main
    .type main,@function
main:
    li      a0, -32912
    li      a0, -32912
    add     sp,a0,sp
    li      a1, 32904
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 32896
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 32912
    li      a3, 32912
    add     s0,a3,sp
.L0_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 16456
    li      a1, 16456
    add     a0,a1,a0
    li      a0, 32888
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 32888
    add     a1,sp,a1
    ld      a0,0(a1)
    li      a1, 0
    li      a2, 16384
    call    memset
    li      a0, 0
    li      a1, 1024
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    li      a5, 3
    mul     a6,a4,a5
    add     a0,a0,a6
    slli a0,a0,2
    add     a0,a0,sp
    li      a7, 16456
    li      a7, 16456
    add     a0,a7,a0
    li      s1, 4
    sw      s1,0(a0)
    li      s2, 0
    mul     s3,a1,a2
    add     s2,s2,s3
    mul     s4,a4,s1
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    li      a7, 16456
    add     s2,a7,s2
    li      s5, 5
    sw      s5,0(s2)
    li      s6, 0
    mul     s7,a1,a2
    add     s6,s6,s7
    li      s8, 2
    mul     s9,a4,s8
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,sp
    li      a7, 16456
    add     s6,a7,s6
    sw      a5,0(s6)
    li      s10, 0
    mul     s11,a1,a2
    add     s10,s10,s11
    li      a1, 1
    mul     a2,a4,a1
    add     s10,s10,a2
    slli s10,s10,2
    add     s10,s10,sp
    li      a7, 16456
    add     s10,a7,s10
    sw      s8,0(s10)
    li      a1, 0
    li      a2, 1024
    li      a3, 0
    mul     a4,a2,a3
    add     a1,a1,a4
    li      a2, 1
    mul     a3,a2,s5
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    li      a7, 16456
    add     a1,a7,a1
    li      a2, 6
    sw      a2,0(a1)
    li      a2, 0
    li      a3, 1024
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    li      a3, 1
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    li      a7, 16456
    add     a2,a7,a2
    sw      a3,0(a2)
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,32
    li      s1, 32872
    add     s1,sp,s1
    sd      s2,0(s1)
    li      s2, 32864
    add     s2,sp,s2
    sd      s6,0(s2)
    li      s3, 32856
    add     s3,sp,s3
    sd      s10,0(s3)
    li      a0, 32880
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 32848
    add     a0,sp,a0
    sd      a1,0(a0)
    li      a1, 32840
    add     a1,sp,a1
    sd      a2,0(a1)
    li      a2, 16448
    add     a2,sp,a2
    sd      a3,0(a2)
    add     a2,sp,a2
    ld      a0,0(a2)
    li      a1, 0
    li      a2, 16384
    call    memset
    li      a0, 0
    li      a1, 4
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    li      a5, 1
    mul     a6,a4,a5
    add     a0,a0,a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,32
    li      a7, 2
    sw      a7,0(a0)
    li      s4, 0
    mul     s5,a1,a2
    add     s4,s4,s5
    li      s6, 3
    mul     s7,a5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,32
    sw      a1,0(s4)
    li      s8, 0
    mul     s9,a1,a2
    add     s8,s8,s9
    mul     s10,a5,a2
    add     s8,s8,s10
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,32
    sw      a5,0(s8)
    li      s11, 0
    mul     a3,a1,a2
    add     s11,s11,a3
    mul     a1,a5,a7
    add     s11,s11,a1
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,32
    sw      s6,0(s11)
    li      a1, 0
    li      a2, 4
    li      a3, 0
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,32
    li      s1, 16432
    add     s1,sp,s1
    sd      s4,0(s1)
    li      s2, 16424
    add     s2,sp,s2
    sd      s8,0(s2)
    li      s3, 16416
    add     s3,sp,s3
    sd      s11,0(s3)
    li      a0, 16440
    add     a0,sp,a0
    sd      a0,0(a0)
    sd      a1,24(sp)
    ld      a0,24(sp)
    call    f1
    sw      a0,20(sp)
    sw      a0,20(sp)
    lw      a0,20(sp)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 0
    li      a1, 4
    li      a2, 2
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    li      a5, 0
    mul     a6,a4,a5
    add     a0,a0,a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,32
    lw      a7,0(a0)
    li      s1, 32904
    add     s1,sp,s1
    ld      ra,0(s1)
    li      s2, 32896
    add     s2,sp,s2
    ld      s0,0(s2)
    sw      a7,4(sp)
    sd      a0,8(sp)
    lw      a0,4(sp)
    li      a7, 32912
    li      a7, 32912
    add     sp,a7,sp
    ret
.section ___var
    .data
    .align 4
    .globl a
    .type a,@object
a:
    .zero 16384
