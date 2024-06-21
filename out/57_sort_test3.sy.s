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
                    #      Define QuickSort_0 [arr_17, low_17, high_17] -> QuickSort_ret_0 
    .globl QuickSort
    .type QuickSort,@function
QuickSort:
                    #mem layout:|ra_QuickSort:8|s0_QuickSort:8|arr:8|low:4|high:4|temp_0:1|none:3|i:4|j:4|k:4|temp_1:8|temp_2:4|temp_3:1|none:3|temp_4:4|none:4|temp_5:8|temp_6:4|temp_7:1|temp_8:1|temp_9:1|none:1|temp_10:4|temp_11:1|none:3|temp_12:8|temp_13:8|temp_14:4|temp_15:4|temp_16:8|temp_17:4|temp_18:1|temp_19:1|temp_20:1|none:1|temp_21:4|temp_22:1|none:3|temp_23:8|temp_24:8|temp_25:4|temp_26:4|temp_27:8|tmp:4|temp_28:4|temp_29:4|temp_30:4|temp_31:4|none:4
    addi    sp,sp,-200
    sd      ra,192(sp)
    sd      s0,184(sp)
    addi    s0,sp,200
                    #      new_var arr_17:ptr->i32 
                    #      alloc i1 temp_0_20 
                    #      alloc i32 i_22 
                    #      alloc i32 j_22 
                    #      alloc i32 k_22 
                    #      alloc ptr->i32 temp_1_22 
                    #      alloc i32 temp_2_22 
                    #      alloc i1 temp_3_29 
                    #      alloc i32 temp_4_32 
                    #      alloc ptr->i32 temp_5_32 
                    #      alloc i32 temp_6_32 
                    #      alloc i1 temp_7_32 
                    #      alloc i1 temp_8_32 
                    #      alloc i1 temp_9_32 
                    #      alloc i32 temp_10_34 
                    #      alloc i1 temp_11_36 
                    #      alloc ptr->i32 temp_12_38 
                    #      alloc ptr->i32 temp_13_38 
                    #      alloc i32 temp_14_38 
                    #      alloc i32 temp_15_38 
                    #      alloc ptr->i32 temp_16_41 
                    #      alloc i32 temp_17_41 
                    #      alloc i1 temp_18_41 
                    #      alloc i1 temp_19_41 
                    #      alloc i1 temp_20_41 
                    #      alloc i32 temp_21_43 
                    #      alloc i1 temp_22_45 
                    #      alloc ptr->i32 temp_23_47 
                    #      alloc ptr->i32 temp_24_47 
                    #      alloc i32 temp_25_47 
                    #      alloc i32 temp_26_47 
                    #      alloc ptr->i32 temp_27_22 
                    #      alloc i32 tmp_22 
                    #      alloc i32 temp_28_22 
                    #      alloc i32 temp_29_22 
                    #      alloc i32 temp_30_22 
                    #      alloc i32 temp_31_22 
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_20:i1 
                    #      temp_0_20 = icmp i32 Slt low_17, high_17 
    slt     a3,a1,a2
                    #      br i1 temp_0_20, label branch_true_21, label branch_false_21 
    bnez    a3, .branch_true_21
    j       .branch_false_21
                    #      label branch_true_21: 
.branch_true_21:
                    #      new_var i_22:i32 
                    #      i_22 = i32 low_17 
    mv      a4, a1
                    #      new_var j_22:i32 
                    #      j_22 = i32 high_17 
    mv      a5, a2
                    #      new_var k_22:i32 
                    #      new_var temp_1_22:ptr->i32 
                    #      new_var temp_2_22:i32 
                    #      temp_1_22 = getelementptr arr_17:ptr->i32 [Some(low_17)] 
    li      a6, 0
    li      a7, 1
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_2_22 = load temp_1_22:ptr->i32 
    lw      s1,0(a6)
                    #      k_22 = i32 temp_2_22 
    mv      s2, s1
                    #      jump label: while.head_30 
    j       .while.head_30
                    #      label while.head_30: 
