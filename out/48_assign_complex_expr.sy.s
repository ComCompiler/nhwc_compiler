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
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,88(sp)
    addi    s0,sp,104
.L0_0:
    li      a0, 5
    li      a1, 5
    li      a2, 1
    li      a3, -2
    li      a4, 3
    add     a5,a2,a4
    li      a6, 0
    sub     a7,a6,a5
    li      s1, 2
    rem     s2,a7,s1
    sub     s3,a0,a1
    div     s4,s1,a3
    add     s5,s4,s3
    sub     s6,s5,s2
    mv      s7, s6
    sw      s2,56(sp)
    sw      s3,52(sp)
    sw      s4,48(sp)
    sw      s5,44(sp)
    sw      s6,40(sp)
    sw      s7,68(sp)
    sw      a0,84(sp)
    sw      a1,80(sp)
    sw      a2,76(sp)
    sw      a3,72(sp)
    sw      a5,64(sp)
    sw      a7,60(sp)
    lw      a0,68(sp)
    call    putint
    lw      a0,76(sp)
    li      a1, 2
    add     a2,a0,a1
    rem     a3,a2,a1
    li      a4, 0
    sub     a5,a4,a3
    lw      a6,84(sp)
    lw      a7,80(sp)
    sub     s1,a6,a7
    sub     s2,a4,s1
    lw      s3,72(sp)
    rem     s4,s3,a1
    li      s5, 67
    add     s6,s4,s5
    add     s7,s6,s2
    sub     s8,s7,a5
    mv      s9, s8
    li      s10, 3
    add     s11,s9,s10
    mv      s9, s11
    sw      s1,24(sp)
    sw      s2,20(sp)
    sw      s3,72(sp)
    sw      s4,16(sp)
    sw      s6,12(sp)
    sw      s7,8(sp)
    sw      s8,4(sp)
    sw      s9,68(sp)
    sw      s11,0(sp)
    sw      a0,76(sp)
    sw      a2,36(sp)
    sw      a3,32(sp)
    sw      a5,28(sp)
    sw      a6,84(sp)
    sw      a7,80(sp)
    lw      a0,68(sp)
    call    putint
    ld      ra,96(sp)
    ld      s0,88(sp)
    li      a0, 0
    addi    sp,sp,104
    ret
