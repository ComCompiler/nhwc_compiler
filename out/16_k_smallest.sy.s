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
                    #      Define swap_0 [i_19, j_19] -> swap_ret_0 
    .globl swap
    .type swap,@function
swap:
                    #mem layout:|ra_swap:8|s0_swap:8|i:4|j:4|temp_0:4000|temp_1:8|temp_2:4|tmp:4|temp_3:8|temp_4:4000|temp_5:8|temp_6:4|none:4|temp_7:8
    li      a2, -8072
    li      a2, -8072
    add     sp,a2,sp
    li      a3, 8064
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 8056
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 8072
    li      a5, 8072
    add     s0,a5,sp
                    #      alloc Array:i32:[Some(1000_0)] temp_0_21 
                    #      alloc ptr->i32 temp_1_21 
                    #      alloc i32 temp_2_21 
                    #      alloc i32 tmp_21 
                    #      alloc ptr->i32 temp_3_21 
                    #      alloc Array:i32:[Some(1000_0)] temp_4_21 
                    #      alloc ptr->i32 temp_5_21 
                    #      alloc i32 temp_6_21 
                    #      alloc ptr->i32 temp_7_21 
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_0_21:Array:i32:[Some(1000_0)] 
                    #      temp_0_21 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      a6, array
                    #occupy reg a6 with *array_0
    lw      a7,0(a6)
                    #      new_var temp_1_21:ptr->i32 
                    #      new_var temp_2_21:i32 
                    #      temp_1_21 = getelementptr temp_0_21:Array:i32:[Some(1000_0)] [Some(i_19)] 
    li      s1, 0
    li      s2, 1
    add     s1,s1,a7
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_2_21 = load temp_1_21:ptr->i32 
    lw      s3,0(s1)
                    #      tmp_21 = i32 temp_2_21 
    mv      s4, s3
                    #      new_var temp_3_21:ptr->i32 
                    #      temp_3_21 = getelementptr array_0:Array:i32:[Some(1000_0)] [Some(i_19)] 
    li      s5, 0
                    #found literal reg Some(s2) already exist with 1_0
    mul     s6,s2,a0
                    #occupy reg s6 with array_0
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,s5
                    #      new_var temp_4_21:Array:i32:[Some(1000_0)] 
                    #      temp_4_21 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s7, array
                    #occupy reg s7 with *array_0
    lw      s8,0(s7)
                    #      new_var temp_5_21:ptr->i32 
                    #      new_var temp_6_21:i32 
                    #      temp_5_21 = getelementptr temp_4_21:Array:i32:[Some(1000_0)] [Some(j_19)] 
    li      s9, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s9,s9,s8
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_6_21 = load temp_5_21:ptr->i32 
    lw      s10,0(s9)
                    #      store temp_6_21:i32 temp_3_21:ptr->i32 
    sd      s10,0(s5)
                    #      mu array_0:48 
                    #      array_0 = chi array_0:48 
                    #      new_var temp_7_21:ptr->i32 
                    #      temp_7_21 = getelementptr array_0:Array:i32:[Some(1000_0)] [Some(j_19)] 
    li      s11, 0
                    #found literal reg Some(s2) already exist with 1_0
    mul     a2,s2,a1
                    #occupy reg a2 with array_0
    add     s11,s11,a2
    slli s11,s11,2
    add     s11,s11,s11
                    #      store tmp_21:i32 temp_7_21:ptr->i32 
    sd      s4,0(s11)
                    #      mu array_0:54 
                    #      array_0 = chi array_0:54 
                    #      Define findPivot_0 [start_25, end_25] -> findPivot_ret_0 
    .globl findPivot
    .type findPivot,@function
