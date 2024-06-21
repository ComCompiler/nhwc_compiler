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
                    #mem layout:|ra_main:8|s0_main:8|a:4|b:4|c:4|d:4|e:4|f:4|temp_0:1|temp_1:1|temp_2:1|temp_3:1|temp_4:1|temp_5:1|temp_6:1|temp_7:1|temp_8:1|temp_9:1|temp_10:1|temp_11:1|temp_12:1|temp_13:1|none:2
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i32 c_17 
                    #      alloc i32 d_17 
                    #      alloc i32 e_17 
                    #      alloc i32 f_17 
                    #      alloc i1 temp_0_24 
                    #      alloc i1 temp_1_27 
                    #      alloc i1 temp_2_27 
                    #      alloc i1 temp_3_27 
                    #      alloc i1 temp_4_30 
                    #      alloc i1 temp_5_34 
                    #      alloc i1 temp_6_34 
                    #      alloc i1 temp_7_34 
                    #      alloc i1 temp_8_38 
                    #      alloc i1 temp_9_41 
                    #      alloc i1 temp_10_45 
                    #      alloc i1 temp_11_48 
                    #      alloc i1 temp_12_51 
                    #      alloc i1 temp_13_51 
                    #      label L0_0: 
.L0_0:
                    #      a_17 = i32 1_0 
    li      a0, 1
                    #      b_17 = i32 2_0 
    li      a1, 2
                    #      c_17 = i32 3_0 
    li      a2, 3
                    #      d_17 = i32 4_0 
    li      a3, 4
                    #      e_17 = i32 5_0 
    li      a4, 5
                    #      f_17 = i32 6_0 
    li      a5, 6
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_24:i1 
                    #      temp_0_24 = And i1 true_0, true_0 
    li      a6, 1
    li      a7, 1
    and     s1,a6,a7
                    #      br i1 temp_0_24, label branch_true_25, label branch_false_25 
    bnez    s1, .branch_true_25
    j       .branch_false_25
                    #      label branch_true_25: 
.branch_true_25:
                    #      new_var temp_1_27:i1 
                    #      temp_1_27 = icmp i32 Ne 5_0, 0_0 
    li      a6, 5
    li      a7, 0
    xor     s2,a6,a7
    snez    s2, s2
                    #      new_var temp_2_27:i1 
                    #      temp_1_27 = icmp i32 Ne -2_0, 0_0 
    li      s3, -2
                    #found literal reg Some(a7) already exist with 0_0
                    #      new_var temp_3_27:i1 
                    #      temp_3_27 = Or i1 temp_1_27, temp_2_27 
                    #      br i1 temp_3_27, label branch_true_28, label branch_false_28 
    bnez    s5, .branch_true_28
    j       .branch_false_28
                    #      label branch_true_28: 
.branch_true_28:
                    #      new_var temp_4_30:i1 
                    #      temp_4_30 = And i1 true_0, true_0 
    li      a6, 1
    li      a7, 1
    and     s3,a6,a7
                    #      br i1 temp_4_30, label branch_true_31, label branch_false_31 
    bnez    s3, .branch_true_31
    j       .branch_false_31
                    #      label branch_true_31: 
.branch_true_31:
                    #      ret 3_0 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 3
    addi    sp,sp,56
    ret
                    #      label branch_false_31: 
.branch_false_31:
                    #      new_var temp_5_34:i1 
                    #      temp_5_34 = icmp i32 Ne 5_0, 0_0 
    li      a6, 5
    li      a7, 0
    xor     s6,a6,a7
    snez    s6, s6
                    #      new_var temp_6_34:i1 
                    #      temp_5_34 = icmp i32 Ne 0_0, 0_0 
                    #found literal reg Some(a7) already exist with 0_0
    li      s7, 0
                    #      new_var temp_7_34:i1 
                    #      temp_7_34 = And i1 temp_5_34, temp_6_34 
    and     s9,s6,s8
                    #      br i1 temp_7_34, label branch_true_35, label branch_false_35 
    bnez    s9, .branch_true_35
    j       .branch_false_35
                    #      label branch_true_35: 
