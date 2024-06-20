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
                    #      Define MAX_0 [a_16, b_16] -> MAX_ret_0 
    .globl MAX
    .type MAX,@function
MAX:
                    #mem layout:|ra_MAX:8|s0_MAX:8|a:4|b:4|temp_0:1|temp_1:1|none:6
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    #      alloc i1 temp_0_19 
                    #      alloc i1 temp_1_22 
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_0_19:i1 
                    #      temp_0_19 = icmp i32 Eq a_16, b_16 
    xor     a2,a0,a1
    seqz    a2, a2
                    #      br i1 temp_0_19, label branch_true_20, label branch_false_20 
    bnez    a2, .branch_true_20
    j       .branch_false_20
                    #      label branch_true_20: 
.branch_true_20:
                    #      ret a_16 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    addi    sp,sp,32
    ret
                    #      label branch_false_20: 
.branch_false_20:
                    #      new_var temp_1_22:i1 
                    #      temp_1_22 = icmp i32 Sgt a_16, b_16 
    slt     a3,a1,a0
                    #      br i1 temp_1_22, label branch_true_23, label branch_false_23 
    bnez    a3, .branch_true_23
    j       .branch_false_23
                    #      label branch_true_23: 
.branch_true_23:
                    #      ret a_16 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    addi    sp,sp,32
    ret
                    #      label branch_false_23: 
.branch_false_23:
                    #      ret b_16 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a1,8(sp)
    sw      a0,12(sp)
    addi    sp,sp,32
    ret
                    #      label L6_0: 
.L6_0:
                    #      label L7_0: 
.L7_0:
                    #      Define max_sum_nonadjacent_0 [arr_26, n_26] -> max_sum_nonadjacent_ret_0 
    .globl max_sum_nonadjacent
    .type max_sum_nonadjacent,@function
