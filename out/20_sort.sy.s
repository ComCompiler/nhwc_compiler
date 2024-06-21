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
                    #      alloc i32 temp_0_22 
                    #      alloc i32 ch_22 
                    #      alloc i32 x_22 
                    #      alloc i32 f_22 
                    #      alloc i1 temp_1_25 
                    #      alloc i1 temp_2_25 
                    #      alloc i1 temp_3_25 
                    #      alloc i1 temp_4_28 
                    #      alloc i32 temp_5_27 
                    #      alloc i1 temp_6_32 
                    #      alloc i1 temp_7_32 
                    #      alloc i1 temp_8_32 
                    #      alloc i32 temp_9_34 
                    #      alloc i32 temp_10_34 
                    #      alloc i32 temp_11_34 
                    #      alloc i32 temp_12_34 
                    #      alloc i1 temp_13_416 
                    #      alloc i32 temp_14_37 
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_0_22:i32 
                    #      temp_0_22 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
                    #      ch_22 = i32 temp_0_22 
    mv      a1, a0
                    #      x_22 = i32 0_0 
    li      a2, 0
                    #      f_22 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_26 
    j       .while.head_26
                    #      label while.head_26: 
.while.head_26:
                    #      new_var temp_1_25:i1 
                    #      temp_1_25 = icmp i32 Sgt 57_0, ch_22 
    li      a4, 57
    slt     a5,a1,a4
                    #      new_var temp_2_25:i1 
                    #      temp_2_25 = icmp i32 Slt ch_22, 48_0 
    li      a6, 48
    slt     a7,a1,a6
                    #      new_var temp_3_25:i1 
                    #      temp_3_25 = Or i1 temp_2_25, temp_1_25 
                    #      br i1 temp_3_25, label while.body_26, label while.exit_26 
    bnez    s1, .while.body_26
    j       .while.exit_26
                    #      label while.body_26: 
.while.body_26:
                    #      new_var temp_4_28:i1 
                    #      temp_4_28 = icmp i32 Eq ch_22, 45_0 
    li      a4, 45
    xor     a6,a1,a4
    seqz    a6, a6
                    #      br i1 temp_4_28, label branch_true_29, label branch_false_29 
    bnez    a6, .branch_true_29
    j       .branch_false_29
                    #      label branch_true_29: 
.branch_true_29:
                    #      f_22 = i32 1_0 
                    #      jump label: branch_false_29 
    j       .branch_false_29
                    #      label branch_false_29: 
.branch_false_29:
                    #      label L11_0: 
.L11_0:
                    #      new_var temp_5_27:i32 
                    #      temp_5_27 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,37(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,52(sp)
    sw      a0,32(sp)
                    #      ch_22 = i32 temp_5_27 
    mv      a1, a0
                    #      jump label: while.head_26 
    sw      a0,32(sp)
    lw      a0,52(sp)
    sb      a7,38(sp)
    sb      a6,36(sp)
    sb      a5,39(sp)
    j       .while.head_26
                    #      label while.head_33: 
.while.head_33:
                    #      new_var temp_6_32:i1 
                    #      temp_6_32 = icmp i32 Sle 57_0, ch_22 
    li      a4, 57
    slt     a6,a1,a4
    xori    a6,a6,1
                    #      new_var temp_7_32:i1 
                    #      temp_7_32 = icmp i32 Sge ch_22, 48_0 
    li      s2, 48
    slt     s3,a1,s2
    xori    s3,s3,1
                    #      new_var temp_8_32:i1 
                    #      temp_8_32 = And i1 temp_7_32, temp_6_32 
    and     s4,s3,a6
                    #      br i1 temp_8_32, label while.body_33, label while.exit_33 
    bnez    s4, .while.body_33
    j       .while.exit_33
                    #      label while.body_33: 
.while.body_33:
                    #      new_var temp_9_34:i32 
                    #      temp_9_34 = Sub i32 ch_22, 48_0 
    li      a4, 48
    sub     s2,a1,a4
                    #      new_var temp_10_34:i32 
                    #      temp_10_34 = Mul i32 x_22, 10_0 
    li      s5, 10
    mul     s6,a2,s5
                    #      new_var temp_11_34:i32 
                    #      temp_11_34 = Add i32 temp_10_34, temp_9_34 
    add     s7,s6,s2
                    #      x_22 = i32 temp_11_34 
    mv      a2, s7
                    #      new_var temp_12_34:i32 
                    #      temp_12_34 =  Call i32 getch_0() 
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
                    #      ch_22 = i32 temp_12_34 
    mv      a1, a0
                    #      jump label: while.head_33 
    sw      a0,12(sp)
    lw      a0,52(sp)
    sb      a6,31(sp)
    lb      s1,37(sp)
    j       .while.head_33
                    #      label while.exit_33: 
.while.exit_33:
                    #      new_var temp_13_416:i1 
                    #      temp_13_416 = icmp i32 Ne f_22, 0_0 
    li      a4, 0
    xor     s2,a3,a4
    snez    s2, s2
                    #      br i1 temp_13_416, label branch_true_38, label branch_false_38 
    bnez    s2, .branch_true_38
    j       .branch_false_38
                    #      label branch_true_38: 
.branch_true_38:
                    #      new_var temp_14_37:i32 
                    #      temp_14_37 = Sub i32 0_0, x_22 
    li      a4, 0
    sub     s5,a4,a2
                    #      ret temp_14_37 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s5,4(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label branch_false_38: 
.branch_false_38:
                    #      ret x_22 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a2,44(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label L12_0: 
.L12_0:
                    #      Define sortA_0 [a_41] -> sortA_ret_0 
    .globl sortA
    .type sortA,@function
sortA:
                    #mem layout:|ra_sortA:8|s0_sortA:8|a:8|i:4|j:4|temp_15:4|temp_16:1|none:3|temp_17:4|temp_18:4|temp_19:1|none:7|temp_20:8|temp_21:4|none:4|temp_22:8|temp_23:4|temp_24:1|none:3|temp_25:8|temp_26:4|t:4|temp_27:8|temp_28:8|temp_29:4|none:4|temp_30:8|temp_31:4|temp_32:4
    addi    sp,sp,-144
    sd      ra,136(sp)
    sd      s0,128(sp)
    addi    s0,sp,144
                    #      new_var a_41:ptr->i32 
                    #      alloc i32 i_43 
                    #      alloc i32 j_43 
                    #      alloc i32 temp_15_45 
                    #      alloc i1 temp_16_45 
                    #      alloc i32 temp_17_47 
                    #      alloc i32 temp_18_49 
                    #      alloc i1 temp_19_49 
                    #      alloc ptr->i32 temp_20_52 
                    #      alloc i32 temp_21_52 
                    #      alloc ptr->i32 temp_22_52 
                    #      alloc i32 temp_23_52 
                    #      alloc i1 temp_24_52 
                    #      alloc ptr->i32 temp_25_54 
                    #      alloc i32 temp_26_54 
                    #      alloc i32 t_54 
                    #      alloc ptr->i32 temp_27_54 
                    #      alloc ptr->i32 temp_28_54 
                    #      alloc i32 temp_29_54 
                    #      alloc ptr->i32 temp_30_54 
                    #      alloc i32 temp_31_51 
                    #      alloc i32 temp_32_47 
                    #      label L8_0: 
