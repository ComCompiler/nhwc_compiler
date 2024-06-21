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
                    #      Define find_0 [root_18] -> find_ret_0 
    .globl find
    .type find,@function
find:
                    #mem layout:|ra_find:8|s0_find:8|root:4|temp_0:4020|temp_1:8|temp_2:4|temp_3:1|none:3|temp_4:8|temp_5:4020|none:4|temp_6:8|temp_7:4|temp_8:4|temp_9:4020|none:4|temp_10:8|temp_11:4|none:4
    li      a1, -12144
    li      a1, -12144
    add     sp,a1,sp
    li      a2, 12136
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 12128
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 12144
    li      a4, 12144
    add     s0,a4,sp
                    #      alloc Array:i32:[Some(1005_0)] temp_0_21 
                    #      alloc ptr->i32 temp_1_21 
                    #      alloc i32 temp_2_21 
                    #      alloc i1 temp_3_21 
                    #      alloc ptr->i32 temp_4_24 
                    #      alloc Array:i32:[Some(1005_0)] temp_5_24 
                    #      alloc ptr->i32 temp_6_24 
                    #      alloc i32 temp_7_24 
                    #      alloc i32 temp_8_24 
                    #      alloc Array:i32:[Some(1005_0)] temp_9_24 
                    #      alloc ptr->i32 temp_10_24 
                    #      alloc i32 temp_11_24 
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_0_21:Array:i32:[Some(1005_0)] 
                    #      temp_0_21 = load *parent_0:ptr->i32 
                    #   load label parent as ptr to reg
    la      a5, parent
                    #occupy reg a5 with *parent_0
    lw      a6,0(a5)
                    #      new_var temp_1_21:ptr->i32 
                    #      new_var temp_2_21:i32 
                    #      temp_1_21 = getelementptr temp_0_21:Array:i32:[Some(1005_0)] [Some(root_18)] 
    li      a7, 0
    li      s1, 1
    add     a7,a7,a6
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_2_21 = load temp_1_21:ptr->i32 
    lw      s2,0(a7)
                    #      new_var temp_3_21:i1 
                    #      temp_3_21 = icmp i32 Eq temp_2_21, root_18 
    xor     s3,s2,a0
    seqz    s3, s3
                    #      br i1 temp_3_21, label branch_true_22, label branch_false_22 
    bnez    s3, .branch_true_22
    j       .branch_false_22
                    #      label branch_true_22: 
.branch_true_22:
                    #      ret root_18 
    li      a1, 12136
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a2, 12128
    add     a2,sp,a2
    ld      s0,0(a2)
    li      a0, 12124
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 12144
    li      a3, 12144
    add     sp,a3,sp
    ret
                    #      label branch_false_22: 
.branch_false_22:
                    #      new_var temp_4_24:ptr->i32 
                    #      temp_4_24 = getelementptr parent_0:Array:i32:[Some(1005_0)] [Some(root_18)] 
    li      a1, 0
    li      a2, 1
    mul     a3,a2,a0
                    #occupy reg a3 with parent_0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,a1
                    #      new_var temp_5_24:Array:i32:[Some(1005_0)] 
                    #      temp_5_24 = load *parent_0:ptr->i32 
                    #   load label parent as ptr to reg
    la      a4, parent
                    #occupy reg a4 with *parent_0
    lw      a5,0(a4)
                    #      new_var temp_6_24:ptr->i32 
                    #      new_var temp_7_24:i32 
                    #      temp_6_24 = getelementptr temp_5_24:Array:i32:[Some(1005_0)] [Some(root_18)] 
    li      s1, 0
                    #found literal reg Some(a2) already exist with 1_0
    add     s1,s1,a5
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_7_24 = load temp_6_24:ptr->i32 
    lw      s4,0(s1)
                    #      new_var temp_8_24:i32 
                    #      temp_8_24 =  Call i32 find_0(temp_7_24) 
                    #saved register dumping to mem
    li      s1, 4048
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s2, 8092
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 8091
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s4, 4044
    add     s4,sp,s4
    sw      s4,0(s4)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 12124
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s5, 4044
    add     s5,sp,s5
    lw      a0,0(s5)
                    #arg load ended
    call    find
    li      a0, 4040
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      store temp_8_24:i32 temp_4_24:ptr->i32 
    sd      a0,0(a1)
                    #      mu parent_0:54 
                    #      parent_0 = chi parent_0:54 
                    #      new_var temp_9_24:Array:i32:[Some(1005_0)] 
                    #      temp_9_24 = load *parent_0:ptr->i32 
                    #   load label parent as ptr to reg
    la      s6, parent
                    #occupy reg s6 with *parent_0
    lw      s7,0(s6)
                    #      new_var temp_10_24:ptr->i32 
                    #      new_var temp_11_24:i32 
                    #      temp_10_24 = getelementptr temp_9_24:Array:i32:[Some(1005_0)] [Some(root_18)] 
    li      s8, 0
                    #found literal reg Some(a2) already exist with 1_0
    add     s8,s8,s7
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_11_24 = load temp_10_24:ptr->i32 
    lw      s10,0(s8)
                    #      ret temp_11_24 
    li      s11, 12136
    add     s11,sp,s11
    ld      ra,0(s11)
    li      a2, 12128
    add     a2,sp,a2
    ld      s0,0(a2)
    sw      s10,4(sp)
    li      a0, 4040
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s10, 12144
    li      s10, 12144
    add     sp,s10,sp
    ret
                    #      label L6_0: 
