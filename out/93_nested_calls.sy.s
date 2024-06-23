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
    .text
    .align 4
                    #regtab 
                    #      Define func1_0 [x_16, y_16, z_16] -> func1_ret_0 
    .globl func1
    .type func1,@function
func1:
                    #mem layout:|ra_func1:8|s0_func1:8|x:4|y:4|z:4|temp_0:1|none:3|temp_1:4|temp_2:4|temp_3:4|none:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i1 temp_0_19 
                    #      alloc i32 temp_1_21 
                    #      alloc i32 temp_2_23 
                    #      alloc i32 temp_3_23 
                    #regtab     a0:Freed { symidx: x_16, tracked: true } |     a1:Freed { symidx: y_16, tracked: true } |     a2:Freed { symidx: z_16, tracked: true } | 
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_0_19:i1 
                    #      temp_0_19 = icmp i32 Eq z_16, 0_0 
    li      a3, 0
    xor     a4,a2,a3
    seqz    a4, a4
                    #      br i1 temp_0_19, label branch_true_20, label branch_false_20 
    bnez    a4, .branch_true_20
    j       .branch_false_20
                    #regtab     a0:Freed { symidx: x_16, tracked: true } |     a1:Freed { symidx: y_16, tracked: true } |     a2:Freed { symidx: z_16, tracked: true } |     a4:Freed { symidx: temp_0_19, tracked: true } | 
                    #      label branch_true_20: 
.branch_true_20:
                    #      new_var temp_1_21:i32 
                    #      temp_1_21 = Mul i32 x_16, y_16 
    mul     a3,a0,a1
                    #      ret temp_1_21 
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a3,12(sp)
    sw      a0,28(sp)
    addi    sp,sp,48
    ret
                    #regtab     a0:Freed { symidx: x_16, tracked: true } |     a1:Freed { symidx: y_16, tracked: true } |     a2:Freed { symidx: z_16, tracked: true } |     a4:Freed { symidx: temp_0_19, tracked: true } | 
                    #      label branch_false_20: 
.branch_false_20:
                    #      new_var temp_2_23:i32 
                    #      temp_2_23 = Sub i32 y_16, z_16 
    sub     a3,a1,a2
                    #      new_var temp_3_23:i32 
                    #      temp_3_23 =  Call i32 func1_0(x_16, temp_2_23, 0_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    lw      a0,28(sp)
    sw      a1,24(sp)
    mv      a1, a3
    sw      a2,20(sp)
    li      a2, 0
                    #arg load ended
    call    func1
    sw      a0,4(sp)
                    #      ret temp_3_23 
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a0,4(sp)
    addi    sp,sp,48
    ret
                    #regtab     a0:Freed { symidx: temp_3_23, tracked: true } |     a3:Freed { symidx: temp_2_23, tracked: true } |     a4:Freed { symidx: temp_0_19, tracked: true } | 
                    #      label L13_0: 
.L13_0:
                    #regtab     a0:Freed { symidx: temp_3_23, tracked: true } |     a3:Freed { symidx: temp_2_23, tracked: true } |     a4:Freed { symidx: temp_0_19, tracked: true } | 
                    #regtab 
                    #      Define func2_0 [x_25, y_25] -> func2_ret_0 
    .globl func2
    .type func2,@function
func2:
                    #mem layout:|ra_func2:8|s0_func2:8|x:4|y:4|temp_4:1|none:3|temp_5:4|temp_6:4|none:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i1 temp_4_250 
                    #      alloc i32 temp_5_30 
                    #      alloc i32 temp_6_30 
                    #regtab     a0:Freed { symidx: x_25, tracked: true } |     a1:Freed { symidx: y_25, tracked: true } | 
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_4_250:i1 
                    #      temp_4_250 = icmp i32 Ne y_25, 0_0 
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
                    #      br i1 temp_4_250, label branch_true_29, label branch_false_29 
    bnez    a3, .branch_true_29
    j       .branch_false_29
                    #regtab     a0:Freed { symidx: x_25, tracked: true } |     a1:Freed { symidx: y_25, tracked: true } |     a3:Freed { symidx: temp_4_250, tracked: true } | 
                    #      label branch_true_29: 
.branch_true_29:
                    #      new_var temp_5_30:i32 
                    #      temp_5_30 = Mod i32 x_25, y_25 
    rem     a2,a0,a1
                    #      new_var temp_6_30:i32 
                    #      temp_6_30 =  Call i32 func2_0(temp_5_30, 0_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,20(sp)
    mv      a0, a2
    sw      a1,16(sp)
    li      a1, 0
                    #arg load ended
    call    func2
    sw      a0,4(sp)
                    #      ret temp_6_30 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,4(sp)
    addi    sp,sp,40
    ret
                    #regtab     a0:Freed { symidx: x_25, tracked: true } |     a1:Freed { symidx: y_25, tracked: true } |     a3:Freed { symidx: temp_4_250, tracked: true } | 
                    #      label branch_false_29: 
.branch_false_29:
                    #      ret x_25 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,20(sp)
    addi    sp,sp,40
    ret
                    #regtab     a0:Freed { symidx: x_25, tracked: true } |     a1:Freed { symidx: y_25, tracked: true } |     a3:Freed { symidx: temp_4_250, tracked: true } | 
                    #      label L11_0: 
.L11_0:
                    #regtab     a0:Freed { symidx: x_25, tracked: true } |     a1:Freed { symidx: y_25, tracked: true } |     a3:Freed { symidx: temp_4_250, tracked: true } | 
                    #regtab 
                    #      Define func3_0 [x_34, y_34] -> func3_ret_0 
    .globl func3
    .type func3,@function
