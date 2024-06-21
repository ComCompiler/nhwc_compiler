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
                    #      alloc i32 temp_0_18 
                    #      alloc i32 ch_18 
                    #      alloc i32 x_18 
                    #      alloc i32 f_18 
                    #      alloc i1 temp_1_21 
                    #      alloc i1 temp_2_21 
                    #      alloc i1 temp_3_21 
                    #      alloc i1 temp_4_24 
                    #      alloc i32 temp_5_23 
                    #      alloc i1 temp_6_28 
                    #      alloc i1 temp_7_28 
                    #      alloc i1 temp_8_28 
                    #      alloc i32 temp_9_30 
                    #      alloc i32 temp_10_30 
                    #      alloc i32 temp_11_30 
                    #      alloc i32 temp_12_30 
                    #      alloc i1 temp_13_416 
                    #      alloc i32 temp_14_33 
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_0_18:i32 
                    #      temp_0_18 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
                    #      ch_18 = i32 temp_0_18 
    mv      a1, a0
                    #      x_18 = i32 0_0 
    li      a2, 0
                    #      f_18 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_22 
    j       .while.head_22
                    #      label while.head_22: 
.while.head_22:
                    #      new_var temp_1_21:i1 
                    #      temp_1_21 = icmp i32 Sgt 57_0, ch_18 
    li      a4, 57
    slt     a5,a1,a4
                    #      new_var temp_2_21:i1 
                    #      temp_2_21 = icmp i32 Slt ch_18, 48_0 
    li      a6, 48
    slt     a7,a1,a6
                    #      new_var temp_3_21:i1 
                    #      temp_3_21 = Or i1 temp_2_21, temp_1_21 
                    #      br i1 temp_3_21, label while.body_22, label while.exit_22 
    bnez    s1, .while.body_22
    j       .while.exit_22
                    #      label while.body_22: 
.while.body_22:
                    #      new_var temp_4_24:i1 
                    #      temp_4_24 = icmp i32 Eq ch_18, 45_0 
    li      a4, 45
    xor     a6,a1,a4
    seqz    a6, a6
                    #      br i1 temp_4_24, label branch_true_25, label branch_false_25 
    bnez    a6, .branch_true_25
    j       .branch_false_25
                    #      label branch_true_25: 
.branch_true_25:
                    #      f_18 = i32 1_0 
                    #      jump label: branch_false_25 
    j       .branch_false_25
                    #      label branch_false_25: 
.branch_false_25:
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_5_23:i32 
                    #      temp_5_23 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,37(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
    sw      a0,32(sp)
                    #      ch_18 = i32 temp_5_23 
    mv      a1, a0
                    #      jump label: while.head_22 
    sb      a5,39(sp)
    sw      a0,32(sp)
    lw      a0,52(sp)
    sb      a7,38(sp)
    sb      a6,36(sp)
    j       .while.head_22
                    #      label while.head_29: 
.while.head_29:
                    #      new_var temp_6_28:i1 
                    #      temp_6_28 = icmp i32 Sle 57_0, ch_18 
    li      a4, 57
    slt     a6,a1,a4
    xori    a6,a6,1
                    #      new_var temp_7_28:i1 
                    #      temp_7_28 = icmp i32 Sge ch_18, 48_0 
    li      s2, 48
    slt     s3,a1,s2
    xori    s3,s3,1
                    #      new_var temp_8_28:i1 
                    #      temp_8_28 = And i1 temp_7_28, temp_6_28 
    and     s4,s3,a6
                    #      br i1 temp_8_28, label while.body_29, label while.exit_29 
    bnez    s4, .while.body_29
    j       .while.exit_29
                    #      label while.body_29: 
.while.body_29:
                    #      new_var temp_9_30:i32 
                    #      temp_9_30 = Sub i32 ch_18, 48_0 
    li      a4, 48
    sub     s2,a1,a4
                    #      new_var temp_10_30:i32 
                    #      temp_10_30 = Mul i32 x_18, 10_0 
    li      s5, 10
    mul     s6,a2,s5
                    #      new_var temp_11_30:i32 
                    #      temp_11_30 = Add i32 temp_10_30, temp_9_30 
    add     s7,s6,s2
                    #      x_18 = i32 temp_11_30 
    mv      a2, s7
                    #      new_var temp_12_30:i32 
                    #      temp_12_30 =  Call i32 getch_0() 
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
                    #      ch_18 = i32 temp_12_30 
    mv      a1, a0
                    #      jump label: while.head_29 
    sw      a0,12(sp)
    lw      a0,52(sp)
    lb      s1,37(sp)
    sb      a6,31(sp)
    j       .while.head_29
                    #      label while.exit_29: 