findPivot:
                    #mem layout:|ra_findPivot:8|s0_findPivot:8|start:4|end:4|temp_8:4000|temp_9:8|temp_10:4|pivot:4|pIndex:4|i:4|temp_11:1|none:3|temp_12:4000|none:4|temp_13:8|temp_14:4|temp_15:1|none:3|temp_16:4|temp_17:4
    li      a2, -8080
    li      a2, -8080
    add     sp,a2,sp
    li      a3, 8072
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 8064
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 8080
    li      a5, 8080
    add     s0,a5,sp
                    #      alloc Array:i32:[Some(1000_0)] temp_8_27 
                    #      alloc ptr->i32 temp_9_27 
                    #      alloc i32 temp_10_27 
                    #      alloc i32 pivot_27 
                    #      alloc i32 pIndex_27 
                    #      alloc i32 i_27 
                    #      alloc i1 temp_11_30 
                    #      alloc Array:i32:[Some(1000_0)] temp_12_33 
                    #      alloc ptr->i32 temp_13_33 
                    #      alloc i32 temp_14_33 
                    #      alloc i1 temp_15_33 
                    #      alloc i32 temp_16_35 
                    #      alloc i32 temp_17_32 
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_8_27:Array:i32:[Some(1000_0)] 
                    #      temp_8_27 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      a6, array
                    #occupy reg a6 with *array_0
    lw      a7,0(a6)
                    #      new_var temp_9_27:ptr->i32 
                    #      new_var temp_10_27:i32 
                    #      temp_9_27 = getelementptr temp_8_27:Array:i32:[Some(1000_0)] [Some(end_25)] 
    li      s1, 0
    li      s2, 1
    add     s1,s1,a7
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_10_27 = load temp_9_27:ptr->i32 
    lw      s3,0(s1)
                    #      pivot_27 = i32 temp_10_27 
    mv      s4, s3
                    #      pIndex_27 = i32 start_25 
    mv      s5, a0
                    #      i_27 = i32 start_25 
    mv      s6, a0
                    #      jump label: while.head_31 
    j       .while.head_31
                    #      label while.head_31: 
.while.head_31:
                    #      new_var temp_11_30:i1 
                    #      temp_11_30 = icmp i32 Slt i_27, end_25 
    slt     a2,s6,a1
                    #      br i1 temp_11_30, label while.body_31, label while.exit_31 
    bnez    a2, .while.body_31
    j       .while.exit_31
                    #      label while.body_31: 
.while.body_31:
                    #      new_var temp_12_33:Array:i32:[Some(1000_0)] 
                    #      temp_12_33 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      a3, array
                    #occupy reg a3 with *array_0
    lw      a4,0(a3)
                    #      new_var temp_13_33:ptr->i32 
                    #      new_var temp_14_33:i32 
                    #      temp_13_33 = getelementptr temp_12_33:Array:i32:[Some(1000_0)] [Some(i_27)] 
    li      a5, 0
    li      a6, 1
    add     a5,a5,a4
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_14_33 = load temp_13_33:ptr->i32 
    lw      s2,0(a5)
                    #      new_var temp_15_33:i1 
                    #      temp_15_33 = icmp i32 Sle temp_14_33, pivot_27 
    slt     s7,s4,s2
    xori    s7,s7,1
                    #      br i1 temp_15_33, label branch_true_34, label branch_false_34 
    bnez    s7, .branch_true_34
    j       .branch_false_34
                    #      label branch_true_34: 
