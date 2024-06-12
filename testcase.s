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
                    ;mem layout:|ra_main:8|s0_main:8|a:4|temp_0:4|temp_1:4|b:4|temp_2:1|none:7
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    ;      alloc i32 a_17 
                    ;      alloc f32 temp_0_17 
                    ;      alloc f32 temp_1_17 
                    ;      alloc f32 b_17 
                    ;      alloc i1 temp_2_20 
                    ;      label L0_0: 
L0_0:
                    ;      a_17 = i32 3_0 
    li      s1, 3
    sw      s1,20(sp)
                    ;      new_var temp_0_17:f32 
                    ;      temp_0_17 = sitofp i32 a_17 to f32 
    lw      s1,20(sp)
    fcvt.s.w f1,s1,rdn
    fsw     f1,16(sp)
                    ;      new_var temp_1_17:f32 
                    ;      temp_1_17 = Mul f32 temp_0_17, 2.3_0 
    flw     f1,sp(16)
    li      s7, 1075000115
    fmv.s   f2, s7
    fmul.s  f3,f1,f2
    fsw     f3,12(sp)
                    ;      b_17 = f32 temp_1_17 
    flw     f1,sp(12)
    fsw     f1,8(sp)
                    ;      jump label: L1_0 
    j       L1_0
                    ;      label L1_0: 
L1_0:
                    ;      new_var temp_2_20:i1 
                    ;      temp_2_20 = icmp i1 Sgt a_17, 2_0 
    lw      s1,20(sp)
    li      s2, 2
    slt     s3,s2,s1
    sb      s3,7(sp)
                    ;      br i1 temp_2_20, label branch_true_21, label branch_false_21 
    lb      s1,7(sp)
    bnez    s1, branch_true_21
    j       branch_false_21
                    ;      label branch_true_21: 
branch_true_21:
                    ;       Call void putfloat_0(b_17) 
    flw     fa0,sp(8)
    call    putfloat
                    ;      jump label: branch_false_21 
    j       branch_false_21
                    ;      label branch_false_21: 
branch_false_21:
                    ;      label L2_0: 
L2_0:
                    ;      ret a_17 
    ld      ra,32(sp)
    ld      s0,24(sp)
    lw      a0,20(sp)
    addi    sp,sp,-40
    ret

