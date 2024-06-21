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
                    #      Define is_clique_0 [num_20] -> is_clique_ret_0 
    .globl is_clique
    .type is_clique,@function
is_clique:
                    #mem layout:|ra_is_clique:8|s0_is_clique:8|num:4|i:4|temp_0:1|none:3|temp_1:4|j:4|temp_2:1|none:3|temp_3:120|temp_4:8|temp_5:4|temp_6:120|none:4|temp_7:8|temp_8:4|temp_9:3600|none:4|temp_10:8|temp_11:4|temp_12:1|none:3|temp_13:4|temp_14:4
    li      a1, -3936
    li      a1, -3936
    add     sp,a1,sp
    li      a2, 3928
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 3920
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 3936
    li      a4, 3936
    add     s0,a4,sp
                    #      alloc i32 i_22 
                    #      alloc i1 temp_0_24 
                    #      alloc i32 temp_1_26 
                    #      alloc i32 j_26 
                    #      alloc i1 temp_2_28 
                    #      alloc Array:i32:[Some(30_0)] temp_3_31 
                    #      alloc ptr->i32 temp_4_31 
                    #      alloc i32 temp_5_31 
                    #      alloc Array:i32:[Some(30_0)] temp_6_31 
                    #      alloc ptr->i32 temp_7_31 
                    #      alloc i32 temp_8_31 
                    #      alloc Array:i32:[Some(30_0), Some(30_0)] temp_9_31 
                    #      alloc ptr->i32 temp_10_31 
                    #      alloc i32 temp_11_31 
                    #      alloc i1 temp_12_31 
                    #      alloc i32 temp_13_30 
                    #      alloc i32 temp_14_26 
                    #      label L6_0: 
.L6_0:
                    #      i_22 = i32 1_0 
    li      a5, 1
                    #      jump label: while.head_25 
    j       .while.head_25
                    #      label while.head_25: 
.while.head_25:
                    #      new_var temp_0_24:i1 
                    #      temp_0_24 = icmp i32 Slt i_22, num_20 
    slt     a1,a5,a0
                    #      br i1 temp_0_24, label while.body_25, label while.exit_25 
    bnez    a1, .while.body_25
    j       .while.exit_25
                    #      label while.body_25: 
.while.body_25:
                    #      new_var temp_1_26:i32 
                    #      temp_1_26 = Add i32 i_22, 1_0 
    li      a2, 1
    add     a3,a5,a2
                    #      j_26 = i32 temp_1_26 
    mv      a4, a3
                    #      jump label: while.head_29 
    j       .while.head_29
                    #      label while.head_29: 
.while.head_29:
                    #      new_var temp_2_28:i1 
                    #      temp_2_28 = icmp i32 Slt j_26, num_20 
    slt     a2,a4,a0
                    #      br i1 temp_2_28, label while.body_29, label while.exit_29 
    bnez    a2, .while.body_29
    j       .while.exit_29
                    #      label while.body_29: 