.L6_0:
                    #      Define merge_0 [p_27, q_27] -> merge_ret_0 
    .globl merge
    .type merge,@function
merge:
                    #mem layout:|ra_merge:8|s0_merge:8|p:4|q:4|root_p:4|root_q:4|temp_12:4|temp_13:4|temp_14:1|none:7|temp_15:8
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      alloc i32 root_p_29 
                    #      alloc i32 root_q_29 
                    #      alloc i32 temp_12_29 
                    #      alloc i32 temp_13_29 
                    #      alloc i1 temp_14_33 
                    #      alloc ptr->i32 temp_15_35 
                    #      label L2_0: 
.L2_0:
                    #      new_var root_p_29:i32 
                    #      new_var root_q_29:i32 
                    #      new_var temp_12_29:i32 
                    #      temp_12_29 =  Call i32 find_0(p_27) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,36(sp)
    lw      a0,36(sp)
                    #arg load ended
    call    find
    sw      a0,20(sp)
                    #      root_p_29 = i32 temp_12_29 
    mv      a2, a0
                    #      new_var temp_13_29:i32 
                    #      temp_13_29 =  Call i32 find_0(q_27) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,20(sp)
    mv      a0, a1
                    #arg load ended
    call    find
    sw      a0,16(sp)
                    #      root_q_29 = i32 temp_13_29 
    mv      a3, a0
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_14_33:i1 
                    #      temp_14_33 = icmp i32 Ne root_p_29, root_q_29 
    xor     a4,a2,a3
    snez    a4, a4
                    #      br i1 temp_14_33, label branch_true_34, label branch_false_34 
    bnez    a4, .branch_true_34
    j       .branch_false_34
                    #      label branch_true_34: 
.branch_true_34:
                    #      new_var temp_15_35:ptr->i32 
                    #      temp_15_35 = getelementptr parent_0:Array:i32:[Some(1005_0)] [Some(root_q_29)] 
    li      a5, 0
    li      a6, 1
    mul     a7,a6,a3
                    #occupy reg a7 with parent_0
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,a5
                    #      store root_p_29:i32 temp_15_35:ptr->i32 
    sd      a2,0(a5)
                    #      mu parent_0:89 
                    #      parent_0 = chi parent_0:89 
                    #      jump label: branch_false_34 
    sd      a5,0(sp)
    j       .branch_false_34
                    #      label branch_false_34: 
.branch_false_34:
                    #      label L4_0: 