max_sum_nonadjacent:
                    #mem layout:|ra_max_sum_nonadjacent:8|s0_max_sum_nonadjacent:8|arr:8|n:4|temp:64|none:4|temp_2:8|temp_3:8|temp_4:4|none:4|temp_5:8|temp_6:8|temp_7:4|none:4|temp_8:8|temp_9:4|temp_10:4|i:4|temp_11:1|none:3|temp_12:8|temp_13:8|temp_14:4|temp_15:4|temp_16:8|temp_17:4|temp_18:4|temp_19:4|none:4|temp_20:8|temp_21:4|temp_22:4|temp_23:4|temp_24:4|temp_25:8|temp_26:4|none:4
    addi    sp,sp,-256
    sd      ra,248(sp)
    sd      s0,240(sp)
    addi    s0,sp,256
                    #      new_var arr_26:ptr->i32 
                    #      alloc Array:i32:[Some(16_0)] temp_28 
                    #      alloc ptr->i32 temp_2_28 
                    #      alloc ptr->i32 temp_3_28 
                    #      alloc i32 temp_4_28 
                    #      alloc ptr->i32 temp_5_28 
                    #      alloc ptr->i32 temp_6_28 
                    #      alloc i32 temp_7_28 
                    #      alloc ptr->i32 temp_8_28 
                    #      alloc i32 temp_9_28 
                    #      alloc i32 temp_10_28 
                    #      alloc i32 i_28 
                    #      alloc i1 temp_11_33 
                    #      alloc ptr->i32 temp_12_35 
                    #      alloc ptr->i32 temp_13_35 
                    #      alloc i32 temp_14_35 
                    #      alloc i32 temp_15_35 
                    #      alloc ptr->i32 temp_16_35 
                    #      alloc i32 temp_17_35 
                    #      alloc i32 temp_18_35 
                    #      alloc i32 temp_19_35 
                    #      alloc ptr->i32 temp_20_35 
                    #      alloc i32 temp_21_35 
                    #      alloc i32 temp_22_35 
                    #      alloc i32 temp_23_35 
                    #      alloc i32 temp_24_28 
                    #      alloc ptr->i32 temp_25_28 
                    #      alloc i32 temp_26_28 
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_28:Array:i32:[Some(16_0)] 
                    #      new_var temp_2_28:ptr->i32 
                    #      temp_2_28 = getelementptr temp_28:Array:i32:[Some(16_0)] [Some(0_0)] 
    li      a2, 0
    li      a3, 1
    li      a4, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_3_28:ptr->i32 
                    #      new_var temp_4_28:i32 
                    #      temp_3_28 = getelementptr arr_26:ptr->i32 [Some(0_0)] 
    li      a6, 0
                    #found literal reg Some(a3) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_4_28 = load temp_3_28:ptr->i32 
    lw      a7,0(a6)
                    #      store temp_4_28:i32 temp_2_28:ptr->i32 
    sd      a7,0(a2)
                    #      mu temp_28:51 
                    #      temp_28 = chi temp_28:51 
                    #      new_var temp_5_28:ptr->i32 
                    #      temp_5_28 = getelementptr temp_28:Array:i32:[Some(16_0)] [Some(1_0)] 
    li      s1, 0
                    #found literal reg Some(a3) already exist with 1_0
    li      s2, 1
    add     s1,s1,a5
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      new_var temp_6_28:ptr->i32 
                    #      new_var temp_7_28:i32 
                    #      temp_6_28 = getelementptr arr_26:ptr->i32 [Some(0_0)] 
    li      s3, 0
                    #found literal reg Some(a3) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_7_28 = load temp_6_28:ptr->i32 
    lw      s4,0(s3)
                    #      new_var temp_8_28:ptr->i32 
                    #      new_var temp_9_28:i32 
                    #      temp_8_28 = getelementptr arr_26:ptr->i32 [Some(1_0)] 
    li      s5, 0
                    #found literal reg Some(a3) already exist with 1_0
                    #found literal reg Some(s2) already exist with 1_0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_9_28 = load temp_8_28:ptr->i32 
    lw      s6,0(s5)
                    #      new_var temp_10_28:i32 
                    #      temp_10_28 =  Call i32 MAX_0(temp_7_28, temp_9_28) 
                    #saved register dumping to mem
    sd      s1,128(sp)
    sd      s3,120(sp)
    sw      s4,116(sp)
    sd      s5,104(sp)
    sw      s6,100(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,232(sp)
    sw      a1,228(sp)
                    #arg load ended
    call    MAX
    sw      a0,96(sp)
                    #      store temp_10_28:i32 temp_5_28:ptr->i32 
    sd      a0,0(a1)
                    #      mu temp_28:72 
                    #      temp_28 = chi temp_28:72 
                    #      i_28 = i32 2_0 
    li      s1, 2
                    #      jump label: while.head_34 
    j       .while.head_34
                    #      label while.head_34: 
.while.head_34:
                    #      new_var temp_11_33:i1 
                    #      temp_11_33 = icmp i32 Slt i_28, n_26 
    slt     s3,s1,s2
                    #      br i1 temp_11_33, label while.body_34, label while.exit_34 
    bnez    s3, .while.body_34
    j       .while.exit_34
                    #      label while.body_34: 
.while.body_34:
                    #      new_var temp_12_35:ptr->i32 
                    #      temp_12_35 = getelementptr temp_28:Array:i32:[Some(16_0)] [Some(i_28)] 
    li      s4, 0
                    #found literal reg Some(a3) already exist with 1_0
    add     s4,s4,a5
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      new_var temp_13_35:ptr->i32 
                    #      new_var temp_14_35:i32 
                    #      temp_13_35 = getelementptr arr_26:ptr->i32 [Some(i_28)] 
    li      s5, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s6,a3,s1
    add     s5,s5,s6
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_14_35 = load temp_13_35:ptr->i32 
    lw      s7,0(s5)
                    #      new_var temp_15_35:i32 
                    #      temp_15_35 = Sub i32 i_28, 2_0 
    li      s8, 2
    sub     s9,s1,s8
                    #      new_var temp_16_35:ptr->i32 
                    #      new_var temp_17_35:i32 
                    #      temp_16_35 = getelementptr temp_28:Array:i32:[Some(16_0)] [Some(temp_15_35)] 
    li      s10, 0
                    #found literal reg Some(a3) already exist with 1_0
    add     s10,s10,a5
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_17_35 = load temp_16_35:ptr->i32 
    lw      s11,0(s10)
                    #      new_var temp_18_35:i32 
                    #      temp_18_35 = Add i32 temp_17_35, temp_14_35 
    add     a3,s11,s7
                    #      new_var temp_19_35:i32 
                    #      temp_19_35 = Sub i32 1_0, i_28 
    li      a4, 1
    sub     s8,a4,s1
                    #      new_var temp_20_35:ptr->i32 
                    #      new_var temp_21_35:i32 
                    #      temp_20_35 = getelementptr temp_28:Array:i32:[Some(16_0)] [Some(temp_19_35)] 
    li      a4, 0
    sw      a0,96(sp)
    li      a0, 1
    add     a4,a4,a5
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_21_35 = load temp_20_35:ptr->i32 
    lw      a0,0(a4)
                    #      new_var temp_22_35:i32 
                    #      temp_22_35 =  Call i32 MAX_0(temp_18_35, temp_21_35) 
                    #saved register dumping to mem
    sw      s1,92(sp)
    sw      s2,228(sp)
    sb      s3,91(sp)
    sd      s4,80(sp)
    sd      s5,72(sp)
    sd      s6,232(sp)
    sw      s7,68(sp)
    sw      s8,44(sp)
    sw      s9,64(sp)
    sd      s10,56(sp)
    sw      s11,52(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a3,48(sp)
    sw      a0,28(sp)
    sd      a1,128(sp)
                    #arg load ended
    call    MAX
    sw      a0,24(sp)
                    #      store temp_22_35:i32 temp_12_35:ptr->i32 
    sd      a0,0(a1)
                    #      mu temp_28:118 
                    #      temp_28 = chi temp_28:118 
                    #      new_var temp_23_35:i32 
                    #      temp_23_35 = Add i32 i_28, 1_0 
    li      s1, 1
    add     s2,a3,s1
                    #      i_28 = i32 temp_23_35 
                    #      jump label: while.head_34 
    j       .while.head_34
                    #      label while.exit_34: 
.while.exit_34:
                    #      new_var temp_24_28:i32 
                    #      temp_24_28 = Sub i32 n_26, 1_0 
                    #found literal reg Some(s1) already exist with 1_0
    sub     s4,s3,s1
                    #      new_var temp_25_28:ptr->i32 
                    #      new_var temp_26_28:i32 
                    #      temp_25_28 = getelementptr temp_28:Array:i32:[Some(16_0)] [Some(temp_24_28)] 
    li      s5, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     s5,s5,a5
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_26_28 = load temp_25_28:ptr->i32 
    lw      s6,0(s5)
                    #      ret temp_26_28 
    ld      ra,248(sp)
    ld      s0,240(sp)
    sw      s6,4(sp)
    sw      a0,24(sp)
    addi    sp,sp,256
    ret
                    #      Define longest_common_subseq_0 [arr1_39, len1_39, arr2_39, len2_39] -> longest_common_subseq_ret_0 
    .globl longest_common_subseq
    .type longest_common_subseq,@function
longest_common_subseq:
                    #mem layout:|ra_longest_common_subseq:8|s0_longest_common_subseq:8|arr1:8|len1:4|none:4|arr2:8|len2:4|p:1024|i:4|j:4|temp_27:1|temp_28:1|none:2|temp_29:4|none:4|temp_30:8|temp_31:4|temp_32:4|temp_33:8|temp_34:4|temp_35:1|none:3|temp_36:8|temp_37:4|temp_38:4|temp_39:8|temp_40:4|temp_41:4|temp_42:4|none:4|temp_43:8|temp_44:4|none:4|temp_45:8|temp_46:4|temp_47:4|temp_48:8|temp_49:4|temp_50:4|temp_51:4|none:4|temp_52:8|temp_53:4|none:4
    addi    sp,sp,-1232
    sd      ra,1224(sp)
    sd      s0,1216(sp)
    addi    s0,sp,1232
                    #      new_var arr1_39:ptr->i32 
                    #      new_var arr2_39:ptr->i32 
                    #      alloc Array:i32:[Some(16_0), Some(16_0)] p_41 
                    #      alloc i32 i_41 
                    #      alloc i32 j_41 
                    #      alloc i1 temp_27_45 
                    #      alloc i1 temp_28_49 
                    #      alloc i32 temp_29_52 
                    #      alloc ptr->i32 temp_30_52 
                    #      alloc i32 temp_31_52 
                    #      alloc i32 temp_32_52 
                    #      alloc ptr->i32 temp_33_52 
                    #      alloc i32 temp_34_52 
                    #      alloc i1 temp_35_52 
                    #      alloc ptr->i32 temp_36_54 
                    #      alloc i32 temp_37_54 
                    #      alloc i32 temp_38_54 
                    #      alloc ptr->i32 temp_39_54 
                    #      alloc i32 temp_40_54 
                    #      alloc i32 temp_41_54 
                    #      alloc i32 temp_42_51 
                    #      alloc ptr->i32 temp_43_56 
                    #      alloc i32 temp_44_56 
                    #      alloc ptr->i32 temp_45_56 
                    #      alloc i32 temp_46_56 
                    #      alloc i32 temp_47_56 
                    #      alloc ptr->i32 temp_48_56 
                    #      alloc i32 temp_49_56 
                    #      alloc i32 temp_50_56 
                    #      alloc i32 temp_51_47 
                    #      alloc ptr->i32 temp_52_41 
                    #      alloc i32 temp_53_41 
                    #      label L1_0: 
.L1_0:
                    #      new_var p_41:Array:i32:[Some(16_0), Some(16_0)] 
                    #      new_var i_41:i32 
                    #      new_var j_41:i32 
                    #      i_41 = i32 1_0 
    li      a4, 1
                    #      jump label: while.head_46 
    j       .while.head_46
                    #      label while.head_46: 
.while.head_46:
                    #      new_var temp_27_45:i1 
                    #      temp_27_45 = icmp i32 Sle i_41, len1_39 
    slt     a5,a1,a4
    xori    a5,a5,1
                    #      br i1 temp_27_45, label while.body_46, label while.exit_46 
    bnez    a5, .while.body_46
    j       .while.exit_46
                    #      label while.body_46: 
.while.body_46:
                    #      j_41 = i32 1_0 
    li      a6, 1
                    #      jump label: while.head_50 
    j       .while.head_50
                    #      label while.head_50: 
.while.head_50:
                    #      new_var temp_28_49:i1 
                    #      temp_28_49 = icmp i32 Sle j_41, len2_39 
    slt     a7,a3,a6
    xori    a7,a7,1
                    #      br i1 temp_28_49, label while.body_50, label while.exit_50 
    bnez    a7, .while.body_50
    j       .while.exit_50
                    #      label while.body_50: 
.while.body_50:
                    #      new_var temp_29_52:i32 
                    #      temp_29_52 = Sub i32 j_41, 1_0 
    li      s1, 1
    sub     s2,a6,s1
                    #      new_var temp_30_52:ptr->i32 
                    #      new_var temp_31_52:i32 
                    #      temp_30_52 = getelementptr arr2_39:ptr->i32 [Some(temp_29_52)] 
    li      s3, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     s3,s3,a2
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_31_52 = load temp_30_52:ptr->i32 
    lw      s4,0(s3)
                    #      new_var temp_32_52:i32 
                    #      temp_32_52 = Sub i32 i_41, 1_0 
                    #found literal reg Some(s1) already exist with 1_0
    sub     s5,a4,s1
                    #      new_var temp_33_52:ptr->i32 
                    #      new_var temp_34_52:i32 
                    #      temp_33_52 = getelementptr arr1_39:ptr->i32 [Some(temp_32_52)] 
    li      s6, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     s6,s6,a0
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_34_52 = load temp_33_52:ptr->i32 
    lw      s7,0(s6)
                    #      new_var temp_35_52:i1 
                    #      temp_35_52 = icmp i32 Eq temp_34_52, temp_31_52 
    xor     s8,s7,s4
    seqz    s8, s8
                    #      br i1 temp_35_52, label branch_true_53, label branch_false_53 
    bnez    s8, .branch_true_53
    j       .branch_false_53
                    #      label branch_true_53: 
.branch_true_53:
                    #      new_var temp_36_54:ptr->i32 
                    #      temp_36_54 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [Some(i_41), Some(j_41)] 
    li      s9, 0
    li      s10, 16
    mul     s11,s10,a4
    add     s9,s9,s11
                    #found literal reg Some(s1) already exist with 1_0
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      new_var temp_37_54:i32 
                    #      temp_37_54 = Sub i32 j_41, 1_0 
                    #found literal reg Some(s1) already exist with 1_0
    sub     s10,a6,s1
                    #      new_var temp_38_54:i32 
                    #      temp_38_54 = Sub i32 i_41, 1_0 
                    #found literal reg Some(s1) already exist with 1_0
    sd      a0,1208(sp)
    sub     a0,a4,s1
                    #      new_var temp_39_54:ptr->i32 
                    #      new_var temp_40_54:i32 
                    #      temp_39_54 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [Some(temp_38_54), Some(temp_37_54)] 
    li      s1, 0
    sw      a0,96(sp)
    li      a0, 16
    sw      a1,1204(sp)
    add     s1,s1,s11
    li      a0, 1
    add     s1,s1,s11
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_40_54 = load temp_39_54:ptr->i32 
    lw      a0,0(s1)
                    #      new_var temp_41_54:i32 
                    #      temp_41_54 = Add i32 temp_40_54, 1_0 
    sw      a1,96(sp)
    li      a1, 1
    sd      a2,1192(sp)
    add     a2,a0,a1
                    #      store temp_41_54:i32 temp_36_54:ptr->i32 
    sd      a2,0(s9)
                    #      mu p_41:202 
                    #      p_41 = chi p_41:202 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_53: 
.branch_false_53:
                    #      new_var temp_43_56:ptr->i32 
                    #      temp_43_56 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [Some(i_41), Some(j_41)] 
    li      a1, 0
    sw      a0,84(sp)
    li      a0, 16
    add     a1,a1,s11
    li      a0, 1
    add     a1,a1,s11
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      new_var temp_44_56:i32 
                    #      temp_44_56 = Sub i32 i_41, 1_0 
                    #found literal reg Some(a0) already exist with 1_0
    sd      a1,64(sp)
    sub     a1,a4,a0
                    #      new_var temp_45_56:ptr->i32 
                    #      new_var temp_46_56:i32 
                    #      temp_45_56 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [Some(temp_44_56), Some(j_41)] 
    li      a0, 0
    sw      a1,60(sp)
    li      a1, 16
    sw      a2,80(sp)
    add     a0,a0,s11
    li      a1, 1
    add     a0,a0,s11
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_46_56 = load temp_45_56:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_47_56:i32 
                    #      temp_47_56 = Sub i32 j_41, 1_0 
    sd      a0,48(sp)
    li      a0, 1
    sw      a1,44(sp)
    sub     a1,a6,a0
                    #      new_var temp_48_56:ptr->i32 
                    #      new_var temp_49_56:i32 
                    #      temp_48_56 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [Some(i_41), Some(temp_47_56)] 
    li      a0, 0
    sw      a1,40(sp)
    li      a1, 16
    add     a0,a0,s11
    li      a1, 1
    sw      a2,60(sp)
    add     a0,a0,s11
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_49_56 = load temp_48_56:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_50_56:i32 
                    #      temp_50_56 =  Call i32 MAX_0(temp_46_56, temp_49_56) 
                    #saved register dumping to mem
    sd      s1,88(sp)
    sw      s2,148(sp)
    sd      s3,136(sp)
    sw      s4,132(sp)
    sw      s5,128(sp)
    sd      s6,120(sp)
    sw      s7,116(sp)
    sb      s8,115(sp)
    sd      s9,104(sp)
    sw      s10,100(sp)
    sw      s11,1184(sp)
                    #saved register dumped to mem
                    #arg load start
    sd      a0,32(sp)
    sw      a1,28(sp)
                    #arg load ended
    call    MAX
    sw      a0,24(sp)
                    #      store temp_50_56:i32 temp_43_56:ptr->i32 
    sd      a0,0(a1)
                    #      mu p_41:233 
                    #      p_41 = chi p_41:233 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_42_51:i32 
                    #      temp_42_51 = Add i32 j_41, 1_0 
    li      s1, 1
    add     s2,a6,s1
                    #      j_41 = i32 temp_42_51 
                    #      jump label: while.head_50 
    j       .while.head_50
                    #      label while.exit_50: 
.while.exit_50:
                    #      new_var temp_51_47:i32 
                    #      temp_51_47 = Add i32 i_41, 1_0 
                    #found literal reg Some(s1) already exist with 1_0
    add     s3,a4,s1
                    #      i_41 = i32 temp_51_47 
                    #      jump label: while.head_46 
    j       .while.head_46
                    #      label while.exit_46: 
.while.exit_46:
                    #      new_var temp_52_41:ptr->i32 
                    #      new_var temp_53_41:i32 
                    #      temp_52_41 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [Some(len1_39), Some(len2_39)] 
    li      s4, 0
    li      s5, 16
    mul     s7,s5,s6
    add     s4,s4,s7
                    #found literal reg Some(s1) already exist with 1_0
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_53_41 = load temp_52_41:ptr->i32 
    lw      s8,0(s4)
                    #      ret temp_53_41 
    ld      ra,1224(sp)
    ld      s0,1216(sp)
    sw      s8,4(sp)
    sw      a0,24(sp)
    addi    sp,sp,1232
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_54:8|temp_55:8|temp_56:8|temp_57:8|temp_58:8|temp_59:8|temp_60:8|temp_61:8|temp_62:8|temp_63:8|temp_64:8|temp_65:8|temp_66:8|temp_67:8|temp_68:8|temp_69:8|temp_70:8|temp_71:8|temp_72:8|temp_73:8|temp_74:8|temp_75:8|A:60|none:4|temp_76:8|temp_77:8|temp_78:8|temp_79:8|temp_80:8|temp_81:8|temp_82:8|temp_83:8|temp_84:8|temp_85:8|temp_86:8|temp_87:8|temp_88:8|temp_89:8|temp_90:8|temp_91:8|B:52|An:4|Bn:4|temp_92:4|temp_93:4|none:4
    addi    sp,sp,-456
    sd      ra,448(sp)
    sd      s0,440(sp)
    addi    s0,sp,456
                    #      alloc ptr->i32 temp_54_62 
                    #      alloc ptr->i32 temp_55_62 
                    #      alloc ptr->i32 temp_56_62 
                    #      alloc ptr->i32 temp_57_62 
                    #      alloc ptr->i32 temp_58_62 
                    #      alloc ptr->i32 temp_59_62 
                    #      alloc ptr->i32 temp_60_62 
                    #      alloc ptr->i32 temp_61_62 
                    #      alloc ptr->i32 temp_62_62 
                    #      alloc ptr->i32 temp_63_62 
                    #      alloc ptr->i32 temp_64_62 
                    #      alloc ptr->i32 temp_65_62 
                    #      alloc ptr->i32 temp_66_62 
                    #      alloc ptr->i32 temp_67_62 
                    #      alloc ptr->i32 temp_68_62 
                    #      alloc ptr->i32 temp_69_62 
                    #      alloc ptr->i32 temp_70_62 
                    #      alloc ptr->i32 temp_71_62 
                    #      alloc ptr->i32 temp_72_62 
                    #      alloc ptr->i32 temp_73_62 
                    #      alloc ptr->i32 temp_74_62 
                    #      alloc ptr->i32 temp_75_62 
                    #      alloc Array:i32:[Some(15_0)] A_62 
                    #      alloc ptr->i32 temp_76_62 
                    #      alloc ptr->i32 temp_77_62 
                    #      alloc ptr->i32 temp_78_62 
                    #      alloc ptr->i32 temp_79_62 
                    #      alloc ptr->i32 temp_80_62 
                    #      alloc ptr->i32 temp_81_62 
                    #      alloc ptr->i32 temp_82_62 
                    #      alloc ptr->i32 temp_83_62 
                    #      alloc ptr->i32 temp_84_62 
                    #      alloc ptr->i32 temp_85_62 
                    #      alloc ptr->i32 temp_86_62 
                    #      alloc ptr->i32 temp_87_62 
                    #      alloc ptr->i32 temp_88_62 
                    #      alloc ptr->i32 temp_89_62 
                    #      alloc ptr->i32 temp_90_62 
                    #      alloc ptr->i32 temp_91_62 
                    #      alloc Array:i32:[Some(13_0)] B_62 
                    #      alloc i32 An_62 
                    #      alloc i32 Bn_62 
                    #      alloc i32 temp_92_62 
                    #      alloc i32 temp_93_62 
                    #      label L0_0: 
.L0_0:
                    #      new_var A_62:Array:i32:[Some(15_0)] 
                    #      new_var temp_54_62:ptr->i32 
                    #      temp_54_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(21_0)] 
    li      a0, 0
    li      a1, 1
    li      a2, 21
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 0_0:i32 temp_54_62:ptr->i32 
    li      a4, 0
    sd      a4,0(a0)
                    #      mu A_62:252 
                    #      A_62 = chi A_62:252 
                    #      new_var temp_55_62:ptr->i32 
                    #      temp_55_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(6_0)] 
    li      a5, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      a6, 6
    add     a5,a5,a3
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      store 0_0:i32 temp_55_62:ptr->i32 
                    #found literal reg Some(a4) already exist with 0_0
    sd      a4,0(a5)
                    #      mu A_62:258 
                    #      A_62 = chi A_62:258 
                    #      new_var temp_56_62:ptr->i32 
                    #      temp_56_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(4_0)] 
    li      a7, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      s1, 4
    add     a7,a7,a3
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store 2_0:i32 temp_56_62:ptr->i32 
    li      s2, 2
    sd      s2,0(a7)
                    #      mu A_62:264 
                    #      A_62 = chi A_62:264 
                    #      new_var temp_57_62:ptr->i32 
                    #      temp_57_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(10_0)] 
    li      s3, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      s4, 10
    add     s3,s3,a3
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store 4_0:i32 temp_57_62:ptr->i32 
                    #found literal reg Some(s1) already exist with 4_0
    sd      s1,0(s3)
                    #      mu A_62:270 
                    #      A_62 = chi A_62:270 
                    #      new_var temp_58_62:ptr->i32 
                    #      temp_58_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(8_0)] 
    li      s5, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      s6, 8
    add     s5,s5,a3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      store 9_0:i32 temp_58_62:ptr->i32 
    li      s7, 9
    sd      s7,0(s5)
                    #      mu A_62:276 
                    #      A_62 = chi A_62:276 
                    #      new_var temp_59_62:ptr->i32 
                    #      temp_59_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(14_0)] 
    li      s8, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      s9, 14
    add     s8,s8,a3
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      store 0_0:i32 temp_59_62:ptr->i32 
                    #found literal reg Some(a4) already exist with 0_0
    sd      a4,0(s8)
                    #      mu A_62:282 
                    #      A_62 = chi A_62:282 
                    #      new_var temp_60_62:ptr->i32 
                    #      temp_60_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(1_0)] 
    li      s10, 0
                    #found literal reg Some(a1) already exist with 1_0
    li      s11, 1
    add     s10,s10,a3
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      store 7_0:i32 temp_60_62:ptr->i32 
    li      a1, 7
    sd      a1,0(s10)
                    #      mu A_62:288 
                    #      A_62 = chi A_62:288 
                    #      new_var temp_61_62:ptr->i32 
                    #      temp_61_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(2_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
                    #found literal reg Some(s2) already exist with 2_0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 4_0:i32 temp_61_62:ptr->i32 
                    #found literal reg Some(s1) already exist with 4_0
    sd      s1,0(a1)
                    #      mu A_62:294 
                    #      A_62 = chi A_62:294 
                    #      new_var temp_62_62:ptr->i32 
                    #      temp_62_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(9_0)] 
    li      a2, 0
                    #found literal reg Some(s11) already exist with 1_0
                    #found literal reg Some(s7) already exist with 9_0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store 3_0:i32 temp_62_62:ptr->i32 
    li      a4, 3
    sd      a4,0(a2)
                    #      mu A_62:300 
                    #      A_62 = chi A_62:300 
                    #      new_var temp_63_62:ptr->i32 
                    #      temp_63_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(13_0)] 
    li      a4, 0
                    #found literal reg Some(s11) already exist with 1_0
    li      a6, 13
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      store 7_0:i32 temp_63_62:ptr->i32 
    li      a6, 7
    sd      a6,0(a4)
                    #      mu A_62:306 
                    #      A_62 = chi A_62:306 
                    #      new_var temp_64_62:ptr->i32 
                    #      temp_64_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(15_0)] 
    li      a6, 0
                    #found literal reg Some(s11) already exist with 1_0
    li      s1, 15
    add     a6,a6,a3
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      store 7_0:i32 temp_64_62:ptr->i32 
    li      s1, 7
    sd      s1,0(a6)
                    #      mu A_62:312 
                    #      A_62 = chi A_62:312 
                    #      new_var temp_65_62:ptr->i32 
                    #      temp_65_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(16_0)] 
    li      s1, 0
                    #found literal reg Some(s11) already exist with 1_0
    li      s2, 16
    add     s1,s1,a3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      store 1_0:i32 temp_65_62:ptr->i32 
                    #found literal reg Some(s11) already exist with 1_0
    sd      s11,0(s1)
                    #      mu A_62:318 
                    #      A_62 = chi A_62:318 
                    #      new_var temp_66_62:ptr->i32 
                    #      temp_66_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(12_0)] 
    li      s2, 0
                    #found literal reg Some(s11) already exist with 1_0
    li      s4, 12
    add     s2,s2,a3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      store 3_0:i32 temp_66_62:ptr->i32 
    li      s4, 3
    sd      s4,0(s2)
                    #      mu A_62:324 
                    #      A_62 = chi A_62:324 
                    #      new_var temp_67_62:ptr->i32 
                    #      temp_67_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(20_0)] 
    li      s4, 0
                    #found literal reg Some(s11) already exist with 1_0
    li      s6, 20
    add     s4,s4,a3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      store 7_0:i32 temp_67_62:ptr->i32 
    li      s6, 7
    sd      s6,0(s4)
                    #      mu A_62:330 
                    #      A_62 = chi A_62:330 
                    #      new_var temp_68_62:ptr->i32 
                    #      temp_68_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(0_0)] 
    li      s6, 0
                    #found literal reg Some(s11) already exist with 1_0
    li      s7, 0
    add     s6,s6,a3
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      store 8_0:i32 temp_68_62:ptr->i32 
    li      s7, 8
    sd      s7,0(s6)
                    #      mu A_62:336 
                    #      A_62 = chi A_62:336 
                    #      new_var temp_69_62:ptr->i32 
                    #      temp_69_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(5_0)] 
    li      s7, 0
                    #found literal reg Some(s11) already exist with 1_0
    li      s9, 5
    add     s7,s7,a3
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      store 7_0:i32 temp_69_62:ptr->i32 
    li      s9, 7
    sd      s9,0(s7)
                    #      mu A_62:342 
                    #      A_62 = chi A_62:342 
                    #      new_var temp_70_62:ptr->i32 
                    #      temp_70_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(11_0)] 
    li      s9, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,432(sp)
    li      a0, 11
    add     s9,s9,a3
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store 8_0:i32 temp_70_62:ptr->i32 
    li      a0, 8
    sd      a0,0(s9)
                    #      mu A_62:348 
                    #      A_62 = chi A_62:348 
                    #      new_var temp_71_62:ptr->i32 
                    #      temp_71_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(19_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,376(sp)
    li      a1, 19
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 3_0:i32 temp_71_62:ptr->i32 
    li      a1, 3
    sd      a1,0(a0)
                    #      mu A_62:354 
                    #      A_62 = chi A_62:354 
                    #      new_var temp_72_62:ptr->i32 
                    #      temp_72_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(7_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,296(sp)
    li      a0, 7
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 1_0:i32 temp_72_62:ptr->i32 
                    #found literal reg Some(s11) already exist with 1_0
    sd      s11,0(a1)
                    #      mu A_62:360 
                    #      A_62 = chi A_62:360 
                    #      new_var temp_73_62:ptr->i32 
                    #      temp_73_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(3_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,288(sp)
    li      a1, 3
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 1_0:i32 temp_73_62:ptr->i32 
                    #found literal reg Some(s11) already exist with 1_0
    sd      s11,0(a0)
                    #      mu A_62:366 
                    #      A_62 = chi A_62:366 
                    #      new_var temp_74_62:ptr->i32 
                    #      temp_74_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(17_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,280(sp)
    li      a0, 17
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 4_0:i32 temp_74_62:ptr->i32 
    li      a0, 4
    sd      a0,0(a1)
                    #      mu A_62:372 
                    #      A_62 = chi A_62:372 
                    #      new_var temp_75_62:ptr->i32 
                    #      temp_75_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(18_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,272(sp)
    li      a1, 18
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 8_0:i32 temp_75_62:ptr->i32 
    li      a1, 8
    sd      a1,0(a0)
                    #      mu A_62:378 
                    #      A_62 = chi A_62:378 
                    #      new_var B_62:Array:i32:[Some(13_0)] 
                    #      new_var temp_76_62:ptr->i32 
                    #      temp_76_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(2_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,264(sp)
    li      a0, 2
    sd      a2,368(sp)
    mul     a2,s11,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 7_0:i32 temp_76_62:ptr->i32 
    li      a0, 7
    sd      a0,0(a1)
                    #      mu B_62:386 
                    #      B_62 = chi B_62:386 
                    #      new_var temp_77_62:ptr->i32 
                    #      temp_77_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(1_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,192(sp)
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 9_0:i32 temp_77_62:ptr->i32 
    li      a1, 9
    sd      a1,0(a0)
                    #      mu B_62:392 
                    #      B_62 = chi B_62:392 
                    #      new_var temp_78_62:ptr->i32 
                    #      temp_78_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(5_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,184(sp)
    li      a0, 5
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 2_0:i32 temp_78_62:ptr->i32 
    li      a0, 2
    sd      a0,0(a1)
                    #      mu B_62:398 
                    #      B_62 = chi B_62:398 
                    #      new_var temp_79_62:ptr->i32 
                    #      temp_79_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(10_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,176(sp)
    li      a1, 10
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 0_0:i32 temp_79_62:ptr->i32 
    li      a1, 0
    sd      a1,0(a0)
                    #      mu B_62:404 
                    #      B_62 = chi B_62:404 
                    #      new_var temp_80_62:ptr->i32 
                    #      temp_80_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(14_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,168(sp)
    li      a0, 14
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 3_0:i32 temp_80_62:ptr->i32 
    li      a0, 3
    sd      a0,0(a1)
                    #      mu B_62:410 
                    #      B_62 = chi B_62:410 
                    #      new_var temp_81_62:ptr->i32 
                    #      temp_81_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(4_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,160(sp)
    li      a1, 4
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 4_0:i32 temp_81_62:ptr->i32 
                    #found literal reg Some(a1) already exist with 4_0
    sd      a1,0(a0)
                    #      mu B_62:416 
                    #      B_62 = chi B_62:416 
                    #      new_var temp_82_62:ptr->i32 
                    #      temp_82_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(13_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,152(sp)
    li      a0, 13
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 4_0:i32 temp_82_62:ptr->i32 
    li      a0, 4
    sd      a0,0(a1)
                    #      mu B_62:422 
                    #      B_62 = chi B_62:422 
                    #      new_var temp_83_62:ptr->i32 
                    #      temp_83_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(9_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,144(sp)
    li      a1, 9
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 8_0:i32 temp_83_62:ptr->i32 
    li      a1, 8
    sd      a1,0(a0)
                    #      mu B_62:428 
                    #      B_62 = chi B_62:428 
                    #      new_var temp_84_62:ptr->i32 
                    #      temp_84_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(3_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,136(sp)
    li      a0, 3
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 1_0:i32 temp_84_62:ptr->i32 
                    #found literal reg Some(s11) already exist with 1_0
    sd      s11,0(a1)
                    #      mu B_62:434 
                    #      B_62 = chi B_62:434 
                    #      new_var temp_85_62:ptr->i32 
                    #      temp_85_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(6_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,128(sp)
    li      a1, 6
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 4_0:i32 temp_85_62:ptr->i32 
    li      a1, 4
    sd      a1,0(a0)
                    #      mu B_62:440 
                    #      B_62 = chi B_62:440 
                    #      new_var temp_86_62:ptr->i32 
                    #      temp_86_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(7_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,120(sp)
    li      a0, 7
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 3_0:i32 temp_86_62:ptr->i32 
    li      a0, 3
    sd      a0,0(a1)
                    #      mu B_62:446 
                    #      B_62 = chi B_62:446 
                    #      new_var temp_87_62:ptr->i32 
                    #      temp_87_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(12_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,112(sp)
    li      a1, 12
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 5_0:i32 temp_87_62:ptr->i32 
    li      a1, 5
    sd      a1,0(a0)
                    #      mu B_62:452 
                    #      B_62 = chi B_62:452 
                    #      new_var temp_88_62:ptr->i32 
                    #      temp_88_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(0_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,104(sp)
    li      a0, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 3_0:i32 temp_88_62:ptr->i32 
    li      a0, 3
    sd      a0,0(a1)
                    #      mu B_62:458 
                    #      B_62 = chi B_62:458 
                    #      new_var temp_89_62:ptr->i32 
                    #      temp_89_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(8_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,96(sp)
    li      a1, 8
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 6_0:i32 temp_89_62:ptr->i32 
    li      a1, 6
    sd      a1,0(a0)
                    #      mu B_62:464 
                    #      B_62 = chi B_62:464 
                    #      new_var temp_90_62:ptr->i32 
                    #      temp_90_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(11_0)] 
    li      a1, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a0,88(sp)
    li      a0, 11
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      store 1_0:i32 temp_90_62:ptr->i32 
                    #found literal reg Some(s11) already exist with 1_0
    sd      s11,0(a1)
                    #      mu B_62:470 
                    #      B_62 = chi B_62:470 
                    #      new_var temp_91_62:ptr->i32 
                    #      temp_91_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(15_0)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 1_0
    sd      a1,80(sp)
    li      a1, 15
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store 1_0:i32 temp_91_62:ptr->i32 
                    #found literal reg Some(s11) already exist with 1_0
    sd      s11,0(a0)
                    #      mu B_62:476 
                    #      B_62 = chi B_62:476 
                    #      new_var An_62:i32 
                    #      new_var Bn_62:i32 
                    #      new_var temp_92_62:i32 
                    #      temp_92_62 =  Call i32 max_sum_nonadjacent_0(A_62, 15_0) 
                    #saved register dumping to mem
    sd      s1,344(sp)
    sd      s2,336(sp)
    sd      s3,408(sp)
    sd      s4,328(sp)
    sd      s5,400(sp)
    sd      s6,320(sp)
    sd      s7,312(sp)
    sd      s8,392(sp)
    sd      s9,304(sp)
    sd      s10,384(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a3,260(sp)
    sd      a0,72(sp)
    li      a1, 15
                    #arg load ended
    call    max_sum_nonadjacent
    sw      a0,8(sp)
                    #       Call void putint_0(temp_92_62) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,8(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_93_62:i32 
                    #      temp_93_62 =  Call i32 longest_common_subseq_0(A_62, 15_0, B_62, 13_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a1, 15
    sw      a2,68(sp)
    li      a3, 13
                    #arg load ended
    call    longest_common_subseq
    sw      a0,4(sp)
                    #       Call void putint_0(temp_93_62) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      ret 0_0 
    ld      ra,448(sp)
    ld      s0,440(sp)
    li      a0, 0
    addi    sp,sp,456
    ret