.L8_0:
                    #      i_43 = i32 0_0 
    li      a1, 0
                    #      new_var j_43:i32 
                    #      jump label: while.head_46 
    j       .while.head_46
                    #      label while.head_46: 
.while.head_46:
                    #      new_var temp_15_45:i32 
                    #      temp_15_45 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a2, n
                    #occupy reg a2 with *n_0
    lw      a3,0(a2)
                    #      new_var temp_16_45:i1 
                    #      temp_16_45 = icmp i32 Slt i_43, temp_15_45 
    slt     a4,a1,a3
                    #      br i1 temp_16_45, label while.body_46, label while.exit_46 
    bnez    a4, .while.body_46
    j       .while.exit_46
                    #      label while.body_46: 
.while.body_46:
                    #      new_var temp_17_47:i32 
                    #      temp_17_47 = Add i32 i_43, 1_0 
    li      a2, 1
    add     a5,a1,a2
                    #      j_43 = i32 temp_17_47 
    mv      a6, a5
                    #      jump label: while.head_50 
    j       .while.head_50
                    #      label while.head_50: 
.while.head_50:
                    #      new_var temp_18_49:i32 
                    #      temp_18_49 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a2, n
                    #occupy reg a2 with *n_0
    lw      a7,0(a2)
                    #      new_var temp_19_49:i1 
                    #      temp_19_49 = icmp i32 Slt j_43, temp_18_49 
    slt     s1,a6,a7
                    #      br i1 temp_19_49, label while.body_50, label while.exit_50 
    bnez    s1, .while.body_50
    j       .while.exit_50
                    #      label while.body_50: 
.while.body_50:
                    #      new_var temp_20_52:ptr->i32 
                    #      new_var temp_21_52:i32 
                    #      temp_20_52 = getelementptr a_41:ptr->i32 [Some(j_43)] 
    li      a2, 0
    li      s2, 1
    add     a2,a2,a0
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_21_52 = load temp_20_52:ptr->i32 
    lw      s3,0(a2)
                    #      new_var temp_22_52:ptr->i32 
                    #      new_var temp_23_52:i32 
                    #      temp_22_52 = getelementptr a_41:ptr->i32 [Some(i_43)] 
    li      s4, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s4,s4,a0
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_23_52 = load temp_22_52:ptr->i32 
    lw      s5,0(s4)
                    #      new_var temp_24_52:i1 
                    #      temp_24_52 = icmp i32 Sgt temp_23_52, temp_21_52 
    slt     s6,s3,s5
                    #      br i1 temp_24_52, label branch_true_53, label branch_false_53 
    bnez    s6, .branch_true_53
    j       .branch_false_53
                    #      label branch_true_53: 
.branch_true_53:
                    #      new_var temp_25_54:ptr->i32 
                    #      new_var temp_26_54:i32 
                    #      temp_25_54 = getelementptr a_41:ptr->i32 [Some(i_43)] 
    li      s2, 0
    li      s7, 1
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_26_54 = load temp_25_54:ptr->i32 
    lw      s8,0(s2)
                    #      t_54 = i32 temp_26_54 
    mv      s9, s8
                    #      new_var temp_27_54:ptr->i32 
                    #      temp_27_54 = getelementptr a_41:ptr->i32 [Some(i_43)] 
    li      s10, 0
                    #found literal reg Some(s7) already exist with 1_0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
                    #      new_var temp_28_54:ptr->i32 
                    #      new_var temp_29_54:i32 
                    #      temp_28_54 = getelementptr a_41:ptr->i32 [Some(j_43)] 
    li      s11, 0
                    #found literal reg Some(s7) already exist with 1_0
    add     s11,s11,a0
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_29_54 = load temp_28_54:ptr->i32 
    lw      s7,0(s11)
                    #      store temp_29_54:i32 temp_27_54:ptr->i32 
    sd      s7,0(s10)
                    #      mu a_41:176 
                    #      a_41 = chi a_41:176 
                    #      new_var temp_30_54:ptr->i32 
                    #      temp_30_54 = getelementptr a_41:ptr->i32 [Some(j_43)] 
    sd      a0,120(sp)
    li      a0, 0
    sw      a1,116(sp)
    li      a1, 1
    sd      a2,80(sp)
    mul     a2,a1,a6
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
                    #      store t_54:i32 temp_30_54:ptr->i32 
    sd      s9,0(a0)
                    #      mu a_41:182 
                    #      a_41 = chi a_41:182 
                    #      jump label: branch_false_53 
    sw      s7,20(sp)
    sd      s10,32(sp)
    sw      s8,44(sp)
    sw      s9,40(sp)
    sd      s11,24(sp)
    sd      a2,120(sp)
    ld      a2,80(sp)
    sd      s2,48(sp)
    sd      a0,8(sp)
    ld      a0,120(sp)
    lw      a1,116(sp)
    j       .branch_false_53
                    #      label branch_false_53: 
.branch_false_53:
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_31_51:i32 
                    #      temp_31_51 = Add i32 j_43, 1_0 
    li      s2, 1
    add     s7,a6,s2
                    #      j_43 = i32 temp_31_51 
    mv      a6, s7
                    #      jump label: while.head_50 
    sw      s7,4(sp)
    sw      a7,96(sp)
    sb      s1,95(sp)
    sw      s3,76(sp)
    sd      a2,80(sp)
    sd      s4,64(sp)
    sb      s6,59(sp)
    sw      s5,60(sp)
    j       .while.head_50
                    #      label while.exit_50: 
.while.exit_50:
                    #      new_var temp_32_47:i32 
                    #      temp_32_47 = Add i32 i_43, 1_0 
    li      a2, 1
    add     s2,a1,a2
                    #      i_43 = i32 temp_32_47 
    mv      a1, s2
                    #      jump label: while.head_46 
    sw      a7,96(sp)
    sb      a4,107(sp)
    sb      s1,95(sp)
    sw      s2,0(sp)
    sw      a3,108(sp)
    sw      a5,100(sp)
    sw      a6,112(sp)
    j       .while.head_46
                    #      label while.exit_46: 
.while.exit_46:
                    #      Define sortB_0 [a_60] -> sortB_ret_0 
    .globl sortB
    .type sortB,@function
