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
                    #mem layout:|ra_main:8|s0_main:8|sum:4|i:4|temp_0:1|none:3|j:4|temp_1:1|none:3|k:4|temp_2:1|none:3|m:4|temp_3:1|none:3|temp_4:4|temp_5:1|temp_6:1|temp_7:1|temp_8:1|temp_9:1|temp_10:1|none:2|temp_11:4|temp_12:1|none:3
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
                    #      alloc i32 sum_17 
                    #      alloc i32 i_17 
                    #      alloc i1 temp_0_20 
                    #      alloc i32 j_22 
                    #      alloc i1 temp_1_24 
                    #      alloc i32 k_26 
                    #      alloc i1 temp_2_28 
                    #      alloc i32 m_30 
                    #      alloc i1 temp_3_32 
                    #      alloc i32 temp_4_35 
                    #      alloc i1 temp_5_35 
                    #      alloc i1 temp_6_370 
                    #      alloc i1 temp_7_39 
                    #      alloc i1 temp_8_39 
                    #      alloc i1 temp_9_39 
                    #      alloc i1 temp_10_39 
                    #      alloc i32 temp_11_41 
                    #      alloc i1 temp_12_41 
                    #      label L0_0: 
.L0_0:
                    #      sum_17 = i32 0_0 
    li      a0, 0
                    #      i_17 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_21 
    j       .while.head_21
                    #      label while.head_21: 
.while.head_21:
                    #      new_var temp_0_20:i1 
                    #      temp_0_20 = icmp i32 Slt i_17, 20_0 
    li      a2, 20
    slt     a3,a1,a2
                    #      br i1 temp_0_20, label while.body_21, label while.exit_21 
    bnez    a3, .while.body_21
    j       .while.exit_21
                    #      label while.body_21: 
.while.body_21:
                    #      j_22 = i32 0_0 
    li      a2, 0
                    #      jump label: while.head_25 
    j       .while.head_25
                    #      label while.head_25: 
.while.head_25:
                    #      new_var temp_1_24:i1 
                    #      temp_1_24 = icmp i32 Slt j_22, 10_0 
    li      a4, 10
    slt     a5,a2,a4
                    #      br i1 temp_1_24, label while.body_25, label while.exit_25 
    bnez    a5, .while.body_25
    j       .while.exit_25
                    #      label while.body_25: 
.while.body_25:
                    #      k_26 = i32 0_0 
    li      a4, 0
                    #      jump label: while.head_29 
    j       .while.head_29
                    #      label while.head_29: 
.while.head_29:
                    #      new_var temp_2_28:i1 
                    #      temp_2_28 = icmp i32 Slt k_26, 5_0 
    li      a6, 5
    slt     a7,a4,a6
                    #      br i1 temp_2_28, label while.body_29, label while.exit_29 
    bnez    a7, .while.body_29
    j       .while.exit_29
                    #      label while.body_29: 
.while.body_29:
                    #      m_30 = i32 0_0 
    li      a6, 0
                    #      jump label: while.head_33 
    j       .while.head_33
                    #      label while.head_33: 
.while.head_33:
                    #      new_var temp_3_32:i1 
                    #      temp_3_32 = icmp i32 Slt m_30, 3_0 
    li      s1, 3
    slt     s2,a6,s1
                    #      br i1 temp_3_32, label while.body_33, label while.exit_33 
    bnez    s2, .while.body_33
    j       .while.exit_33
                    #      label while.body_33: 
.while.body_33:
                    #      new_var temp_4_35:i32 
                    #      temp_4_35 = Add i32 m_30, 1_0 
    li      s1, 1
    add     s3,a6,s1
                    #      new_var temp_5_35:i1 
                    #      temp_5_35 = icmp i32 Sge temp_4_35, 3_0 
    li      s4, 3
    slt     s5,s3,s4
    xori    s5,s5,1
                    #      br i1 temp_5_35, label branch_true_36, label branch_false_36 
    bnez    s5, .branch_true_36
    j       .branch_false_36
                    #      label branch_true_36: 