func3:
                    #mem layout:|ra_func3:8|s0_func3:8|x:4|y:4|temp_7:1|none:3|temp_8:4|temp_9:4|temp_10:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i1 temp_7_37 
                    #      alloc i32 temp_8_39 
                    #      alloc i32 temp_9_41 
                    #      alloc i32 temp_10_41 
                    #regtab     a0:Freed { symidx: x_34, tracked: true } |     a1:Freed { symidx: y_34, tracked: true } | 
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_7_37:i1 
                    #      temp_7_37 = icmp i32 Eq y_34, 0_0 
    li      a2, 0
    xor     a3,a1,a2
    seqz    a3, a3
                    #      br i1 temp_7_37, label branch_true_38, label branch_false_38 
    bnez    a3, .branch_true_38
    j       .branch_false_38
                    #regtab     a0:Freed { symidx: x_34, tracked: true } |     a1:Freed { symidx: y_34, tracked: true } |     a3:Freed { symidx: temp_7_37, tracked: true } | 
                    #      label branch_true_38: 
.branch_true_38:
                    #      new_var temp_8_39:i32 
                    #      temp_8_39 = Add i32 x_34, 1_0 
    li      a2, 1
    add     a4,a0,a2
                    #      ret temp_8_39 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a4,8(sp)
    sw      a0,20(sp)
    addi    sp,sp,40
    ret
                    #regtab     a0:Freed { symidx: x_34, tracked: true } |     a1:Freed { symidx: y_34, tracked: true } |     a3:Freed { symidx: temp_7_37, tracked: true } | 
                    #      label branch_false_38: 
.branch_false_38:
                    #      new_var temp_9_41:i32 
                    #      temp_9_41 = Add i32 x_34, y_34 
    add     a2,a0,a1
                    #      new_var temp_10_41:i32 
                    #      temp_10_41 =  Call i32 func3_0(temp_9_41, 0_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,20(sp)
    mv      a0, a2
    sw      a1,16(sp)
    li      a1, 0
                    #arg load ended
    call    func3
    sw      a0,0(sp)
                    #      ret temp_10_41 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,0(sp)
    addi    sp,sp,40
    ret
                    #regtab     a0:Freed { symidx: temp_10_41, tracked: true } |     a2:Freed { symidx: temp_9_41, tracked: true } |     a3:Freed { symidx: temp_7_37, tracked: true } | 
                    #      label L9_0: 
.L9_0:
                    #regtab     a0:Freed { symidx: temp_10_41, tracked: true } |     a2:Freed { symidx: temp_9_41, tracked: true } |     a3:Freed { symidx: temp_7_37, tracked: true } | 
                    #regtab 
                    #      Define func4_0 [x_43, y_43, z_43] -> func4_ret_0 
    .globl func4
    .type func4,@function
func4:
                    #mem layout:|ra_func4:8|s0_func4:8|x:4|y:4|z:4|temp_11:1|none:3
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    #      alloc i1 temp_11_605 
                    #regtab     a0:Freed { symidx: x_43, tracked: true } |     a1:Freed { symidx: y_43, tracked: true } |     a2:Freed { symidx: z_43, tracked: true } | 
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_11_605:i1 
                    #      temp_11_605 = icmp i32 Ne x_43, 0_0 
    li      a3, 0
    xor     a4,a0,a3
    snez    a4, a4
                    #      br i1 temp_11_605, label branch_true_47, label branch_false_47 
    bnez    a4, .branch_true_47
    j       .branch_false_47
                    #regtab     a0:Freed { symidx: x_43, tracked: true } |     a1:Freed { symidx: y_43, tracked: true } |     a2:Freed { symidx: z_43, tracked: true } |     a4:Freed { symidx: temp_11_605, tracked: true } | 
                    #      label branch_true_47: 
.branch_true_47:
                    #      ret y_43 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a1,8(sp)
    sw      a0,12(sp)
    addi    sp,sp,32
    ret
                    #regtab     a0:Freed { symidx: x_43, tracked: true } |     a1:Freed { symidx: y_43, tracked: true } |     a2:Freed { symidx: z_43, tracked: true } |     a4:Freed { symidx: temp_11_605, tracked: true } | 
                    #      label branch_false_47: 
.branch_false_47:
                    #      ret z_43 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a2,4(sp)
    sw      a0,12(sp)
    addi    sp,sp,32
    ret
                    #regtab     a0:Freed { symidx: z_43, tracked: true } |     a1:Freed { symidx: y_43, tracked: true } |     a4:Freed { symidx: temp_11_605, tracked: true } | 
                    #      label L7_0: 
.L7_0:
                    #regtab     a0:Freed { symidx: z_43, tracked: true } |     a1:Freed { symidx: y_43, tracked: true } |     a4:Freed { symidx: temp_11_605, tracked: true } | 
                    #regtab 
                    #      Define func5_0 [x_52] -> func5_ret_0 
    .globl func5
    .type func5,@function
func5:
                    #mem layout:|ra_func5:8|s0_func5:8|x:4|temp_12:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_12_54 
                    #regtab     a0:Freed { symidx: x_52, tracked: true } | 
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_12_54:i32 
                    #      temp_12_54 = Sub i32 0_0, x_52 
    li      a1, 0
    sub     a2,a1,a0
                    #      ret temp_12_54 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a2,0(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
                    #regtab     a0:Freed { symidx: temp_12_54, tracked: true } |     a1:Freed { symidx: 0_0, tracked: false } | 
                    #regtab 
                    #      Define func6_0 [x_56, y_56] -> func6_ret_0 
    .globl func6
    .type func6,@function
