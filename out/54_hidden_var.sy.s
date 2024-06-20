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
    addi    sp,sp,-528
    sd      ra,520(sp)
    sd      s0,512(sp)
    addi    s0,sp,528
.L0_0:
    li      a0, 1
    li      a1, 2
    sw      a1,504(sp)
    sw      a0,508(sp)
    call    putint
    call    putint
    call    putint
    li      a0, 10
    call    putch
    j       .while.head_32
.while.head_32:
    li      a1, 5
    slt     a2,a0,a1
    bnez    a2, .while.body_32
    j       .while.exit_32
.while.body_32:
    li      a3, 0
    li      a4, 1
    add     a5,a3,a4
    j       .L1_0
.L1_0:
    li      a6, 0
    xor     a7,a3,a6
    snez    a7, a7
    bnez    a7, .branch_true_37
    j       .branch_false_37
.branch_true_37:
    j       .while.exit_32
.while.exit_32:
    sw      a0,508(sp)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 0
    li      s1, 2
    mul     s2,a4,s1
    add     a0,a0,s2
    slli a0,a0,2
    add     a0,a0,a0
    sd      a4,0(a0)
    li      s3, 0
    li      s4, 8
    mul     s5,s4,a6
    add     s3,s3,s5
    li      s6, 1
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s7, 9
    sd      s7,0(s3)
    li      s8, 0
    add     s8,s8,s5
    add     s8,s8,s5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    sd      a6,0(s8)
    li      s9, 0
    add     s9,s9,s5
    add     s9,s9,s5
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    sd      s4,0(s9)
    li      s10, 0
    add     s10,s10,s5
    li      s11, 3
    add     s10,s10,s5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    sd      s11,0(s10)
    li      a1, 2
    j       .L2_0
.L2_0:
    la      a4, c
    lw      a6,0(a4)
    li      a4, 0
    mul     a6,s6,s1
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    li      s2, 0
    xor     s4,s1,s2
    snez    s4, s4
    bnez    s4, .branch_true_51
    j       .branch_false_51
.branch_true_51:
    li      s2, 0
    li      s6, 5
    li      s7, 0
    mul     s11,s6,s7
    add     s2,s2,s11
    add     s2,s2,s11
    li      s6, 1
    li      s7, 2
    add     s2,s2,s11
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    li      s6, 8
    sd      s6,0(s2)
    li      s6, 0
    li      s7, 5
    sd      a0,480(sp)
    li      a0, 0
    add     s6,s6,s11
    add     s6,s6,s11
    li      a0, 1
    li      s7, 1
    add     s6,s6,s11
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    sd      a0,0(s6)
    li      a0, 0
    li      s7, 5
    sw      a1,380(sp)
    li      a1, 0
    add     a0,a0,s11
    add     a0,a0,s11
    li      a1, 1
    li      s7, 0
    add     a0,a0,s11
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    li      s7, 5
    sd      a0,320(sp)
    add     a1,a1,s11
    sw      a0,380(sp)
    li      a0, 0
    add     a1,a1,s11
    li      a0, 1
    li      s7, 0
    add     a1,a1,s11
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      s1,348(sp)
    sd      s2,336(sp)
    sd      s3,472(sp)
    sb      s4,347(sp)
    sw      s5,444(sp)
    sd      s6,328(sp)
    sd      s8,464(sp)
    sd      s9,456(sp)
    sd      s10,448(sp)
    sw      s11,316(sp)
    call    putint
    li      a0, 0
    li      s1, 5
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
    sw      s2,380(sp)
    sw      s3,316(sp)
    sd      a0,152(sp)
    call    putint
    li      a0, 0
    li      s1, 5
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
    sw      s2,380(sp)
    sw      s3,316(sp)
    sd      a0,136(sp)
    call    putint
    j       .branch_false_51
.branch_false_51:
.L3_0:
    li      a0, 10
    call    putch
    la      a0, b
    lw      s1,0(a0)
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
    sd      s2,104(sp)
    sw      s5,124(sp)
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
    sd      s2,72(sp)
    sw      s5,96(sp)
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
    sd      s2,40(sp)
    sw      s5,64(sp)
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
    sd      s2,8(sp)
    sw      s5,32(sp)
    call    putint
    li      a0, 10
    call    putch
    ld      ra,520(sp)
    ld      s0,512(sp)
    li      a0, 0
    addi    sp,sp,528
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