.while.body_29:
                    #      new_var temp_3_31:Array:i32:[Some(30_0)] 
                    #      temp_3_31 = load *store_0:ptr->i32 
                    #   load label store as ptr to reg
    la      a6, store
                    #occupy reg a6 with *store_0
    lw      a7,0(a6)
                    #      new_var temp_4_31:ptr->i32 
                    #      new_var temp_5_31:i32 
                    #      temp_4_31 = getelementptr temp_3_31:Array:i32:[Some(30_0)] [Some(j_26)] 
    li      s1, 0
    li      s2, 1
    add     s1,s1,a7
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_5_31 = load temp_4_31:ptr->i32 
    lw      s3,0(s1)
                    #      new_var temp_6_31:Array:i32:[Some(30_0)] 
                    #      temp_6_31 = load *store_0:ptr->i32 
                    #   load label store as ptr to reg
    la      s4, store
                    #occupy reg s4 with *store_0
    lw      s5,0(s4)
                    #      new_var temp_7_31:ptr->i32 
                    #      new_var temp_8_31:i32 
                    #      temp_7_31 = getelementptr temp_6_31:Array:i32:[Some(30_0)] [Some(i_22)] 
    li      s6, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_8_31 = load temp_7_31:ptr->i32 
    lw      s7,0(s6)
                    #      new_var temp_9_31:Array:i32:[Some(30_0), Some(30_0)] 
                    #      temp_9_31 = load *graph_0:ptr->Array:i32:[Some(30_0)] 
                    #   load label graph as ptr to reg
    la      s8, graph
                    #occupy reg s8 with *graph_0
    lw      s9,0(s8)
                    #      new_var temp_10_31:ptr->i32 
                    #      new_var temp_11_31:i32 
                    #      temp_10_31 = getelementptr temp_9_31:Array:i32:[Some(30_0), Some(30_0)] [Some(temp_8_31), Some(temp_5_31)] 
    li      s10, 0
    li      s11, 30
    add     s10,s10,s9
                    #found literal reg Some(s2) already exist with 1_0
    add     s10,s10,s9
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_11_31 = load temp_10_31:ptr->i32 
    lw      a6,0(s10)
                    #      new_var temp_12_31:i1 
                    #      temp_12_31 = icmp i32 Eq temp_11_31, 0_0 
    li      s2, 0
    xor     s4,a6,s2
    seqz    s4, s4
                    #      br i1 temp_12_31, label branch_true_32, label branch_false_32 
    bnez    s4, .branch_true_32
    j       .branch_false_32
                    #      label branch_true_32: 
.branch_true_32:
                    #      ret 0_0 
    li      s2, 3928
    add     s2,sp,s2
    ld      ra,0(s2)
    li      s8, 3920
    add     s8,sp,s8
    ld      s0,0(s8)
    li      a0, 3916
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      s11, 3936
    li      s11, 3936
    add     sp,s11,sp
    ret
                    #      label branch_false_32: 
.branch_false_32:
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_13_30:i32 
                    #      temp_13_30 = Add i32 j_26, 1_0 
    li      s2, 1
    add     s8,a4,s2
                    #      j_26 = i32 temp_13_30 
    mv      a4, s8
                    #      jump label: while.head_29 
    li      s7, 3628
    add     s7,sp,s7
    sw      s7,0(s7)
    sb      s4,11(sp)
    sw      s8,4(sp)
    li      s6, 3632
    add     s6,sp,s6
    sd      s6,0(s6)
    li      s9, 3624
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s5, 3760
    add     s5,sp,s5
    sw      s5,0(s5)
    sd      s10,16(sp)
    li      s3, 3764
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s1, 3768
    add     s1,sp,s1
    sd      s1,0(s1)
    sw      a6,12(sp)
    li      a7, 3892
    add     a7,sp,a7
    sw      a7,0(a7)
    li      a2, 3899
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_29
                    #      label while.exit_29: 
.while.exit_29:
                    #      new_var temp_14_26:i32 
                    #      temp_14_26 = Add i32 i_22, 1_0 
    li      a6, 1
    add     a7,a5,a6
                    #      i_22 = i32 temp_14_26 
    mv      a5, a7
                    #      jump label: while.head_25 
    li      a1, 3911
    add     a1,sp,a1
    sb      a1,0(a1)
    li      a3, 3904
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a4, 3900
    add     a4,sp,a4
    sw      a4,0(a4)
    sw      a7,0(sp)
    li      a2, 3899
    add     a2,sp,a2
    sb      a2,0(a2)
    j       .while.head_25
                    #      label while.exit_25: 
.while.exit_25:
                    #      ret 1_0 
    li      a2, 3928
    add     a2,sp,a2
    ld      ra,0(a2)
    li      a3, 3920
    add     a3,sp,a3
    ld      s0,0(a3)
    li      a0, 3916
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a4, 3936
    li      a4, 3936
    add     sp,a4,sp
    ret
                    #      Define maxCliques_0 [i_37, k_37] -> maxCliques_ret_0 
    .globl maxCliques
    .type maxCliques,@function
