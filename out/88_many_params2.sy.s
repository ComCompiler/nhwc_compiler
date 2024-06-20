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
    .globl func
    .type func,@function
func:
    addi    sp,sp,-232
    sd      ra,216(sp)
    sd      s0,200(sp)
    addi    s0,sp,232
.L1_0:
    li      s1, 0
    mv      s2, s1
    j       .while.head_21
.while.head_21:
    li      s3, 10
    slt     s4,s2,s3
    bnez    s4, .while.body_21
    j       .while.exit_21
.while.body_21:
    li      s5, 0
    li      s6, 1
    add     s5,s5,a1
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
    sw      s2,104(sp)
    sb      s4,103(sp)
    sd      s5,95(sp)
    sw      a0,192(sp)
    mv      a0, a0
    call    putint
    mv      a0, a0
    li      s1, 1
    add     s2,a0,s1
    j       .while.head_21
.while.exit_21:
    sw      s2,80(sp)
    sw      a0,104(sp)
    li      a0, 10
    call    putch
    li      a0, 0
    li      s1, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,64(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    j       .while.head_29
.while.head_29:
    mv      a0, a0
    li      s1, 10
    slt     s2,a0,s1
    bnez    s2, .while.body_29
    j       .while.exit_29
.while.body_29:
    li      s3, 0
    li      s4, 1
    add     s3,s3,a6
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
    li      s5, 128875
    mul     s6,a7,s5
    li      s7, 3724
    mv      s8, s8
    rem     s8,s6,s7
    sd      s8,0(s3)
    add     s9,a0,s4
    li      s10, 7
    add     s11,a7,s10
    j       .while.head_29
.while.exit_29:
    add     s1,a4,a5
    ld      ra,216(sp)
    ld      s0,200(sp)
    mv      a0, s1
    addi    sp,sp,232
    ret
    .globl main
    .type main,@function
main:
    li      s4, -29776
    li      s4, -29776
    add     sp,s4,sp
    sd      ra,29768(sp)
    sd      s0,29752(sp)
    li      s4, 29776
    li      s4, 29776
    add     s0,s4,sp
.L0_0:
    li      s4, 0
    li      s5, 67
    li      s7, 17
    mul     s10,s5,s7
    add     s4,s4,s10
    li      s5, 1
    li      s7, 1
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s5, 6
    sd      s5,0(s4)
    li      s5, 0
    li      s7, 67
    sw      a0,228(sp)
    li      a0, 17
    add     s5,s5,s10
    li      a0, 1
    li      s7, 3
    add     s5,s5,s10
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    li      a0, 7
    sd      a0,0(s5)
    li      a0, 0
    li      s7, 67
    sd      a1,176(sp)
    li      a1, 17
    add     a0,a0,s10
    li      a1, 1
    li      s7, 4
    add     a0,a0,s10
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s7,0(a0)
    li      a1, 0
    li      s7, 67
    sd      a0,840(sp)
    li      a0, 17
    add     a1,a1,s10
    li      a0, 1
    li      s7, 7
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 9
    sd      a0,0(a1)
    li      a0, 0
    li      s7, 67
    sd      a1,824(sp)
    li      a1, 17
    add     a0,a0,s10
    li      a1, 1
    li      s7, 11
    add     a0,a0,s10
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s7,0(a0)
    li      a1, 0
    li      s7, 59
    sd      a0,808(sp)
    li      a0, 6
    sw      a2,168(sp)
    mul     a2,s7,a0
    add     a1,a1,a2
    li      a0, 1
    li      s7, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a0,0(a1)
    li      a0, 0
    li      s7, 59
    sd      a1,792(sp)
    li      a1, 6
    add     a0,a0,a2
    li      a1, 1
    li      s7, 2
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s7,0(a0)
    li      a1, 0
    li      s7, 59
    sd      a0,776(sp)
    li      a0, 6
    add     a1,a1,a2
    li      a0, 1
    li      s7, 3
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s7,0(a1)
    li      a0, 0
    li      s7, 59
    sd      a1,760(sp)
    li      a1, 6
    add     a0,a0,a2
    li      a1, 1
    li      s7, 9
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s7,0(a0)
    li      a1, 0
    li      s7, 67
    sd      a0,744(sp)
    li      a0, 17
    add     a1,a1,s10
    li      a0, 1
    li      s7, 1
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    li      s7, 67
    sd      a1,720(sp)
    li      a1, 17
    add     a0,a0,s10
    li      a1, 1
    li      s7, 3
    add     a0,a0,s10
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    li      s7, 67
    sd      a0,696(sp)
    li      a0, 17
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    li      s7, 59
    sd      a1,672(sp)
    li      a1, 6
    add     a0,a0,a2
    li      a1, 1
    li      s7, 3
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    li      s7, 59
    sd      a0,384(sp)
    li      a0, 6
    add     a1,a1,a2
    li      a0, 1
    li      s7, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    li      s7, 59
    sd      a1,360(sp)
    li      a1, 6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a0,336(sp)
    li      a0, 34
    add     a1,a1,a2
    li      a0, 1
    li      s7, 4
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    li      s7, 59
    sd      a1,80(sp)
    li      a1, 51
    add     a0,a0,a2
    li      a1, 1
    li      s7, 18
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sw      s1,4(sp)
    sb      s2,55(sp)
    sd      s3,40(sp)
    sd      s4,872(sp)
    sd      s5,856(sp)
    sw      s6,36(sp)
    sw      s8,28(sp)
    sw      s9,20(sp)
    sw      s10,29744(sp)
    sw      s11,12(sp)
    sd      a0,56(sp)
    mv      a0, a0
    sw      a2,13392(sp)
    mv      a1, a1
    mv      a2, a2
    sd      a3,152(sp)
    mv      a3, a3
    sw      a4,144(sp)
    mv      a4, a4
    sw      a5,136(sp)
    mv      a5, a5
    sd      a6,120(sp)
    mv      a6, a6
    sw      a7,112(sp)
    mv      a7, a7
    call    func
    sw      a0,40(sp)
    li      a1, 3
    mul     a2,a0,a1
    mv      a3, a2
    j       .while.head_51
.while.head_51:
    li      a4, 0
    slt     a5,a4,a3
    xori    a5,a5,1
    bnez    a5, .while.body_51
    j       .while.exit_51
.while.body_51:
    li      a6, 0
    li      a7, 59
    li      s1, 6
    mul     s2,a7,s1
    add     a6,a6,s2
    li      s3, 1
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    sw      s2,13392(sp)
    sw      a0,40(sp)
    mv      a0, a0
    call    putint
    li      a0, 32
    call    putch
    li      a0, 1
    sub     s1,a3,a0
    j       .while.head_51
.while.exit_51:
    sw      s1,8(sp)
    li      a0, 10
    call    putch
    li      a0, 29768
    add     a0,sp,a0
    ld      ra,0(a0)
    li      s1, 29752
    add     s1,sp,s1
    ld      s0,0(s1)
    li      a0, 0
    li      s2, 29776
    li      s2, 29776
    add     sp,s2,sp
    ret