.while.exit_29:
                    #      new_var temp_13_416:i1 
                    #      temp_13_416 = icmp i32 Ne f_18, 0_0 
    li      a4, 0
    xor     s2,a3,a4
    snez    s2, s2
                    #      br i1 temp_13_416, label branch_true_34, label branch_false_34 
    bnez    s2, .branch_true_34
    j       .branch_false_34
                    #      label branch_true_34: 
.branch_true_34:
                    #      new_var temp_14_33:i32 
                    #      temp_14_33 = Sub i32 0_0, x_18 
    li      a4, 0
    sub     s5,a4,a2
                    #      ret temp_14_33 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s5,4(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label branch_false_34: 
.branch_false_34:
                    #      ret x_18 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a2,44(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label L10_0: 
.L10_0:
                    #      Define init_0 [] -> init_ret_0 
    .globl init
    .type init,@function
init:
                    #mem layout:|ra_init:8|s0_init:8|i:4|temp_15:4|temp_16:1|none:7|temp_17:8|temp_18:4|none:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i32 i_38 
                    #      alloc i32 temp_15_40 
                    #      alloc i1 temp_16_40 
                    #      alloc ptr->i32 temp_17_42 
                    #      alloc i32 temp_18_42 
                    #      label L7_0: 
.L7_0:
                    #      i_38 = i32 1_0 
    li      a0, 1
                    #      jump label: while.head_41 
    j       .while.head_41
                    #      label while.head_41: 
.while.head_41:
                    #      new_var temp_15_40:i32 
                    #      temp_15_40 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      a2,0(a1)
                    #      new_var temp_16_40:i1 
                    #      temp_16_40 = icmp i32 Sle i_38, temp_15_40 
    slt     a3,a2,a0
    xori    a3,a3,1
                    #      br i1 temp_16_40, label while.body_41, label while.exit_41 
    bnez    a3, .while.body_41
    j       .while.exit_41
                    #      label while.body_41: 
.while.body_41:
                    #      new_var temp_17_42:ptr->i32 
                    #      temp_17_42 = getelementptr fa_0:Array:i32:[Some(100005_0)] [Some(i_38)] 
    li      a1, 0
    li      a4, 1
    mul     a5,a4,a0
                    #occupy reg a5 with fa_0
    add     a1,a1,a5
    slli a1,a1,2
    add     a1,a1,a1
                    #      store i_38:i32 temp_17_42:ptr->i32 
    sd      a0,0(a1)
                    #      mu fa_0:115 
                    #      fa_0 = chi fa_0:115 
                    #      new_var temp_18_42:i32 
                    #      temp_18_42 = Add i32 i_38, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     a6,a0,a4
                    #      i_38 = i32 temp_18_42 
    mv      a0, a6
                    #      jump label: while.head_41 
    sw      a6,4(sp)
    sb      a3,23(sp)
    sd      a1,8(sp)
    sw      a2,24(sp)
    j       .while.head_41
                    #      label while.exit_41: 
.while.exit_41:
                    #      Define find_0 [x_45] -> find_ret_0 
    .globl find
    .type find,@function
find:
                    #mem layout:|ra_find:8|s0_find:8|x:4|temp_19:400020|temp_20:8|temp_21:4|temp_22:1|none:3|temp_23:400020|none:4|temp_24:8|temp_25:4|temp_26:4|pa:4|none:4|temp_27:8
    li      a1, -800112
    li      a1, -800112
    add     sp,a1,sp
    li      a2, 800104
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 800096
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 800112
    li      a4, 800112
    add     s0,a4,sp
                    #      alloc Array:i32:[Some(100005_0)] temp_19_48 
                    #      alloc ptr->i32 temp_20_48 
                    #      alloc i32 temp_21_48 
                    #      alloc i1 temp_22_48 
                    #      alloc Array:i32:[Some(100005_0)] temp_23_51 
                    #      alloc ptr->i32 temp_24_51 
                    #      alloc i32 temp_25_51 
                    #      alloc i32 temp_26_51 
                    #      alloc i32 pa_51 
                    #      alloc ptr->i32 temp_27_51 
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_19_48:Array:i32:[Some(100005_0)] 
                    #      temp_19_48 = load *fa_0:ptr->i32 
                    #   load label fa as ptr to reg
    la      a5, fa
                    #occupy reg a5 with *fa_0
    lw      a6,0(a5)
                    #      new_var temp_20_48:ptr->i32 
                    #      new_var temp_21_48:i32 
                    #      temp_20_48 = getelementptr temp_19_48:Array:i32:[Some(100005_0)] [Some(x_45)] 
    li      a7, 0
    li      s1, 1
    add     a7,a7,a6
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_21_48 = load temp_20_48:ptr->i32 
    lw      s2,0(a7)
                    #      new_var temp_22_48:i1 
                    #      temp_22_48 = icmp i32 Eq temp_21_48, x_45 
    xor     s3,s2,a0
    seqz    s3, s3
                    #      br i1 temp_22_48, label branch_true_49, label branch_false_49 
    bnez    s3, .branch_true_49
    j       .branch_false_49
                    #      label branch_true_49: 