.L4_0:
                    #      ret 
    ld      ra,48(sp)
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_16:4|n:4|temp_17:4|m:4|i:4|p:4|q:4|temp_18:1|none:3|temp_19:8|temp_20:4|temp_21:1|none:3|temp_22:4|temp_23:4|temp_24:4|clusters:4|temp_25:1|none:3|temp_26:4020|temp_27:8|temp_28:4|temp_29:1|none:3|temp_30:4|temp_31:4
    li      a0, -4128
    li      a0, -4128
    add     sp,a0,sp
    li      a1, 4120
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 4112
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 4128
    li      a3, 4128
    add     s0,a3,sp
                    #      alloc i32 temp_16_39 
                    #      alloc i32 n_39 
                    #      alloc i32 temp_17_39 
                    #      alloc i32 m_39 
                    #      alloc i32 i_39 
                    #      alloc i32 p_39 
                    #      alloc i32 q_39 
                    #      alloc i1 temp_18_43 
                    #      alloc ptr->i32 temp_19_45 
                    #      alloc i32 temp_20_45 
                    #      alloc i1 temp_21_49 
                    #      alloc i32 temp_22_51 
                    #      alloc i32 temp_23_51 
                    #      alloc i32 temp_24_51 
                    #      alloc i32 clusters_39 
                    #      alloc i1 temp_25_58 
                    #      alloc Array:i32:[Some(1005_0)] temp_26_61 
                    #      alloc ptr->i32 temp_27_61 
                    #      alloc i32 temp_28_61 
                    #      alloc i1 temp_29_61 
                    #      alloc i32 temp_30_61 
                    #      alloc i32 temp_31_60 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_16_39:i32 
                    #      temp_16_39 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 4108
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      n_39 = i32 temp_16_39 
    mv      a4, a0
                    #      new_var temp_17_39:i32 
                    #      temp_17_39 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 4108
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a5, 4100
    add     a5,sp,a5
    sw      a0,0(a5)
                    #      m_39 = i32 temp_17_39 
    mv      a6, a0
                    #      new_var i_39:i32 
                    #      new_var p_39:i32 
                    #      new_var q_39:i32 
                    #      i_39 = i32 0_0 
    li      a7, 0
                    #      jump label: while.head_44 
    j       .while.head_44
                    #      label while.head_44: 
.while.head_44:
                    #      new_var temp_18_43:i1 
                    #      temp_18_43 = icmp i32 Slt i_39, n_39 
    slt     a1,a7,a4
                    #      br i1 temp_18_43, label while.body_44, label while.exit_44 
    bnez    a1, .while.body_44
    j       .while.exit_44
                    #      label while.body_44: 
.while.body_44:
                    #      new_var temp_19_45:ptr->i32 
                    #      temp_19_45 = getelementptr parent_0:Array:i32:[Some(1005_0)] [Some(i_39)] 
    li      a2, 0
    li      a3, 1
    mul     a5,a3,a7
                    #occupy reg a5 with parent_0
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,a2
                    #      store i_39:i32 temp_19_45:ptr->i32 
    sd      a7,0(a2)
                    #      mu parent_0:122 
                    #      parent_0 = chi parent_0:122 
                    #      new_var temp_20_45:i32 
                    #      temp_20_45 = Add i32 i_39, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     s1,a7,a3
                    #      i_39 = i32 temp_20_45 
    mv      a7, s1
                    #      jump label: while.head_44 
    li      s1, 4068
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a2, 4072
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a1, 4083
    add     a1,sp,a1
    sb      a1,0(a1)
    j       .while.head_44
                    #      label while.exit_44: 
.while.exit_44:
                    #      i_39 = i32 0_0 
                    #      jump label: while.head_50 
    j       .while.head_50
                    #      label while.head_50: 
.while.head_50:
                    #      new_var temp_21_49:i1 
                    #      temp_21_49 = icmp i32 Slt i_39, m_39 
    slt     a2,a7,a6
                    #      br i1 temp_21_49, label while.body_50, label while.exit_50 
    bnez    a2, .while.body_50
    j       .while.exit_50
                    #      label while.body_50: 