sortB:
                    #mem layout:|ra_sortB:8|s0_sortB:8|a:8|i:4|mx:4|temp_33:4|temp_34:1|none:3|temp_35:8|temp_36:4|none:4|temp_37:8|temp_38:8|temp_39:4|temp_40:1600080|none:4|temp_41:8|temp_42:4|temp_43:4|temp_44:8|temp_45:4|temp_46:1|none:3|temp_47:8|temp_48:4|temp_49:4|now:4|temp_50:1|none:3|temp_51:1600080|temp_52:8|temp_53:4|j:4|temp_54:1|none:7|temp_55:8|temp_56:4|temp_57:4|temp_58:4|none:4
    li      a1, -3200344
    li      a1, -3200344
    add     sp,a1,sp
    li      a2, 3200336
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 3200328
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 3200344
    li      a4, 3200344
    add     s0,a4,sp
                    #      new_var a_60:ptr->i32 
                    #      alloc i32 i_62 
                    #      alloc i32 mx_62 
                    #      alloc i32 temp_33_64 
                    #      alloc i1 temp_34_64 
                    #      alloc ptr->i32 temp_35_66 
                    #      alloc i32 temp_36_66 
                    #      alloc ptr->i32 temp_37_66 
                    #      alloc ptr->i32 temp_38_66 
                    #      alloc i32 temp_39_66 
                    #      alloc Array:i32:[Some(400020_0)] temp_40_66 
                    #      alloc ptr->i32 temp_41_66 
                    #      alloc i32 temp_42_66 
                    #      alloc i32 temp_43_66 
                    #      alloc ptr->i32 temp_44_68 
                    #      alloc i32 temp_45_68 
                    #      alloc i1 temp_46_68 
                    #      alloc ptr->i32 temp_47_68 
                    #      alloc i32 temp_48_68 
                    #      alloc i32 temp_49_66 
                    #      alloc i32 now_62 
                    #      alloc i1 temp_50_74 
                    #      alloc Array:i32:[Some(400020_0)] temp_51_76 
                    #      alloc ptr->i32 temp_52_76 
                    #      alloc i32 temp_53_76 
                    #      alloc i32 j_76 
                    #      alloc i1 temp_54_1618 
                    #      alloc ptr->i32 temp_55_80 
                    #      alloc i32 temp_56_80 
                    #      alloc i32 temp_57_80 
                    #      alloc i32 temp_58_76 
                    #      label L5_0: 
.L5_0:
                    #      i_62 = i32 0_0 
    li      a5, 0
                    #      mx_62 = i32 -100_0 
    li      a6, -100
                    #      jump label: while.head_65 
    j       .while.head_65
                    #      label while.head_65: 
.while.head_65:
                    #      new_var temp_33_64:i32 
                    #      temp_33_64 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      a2,0(a1)
                    #      new_var temp_34_64:i1 
                    #      temp_34_64 = icmp i32 Slt i_62, temp_33_64 
    slt     a3,a5,a2
                    #      br i1 temp_34_64, label while.body_65, label while.exit_65 
    bnez    a3, .while.body_65
    j       .while.exit_65
                    #      label while.body_65: 
.while.body_65:
                    #      new_var temp_35_66:ptr->i32 
                    #      new_var temp_36_66:i32 
                    #      temp_35_66 = getelementptr a_60:ptr->i32 [Some(i_62)] 
    li      a1, 0
    li      a4, 1
    add     a1,a1,a0
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_36_66 = load temp_35_66:ptr->i32 
    lw      a7,0(a1)
                    #      new_var temp_37_66:ptr->i32 
                    #      temp_37_66 = getelementptr cnt_0:Array:i32:[Some(400020_0)] [Some(temp_36_66)] 
    li      s1, 0
                    #found literal reg Some(a4) already exist with 1_0
    mul     s2,a4,a7
                    #occupy reg s2 with cnt_0
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
                    #      new_var temp_38_66:ptr->i32 
                    #      new_var temp_39_66:i32 
                    #      temp_38_66 = getelementptr a_60:ptr->i32 [Some(i_62)] 
    li      s3, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_39_66 = load temp_38_66:ptr->i32 
    lw      s4,0(s3)
                    #      new_var temp_40_66:Array:i32:[Some(400020_0)] 
                    #      temp_40_66 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      s5, cnt
                    #occupy reg s5 with *cnt_0
    lw      s6,0(s5)
                    #      new_var temp_41_66:ptr->i32 
                    #      new_var temp_42_66:i32 
                    #      temp_41_66 = getelementptr temp_40_66:Array:i32:[Some(400020_0)] [Some(temp_39_66)] 
    li      s7, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s7,s7,s6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_42_66 = load temp_41_66:ptr->i32 
    lw      s8,0(s7)
                    #      new_var temp_43_66:i32 
                    #      temp_43_66 = Add i32 temp_42_66, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     s9,s8,a4
                    #      store temp_43_66:i32 temp_37_66:ptr->i32 
    sd      s9,0(s1)
                    #      mu cnt_0:235 
                    #      cnt_0 = chi cnt_0:235 
                    #      jump label: L6_0 
    j       .L6_0
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_44_68:ptr->i32 
                    #      new_var temp_45_68:i32 
                    #      temp_44_68 = getelementptr a_60:ptr->i32 [Some(i_62)] 
    li      a4, 0
    li      s2, 1
    add     a4,a4,a0
    slli a4,a4,3
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_45_68 = load temp_44_68:ptr->i32 
    lw      s5,0(a4)
                    #      new_var temp_46_68:i1 
                    #      temp_46_68 = icmp i32 Sgt temp_45_68, mx_62 
    slt     s10,a6,s5
                    #      br i1 temp_46_68, label branch_true_69, label branch_false_69 
    bnez    s10, .branch_true_69
    j       .branch_false_69
                    #      label branch_true_69: 
.branch_true_69:
                    #      new_var temp_47_68:ptr->i32 
                    #      new_var temp_48_68:i32 
                    #      temp_47_68 = getelementptr a_60:ptr->i32 [Some(i_62)] 
    li      s2, 0
    li      s11, 1
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_48_68 = load temp_47_68:ptr->i32 
    lw      s11,0(s2)
                    #      mx_62 = i32 temp_48_68 
    mv      a6, s11
                    #      jump label: branch_false_69 
    li      s11, 1600140
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s2, 1600144
    add     s2,sp,s2
    sd      s2,0(s2)
    j       .branch_false_69
                    #      label branch_false_69: 