func6:
                    #mem layout:|ra_func6:8|s0_func6:8|x:4|y:4|temp_13:1|temp_14:1|temp_15:1|none:5
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    #      alloc i1 temp_13_59 
                    #      alloc i1 temp_14_59 
                    #      alloc i1 temp_15_59 
                    #regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: y_56, tracked: true } | 
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_13_59:i1 
                    #      temp_13_59 = icmp i32 Ne x_56, 0_0 
    li      a2, 0
    xor     a3,a0,a2
    snez    a3, a3
                    #      new_var temp_14_59:i1 
                    #      temp_13_59 = icmp i32 Ne y_56, 0_0 
                    #found literal reg Some(a2) already exist with 0_0
                    #      new_var temp_15_59:i1 
                    #      temp_15_59 = And i1 temp_13_59, temp_14_59 
    and     a5,a3,a4
                    #      br i1 temp_15_59, label branch_true_60, label branch_false_60 
    bnez    a5, .branch_true_60
    j       .branch_false_60
                    #regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: y_56, tracked: true } |     a3:Freed { symidx: temp_13_59, tracked: true } |     a4:Freed { symidx: temp_14_59, tracked: true } |     a5:Freed { symidx: temp_15_59, tracked: true } | 
                    #      label branch_true_60: 
.branch_true_60:
                    #      ret 1_0 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    li      a0, 1
    addi    sp,sp,32
    ret
                    #regtab     a0:Freed { symidx: x_56, tracked: true } |     a1:Freed { symidx: y_56, tracked: true } |     a3:Freed { symidx: temp_13_59, tracked: true } |     a4:Freed { symidx: temp_14_59, tracked: true } |     a5:Freed { symidx: temp_15_59, tracked: true } | 
                    #      label branch_false_60: 
.branch_false_60:
                    #      ret 0_0 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    li      a0, 0
    addi    sp,sp,32
    ret
                    #regtab     a0:Freed { symidx: 0_0, tracked: false } |     a1:Freed { symidx: y_56, tracked: true } |     a3:Freed { symidx: temp_13_59, tracked: true } |     a4:Freed { symidx: temp_14_59, tracked: true } |     a5:Freed { symidx: temp_15_59, tracked: true } | 
                    #      label L4_0: 
.L4_0:
                    #regtab     a0:Freed { symidx: 0_0, tracked: false } |     a1:Freed { symidx: y_56, tracked: true } |     a3:Freed { symidx: temp_13_59, tracked: true } |     a4:Freed { symidx: temp_14_59, tracked: true } |     a5:Freed { symidx: temp_15_59, tracked: true } | 
                    #regtab 
                    #      Define func7_0 [x_65] -> func7_ret_0 
    .globl func7
    .type func7,@function
func7:
                    #mem layout:|ra_func7:8|s0_func7:8|x:4|temp_16:1|temp_17:1|none:2
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i1 temp_16_68 
                    #      alloc i1 temp_17_68 
                    #regtab     a0:Freed { symidx: x_65, tracked: true } | 
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_16_68:i1 
                    #      temp_16_68 = icmp i1 Ne x_65, 0_0 
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
                    #      new_var temp_17_68:i1 
                    #      temp_17_68 = xor i1 temp_16_68, true 
    seqz    a3, a2
                    #      br i1 temp_17_68, label branch_true_69, label branch_false_69 
    bnez    a3, .branch_true_69
    j       .branch_false_69
                    #regtab     a0:Freed { symidx: x_65, tracked: true } |     a2:Freed { symidx: temp_16_68, tracked: true } |     a3:Freed { symidx: temp_17_68, tracked: true } | 
                    #      label branch_true_69: 
.branch_true_69:
                    #      ret 1_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
                    #regtab     a0:Freed { symidx: x_65, tracked: true } |     a2:Freed { symidx: temp_16_68, tracked: true } |     a3:Freed { symidx: temp_17_68, tracked: true } | 
                    #      label branch_false_69: 
.branch_false_69:
                    #      ret 0_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
                    #regtab     a0:Freed { symidx: 0_0, tracked: false } |     a2:Freed { symidx: temp_16_68, tracked: true } |     a3:Freed { symidx: temp_17_68, tracked: true } | 
                    #      label L2_0: 
