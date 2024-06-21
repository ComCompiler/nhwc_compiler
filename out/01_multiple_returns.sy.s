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
                    #mem layout:|ra_main:8|s0_main:8|a:4|b:4|c:4|temp_0:4|d:4|temp_1:4|A:4|temp_2:4|temp_3:4|none:4
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i32 c_17 
                    #      alloc i32 temp_0_17 
                    #      alloc i32 d_17 
                    #      alloc i32 temp_1_17 
                    #      alloc i32 A_17 
                    #      alloc i32 temp_2_17 
                    #      alloc i32 temp_3_17 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_17:i32 
                    #      b_17 = i32 8_0 
    li      a0, 8
                    #      c_17 = i32 12_0 
    li      a1, 12
                    #      new_var temp_0_17:i32 
                    #      temp_0_17 = Add i32 b_17, c_17 
    add     a2,a0,a1
                    #      a_17 = i32 temp_0_17 
    mv      a3, a2
                    #      ret a_17 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a3,36(sp)
    sw      a0,32(sp)
    addi    sp,sp,56
    ret
                    #      label L1_0: 
.L1_0:
                    #      d_17 = i32 9_0 
    li      a3, 9
                    #      new_var temp_1_17:i32 
                    #      temp_1_17 = Mul i32 a_17, d_17 
    mul     a4,a0,a3
                    #      a_17 = i32 temp_1_17 
    mv      a0, a4
                    #      ret a_17 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    addi    sp,sp,56
    ret
                    #      label L2_0: 
.L2_0:
                    #      A_17 = i32 4_0 
    li      a5, 4
                    #      new_var temp_2_17:i32 
                    #      temp_2_17 = Sub i32 4_0, b_17 
    li      a6, 4
    sub     s1,a6,a7
                    #      new_var temp_3_17:i32 
                    #      temp_3_17 = Mul i32 temp_2_17, c_17 
    mul     s2,s1,a1
                    #      a_17 = i32 temp_3_17 
    mv      a0, s2
                    #      ret a_17 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    addi    sp,sp,56
    ret
                    #      label L3_0: 
.L3_0:
                    #      ret a_17 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    addi    sp,sp,56
    ret