.branch_true_49:
                    #      ret x_45 
    li      a1, 800104
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a2, 800096
    add     a2,sp,a2
    ld      s0,0(a2)
    li      a0, 800092
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 800112
    li      a3, 800112
    add     sp,a3,sp
    ret
                    #      label branch_false_49: 
.branch_false_49:
                    #      new_var temp_23_51:Array:i32:[Some(100005_0)] 
                    #      temp_23_51 = load *fa_0:ptr->i32 
                    #   load label fa as ptr to reg
    la      a1, fa
                    #occupy reg a1 with *fa_0
    lw      a2,0(a1)
                    #      new_var temp_24_51:ptr->i32 
                    #      new_var temp_25_51:i32 
                    #      temp_24_51 = getelementptr temp_23_51:Array:i32:[Some(100005_0)] [Some(x_45)] 
    li      a3, 0
    li      a4, 1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_25_51 = load temp_24_51:ptr->i32 
    lw      a5,0(a3)
                    #      new_var temp_26_51:i32 
                    #      temp_26_51 =  Call i32 find_0(temp_25_51) 
                    #saved register dumping to mem
    li      s1, 400060
    add     s1,sp,s1
    sw      s2,0(s1)
    li      s2, 400059
    add     s2,sp,s2
    sb      s3,0(s2)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 800092
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a5
                    #arg load ended
    call    find
    sw      a0,16(sp)
                    #      pa_51 = i32 temp_26_51 
    mv      s3, a0
                    #      new_var temp_27_51:ptr->i32 
                    #      temp_27_51 = getelementptr fa_0:Array:i32:[Some(100005_0)] [Some(x_45)] 
    li      s4, 0
                    #found literal reg Some(a4) already exist with 1_0
    mul     s6,a4,s5
                    #occupy reg s6 with fa_0
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,s4
                    #      store pa_51:i32 temp_27_51:ptr->i32 
    sd      s3,0(s4)
                    #      mu fa_0:156 
                    #      fa_0 = chi fa_0:156 
                    #      ret pa_51 
    li      s7, 800104
    add     s7,sp,s7
    ld      ra,0(s7)
    li      s8, 800096
    add     s8,sp,s8
    ld      s0,0(s8)
    sw      s3,12(sp)
    sw      a0,16(sp)
    li      s3, 800112
    li      s3, 800112
    add     sp,s3,sp
    ret
                    #      label L6_0: 
.L6_0:
                    #      Define same_0 [x_55, y_55] -> same_ret_0 
    .globl same
    .type same,@function
same:
                    #mem layout:|ra_same:8|s0_same:8|x:4|y:4|temp_28:4|temp_29:4|temp_30:1|none:7
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 temp_28_58 
                    #      alloc i32 temp_29_58 
                    #      alloc i1 temp_30_58 
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_28_58:i32 
                    #      temp_28_58 =  Call i32 find_0(y_55) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,20(sp)
    mv      a0, a1
                    #arg load ended
    call    find
    sw      a0,12(sp)
                    #      new_var temp_29_58:i32 
                    #      temp_29_58 =  Call i32 find_0(x_55) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,12(sp)
    lw      a0,20(sp)
                    #arg load ended
    call    find
    sw      a0,8(sp)
                    #      new_var temp_30_58:i1 
                    #      temp_30_58 = icmp i32 Eq temp_29_58, temp_28_58 
    xor     a3,a0,a2
    seqz    a3, a3
                    #      br i1 temp_30_58, label branch_true_59, label branch_false_59 
    bnez    a3, .branch_true_59
    j       .branch_false_59
                    #      label branch_true_59: 
