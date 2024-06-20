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
    addi    sp,sp,-536
    sd      ra,528(sp)
    sd      s0,512(sp)
    addi    s0,sp,536
.L0_0:
    call    getint
    sw      a0,256(sp)
    mv      a1, a0
    j       .while.head_52
.while.head_52:
    li      a2, 5
    xor     a3,a1,a2
    sltiu   a3,a3,1
    bnez    a3, .while.body_52
    j       .while.exit_52
.while.body_52:
    li      a4, 1
    add     a5,a1,a4
    j       .while.head_52
.while.exit_52:
    li      a6, 0
    mv      a7, a6
    add     s1,a7,a4
    mv      s2, s1
    add     s3,s2,a4
    mv      s4, s3
    add     s5,s4,a4
    mv      s6, s5
    add     s7,s6,a4
    mv      s8, s7
    add     s9,s8,a4
    mv      s10, s9
    add     s11,s10,a4
    mv      a2, s11
    add     a6,a2,a4
    mv      a4, a6
    sw      a0,256(sp)
    li      a0, 1
    sw      a1,264(sp)
    add     a1,a4,a0
    mv      a0, a1
    sw      a1,188(sp)
    li      a1, 1
    sw      a2,456(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,440(sp)
    li      a0, 1
    sw      a2,180(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,432(sp)
    li      a1, 1
    sw      a2,172(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,424(sp)
    li      a0, 1
    sw      a2,164(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,416(sp)
    li      a1, 1
    sw      a2,156(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,408(sp)
    li      a0, 1
    sw      a2,148(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,400(sp)
    li      a1, 1
    sw      a2,140(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,392(sp)
    li      a0, 1
    sw      a2,132(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,384(sp)
    li      a1, 1
    sw      a2,124(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,376(sp)
    li      a0, 1
    sw      a2,116(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,368(sp)
    li      a1, 1
    sw      a2,108(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,360(sp)
    li      a0, 1
    sw      a2,100(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,352(sp)
    li      a1, 1
    sw      a2,92(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,344(sp)
    li      a0, 1
    sw      a2,84(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,336(sp)
    li      a1, 1
    sw      a2,76(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,328(sp)
    li      a0, 1
    sw      a2,68(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,320(sp)
    li      a1, 1
    sw      a2,60(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,312(sp)
    li      a0, 1
    sw      a2,52(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,304(sp)
    li      a1, 1
    sw      a2,44(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,296(sp)
    li      a0, 1
    sw      a2,36(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,288(sp)
    li      a1, 1
    sw      a2,28(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      s1,244(sp)
    sw      s2,496(sp)
    sw      s3,236(sp)
    sw      s4,488(sp)
    sw      s5,228(sp)
    sw      s6,480(sp)
    sw      s7,220(sp)
    sw      s8,472(sp)
    sw      s9,212(sp)
    sw      s10,464(sp)
    sw      s11,204(sp)
    sw      a7,504(sp)
    sw      a0,280(sp)
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    sw      a4,448(sp)
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putint
    sw      a1,272(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    mv      a1, a0
    sw      a1,4(sp)
    mv      a0, a0
    call    putch
    mv      a0, a0
    call    putint
    mv      a0, a0
    call    putch
    ld      ra,528(sp)
    ld      s0,512(sp)
    lw      a0,304(sp)
    addi    sp,sp,536
    ret
.section        .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
