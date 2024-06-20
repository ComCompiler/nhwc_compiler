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
                    #mem layout:|ra_main:8|s0_main:8|a:4|temp_0:4|temp_1:4|none:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    #      alloc i32 a_17 
                    #      alloc i32 temp_0_17 
                    #      alloc i32 temp_1_17 
                    #      label L0_0: 
.L0_0:
                    #      a_17 = i32 10_0 
    li      a0, 10
                    #      new_var temp_0_17:i32 
                    #      temp_0_17 = Mul i32 a_17, 2_0 
    li      a1, 2
    mul     a2,a0,a1
                    #      new_var temp_1_17:i32 
                    #      temp_1_17 = Add i32 temp_0_17, 1_0 
    li      a3, 1
    add     a4,a2,a3
                    #      ret temp_1_17 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a4,4(sp)
    sw      a0,12(sp)
    addi    sp,sp,32
    ret