.branch_true_59:
                    #      ret 1_0 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,8(sp)
    li      a0, 1
    addi    sp,sp,40
    ret
                    #      label branch_false_59: 
.branch_false_59:
                    #      label L4_0: 
.L4_0:
                    #      ret 0_0 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,8(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_31:4|temp_32:4|temp_33:4|temp_34:1|none:3|temp_35:4|ch:4|temp_36:1|temp_37:1|temp_38:1|none:1|temp_39:4|temp_40:1|none:3|temp_41:4|x:4|temp_42:4|y:4|temp_43:4|temp_44:4|temp_45:4|temp_46:4|temp_47:4|x:4|temp_48:4|temp_49:4|y:4|temp_50:8
    addi    sp,sp,-112
    sd      ra,104(sp)
    sd      s0,96(sp)
    addi    s0,sp,112
                    #      alloc i32 temp_31_63 
                    #      alloc i32 temp_32_63 
                    #      alloc i32 temp_33_67 
                    #      alloc i1 temp_34_1231 
                    #      alloc i32 temp_35_69 
                    #      alloc i32 ch_69 
                    #      alloc i1 temp_36_71 
                    #      alloc i1 temp_37_71 
                    #      alloc i1 temp_38_71 
                    #      alloc i32 temp_39_73 
                    #      alloc i1 temp_40_75 
                    #      alloc i32 temp_41_77 
                    #      alloc i32 x_77 
                    #      alloc i32 temp_42_77 
                    #      alloc i32 y_77 
                    #      alloc i32 temp_43_77 
                    #      alloc i32 temp_44_69 
                    #      alloc i32 temp_45_69 
                    #      alloc i32 temp_46_81 
                    #      alloc i32 temp_47_81 
                    #      alloc i32 x_81 
                    #      alloc i32 temp_48_81 
                    #      alloc i32 temp_49_81 
                    #      alloc i32 y_81 
                    #      alloc ptr->i32 temp_50_81 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_31_63:i32 
                    #      temp_31_63 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,92(sp)
                    #      store temp_31_63:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    sd      a0,0(a1)
                    #      new_var temp_32_63:i32 
                    #      temp_32_63 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,92(sp)
    sw      a0,88(sp)
                    #      store temp_32_63:i32 *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a2, m
                    #occupy reg a2 with *m_0
    sd      a0,0(a2)
                    #       Call void init_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    init
                    #      jump label: while.head_68 
    j       .while.head_68
                    #      label while.head_68: 
.while.head_68:
                    #      new_var temp_33_67:i32 
                    #      temp_33_67 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a1, m
                    #occupy reg a1 with *m_0
    lw      a2,0(a1)
                    #      new_var temp_34_1231:i1 
                    #      temp_34_1231 = icmp i32 Ne temp_33_67, 0_0 
    li      a3, 0
    xor     a4,a2,a3
    snez    a4, a4
                    #      br i1 temp_34_1231, label while.body_68, label while.exit_68 
    bnez    a4, .while.body_68
    j       .while.exit_68
                    #      label while.body_68: 
.while.body_68:
                    #      new_var temp_35_69:i32 
                    #      temp_35_69 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,88(sp)
    sw      a0,76(sp)
                    #      ch_69 = i32 temp_35_69 
    mv      a1, a0
                    #      jump label: while.head_72 
    j       .while.head_72
                    #      label while.head_72: 
.while.head_72:
                    #      new_var temp_36_71:i1 
                    #      temp_36_71 = icmp i32 Ne 85_0, ch_69 
    li      a3, 85
    xor     a5,a3,a1
    snez    a5, a5
                    #      new_var temp_37_71:i1 
                    #      temp_37_71 = icmp i32 Ne ch_69, 81_0 
    li      a6, 81
    xor     a7,a1,a6
    snez    a7, a7
                    #      new_var temp_38_71:i1 
                    #      temp_38_71 = And i1 temp_37_71, temp_36_71 
    and     s1,a7,a5
                    #      br i1 temp_38_71, label while.body_72, label while.exit_72 
    bnez    s1, .while.body_72
    j       .while.exit_72
                    #      label while.body_72: 
.while.body_72:
                    #      new_var temp_39_73:i32 
                    #      temp_39_73 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,69(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,76(sp)
    sw      a0,64(sp)
                    #      ch_69 = i32 temp_39_73 
    mv      a1, a0
                    #      jump label: while.head_72 
    sb      a7,70(sp)
    sw      a0,64(sp)
    lw      a0,76(sp)
    sb      a5,71(sp)
    j       .while.head_72
                    #      label while.exit_72: 
