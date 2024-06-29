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
    addi    sp,sp,-464
    sd      ra,456(sp)
    sd      s0,448(sp)
    addi    s0,sp,464
.L0_0:
    li      a0, 1
    li      a1, 2
    li      a1, 3
    sw      a0,444(sp)
    sw      a1,440(sp)
    lw      a0,440(sp)
    call    putint
    lw      a0,440(sp)
    call    putint
    lw      a0,444(sp)
    call    putint
    li      a0, 10
    call    putch
    j       .while.head_32
.while.head_32:
    lw      a0,444(sp)
    li      a1, 5
    slt     a2,a0,a1
    bnez    a2, .while.body_32
    j       .while.exit_32
.while.body_32:
    li      a1, 0
    li      a3, 1
    add     a4,a1,a3
    mv      a1, a4
    j       .L1_0
.L1_0:
    li      a3, 0
    xor     a5,a1,a3
    snez    a5, a5
    bnez    a5, .branch_true_37
    j       .branch_false_37
.branch_true_37:
    sw      a4,428(sp)
    sb      a5,427(sp)
    sw      a1,432(sp)
    j       .while.exit_32
.while.exit_32:
    sw      a0,444(sp)
    sb      a2,439(sp)
    lw      a0,444(sp)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 0
    li      a1, 1
    li      a2, 2
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, c
    add     a0,a0,a4
    sw      a1,0(a0)
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,312
    sd      a0,416(sp)
    sd      a5,408(sp)
    ld      a0,408(sp)
    li      a1, 0
    li      a2, 64
    call    memset
    li      a0, 0
    li      a1, 8
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    li      a5, 2
    mul     a6,a4,a5
    add     a0,a0,a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,312
    sw      a1,0(a0)
    li      a7, 0
    mul     s1,a1,a2
    add     a7,a7,s1
    li      s2, 1
    mul     s3,a4,s2
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,312
    li      s4, 9
    sw      s4,0(a7)
    li      s5, 0
    mul     s6,a1,a2
    add     s5,s5,s6
    mul     s7,a4,a2
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,312
    sw      a2,0(s5)
    li      s8, 0
    mul     s9,a1,a2
    add     s8,s8,s9
    li      s10, 3
    mul     s11,a4,s10
    add     s8,s8,s11
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,312
    sw      s10,0(s8)
    li      a1, 2
    j       .L2_0
.L2_0:
    li      a2, 0
    li      a3, 1
    li      a4, 2
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    la      a6, c
    add     a2,a2,a6
    lw      s1,0(a2)
    li      s2, 0
    xor     s3,s1,s2
    snez    s3, s3
    bnez    s3, .branch_true_51
    j       .branch_false_51
.branch_true_51:
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,116
    sw      s1,292(sp)
    sb      s3,291(sp)
    sd      s5,384(sp)
    sd      s8,376(sp)
    sd      a0,400(sp)
    sw      a1,308(sp)
    sd      a2,296(sp)
    sd      a3,280(sp)
    sd      a7,392(sp)
    ld      a0,280(sp)
    li      a1, 0
    li      a2, 140
    call    memset
    li      a0, 0
    li      a1, 5
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a4,a1,a2
    add     a0,a0,a4
    li      a5, 1
    mul     a6,a5,a2
    add     a0,a0,a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,116
    li      a7, 2
    sw      a7,0(a0)
    li      s1, 0
    mul     s2,a1,a2
    add     s1,s1,s2
    mul     s3,a1,a2
    add     s1,s1,s3
    li      s4, 1
    mul     s5,a5,s4
    add     s1,s1,s5
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,116
    sw      s4,0(s1)
    li      s6, 0
    mul     s7,a1,a2
    add     s6,s6,s7
    mul     s8,a1,a2
    add     s6,s6,s8
    mul     s9,s4,a7
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,116
    li      s10, 8
    sw      s10,0(s6)
    li      s11, 0
    lw      a2,308(sp)
    mul     a3,a1,a2
    add     s11,s11,a3
    li      a3, 0
    mul     a4,a1,a3
    add     s11,s11,a4
    mul     a1,s4,a3
    add     s11,s11,a1
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,116
    lw      a1,0(s11)
    sd      s1,264(sp)
    sd      s6,256(sp)
    sd      s11,104(sp)
    sd      a0,272(sp)
    sw      a1,100(sp)
    sw      a2,308(sp)
    lw      a0,100(sp)
    call    putint
    li      a0, 0
    li      a1, 5
    lw      a2,308(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 0
    mul     a5,a1,a4
    add     a0,a0,a5
    li      a6, 1
    li      a7, 1
    mul     s1,a6,a7
    add     a0,a0,s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,116
    lw      s2,0(a0)
    sw      s2,84(sp)
    sd      a0,88(sp)
    sw      a2,308(sp)
    lw      a0,84(sp)
    call    putint
    li      a0, 0
    li      a1, 5
    lw      a2,308(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 0
    mul     a5,a1,a4
    add     a0,a0,a5
    li      a6, 1
    li      a7, 2
    mul     s1,a6,a7
    add     a0,a0,s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,116
    lw      s2,0(a0)
    sw      s2,68(sp)
    sd      a0,72(sp)
    sw      a2,308(sp)
    lw      a0,68(sp)
    call    putint
    lw      s1,292(sp)
    ld      a2,296(sp)
    ld      a7,392(sp)
    ld      a0,400(sp)
    lw      a1,308(sp)
    lb      s3,291(sp)
    ld      s5,384(sp)
    ld      s8,376(sp)
    j       .branch_false_51
.branch_false_51:
.L3_0:
    sw      s1,292(sp)
    sb      s3,291(sp)
    sd      s5,384(sp)
    sd      s8,376(sp)
    sd      a0,400(sp)
    sw      a1,308(sp)
    sd      a2,296(sp)
    sd      a7,392(sp)
    li      a0, 10
    call    putch
    la      a0, b
    lw      a1,0(a0)
    sw      a1,64(sp)
    lw      a0,64(sp)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 0
    li      a1, 1
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, c
    add     a0,a0,a4
    lw      a5,0(a0)
    sd      a0,56(sp)
    sw      a5,52(sp)
    lw      a0,52(sp)
    call    putint
    li      a0, 0
    li      a1, 1
    li      a2, 1
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, c
    add     a0,a0,a4
    lw      a5,0(a0)
    sd      a0,40(sp)
    sw      a5,36(sp)
    lw      a0,36(sp)
    call    putint
    li      a0, 0
    li      a1, 1
    li      a2, 2
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, c
    add     a0,a0,a4
    lw      a5,0(a0)
    sd      a0,24(sp)
    sw      a5,20(sp)
    lw      a0,20(sp)
    call    putint
    li      a0, 0
    li      a1, 1
    li      a2, 3
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    la      a4, c
    add     a0,a0,a4
    lw      a5,0(a0)
    sd      a0,8(sp)
    sw      a5,4(sp)
    lw      a0,4(sp)
    call    putint
    li      a0, 10
    call    putch
    ld      ra,456(sp)
    ld      s0,448(sp)
    li      a0, 0
    addi    sp,sp,464
    ret
.branch_false_37:
    sb      a2,439(sp)
    sw      a0,444(sp)
    sw      a4,428(sp)
    sb      a5,427(sp)
    sw      a1,432(sp)
    j       .while.head_32
.section ___var
    .data
    .align 4
    .globl c
    .type c,@object
c:
    .word 6
    .word 7
    .word 8
    .word 9
    .zero 4
    .align 4
    .globl b
    .type b,@object
b:
    .word 5
