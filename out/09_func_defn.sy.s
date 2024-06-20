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
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L1_0:
    li      a1, 1
    sub     a2,a0,a1
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L0_0:
    la      a0, a
    li      a1, 10
    sd      a1,0(a0)
    la      a2, a
    lw      a3,0(a2)
    call    func
    sw      a0,4(sp)
    mv      a4, a0
    ld      ra,24(sp)
    ld      s0,16(sp)
    mv      a0, a4
    addi    sp,sp,32
    ret
.section        .data
    .align 4
    .globl a
    .type a,@object
a:
    .word 0