.L2_0:
                    #regtab     a0:Freed { symidx: 0_0, tracked: false } |     a2:Freed { symidx: temp_16_68, tracked: true } |     a3:Freed { symidx: temp_17_68, tracked: true } | 
                    #regtab 
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_18:4|i1:4|temp_19:4|i2:4|temp_20:4|i3:4|temp_21:4|i4:4|arr:40|i:4|temp_22:1|none:3|temp_23:8|temp_24:4|temp_25:4|temp_26:4|temp_27:4|temp_28:4|temp_29:4|temp_30:4|temp_31:4|temp_32:8|temp_33:4|none:4|temp_34:8|temp_35:4|temp_36:4|temp_37:8|temp_38:4|none:4|temp_39:8|temp_40:4|temp_41:4|temp_42:4|none:4|temp_43:8|temp_44:4|none:4|temp_45:8|temp_46:4|temp_47:4|temp_48:4|temp_49:4|temp_50:8|temp_51:4|temp_52:4|temp_53:8|temp_54:4|temp_55:4|temp_56:8|temp_57:4|none:4|temp_58:8|temp_59:4|temp_60:4|temp_61:4|temp_62:4|temp_63:4|temp_64:4|temp_65:4|temp_66:4|temp_67:4|none:4|temp_68:8|temp_69:4|none:4|temp_70:8|temp_71:4|temp_72:4|temp_73:8|temp_74:4|temp_75:4|temp_76:8|temp_77:4|none:4|temp_78:8|temp_79:4|none:4|temp_80:8|temp_81:4|temp_82:4|temp_83:4|none:4|temp_84:8|temp_85:4|temp_86:4|temp_87:4|none:4|temp_88:8|temp_89:4|none:4|temp_90:8|temp_91:4|temp_92:4|temp_93:4|none:4|temp_94:8|temp_95:4|temp_96:4|temp_97:4|temp_98:4|temp_99:4|a:4
    addi    sp,sp,-544
    sd      ra,536(sp)
    sd      s0,528(sp)
    addi    s0,sp,544
                    #      alloc i32 temp_18_75 
                    #      alloc i32 i1_75 
                    #      alloc i32 temp_19_75 
                    #      alloc i32 i2_75 
                    #      alloc i32 temp_20_75 
                    #      alloc i32 i3_75 
                    #      alloc i32 temp_21_75 
                    #      alloc i32 i4_75 
                    #      alloc Array:i32:[Some(10_0)] arr_75 
                    #      alloc i32 i_75 
                    #      alloc i1 temp_22_79 
                    #      alloc ptr->i32 temp_23_81 
                    #      alloc i32 temp_24_81 
                    #      alloc i32 temp_25_81 
                    #      alloc i32 temp_26_75 
                    #      alloc i32 temp_27_75 
                    #      alloc i32 temp_28_75 
                    #      alloc i32 temp_29_75 
                    #      alloc i32 temp_30_75 
                    #      alloc i32 temp_31_75 
                    #      alloc ptr->i32 temp_32_75 
                    #      alloc i32 temp_33_75 
                    #      alloc ptr->i32 temp_34_75 
                    #      alloc i32 temp_35_75 
                    #      alloc i32 temp_36_75 
                    #      alloc ptr->i32 temp_37_75 
                    #      alloc i32 temp_38_75 
                    #      alloc ptr->i32 temp_39_75 
                    #      alloc i32 temp_40_75 
                    #      alloc i32 temp_41_75 
                    #      alloc i32 temp_42_75 
                    #      alloc ptr->i32 temp_43_75 
                    #      alloc i32 temp_44_75 
                    #      alloc ptr->i32 temp_45_75 
                    #      alloc i32 temp_46_75 
                    #      alloc i32 temp_47_75 
                    #      alloc i32 temp_48_75 
                    #      alloc i32 temp_49_75 
                    #      alloc ptr->i32 temp_50_75 
                    #      alloc i32 temp_51_75 
                    #      alloc i32 temp_52_75 
                    #      alloc ptr->i32 temp_53_75 
                    #      alloc i32 temp_54_75 
                    #      alloc i32 temp_55_75 
                    #      alloc ptr->i32 temp_56_75 
                    #      alloc i32 temp_57_75 
                    #      alloc ptr->i32 temp_58_75 
                    #      alloc i32 temp_59_75 
                    #      alloc i32 temp_60_75 
                    #      alloc i32 temp_61_75 
                    #      alloc i32 temp_62_75 
                    #      alloc i32 temp_63_75 
                    #      alloc i32 temp_64_75 
                    #      alloc i32 temp_65_75 
                    #      alloc i32 temp_66_75 
                    #      alloc i32 temp_67_75 
                    #      alloc ptr->i32 temp_68_75 
                    #      alloc i32 temp_69_75 
                    #      alloc ptr->i32 temp_70_75 
                    #      alloc i32 temp_71_75 
                    #      alloc i32 temp_72_75 
                    #      alloc ptr->i32 temp_73_75 
                    #      alloc i32 temp_74_75 
                    #      alloc i32 temp_75_75 
                    #      alloc ptr->i32 temp_76_75 
                    #      alloc i32 temp_77_75 
                    #      alloc ptr->i32 temp_78_75 
                    #      alloc i32 temp_79_75 
                    #      alloc ptr->i32 temp_80_75 
                    #      alloc i32 temp_81_75 
                    #      alloc i32 temp_82_75 
                    #      alloc i32 temp_83_75 
                    #      alloc ptr->i32 temp_84_75 
                    #      alloc i32 temp_85_75 
                    #      alloc i32 temp_86_75 
                    #      alloc i32 temp_87_75 
                    #      alloc ptr->i32 temp_88_75 
                    #      alloc i32 temp_89_75 
                    #      alloc ptr->i32 temp_90_75 
                    #      alloc i32 temp_91_75 
                    #      alloc i32 temp_92_75 
                    #      alloc i32 temp_93_75 
                    #      alloc ptr->i32 temp_94_75 
                    #      alloc i32 temp_95_75 
                    #      alloc i32 temp_96_75 
                    #      alloc i32 temp_97_75 
                    #      alloc i32 temp_98_75 
                    #      alloc i32 temp_99_75 
                    #      alloc i32 a_75 
                    #regtab 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_18_75:i32 
                    #      temp_18_75 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,524(sp)
                    #      i1_75 = i32 temp_18_75 
    mv      a1, a0
                    #      new_var temp_19_75:i32 
                    #      temp_19_75 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,524(sp)
    sw      a0,516(sp)
                    #      i2_75 = i32 temp_19_75 
    mv      a2, a0
                    #      new_var temp_20_75:i32 
                    #      temp_20_75 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,516(sp)
    sw      a0,508(sp)
                    #      i3_75 = i32 temp_20_75 
    mv      a3, a0
                    #      new_var temp_21_75:i32 
                    #      temp_21_75 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,508(sp)
    sw      a0,500(sp)
                    #      i4_75 = i32 temp_21_75 
    mv      a4, a0
                    #      new_var arr_75:Array:i32:[Some(10_0)] 
                    #      i_75 = i32 0_0 
    li      a5, 0
                    #      jump label: while.head_80 
    j       .while.head_80
                    #regtab     a0:Freed { symidx: temp_21_75, tracked: true } |     a1:Freed { symidx: i1_75, tracked: true } |     a2:Freed { symidx: i2_75, tracked: true } |     a3:Freed { symidx: i3_75, tracked: true } |     a4:Freed { symidx: i4_75, tracked: true } |     a5:Freed { symidx: i_75, tracked: true } | 
                    #      label while.head_80: 