.branch_false_69:
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_49_66:i32 
                    #      temp_49_66 = Add i32 i_62, 1_0 
    li      s2, 1
    add     s11,a5,s2
                    #      i_62 = i32 temp_49_66 
    mv      a5, s11
                    #      jump label: while.head_65 
    li      s10, 1600155
    add     s10,sp,s10
    sb      s10,0(s10)
    li      s5, 1600156
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s9, 1600168
    add     s9,sp,s9
    sw      s9,0(s9)
    li      a1, 3200296
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a3, 3200307
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a7, 3200292
    add     a7,sp,a7
    sw      a7,0(a7)
    li      s6, 3200264
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 1600176
    add     s7,sp,s7
    sd      s7,0(s7)
    li      a4, 1600160
    add     a4,sp,a4
    sd      a4,0(a4)
    li      s11, 1600136
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s4, 3200268
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a2, 3200308
    add     a2,sp,a2
    sw      a2,0(a2)
    li      s8, 1600172
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s3, 3200272
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s1, 3200280
    add     s1,sp,s1
    sd      s1,0(s1)
    j       .while.head_65
                    #      label while.exit_65: 
.while.exit_65:
                    #      i_62 = i32 0_0 
                    #      now_62 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_75 
    j       .while.head_75
                    #      label while.head_75: 
.while.head_75:
                    #      new_var temp_50_74:i1 
                    #      temp_50_74 = icmp i32 Sle i_62, mx_62 
    slt     a4,a6,a5
    xori    a4,a4,1
                    #      br i1 temp_50_74, label while.body_75, label while.exit_75 
    bnez    a4, .while.body_75
    j       .while.exit_75
                    #      label while.body_75: 
.while.body_75:
                    #      new_var temp_51_76:Array:i32:[Some(400020_0)] 
                    #      temp_51_76 = load *cnt_0:ptr->i32 
                    #   load label cnt as ptr to reg
    la      a7, cnt
                    #occupy reg a7 with *cnt_0
    lw      s1,0(a7)
                    #      new_var temp_52_76:ptr->i32 
                    #      new_var temp_53_76:i32 
                    #      temp_52_76 = getelementptr temp_51_76:Array:i32:[Some(400020_0)] [Some(i_62)] 
    li      s2, 0
    li      s3, 1
    add     s2,s2,s1
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_53_76 = load temp_52_76:ptr->i32 
    lw      s4,0(s2)
                    #      j_76 = i32 temp_53_76 
    mv      s5, s4
                    #      jump label: while.head_79 
    j       .while.head_79
                    #      label while.head_79: 
.while.head_79:
                    #      new_var temp_54_1618:i1 
                    #      temp_54_1618 = icmp i32 Ne j_76, 0_0 
    li      a7, 0
    xor     s3,s5,a7
    snez    s3, s3
                    #      br i1 temp_54_1618, label while.body_79, label while.exit_79 
    bnez    s3, .while.body_79
    j       .while.exit_79
                    #      label while.body_79: 
.while.body_79:
                    #      new_var temp_55_80:ptr->i32 
                    #      temp_55_80 = getelementptr a_60:ptr->i32 [Some(now_62)] 
    li      a7, 0
    li      s6, 1
    add     a7,a7,a0
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
                    #      store i_62:i32 temp_55_80:ptr->i32 
    sd      a5,0(a7)
                    #      mu a_60:294 
                    #      a_60 = chi a_60:294 
                    #      new_var temp_56_80:i32 
                    #      temp_56_80 = Add i32 now_62, 1_0 
                    #found literal reg Some(s6) already exist with 1_0
    add     s7,a1,s6
                    #      now_62 = i32 temp_56_80 
    mv      a1, s7
                    #      new_var temp_57_80:i32 
                    #      temp_57_80 = Sub i32 j_76, 1_0 
                    #found literal reg Some(s6) already exist with 1_0
    sub     s8,s5,s6
                    #      j_76 = i32 temp_57_80 
    mv      s5, s8
                    #      jump label: while.head_79 
    sd      a7,16(sp)
    sw      s7,12(sp)
    sw      s8,8(sp)
    sb      s3,31(sp)
    j       .while.head_79
                    #      label while.exit_79: 
.while.exit_79:
                    #      new_var temp_58_76:i32 
                    #      temp_58_76 = Add i32 i_62, 1_0 
    li      a7, 1
    add     s6,a5,a7
                    #      i_62 = i32 temp_58_76 
    mv      a5, s6
                    #      jump label: while.head_75 
    sw      s5,32(sp)
    sw      s6,4(sp)
    li      a4, 1600131
    add     a4,sp,a4
    sb      a4,0(a4)
    sw      s4,36(sp)
    sd      s2,40(sp)
    sb      s3,31(sp)
    li      s1, 1600124
    add     s1,sp,s1
    sw      s1,0(s1)
    j       .while.head_75
                    #      label while.exit_75: 
.while.exit_75:
                    #      Define sortC_0 [a_85] -> sortC_ret_0 
    .globl sortC
    .type sortC,@function
sortC:
                    #mem layout:|ra_sortC:8|s0_sortC:8|a:8|i:4|temp_59:4|temp_60:1|none:3|id:4|temp_61:4|j:4|temp_62:4|temp_63:1|none:3|temp_64:8|temp_65:4|none:4|temp_66:8|temp_67:4|temp_68:1|none:3|temp_69:4|none:4|temp_70:8|temp_71:4|t:4|temp_72:8|temp_73:8|temp_74:4|none:4|temp_75:8|temp_76:4|none:4
    addi    sp,sp,-152
    sd      ra,144(sp)
    sd      s0,136(sp)
    addi    s0,sp,152
                    #      new_var a_85:ptr->i32 
                    #      alloc i32 i_87 
                    #      alloc i32 temp_59_89 
                    #      alloc i1 temp_60_89 
                    #      alloc i32 id_91 
                    #      alloc i32 temp_61_91 
                    #      alloc i32 j_91 
                    #      alloc i32 temp_62_93 
                    #      alloc i1 temp_63_93 
                    #      alloc ptr->i32 temp_64_96 
                    #      alloc i32 temp_65_96 
                    #      alloc ptr->i32 temp_66_96 
                    #      alloc i32 temp_67_96 
                    #      alloc i1 temp_68_96 
                    #      alloc i32 temp_69_95 
                    #      alloc ptr->i32 temp_70_91 
                    #      alloc i32 temp_71_91 
                    #      alloc i32 t_91 
                    #      alloc ptr->i32 temp_72_91 
                    #      alloc ptr->i32 temp_73_91 
                    #      alloc i32 temp_74_91 
                    #      alloc ptr->i32 temp_75_91 
                    #      alloc i32 temp_76_91 
                    #      label L3_0: 
.L3_0:
                    #      i_87 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_90 
    j       .while.head_90
                    #      label while.head_90: 
.while.head_90:
                    #      new_var temp_59_89:i32 
                    #      temp_59_89 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a2, n
                    #occupy reg a2 with *n_0
    lw      a3,0(a2)
                    #      new_var temp_60_89:i1 
                    #      temp_60_89 = icmp i32 Slt i_87, temp_59_89 
    slt     a4,a1,a3
                    #      br i1 temp_60_89, label while.body_90, label while.exit_90 
    bnez    a4, .while.body_90
    j       .while.exit_90
                    #      label while.body_90: 
