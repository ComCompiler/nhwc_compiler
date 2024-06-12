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
.section
    .text
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|temp_0:4|a:4|temp_1:4|temp_2:4|temp_3:4|b:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    ;      alloc i32 temp_0_17 
                    ;      alloc i32 a_17 
                    ;      alloc i32 temp_1_17 
                    ;      alloc i32 temp_2_17 
                    ;      alloc f32 temp_3_17 
                    ;      alloc f32 b_17 
                    ;      label L0_0: 
L0_0:
                    ;      new_var temp_0_17:i32 
                    ;      temp_0_17 = Sub i32 0_0, 4_0 
    li      s1, 0
    li      s2, 4
    sub     s3,s1,s2
    sw      s3,20(sp)
                    ;      a_17 = i32 temp_0_17 
    lw      s1,20(sp)
    sw      s1,16(sp)
                    ;      new_var temp_1_17:i32 
                    ;      temp_1_17 = Sub i32 0_0, 5_0 
    li      s1, 0
    li      s2, 5
    sub     s3,s1,s2
    sw      s3,12(sp)
                    ;      new_var temp_2_17:i32 
                    ;      temp_2_17 = Mul i32 3_0, temp_1_17 
    li      s1, 3
    lw      s2,12(sp)
    mul     s3,s1,s2
    sw      s3,8(sp)
                    ;      new_var temp_3_17:f32 
                    ;      temp_3_17 = sitofp i32 temp_2_17 to f32 
    lw      s1,8(sp)
    fcvt.s.w f1,s1,rdn
    fsw     f1,4(sp)
                    ;      b_17 = f32 temp_3_17 
    flw     f1,sp(4)
    fsw     f1,0(sp)