.while.head_30:
                    #      new_var temp_3_29:i1 
                    #      temp_3_29 = icmp i32 Slt i_22, j_22 
    slt     a7,a4,a5
                    #      br i1 temp_3_29, label while.body_30, label while.exit_30 
    bnez    a7, .while.body_30
    j       .while.exit_30
                    #      label while.head_33: 
.while.head_33:
                    #      new_var temp_4_32:i32 
                    #      temp_4_32 = Sub i32 k_22, 1_0 
    li      s3, 1
    sub     s4,s2,s3
                    #      new_var temp_5_32:ptr->i32 
                    #      new_var temp_6_32:i32 
                    #      temp_5_32 = getelementptr arr_17:ptr->i32 [Some(j_22)] 
    li      s5, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_6_32 = load temp_5_32:ptr->i32 
    lw      s6,0(s5)
                    #      new_var temp_7_32:i1 
                    #      temp_7_32 = icmp i32 Sgt temp_6_32, temp_4_32 
    slt     s7,s4,s6
                    #      new_var temp_8_32:i1 
                    #      temp_8_32 = icmp i32 Slt i_22, j_22 
    slt     s8,a4,a5
                    #      new_var temp_9_32:i1 
                    #      temp_9_32 = And i1 temp_8_32, temp_7_32 
    and     s9,s8,s7
                    #      br i1 temp_9_32, label while.body_33, label while.exit_33 
    bnez    s9, .while.body_33
    j       .while.exit_33
                    #      label while.body_33: 
.while.body_33:
                    #      new_var temp_10_34:i32 
                    #      temp_10_34 = Sub i32 j_22, 1_0 
    li      s3, 1
    sub     s10,a5,s3
                    #      j_22 = i32 temp_10_34 
    mv      a5, s10
                    #      jump label: while.head_33 
    sw      s10,108(sp)
    sw      s4,132(sp)
    sw      s6,116(sp)
    sd      s5,120(sp)
    sb      s9,113(sp)
    sb      s8,114(sp)
    sb      s7,115(sp)
    j       .while.head_33
                    #      label while.exit_33: 
.while.exit_33:
                    #      new_var temp_11_36:i1 
                    #      temp_11_36 = icmp i32 Slt i_22, j_22 
    slt     s3,a4,a5
                    #      br i1 temp_11_36, label branch_true_37, label branch_false_37 
    bnez    s3, .branch_true_37
    j       .branch_false_37
                    #      label branch_true_37: 
.branch_true_37:
                    #      new_var temp_12_38:ptr->i32 
                    #      temp_12_38 = getelementptr arr_17:ptr->i32 [Some(i_22)] 
    li      s10, 0
    li      s11, 1
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      new_var temp_13_38:ptr->i32 
                    #      new_var temp_14_38:i32 
                    #      temp_13_38 = getelementptr arr_17:ptr->i32 [Some(j_22)] 
    li      s11, 0
    sd      a0,176(sp)
    li      a0, 1
    sw      a1,172(sp)
    mul     a1,a0,a5
    add     s11,s11,a1
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_14_38 = load temp_13_38:ptr->i32 
    lw      a0,0(s11)
                    #      store temp_14_38:i32 temp_12_38:ptr->i32 
    sd      a0,0(s10)
                    #      mu arr_17:90 
                    #      arr_17 = chi arr_17:90 
                    #      new_var temp_15_38:i32 
                    #      temp_15_38 = Add i32 i_22, 1_0 
    sw      a0,84(sp)
    li      a0, 1
    sd      a1,176(sp)
    add     a1,a4,a0
                    #      i_22 = i32 temp_15_38 
    mv      a4, a1
                    #      jump label: branch_false_37 
    sd      s10,96(sp)
    ld      a0,176(sp)
    sd      s11,88(sp)
    sw      a1,80(sp)
    lw      a1,172(sp)
    j       .branch_false_37
                    #      label branch_false_37: 