.while.body_50:
                    #      new_var temp_22_51:i32 
                    #      temp_22_51 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 4100
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 4060
    add     a3,sp,a3
    sw      a0,0(a3)
                    #      p_39 = i32 temp_22_51 
    mv      a5, a0
                    #      new_var temp_23_51:i32 
                    #      temp_23_51 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
                    #found literal reg Some(a3) already exist with 4060_0
    add     a3,sp,a3
    sw      a0,0(a3)
    li      a0, 4056
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      q_39 = i32 temp_23_51 
    mv      s1, a0
                    #       Call void merge_0(p_39, q_39) 
                    #saved register dumping to mem
    li      s1, 4084
    add     s1,sp,s1
    sw      s1,0(s1)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 4056
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a5
    li      a1, 4083
    add     a1,sp,a1
    sb      a1,0(a1)
    li      s2, 4084
    add     s2,sp,s2
    lw      a1,0(s2)
                    #arg load ended
    call    merge
                    #      new_var temp_24_51:i32 
                    #      temp_24_51 = Add i32 i_39, 1_0 
    li      a0, 1
    add     a1,a7,a0
                    #      i_39 = i32 temp_24_51 
    mv      a7, a1
                    #      jump label: while.head_50 
    li      a2, 4067
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a5, 4088
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s2, 4084
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a1, 4052
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s3, 4083
    add     s3,sp,s3
    lb      a1,0(s3)
    li      s3, 4083
    add     s3,sp,s3
    sb      s3,0(s3)
    li      a4, 4104
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 4100
    add     a4,sp,a4
    lw      a0,0(a4)
    j       .while.head_50
                    #      label while.exit_50: 
.while.exit_50:
                    #      clusters_39 = i32 0_0 
    li      a3, 0
                    #      i_39 = i32 0_0 
                    #      jump label: while.head_59 
    j       .while.head_59
                    #      label while.head_59: 
.while.head_59:
                    #      new_var temp_25_58:i1 
                    #      temp_25_58 = icmp i32 Slt i_39, n_39 
    slt     a5,a7,a4
                    #      br i1 temp_25_58, label while.body_59, label while.exit_59 
    bnez    a5, .while.body_59
    j       .while.exit_59
                    #      label while.body_59: 
.while.body_59:
                    #      new_var temp_26_61:Array:i32:[Some(1005_0)] 
                    #      temp_26_61 = load *parent_0:ptr->i32 
                    #   load label parent as ptr to reg
    la      s1, parent
                    #occupy reg s1 with *parent_0
    lw      s2,0(s1)
                    #      new_var temp_27_61:ptr->i32 
                    #      new_var temp_28_61:i32 
                    #      temp_27_61 = getelementptr temp_26_61:Array:i32:[Some(1005_0)] [Some(i_39)] 
    li      s3, 0
    li      s4, 1
    add     s3,s3,s2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_28_61 = load temp_27_61:ptr->i32 
    lw      s5,0(s3)
                    #      new_var temp_29_61:i1 
                    #      temp_29_61 = icmp i32 Eq temp_28_61, i_39 
    xor     s6,s5,a7
    seqz    s6, s6
                    #      br i1 temp_29_61, label branch_true_62, label branch_false_62 
    bnez    s6, .branch_true_62
    j       .branch_false_62
                    #      label branch_true_62: 
.branch_true_62:
                    #      new_var temp_30_61:i32 
                    #      temp_30_61 = Add i32 clusters_39, 1_0 
    li      s1, 1
    add     s4,a3,s1
                    #      clusters_39 = i32 temp_30_61 
    mv      a3, s4
                    #      jump label: branch_false_62 
    sw      s4,4(sp)
    j       .branch_false_62
                    #      label branch_false_62: 
.branch_false_62:
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_31_60:i32 
                    #      temp_31_60 = Add i32 i_39, 1_0 
    li      s1, 1
    add     s4,a7,s1
                    #      i_39 = i32 temp_31_60 
    mv      a7, s4
                    #      jump label: while.head_59 
    li      a5, 4047
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s2, 4040
    add     s2,sp,s2
    sw      s2,0(s2)
    sw      s4,0(sp)
    sw      s5,12(sp)
    sd      s3,16(sp)
    sb      s6,11(sp)
    j       .while.head_59
                    #      label while.exit_59: 
.while.exit_59:
                    #       Call void putint_0(clusters_39) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 4100
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a3
                    #arg load ended
    call    putint
                    #      ret 0_0 
    li      a0, 4120
    add     a0,sp,a0
    ld      ra,0(a0)
    li      s1, 4112
    add     s1,sp,s1
    ld      s0,0(s1)
    li      a0, 4120
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    li      s2, 4128
    li      s2, 4128
    add     sp,s2,sp
    ret
.section        .data
    .align 4
    .globl parent
                    #      global Array:i32:[Some(1005_0)] parent_0 
    .type parent,@object
parent:
    .zero 4020
    .align 4
    .globl maxN
                    #      global i32 maxN_0 
    .type maxN,@object
maxN:
    .word 1005