.while.body_90:
                    #      id_91 = i32 i_87 
    mv      a2, a1
                    #      new_var temp_61_91:i32 
                    #      temp_61_91 = Add i32 i_87, 1_0 
    li      a5, 1
    add     a6,a1,a5
                    #      j_91 = i32 temp_61_91 
    mv      a7, a6
                    #      jump label: while.head_94 
    j       .while.head_94
                    #      label while.head_94: 
.while.head_94:
                    #      new_var temp_62_93:i32 
                    #      temp_62_93 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a5, n
                    #occupy reg a5 with *n_0
    lw      s1,0(a5)
                    #      new_var temp_63_93:i1 
                    #      temp_63_93 = icmp i32 Slt j_91, temp_62_93 
    slt     s2,a7,s1
                    #      br i1 temp_63_93, label while.body_94, label while.exit_94 
    bnez    s2, .while.body_94
    j       .while.exit_94
                    #      label while.body_94: 
.while.body_94:
                    #      new_var temp_64_96:ptr->i32 
                    #      new_var temp_65_96:i32 
                    #      temp_64_96 = getelementptr a_85:ptr->i32 [Some(id_91)] 
    li      a5, 0
    li      s3, 1
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_65_96 = load temp_64_96:ptr->i32 
    lw      s4,0(a5)
                    #      new_var temp_66_96:ptr->i32 
                    #      new_var temp_67_96:i32 
                    #      temp_66_96 = getelementptr a_85:ptr->i32 [Some(j_91)] 
    li      s5, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_67_96 = load temp_66_96:ptr->i32 
    lw      s6,0(s5)
                    #      new_var temp_68_96:i1 
                    #      temp_68_96 = icmp i32 Slt temp_67_96, temp_65_96 
    slt     s7,s6,s4
                    #      br i1 temp_68_96, label branch_true_97, label branch_false_97 
    bnez    s7, .branch_true_97
    j       .branch_false_97
                    #      label branch_true_97: 
.branch_true_97:
                    #      id_91 = i32 j_91 
    mv      a2, a7
                    #      jump label: branch_false_97 
    j       .branch_false_97
                    #      label branch_false_97: 
.branch_false_97:
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_69_95:i32 
                    #      temp_69_95 = Add i32 j_91, 1_0 
    li      s3, 1
    add     s8,a7,s3
                    #      j_91 = i32 temp_69_95 
    mv      a7, s8
                    #      jump label: while.head_94 
    sw      s8,60(sp)
    sd      a5,88(sp)
    sd      s5,72(sp)
    sw      s1,100(sp)
    sw      s6,68(sp)
    sw      s4,84(sp)
    sb      s7,67(sp)
    sb      s2,99(sp)
    j       .while.head_94
                    #      label while.exit_94: 
.while.exit_94:
                    #      new_var temp_70_91:ptr->i32 
                    #      new_var temp_71_91:i32 
                    #      temp_70_91 = getelementptr a_85:ptr->i32 [Some(i_87)] 
    li      a5, 0
    li      s3, 1
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_71_91 = load temp_70_91:ptr->i32 
    lw      s4,0(a5)
                    #      t_91 = i32 temp_71_91 
    mv      s5, s4
                    #      new_var temp_72_91:ptr->i32 
                    #      temp_72_91 = getelementptr a_85:ptr->i32 [Some(i_87)] 
    li      s6, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s6,s6,a0
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      new_var temp_73_91:ptr->i32 
                    #      new_var temp_74_91:i32 
                    #      temp_73_91 = getelementptr a_85:ptr->i32 [Some(id_91)] 
    li      s7, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s7,s7,a0
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_74_91 = load temp_73_91:ptr->i32 
    lw      s8,0(s7)
                    #      store temp_74_91:i32 temp_72_91:ptr->i32 
    sd      s8,0(s6)
                    #      mu a_85:380 
                    #      a_85 = chi a_85:380 
                    #      new_var temp_75_91:ptr->i32 
                    #      temp_75_91 = getelementptr a_85:ptr->i32 [Some(id_91)] 
    li      s9, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s9,s9,a0
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
                    #      store t_91:i32 temp_75_91:ptr->i32 
    sd      s5,0(s9)
                    #      mu a_85:386 
                    #      a_85 = chi a_85:386 
                    #      new_var temp_76_91:i32 
                    #      temp_76_91 = Add i32 i_87, 1_0 
                    #found literal reg Some(s3) already exist with 1_0
    add     s10,a1,s3
                    #      i_87 = i32 temp_76_91 
    mv      a1, s10
                    #      jump label: while.head_90 
    sw      s8,20(sp)
    sw      a3,120(sp)
    sb      a4,119(sp)
    sw      a6,108(sp)
    sw      a7,104(sp)
    sd      a5,48(sp)
    sw      s5,40(sp)
    sw      s1,100(sp)
    sd      s6,32(sp)
    sw      s4,44(sp)
    sd      s9,8(sp)
    sd      s7,24(sp)
    sw      s10,4(sp)
    sb      s2,99(sp)
    sw      a2,112(sp)
    j       .while.head_90
                    #      label while.exit_90: 
