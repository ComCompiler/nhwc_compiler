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
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 8|s0_main:8 at 0
    addi    sp,sp,-16
              #                    store to ra_main_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          ret 5_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 5_0
    li      a0, 5
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl b
              #                          global i32 b_0 
    .type b,@object
b:
    .word 5
    .align 4
    .globl a
              #                          global i32 a_0 
    .type a,@object
a:
    .word 10
