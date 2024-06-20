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
                    #      Define init_0 [n_18] -> init_ret_0 
    .globl init
    .type init,@function
init:
                    #mem layout:|ra_init:8|s0_init:8|n:4|i:4|temp_0:4|temp_1:4|temp_2:1|none:7|temp_3:8|temp_4:4|none:4
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      alloc i32 i_20 
                    #      alloc i32 temp_0_22 
                    #      alloc i32 temp_1_22 
                    #      alloc i1 temp_2_22 
                    #      alloc ptr->i32 temp_3_24 
                    #      alloc i32 temp_4_24 
                    #      label L14_0: 
.L14_0:
                    #      i_20 = i32 1_0 
    li      a1, 1
                    #      jump label: while.head_23 
    j       .while.head_23
                    #      label while.head_23: 
.while.head_23:
                    #      new_var temp_0_22:i32 
                    #      temp_0_22 = Mul i32 n_18, n_18 
    mul     a2,a0,a0
                    #      new_var temp_1_22:i32 
                    #      temp_1_22 = Add i32 temp_0_22, 1_0 
    li      a3, 1
    add     a4,a2,a3
                    #      new_var temp_2_22:i1 
                    #      temp_2_22 = icmp i32 Sle i_20, temp_1_22 
    slt     a5,a4,a1
    xori    a5,a5,1
                    #      br i1 temp_2_22, label while.body_23, label while.exit_23 
    bnez    a5, .while.body_23
    j       .while.exit_23
                    #      label while.body_23: 
.while.body_23:
                    #      new_var temp_3_24:ptr->i32 
                    #      temp_3_24 = getelementptr array_0:Array:i32:[Some(110_0)] [Some(i_20)] 
    li      a6, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     a7,a3,a1
                    #occupy reg a7 with array_0
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,a6
                    #      store -1_0:i32 temp_3_24:ptr->i32 
    li      s1, -1
    sd      s1,0(a6)
                    #      mu array_0:41 
                    #      array_0 = chi array_0:41 
                    #      new_var temp_4_24:i32 
                    #      temp_4_24 = Add i32 i_20, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     s2,a1,a3
                    #      i_20 = i32 temp_4_24 
                    #      jump label: while.head_23 
    j       .while.head_23
                    #      label while.exit_23: 
.while.exit_23:
                    #      Define findfa_0 [a_27] -> findfa_ret_0 
    .globl findfa
    .type findfa,@function
findfa:
                    #mem layout:|ra_findfa:8|s0_findfa:8|a:4|temp_5:440|none:4|temp_6:8|temp_7:4|temp_8:1|none:3|temp_9:8|temp_10:440|temp_11:8|temp_12:4|temp_13:4|temp_14:440|temp_15:8|temp_16:4|none:4
    addi    sp,sp,-1400
    sd      ra,1392(sp)
    sd      s0,1384(sp)
    addi    s0,sp,1400
                    #      alloc Array:i32:[Some(110_0)] temp_5_30 
                    #      alloc ptr->i32 temp_6_30 
                    #      alloc i32 temp_7_30 
                    #      alloc i1 temp_8_30 
                    #      alloc ptr->i32 temp_9_33 
                    #      alloc Array:i32:[Some(110_0)] temp_10_33 
                    #      alloc ptr->i32 temp_11_33 
                    #      alloc i32 temp_12_33 
                    #      alloc i32 temp_13_33 
                    #      alloc Array:i32:[Some(110_0)] temp_14_33 
                    #      alloc ptr->i32 temp_15_33 
                    #      alloc i32 temp_16_33 
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_5_30:Array:i32:[Some(110_0)] 
                    #      temp_5_30 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      a1, array
                    #occupy reg a1 with *array_0
    lw      a2,0(a1)
                    #occupy reg a2 with array_0
                    #      new_var temp_6_30:ptr->i32 
                    #      new_var temp_7_30:i32 
                    #      temp_6_30 = getelementptr temp_5_30:Array:i32:[Some(110_0)] [Some(a_27)] 
    li      a3, 0
    li      a4, 1
    mul     a5,a4,a0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_7_30 = load temp_6_30:ptr->i32 
                    #      new_var temp_8_30:i1 
                    #      temp_8_30 = icmp i32 Eq temp_7_30, a_27 
    xor     a7,a6,a0
    seqz    a7, a7
                    #      br i1 temp_8_30, label branch_true_31, label branch_false_31 
    bnez    a7, .branch_true_31
    j       .branch_false_31
                    #      label branch_true_31: 
.branch_true_31:
                    #      ret a_27 
    ld      ra,1392(sp)
    ld      s0,1384(sp)
    sw      a0,1380(sp)
    addi    sp,sp,1400
    ret
                    #      label branch_false_31: 
