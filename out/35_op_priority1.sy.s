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
                    #mem layout:|ra_main:8|s0_main:8|a:4|b:4|c:4|d:4|temp_0:4|temp_1:4|temp_2:4|none:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i32 c_17 
                    #      alloc i32 d_17 
                    #      alloc i32 temp_0_17 
                    #      alloc i32 temp_1_17 
                    #      alloc i32 temp_2_17 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_17:i32 
                    #      new_var b_17:i32 
                    #      new_var c_17:i32 
                    #      new_var d_17:i32 
                    #      a_17 = i32 10_0 
    li      a0, 10
                    #      b_17 = i32 4_0 
    li      a1, 4
                    #      c_17 = i32 2_0 
    li      a2, 2
                    #      d_17 = i32 2_0 
    li      a3, 2
                    #      new_var temp_0_17:i32 
                    #      temp_0_17 = Mul i32 a_17, b_17 
    mul     a4,a0,a1
                    #      new_var temp_1_17:i32 
                    #      temp_1_17 = Sub i32 temp_0_17, d_17 
    sub     a5,a4,a3
                    #      new_var temp_2_17:i32 
                    #      temp_2_17 = Add i32 c_17, temp_1_17 
    add     a6,a2,a5
                    #      ret temp_2_17 
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a6,4(sp)
    sw      a0,28(sp)
    addi    sp,sp,48
    ret