.while.head_80:
                    #      new_var temp_22_79:i1 
                    #      temp_22_79 = icmp i32 Slt i_75, 10_0 
    li      a6, 10
    slt     a7,a5,a6
                    #      br i1 temp_22_79, label while.body_80, label while.exit_80 
    bnez    a7, .while.body_80
    j       .while.exit_80
                    #regtab     a0:Freed { symidx: temp_21_75, tracked: true } |     a1:Freed { symidx: i1_75, tracked: true } |     a2:Freed { symidx: i2_75, tracked: true } |     a3:Freed { symidx: i3_75, tracked: true } |     a4:Freed { symidx: i4_75, tracked: true } |     a5:Freed { symidx: i_75, tracked: true } |     a7:Freed { symidx: temp_22_79, tracked: true } | 
                    #      label while.body_80: 
.while.body_80:
                    #      new_var temp_23_81:ptr->i32 
                    #      temp_23_81 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(i_75)] 
    li      a6, 0
    li      s1, 1
    mul     s2,s1,a5
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      new_var temp_24_81:i32 
                    #      temp_24_81 =  Call i32 getint_0() 
                    #saved register dumping to mem
    sw      s2,492(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,500(sp)
    sw      a0,436(sp)
                    #      store temp_24_81:i32 temp_23_81:ptr->i32 
    sd      a0,0(a6)
                    #      mu arr_75:159 
                    #      arr_75 = chi arr_75:159 
                    #      new_var temp_25_81:i32 
                    #      temp_25_81 = Add i32 i_75, 1_0 
    li      s1, 1
    add     s2,a5,s1
                    #      i_75 = i32 temp_25_81 
    mv      a5, s2
                    #      jump label: while.head_80 
    sw      a0,436(sp)
    lw      a0,500(sp)
    sb      a7,451(sp)
    sd      a6,440(sp)
    sw      s2,432(sp)
    j       .while.head_80
                    #regtab     a0:Freed { symidx: temp_21_75, tracked: true } |     a1:Freed { symidx: i1_75, tracked: true } |     a2:Freed { symidx: i2_75, tracked: true } |     a3:Freed { symidx: i3_75, tracked: true } |     a4:Freed { symidx: i4_75, tracked: true } |     a5:Freed { symidx: i_75, tracked: true } |     a7:Freed { symidx: temp_22_79, tracked: true } | 
                    #      label while.exit_80: 
.while.exit_80:
                    #      new_var temp_26_75:i32 
                    #      temp_26_75 =  Call i32 func7_0(i1_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,500(sp)
    mv      a0, a1
                    #arg load ended
    call    func7
    sw      a0,428(sp)
                    #      new_var temp_27_75:i32 
                    #      temp_27_75 =  Call i32 func5_0(i2_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,428(sp)
    mv      a0, a2
                    #arg load ended
    call    func5
    sw      a0,424(sp)
                    #      new_var temp_28_75:i32 
                    #      temp_28_75 =  Call i32 func6_0(temp_26_75, temp_27_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,424(sp)
    lw      a0,428(sp)
    sw      a1,520(sp)
    lw      a1,424(sp)
                    #arg load ended
    call    func6
    sw      a0,420(sp)
                    #      new_var temp_29_75:i32 
                    #      temp_29_75 =  Call i32 func2_0(temp_28_75, i3_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,420(sp)
    lw      a0,420(sp)
    mv      a1, a3
                    #arg load ended
    call    func2
    sw      a0,416(sp)
                    #      new_var temp_30_75:i32 
                    #      temp_30_75 =  Call i32 func3_0(temp_29_75, i4_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,416(sp)
    lw      a0,416(sp)
    mv      a1, a4
                    #arg load ended
    call    func3
    sw      a0,412(sp)
                    #      new_var temp_31_75:i32 
                    #      temp_31_75 =  Call i32 func5_0(temp_30_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,412(sp)
    lw      a0,412(sp)
                    #arg load ended
    call    func5
    sw      a0,408(sp)
                    #      new_var temp_32_75:ptr->i32 
                    #      new_var temp_33_75:i32 
                    #      temp_32_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(0_0)] 
    li      a1, 0
    li      a6, 1
    li      s1, 0
    mul     s2,a6,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_33_75 = load temp_32_75:ptr->i32 
    lw      s3,0(a1)
                    #      new_var temp_34_75:ptr->i32 
                    #      new_var temp_35_75:i32 
                    #      temp_34_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(1_0)] 
    li      s4, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s5, 1
    add     s4,s4,s2
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_35_75 = load temp_34_75:ptr->i32 
    lw      s6,0(s4)
                    #      new_var temp_36_75:i32 
                    #      temp_36_75 =  Call i32 func5_0(temp_35_75) 
                    #saved register dumping to mem
    sw      s2,492(sp)
    sw      s3,396(sp)
    sd      s4,384(sp)
    sw      s6,380(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,408(sp)
    lw      a0,380(sp)
                    #arg load ended
    call    func5
    sw      a0,376(sp)
                    #      new_var temp_37_75:ptr->i32 
                    #      new_var temp_38_75:i32 
                    #      temp_37_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(2_0)] 
    li      s1, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s2, 2
    mul     s3,a6,s2
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_38_75 = load temp_37_75:ptr->i32 
    lw      s4,0(s1)
                    #      new_var temp_39_75:ptr->i32 
                    #      new_var temp_40_75:i32 
                    #      temp_39_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(3_0)] 
    li      s5, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s6, 3
    add     s5,s5,s3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_40_75 = load temp_39_75:ptr->i32 
    lw      s7,0(s5)
                    #      new_var temp_41_75:i32 
                    #      temp_41_75 =  Call i32 func7_0(temp_40_75) 
                    #saved register dumping to mem
    sd      s1,368(sp)
    sw      s3,492(sp)
    sw      s4,364(sp)
    sd      s5,352(sp)
    sw      s7,348(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,376(sp)
    lw      a0,348(sp)
                    #arg load ended
    call    func7
    sw      a0,344(sp)
                    #      new_var temp_42_75:i32 
                    #      temp_42_75 =  Call i32 func6_0(temp_38_75, temp_41_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,344(sp)
    lw      a0,364(sp)
    sd      a1,400(sp)
    lw      a1,344(sp)
                    #arg load ended
    call    func6
    sw      a0,340(sp)
                    #      new_var temp_43_75:ptr->i32 
                    #      new_var temp_44_75:i32 
                    #      temp_43_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(4_0)] 
    li      a1, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s1, 4
    mul     s2,a6,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_44_75 = load temp_43_75:ptr->i32 
    lw      s3,0(a1)
                    #      new_var temp_45_75:ptr->i32 
                    #      new_var temp_46_75:i32 
                    #      temp_45_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(5_0)] 
    li      s4, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s5, 5
    add     s4,s4,s2
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_46_75 = load temp_45_75:ptr->i32 
    lw      s6,0(s4)
                    #      new_var temp_47_75:i32 
                    #      temp_47_75 =  Call i32 func7_0(temp_46_75) 
                    #saved register dumping to mem
    sw      s2,492(sp)
    sw      s3,324(sp)
    sd      s4,312(sp)
    sw      s6,308(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,340(sp)
    lw      a0,308(sp)
                    #arg load ended
    call    func7
    sw      a0,304(sp)
                    #      new_var temp_48_75:i32 
                    #      temp_48_75 =  Call i32 func2_0(temp_44_75, temp_47_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,304(sp)
    lw      a0,324(sp)
    sd      a1,328(sp)
    lw      a1,304(sp)
                    #arg load ended
    call    func2
    sw      a0,300(sp)
                    #      new_var temp_49_75:i32 
                    #      temp_49_75 =  Call i32 func4_0(temp_36_75, temp_42_75, temp_48_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,300(sp)
    lw      a0,376(sp)
    lw      a1,340(sp)
    sw      a2,512(sp)
    lw      a2,300(sp)
                    #arg load ended
    call    func4
    sw      a0,296(sp)
                    #      new_var temp_50_75:ptr->i32 
                    #      new_var temp_51_75:i32 
                    #      temp_50_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(6_0)] 
    li      a1, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      a2, 6
    mul     s1,a6,a2
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_51_75 = load temp_50_75:ptr->i32 
    lw      s2,0(a1)
                    #      new_var temp_52_75:i32 
                    #      temp_52_75 =  Call i32 func3_0(temp_49_75, temp_51_75) 
                    #saved register dumping to mem
    sw      s1,492(sp)
    sw      s2,284(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,296(sp)
    lw      a0,296(sp)
    sd      a1,288(sp)
    lw      a1,284(sp)
                    #arg load ended
    call    func3
    sw      a0,280(sp)
                    #      new_var temp_53_75:ptr->i32 
                    #      new_var temp_54_75:i32 
                    #      temp_53_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(7_0)] 
    li      a1, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s1, 7
    mul     s2,a6,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_54_75 = load temp_53_75:ptr->i32 
    lw      s3,0(a1)
                    #      new_var temp_55_75:i32 
                    #      temp_55_75 =  Call i32 func2_0(temp_52_75, temp_54_75) 
                    #saved register dumping to mem
    sw      s2,492(sp)
    sw      s3,268(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,280(sp)
    lw      a0,280(sp)
    sd      a1,272(sp)
    lw      a1,268(sp)
                    #arg load ended
    call    func2
    sw      a0,264(sp)
                    #      new_var temp_56_75:ptr->i32 
                    #      new_var temp_57_75:i32 
                    #      temp_56_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(8_0)] 
    li      a1, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s1, 8
    mul     s2,a6,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_57_75 = load temp_56_75:ptr->i32 
    lw      s3,0(a1)
                    #      new_var temp_58_75:ptr->i32 
                    #      new_var temp_59_75:i32 
                    #      temp_58_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(9_0)] 
    li      s4, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s5, 9
    add     s4,s4,s2
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_59_75 = load temp_58_75:ptr->i32 
    lw      s6,0(s4)
                    #      new_var temp_60_75:i32 
                    #      temp_60_75 =  Call i32 func7_0(temp_59_75) 
                    #saved register dumping to mem
    sw      s2,492(sp)
    sw      s3,252(sp)
    sd      s4,240(sp)
    sw      s6,236(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,264(sp)
    lw      a0,236(sp)
                    #arg load ended
    call    func7
    sw      a0,232(sp)
                    #      new_var temp_61_75:i32 
                    #      temp_61_75 =  Call i32 func3_0(temp_57_75, temp_60_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,232(sp)
    lw      a0,252(sp)
    sd      a1,256(sp)
    lw      a1,232(sp)
                    #arg load ended
    call    func3
    sw      a0,228(sp)
                    #      new_var temp_62_75:i32 
                    #      temp_62_75 =  Call i32 func1_0(temp_55_75, temp_61_75, i1_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,228(sp)
    lw      a0,264(sp)
    lw      a1,228(sp)
    lw      a2,520(sp)
                    #arg load ended
    call    func1
    sw      a0,224(sp)
                    #      new_var temp_63_75:i32 
                    #      temp_63_75 =  Call i32 func4_0(temp_31_75, temp_33_75, temp_62_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,224(sp)
    lw      a0,408(sp)
    lw      a1,396(sp)
    lw      a2,224(sp)
                    #arg load ended
    call    func4
    sw      a0,220(sp)
                    #      new_var temp_64_75:i32 
                    #      temp_64_75 =  Call i32 func7_0(i3_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,220(sp)
    mv      a0, a3
                    #arg load ended
    call    func7
    sw      a0,216(sp)
                    #      new_var temp_65_75:i32 
                    #      temp_65_75 =  Call i32 func3_0(temp_64_75, i4_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,216(sp)
    lw      a0,216(sp)
    mv      a1, a4
                    #arg load ended
    call    func3
    sw      a0,212(sp)
                    #      new_var temp_66_75:i32 
                    #      temp_66_75 =  Call i32 func2_0(i2_75, temp_65_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,212(sp)
    lw      a0,512(sp)
    lw      a1,212(sp)
                    #arg load ended
    call    func2
    sw      a0,208(sp)
                    #      new_var temp_67_75:i32 
                    #      temp_67_75 =  Call i32 func3_0(temp_63_75, temp_66_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,208(sp)
    lw      a0,220(sp)
    lw      a1,208(sp)
                    #arg load ended
    call    func3
    sw      a0,204(sp)
                    #      new_var temp_68_75:ptr->i32 
                    #      new_var temp_69_75:i32 
                    #      temp_68_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(0_0)] 
    li      a1, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      a2, 0
    mul     s1,a6,a2
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_69_75 = load temp_68_75:ptr->i32 
    lw      s2,0(a1)
                    #      new_var temp_70_75:ptr->i32 
                    #      new_var temp_71_75:i32 
                    #      temp_70_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(1_0)] 
    li      s3, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s4, 1
    add     s3,s3,s1
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_71_75 = load temp_70_75:ptr->i32 
    lw      s5,0(s3)
                    #      new_var temp_72_75:i32 
                    #      temp_72_75 =  Call i32 func1_0(temp_67_75, temp_69_75, temp_71_75) 
                    #saved register dumping to mem
    sw      s1,492(sp)
    sw      s2,188(sp)
    sd      s3,176(sp)
    sw      s5,172(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,204(sp)
    lw      a0,204(sp)
    sd      a1,192(sp)
    lw      a1,188(sp)
    lw      a2,172(sp)
                    #arg load ended
    call    func1
    sw      a0,168(sp)
                    #      new_var temp_73_75:ptr->i32 
                    #      new_var temp_74_75:i32 
                    #      temp_73_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(2_0)] 
    li      a1, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      a2, 2
    mul     s1,a6,a2
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_74_75 = load temp_73_75:ptr->i32 
    lw      s2,0(a1)
                    #      new_var temp_75_75:i32 
                    #      temp_75_75 =  Call i32 func2_0(temp_72_75, temp_74_75) 
                    #saved register dumping to mem
    sw      s1,492(sp)
    sw      s2,156(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,168(sp)
    lw      a0,168(sp)
    sd      a1,160(sp)
    lw      a1,156(sp)
                    #arg load ended
    call    func2
    sw      a0,152(sp)
                    #      new_var temp_76_75:ptr->i32 
                    #      new_var temp_77_75:i32 
                    #      temp_76_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(3_0)] 
    li      a1, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s1, 3
    mul     s2,a6,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_77_75 = load temp_76_75:ptr->i32 
    lw      s3,0(a1)
                    #      new_var temp_78_75:ptr->i32 
                    #      new_var temp_79_75:i32 
                    #      temp_78_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(4_0)] 
    li      s4, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s5, 4
    add     s4,s4,s2
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_79_75 = load temp_78_75:ptr->i32 
    lw      s6,0(s4)
                    #      new_var temp_80_75:ptr->i32 
                    #      new_var temp_81_75:i32 
                    #      temp_80_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(5_0)] 
    li      s7, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s8, 5
    add     s7,s7,s2
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_81_75 = load temp_80_75:ptr->i32 
    lw      s9,0(s7)
                    #      new_var temp_82_75:i32 
                    #      temp_82_75 =  Call i32 func5_0(temp_81_75) 
                    #saved register dumping to mem
    sw      s2,492(sp)
    sw      s3,140(sp)
    sd      s4,128(sp)
    sw      s6,124(sp)
    sd      s7,112(sp)
    sw      s9,108(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,152(sp)
    lw      a0,108(sp)
                    #arg load ended
    call    func5
    sw      a0,104(sp)
                    #      new_var temp_83_75:i32 
                    #      temp_83_75 =  Call i32 func3_0(temp_79_75, temp_82_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,104(sp)
    lw      a0,124(sp)
    sd      a1,144(sp)
    lw      a1,104(sp)
                    #arg load ended
    call    func3
    sw      a0,100(sp)
                    #      new_var temp_84_75:ptr->i32 
                    #      new_var temp_85_75:i32 
                    #      temp_84_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(6_0)] 
    li      a1, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s1, 6
    mul     s2,a6,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_85_75 = load temp_84_75:ptr->i32 
    lw      s3,0(a1)
                    #      new_var temp_86_75:i32 
                    #      temp_86_75 =  Call i32 func5_0(temp_85_75) 
                    #saved register dumping to mem
    sw      s2,492(sp)
    sw      s3,84(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,100(sp)
    lw      a0,84(sp)
                    #arg load ended
    call    func5
    sw      a0,80(sp)
                    #      new_var temp_87_75:i32 
                    #      temp_87_75 =  Call i32 func2_0(temp_83_75, temp_86_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,80(sp)
    lw      a0,100(sp)
    sd      a1,88(sp)
    lw      a1,80(sp)
                    #arg load ended
    call    func2
    sw      a0,76(sp)
                    #      new_var temp_88_75:ptr->i32 
                    #      new_var temp_89_75:i32 
                    #      temp_88_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(7_0)] 
    li      a1, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s1, 7
    mul     s2,a6,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_89_75 = load temp_88_75:ptr->i32 
    lw      s3,0(a1)
                    #      new_var temp_90_75:ptr->i32 
                    #      new_var temp_91_75:i32 
                    #      temp_90_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(8_0)] 
    li      s4, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      s5, 8
    add     s4,s4,s2
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_91_75 = load temp_90_75:ptr->i32 
    lw      s6,0(s4)
                    #      new_var temp_92_75:i32 
                    #      temp_92_75 =  Call i32 func7_0(temp_91_75) 
                    #saved register dumping to mem
    sw      s2,492(sp)
    sw      s3,60(sp)
    sd      s4,48(sp)
    sw      s6,44(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,76(sp)
    lw      a0,44(sp)
                    #arg load ended
    call    func7
    sw      a0,40(sp)
                    #      new_var temp_93_75:i32 
                    #      temp_93_75 =  Call i32 func1_0(temp_87_75, temp_89_75, temp_92_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,40(sp)
    lw      a0,76(sp)
    sd      a1,64(sp)
    lw      a1,60(sp)
    lw      a2,40(sp)
                    #arg load ended
    call    func1
    sw      a0,36(sp)
                    #      new_var temp_94_75:ptr->i32 
                    #      new_var temp_95_75:i32 
                    #      temp_94_75 = getelementptr arr_75:Array:i32:[Some(10_0)] [Some(9_0)] 
    li      a1, 0
                    #found literal reg Some(a6) already exist with 1_0
    li      a2, 9
    mul     s1,a6,a2
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_95_75 = load temp_94_75:ptr->i32 
    lw      s2,0(a1)
                    #      new_var temp_96_75:i32 
                    #      temp_96_75 =  Call i32 func5_0(temp_95_75) 
                    #saved register dumping to mem
    sw      s1,492(sp)
    sw      s2,20(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,36(sp)
    lw      a0,20(sp)
                    #arg load ended
    call    func5
    sw      a0,16(sp)
                    #      new_var temp_97_75:i32 
                    #      temp_97_75 =  Call i32 func2_0(temp_93_75, temp_96_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    lw      a0,36(sp)
    sd      a1,24(sp)
    lw      a1,16(sp)
                    #arg load ended
    call    func2
    sw      a0,12(sp)
                    #      new_var temp_98_75:i32 
                    #      temp_98_75 =  Call i32 func3_0(temp_97_75, i1_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,12(sp)
    lw      a0,12(sp)
    lw      a1,520(sp)
                    #arg load ended
    call    func3
    sw      a0,8(sp)
                    #      new_var temp_99_75:i32 
                    #      temp_99_75 =  Call i32 func1_0(temp_75_75, temp_77_75, temp_98_75) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,8(sp)
    lw      a0,152(sp)
    lw      a1,140(sp)
    lw      a2,8(sp)
                    #arg load ended
    call    func1
    sw      a0,4(sp)
                    #      a_75 = i32 temp_99_75 
    mv      a1, a0
                    #      ret a_75 
    ld      ra,536(sp)
    ld      s0,528(sp)
    sw      a1,0(sp)
    sw      a0,4(sp)
    addi    sp,sp,544
    ret
                    #regtab     a0:Freed { symidx: a_75, tracked: true } |     a3:Freed { symidx: i3_75, tracked: true } |     a4:Freed { symidx: i4_75, tracked: true } |     a5:Freed { symidx: i_75, tracked: true } |     a6:Freed { symidx: 1_0, tracked: false } |     a7:Freed { symidx: temp_22_79, tracked: true } | 