.branch_false_37:
                    #      label while.head_42: 
.while.head_42:
                    #      new_var temp_16_41:ptr->i32 
                    #      new_var temp_17_41:i32 
                    #      temp_16_41 = getelementptr arr_17:ptr->i32 [Some(i_22)] 
    li      s10, 0
    li      s11, 1
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_17_41 = load temp_16_41:ptr->i32 
    lw      s11,0(s10)
                    #      new_var temp_18_41:i1 
                    #      temp_18_41 = icmp i32 Slt temp_17_41, k_22 
    sd      a0,176(sp)
    slt     a0,s11,s2
                    #      new_var temp_19_41:i1 
                    #      temp_19_41 = icmp i32 Slt i_22, j_22 
    sb      a0,67(sp)
    slt     a0,a4,a5
                    #      new_var temp_20_41:i1 
                    #      temp_20_41 = And i1 temp_19_41, temp_18_41 
    sw      a1,172(sp)
    sw      a2,168(sp)
    and     a2,a0,a1
                    #      br i1 temp_20_41, label while.body_42, label while.exit_42 
    bnez    a2, .while.body_42
    j       .while.exit_42
                    #      label while.body_42: 
.while.body_42:
                    #      new_var temp_21_43:i32 
                    #      temp_21_43 = Add i32 i_22, 1_0 
    sb      a0,66(sp)
    li      a0, 1
    sb      a1,67(sp)
    add     a1,a4,a0
                    #      i_22 = i32 temp_21_43 
    mv      a4, a1
                    #      jump label: while.head_42 
    sd      s10,72(sp)
    ld      a0,176(sp)
    sb      a2,65(sp)
    lw      a2,168(sp)
    sw      s11,68(sp)
    sw      a1,60(sp)
    lw      a1,172(sp)
    j       .while.head_42
                    #      label while.exit_42: 
.while.exit_42:
                    #      new_var temp_22_45:i1 
                    #      temp_22_45 = icmp i32 Slt i_22, j_22 
    sb      a0,66(sp)
    slt     a0,a4,a5
                    #      br i1 temp_22_45, label branch_true_46, label branch_false_46 
    bnez    a0, .branch_true_46
    j       .branch_false_46
                    #      label branch_true_46: 
.branch_true_46:
                    #      new_var temp_23_47:ptr->i32 
                    #      temp_23_47 = getelementptr arr_17:ptr->i32 [Some(j_22)] 
    sb      a0,59(sp)
    li      a0, 0
    sb      a1,67(sp)
    li      a1, 1
    sb      a2,65(sp)
    mul     a2,a1,a5
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      new_var temp_24_47:ptr->i32 
                    #      new_var temp_25_47:i32 
                    #      temp_24_47 = getelementptr arr_17:ptr->i32 [Some(i_22)] 
    li      a1, 0
    sd      a0,48(sp)
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_25_47 = load temp_24_47:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_25_47:i32 temp_23_47:ptr->i32 
    sw      a0,36(sp)
    sd      a1,40(sp)
    sd      a1,0(a0)
                    #      mu arr_17:136 
                    #      arr_17 = chi arr_17:136 
                    #      new_var temp_26_47:i32 
                    #      temp_26_47 = Sub i32 j_22, 1_0 
    sd      a0,48(sp)
    li      a0, 1
    sw      a1,36(sp)
    sub     a1,a5,a0
                    #      j_22 = i32 temp_26_47 
    mv      a5, a1
                    #      jump label: branch_false_46 
    lb      a0,59(sp)
    sd      a2,176(sp)
    lb      a2,65(sp)
    sw      a1,32(sp)
    lb      a1,67(sp)
    j       .branch_false_46
                    #      label branch_false_46: 