.while.exit_90:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_77:4|i:4|temp_78:4|temp_79:1|none:3|temp_80:8|temp_81:4|none:4|temp_82:8|temp_83:400020|none:4|temp_84:8|temp_85:4|none:4|temp_86:8|temp_87:400020|none:4|temp_88:8|temp_89:4|temp_90:4|temp_91:400020|temp_92:400020|temp_93:400020|temp_94:4|temp_95:4|temp_96:1|none:3|temp_97:8|temp_98:400020|none:4|temp_99:8|temp_100:4|temp_101:400020|temp_102:8|temp_103:4|temp_104:4|temp_105:8|temp_106:400020|none:4|temp_107:8|temp_108:4|temp_109:400020|temp_110:8|temp_111:4|temp_112:4|temp_113:400020|none:4|temp_114:8|temp_115:4|temp_116:4|temp_117:4|temp_118:4|temp_119:4|temp_120:1|none:3|temp_121:400020|none:4|temp_122:8|temp_123:4|temp_124:1|none:3|temp_125:400020|none:4|temp_126:8|temp_127:4|temp_128:1|none:3|temp_129:4|temp_130:4
    li      a0, -4800520
    li      a0, -4800520
    add     sp,a0,sp
    li      a1, 4800512
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 4800504
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 4800520
    li      a3, 4800520
    add     s0,a3,sp
                    #      alloc i32 temp_77_105 
                    #      alloc i32 i_105 
                    #      alloc i32 temp_78_108 
                    #      alloc i1 temp_79_108 
                    #      alloc ptr->i32 temp_80_110 
                    #      alloc i32 temp_81_110 
                    #      alloc ptr->i32 temp_82_110 
                    #      alloc Array:i32:[Some(100005_0)] temp_83_110 
                    #      alloc ptr->i32 temp_84_110 
                    #      alloc i32 temp_85_110 
                    #      alloc ptr->i32 temp_86_110 
                    #      alloc Array:i32:[Some(100005_0)] temp_87_110 
                    #      alloc ptr->i32 temp_88_110 
                    #      alloc i32 temp_89_110 
                    #      alloc i32 temp_90_110 
                    #      alloc Array:i32:[Some(100005_0)] temp_91_105 
                    #      alloc Array:i32:[Some(100005_0)] temp_92_105 
                    #      alloc Array:i32:[Some(100005_0)] temp_93_105 
                    #      alloc i32 temp_94_119 
                    #      alloc i32 temp_95_119 
                    #      alloc i1 temp_96_2980 
                    #      alloc ptr->i32 temp_97_121 
                    #      alloc Array:i32:[Some(100005_0)] temp_98_121 
                    #      alloc ptr->i32 temp_99_121 
                    #      alloc i32 temp_100_121 
                    #      alloc Array:i32:[Some(100005_0)] temp_101_121 
                    #      alloc ptr->i32 temp_102_121 
                    #      alloc i32 temp_103_121 
                    #      alloc i32 temp_104_121 
                    #      alloc ptr->i32 temp_105_121 
                    #      alloc Array:i32:[Some(100005_0)] temp_106_121 
                    #      alloc ptr->i32 temp_107_121 
                    #      alloc i32 temp_108_121 
                    #      alloc Array:i32:[Some(100005_0)] temp_109_121 
                    #      alloc ptr->i32 temp_110_121 
                    #      alloc i32 temp_111_121 
                    #      alloc i32 temp_112_121 
                    #      alloc Array:i32:[Some(100005_0)] temp_113_121 
                    #      alloc ptr->i32 temp_114_121 
                    #      alloc i32 temp_115_121 
                    #      alloc i32 temp_116_121 
                    #      alloc i32 temp_117_121 
                    #      alloc i32 temp_118_126 
                    #      alloc i32 temp_119_126 
                    #      alloc i1 temp_120_3308 
                    #      alloc Array:i32:[Some(100005_0)] temp_121_129 
                    #      alloc ptr->i32 temp_122_129 
                    #      alloc i32 temp_123_129 
                    #      alloc i1 temp_124_3344 
                    #      alloc Array:i32:[Some(100005_0)] temp_125_132 
                    #      alloc ptr->i32 temp_126_132 
                    #      alloc i32 temp_127_132 
                    #      alloc i1 temp_128_3413 
                    #      alloc i32 temp_129_128 
                    #      alloc i32 temp_130_105 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_77_105:i32 
                    #      temp_77_105 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    li      a0, 4800500
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      store temp_77_105:i32 *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a4, n
                    #occupy reg a4 with *n_0
    sd      a0,0(a4)
                    #      i_105 = i32 0_0 
    li      a5, 0
                    #      jump label: while.head_109 
    j       .while.head_109
                    #      label while.head_109: 
.while.head_109:
                    #      new_var temp_78_108:i32 
                    #      temp_78_108 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a1, n
                    #occupy reg a1 with *n_0
    lw      a2,0(a1)
                    #      new_var temp_79_108:i1 
                    #      temp_79_108 = icmp i32 Ne i_105, temp_78_108 
    xor     a3,a5,a2
    snez    a3, a3
                    #      br i1 temp_79_108, label while.body_109, label while.exit_109 
    bnez    a3, .while.body_109
    j       .while.exit_109
                    #      label while.body_109: 
.while.body_109:
                    #      new_var temp_80_110:ptr->i32 
                    #      temp_80_110 = getelementptr a_0:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      a1, 0
    li      a4, 1
    mul     a6,a4,a5
                    #occupy reg a6 with a_0
    add     a1,a1,a6
    slli a1,a1,2
    add     a1,a1,a1
                    #      new_var temp_81_110:i32 
                    #      temp_81_110 =  Call i32 quick_read_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    quick_read
    li      a0, 4800500
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a7, 4800476
    add     a7,sp,a7
    sw      a0,0(a7)
                    #      store temp_81_110:i32 temp_80_110:ptr->i32 
    sd      a0,0(a1)
                    #      mu a_0:416 
                    #      a_0 = chi a_0:416 
                    #      new_var temp_82_110:ptr->i32 
                    #      temp_82_110 = getelementptr b_0:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      s1, 0
                    #found literal reg Some(a4) already exist with 1_0
    mul     s2,a4,a5
                    #occupy reg s2 with b_0
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
                    #      new_var temp_83_110:Array:i32:[Some(100005_0)] 
                    #      temp_83_110 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      s3, a
                    #occupy reg s3 with *a_0
    lw      s4,0(s3)
                    #      new_var temp_84_110:ptr->i32 
                    #      new_var temp_85_110:i32 
                    #      temp_84_110 = getelementptr temp_83_110:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      s5, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s5,s5,s4
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_85_110 = load temp_84_110:ptr->i32 
    lw      s6,0(s5)
                    #      store temp_85_110:i32 temp_82_110:ptr->i32 
    sd      s6,0(s1)
                    #      mu b_0:431 
                    #      b_0 = chi b_0:431 
                    #      new_var temp_86_110:ptr->i32 
                    #      temp_86_110 = getelementptr c_0:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      s7, 0
                    #found literal reg Some(a4) already exist with 1_0
    mul     s8,a4,a5
                    #occupy reg s8 with c_0
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,s7
                    #      new_var temp_87_110:Array:i32:[Some(100005_0)] 
                    #      temp_87_110 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      s9, b
                    #occupy reg s9 with *b_0
    lw      s10,0(s9)
                    #      new_var temp_88_110:ptr->i32 
                    #      new_var temp_89_110:i32 
                    #      temp_88_110 = getelementptr temp_87_110:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      s11, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s11,s11,s10
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_89_110 = load temp_88_110:ptr->i32 
    lw      a4,0(s11)
                    #      store temp_89_110:i32 temp_86_110:ptr->i32 
    sd      a4,0(s7)
                    #      mu c_0:446 
                    #      c_0 = chi c_0:446 
                    #      new_var temp_90_110:i32 
                    #      temp_90_110 = Add i32 i_105, 1_0 
    li      a6, 1
    add     a7,a5,a6
                    #      i_105 = i32 temp_90_110 
    mv      a5, a7
                    #      jump label: while.head_109 
    li      a3, 4800491
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a0, 4800476
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a6, 4800500
    add     a6,sp,a6
    lw      a0,0(a6)
    li      s4, 4800460
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 4400432
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s11, 4000384
    add     s11,sp,s11
    sd      s11,0(s11)
    li      a6, 4800500
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a1, 4800480
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a2, 4800492
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a7, 4000376
    add     a7,sp,a7
    sw      a7,0(a7)
    li      s7, 4400416
    add     s7,sp,s7
    sd      s7,0(s7)
    li      s6, 4400428
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s10, 4400412
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a4, 4000380
    add     a4,sp,a4
    sw      a4,0(a4)
    li      s1, 4800464
    add     s1,sp,s1
    sd      s1,0(s1)
    j       .while.head_109
                    #      label while.exit_109: 