.branch_true_36:
                    #      new_var temp_6_370:i1 
                    #      temp_6_370 = icmp i32 Ne m_30, 0_0 
    li      s1, 0
    xor     s4,a6,s1
    snez    s4, s4
                    #      br i1 temp_6_370, label branch_true_38, label branch_false_38 
    bnez    s4, .branch_true_38
    j       .branch_false_38
                    #      label branch_true_38: 
.branch_true_38:
                    #      new_var temp_7_39:i1 
                    #      temp_7_39 = icmp i1 Ne m_30, 0_0 
    li      s1, 0
    xor     s6,a6,s1
    snez    s6, s6
                    #      new_var temp_8_39:i1 
                    #      temp_8_39 = xor i1 temp_7_39, true 
    seqz    s7, s6
                    #      new_var temp_9_39:i1 
                    #      temp_9_39 = icmp i32 Ne m_30, 0_0 
                    #found literal reg Some(s1) already exist with 0_0
    xor     s8,a6,s1
    snez    s8, s8
                    #      new_var temp_10_39:i1 
                    #      temp_10_39 = Or i1 temp_9_39, temp_8_39 
                    #      br i1 temp_10_39, label branch_true_40, label branch_false_40 
    bnez    s9, .branch_true_40
    j       .branch_false_40
                    #      label branch_true_40: 
.branch_true_40:
                    #      new_var temp_11_41:i32 
                    #      temp_11_41 = Sub i32 m_30, -1_0 
    li      s1, -1
    sub     s10,a6,s1
                    #      new_var temp_12_41:i1 
                    #      temp_12_41 = icmp i32 Sge temp_11_41, 3_0 
    li      s11, 3
    slt     s1,s10,s11
    xori    s1,s1,1
                    #      br i1 temp_12_41, label branch_true_42, label branch_false_42 
    bnez    s1, .branch_true_42
    j       .branch_false_42
                    #      label branch_true_42: 
.branch_true_42:
                    #      jump label: while.exit_33 
    sb      s7,12(sp)
    sb      s8,11(sp)
    sb      s4,14(sp)
    sb      s6,13(sp)
    sw      s3,16(sp)
    sb      s5,15(sp)
    sb      s1,3(sp)
    sb      s9,10(sp)
    sw      s10,4(sp)
    j       .while.exit_33
                    #      label while.exit_33: 
.while.exit_33:
                    #      label L1_0: 
.L1_0:
                    #      label L2_0: 
.L2_0:
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L3_0: 
.L3_0:
                    #      jump label: while.exit_33 
    j       .while.exit_33
                    #      label L4_0: 
.L4_0:
                    #      jump label: while.head_29 
    sw      a6,24(sp)
    sb      s2,23(sp)
    sb      a7,31(sp)
    j       .while.head_29
                    #      label branch_false_42: 
.branch_false_42:
                    #      label branch_false_40: 
.branch_false_40:
                    #      label branch_false_38: 
.branch_false_38:
                    #      label branch_false_36: 
.branch_false_36:
                    #      label L5_0: 
.L5_0:
                    #      jump label: L6_0 
    j       .L6_0
                    #      label L6_0: 
.L6_0:
                    #      label L7_0: 
.L7_0:
                    #      jump label: L8_0 
    j       .L8_0
                    #      label L8_0: 
.L8_0:
                    #      jump label: L9_0 
    j       .L9_0
                    #      label L9_0: 
.L9_0:
                    #      jump label: L6_0 
    j       .L6_0
                    #      label L10_0: 
.L10_0:
                    #      jump label: while.head_33 
    sw      s3,16(sp)
    sb      s5,15(sp)
    sb      s2,23(sp)
    j       .while.head_33
                    #      label while.exit_29: 
.while.exit_29:
                    #      jump label: L11_0 
    j       .L11_0
                    #      label L11_0: 
.L11_0:
                    #      jump label: while.head_25 
    sb      a5,39(sp)
    sb      a7,31(sp)
    sw      a4,32(sp)
    j       .while.head_25
                    #      label while.exit_25: 
.while.exit_25:
                    #      jump label: while.head_21 
    sw      a2,40(sp)
    sb      a5,39(sp)
    sb      a3,47(sp)
    j       .while.head_21
                    #      label while.exit_21: 
.while.exit_21:
