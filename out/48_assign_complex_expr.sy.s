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
    addi    sp,sp,-208
    sd      ra,200(sp)
    sd      s0,184(sp)
    addi    s0,sp,208
.L0_0:
    li      a0, 5
    mv      a1, a0
    mv      a2, a0
    li      a3, 1
    mv      a4, a3
    li      a5, -2
    mv      a6, a5
    li      a7, 3
    add     s1,a4,a7
    li      s2, 0
    sub     s3,s2,s1
    li      s4, 2
    mv      s5, s5
    rem     s5,s3,s4
    sub     s6,a1,a2
    sub     s7,s6,s5
    div     s8,s4,a6
    add     s9,s8,s7
    mv      s10, s9
    sw      s1,136(sp)
    sw      s3,128(sp)
    sw      s5,120(sp)
    sw      s6,112(sp)
    sw      s7,104(sp)
    sw      s8,96(sp)
    sw      s9,88(sp)
    sw      s10,144(sp)
    mv      a0, a0
    call    putint
    li      a0, 2
    add     s1,a4,a0
    mv      s2, s2
    rem     s2,s1,a0
    li      s3, 0
    sub     s4,s3,s2
    sub     s5,a1,a2
    sub     s6,s3,s5
    sub     s7,s6,s4
    mv      s8, s8
    rem     s8,a6,a0
    li      s9, 67
    add     s10,s8,s9
    add     s11,s10,s7
    mv      a0, s11
    add     a3,a0,a7
    sw      s1,80(sp)
    sw      s2,72(sp)
    sw      s4,64(sp)
    sw      s5,56(sp)
    sw      s6,48(sp)
    sw      s7,40(sp)
    sw      s8,32(sp)
    sw      s10,24(sp)
    sw      s11,16(sp)
    sw      a0,144(sp)
    mv      a0, a0
    call    putint
    ld      ra,200(sp)
    ld      s0,184(sp)
    li      a0, 0
    addi    sp,sp,208
    ret