.branch_false_46:
                    #      jump label: while.head_30 
    sd      s10,72(sp)
    sb      a7,139(sp)
    sw      s4,132(sp)
    sb      a0,59(sp)
    ld      a0,176(sp)
    sb      s3,107(sp)
    sw      s6,116(sp)
    sd      s5,120(sp)
    sb      s9,113(sp)
    sb      s8,114(sp)
    sb      a2,65(sp)
    lw      a2,168(sp)
    sb      s7,115(sp)
    sw      s11,68(sp)
    sb      a1,67(sp)
    lw      a1,172(sp)
    j       .while.head_30
                    #      label while.exit_30: 
.while.exit_30:
                    #      new_var temp_27_22:ptr->i32 
                    #      temp_27_22 = getelementptr arr_17:ptr->i32 [Some(i_22)] 
    li      s3, 0
    li      s4, 1
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store k_22:i32 temp_27_22:ptr->i32 
    sd      s2,0(s3)
                    #      mu arr_17:146 
                    #      arr_17 = chi arr_17:146 
                    #      new_var tmp_22:i32 
                    #      new_var temp_28_22:i32 
                    #      temp_28_22 = Sub i32 i_22, 1_0 
                    #found literal reg Some(s4) already exist with 1_0
    sub     s5,a4,s4
                    #      tmp_22 = i32 temp_28_22 
    mv      s6, s5
                    #      new_var temp_29_22:i32 
                    #      temp_29_22 =  Call i32 QuickSort_0(arr_17, low_17, tmp_22) 
                    #saved register dumping to mem
    sw      s1,140(sp)
    sw      s2,152(sp)
    sd      s3,24(sp)
    sw      s5,16(sp)
    sw      s6,20(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,176(sp)
    ld      a0,176(sp)
    sw      a1,172(sp)
    lw      a1,172(sp)
    sw      a2,168(sp)
    lw      a2,20(sp)
                    #arg load ended
    call    QuickSort
    sw      a0,12(sp)
                    #      tmp_22 = i32 temp_29_22 
    mv      a1, a0
                    #      new_var temp_30_22:i32 
                    #      temp_30_22 = Add i32 i_22, 1_0 
    li      a2, 1
    add     s1,a4,a2
                    #      tmp_22 = i32 temp_30_22 
    mv      a1, s1
                    #      new_var temp_31_22:i32 
                    #      temp_31_22 =  Call i32 QuickSort_0(arr_17, tmp_22, high_17) 
                    #saved register dumping to mem
    sw      s1,8(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,12(sp)
    ld      a0,176(sp)
    sw      a1,20(sp)
    lw      a1,20(sp)
    lw      a2,168(sp)
                    #arg load ended
    call    QuickSort
    sw      a0,4(sp)
                    #      tmp_22 = i32 temp_31_22 
    mv      a1, a0
                    #      jump label: branch_false_21 
    sd      a6,144(sp)
    sb      a7,139(sp)
    sw      a4,160(sp)
    sw      a5,156(sp)
    sw      a0,4(sp)
    ld      a0,176(sp)
    lw      a2,168(sp)
    sw      a1,20(sp)
    lw      a1,172(sp)
    j       .branch_false_21
                    #      label branch_false_21: 
.branch_false_21:
                    #      label L2_0: 
.L2_0:
                    #      ret 0_0 
    ld      ra,192(sp)
    ld      s0,184(sp)
    sd      a0,176(sp)
    li      a0, 0
    addi    sp,sp,200
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|a:40|temp_32:8|temp_33:8|temp_34:8|temp_35:8|temp_36:8|temp_37:8|temp_38:8|temp_39:8|temp_40:8|temp_41:8|i:4|tmp:4|temp_42:4|temp_43:4|temp_44:1|none:3|tmp:4|temp_45:8|temp_46:4|temp_47:4
    addi    sp,sp,-176
    sd      ra,168(sp)
    sd      s0,160(sp)
    addi    s0,sp,176
                    #      alloc Array:i32:[Some(10_0)] a_58 
                    #      alloc ptr->i32 temp_32_58 
                    #      alloc ptr->i32 temp_33_58 
                    #      alloc ptr->i32 temp_34_58 
                    #      alloc ptr->i32 temp_35_58 
                    #      alloc ptr->i32 temp_36_58 
                    #      alloc ptr->i32 temp_37_58 
                    #      alloc ptr->i32 temp_38_58 
                    #      alloc ptr->i32 temp_39_58 
                    #      alloc ptr->i32 temp_40_58 
                    #      alloc ptr->i32 temp_41_58 
                    #      alloc i32 i_58 
                    #      alloc i32 tmp_58 
                    #      alloc i32 temp_42_58 
                    #      alloc i32 temp_43_76 
                    #      alloc i1 temp_44_76 
                    #      alloc i32 tmp_78 
                    #      alloc ptr->i32 temp_45_78 
                    #      alloc i32 temp_46_78 
                    #      alloc i32 temp_47_78 
                    #      label L0_0: 
.L0_0:
                    #      store 10_0:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    li      a1, 10
    sd      a1,0(a0)
                    #      new_var a_58:Array:i32:[Some(10_0)] 
                    #      new_var temp_32_58:ptr->i32 
                    #      temp_32_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(0_0)] 
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 4_0:i32 temp_32_58:ptr->i32 
    li      a6, 4
    sd      a6,0(a2)
                    #      mu a_58:175 
                    #      a_58 = chi a_58:175 
                    #      new_var temp_33_58:ptr->i32 
                    #      temp_33_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(1_0)] 
    li      a7, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      s1, 1
    add     a7,a7,a5
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 3_0:i32 temp_33_58:ptr->i32 
    li      s2, 3
    sd      s2,0(a7)
                    #      mu a_58:181 
                    #      a_58 = chi a_58:181 
                    #      new_var temp_34_58:ptr->i32 
                    #      temp_34_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(2_0)] 
    li      s3, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s4, 2
    add     s3,s3,a5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 9_0:i32 temp_34_58:ptr->i32 
    li      s5, 9
    sd      s5,0(s3)
                    #      mu a_58:187 
                    #      a_58 = chi a_58:187 
                    #      new_var temp_35_58:ptr->i32 
                    #      temp_35_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(3_0)] 
    li      s6, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s2) already exist with 3_0
    add     s6,s6,a5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 2_0:i32 temp_35_58:ptr->i32 
                    #found literal reg Some(s4) already exist with 2_0
    sd      s4,0(s6)
                    #      mu a_58:193 
                    #      a_58 = chi a_58:193 
                    #      new_var temp_36_58:ptr->i32 
                    #      temp_36_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(4_0)] 
    li      s7, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(a6) already exist with 4_0
    add     s7,s7,a5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 0_0:i32 temp_36_58:ptr->i32 
                    #found literal reg Some(a4) already exist with 0_0
    sd      a4,0(s7)
                    #      mu a_58:199 
                    #      a_58 = chi a_58:199 
                    #      new_var temp_37_58:ptr->i32 
                    #      temp_37_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(5_0)] 
    li      s8, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s9, 5
    add     s8,s8,a5
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 1_0:i32 temp_37_58:ptr->i32 
                    #found literal reg Some(s1) already exist with 1_0
    sd      s1,0(s8)
                    #      mu a_58:205 
                    #      a_58 = chi a_58:205 
                    #      new_var temp_38_58:ptr->i32 
                    #      temp_38_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(6_0)] 
    li      s10, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      s11, 6
    add     s10,s10,a5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 6_0:i32 temp_38_58:ptr->i32 
                    #found literal reg Some(s11) already exist with 6_0
    sd      s11,0(s10)
                    #      mu a_58:211 
                    #      a_58 = chi a_58:211 
                    #      new_var temp_39_58:ptr->i32 
                    #      temp_39_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(7_0)] 
    li      a0, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a1, 7
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 5_0:i32 temp_39_58:ptr->i32 
                    #found literal reg Some(s9) already exist with 5_0
    sd      s9,0(a0)
                    #      mu a_58:217 
                    #      a_58 = chi a_58:217 
                    #      new_var temp_40_58:ptr->i32 
                    #      temp_40_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(8_0)] 
    li      a1, 0
                    #found literal reg Some(s1) already exist with 1_0
    li      a3, 8
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 7_0:i32 temp_40_58:ptr->i32 
    li      a3, 7
    sd      a3,0(a1)
                    #      mu a_58:223 
                    #      a_58 = chi a_58:223 
                    #      new_var temp_41_58:ptr->i32 
                    #      temp_41_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(9_0)] 
    li      a3, 0
                    #found literal reg Some(s1) already exist with 1_0
                    #found literal reg Some(s5) already exist with 9_0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      store 8_0:i32 temp_41_58:ptr->i32 
    li      a4, 8
    sd      a4,0(a3)
                    #      mu a_58:229 
                    #      a_58 = chi a_58:229 
                    #      new_var i_58:i32 
                    #      i_58 = i32 0_0 
    li      a4, 0
                    #      new_var tmp_58:i32 
                    #      tmp_58 = i32 9_0 
    li      a6, 9
                    #      new_var temp_42_58:i32 
                    #      temp_42_58 =  Call i32 QuickSort_0(a_58, i_58, tmp_58) 
                    #saved register dumping to mem
    sd      s3,96(sp)
    sd      s6,88(sp)
    sd      s7,80(sp)
    sd      s8,72(sp)
    sd      s10,64(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,56(sp)
    mv      a0, a5
    sd      a1,48(sp)
    mv      a1, a4
    sd      a2,112(sp)
    mv      a2, a6
                    #arg load ended
    call    QuickSort
    sw      a0,28(sp)
                    #      i_58 = i32 temp_42_58 
    mv      a4, a0
                    #      jump label: while.head_77 
    j       .while.head_77
                    #      label while.head_77: 
.while.head_77:
                    #      new_var temp_43_76:i32 
                    #      temp_43_76 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      a2,0(a1)
                    #      new_var temp_44_76:i1 
                    #      temp_44_76 = icmp i32 Slt i_58, temp_43_76 
    slt     s1,a4,a2
                    #      br i1 temp_44_76, label while.body_77, label while.exit_77 
    bnez    s1, .while.body_77
    j       .while.exit_77
                    #      label while.body_77: 
.while.body_77:
                    #      new_var tmp_78:i32 
                    #      new_var temp_45_78:ptr->i32 
                    #      new_var temp_46_78:i32 
                    #      temp_45_78 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(i_58)] 
    li      a1, 0
    li      s2, 1
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_46_78 = load temp_45_78:ptr->i32 
    lw      s3,0(a1)
                    #      tmp_78 = i32 temp_46_78 
    mv      s4, s3
                    #       Call void putint_0(tmp_78) 
                    #saved register dumping to mem
    sb      s1,23(sp)
    sw      s3,4(sp)
    sw      s4,16(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    lw      a0,16(sp)
                    #arg load ended
    call    putint
                    #      tmp_78 = i32 10_0 
    li      a0, 10
                    #       Call void putch_0(tmp_78) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    lw      a0,16(sp)
                    #arg load ended
    call    putch
                    #      new_var temp_47_78:i32 
                    #      temp_47_78 = Add i32 i_58, 1_0 
    li      a0, 1
    add     s1,a4,a0
                    #      i_58 = i32 temp_47_78 
    mv      a4, s1
                    #      jump label: while.head_77 
    sw      a2,24(sp)
    sd      a1,8(sp)
    lw      a0,28(sp)
    sw      s1,0(sp)
    j       .while.head_77
                    #      label while.exit_77: 
.while.exit_77:
                    #      ret 0_0 
    ld      ra,168(sp)
    ld      s0,160(sp)
    sw      a0,28(sp)
    li      a0, 0
    addi    sp,sp,176
    ret
.section        .data
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