.while.exit_109:
                    #      new_var temp_91_105:Array:i32:[Some(100005_0)] 
                    #      temp_91_105 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a1, a
                    #occupy reg a1 with *a_0
    lw      a4,0(a1)
                    #       Call void sortA_0(temp_91_105) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 4800500
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a4
                    #arg load ended
    call    sortA
                    #      new_var temp_92_105:Array:i32:[Some(100005_0)] 
                    #      temp_92_105 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a0, b
                    #occupy reg a0 with *b_0
    lw      a6,0(a0)
                    #       Call void sortB_0(temp_92_105) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a6
                    #arg load ended
    call    sortB
                    #      new_var temp_93_105:Array:i32:[Some(100005_0)] 
                    #      temp_93_105 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a0, c
                    #occupy reg a0 with *c_0
    lw      a7,0(a0)
                    #       Call void sortC_0(temp_93_105) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a7
                    #arg load ended
    call    sortC
                    #      i_105 = i32 0_0 
                    #      jump label: while.head_120 
    j       .while.head_120
                    #      label while.head_120: 
.while.head_120:
                    #      new_var temp_94_119:i32 
                    #      temp_94_119 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    lw      a1,0(a0)
                    #      new_var temp_95_119:i32 
                    #      temp_95_119 = Sub i32 temp_94_119, i_105 
    sub     s1,a1,a5
                    #      new_var temp_96_2980:i1 
                    #      temp_96_2980 = icmp i32 Ne temp_95_119, 0_0 
    li      s2, 0
    xor     s3,s1,s2
    snez    s3, s3
                    #      br i1 temp_96_2980, label while.body_120, label while.exit_120 
    bnez    s3, .while.body_120
    j       .while.exit_120
                    #      label while.body_120: 
.while.body_120:
                    #      new_var temp_97_121:ptr->i32 
                    #      temp_97_121 = getelementptr b_0:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      a0, 0
    li      s2, 1
    mul     s4,s2,a5
                    #occupy reg s4 with b_0
    add     a0,a0,s4
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_98_121:Array:i32:[Some(100005_0)] 
                    #      temp_98_121 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      s5, a
                    #occupy reg s5 with *a_0
    lw      s6,0(s5)
                    #      new_var temp_99_121:ptr->i32 
                    #      new_var temp_100_121:i32 
                    #      temp_99_121 = getelementptr temp_98_121:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      s7, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s7,s7,s6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_100_121 = load temp_99_121:ptr->i32 
    lw      s8,0(s7)
                    #      new_var temp_101_121:Array:i32:[Some(100005_0)] 
                    #      temp_101_121 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      s9, b
                    #occupy reg s9 with *b_0
    lw      s10,0(s9)
                    #      new_var temp_102_121:ptr->i32 
                    #      new_var temp_103_121:i32 
                    #      temp_102_121 = getelementptr temp_101_121:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      s11, 0
                    #found literal reg Some(s2) already exist with 1_0
    add     s11,s11,s10
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_103_121 = load temp_102_121:ptr->i32 
    lw      s2,0(s11)
                    #      new_var temp_104_121:i32 
                    #      temp_104_121 = Sub i32 temp_103_121, temp_100_121 
    sub     s4,s2,s8
                    #      store temp_104_121:i32 temp_97_121:ptr->i32 
    sd      s4,0(a0)
                    #      mu b_0:504 
                    #      b_0 = chi b_0:504 
                    #      new_var temp_105_121:ptr->i32 
                    #      temp_105_121 = getelementptr c_0:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      s5, 0
    li      s9, 1
    li      a0, 2800296
    add     a0,sp,a0
    sd      a0,0(a0)
    mul     a0,s9,a5
                    #occupy reg a0 with c_0
    add     s5,s5,a0
    slli s5,s5,2
    add     s5,s5,s5
                    #      new_var temp_106_121:Array:i32:[Some(100005_0)] 
                    #      temp_106_121 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a0, a
                    #occupy reg a0 with *a_0
    lw      s9,0(a0)
                    #      new_var temp_107_121:ptr->i32 
                    #      new_var temp_108_121:i32 
                    #      temp_107_121 = getelementptr temp_106_121:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      a0, 0
    li      a1, 2800312
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    add     a0,a0,s9
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_108_121 = load temp_107_121:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_109_121:Array:i32:[Some(100005_0)] 
                    #      temp_109_121 = load *b_0:ptr->i32 
    li      a0, 1600184
    add     a0,sp,a0
    sd      a0,0(a0)
                    #   load label b as ptr to reg
    la      a0, b
                    #occupy reg a0 with *b_0
    li      a1, 1600180
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_110_121:ptr->i32 
                    #      new_var temp_111_121:i32 
                    #      temp_110_121 = getelementptr temp_109_121:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      a0, 0
    li      a1, 1600176
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 4800492
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_111_121 = load temp_110_121:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_112_121:i32 
                    #      temp_112_121 = Sub i32 temp_111_121, temp_108_121 
    li      a0, 1200152
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a2, 1600176
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a1,a0
                    #      new_var temp_113_121:Array:i32:[Some(100005_0)] 
                    #      temp_113_121 = load *c_0:ptr->i32 
    li      a0, 1600180
    add     a0,sp,a0
    sw      a0,0(a0)
                    #   load label c as ptr to reg
    la      a0, c
                    #occupy reg a0 with *c_0
    li      a1, 1200148
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_114_121:ptr->i32 
                    #      new_var temp_115_121:i32 
                    #      temp_114_121 = getelementptr temp_113_121:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      a0, 0
    li      a1, 1200140
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 1200144
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a5
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_115_121 = load temp_114_121:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_116_121:i32 
                    #      temp_116_121 = Sub i32 temp_115_121, temp_112_121 
    li      a0, 800112
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a2, 1200140
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a1,a0
                    #      store temp_116_121:i32 temp_105_121:ptr->i32 
    sd      a2,0(s5)
                    #      mu c_0:543 
                    #      c_0 = chi c_0:543 
                    #      new_var temp_117_121:i32 
                    #      temp_117_121 = Add i32 i_105, 1_0 
    li      a0, 1200144
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 800108
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a5,a0
                    #      i_105 = i32 temp_117_121 
    mv      a5, a1
                    #      jump label: while.head_120 
    li      s4, 2000224
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s2, 2000228
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s5, 2000216
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s11, 2000232
    add     s11,sp,s11
    sd      s11,0(s11)
    li      a1, 800100
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 800104
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 4800491
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 4800492
    add     a3,sp,a3
    lw      a2,0(a3)
    li      s7, 2400264
    add     s7,sp,s7
    sd      s7,0(s7)
    li      s6, 2800292
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s8, 2400260
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s10, 2400256
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s1, 2800308
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s9, 2000212
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s3, 2800307
    add     s3,sp,s3
    sb      s3,0(s3)
    j       .while.head_120
                    #      label while.exit_120: 
