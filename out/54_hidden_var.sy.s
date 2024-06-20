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


.section        .text
    .align 4
    .globl main
    .type main,@function
main:
    addi    sp,sp,-672
    sd      ra,664(sp)
    sd      s0,648(sp)
    addi    s0,sp,672
.L0_0:
    li      a0, 1
    mv      a1, a0
    li      a2, 2
    mv      a3, a2
    li      a4, 3
    sw      a3,632(sp)
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    sw      a1,640(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    j       .while.head_32
.while.head_32:
    mv      a0, a0
    li      a1, 5
    slt     a3,a0,a1
    bnez    a3, .while.body_32
    j       .while.exit_32
.while.body_32:
    li      a5, 0
    mv      a6, a5
    li      a7, 1
    add     s1,a6,a7
    j       .L1_0
.L1_0:
    xor     s2,a6,a5
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .branch_true_37
    j       .branch_false_37
.branch_true_37:
    j       .while.exit_32
.while.exit_32:
    sw      s1,620(sp)
    sb      s2,619(sp)
    sw      a0,640(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    li      a0, 0
    mul     s1,a7,a2
    add     a0,a0,s1
    slli a0,a0,2
    add     a0,a0,a0
    sd      a7,0(a0)
    li      s2, 0
    li      s3, 8
    mul     s4,s3,a5
    add     s2,s2,s4
    li      s5, 1
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    li      s6, 9
    sd      s6,0(s2)
    li      s7, 0
    add     s7,s7,s4
    add     s7,s7,s4
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    sd      s3,0(s7)
    li      s8, 0
    add     s8,s8,s4
    add     s8,s8,s4
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    sd      a5,0(s8)
    li      s9, 0
    add     s9,s9,s4
    add     s9,s9,s4
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    sd      a4,0(s9)
    mv      s10, a2
    j       .L2_0
.L2_0:
    la      s11, c
    lw      a1,0(s11)
    li      a1, 0
    mul     a4,s5,a2
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a2, a2
    xor     a7,a2,a5
    sltiu   a7,a7,1
    xori    a7,a7,1
    bnez    a7, .branch_true_51
    j       .branch_false_51
.branch_true_51:
    li      a5, 0
    li      s1, 5
    li      s3, 0
    mul     s5,s1,s3
    add     a5,a5,s5
    add     a5,a5,s5
    li      s1, 1
    add     a5,a5,s5
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    li      s1, 2
    sd      s1,0(a5)
    li      s1, 0
    li      s3, 5
    li      s6, 0
    add     s1,s1,s5
    add     s1,s1,s5
    li      s3, 1
    li      s6, 1
    add     s1,s1,s5
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    sd      s3,0(s1)
    li      s3, 0
    li      s6, 5
    li      s11, 0
    add     s3,s3,s5
    add     s3,s3,s5
    li      s6, 1
    li      s11, 2
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s6, 8
    sd      s6,0(s3)
    li      s6, 0
    li      s11, 5
    add     s6,s6,s5
    sd      a0,608(sp)
    li      a0, 0
    add     s6,s6,s5
    li      a0, 1
    li      s11, 0
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    sd      s1,408(sp)
    sd      s2,592(sp)
    sd      s3,392(sp)
    sw      s4,544(sp)
    sw      s5,384(sp)
    sd      s6,232(sp)
    sd      s7,584(sp)
    sd      s8,568(sp)
    sd      s9,552(sp)
    sw      s10,476(sp)
    mv      a0, a0
    call    putint
    li      a0, 0
    li      s1, 5
    mv      s2, s2
    mul     s3,s1,s2
    add     a0,a0,s3
    li      s4, 0
    add     a0,a0,s3
    li      s5, 1
    li      s6, 1
    add     a0,a0,s3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sw      s2,476(sp)
    sw      s3,384(sp)
    sd      a0,208(sp)
    mv      a0, a0
    call    putint
    li      a0, 0
    li      s1, 5
    mv      s2, s2
    mul     s3,s1,s2
    add     a0,a0,s3
    li      s4, 0
    add     a0,a0,s3
    li      s5, 1
    li      s6, 2
    add     a0,a0,s3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sw      s2,476(sp)
    sw      s3,384(sp)
    sd      a0,184(sp)
    mv      a0, a0
    call    putint
    j       .branch_false_51
.branch_false_51:
.L3_0:
    li      a0, 10
    call    putch
    la      a0, b
    lw      s1,0(a0)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    la      a0, c
    lw      s1,0(a0)
    li      s2, 0
    li      s3, 1
    li      s4, 0
    mul     s5,s3,s4
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    sd      s2,136(sp)
    sw      s5,160(sp)
    mv      a0, a0
    call    putint
    la      a0, c
    lw      s1,0(a0)
    li      s2, 0
    li      s3, 1
    li      s4, 1
    mul     s5,s3,s4
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    sd      s2,96(sp)
    sw      s5,120(sp)
    mv      a0, a0
    call    putint
    la      a0, c
    lw      s1,0(a0)
    li      s2, 0
    li      s3, 1
    li      s4, 2
    mul     s5,s3,s4
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    sd      s2,56(sp)
    sw      s5,80(sp)
    mv      a0, a0
    call    putint
    la      a0, c
    lw      s1,0(a0)
    li      s2, 0
    li      s3, 1
    li      s4, 3
    mul     s5,s3,s4
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    sd      s2,16(sp)
    sw      s5,40(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    ld      ra,664(sp)
    ld      s0,648(sp)
    li      a0, 0
    addi    sp,sp,672
    ret
.branch_false_37:
    j       .while.head_32
.section        .data
    .align 4
    .globl c
    .type c,@object
c:
    .word 6
    .word 7
    .word 8
    .word 9
    .zero 13
    .align 4
    .globl b
    .type b,@object
b:
    .word 5