.branch_true_34:
                    #       Call void swap_0(i_27, pIndex_27) 
                    #saved register dumping to mem
    li      a3, 4048
    add     a3,sp,a3
    sd      s1,0(a3)
    sw      s2,12(sp)
    li      a6, 4044
    add     a6,sp,a6
    sw      s3,0(a6)
    li      s1, 4040
    add     s1,sp,s1
    sw      s4,0(s1)
    li      s2, 4036
    add     s2,sp,s2
    sw      s5,0(s2)
    li      s3, 4032
    add     s3,sp,s3
    sw      s6,0(s3)
    sb      s7,11(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 8060
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s4, 4032
    add     s4,sp,s4
    lw      a0,0(s4)
    li      a1, 8056
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s5, 4036
    add     s5,sp,s5
    lw      a1,0(s5)
                    #arg load ended
    call    swap
                    #      new_var temp_16_35:i32 
                    #      temp_16_35 = Add i32 pIndex_27, 1_0 
    li      a0, 1
    add     a1,s5,a0
                    #      pIndex_27 = i32 temp_16_35 
    mv      s5, a1
                    #      jump label: branch_false_34 
    lw      s2,12(sp)
                    #found literal reg Some(s3) already exist with 4032_0
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s6, 4040
    add     s6,sp,s6
    lw      s4,0(s6)
    li      s7, 8060
    add     s7,sp,s7
    lw      a0,0(s7)
    li      s9, 4048
    add     s9,sp,s9
    ld      s1,0(s9)
    sw      a1,4(sp)
    li      s10, 8056
    add     s10,sp,s10
    lw      a1,0(s10)
    li      s7, 8060
    add     s7,sp,s7
    sw      s7,0(s7)
    lb      s7,11(sp)
    li      s10, 8056
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 4044
    add     s11,sp,s11
    lw      s3,0(s11)
    li      s11, 4044
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s6, 4040
    add     s6,sp,s6
    sw      s6,0(s6)
    li      a2, 4031
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 4032
    add     a2,sp,a2
    lw      s6,0(a2)
    li      a2, 4032
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a4, 4024
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 4031
    add     a4,sp,a4
    lb      a2,0(a4)
    li      s9, 4048
    add     s9,sp,s9
    sd      s9,0(s9)
    j       .branch_false_34
                    #      label branch_false_34: 
.branch_false_34:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_17_32:i32 
                    #      temp_17_32 = Add i32 i_27, 1_0 
    li      a3, 1
    add     a6,s6,a3
                    #      i_27 = i32 temp_17_32 
    mv      s6, a6
                    #      jump label: while.head_31 
    sd      a5,16(sp)
    sw      s2,12(sp)
    sb      s7,11(sp)
    sw      a6,0(sp)
    li      a4, 4024
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a2, 4031
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_31
                    #      label while.exit_31: 
.while.exit_31:
                    #       Call void swap_0(pIndex_27, end_25) 
                    #saved register dumping to mem
    li      a3, 4048
    add     a3,sp,a3
    sd      s1,0(a3)
    li      a4, 4044
    add     a4,sp,a4
    sw      s3,0(a4)
    li      a5, 4040
    add     a5,sp,a5
    sw      s4,0(a5)
    li      a6, 4036
    add     a6,sp,a6
    sw      s5,0(a6)
    li      s1, 4032
    add     s1,sp,s1
    sw      s6,0(s1)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 8060
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s2, 4036
    add     s2,sp,s2
    lw      a0,0(s2)
    li      a1, 8056
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s3, 8056
    add     s3,sp,s3
    lw      a1,0(s3)
                    #arg load ended
    call    swap
                    #      ret pIndex_27 
    li      a0, 8072
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 8064
    add     a1,sp,a1
    ld      s0,0(a1)
                    #found literal reg Some(a6) already exist with 4036_0
    add     a6,sp,a6
    sw      s2,0(a6)
    li      a0, 8072
    add     a0,sp,a0
    sd      a0,0(a0)
    li      s2, 8080
    li      s2, 8080
    add     sp,s2,sp
    ret
                    #      Define findSmallest_0 [low_41, high_41, k_41, n_41] -> findSmallest_ret_0 
    .globl findSmallest
    .type findSmallest,@function
findSmallest:
                    #mem layout:|ra_findSmallest:8|s0_findSmallest:8|low:4|high:4|k:4|n:4|temp_18:1|none:3|temp_19:4|pIndex:4|temp_20:1|none:3|i:4|temp_21:1|none:3|temp_22:4000|temp_23:8|temp_24:4|temp_25:4|temp_26:1|none:3|temp_27:4|temp_28:4|none:4
    li      a4, -4088
    li      a4, -4088
    add     sp,a4,sp
    li      a5, 4080
    add     a5,sp,a5
    sd      ra,0(a5)
    li      a6, 4072
    add     a6,sp,a6
    sd      s0,0(a6)
    li      a7, 4088
    li      a7, 4088
    add     s0,a7,sp
                    #      alloc i1 temp_18_44 
                    #      alloc i32 temp_19_47 
                    #      alloc i32 pIndex_47 
                    #      alloc i1 temp_20_49 
                    #      alloc i32 i_51 
                    #      alloc i1 temp_21_53 
                    #      alloc Array:i32:[Some(1000_0)] temp_22_55 
                    #      alloc ptr->i32 temp_23_55 
                    #      alloc i32 temp_24_55 
                    #      alloc i32 temp_25_55 
                    #      alloc i1 temp_26_59 
                    #      alloc i32 temp_27_61 
                    #      alloc i32 temp_28_63 
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_18_44:i1 
                    #      temp_18_44 = icmp i32 Eq low_41, high_41 
    xor     s1,a0,a1
    seqz    s1, s1
                    #      br i1 temp_18_44, label branch_true_45, label branch_false_45 
    bnez    s1, .branch_true_45
    j       .branch_false_45
                    #      label branch_true_45: 
.branch_true_45:
                    #      ret 
    li      a4, 4080
    add     a4,sp,a4
    ld      ra,0(a4)
    li      a5, 4072
    add     a5,sp,a5
    ld      s0,0(a5)
    li      a6, 4088
    li      a6, 4088
    add     sp,a6,sp
    ret
                    #      label branch_false_45: 
.branch_false_45:
                    #      new_var temp_19_47:i32 
                    #      temp_19_47 =  Call i32 findPivot_0(low_41, high_41) 
                    #saved register dumping to mem
    li      a4, 4055
    add     a4,sp,a4
    sb      s1,0(a4)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 4068
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a5, 4068
    add     a5,sp,a5
    lw      a0,0(a5)
    li      a1, 4064
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a6, 4064
    add     a6,sp,a6
    lw      a1,0(a6)
                    #arg load ended
    call    findPivot
    li      a0, 4048
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      pIndex_47 = i32 temp_19_47 
    mv      a1, a0
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_20_49:i1 
                    #      temp_20_49 = icmp i32 Eq k_41, pIndex_47 
    xor     a4,a2,a1
    seqz    a4, a4
                    #      br i1 temp_20_49, label branch_true_50, label branch_false_50 
    bnez    a4, .branch_true_50
    j       .branch_false_50
                    #      label branch_true_50: 
.branch_true_50:
                    #      i_51 = i32 0_0 
    li      a7, 0
                    #      jump label: while.head_54 
    j       .while.head_54
                    #      label while.head_54: 
.while.head_54:
                    #      new_var temp_21_53:i1 
                    #      temp_21_53 = icmp i32 Slt i_51, pIndex_47 
    slt     s1,a7,a1
                    #      br i1 temp_21_53, label while.body_54, label while.exit_54 
    bnez    s1, .while.body_54
    j       .while.exit_54
                    #      label while.body_54: 
.while.body_54:
                    #      new_var temp_22_55:Array:i32:[Some(1000_0)] 
                    #      temp_22_55 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s2, array
                    #occupy reg s2 with *array_0
    lw      s3,0(s2)
                    #      new_var temp_23_55:ptr->i32 
                    #      new_var temp_24_55:i32 
                    #      temp_23_55 = getelementptr temp_22_55:Array:i32:[Some(1000_0)] [Some(i_51)] 
    li      s4, 0
    li      s5, 1
    add     s4,s4,s3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_24_55 = load temp_23_55:ptr->i32 
    lw      s6,0(s4)
                    #       Call void putint_0(temp_24_55) 
                    #saved register dumping to mem
    li      s1, 4035
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 4028
    add     s2,sp,s2
    sw      s3,0(s2)
    sd      s4,24(sp)
    sw      s6,20(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 4048
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,20(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      new_var temp_25_55:i32 
                    #      temp_25_55 = Add i32 i_51, 1_0 
    li      a0, 1
    add     s1,a7,a0
                    #      i_51 = i32 temp_25_55 
    mv      a7, s1
                    #      jump label: while.head_54 
    sw      s1,16(sp)
    li      s3, 4048
    add     s3,sp,s3
    lw      a0,0(s3)
    li      s3, 4048
    add     s3,sp,s3
    sw      s3,0(s3)
    j       .while.head_54
                    #      label branch_false_50: 
.branch_false_50:
                    #      new_var temp_26_59:i1 
                    #      temp_26_59 = icmp i32 Slt k_41, pIndex_47 
    slt     a7,a2,a1
                    #      br i1 temp_26_59, label branch_true_60, label branch_false_60 
    bnez    a7, .branch_true_60
    j       .branch_false_60
                    #      label branch_true_60: 
.branch_true_60:
                    #      new_var temp_27_61:i32 
                    #      temp_27_61 = Sub i32 pIndex_47, 1_0 
    li      s1, 1
    sub     s2,a1,s1
                    #       Call void findSmallest_0(low_41, temp_27_61, k_41, n_41) 
                    #saved register dumping to mem
    sw      s2,8(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 4048
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a5
    li      a1, 4044
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,8(sp)
    li      a2, 4060
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s1, 4060
    add     s1,sp,s1
    lw      a2,0(s1)
    li      a3, 4056
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s2, 4056
    add     s2,sp,s2
    lw      a3,0(s2)
                    #arg load ended
    call    findSmallest
                    #      jump label: L3_0 
    j       .L3_0
                    #      label branch_false_60: 
.branch_false_60:
                    #      new_var temp_28_63:i32 
                    #      temp_28_63 = Add i32 pIndex_47, 1_0 
    li      s1, 1
    add     s2,a1,s1
                    #       Call void findSmallest_0(temp_28_63, high_41, k_41, n_41) 
                    #saved register dumping to mem
    sw      s2,4(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 4048
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,4(sp)
    li      a1, 4044
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a6
    li      a2, 4060
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s1, 4060
    add     s1,sp,s1
    lw      a2,0(s1)
    li      a3, 4056
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s2, 4056
    add     s2,sp,s2
    lw      a3,0(s2)
                    #arg load ended
    call    findSmallest
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      label while.exit_54: 
.while.exit_54:
                    #      label L4_0: 
.L4_0:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_29:4|n:4|temp_30:4|k:4|i:4|temp_31:1|none:3|temp_32:8|temp_33:4|temp_34:4|low:4|temp_35:4|high:4|none:4
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
                    #      alloc i32 temp_29_66 
                    #      alloc i32 n_66 
                    #      alloc i32 temp_30_66 
                    #      alloc i32 k_66 
                    #      alloc i32 i_66 
                    #      alloc i1 temp_31_69 
                    #      alloc ptr->i32 temp_32_71 
                    #      alloc i32 temp_33_71 
                    #      alloc i32 temp_34_71 
                    #      alloc i32 low_66 
                    #      alloc i32 temp_35_66 
                    #      alloc i32 high_66 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_29_66:i32 
                    #      temp_29_66 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,52(sp)
                    #      n_66 = i32 temp_29_66 
    mv      a1, a0
                    #      new_var temp_30_66:i32 
                    #      temp_30_66 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,52(sp)
    sw      a0,44(sp)
                    #      k_66 = i32 temp_30_66 
    mv      a2, a0
                    #      i_66 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_70 
    j       .while.head_70
                    #      label while.head_70: 
.while.head_70:
                    #      new_var temp_31_69:i1 
                    #      temp_31_69 = icmp i32 Slt i_66, n_66 
    slt     a4,a3,a1
                    #      br i1 temp_31_69, label while.body_70, label while.exit_70 
    bnez    a4, .while.body_70
    j       .while.exit_70
                    #      label while.body_70: 
.while.body_70:
                    #      new_var temp_32_71:ptr->i32 
                    #      temp_32_71 = getelementptr array_0:Array:i32:[Some(1000_0)] [Some(i_66)] 
    li      a5, 0
    li      a6, 1
    mul     a7,a6,a3
                    #occupy reg a7 with array_0
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,a5
                    #      new_var temp_33_71:i32 
                    #      temp_33_71 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,44(sp)
    sw      a0,20(sp)
                    #      store temp_33_71:i32 temp_32_71:ptr->i32 
    sd      a0,0(a5)
                    #      mu array_0:191 
                    #      array_0 = chi array_0:191 
                    #      new_var temp_34_71:i32 
                    #      temp_34_71 = Add i32 i_66, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    add     s1,a3,a6
                    #      i_66 = i32 temp_34_71 
    mv      a3, s1
                    #      jump label: while.head_70 
    sd      a5,24(sp)
    sb      a4,35(sp)
    sw      a0,20(sp)
    lw      a0,44(sp)
    sw      s1,16(sp)
    j       .while.head_70
                    #      label while.exit_70: 
.while.exit_70:
                    #      low_66 = i32 0_0 
    li      a5, 0
                    #      new_var temp_35_66:i32 
                    #      temp_35_66 = Sub i32 n_66, 1_0 
    li      a6, 1
    sub     a7,a1,a6
                    #      high_66 = i32 temp_35_66 
    mv      s1, a7
                    #       Call void findSmallest_0(low_66, high_66, k_66, n_66) 
                    #saved register dumping to mem
    sw      s1,4(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,44(sp)
    mv      a0, a5
    sw      a1,48(sp)
    lw      a1,4(sp)
    sw      a2,40(sp)
    lw      a2,40(sp)
    sw      a3,36(sp)
    lw      a3,48(sp)
                    #arg load ended
    call    findSmallest
                    #      ret 0_0 
    ld      ra,64(sp)
    ld      s0,56(sp)
    li      a0, 0
    addi    sp,sp,72
    ret
.section        .data
    .align 4
    .globl array
                    #      global Array:i32:[Some(1000_0)] array_0 
    .type array,@object
array:
    .zero 4000
    .align 4
    .globl space
                    #      global i32 space_0 
    .type space,@object
space:
    .word 32
    .align 4
    .globl maxN
                    #      global i32 maxN_0 
    .type maxN,@object
maxN:
    .word 1000