.while.exit_120:
                    #      i_105 = i32 0_0 
                    #      jump label: while.head_127 
    j       .while.head_127
                    #      label while.head_127: 
.while.head_127:
                    #      new_var temp_118_126:i32 
                    #      temp_118_126 = load *n_0:ptr->i32 
                    #   load label n as ptr to reg
    la      a0, n
                    #occupy reg a0 with *n_0
    lw      s2,0(a0)
                    #      new_var temp_119_126:i32 
                    #      temp_119_126 = Sub i32 i_105, temp_118_126 
    sub     s4,a5,s2
                    #      new_var temp_120_3308:i1 
                    #      temp_120_3308 = icmp i32 Ne temp_119_126, 0_0 
    li      s5, 0
    xor     s6,s4,s5
    snez    s6, s6
                    #      br i1 temp_120_3308, label while.body_127, label while.exit_127 
    bnez    s6, .while.body_127
    j       .while.exit_127
                    #      label while.body_127: 
.while.body_127:
                    #      new_var temp_121_129:Array:i32:[Some(100005_0)] 
                    #      temp_121_129 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a0, b
                    #occupy reg a0 with *b_0
    lw      s5,0(a0)
                    #      new_var temp_122_129:ptr->i32 
                    #      new_var temp_123_129:i32 
                    #      temp_122_129 = getelementptr temp_121_129:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      s7, 0
    li      s8, 1
    add     s7,s7,s5
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_123_129 = load temp_122_129:ptr->i32 
    lw      s9,0(s7)
                    #      new_var temp_124_3344:i1 
                    #      temp_124_3344 = icmp i32 Ne temp_123_129, 0_0 
    li      s10, 0
    xor     s11,s9,s10
    snez    s11, s11
                    #      br i1 temp_124_3344, label branch_true_130, label branch_false_130 
    bnez    s11, .branch_true_130
    j       .branch_false_130
                    #      label branch_true_130: 
.branch_true_130:
                    #      ret 1_0 
    li      a0, 4800512
    add     a0,sp,a0
    ld      ra,0(a0)
    li      s8, 4800504
    add     s8,sp,s8
    ld      s0,0(s8)
    li      a0, 4800512
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      s10, 4800520
    li      s10, 4800520
    add     sp,s10,sp
    ret
                    #      label branch_false_130: 
.branch_false_130:
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_125_132:Array:i32:[Some(100005_0)] 
                    #      temp_125_132 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a0, c
                    #occupy reg a0 with *c_0
    lw      s8,0(a0)
                    #      new_var temp_126_132:ptr->i32 
                    #      new_var temp_127_132:i32 
                    #      temp_126_132 = getelementptr temp_125_132:Array:i32:[Some(100005_0)] [Some(i_105)] 
    li      s10, 0
    li      a0, 1
    add     s10,s10,s8
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_127_132 = load temp_126_132:ptr->i32 
    lw      a0,0(s10)
                    #      new_var temp_128_3413:i1 
                    #      temp_128_3413 = icmp i32 Ne temp_127_132, 0_0 
    li      a1, 2800312
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a2, 4800492
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_128_3413, label branch_true_133, label branch_false_133 
    bnez    a2, .branch_true_133
    j       .branch_false_133
                    #      label branch_true_133: 
.branch_true_133:
                    #      ret 2_0 
    li      a1, 4800512
    add     a1,sp,a1
    ld      ra,0(a1)
    sw      a0,12(sp)
    li      a0, 4800504
    add     a0,sp,a0
    ld      s0,0(a0)
    li      a0, 4800504
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 2
    li      a1, 4800512
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a1, 4800520
    li      a1, 4800520
    add     sp,a1,sp
    ret
                    #      label branch_false_133: 
.branch_false_133:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_129_128:i32 
                    #      temp_129_128 = Add i32 i_105, 1_0 
    li      a1, 1
    sw      a0,12(sp)
    add     a0,a5,a1
                    #      i_105 = i32 temp_129_128 
    mv      a5, a0
                    #      jump label: while.head_127 
    sw      a0,4(sp)
    li      s4, 800092
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s2, 800096
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s5, 800084
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s11, 400051
    add     s11,sp,s11
    sb      s11,0(s11)
    sb      a2,11(sp)
    li      a2, 2800312
    add     a2,sp,a2
    lw      a1,0(a2)
    li      a2, 2800312
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 4800491
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a3, 4800492
    add     a3,sp,a3
    lw      a2,0(a3)
    li      s7, 400056
    add     s7,sp,s7
    sd      s7,0(s7)
    li      s6, 800091
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s8, 400044
    add     s8,sp,s8
    sw      s8,0(s8)
    sd      s10,16(sp)
    li      s9, 400052
    add     s9,sp,s9
    sw      s9,0(s9)
    j       .while.head_127
                    #      label while.exit_127: 
.while.exit_127:
                    #      new_var temp_130_105:i32 
                    #      temp_130_105 = Sub i32 0_0, 123_0 
    li      a0, 0
    li      s5, 123
    sub     s7,a0,s5
                    #      ret temp_130_105 
    li      s8, 4800512
    add     s8,sp,s8
    ld      ra,0(s8)
    li      s9, 4800504
    add     s9,sp,s9
    ld      s0,0(s9)
    sw      s7,0(sp)
    li      s7, 4800520
    li      s7, 4800520
    add     sp,s7,sp
    ret
.section        .data
    .align 4
    .globl c
                    #      global Array:i32:[Some(100005_0)] c_0 
    .type c,@object
c:
    .zero 400020
    .align 4
    .globl b
                    #      global Array:i32:[Some(100005_0)] b_0 
    .type b,@object
b:
    .zero 400020
    .align 4
    .globl a
                    #      global Array:i32:[Some(100005_0)] a_0 
    .type a,@object
a:
    .zero 400020
    .align 4
    .globl x
                    #      global Array:i32:[Some(100005_0)] x_0 
    .type x,@object
x:
    .zero 400020
    .align 4
    .globl cnt
                    #      global Array:i32:[Some(400020_0)] cnt_0 
    .type cnt,@object
cnt:
    .zero 1600080
    .align 4
    .globl maxn
                    #      global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 100005
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 0