maxCliques:
                    #mem layout:|ra_maxCliques:8|s0_maxCliques:8|i:4|k:4|max_:4|j:4|temp_15:4|temp_16:1|none:3|temp_17:8|temp_18:4|temp_19:4|temp_20:1|temp_21:1|none:2|temp_22:4|temp_23:4|tmp:4|temp_24:1|none:3|temp_25:4
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
                    #      alloc i32 max__39 
                    #      alloc i32 j_39 
                    #      alloc i32 temp_15_43 
                    #      alloc i1 temp_16_43 
                    #      alloc ptr->i32 temp_17_45 
                    #      alloc i32 temp_18_47 
                    #      alloc i32 temp_19_47 
                    #      alloc i1 temp_20_794 
                    #      alloc i1 temp_21_50 
                    #      alloc i32 temp_22_49 
                    #      alloc i32 temp_23_49 
                    #      alloc i32 tmp_49 
                    #      alloc i1 temp_24_54 
                    #      alloc i32 temp_25_45 
                    #      label L1_0: 
.L1_0:
                    #      max__39 = i32 0_0 
    li      a2, 0
                    #      j_39 = i32 1_0 
    li      a3, 1
                    #      i_37 = i32 1_0 
                    #      jump label: while.head_44 
    j       .while.head_44
                    #      label while.head_44: 
.while.head_44:
                    #      new_var temp_15_43:i32 
                    #      temp_15_43 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a4, n
                    #occupy reg a4 with *n_0
    lw      a5,0(a4)
                    #      new_var temp_16_43:i1 
                    #      temp_16_43 = icmp i32 Sle j_39, temp_15_43 
    slt     a6,a5,a3
    xori    a6,a6,1
                    #      br i1 temp_16_43, label while.body_44, label while.exit_44 
    bnez    a6, .while.body_44
    j       .while.exit_44
                    #      label while.body_44: 
