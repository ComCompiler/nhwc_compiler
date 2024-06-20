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
    .globl defn
    .type defn,@function
defn:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,8(sp)
    addi    s0,sp,32
.L1_0:
    ld      ra,24(sp)
    ld      s0,8(sp)
    li      a0, 4
    addi    sp,sp,32
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L0_0:
    call    defn
    sw      a0,16(sp)
    mv      a1, a0
    ld      ra,40(sp)
    ld      s0,24(sp)
    mv      a0, a1
    addi    sp,sp,48
    ret
