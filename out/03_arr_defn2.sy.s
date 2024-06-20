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
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
                    #      label L0_0: 
.L0_0:
                    #      ret 0_0 
    ld      ra,8(sp)
    ld      s0,0(sp)
    li      a0, 0
    addi    sp,sp,16
    ret
.section        .data
    .align 4
    .globl a
                    #      global Array:i32:[Some(10_0), Some(10_0)] a_0 
    .type a,@object
a:
    .zero 400
