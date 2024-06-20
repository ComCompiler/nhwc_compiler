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
                    #mem layout:|ra_main:8|s0_main:8|a:4|b:4|temp_0:4|temp_1:4|temp_2:4|none:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i32 temp_0_17 
                    #      alloc i32 temp_1_17 
                    #      alloc i32 temp_2_17 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_17:i32 
                    #      new_var b_17:i32 
                    #      a_17 = i32 10_0 
    li      a0, 10
                    #      b_17 = i32 30_0 
    li      a1, 30
                    #      new_var temp_0_17:i32 
                    #      temp_0_17 = Add i32 b_17, -5_0 
    li      a2, -5
    add     a3,a1,a2
                    #      new_var temp_1_17:i32 
                    #      temp_1_17 = Add i32 temp_0_17, -5_0 
                    #found literal reg Some(a2) already exist with -5_0
    add     a4,a3,a2
                    #      new_var temp_2_17:i32 
                    #      temp_2_17 = Sub i32 a_17, temp_1_17 
    sub     a5,a0,a4
                    #      ret temp_2_17 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a5,4(sp)
    sw      a0,20(sp)
    addi    sp,sp,40
    ret
