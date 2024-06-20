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
    sub     s4,s3,s2
    div     s5,s1,a3
    add     s6,s5,s4
    mv      s7, s6
    sw      s2,56(sp)
    sw      s3,52(sp)
    sw      s4,48(sp)
    sw      s5,44(sp)
    sw      s6,40(sp)
    sw      s7,68(sp)
    sw      a0,84(sp)
    call    putint
    li      a0, 2
    add     s1,a2,a0
    rem     s2,s1,a0
    sub     s3,a6,s2
    sub     s5,s4,a1
    sub     s6,a6,s5
    sub     s7,s6,s3
    rem     s8,a3,a0
    li      s9, 67
    add     s10,s8,s9
    add     s11,s10,s7
    mv      a0, s11
    add     a6,a0,a4
    sw      s1,36(sp)
    sw      s2,32(sp)
    sw      s3,28(sp)
    sw      s4,84(sp)
    sw      s5,24(sp)
    sw      s6,20(sp)
    sw      s7,16(sp)
    sw      s8,12(sp)
    sw      s10,8(sp)
    sw      s11,4(sp)
    sw      a0,68(sp)
    call    putint
    ld      ra,96(sp)
    ld      s0,88(sp)
    li      a0, 0
    addi    sp,sp,104
    ret
