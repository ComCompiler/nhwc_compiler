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
                    #      Define quick_read_0 [] -> quick_read_ret_0 
    .globl quick_read
    .type quick_read,@function
quick_read:
                    #mem layout:|ra_quick_read:8|s0_quick_read:8|temp_0:4|ch:4|x:4|f:4|temp_1:1|temp_2:1|temp_3:1|temp_4:1|temp_5:4|temp_6:1|temp_7:1|temp_8:1|none:1|temp_9:4|temp_10:4|temp_11:4|temp_12:4|temp_13:1|none:3|temp_14:4|none:4
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
                    #      alloc i32 temp_0_21 
                    #      alloc i32 ch_21 
                    #      alloc i32 x_21 
                    #      alloc i32 f_21 
                    #      alloc i1 temp_1_24 
                    #      alloc i1 temp_2_24 
                    #      alloc i1 temp_3_24 
                    #      alloc i1 temp_4_27 
                    #      alloc i32 temp_5_26 
                    #      alloc i1 temp_6_31 
                    #      alloc i1 temp_7_31 
                    #      alloc i1 temp_8_31 
                    #      alloc i32 temp_9_33 
                    #      alloc i32 temp_10_33 
                    #      alloc i32 temp_11_33 
                    #      alloc i32 temp_12_33 
                    #      alloc i1 temp_13_416 
                    #      alloc i32 temp_14_36 
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_0_21:i32 
                    #      temp_0_21 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
                    #      ch_21 = i32 temp_0_21 
    mv      a1, a0
                    #      x_21 = i32 0_0 
    li      a2, 0
                    #      f_21 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_25 
    j       .while.head_25
                    #      label while.head_25: 
.while.head_25:
                    #      new_var temp_1_24:i1 
                    #      temp_1_24 = icmp i32 Sgt 57_0, ch_21 
    li      a4, 57
    slt     a5,a1,a4
                    #      new_var temp_2_24:i1 
                    #      temp_2_24 = icmp i32 Slt ch_21, 48_0 
    li      a6, 48
    slt     a7,a1,a6
                    #      new_var temp_3_24:i1 
                    #      temp_3_24 = Or i1 temp_2_24, temp_1_24 
                    #      br i1 temp_3_24, label while.body_25, label while.exit_25 
    bnez    s1, .while.body_25
    j       .while.exit_25
                    #      label while.body_25: 
.while.body_25:
                    #      new_var temp_4_27:i1 
                    #      temp_4_27 = icmp i32 Eq ch_21, 45_0 
    li      a4, 45
    xor     a6,a1,a4
    seqz    a6, a6
                    #      br i1 temp_4_27, label branch_true_28, label branch_false_28 
    bnez    a6, .branch_true_28
    j       .branch_false_28
                    #      label branch_true_28: 
.branch_true_28:
                    #      f_21 = i32 1_0 
                    #      jump label: branch_false_28 
    j       .branch_false_28
                    #      label branch_false_28: 
.branch_false_28:
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_5_26:i32 
                    #      temp_5_26 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,37(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
    sw      a0,32(sp)
                    #      ch_21 = i32 temp_5_26 
    mv      a1, a0
                    #      jump label: while.head_25 
    sb      a6,36(sp)
    sw      a0,32(sp)
    lw      a0,52(sp)
    sb      a5,39(sp)
    sb      a7,38(sp)
    j       .while.head_25
                    #      label while.head_32: 
.while.head_32:
                    #      new_var temp_6_31:i1 
                    #      temp_6_31 = icmp i32 Sle 57_0, ch_21 
    li      a4, 57
    slt     a6,a1,a4
    xori    a6,a6,1
                    #      new_var temp_7_31:i1 
                    #      temp_7_31 = icmp i32 Sge ch_21, 48_0 
    li      s2, 48
    slt     s3,a1,s2
    xori    s3,s3,1
                    #      new_var temp_8_31:i1 
                    #      temp_8_31 = And i1 temp_7_31, temp_6_31 
    and     s4,s3,a6
                    #      br i1 temp_8_31, label while.body_32, label while.exit_32 
    bnez    s4, .while.body_32
    j       .while.exit_32
                    #      label while.body_32: 