.branch_false_31:
                    #      new_var temp_9_33:ptr->i32 
                    #      temp_9_33 = getelementptr array_0:Array:i32:[Some(110_0)] [Some(a_27)] 
    li      s1, 0
                    #found literal reg Some(a4) already exist with 1_0
    mul     s2,a4,a0
                    #occupy reg s2 with array_0
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
                    #      new_var temp_10_33:Array:i32:[Some(110_0)] 
                    #      temp_10_33 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s3, array
                    #occupy reg s3 with *array_0
    lw      s4,0(s3)
                    #occupy reg s4 with array_0
                    #      new_var temp_11_33:ptr->i32 
                    #      new_var temp_12_33:i32 
                    #      temp_11_33 = getelementptr temp_10_33:Array:i32:[Some(110_0)] [Some(a_27)] 
    li      s5, 0
                    #found literal reg Some(a4) already exist with 1_0
    mul     s6,a4,a0
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_12_33 = load temp_11_33:ptr->i32 
                    #      new_var temp_13_33:i32 
                    #      temp_13_33 =  Call i32 findfa_0(temp_12_33) 
                    #saved register dumping to mem
    sd      s1,912(sp)
    sd      s5,464(sp)
    sw      s6,908(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1380(sp)
                    #arg load ended
    call    findfa
    sw      a0,456(sp)
                    #      store temp_13_33:i32 temp_9_33:ptr->i32 
    sd      a0,0(s1)
                    #      mu array_0:80 
                    #      array_0 = chi array_0:80 
                    #      new_var temp_14_33:Array:i32:[Some(110_0)] 
                    #      temp_14_33 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s2, array
                    #occupy reg s2 with *array_0
    lw      s3,0(s2)
                    #occupy reg s3 with array_0
                    #      new_var temp_15_33:ptr->i32 
                    #      new_var temp_16_33:i32 
                    #      temp_15_33 = getelementptr temp_14_33:Array:i32:[Some(110_0)] [Some(a_27)] 
    li      s4, 0
                    #found literal reg Some(a4) already exist with 1_0
    mul     s6,a4,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_16_33 = load temp_15_33:ptr->i32 
                    #      ret temp_16_33 
    ld      ra,1392(sp)
    ld      s0,1384(sp)
    sw      a0,456(sp)
    addi    sp,sp,1400
    ret
                    #      label L13_0: 
.L13_0:
                    #      Define mmerge_0 [a_36, b_36] -> mmerge_ret_0 
    .globl mmerge
    .type mmerge,@function
mmerge:
                    #mem layout:|ra_mmerge:8|s0_mmerge:8|a:4|b:4|temp_17:4|m:4|temp_18:4|n:4|temp_19:1|none:7|temp_20:8
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      alloc i32 temp_17_38 
                    #      alloc i32 m_38 
                    #      alloc i32 temp_18_38 
                    #      alloc i32 n_38 
                    #      alloc i1 temp_19_41 
                    #      alloc ptr->i32 temp_20_41 
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_17_38:i32 
                    #      temp_17_38 =  Call i32 findfa_0(a_36) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,36(sp)
                    #arg load ended
    call    findfa
    sw      a0,28(sp)
                    #      m_38 = i32 temp_17_38 
    mv      a2, a0
                    #      new_var temp_18_38:i32 
                    #      temp_18_38 =  Call i32 findfa_0(b_36) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a1,32(sp)
    sw      a0,28(sp)
                    #arg load ended
    call    findfa
    sw      a0,20(sp)
                    #      n_38 = i32 temp_18_38 
    mv      a1, a0
                    #      jump label: L11_0 
    j       .L11_0
                    #      label L11_0: 
.L11_0:
                    #      new_var temp_19_41:i1 
                    #      temp_19_41 = icmp i32 Ne m_38, n_38 
    xor     a3,a2,a1
    snez    a3, a3
                    #      br i1 temp_19_41, label branch_true_42, label branch_false_42 
    bnez    a3, .branch_true_42
    j       .branch_false_42
                    #      label branch_true_42: 
.branch_true_42:
                    #      new_var temp_20_41:ptr->i32 
                    #      temp_20_41 = getelementptr array_0:Array:i32:[Some(110_0)] [Some(m_38)] 
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a2
                    #occupy reg a6 with array_0
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,a4
                    #      store n_38:i32 temp_20_41:ptr->i32 
    sd      a1,0(a4)
                    #      mu array_0:113 
                    #      array_0 = chi array_0:113 
                    #      jump label: branch_false_42 
    j       .branch_false_42
                    #      label branch_false_42: 
.branch_false_42:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|t:4|m:4|a:4|b:4|temp_21:1|none:3|temp_22:4|i:4|flag:4|temp_23:4|temp_24:4|temp_25:4|temp_26:4|k:4|temp_27:1|none:3|temp_28:4|temp_29:4|temp_30:1|temp_31:1|none:2|temp_32:4|temp_33:4|temp_34:4|temp_35:4|loc:4|temp_36:8|temp_37:1|none:7|temp_38:8|temp_39:4|temp_40:1|none:3|temp_41:8|temp_42:4|temp_43:440|none:4|temp_44:8|temp_45:4|temp_46:1|none:3|temp_47:4|temp_48:1|temp_49:1|none:2|temp_50:4|temp_51:4|temp_52:440|temp_53:8|temp_54:4|temp_55:1|temp_56:1|temp_57:1|none:1|temp_58:4|temp_59:4|temp_60:4|temp_61:440|none:4|temp_62:8|temp_63:4|temp_64:1|temp_65:1|temp_66:1|none:1|temp_67:4|temp_68:4|temp_69:4|temp_70:4|temp_71:440|temp_72:8|temp_73:4|temp_74:1|temp_75:1|temp_76:1|none:1|temp_77:4|temp_78:4|temp_79:4|temp_80:4|temp_81:1|none:3|temp_82:440|none:4|temp_83:8|temp_84:4|temp_85:1|temp_86:1|none:2|temp_87:440|temp_88:8|temp_89:4|temp_90:1|temp_91:1|none:2|temp_92:4|tmp:4|temp_93:4|temp_94:1|temp_95:1|none:2
    li      a0, -2976
    li      a0, -2976
    add     sp,a0,sp
    li      a1, 2968
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 2960
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 2976
    li      a3, 2976
    add     s0,a3,sp
                    #      alloc i32 t_45 
                    #      alloc i32 m_45 
                    #      alloc i32 a_45 
                    #      alloc i32 b_45 
                    #      alloc i1 temp_21_800 
                    #      alloc i32 temp_22_51 
                    #      alloc i32 i_51 
                    #      alloc i32 flag_51 
                    #      alloc i32 temp_23_51 
                    #      alloc i32 temp_24_51 
                    #      alloc i32 temp_25_51 
                    #      alloc i32 temp_26_51 
                    #      alloc i32 k_51 
                    #      alloc i1 temp_27_59 
                    #      alloc i32 temp_28_61 
                    #      alloc i32 temp_29_61 
                    #      alloc i1 temp_30_64 
                    #      alloc i1 temp_31_64 
                    #      alloc i32 temp_32_66 
                    #      alloc i32 temp_33_66 
                    #      alloc i32 temp_34_66 
                    #      alloc i32 temp_35_66 
                    #      alloc i32 loc_66 
                    #      alloc ptr->i32 temp_36_66 
                    #      alloc i1 temp_37_69 
                    #      alloc ptr->i32 temp_38_71 
                    #      alloc i32 temp_39_74 
                    #      alloc i1 temp_40_74 
                    #      alloc ptr->i32 temp_41_76 
                    #      alloc i32 temp_42_79 
                    #      alloc Array:i32:[Some(110_0)] temp_43_79 
                    #      alloc ptr->i32 temp_44_79 
                    #      alloc i32 temp_45_79 
                    #      alloc i1 temp_46_79 
                    #      alloc i32 temp_47_79 
                    #      alloc i1 temp_48_79 
                    #      alloc i1 temp_49_79 
                    #      alloc i32 temp_50_81 
                    #      alloc i32 temp_51_83 
                    #      alloc Array:i32:[Some(110_0)] temp_52_83 
                    #      alloc ptr->i32 temp_53_83 
                    #      alloc i32 temp_54_83 
                    #      alloc i1 temp_55_83 
                    #      alloc i1 temp_56_83 
                    #      alloc i1 temp_57_83 
                    #      alloc i32 temp_58_85 
                    #      alloc i32 temp_59_87 
                    #      alloc i32 temp_60_87 
                    #      alloc Array:i32:[Some(110_0)] temp_61_87 
                    #      alloc ptr->i32 temp_62_87 
                    #      alloc i32 temp_63_87 
                    #      alloc i1 temp_64_87 
                    #      alloc i1 temp_65_87 
                    #      alloc i1 temp_66_87 
                    #      alloc i32 temp_67_89 
                    #      alloc i32 temp_68_89 
                    #      alloc i32 temp_69_91 
                    #      alloc i32 temp_70_91 
                    #      alloc Array:i32:[Some(110_0)] temp_71_91 
                    #      alloc ptr->i32 temp_72_91 
                    #      alloc i32 temp_73_91 
                    #      alloc i1 temp_74_91 
                    #      alloc i1 temp_75_91 
                    #      alloc i1 temp_76_91 
                    #      alloc i32 temp_77_93 
                    #      alloc i32 temp_78_93 
                    #      alloc i32 temp_79_95 
                    #      alloc i32 temp_80_95 
                    #      alloc i1 temp_81_95 
                    #      alloc Array:i32:[Some(110_0)] temp_82_95 
                    #      alloc ptr->i32 temp_83_95 
                    #      alloc i32 temp_84_95 
                    #      alloc i1 temp_85_95 
                    #      alloc i1 temp_86_95 
                    #      alloc Array:i32:[Some(110_0)] temp_87_95 
                    #      alloc ptr->i32 temp_88_95 
                    #      alloc i32 temp_89_95 
                    #      alloc i1 temp_90_95 
                    #      alloc i1 temp_91_95 
                    #      alloc i32 temp_92_97 
                    #      alloc i32 tmp_97 
                    #      alloc i32 temp_93_61 
                    #      alloc i1 temp_94_103 
                    #      alloc i1 temp_95_103 
                    #      label L0_0: 
.L0_0:
                    #      new_var t_45:i32 
                    #      new_var m_45:i32 
                    #      new_var a_45:i32 
                    #      new_var b_45:i32 
                    #      t_45 = i32 1_0 
    li      a4, 1
                    #      jump label: while.head_50 
    j       .while.head_50
                    #      label while.head_50: 
.while.head_50:
                    #      new_var temp_21_800:i1 
                    #      temp_21_800 = icmp i32 Ne t_45, 0_0 
    li      a5, 0
    xor     a6,a4,a5
    snez    a6, a6
                    #      br i1 temp_21_800, label while.body_50, label while.exit_50 
    bnez    a6, .while.body_50
    j       .while.exit_50
                    #      label while.body_50: 
.while.body_50:
                    #      new_var temp_22_51:i32 
                    #      temp_22_51 = Sub i32 t_45, 1_0 
    li      a7, 1
    sub     s1,a4,a7
                    #      t_45 = i32 temp_22_51 
                    #      store 4_0:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s2, n
                    #occupy reg s2 with *n_0
    li      s3, 4
    sd      s3,0(s2)
                    #      m_45 = i32 10_0 
    li      s4, 10
                    #      i_51 = i32 0_0 
    li      s5, 0
                    #      flag_51 = i32 0_0 
    li      s6, 0
                    #      new_var temp_23_51:i32 
                    #      temp_23_51 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s7, n
                    #occupy reg s7 with *n_0
    lw      s8,0(s7)
                    #occupy reg s8 with n_0
                    #       Call void init_0(temp_23_51) 
                    #saved register dumping to mem
    li      s1, 2936
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 2952
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 2932
    add     s3,sp,s3
    sw      s5,0(s3)
    li      s4, 2928
    add     s4,sp,s4
    sw      s6,0(s4)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    init
                    #      new_var temp_24_51:i32 
                    #      temp_24_51 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    lw      s5,0(a0)
                    #occupy reg s5 with n_0
                    #      new_var temp_25_51:i32 
                    #      temp_25_51 = Mul i32 temp_24_51, temp_24_51 
    mul     s7,s6,s6
                    #      new_var temp_26_51:i32 
                    #      temp_26_51 = Add i32 temp_25_51, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    add     s8,s7,a7
                    #      k_51 = i32 temp_26_51 
    mv      s9, s8
                    #      jump label: while.head_60 
    j       .while.head_60
                    #      label while.head_60: 
.while.head_60:
                    #      new_var temp_27_59:i1 
                    #      temp_27_59 = icmp i32 Slt i_51, m_45 
    slt     a0,s10,s11
                    #      br i1 temp_27_59, label while.body_60, label while.exit_60 
    bnez    a0, .while.body_60
    j       .while.exit_60
                    #      label while.body_60: 
.while.body_60:
                    #      new_var temp_28_61:i32 
                    #      temp_28_61 =  Call i32 getint_0() 
                    #saved register dumping to mem
    li      s1, 2920
    add     s1,sp,s1
    sw      s6,0(s1)
    li      s2, 2916
    add     s2,sp,s2
    sw      s7,0(s2)
    li      s3, 2912
    add     s3,sp,s3
    sw      s8,0(s3)
    li      s4, 2908
    add     s4,sp,s4
    sw      s9,0(s4)
    li      s5, 2932
    add     s5,sp,s5
    sw      s10,0(s5)
    li      s6, 2952
    add     s6,sp,s6
    sw      s11,0(s6)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 2907
    add     a0,sp,a0
    sb      a0,0(a0)
    li      s7, 2900
    add     s7,sp,s7
    sw      a0,0(s7)
                    #      a_45 = i32 temp_28_61 
    mv      s8, a0
                    #      new_var temp_29_61:i32 
                    #      temp_29_61 =  Call i32 getint_0() 
                    #saved register dumping to mem
    li      s1, 2948
    add     s1,sp,s1
    sw      s8,0(s1)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 2900
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s2, 2896
    add     s2,sp,s2
    sw      a0,0(s2)
                    #      b_45 = i32 temp_29_61 
    mv      s3, a0
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_30_64:i1 
                    #      temp_30_64 = icmp i1 Ne flag_51, 0_0 
                    #found literal reg Some(a5) already exist with 0_0
    xor     s5,s4,a5
    snez    s5, s5
                    #      new_var temp_31_64:i1 
                    #      temp_31_64 = xor i1 temp_30_64, true 
    xori    s6,s5,-1
                    #      br i1 temp_31_64, label branch_true_65, label branch_false_65 
    bnez    s6, .branch_true_65
    j       .branch_false_65
                    #      label branch_true_65: 
.branch_true_65:
                    #      new_var temp_32_66:i32 
                    #      temp_32_66 = Sub i32 a_45, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    sub     s8,s7,a7
                    #      new_var temp_33_66:i32 
                    #      temp_33_66 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s9, n
                    #occupy reg s9 with *n_0
    lw      s10,0(s9)
                    #occupy reg s10 with n_0
                    #      new_var temp_34_66:i32 
                    #      temp_34_66 = Mul i32 temp_33_66, temp_32_66 
    mul     a1,s11,s8
                    #      new_var temp_35_66:i32 
                    #      temp_35_66 = Add i32 temp_34_66, b_45 
    add     a2,a1,s3
                    #      loc_66 = i32 temp_35_66 
    mv      a3, a2
                    #      new_var temp_36_66:ptr->i32 
                    #      temp_36_66 = getelementptr array_0:Array:i32:[Some(110_0)] [Some(loc_66)] 
    li      a5, 0
                    #found literal reg Some(a7) already exist with 1_0
    mul     s1,a7,a3
                    #occupy reg s1 with array_0
    add     a5,a5,s1
    slli a5,a5,2
    add     a5,a5,a5
                    #      store loc_66:i32 temp_36_66:ptr->i32 
    sd      a3,0(a5)
                    #      mu array_0:200 
                    #      array_0 = chi array_0:200 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_37_69:i1 
                    #      temp_37_69 = icmp i32 Eq a_45, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    xor     s1,s7,a7
    seqz    s1, s1
                    #      br i1 temp_37_69, label branch_true_70, label branch_false_70 
    bnez    s1, .branch_true_70
    j       .branch_false_70
                    #      label branch_true_70: 
.branch_true_70:
                    #      new_var temp_38_71:ptr->i32 
                    #      temp_38_71 = getelementptr array_0:Array:i32:[Some(110_0)] [Some(0_0)] 
    li      a7, 0
    li      s2, 1
    li      s9, 0
    mul     s10,s2,s9
                    #occupy reg s10 with array_0
    add     a7,a7,s10
    slli a7,a7,2
    add     a7,a7,a7
                    #      store 0_0:i32 temp_38_71:ptr->i32 
                    #found literal reg Some(s9) already exist with 0_0
    sd      s9,0(a7)
                    #      mu array_0:212 
                    #      array_0 = chi array_0:212 
                    #       Call void mmerge_0(loc_66, 0_0) 
                    #saved register dumping to mem
    li      s1, 2863
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 2944
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 2928
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 2895
    add     s4,sp,s4
    sb      s5,0(s4)
    li      s5, 2894
    add     s5,sp,s5
    sb      s6,0(s5)
    li      s6, 2948
    add     s6,sp,s6
    sw      s7,0(s6)
    li      s7, 2888
    add     s7,sp,s7
    sw      s8,0(s7)
    li      s8, 2884
    add     s8,sp,s8
    sw      s11,0(s8)
                    #saved register dumped to mem
                    #arg load start
    li      a3, 2872
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a0, 2896
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 2880
    add     a0,sp,a0
    sw      a1,0(a0)
    li      a1, 0
                    #arg load ended
    call    mmerge
                    #      jump label: branch_false_70 
    j       .branch_false_70
                    #      label branch_false_70: 
.branch_false_70:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_39_74:i32 
                    #      temp_39_74 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      s9,0(a1)
                    #occupy reg s9 with n_0
                    #      new_var temp_40_74:i1 
                    #      temp_40_74 = icmp i32 Eq a_45, temp_39_74 
    xor     a0,s10,s11
    seqz    a0, a0
                    #      br i1 temp_40_74, label branch_true_75, label branch_false_75 
    bnez    a0, .branch_true_75
    j       .branch_false_75
                    #      label branch_true_75: 
.branch_true_75:
                    #      new_var temp_41_76:ptr->i32 
                    #      temp_41_76 = getelementptr array_0:Array:i32:[Some(110_0)] [Some(k_51)] 
    li      a1, 0
    li      a3, 1
    mul     s2,a3,s1
                    #occupy reg s2 with array_0
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,a1
                    #      store k_51:i32 temp_41_76:ptr->i32 
    sd      s1,0(a1)
                    #      mu array_0:228 
                    #      array_0 = chi array_0:228 
                    #       Call void mmerge_0(loc_66, k_51) 
                    #saved register dumping to mem
    li      s1, 2908
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 2948
    add     s2,sp,s2
    sw      s10,0(s2)
    li      s3, 2844
    add     s3,sp,s3
    sw      s11,0(s3)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 2843
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 2832
    add     a0,sp,a0
    sd      a1,0(a0)
                    #arg load ended
    call    mmerge
                    #      jump label: branch_false_75 
    j       .branch_false_75
                    #      label branch_false_75: 
.branch_false_75:
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_42_79:i32 
                    #      temp_42_79 = Add i32 loc_66, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     s4,a1,a3
                    #      new_var temp_43_79:Array:i32:[Some(110_0)] 
                    #      temp_43_79 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s5, array
                    #occupy reg s5 with *array_0
    lw      s6,0(s5)
                    #occupy reg s6 with array_0
                    #      new_var temp_44_79:ptr->i32 
                    #      new_var temp_45_79:i32 
                    #      temp_44_79 = getelementptr temp_43_79:Array:i32:[Some(110_0)] [Some(temp_42_79)] 
    li      s7, 0
                    #found literal reg Some(a3) already exist with 1_0
    mul     s8,a3,s4
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_45_79 = load temp_44_79:ptr->i32 
                    #      new_var temp_46_79:i1 
                    #      temp_46_79 = icmp i32 Ne temp_45_79, -1_0 
    li      s10, -1
    xor     s11,s9,s10
    snez    s11, s11
                    #      new_var temp_47_79:i32 
                    #      temp_47_79 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    lw      a3,0(a0)
                    #occupy reg a3 with n_0
                    #      new_var temp_48_79:i1 
                    #      temp_48_79 = icmp i32 Slt b_45, temp_47_79 
    slt     s1,a0,a3
                    #      new_var temp_49_79:i1 
                    #      temp_49_79 = And i1 temp_48_79, temp_46_79 
    and     s2,s1,s11
                    #      br i1 temp_49_79, label branch_true_80, label branch_false_80 
    bnez    s2, .branch_true_80
    j       .branch_false_80
                    #      label branch_true_80: 
.branch_true_80:
                    #      new_var temp_50_81:i32 
                    #      temp_50_81 = Add i32 loc_66, 1_0 
    li      s3, 1
    add     s5,a1,s3
                    #       Call void mmerge_0(loc_66, temp_50_81) 
                    #saved register dumping to mem
    li      s1, 2363
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 2362
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 2828
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 2356
    add     s4,sp,s4
    sw      s5,0(s4)
    li      s5, 2376
    add     s5,sp,s5
    sd      s7,0(s5)
    li      s6, 2824
    add     s6,sp,s6
    sw      s8,0(s6)
    li      s7, 2372
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 2371
    add     s8,sp,s8
    sb      s11,0(s8)
                    #saved register dumped to mem
                    #arg load start
    li      a1, 2872
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 2944
    add     a0,sp,a0
    sw      a0,0(a0)
                    #arg load ended
    call    mmerge
                    #      jump label: branch_false_80 
    j       .branch_false_80
                    #      label branch_false_80: 
.branch_false_80:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_51_83:i32 
                    #      temp_51_83 = Sub i32 loc_66, 1_0 
    li      a1, 1
    sub     s9,a0,a1
                    #      new_var temp_52_83:Array:i32:[Some(110_0)] 
                    #      temp_52_83 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s10, array
                    #occupy reg s10 with *array_0
    lw      s11,0(s10)
                    #occupy reg s11 with array_0
                    #      new_var temp_53_83:ptr->i32 
                    #      new_var temp_54_83:i32 
                    #      temp_53_83 = getelementptr temp_52_83:Array:i32:[Some(110_0)] [Some(temp_51_83)] 
    li      a1, 0
    li      s1, 1
    mul     s2,s1,s9
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_54_83 = load temp_53_83:ptr->i32 
                    #      new_var temp_55_83:i1 
                    #      temp_55_83 = icmp i32 Ne temp_54_83, -1_0 
    li      s3, -1
    xor     s4,s1,s3
    snez    s4, s4
                    #      new_var temp_56_83:i1 
                    #      temp_56_83 = icmp i32 Sgt b_45, 1_0 
    li      s5, 1
    slt     s6,s5,s3
                    #      new_var temp_57_83:i1 
                    #      temp_57_83 = And i1 temp_56_83, temp_55_83 
    and     s5,s6,s4
                    #      br i1 temp_57_83, label branch_true_84, label branch_false_84 
    bnez    s5, .branch_true_84
    j       .branch_false_84
                    #      label branch_true_84: 
.branch_true_84:
                    #      new_var temp_58_85:i32 
                    #      temp_58_85 = Sub i32 loc_66, 1_0 
    li      s7, 1
    sub     s8,a0,s7
                    #       Call void mmerge_0(loc_66, temp_58_85) 
                    #saved register dumping to mem
    sw      s1,1900(sp)
    li      s1, 2348
    add     s1,sp,s1
    sw      s2,0(s1)
    li      s2, 2944
    add     s2,sp,s2
    sw      s3,0(s2)
    sb      s4,1899(sp)
    sb      s5,1897(sp)
    sb      s6,1898(sp)
    sw      s8,1892(sp)
    li      s3, 2352
    add     s3,sp,s3
    sw      s9,0(s3)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 2872
    add     a0,sp,a0
    sw      a0,0(a0)
    sd      a1,1904(sp)
                    #arg load ended
    call    mmerge
                    #      jump label: branch_false_84 
    j       .branch_false_84
                    #      label branch_false_84: 
.branch_false_84:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_59_87:i32 
                    #      temp_59_87 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    lw      a1,0(a0)
                    #occupy reg a1 with n_0
                    #      new_var temp_60_87:i32 
                    #      temp_60_87 = Add i32 loc_66, temp_59_87 
    add     s6,s4,s5
                    #      new_var temp_61_87:Array:i32:[Some(110_0)] 
                    #      temp_61_87 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s7, array
                    #occupy reg s7 with *array_0
    lw      s8,0(s7)
                    #occupy reg s8 with array_0
                    #      new_var temp_62_87:ptr->i32 
                    #      new_var temp_63_87:i32 
                    #      temp_62_87 = getelementptr temp_61_87:Array:i32:[Some(110_0)] [Some(temp_60_87)] 
    li      s9, 0
    li      s10, 1
    mul     s11,s10,s6
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_63_87 = load temp_62_87:ptr->i32 
                    #      new_var temp_64_87:i1 
                    #      temp_64_87 = icmp i32 Ne temp_63_87, -1_0 
    li      a1, -1
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_65_87:i1 
                    #      temp_65_87 = icmp i32 Slt a_45, temp_59_87 
    slt     s2,a1,s5
                    #      new_var temp_66_87:i1 
                    #      temp_66_87 = And i1 temp_65_87, temp_64_87 
    and     s3,s2,s1
                    #      br i1 temp_66_87, label branch_true_88, label branch_false_88 
    bnez    s3, .branch_true_88
    j       .branch_false_88
                    #      label branch_true_88: 
.branch_true_88:
                    #      new_var temp_67_89:i32 
                    #      temp_67_89 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s7, n
                    #occupy reg s7 with *n_0
    lw      s8,0(s7)
                    #occupy reg s8 with n_0
                    #      new_var temp_68_89:i32 
                    #      temp_68_89 = Add i32 loc_66, temp_67_89 
    add     s8,s4,s7
                    #       Call void mmerge_0(loc_66, temp_68_89) 
                    #saved register dumping to mem
    sb      s1,1427(sp)
    sb      s2,1426(sp)
    sb      s3,1425(sp)
    li      s1, 2872
    add     s1,sp,s1
    sw      s4,0(s1)
    sw      s5,1888(sp)
    sw      s6,1884(sp)
    sw      s7,1420(sp)
    sw      s8,1416(sp)
    sd      s9,1432(sp)
    sw      s11,1880(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1428(sp)
    li      a0, 2948
    add     a0,sp,a0
    sw      a1,0(a0)
                    #arg load ended
    call    mmerge
                    #      jump label: branch_false_88 
    j       .branch_false_88
                    #      label branch_false_88: 
.branch_false_88:
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_69_91:i32 
                    #      temp_69_91 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      s2,0(a1)
                    #occupy reg s2 with n_0
                    #      new_var temp_70_91:i32 
                    #      temp_70_91 = Sub i32 loc_66, temp_69_91 
    sub     s5,s3,s4
                    #      new_var temp_71_91:Array:i32:[Some(110_0)] 
                    #      temp_71_91 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s6, array
                    #occupy reg s6 with *array_0
    lw      s7,0(s6)
                    #occupy reg s7 with array_0
                    #      new_var temp_72_91:ptr->i32 
                    #      new_var temp_73_91:i32 
                    #      temp_72_91 = getelementptr temp_71_91:Array:i32:[Some(110_0)] [Some(temp_70_91)] 
    li      s8, 0
    li      s9, 1
    mul     s10,s9,s5
    add     s8,s8,s10
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_73_91 = load temp_72_91:ptr->i32 
                    #      new_var temp_74_91:i1 
                    #      temp_74_91 = icmp i32 Ne temp_73_91, -1_0 
    li      a0, -1
    xor     a1,s11,a0
    snez    a1, a1
                    #      new_var temp_75_91:i1 
                    #      temp_75_91 = icmp i32 Sgt a_45, 1_0 
                    #found literal reg Some(s9) already exist with 1_0
    slt     s1,s9,a0
                    #      new_var temp_76_91:i1 
                    #      temp_76_91 = And i1 temp_75_91, temp_74_91 
    and     s2,s1,a1
                    #      br i1 temp_76_91, label branch_true_92, label branch_false_92 
    bnez    s2, .branch_true_92
    j       .branch_false_92
                    #      label branch_true_92: 
.branch_true_92:
                    #      new_var temp_77_93:i32 
                    #      temp_77_93 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      s6, n
                    #occupy reg s6 with *n_0
    lw      s7,0(s6)
                    #occupy reg s7 with n_0
                    #      new_var temp_78_93:i32 
                    #      temp_78_93 = Sub i32 loc_66, temp_77_93 
    sub     s7,s3,s6
                    #       Call void mmerge_0(loc_66, temp_78_93) 
                    #saved register dumping to mem
    sb      s1,954(sp)
    sb      s2,953(sp)
    li      s1, 2872
    add     s1,sp,s1
    sw      s3,0(s1)
    sw      s4,1412(sp)
    sw      s5,1408(sp)
    sw      s6,948(sp)
    sw      s7,944(sp)
    sd      s8,960(sp)
    sw      s10,1404(sp)
    sw      s11,956(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 2948
    add     a0,sp,a0
    sw      a0,0(a0)
    sb      a1,955(sp)
                    #arg load ended
    call    mmerge
                    #      jump label: branch_false_92 
    j       .branch_false_92
                    #      label branch_false_92: 
.branch_false_92:
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_79_95:i32 
                    #      temp_79_95 =  Call i32 findfa_0(k_51) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    findfa
    sw      a0,940(sp)
                    #      new_var temp_80_95:i32 
                    #      temp_80_95 =  Call i32 findfa_0(0_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,940(sp)
    li      a0, 0
                    #arg load ended
    call    findfa
    sw      a0,936(sp)
                    #      new_var temp_81_95:i1 
                    #      temp_81_95 = icmp i32 Eq temp_80_95, temp_79_95 
    xor     s1,a0,a1
    seqz    s1, s1
                    #      new_var temp_82_95:Array:i32:[Some(110_0)] 
                    #      temp_82_95 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s2, array
                    #occupy reg s2 with *array_0
    lw      s3,0(s2)
                    #occupy reg s3 with array_0
                    #      new_var temp_83_95:ptr->i32 
                    #      new_var temp_84_95:i32 
                    #      temp_83_95 = getelementptr temp_82_95:Array:i32:[Some(110_0)] [Some(k_51)] 
    li      s4, 0
    li      s5, 1
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_84_95 = load temp_83_95:ptr->i32 
                    #      new_var temp_85_95:i1 
                    #      temp_85_95 = icmp i32 Ne temp_84_95, -1_0 
    li      s9, -1
    xor     s10,s8,s9
    snez    s10, s10
                    #      new_var temp_86_95:i1 
                    #      temp_86_95 = And i1 temp_85_95, temp_81_95 
    and     s11,s10,s1
                    #      new_var temp_87_95:Array:i32:[Some(110_0)] 
                    #      temp_87_95 = load *array_0:ptr->i32 
                    #   load label array as ptr to reg
    la      s2, array
                    #occupy reg s2 with *array_0
    lw      s3,0(s2)
                    #occupy reg s3 with array_0
                    #      new_var temp_88_95:ptr->i32 
                    #      new_var temp_89_95:i32 
                    #      temp_88_95 = getelementptr temp_87_95:Array:i32:[Some(110_0)] [Some(0_0)] 
    li      s2, 0
                    #found literal reg Some(s5) already exist with 1_0
    li      s3, 0
    mul     s9,s5,s3
    add     s2,s2,s9
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_89_95 = load temp_88_95:ptr->i32 
                    #      new_var temp_90_95:i1 
                    #      temp_90_95 = icmp i32 Ne temp_89_95, -1_0 
    li      s5, -1
    sw      a0,936(sp)
    xor     a0,s3,s5
    snez    a0, a0
                    #      new_var temp_91_95:i1 
                    #      temp_91_95 = And i1 temp_90_95, temp_86_95 
    and     s5,a0,s11
                    #      br i1 temp_91_95, label branch_true_96, label branch_false_96 
    bnez    s5, .branch_true_96
    j       .branch_false_96
                    #      label branch_true_96: 
.branch_true_96:
                    #      flag_51 = i32 1_0 
    sb      a0,19(sp)
    li      a0, 1
                    #      new_var temp_92_97:i32 
                    #      temp_92_97 = Add i32 i_51, 1_0 
    li      a0, 2928
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a1,940(sp)
    li      a1, 1
    li      a2, 2876
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a0,a1
                    #      tmp_97 = i32 temp_92_97 
    mv      a1, a2
                    #       Call void putint_0(tmp_97) 
                    #saved register dumping to mem
    sb      s1,935(sp)
    sd      s2,24(sp)
    sw      s3,20(sp)
    sd      s4,480(sp)
    sb      s5,18(sp)
    li      s1, 2908
    add     s1,sp,s1
    sw      s6,0(s1)
    sw      s7,928(sp)
    sw      s8,476(sp)
    sw      s9,468(sp)
    sb      s10,475(sp)
    sb      s11,474(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a1,8(sp)
    li      a0, 2932
    add     a0,sp,a0
    sw      a0,0(a0)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: branch_false_96 
    j       .branch_false_96
                    #      label branch_false_96: 
.branch_false_96:
                    #      label branch_false_65: 
.branch_false_65:
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_93_61:i32 
                    #      temp_93_61 = Add i32 i_51, 1_0 
    li      a1, 1
    add     s1,a0,a1
                    #      i_51 = i32 temp_93_61 
                    #      jump label: while.head_60 
    j       .while.head_60
                    #      label while.exit_60: 
.while.exit_60:
                    #      new_var temp_94_103:i1 
                    #      temp_94_103 = icmp i1 Ne flag_51, 0_0 
    li      s3, 0
    xor     s4,s2,s3
    snez    s4, s4
                    #      new_var temp_95_103:i1 
                    #      temp_95_103 = xor i1 temp_94_103, true 
    xori    s5,s4,-1
                    #      br i1 temp_95_103, label branch_true_104, label branch_false_104 
    bnez    s5, .branch_true_104
    j       .branch_false_104
                    #      label branch_true_104: 
.branch_true_104:
                    #       Call void putint_0(-1_0) 
                    #saved register dumping to mem
    sw      s1,4(sp)
    li      s1, 2928
    add     s1,sp,s1
    sw      s2,0(s1)
    sb      s4,3(sp)
    sb      s5,2(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 2932
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, -1
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: branch_false_104 
    j       .branch_false_104
                    #      label branch_false_104: 
.branch_false_104:
                    #      jump label: while.head_50 
    j       .while.head_50
                    #      label while.exit_50: 
.while.exit_50:
                    #      ret 0_0 
    li      a0, 2968
    add     a0,sp,a0
    ld      ra,0(a0)
    li      s1, 2960
    add     s1,sp,s1
    ld      s0,0(s1)
    li      a0, 2968
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    li      s2, 2976
    li      s2, 2976
    add     sp,s2,sp
    ret
.section        .data
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl array
                    #      global Array:i32:[Some(110_0)] array_0 
    .type array,@object
array:
    .zero 440
