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
    .global main_0
    .type main @function
main_0:
                    ;mem layout:|ra_main:8|s0_main:8|a:4|temp_0:4|temp_1:4|b:4|temp_2:1|none:7
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
                    ;      alloc i32 a_17 
                    ;      alloc f32 temp_0_17 
                    ;      alloc f32 temp_1_17 
                    ;      alloc f32 b_17 
                    ;      alloc i1 temp_2_20 
                    ;      a_17 = 3_0 
    li      s3, 3
    sw      s3,20(sp)
                    ;      new_var temp_0_17:f32 
                    ;      temp_0_17 = sitofp i32 a_17 to f32 
                    ;      new_var temp_1_17:f32 
                    ;      temp_1_17 = Mul f32 temp_0_17, 2.3_0 
    lw      s1,16(sp)
    li      s2, 2.3
    mul     s3,s1,s2
    sw      s3,12(sp)
                    ;      b_17 = temp_1_17 
    lw      s3,12(sp)
    sw      s3,8(sp)
                    ;      new_var temp_2_20:i1 
                    ;      temp_2_20 = icmp i1 Sgt a_17, 2_0 
    lw      s1,20(sp)
    li      s2, 2
    slt     s3,s2,s1
    sb      s3,7(sp)
                    ;      br i1 temp_2_20, label branch_true_21, label branch_false_21 
    lb      s1,7(sp)
    bnez    s1, branch_false_21
    j       branch_false_21
                    ;      label branch_true_21: 
branch_true_21:
                    ;       Call void putfloat_0(b_17) 
    lw      a0,8(sp)
    call    putfloat_0
                    ;      label branch_false_21: 
branch_false_21:
                    ;      ret a_17 
    ld      ra,32(sp)
    ld      s0,24(sp)
    lw      a0,20(sp)
    addi    sp,sp,-40
    ret

