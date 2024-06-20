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
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L1_0:
    li      a1, 1
    sub     a2,a0,a1
    ld      ra,40(sp)
    ld      s0,24(sp)
    mv      a0, a0
    addi    sp,sp,48
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,32(sp)
    addi    s0,sp,56
.L0_0:
    la      a3, a
    li      a4, 10
    sd      a4,0(a3)
    la      a5, a
    lw      a6,0(a5)
    sw      a0,16(sp)
    mv      a0, a0
    call    func
    sw      a0,8(sp)
    mv      a7, a0
    ld      ra,48(sp)
    ld      s0,32(sp)
    mv      a0, a7
    addi    sp,sp,56
    ret
.section        .data
    .align 4
    .globl a
    .type a,@object
a:
    .word 0