.while.body_32:
                    #      new_var temp_9_33:i32 
                    #      temp_9_33 = Sub i32 ch_21, 48_0 
    li      a4, 48
    sub     s2,a1,a4
                    #      new_var temp_10_33:i32 
                    #      temp_10_33 = Mul i32 x_21, 10_0 
    li      s5, 10
    mul     s6,a2,s5
                    #      new_var temp_11_33:i32 
                    #      temp_11_33 = Add i32 temp_10_33, temp_9_33 
    add     s7,s6,s2
                    #      x_21 = i32 temp_11_33 
    mv      a2, s7
                    #      new_var temp_12_33:i32 
                    #      temp_12_33 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,37(sp)
    sw      s2,24(sp)
    sb      s3,30(sp)
    sb      s4,29(sp)
    sw      s6,20(sp)
    sw      s7,16(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
    sw      a0,12(sp)
                    #      ch_21 = i32 temp_12_33 
    mv      a1, a0
                    #      jump label: while.head_32 
    lb      s1,37(sp)
    sb      a6,31(sp)
    sw      a0,12(sp)
    lw      a0,52(sp)
    j       .while.head_32
                    #      label while.exit_32: 
.while.exit_32:
                    #      new_var temp_13_416:i1 
                    #      temp_13_416 = icmp i32 Ne f_21, 0_0 
    li      a4, 0
    xor     s2,a3,a4
    snez    s2, s2
                    #      br i1 temp_13_416, label branch_true_37, label branch_false_37 
    bnez    s2, .branch_true_37
    j       .branch_false_37
                    #      label branch_true_37: 
.branch_true_37:
                    #      new_var temp_14_36:i32 
                    #      temp_14_36 = Sub i32 0_0, x_21 
    li      a4, 0
    sub     s5,a4,a2
                    #      ret temp_14_36 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s5,4(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label branch_false_37: 
.branch_false_37:
                    #      ret x_21 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a2,44(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label L11_0: 
.L11_0:
                    #      Define find_0 [x_40] -> find_ret_0 
    .globl find
    .type find,@function
find:
                    #mem layout:|ra_find:8|s0_find:8|x:4|temp_15:4020|temp_16:8|temp_17:4|temp_18:1|none:3|temp_19:4020|none:4|temp_20:8|temp_21:4|temp_22:4|asdf:4|none:4|temp_23:8
    li      a1, -8112
    li      a1, -8112
    add     sp,a1,sp
    li      a2, 8104
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 8096
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 8112
    li      a4, 8112
    add     s0,a4,sp
                    #      alloc Array:i32:[Some(1005_0)] temp_15_43 
                    #      alloc ptr->i32 temp_16_43 
                    #      alloc i32 temp_17_43 
                    #      alloc i1 temp_18_43 
                    #      alloc Array:i32:[Some(1005_0)] temp_19_42 
                    #      alloc ptr->i32 temp_20_42 
                    #      alloc i32 temp_21_42 
                    #      alloc i32 temp_22_42 
                    #      alloc i32 asdf_42 
                    #      alloc ptr->i32 temp_23_42 
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_15_43:Array:i32:[Some(1005_0)] 
                    #      temp_15_43 = load *fa_0:ptr->i32 
                    #   load label fa as ptr to reg
    la      a5, fa
                    #occupy reg a5 with *fa_0
    lw      a6,0(a5)
                    #      new_var temp_16_43:ptr->i32 
                    #      new_var temp_17_43:i32 
                    #      temp_16_43 = getelementptr temp_15_43:Array:i32:[Some(1005_0)] [Some(x_40)] 
    li      a7, 0
    li      s1, 1
    add     a7,a7,a6
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_17_43 = load temp_16_43:ptr->i32 
    lw      s2,0(a7)
                    #      new_var temp_18_43:i1 
                    #      temp_18_43 = icmp i32 Eq x_40, temp_17_43 
    xor     s3,a0,s2
    seqz    s3, s3
                    #      br i1 temp_18_43, label branch_true_44, label branch_false_44 
    bnez    s3, .branch_true_44
    j       .branch_false_44
                    #      label branch_true_44: 
.branch_true_44:
                    #      ret x_40 
    li      a1, 8104
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a2, 8096
    add     a2,sp,a2
    ld      s0,0(a2)
    li      a0, 8092
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 8112
    li      a3, 8112
    add     sp,a3,sp
    ret
                    #      label branch_false_44: 
.branch_false_44:
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_19_42:Array:i32:[Some(1005_0)] 
                    #      temp_19_42 = load *fa_0:ptr->i32 
                    #   load label fa as ptr to reg
    la      a1, fa
                    #occupy reg a1 with *fa_0
    lw      a2,0(a1)
                    #      new_var temp_20_42:ptr->i32 
                    #      new_var temp_21_42:i32 
                    #      temp_20_42 = getelementptr temp_19_42:Array:i32:[Some(1005_0)] [Some(x_40)] 
    li      a3, 0
    li      a4, 1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_21_42 = load temp_20_42:ptr->i32 
    lw      a5,0(a3)
                    #      new_var temp_22_42:i32 
                    #      temp_22_42 =  Call i32 find_0(temp_21_42) 
                    #saved register dumping to mem
    li      s1, 4060
    add     s1,sp,s1
    sw      s2,0(s1)
    li      s2, 4059
    add     s2,sp,s2
    sb      s3,0(s2)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 8092
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a5
                    #arg load ended
    call    find
    sw      a0,16(sp)
                    #      asdf_42 = i32 temp_22_42 
    mv      s3, a0
                    #      new_var temp_23_42:ptr->i32 
                    #      temp_23_42 = getelementptr fa_0:Array:i32:[Some(1005_0)] [Some(x_40)] 
    li      s4, 0
                    #found literal reg Some(a4) already exist with 1_0
    mul     s6,a4,s5
                    #occupy reg s6 with fa_0
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,s4
                    #      store asdf_42:i32 temp_23_42:ptr->i32 
    sd      s3,0(s4)
                    #      mu fa_0:143 
                    #      fa_0 = chi fa_0:143 
                    #      ret asdf_42 
    li      s7, 8104
    add     s7,sp,s7
    ld      ra,0(s7)
    li      s8, 8096
    add     s8,sp,s8
    ld      s0,0(s8)
    sw      s3,12(sp)
    sw      a0,16(sp)
    li      s3, 8112
    li      s3, 8112
    add     sp,s3,sp
    ret
                    #      Define same_0 [x_49, y_49] -> same_ret_0 
    .globl same
    .type same,@function
same:
                    #mem layout:|ra_same:8|s0_same:8|x:4|y:4|temp_24:4|temp_25:4|temp_26:1|none:7
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 temp_24_51 
                    #      alloc i32 temp_25_51 
                    #      alloc i1 temp_26_54 
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_24_51:i32 
                    #      temp_24_51 =  Call i32 find_0(x_49) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,20(sp)
    lw      a0,20(sp)
                    #arg load ended
    call    find
    sw      a0,12(sp)
                    #      x_49 = i32 temp_24_51 
    mv      a2, a0
                    #      new_var temp_25_51:i32 
                    #      temp_25_51 =  Call i32 find_0(y_49) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,12(sp)
    mv      a0, a1
                    #arg load ended
    call    find
    sw      a0,8(sp)
                    #      y_49 = i32 temp_25_51 
    mv      a1, a0
                    #      jump label: L5_0 
    j       .L5_0
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_26_54:i1 
                    #      temp_26_54 = icmp i32 Eq x_49, y_49 
    xor     a3,a2,a1
    seqz    a3, a3
                    #      br i1 temp_26_54, label branch_true_55, label branch_false_55 
    bnez    a3, .branch_true_55
    j       .branch_false_55
                    #      label branch_true_55: 
.branch_true_55:
                    #      ret 1_0 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,8(sp)
    li      a0, 1
    addi    sp,sp,40
    ret
                    #      label branch_false_55: 
.branch_false_55:
                    #      label L6_0: 
.L6_0:
                    #      ret 0_0 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,8(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
                    #      Define prim_0 [] -> prim_ret_0 
    .globl prim
    .type prim,@function
prim:
                    #mem layout:|ra_prim:8|s0_prim:8|i:4|temp_27:4|temp_28:1|none:3|temp_29:4|j:4|temp_30:4|temp_31:1|none:3|temp_32:4020|temp_33:8|temp_34:4|temp_35:4020|temp_36:8|temp_37:4|temp_38:1|none:3|temp_39:4020|none:4|temp_40:8|temp_41:4|t:4|temp_42:8|temp_43:4020|none:4|temp_44:8|temp_45:4|none:4|temp_46:8|temp_47:4020|none:4|temp_48:8|temp_49:4|none:4|temp_50:8|temp_51:4020|none:4|temp_52:8|temp_53:4|none:4|temp_54:8|temp_55:4020|none:4|temp_56:8|temp_57:4|none:4|temp_58:8|temp_59:4020|none:4|temp_60:8|temp_61:4|none:4|temp_62:8|temp_63:4|temp_64:4|temp_65:4|temp_66:1|none:3|temp_67:8|temp_68:4|res:4|temp_69:4|temp_70:1|none:3|temp_71:4020|none:4|temp_72:8|temp_73:4|temp_74:4020|temp_75:8|temp_76:4|temp_77:4|temp_78:1|none:3|temp_79:4020|temp_80:8|temp_81:4|temp_82:4|temp_83:4020|none:4|temp_84:8|temp_85:4|temp_86:4|temp_87:8|temp_88:4020|none:4|temp_89:8|temp_90:4|temp_91:4
    li      a0, -52640
    li      a0, -52640
    add     sp,a0,sp
    li      a1, 52632
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 52624
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 52640
    li      a3, 52640
    add     s0,a3,sp
                    #      alloc i32 i_59 
                    #      alloc i32 temp_27_61 
                    #      alloc i1 temp_28_61 
                    #      alloc i32 temp_29_63 
                    #      alloc i32 j_63 
                    #      alloc i32 temp_30_65 
                    #      alloc i1 temp_31_65 
                    #      alloc Array:i32:[Some(1005_0)] temp_32_68 
                    #      alloc ptr->i32 temp_33_68 
                    #      alloc i32 temp_34_68 
                    #      alloc Array:i32:[Some(1005_0)] temp_35_68 
                    #      alloc ptr->i32 temp_36_68 
                    #      alloc i32 temp_37_68 
                    #      alloc i1 temp_38_68 
                    #      alloc Array:i32:[Some(1005_0)] temp_39_70 
                    #      alloc ptr->i32 temp_40_70 
                    #      alloc i32 temp_41_70 
                    #      alloc i32 t_70 
                    #      alloc ptr->i32 temp_42_70 
                    #      alloc Array:i32:[Some(1005_0)] temp_43_70 
                    #      alloc ptr->i32 temp_44_70 
                    #      alloc i32 temp_45_70 
                    #      alloc ptr->i32 temp_46_70 
                    #      alloc Array:i32:[Some(1005_0)] temp_47_70 
                    #      alloc ptr->i32 temp_48_70 
                    #      alloc i32 temp_49_70 
                    #      alloc ptr->i32 temp_50_70 
                    #      alloc Array:i32:[Some(1005_0)] temp_51_70 
                    #      alloc ptr->i32 temp_52_70 
                    #      alloc i32 temp_53_70 
                    #      alloc ptr->i32 temp_54_70 
                    #      alloc Array:i32:[Some(1005_0)] temp_55_70 
                    #      alloc ptr->i32 temp_56_70 
                    #      alloc i32 temp_57_70 
                    #      alloc ptr->i32 temp_58_70 
                    #      alloc Array:i32:[Some(1005_0)] temp_59_70 
                    #      alloc ptr->i32 temp_60_70 
                    #      alloc i32 temp_61_70 
                    #      alloc ptr->i32 temp_62_70 
                    #      alloc i32 temp_63_67 
                    #      alloc i32 temp_64_63 
                    #      alloc i32 temp_65_83 
                    #      alloc i1 temp_66_83 
                    #      alloc ptr->i32 temp_67_85 
                    #      alloc i32 temp_68_85 
                    #      alloc i32 res_59 
                    #      alloc i32 temp_69_90 
                    #      alloc i1 temp_70_90 
                    #      alloc Array:i32:[Some(1005_0)] temp_71_93 
                    #      alloc ptr->i32 temp_72_93 
                    #      alloc i32 temp_73_93 
                    #      alloc Array:i32:[Some(1005_0)] temp_74_93 
                    #      alloc ptr->i32 temp_75_93 
                    #      alloc i32 temp_76_93 
                    #      alloc i32 temp_77_93 
                    #      alloc i1 temp_78_2236 
                    #      alloc Array:i32:[Some(1005_0)] temp_79_92 
                    #      alloc ptr->i32 temp_80_92 
                    #      alloc i32 temp_81_92 
                    #      alloc i32 temp_82_92 
                    #      alloc Array:i32:[Some(1005_0)] temp_83_92 
                    #      alloc ptr->i32 temp_84_92 
                    #      alloc i32 temp_85_92 
                    #      alloc i32 temp_86_92 
                    #      alloc ptr->i32 temp_87_92 
                    #      alloc Array:i32:[Some(1005_0)] temp_88_92 
                    #      alloc ptr->i32 temp_89_92 
                    #      alloc i32 temp_90_92 
                    #      alloc i32 temp_91_92 
                    #      label L1_0: 
.L1_0:
                    #      i_59 = i32 0_0 
    li      a4, 0
                    #      jump label: while.head_62 
    j       .while.head_62
                    #      label while.head_62: 
.while.head_62:
                    #      new_var temp_27_61:i32 
                    #      temp_27_61 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a0, m
                    #occupy reg a0 with *m_0
    lw      a1,0(a0)
                    #      new_var temp_28_61:i1 
                    #      temp_28_61 = icmp i32 Slt i_59, temp_27_61 
    slt     a2,a4,a1
                    #      br i1 temp_28_61, label while.body_62, label while.exit_62 
    bnez    a2, .while.body_62
    j       .while.exit_62
                    #      label while.body_62: 
.while.body_62:
                    #      new_var temp_29_63:i32 
                    #      temp_29_63 = Add i32 i_59, 1_0 
    li      a0, 1
    add     a3,a4,a0
                    #      j_63 = i32 temp_29_63 
    mv      a5, a3
                    #      jump label: while.head_66 
    j       .while.head_66
                    #      label while.head_66: 
.while.head_66:
                    #      new_var temp_30_65:i32 
                    #      temp_30_65 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a0, m
                    #occupy reg a0 with *m_0
    lw      a6,0(a0)
                    #      new_var temp_31_65:i1 
                    #      temp_31_65 = icmp i32 Slt j_63, temp_30_65 
    slt     a7,a5,a6
                    #      br i1 temp_31_65, label while.body_66, label while.exit_66 
    bnez    a7, .while.body_66
    j       .while.exit_66
                    #      label while.body_66: 
.while.body_66:
                    #      new_var temp_32_68:Array:i32:[Some(1005_0)] 
                    #      temp_32_68 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a0, c
                    #occupy reg a0 with *c_0
    lw      s1,0(a0)
                    #      new_var temp_33_68:ptr->i32 
                    #      new_var temp_34_68:i32 
                    #      temp_33_68 = getelementptr temp_32_68:Array:i32:[Some(1005_0)] [Some(j_63)] 
    li      s2, 0
    li      s3, 1
    add     s2,s2,s1
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_34_68 = load temp_33_68:ptr->i32 
    lw      s4,0(s2)
                    #      new_var temp_35_68:Array:i32:[Some(1005_0)] 
                    #      temp_35_68 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      s5, c
                    #occupy reg s5 with *c_0
    lw      s6,0(s5)
                    #      new_var temp_36_68:ptr->i32 
                    #      new_var temp_37_68:i32 
                    #      temp_36_68 = getelementptr temp_35_68:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      s7, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s7,s7,s6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_37_68 = load temp_36_68:ptr->i32 
    lw      s8,0(s7)
                    #      new_var temp_38_68:i1 
                    #      temp_38_68 = icmp i32 Sgt temp_37_68, temp_34_68 
    slt     s9,s4,s8
                    #      br i1 temp_38_68, label branch_true_69, label branch_false_69 
    bnez    s9, .branch_true_69
    j       .branch_false_69
                    #      label branch_true_69: 
.branch_true_69:
                    #      new_var temp_39_70:Array:i32:[Some(1005_0)] 
                    #      temp_39_70 = load *u_0:ptr->i32 
                    #   load label u as ptr to reg
    la      a0, u
                    #occupy reg a0 with *u_0
    lw      s3,0(a0)
                    #      new_var temp_40_70:ptr->i32 
                    #      new_var temp_41_70:i32 
                    #      temp_40_70 = getelementptr temp_39_70:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      s5, 0
    li      s10, 1
    add     s5,s5,s3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_41_70 = load temp_40_70:ptr->i32 
    lw      s11,0(s5)
                    #      t_70 = i32 temp_41_70 
    mv      a0, s11
                    #      new_var temp_42_70:ptr->i32 
                    #      temp_42_70 = getelementptr u_0:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      s10, 0
    li      a0, 40488
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 52616
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a4
                    #occupy reg a1 with u_0
    add     s10,s10,a1
    slli s10,s10,2
    add     s10,s10,s10
                    #      new_var temp_43_70:Array:i32:[Some(1005_0)] 
                    #      temp_43_70 = load *u_0:ptr->i32 
                    #   load label u as ptr to reg
    la      a0, u
                    #occupy reg a0 with *u_0
    lw      a1,0(a0)
                    #      new_var temp_44_70:ptr->i32 
                    #      new_var temp_45_70:i32 
                    #      temp_44_70 = getelementptr temp_43_70:Array:i32:[Some(1005_0)] [Some(j_63)] 
    li      a0, 0
    li      a1, 40476
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 52615
    add     a2,sp,a2
    sb      a2,0(a2)
    mul     a2,a1,a5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_45_70 = load temp_44_70:ptr->i32 
    lw      a1,0(a0)
                    #      store temp_45_70:i32 temp_42_70:ptr->i32 
    sd      a1,0(s10)
                    #      mu u_0:242 
                    #      u_0 = chi u_0:242 
                    #      new_var temp_46_70:ptr->i32 
                    #      temp_46_70 = getelementptr u_0:Array:i32:[Some(1005_0)] [Some(j_63)] 
    li      a0, 36448
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    li      a1, 36444
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 40476
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a5
                    #occupy reg a2 with u_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
                    #      store t_70:i32 temp_46_70:ptr->i32 
    sd      a1,0(a0)
                    #      mu u_0:248 
                    #      u_0 = chi u_0:248 
                    #      new_var temp_47_70:Array:i32:[Some(1005_0)] 
                    #      temp_47_70 = load *v_0:ptr->i32 
                    #   load label v as ptr to reg
    la      a2, v
                    #occupy reg a2 with *v_0
    li      a0, 36432
    add     a0,sp,a0
    sd      a0,0(a0)
    lw      a0,0(a2)
                    #      new_var temp_48_70:ptr->i32 
                    #      new_var temp_49_70:i32 
                    #      temp_48_70 = getelementptr temp_47_70:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      a2, 0
    li      a0, 36428
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 40488
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a4
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_49_70 = load temp_48_70:ptr->i32 
    lw      a0,0(a2)
                    #      t_70 = i32 temp_49_70 
    li      a1, 36428
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      new_var temp_50_70:ptr->i32 
                    #      temp_50_70 = getelementptr v_0:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      a0, 32396
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 40488
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 32400
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a4
                    #occupy reg a2 with v_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_51_70:Array:i32:[Some(1005_0)] 
                    #      temp_51_70 = load *v_0:ptr->i32 
                    #   load label v as ptr to reg
    la      a1, v
                    #occupy reg a1 with *v_0
    lw      a2,0(a1)
                    #      new_var temp_52_70:ptr->i32 
                    #      new_var temp_53_70:i32 
                    #      temp_52_70 = getelementptr temp_51_70:Array:i32:[Some(1005_0)] [Some(j_63)] 
    li      a1, 0
    li      a0, 32384
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_53_70 = load temp_52_70:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_53_70:i32 temp_50_70:ptr->i32 
    li      a0, 28348
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 28352
    add     a1,sp,a1
    sd      a1,0(a1)
    sd      a1,0(a0)
                    #      mu v_0:273 
                    #      v_0 = chi v_0:273 
                    #      new_var temp_54_70:ptr->i32 
                    #      temp_54_70 = getelementptr v_0:Array:i32:[Some(1005_0)] [Some(j_63)] 
    li      a0, 32384
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    li      a1, 28348
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 32380
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a5
                    #occupy reg a2 with v_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
                    #      store t_70:i32 temp_54_70:ptr->i32 
    sd      a1,0(a0)
                    #      mu v_0:279 
                    #      v_0 = chi v_0:279 
                    #      new_var temp_55_70:Array:i32:[Some(1005_0)] 
                    #      temp_55_70 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a2, c
                    #occupy reg a2 with *c_0
    li      a0, 28336
    add     a0,sp,a0
    sd      a0,0(a0)
    lw      a0,0(a2)
                    #      new_var temp_56_70:ptr->i32 
                    #      new_var temp_57_70:i32 
                    #      temp_56_70 = getelementptr temp_55_70:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      a2, 0
    li      a0, 28332
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 40488
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,a0,a4
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_57_70 = load temp_56_70:ptr->i32 
    lw      a0,0(a2)
                    #      t_70 = i32 temp_57_70 
    li      a1, 28332
    add     a1,sp,a1
    sw      a1,0(a1)
    mv      a1, a0
                    #      new_var temp_58_70:ptr->i32 
                    #      temp_58_70 = getelementptr c_0:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      a0, 24300
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a1, 40488
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 24304
    add     a2,sp,a2
    sd      a2,0(a2)
    mul     a2,a1,a4
                    #occupy reg a2 with c_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_59_70:Array:i32:[Some(1005_0)] 
                    #      temp_59_70 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a1, c
                    #occupy reg a1 with *c_0
    lw      a2,0(a1)
                    #      new_var temp_60_70:ptr->i32 
                    #      new_var temp_61_70:i32 
                    #      temp_60_70 = getelementptr temp_59_70:Array:i32:[Some(1005_0)] [Some(j_63)] 
    li      a1, 0
    li      a0, 24288
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_61_70 = load temp_60_70:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_61_70:i32 temp_58_70:ptr->i32 
    li      a0, 20252
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 20256
    add     a1,sp,a1
    sd      a1,0(a1)
    sd      a1,0(a0)
                    #      mu c_0:304 
                    #      c_0 = chi c_0:304 
                    #      new_var temp_62_70:ptr->i32 
                    #      temp_62_70 = getelementptr c_0:Array:i32:[Some(1005_0)] [Some(j_63)] 
    li      a0, 24288
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    li      a1, 20252
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 24284
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a5
                    #occupy reg a2 with c_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
                    #      store t_70:i32 temp_62_70:ptr->i32 
    sd      a1,0(a0)
                    #      mu c_0:310 
                    #      c_0 = chi c_0:310 
                    #      jump label: branch_false_69 
    li      s3, 44524
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s11, 40492
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a1, 40488
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 52616
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a2, 52616
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 20240
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 52615
    add     a0,sp,a0
    lb      a2,0(a0)
    li      s5, 40496
    add     s5,sp,s5
    sd      s5,0(s5)
    li      a0, 52615
    add     a0,sp,a0
    sb      a0,0(a0)
    li      s10, 40480
    add     s10,sp,s10
    sd      s10,0(s10)
    j       .branch_false_69
                    #      label branch_false_69: 
.branch_false_69:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_63_67:i32 
                    #      temp_63_67 = Add i32 j_63, 1_0 
    li      a0, 1
    add     s3,a5,a0
                    #      j_63 = i32 temp_63_67 
    mv      a5, s3
                    #      jump label: while.head_66 
    li      s5, 44531
    add     s5,sp,s5
    sb      s9,0(s5)
    li      s6, 48560
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s3, 20236
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s8, 44532
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s1, 52592
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a6, 52600
    add     a6,sp,a6
    sw      a6,0(a6)
    li      s7, 44536
    add     s7,sp,s7
    sd      s7,0(s7)
    li      s2, 48568
    add     s2,sp,s2
    sd      s2,0(s2)
    li      a7, 52599
    add     a7,sp,a7
    sb      a7,0(a7)
    li      s4, 48564
    add     s4,sp,s4
    sw      s4,0(s4)
    j       .while.head_66
                    #      label while.exit_66: 
.while.exit_66:
                    #      new_var temp_64_63:i32 
                    #      temp_64_63 = Add i32 i_59, 1_0 
    li      a0, 1
    add     s1,a4,a0
                    #      i_59 = i32 temp_64_63 
    mv      a4, s1
                    #      jump label: while.head_62 
    li      a3, 52608
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s1, 20232
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a6, 52600
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a1, 52616
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 52615
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a5, 52604
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a7, 52599
    add     a7,sp,a7
    sb      a7,0(a7)
    j       .while.head_62
                    #      label while.exit_62: 
.while.exit_62:
                    #      i_59 = i32 1_0 
                    #      jump label: while.head_84 
    j       .while.head_84
                    #      label while.head_84: 
.while.head_84:
                    #      new_var temp_65_83:i32 
                    #      temp_65_83 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    lw      a3,0(a0)
                    #      new_var temp_66_83:i1 
                    #      temp_66_83 = icmp i32 Sle i_59, temp_65_83 
    slt     a5,a3,a4
    xori    a5,a5,1
                    #      br i1 temp_66_83, label while.body_84, label while.exit_84 
    bnez    a5, .while.body_84
    j       .while.exit_84
                    #      label while.body_84: 
.while.body_84:
                    #      new_var temp_67_85:ptr->i32 
                    #      temp_67_85 = getelementptr fa_0:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      a0, 0
    li      a6, 1
    mul     a7,a6,a4
                    #occupy reg a7 with fa_0
    add     a0,a0,a7
    slli a0,a0,2
    add     a0,a0,a0
                    #      store i_59:i32 temp_67_85:ptr->i32 
    sd      a4,0(a0)
                    #      mu fa_0:336 
                    #      fa_0 = chi fa_0:336 
                    #      new_var temp_68_85:i32 
                    #      temp_68_85 = Add i32 i_59, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    add     s1,a4,a6
                    #      i_59 = i32 temp_68_85 
    mv      a4, s1
                    #      jump label: while.head_84 
    li      a3, 20228
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s1, 20212
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a5, 20227
    add     a5,sp,a5
    sb      a5,0(a5)
    li      a0, 20216
    add     a0,sp,a0
    sd      a0,0(a0)
    j       .while.head_84
                    #      label while.exit_84: 
.while.exit_84:
                    #      i_59 = i32 0_0 
                    #      res_59 = i32 0_0 
    li      a0, 0
                    #      jump label: while.head_91 
    j       .while.head_91
                    #      label while.head_91: 
.while.head_91:
                    #      new_var temp_69_90:i32 
                    #      temp_69_90 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a6, m
                    #occupy reg a6 with *m_0
    lw      a7,0(a6)
                    #      new_var temp_70_90:i1 
                    #      temp_70_90 = icmp i32 Slt i_59, temp_69_90 
    slt     s1,a4,a7
                    #      br i1 temp_70_90, label while.body_91, label while.exit_91 
    bnez    s1, .while.body_91
    j       .while.exit_91
                    #      label while.body_91: 
.while.body_91:
                    #      new_var temp_71_93:Array:i32:[Some(1005_0)] 
                    #      temp_71_93 = load *u_0:ptr->i32 
                    #   load label u as ptr to reg
    la      a6, u
                    #occupy reg a6 with *u_0
    lw      s2,0(a6)
                    #      new_var temp_72_93:ptr->i32 
                    #      new_var temp_73_93:i32 
                    #      temp_72_93 = getelementptr temp_71_93:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      s3, 0
    li      s4, 1
    add     s3,s3,s2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_73_93 = load temp_72_93:ptr->i32 
    lw      s5,0(s3)
                    #      new_var temp_74_93:Array:i32:[Some(1005_0)] 
                    #      temp_74_93 = load *v_0:ptr->i32 
                    #   load label v as ptr to reg
    la      s6, v
                    #occupy reg s6 with *v_0
    lw      s7,0(s6)
                    #      new_var temp_75_93:ptr->i32 
                    #      new_var temp_76_93:i32 
                    #      temp_75_93 = getelementptr temp_74_93:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      s8, 0
                    #found literal reg Some(s4) already exist with 1_0
    add     s8,s8,s7
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_76_93 = load temp_75_93:ptr->i32 
    lw      s9,0(s8)
                    #      new_var temp_77_93:i32 
                    #      temp_77_93 =  Call i32 same_0(temp_73_93, temp_76_93) 
                    #saved register dumping to mem
    li      s1, 20203
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 20196
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 16168
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 16164
    add     s4,sp,s4
    sw      s5,0(s4)
    li      s5, 16160
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 12136
    add     s6,sp,s6
    sd      s8,0(s6)
    li      s7, 12132
    add     s7,sp,s7
    sw      s9,0(s7)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 20208
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s8, 16164
    add     s8,sp,s8
    lw      a0,0(s8)
    li      a1, 52616
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s9, 12132
    add     s9,sp,s9
    lw      a1,0(s9)
                    #arg load ended
    call    same
    li      a0, 12128
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_78_2236:i1 
                    #      temp_78_2236 = icmp i32 Ne temp_77_93, 0_0 
    li      a1, 0
    xor     s10,a0,a1
    snez    s10, s10
                    #      br i1 temp_78_2236, label branch_true_94, label branch_false_94 
    bnez    s10, .branch_true_94
    j       .branch_false_94
                    #      label branch_true_94: 
.branch_true_94:
                    #      jump label: while.exit_91 
    li      a1, 12132
    add     a1,sp,a1
    sw      s9,0(a1)
    li      a6, 16164
    add     a6,sp,a6
    sw      s8,0(a6)
    li      s2, 20203
    add     s2,sp,s2
    lb      s1,0(s2)
    li      s4, 52616
    add     s4,sp,s4
    lw      a1,0(s4)
    li      s2, 20203
    add     s2,sp,s2
    sb      s2,0(s2)
    li      a0, 12128
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 52615
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 20208
    add     a2,sp,a2
    lw      a0,0(a2)
    li      s10, 12127
    add     s10,sp,s10
    sb      s10,0(s10)
    li      s4, 52616
    add     s4,sp,s4
    sw      s4,0(s4)
    j       .while.exit_91
                    #      label branch_false_94: 
.branch_false_94:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_79_92:Array:i32:[Some(1005_0)] 
                    #      temp_79_92 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a1, c
                    #occupy reg a1 with *c_0
    lw      a6,0(a1)
                    #      new_var temp_80_92:ptr->i32 
                    #      new_var temp_81_92:i32 
                    #      temp_80_92 = getelementptr temp_79_92:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      s1, 0
    li      s2, 1
    add     s1,s1,a6
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_81_92 = load temp_80_92:ptr->i32 
    lw      s3,0(s1)
                    #      new_var temp_82_92:i32 
                    #      temp_82_92 = Add i32 res_59, temp_81_92 
    add     s5,s4,s3
                    #      res_59 = i32 temp_82_92 
    mv      s4, s5
                    #      new_var temp_83_92:Array:i32:[Some(1005_0)] 
                    #      temp_83_92 = load *u_0:ptr->i32 
                    #   load label u as ptr to reg
    la      s6, u
                    #occupy reg s6 with *u_0
    lw      s7,0(s6)
                    #      new_var temp_84_92:ptr->i32 
                    #      new_var temp_85_92:i32 
                    #      temp_84_92 = getelementptr temp_83_92:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      s11, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s11,s11,s7
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_85_92 = load temp_84_92:ptr->i32 
    lw      a1,0(s11)
                    #      new_var temp_86_92:i32 
                    #      temp_86_92 =  Call i32 find_0(temp_85_92) 
                    #saved register dumping to mem
    li      s1, 8096
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s2, 8092
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 20208
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 8088
    add     s4,sp,s4
    sw      s5,0(s4)
    li      s5, 8084
    add     s5,sp,s5
    sw      s7,0(s5)
    li      s6, 16164
    add     s6,sp,s6
    sw      s8,0(s6)
    li      s7, 12132
    add     s7,sp,s7
    sw      s9,0(s7)
    li      s8, 12127
    add     s8,sp,s8
    sb      s10,0(s8)
    li      s9, 4056
    add     s9,sp,s9
    sd      s11,0(s9)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 12128
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #arg load ended
    call    find
    li      a0, 4048
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      new_var temp_87_92:ptr->i32 
                    #      temp_87_92 = getelementptr fa_0:Array:i32:[Some(1005_0)] [Some(temp_86_92)] 
    li      s10, 0
    li      s11, 1
    mul     s1,s11,a0
                    #occupy reg s1 with fa_0
    add     s10,s10,s1
    slli s10,s10,2
    add     s10,s10,s10
                    #      new_var temp_88_92:Array:i32:[Some(1005_0)] 
                    #      temp_88_92 = load *v_0:ptr->i32 
                    #   load label v as ptr to reg
    la      s1, v
                    #occupy reg s1 with *v_0
    lw      s2,0(s1)
                    #      new_var temp_89_92:ptr->i32 
                    #      new_var temp_90_92:i32 
                    #      temp_89_92 = getelementptr temp_88_92:Array:i32:[Some(1005_0)] [Some(i_59)] 
    li      s1, 0
                    #found literal reg Some(s11) already exist with 1_0
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_90_92 = load temp_89_92:ptr->i32 
    lw      s3,0(s1)
                    #      store temp_90_92:i32 temp_87_92:ptr->i32 
    sd      s3,0(s10)
                    #      mu fa_0:422 
                    #      fa_0 = chi fa_0:422 
                    #      new_var temp_91_92:i32 
                    #      temp_91_92 = Add i32 i_59, 1_0 
                    #found literal reg Some(s11) already exist with 1_0
    add     s4,a4,s11
                    #      i_59 = i32 temp_91_92 
    mv      a4, s4
                    #      jump label: while.head_91 
    sw      s3,4(sp)
    sd      s1,8(sp)
    li      a6, 12120
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a1, 4052
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s5, 52616
    add     s5,sp,s5
    lw      a1,0(s5)
    li      s2, 4036
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s5, 52616
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a7, 20204
    add     a7,sp,a7
    sw      a7,0(a7)
    li      a0, 4048
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 52615
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 20208
    add     a2,sp,a2
    lw      a0,0(a2)
    li      s10, 4040
    add     s10,sp,s10
    sd      s10,0(s10)
    sw      s4,0(sp)
    j       .while.head_91
                    #      label while.exit_91: 
.while.exit_91:
                    #      ret res_59 
    li      a6, 52632
    add     a6,sp,a6
    ld      ra,0(a6)
    li      s2, 52624
    add     s2,sp,s2
    ld      s0,0(s2)
    li      a0, 20208
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s3, 52640
    li      s3, 52640
    add     sp,s3,sp
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_92:4|n:4|temp_93:4|m:4|i:4|temp_94:1|none:3|temp_95:8|temp_96:4|none:4|temp_97:8|temp_98:4|none:4|temp_99:8|temp_100:4|temp_101:4|temp_102:4|none:4
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
                    #      alloc i32 temp_92_101 
                    #      alloc i32 n_101 
                    #      alloc i32 temp_93_101 
                    #      alloc i32 m_101 
                    #      alloc i32 i_101 
                    #      alloc i1 temp_94_104 
                    #      alloc ptr->i32 temp_95_106 
                    #      alloc i32 temp_96_106 
                    #      alloc ptr->i32 temp_97_106 
                    #      alloc i32 temp_98_106 
                    #      alloc ptr->i32 temp_99_106 
                    #      alloc i32 temp_100_106 
                    #      alloc i32 temp_101_106 
                    #      alloc i32 temp_102_101 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_92_101:i32 
                    #      temp_92_101 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,76(sp)
                    #      n_101 = i32 temp_92_101 
    mv      a1, a0
                    #      new_var temp_93_101:i32 
                    #      temp_93_101 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,76(sp)
    sw      a0,68(sp)
                    #      m_101 = i32 temp_93_101 
    mv      a2, a0
                    #      i_101 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_105 
    j       .while.head_105
                    #      label while.head_105: 
.while.head_105:
                    #      new_var temp_94_104:i1 
                    #      temp_94_104 = icmp i32 Slt i_101, m_101 
    slt     a4,a3,a2
                    #      br i1 temp_94_104, label while.body_105, label while.exit_105 
    bnez    a4, .while.body_105
    j       .while.exit_105
                    #      label while.body_105: 
.while.body_105:
                    #      new_var temp_95_106:ptr->i32 
                    #      temp_95_106 = getelementptr u_0:Array:i32:[Some(1005_0)] [Some(i_101)] 
    li      a5, 0
    li      a6, 1
    mul     a7,a6,a3
                    #occupy reg a7 with u_0
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,a5
                    #      new_var temp_96_106:i32 
                    #      temp_96_106 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,68(sp)
    sw      a0,44(sp)
                    #      store temp_96_106:i32 temp_95_106:ptr->i32 
    sd      a0,0(a5)
                    #      mu u_0:457 
                    #      u_0 = chi u_0:457 
                    #      new_var temp_97_106:ptr->i32 
                    #      temp_97_106 = getelementptr v_0:Array:i32:[Some(1005_0)] [Some(i_101)] 
    li      s1, 0
                    #found literal reg Some(a6) already exist with 1_0
    mul     s2,a6,a3
                    #occupy reg s2 with v_0
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
                    #      new_var temp_98_106:i32 
                    #      temp_98_106 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
    sd      s1,32(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,44(sp)
    sw      a0,28(sp)
                    #      store temp_98_106:i32 temp_97_106:ptr->i32 
    sd      a0,0(s1)
                    #      mu v_0:466 
                    #      v_0 = chi v_0:466 
                    #      new_var temp_99_106:ptr->i32 
                    #      temp_99_106 = getelementptr c_0:Array:i32:[Some(1005_0)] [Some(i_101)] 
    li      s2, 0
                    #found literal reg Some(a6) already exist with 1_0
    mul     s3,a6,a3
                    #occupy reg s3 with c_0
    add     s2,s2,s3
    slli s2,s2,2
    add     s2,s2,s2
                    #      new_var temp_100_106:i32 
                    #      temp_100_106 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
    sd      s1,32(sp)
    sd      s2,16(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,28(sp)
    sw      a0,12(sp)
                    #      store temp_100_106:i32 temp_99_106:ptr->i32 
    sd      a0,0(s1)
                    #      mu c_0:475 
                    #      c_0 = chi c_0:475 
                    #      new_var temp_101_106:i32 
                    #      temp_101_106 = Add i32 i_101, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    add     s2,a3,a6
                    #      i_101 = i32 temp_101_106 
    mv      a3, s2
                    #      jump label: while.head_105 
    sw      a0,12(sp)
    lw      a0,68(sp)
    sb      a4,59(sp)
    sw      s2,8(sp)
    sd      a5,48(sp)
    sd      s1,16(sp)
    j       .while.head_105
                    #      label while.exit_105: 
.while.exit_105:
                    #      new_var temp_102_101:i32 
                    #      temp_102_101 =  Call i32 prim_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    prim
    sw      a0,68(sp)
    sw      a0,4(sp)
                    #      ret temp_102_101 
    ld      ra,88(sp)
    ld      s0,80(sp)
    sw      a0,4(sp)
    addi    sp,sp,96
    ret
.section        .data
    .align 4
    .globl fa
                    #      global Array:i32:[Some(1005_0)] fa_0 
    .type fa,@object
fa:
    .zero 4020
    .align 4
    .globl c
                    #      global Array:i32:[Some(1005_0)] c_0 
    .type c,@object
c:
    .zero 4020
    .align 4
    .globl v
                    #      global Array:i32:[Some(1005_0)] v_0 
    .type v,@object
v:
    .zero 4020
    .align 4
    .globl u
                    #      global Array:i32:[Some(1005_0)] u_0 
    .type u,@object
u:
    .zero 4020
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
    .globl maxn
                    #      global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 105
    .align 4
    .globl maxm
                    #      global i32 maxm_0 
    .type maxm,@object
maxm:
    .word 1005