.branch_true_35:
                    #      ret 4_0 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 4
    addi    sp,sp,56
    ret
                    #      label branch_false_35: 
.branch_false_35:
                    #      new_var temp_8_38:i1 
                    #      temp_8_38 = icmp i32 Sge 2_0, 3_0 
    li      a6, 2
    li      a7, 3
    slt     s7,a6,a7
    xori    s7,s7,1
                    #      br i1 temp_8_38, label branch_true_39, label branch_false_39 
    bnez    s7, .branch_true_39
    j       .branch_false_39
                    #      label branch_true_39: 
.branch_true_39:
                    #      new_var temp_9_41:i1 
                    #      temp_9_41 = Or i1 false_0, false_0 
    li      a6, 0
    li      a7, 0
    or      s10,a6,a7
                    #      br i1 temp_9_41, label branch_true_42, label branch_false_42 
    bnez    s11, .branch_true_42
    j       .branch_false_42
                    #      label branch_true_42: 
.branch_true_42:
                    #      ret 6_0 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 6
    addi    sp,sp,56
    ret
                    #      label branch_false_42: 
.branch_false_42:
                    #      new_var temp_10_45:i1 
                    #      temp_10_45 = icmp i32 Ne 3_0, 6_0 
    li      a6, 3
    li      a7, 6
    xor     s10,a6,a7
    snez    s10, s10
                    #      br i1 temp_10_45, label branch_true_46, label branch_false_46 
    bnez    s10, .branch_true_46
    j       .branch_false_46
                    #      label branch_true_46: 
.branch_true_46:
                    #      new_var temp_11_48:i1 
                    #      temp_11_48 = icmp i32 Sgt 10_0, 22_0 
    li      a6, 10
    li      a7, 22
    sw      a0,36(sp)
    slt     a0,a7,a6
                    #      br i1 temp_11_48, label branch_true_49, label branch_false_49 
    bnez    a0, .branch_true_49
    j       .branch_false_49
                    #      label branch_true_49: 
.branch_true_49:
                    #      new_var temp_12_51:i1 
                    #      temp_12_51 = icmp i1 Ne 6_0, 0_0 
    li      a6, 6
    li      a7, 0
    sb      a0,4(sp)
    xor     a0,a6,a7
    snez    a0, a0
                    #      new_var temp_13_51:i1 
                    #      temp_13_51 = xor i1 temp_12_51, true 
    seqz    a6, a0
                    #      br i1 temp_13_51, label branch_true_52, label branch_false_52 
    bnez    a6, .branch_true_52
    j       .branch_false_52
                    #      label branch_true_52: 
.branch_true_52:
                    #      ret 9_0 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sb      a0,3(sp)
    li      a0, 9
    addi    sp,sp,56
    ret
                    #      label branch_false_52: 
.branch_false_52:
                    #      ret 10_0 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sb      a0,3(sp)
    li      a0, 10
    addi    sp,sp,56
    ret
                    #      label L2_0: 
.L2_0:
                    #      label branch_false_49: 
.branch_false_49:
                    #      ret 8_0 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sb      a0,4(sp)
    li      a0, 8
    addi    sp,sp,56
    ret
                    #      label L3_0: 
.L3_0:
                    #      label branch_false_46: 
.branch_false_46:
                    #      ret 7_0 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 7
    addi    sp,sp,56
    ret
                    #      label L4_0: 
.L4_0:
                    #      label L5_0: 
.L5_0:
                    #      label branch_false_39: 
.branch_false_39:
                    #      ret 5_0 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 5
    addi    sp,sp,56
    ret
                    #      label L6_0: 
.L6_0:
                    #      label L7_0: 
.L7_0:
                    #      label L8_0: 
.L8_0:
                    #      label branch_false_28: 
.branch_false_28:
                    #      ret 2_0 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 2
    addi    sp,sp,56
    ret
                    #      label L9_0: 
.L9_0:
                    #      label branch_false_25: 
.branch_false_25:
                    #      ret 1_0 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a0,36(sp)
    li      a0, 1
    addi    sp,sp,56
    ret
                    #      label L10_0: 
.L10_0:
