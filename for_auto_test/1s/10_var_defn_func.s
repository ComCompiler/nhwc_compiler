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
    .globl defn
    .type defn,@function
defn:
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
.L1_0:
    ld      ra,8(sp)
    ld      s0,0(sp)
    li      a0, 4
    addi    sp,sp,16
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    call    defn
    sw      a0,4(sp)
    mv      a1, a0
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a1,0(sp)
    sw      a0,4(sp)
    lw      a0,0(sp)
    addi    sp,sp,24
    ret