.while.body_44:
                    #      new_var temp_17_45:ptr->i32 
                    #      temp_17_45 = getelementptr store_0:Array:i32:[Some(30_0)] [Some(k_37)] 
    li      a4, 0
    li      a7, 1
    mul     s1,a7,a1
                    #occupy reg s1 with store_0
    add     a4,a4,s1
    slli a4,a4,2
    add     a4,a4,a4
                    #      store j_39:i32 temp_17_45:ptr->i32 
    sd      a3,0(a4)
                    #      mu store_0:115 
                    #      store_0 = chi store_0:115 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_18_47:i32 
                    #      temp_18_47 = Add i32 k_37, 1_0 
    li      a7, 1
    add     s1,a1,a7
                    #      new_var temp_19_47:i32 
                    #      temp_19_47 =  Call i32 is_clique_0(temp_18_47) 
                    #saved register dumping to mem
    sw      s1,28(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,60(sp)
    lw      a0,28(sp)
                    #arg load ended
    call    is_clique
    sw      a0,24(sp)
                    #      new_var temp_20_794:i1 
                    #      temp_20_794 = icmp i32 Ne temp_19_47, 0_0 
    li      s1, 0
    xor     s2,a0,s1
    snez    s2, s2
                    #      br i1 temp_20_794, label branch_true_48, label branch_false_48 
    bnez    s2, .branch_true_48
    j       .branch_false_48
                    #      label branch_true_48: 
.branch_true_48:
                    #      new_var temp_21_50:i1 
                    #      temp_21_50 = icmp i32 Sgt k_37, max__39 
    slt     a7,a2,a1
                    #      br i1 temp_21_50, label branch_true_51, label branch_false_51 
    bnez    a7, .branch_true_51
    j       .branch_false_51
                    #      label branch_true_51: 
.branch_true_51:
                    #      max__39 = i32 k_37 
    mv      a2, a1
                    #      jump label: branch_false_51 
    j       .branch_false_51
                    #      label branch_false_51: 
.branch_false_51:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_22_49:i32 
                    #      temp_22_49 = Add i32 k_37, 1_0 
    li      s1, 1
    add     s3,a1,s1
                    #      new_var temp_23_49:i32 
                    #      temp_23_49 =  Call i32 maxCliques_0(j_39, temp_22_49) 
                    #saved register dumping to mem
    sb      s2,23(sp)
    sw      s3,16(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,24(sp)
    mv      a0, a3
    sw      a1,56(sp)
    lw      a1,16(sp)
                    #arg load ended
    call    maxCliques
    sw      a0,12(sp)
                    #      tmp_49 = i32 temp_23_49 
    mv      a1, a0
                    #      jump label: L4_0 
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_24_54:i1 
                    #      temp_24_54 = icmp i32 Sgt tmp_49, max__39 
    slt     s1,a2,a1
                    #      br i1 temp_24_54, label branch_true_55, label branch_false_55 
    bnez    s1, .branch_true_55
    j       .branch_false_55
                    #      label branch_true_55: 
.branch_true_55:
                    #      max__39 = i32 tmp_49 
    mv      a2, a1
                    #      jump label: branch_false_55 
    j       .branch_false_55
                    #      label branch_false_55: 
.branch_false_55:
                    #      label branch_false_48: 
.branch_false_48:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_25_45:i32 
                    #      temp_25_45 = Add i32 j_39, 1_0 
    li      a7, 1
    add     s1,a3,a7
                    #      j_39 = i32 temp_25_45 
    mv      a3, s1
                    #      jump label: while.head_44 
    sw      a5,44(sp)
    sb      a6,43(sp)
    sd      a4,32(sp)
    sw      s1,0(sp)
    sb      s2,23(sp)
    sw      a0,24(sp)
    lw      a0,60(sp)
    j       .while.head_44
                    #      label while.exit_44: 
.while.exit_44:
                    #      ret max__39 
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a2,52(sp)
    sw      a0,60(sp)
    addi    sp,sp,80
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_26:4|temp_27:4|edges:4800|i:4|temp_28:4|temp_29:1|none:7|temp_30:8|temp_31:4|none:4|temp_32:8|temp_33:4|temp_34:4|temp_35:4|temp_36:1|none:3|temp_37:8|temp_38:4|none:4|temp_39:8|temp_40:4|none:4|temp_41:8|temp_42:8|temp_43:4|none:4|temp_44:8|temp_45:4|none:4|temp_46:8|temp_47:4|temp_48:4
    li      a0, -4968
    li      a0, -4968
    add     sp,a0,sp
    li      a1, 4960
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 4952
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 4968
    li      a3, 4968
    add     s0,a3,sp
                    #      alloc i32 temp_26_60 
                    #      alloc i32 temp_27_60 
                    #      alloc Array:i32:[Some(600_0), Some(2_0)] edges_60 
                    #      alloc i32 i_60 
                    #      alloc i32 temp_28_65 
                    #      alloc i1 temp_29_65 
                    #      alloc ptr->i32 temp_30_67 
                    #      alloc i32 temp_31_67 
                    #      alloc ptr->i32 temp_32_67 
                    #      alloc i32 temp_33_67 
                    #      alloc i32 temp_34_67 
                    #      alloc i32 temp_35_72 
                    #      alloc i1 temp_36_72 
                    #      alloc ptr->i32 temp_37_74 
                    #      alloc i32 temp_38_74 
                    #      alloc ptr->i32 temp_39_74 
                    #      alloc i32 temp_40_74 
                    #      alloc ptr->i32 temp_41_74 
                    #      alloc ptr->i32 temp_42_74 
                    #      alloc i32 temp_43_74 
                    #      alloc ptr->i32 temp_44_74 
                    #      alloc i32 temp_45_74 
                    #      alloc ptr->i32 temp_46_74 
                    #      alloc i32 temp_47_74 
                    #      alloc i32 temp_48_60 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_26_60:i32 
                    #      temp_26_60 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 4948
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      store temp_26_60:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a4, n
                    #occupy reg a4 with *n_0
    sd      a0,0(a4)
                    #      new_var temp_27_60:i32 
                    #      temp_27_60 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 4948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a5, 4944
    add     a5,sp,a5
    sw      a0,0(a5)
                    #      store temp_27_60:i32 *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a6, m
                    #occupy reg a6 with *m_0
    sd      a0,0(a6)
                    #      new_var edges_60:Array:i32:[Some(600_0), Some(2_0)] 
                    #      i_60 = i32 0_0 
    li      a7, 0
                    #      jump label: while.head_66 
    j       .while.head_66
                    #      label while.head_66: 
.while.head_66:
                    #      new_var temp_28_65:i32 
                    #      temp_28_65 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a1, m
                    #occupy reg a1 with *m_0
    lw      a2,0(a1)
                    #      new_var temp_29_65:i1 
                    #      temp_29_65 = icmp i32 Slt i_60, temp_28_65 
    slt     a3,a7,a2
                    #      br i1 temp_29_65, label while.body_66, label while.exit_66 
    bnez    a3, .while.body_66
    j       .while.exit_66
                    #      label while.body_66: 
.while.body_66:
                    #      new_var temp_30_67:ptr->i32 
                    #      temp_30_67 = getelementptr edges_60:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60), Some(0_0)] 
    li      a1, 0
    li      a4, 2
    mul     a5,a4,a7
    add     a1,a1,a5
    li      a6, 1
    li      s1, 0
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      new_var temp_31_67:i32 
                    #      temp_31_67 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 4944
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a0,116(sp)
                    #      store temp_31_67:i32 temp_30_67:ptr->i32 
    sd      a0,0(a1)
                    #      mu edges_60:187 
                    #      edges_60 = chi edges_60:187 
                    #      new_var temp_32_67:ptr->i32 
                    #      temp_32_67 = getelementptr edges_60:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60), Some(1_0)] 
    li      s1, 0
                    #found literal reg Some(a4) already exist with 2_0
    add     s1,s1,a5
                    #found literal reg Some(a6) already exist with 1_0
    li      s2, 1
    add     s1,s1,a5
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      new_var temp_33_67:i32 
                    #      temp_33_67 =  Call i32 getint_0() 
                    #saved register dumping to mem
    sd      s1,104(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,116(sp)
    sw      a0,100(sp)
                    #      store temp_33_67:i32 temp_32_67:ptr->i32 
    sd      a0,0(s1)
                    #      mu edges_60:196 
                    #      edges_60 = chi edges_60:196 
                    #      new_var temp_34_67:i32 
                    #      temp_34_67 = Add i32 i_60, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    add     s2,a7,a6
                    #      i_60 = i32 temp_34_67 
    mv      a7, s2
                    #      jump label: while.head_66 
    sw      s2,96(sp)
    sb      a3,135(sp)
    sd      a1,120(sp)
    li      a5, 4940
    add     a5,sp,a5
    sw      a5,0(a5)
    sd      s1,104(sp)
    sw      a2,136(sp)
    sw      a0,100(sp)
    sw      a7,140(sp)
    li      a7, 4944
    add     a7,sp,a7
    lw      a0,0(a7)
    j       .while.head_66
                    #      label while.exit_66: 
.while.exit_66:
                    #      i_60 = i32 0_0 
                    #      jump label: while.head_73 
    j       .while.head_73
                    #      label while.head_73: 
.while.head_73:
                    #      new_var temp_35_72:i32 
                    #      temp_35_72 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a1, m
                    #occupy reg a1 with *m_0
    lw      a4,0(a1)
                    #      new_var temp_36_72:i1 
                    #      temp_36_72 = icmp i32 Slt i_60, temp_35_72 
    slt     a5,a7,a4
                    #      br i1 temp_36_72, label while.body_73, label while.exit_73 
    bnez    a5, .while.body_73
    j       .while.exit_73
                    #      label while.body_73: 
.while.body_73:
                    #      new_var temp_37_74:ptr->i32 
                    #      new_var temp_38_74:i32 
                    #      temp_37_74 = getelementptr edges_60:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60), Some(1_0)] 
    li      a1, 0
    li      a6, 2
    mul     s1,a6,a7
    add     a1,a1,s1
    li      s2, 1
    li      s3, 1
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_38_74 = load temp_37_74:ptr->i32 
    lw      s4,0(a1)
                    #      new_var temp_39_74:ptr->i32 
                    #      new_var temp_40_74:i32 
                    #      temp_39_74 = getelementptr edges_60:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60), Some(0_0)] 
    li      s5, 0
                    #found literal reg Some(a6) already exist with 2_0
    add     s5,s5,s1
                    #found literal reg Some(s2) already exist with 1_0
    li      s6, 0
    add     s5,s5,s1
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_40_74 = load temp_39_74:ptr->i32 
    lw      s7,0(s5)
                    #      new_var temp_41_74:ptr->i32 
                    #      temp_41_74 = getelementptr graph_0:Array:i32:[Some(30_0), Some(30_0)] [Some(temp_40_74), Some(temp_38_74)] 
    li      s8, 0
    li      s9, 30
    mul     s10,s9,s7
                    #occupy reg s10 with graph_0
    add     s8,s8,s10
                    #found literal reg Some(s2) already exist with 1_0
    mul     s11,s2,s4
                    #occupy reg s11 with graph_0
    add     s8,s8,s11
    slli s8,s8,2
    add     s8,s8,s8
                    #      store 1_0:i32 temp_41_74:ptr->i32 
                    #found literal reg Some(s2) already exist with 1_0
    sd      s2,0(s8)
                    #      mu graph_0:230 
                    #      graph_0 = chi graph_0:230 
                    #      new_var temp_42_74:ptr->i32 
                    #      new_var temp_43_74:i32 
                    #      temp_42_74 = getelementptr edges_60:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60), Some(0_0)] 
    li      a6, 0
    li      s2, 2
    add     a6,a6,s1
                    #found literal reg Some(s3) already exist with 1_0
                    #found literal reg Some(s6) already exist with 0_0
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_43_74 = load temp_42_74:ptr->i32 
    lw      s2,0(a6)
                    #      new_var temp_44_74:ptr->i32 
                    #      new_var temp_45_74:i32 
                    #      temp_44_74 = getelementptr edges_60:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60), Some(1_0)] 
    li      s3, 0
    li      s6, 2
    add     s3,s3,s1
    li      s6, 1
    li      s9, 1
    add     s3,s3,s1
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_45_74 = load temp_44_74:ptr->i32 
    lw      s6,0(s3)
                    #      new_var temp_46_74:ptr->i32 
                    #      temp_46_74 = getelementptr graph_0:Array:i32:[Some(30_0), Some(30_0)] [Some(temp_45_74), Some(temp_43_74)] 
    li      s9, 0
    li      s10, 30
    mul     s11,s10,s6
                    #occupy reg s11 with graph_0
    add     s9,s9,s11
    li      s10, 1
    mul     s11,s10,s2
                    #occupy reg s11 with graph_0
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,s9
                    #      store 1_0:i32 temp_46_74:ptr->i32 
                    #found literal reg Some(s10) already exist with 1_0
    sd      s10,0(s9)
                    #      mu graph_0:248 
                    #      graph_0 = chi graph_0:248 
                    #      new_var temp_47_74:i32 
                    #      temp_47_74 = Add i32 i_60, 1_0 
                    #found literal reg Some(s10) already exist with 1_0
    add     s11,a7,s10
                    #      i_60 = i32 temp_47_74 
    mv      a7, s11
                    #      jump label: while.head_73 
    sd      a6,40(sp)
    sw      s2,36(sp)
    sd      s5,64(sp)
    sw      s6,20(sp)
    sw      s7,60(sp)
    sd      a1,80(sp)
    sd      s9,8(sp)
    sw      a4,92(sp)
    sb      a5,91(sp)
    sw      s4,76(sp)
    sd      s8,48(sp)
    li      s1, 4940
    add     s1,sp,s1
    sw      s1,0(s1)
    sd      s3,24(sp)
    sw      s11,4(sp)
    j       .while.head_73
                    #      label while.exit_73: 
.while.exit_73:
                    #      new_var temp_48_60:i32 
                    #      temp_48_60 =  Call i32 maxCliques_0(0_0, 1_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 4944
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 1
                    #arg load ended
    call    maxCliques
    sw      a0,0(sp)
                    #       Call void putint_0(temp_48_60) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,0(sp)
    lw      a0,0(sp)
                    #arg load ended
    call    putint
                    #      ret 0_0 
    li      a0, 4960
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 4952
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 4960
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    li      a6, 4968
    li      a6, 4968
    add     sp,a6,sp
    ret
.section        .data
    .align 4
    .globl graph
                    #      global Array:i32:[Some(30_0), Some(30_0)] graph_0 
    .type graph,@object
graph:
    .zero 3600
    .align 4
    .globl m
                    #      global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl store
                    #      global Array:i32:[Some(30_0)] store_0 
    .type store,@object
store:
    .zero 120
    .align 4
    .globl maxM
                    #      global i32 maxM_0 
    .type maxM,@object
maxM:
    .word 600
    .align 4
    .globl maxN
                    #      global i32 maxN_0 
    .type maxN,@object
maxN:
    .word 30
