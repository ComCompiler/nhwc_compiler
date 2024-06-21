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
                    #      Define f_0 [] -> f_ret_0 
    .globl f
    .type f,@function
f:
                    #mem layout:|ra_f:8|s0_f:8
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
                    #      label L1_0: 
.L1_0:
                    #      ret 10_0 
    ld      ra,8(sp)
    ld      s0,0(sp)
    li      a0, 10
    addi    sp,sp,16
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|f:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 f_20 
                    #      label L0_0: 
.L0_0:
                    #      f_20 = i32 20_0 
    li      a0, 20
                    #      ret f_20 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