.while.exit_72:
                    #      new_var temp_40_75:i1 
                    #      temp_40_75 = icmp i32 Eq ch_69, 81_0 
    li      a3, 81
    xor     a6,a1,a3
    seqz    a6, a6
                    #      br i1 temp_40_75, label branch_true_76, label branch_false_76 
    bnez    a6, .branch_true_76
    j       .branch_false_76
                    #      label branch_true_76: 
.branch_true_76:
                    #      new_var temp_41_77:i32 
                    #      temp_41_77 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
    sb      s1,69(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,76(sp)
    sw      a0,56(sp)
                    #      x_77 = i32 temp_41_77 
    mv      a3, a0
                    #      new_var temp_42_77:i32 
                    #      temp_42_77 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,56(sp)
    sw      a0,48(sp)
                    #      y_77 = i32 temp_42_77 
    mv      s1, a0
                    #      new_var temp_43_77:i32 
                    #      temp_43_77 =  Call i32 same_0(x_77, y_77) 
                    #saved register dumping to mem
    sw      s1,44(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,48(sp)
    mv      a0, a3
    sw      a1,72(sp)
    lw      a1,44(sp)
                    #arg load ended
    call    same
    sw      a0,40(sp)
                    #       Call void putint_0(temp_43_77) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,40(sp)
    lw      a0,40(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: L1_0 
    j       .L1_0
                    #      label branch_false_76: 
.branch_false_76:
                    #      new_var temp_46_81:i32 
                    #      temp_46_81 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
    sb      s1,69(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,76(sp)
    sw      a0,28(sp)
                    #      new_var temp_47_81:i32 
                    #      temp_47_81 =  Call i32 find_0(temp_46_81) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    lw      a0,28(sp)
                    #arg load ended
    call    find
    sw      a0,24(sp)
                    #      x_81 = i32 temp_47_81 
    mv      a3, a0
                    #      new_var temp_48_81:i32 
                    #      temp_48_81 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    sw      a0,24(sp)
    sw      a0,16(sp)
                    #      new_var temp_49_81:i32 
                    #      temp_49_81 =  Call i32 find_0(temp_48_81) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    lw      a0,16(sp)
                    #arg load ended
    call    find
    sw      a0,12(sp)
                    #      y_81 = i32 temp_49_81 
    mv      s1, a0
                    #      new_var temp_50_81:ptr->i32 
                    #      temp_50_81 = getelementptr fa_0:Array:i32:[Some(100005_0)] [Some(x_81)] 
    li      s2, 0
    li      s3, 1
    mul     s4,s3,a3
                    #occupy reg s4 with fa_0
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,s2
                    #      store y_81:i32 temp_50_81:ptr->i32 
    sd      s1,0(s2)
                    #      mu fa_0:267 
                    #      fa_0 = chi fa_0:267 
                    #      jump label: L1_0 
    sw      a1,72(sp)
    sw      a0,12(sp)
    sd      s2,0(sp)
    sw      a3,20(sp)
    lw      a3,52(sp)
    sw      s1,8(sp)
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_44_69:i32 
                    #      temp_44_69 = load *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      a0, m
                    #occupy reg a0 with *m_0
    lw      a1,0(a0)
                    #      new_var temp_45_69:i32 
                    #      temp_45_69 = Sub i32 temp_44_69, 1_0 
    li      s1, 1
    sub     s2,a1,s1
                    #      store temp_45_69:i32 *m_0:ptr->i32 
                    #   load label m as ptr to reg
    la      s3, m
                    #occupy reg s3 with *m_0
    sd      s2,0(s3)
                    #      jump label: while.head_68 
    sw      a1,36(sp)
    sb      a7,70(sp)
    sw      a2,84(sp)
    lw      a0,88(sp)
    sw      s2,32(sp)
    sb      a4,83(sp)
    sw      a3,52(sp)
    sb      a6,63(sp)
    sb      a5,71(sp)
    j       .while.head_68
                    #      label while.exit_68: 
.while.exit_68:
                    #      ret 0_0 
    ld      ra,104(sp)
    ld      s0,96(sp)
    sw      a0,88(sp)
    li      a0, 0
    addi    sp,sp,112
    ret
.section        .data
    .align 4
    .globl fa
                    #      global Array:i32:[Some(100005_0)] fa_0 
    .type fa,@object
fa:
    .zero 400020
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
