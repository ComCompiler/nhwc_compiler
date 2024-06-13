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
.section
    .data
    .align 4
    .global b_0
                    ;      global i32 b_0 
    .type b_0 @object
b_0:
    .word 5
    .align 4
    .global a_0
                    ;      global i32 a_0 
    .type a_0 @object
a_0:
    .word 10
.section
    .text
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
                    ;      label L0_0: 
L0_0:
                    ;      ret 5_0 
    ld      ra,8(sp)
    ld      s0,0(sp)
    li      a0, 5
    addi    sp,sp,-16
    ret

