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
                    #      Define get_next_0 [str_16, next_16] -> get_next_ret_0 
    .globl get_next
    .type get_next,@function
get_next:
                    #mem layout:|ra_get_next:8|s0_get_next:8|str:8|next:8|temp_0:8|i:4|j:4|temp_1:8|temp_2:4|temp_3:1|none:3|temp_4:8|temp_5:4|none:4|temp_6:8|temp_7:4|temp_8:1|temp_9:1|temp_10:1|none:1|temp_11:4|temp_12:4|temp_13:8|temp_14:8|temp_15:4|none:4
    addi    sp,sp,-128
    sd      ra,120(sp)
    sd      s0,112(sp)
    addi    s0,sp,128
                    #      new_var str_16:ptr->i32 
                    #      new_var next_16:ptr->i32 
                    #      alloc ptr->i32 temp_0_18 
                    #      alloc i32 i_18 
                    #      alloc i32 j_18 
                    #      alloc ptr->i32 temp_1_21 
                    #      alloc i32 temp_2_21 
                    #      alloc i1 temp_3_161 
                    #      alloc ptr->i32 temp_4_24 
                    #      alloc i32 temp_5_24 
                    #      alloc ptr->i32 temp_6_24 
                    #      alloc i32 temp_7_24 
                    #      alloc i1 temp_8_24 
                    #      alloc i1 temp_9_24 
                    #      alloc i1 temp_10_24 
                    #      alloc i32 temp_11_26 
                    #      alloc i32 temp_12_26 
                    #      alloc ptr->i32 temp_13_26 
                    #      alloc ptr->i32 temp_14_24 
                    #      alloc i32 temp_15_24 
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_0_18:ptr->i32 
                    #      temp_0_18 = getelementptr next_16:ptr->i32 [Some(0_0)] 
    li      a2, 0
    li      a3, 1
    li      a4, 0
    add     a2,a2,a1
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      store -1_0:i32 temp_0_18:ptr->i32 
    li      a5, -1
    sd      a5,0(a2)
                    #      mu next_16:27 
                    #      next_16 = chi next_16:27 
                    #      i_18 = i32 0_0 
    li      a6, 0
                    #      j_18 = i32 -1_0 
    li      a7, -1
                    #      jump label: while.head_22 
    j       .while.head_22
                    #      label while.head_22: 
.while.head_22:
                    #      new_var temp_1_21:ptr->i32 
                    #      new_var temp_2_21:i32 
                    #      temp_1_21 = getelementptr str_16:ptr->i32 [Some(i_18)] 
    li      s1, 0
                    #found literal reg Some(a3) already exist with 1_0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_2_21 = load temp_1_21:ptr->i32 
    lw      s2,0(s1)
                    #      new_var temp_3_161:i1 
                    #      temp_3_161 = icmp i32 Ne temp_2_21, 0_0 
                    #found literal reg Some(a4) already exist with 0_0
    xor     s3,s2,a4
    snez    s3, s3
                    #      br i1 temp_3_161, label while.body_22, label while.exit_22 
    bnez    s3, .while.body_22
    j       .while.exit_22
                    #      label while.body_22: 
.while.body_22:
                    #      new_var temp_4_24:ptr->i32 
                    #      new_var temp_5_24:i32 
                    #      temp_4_24 = getelementptr str_16:ptr->i32 [Some(j_18)] 
    li      s4, 0
                    #found literal reg Some(a3) already exist with 1_0
    add     s4,s4,a0
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_5_24 = load temp_4_24:ptr->i32 
    lw      s5,0(s4)
                    #      new_var temp_6_24:ptr->i32 
                    #      new_var temp_7_24:i32 
                    #      temp_6_24 = getelementptr str_16:ptr->i32 [Some(i_18)] 
    li      s6, 0
                    #found literal reg Some(a3) already exist with 1_0
    add     s6,s6,a0
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_7_24 = load temp_6_24:ptr->i32 
    lw      s7,0(s6)
                    #      new_var temp_8_24:i1 
                    #      temp_8_24 = icmp i32 Eq temp_7_24, temp_5_24 
    xor     s8,s7,s5
    seqz    s8, s8
                    #      new_var temp_9_24:i1 
                    #      temp_9_24 = icmp i32 Eq j_18, -1_0 
                    #found literal reg Some(a5) already exist with -1_0
    xor     s9,a7,a5
    seqz    s9, s9
                    #      new_var temp_10_24:i1 
                    #      temp_10_24 = Or i1 temp_9_24, temp_8_24 
                    #      br i1 temp_10_24, label branch_true_25, label branch_false_25 
    bnez    s10, .branch_true_25
    j       .branch_false_25
                    #      label branch_true_25: 
.branch_true_25:
                    #      new_var temp_11_26:i32 
                    #      temp_11_26 = Add i32 j_18, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     s11,a7,a3
                    #      j_18 = i32 temp_11_26 
                    #      new_var temp_12_26:i32 
                    #      temp_12_26 = Add i32 i_18, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     a4,a6,a3
                    #      i_18 = i32 temp_12_26 
                    #      new_var temp_13_26:ptr->i32 
                    #      temp_13_26 = getelementptr next_16:ptr->i32 [Some(i_18)] 
    li      a3, 0
    li      a5, 1
    add     a3,a3,a1
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
                    #      store j_18:i32 temp_13_26:ptr->i32 
    sd      a7,0(a3)
                    #      mu next_16:83 
                    #      next_16 = chi next_16:83 
                    #      jump label: L9_0 
    j       .L9_0
                    #      label branch_false_25: 
.branch_false_25:
                    #      new_var temp_14_24:ptr->i32 
                    #      new_var temp_15_24:i32 
                    #      temp_14_24 = getelementptr next_16:ptr->i32 [Some(j_18)] 
    li      a5, 0
    sd      a0,104(sp)
    li      a0, 1
    add     a5,a5,a1
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_15_24 = load temp_14_24:ptr->i32 
    lw      a0,0(a5)
                    #      j_18 = i32 temp_15_24 
                    #      jump label: L9_0 
    j       .L9_0
                    #      label L9_0: 
.L9_0:
                    #      jump label: while.head_22 
    j       .while.head_22
                    #      label while.exit_22: 
.while.exit_22:
                    #      Define KMP_0 [dst_31, src_31] -> KMP_ret_0 
    .globl KMP
    .type KMP,@function
KMP:
                    #mem layout:|ra_KMP:8|s0_KMP:8|dst:8|src:8|next:16384|i:4|j:4|temp_16:8|temp_17:4|temp_18:1|none:3|temp_19:8|temp_20:4|none:4|temp_21:8|temp_22:4|temp_23:1|none:3|temp_24:4|temp_25:4|temp_26:8|temp_27:4|temp_28:1|temp_29:1|none:2|temp_30:8|temp_31:4|temp_32:1|none:3|temp_33:4|temp_34:4|temp_35:4|none:4
    li      a2, -16528
    li      a2, -16528
    add     sp,a2,sp
    li      a3, 16520
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 16512
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 16528
    li      a5, 16528
    add     s0,a5,sp
                    #      new_var dst_31:ptr->i32 
                    #      new_var src_31:ptr->i32 
                    #      alloc Array:i32:[Some(4096_0)] next_33 
                    #      alloc i32 i_33 
                    #      alloc i32 j_33 
                    #      alloc ptr->i32 temp_16_37 
                    #      alloc i32 temp_17_37 
                    #      alloc i1 temp_18_684 
                    #      alloc ptr->i32 temp_19_40 
                    #      alloc i32 temp_20_40 
                    #      alloc ptr->i32 temp_21_40 
                    #      alloc i32 temp_22_40 
                    #      alloc i1 temp_23_40 
                    #      alloc i32 temp_24_42 
                    #      alloc i32 temp_25_42 
                    #      alloc ptr->i32 temp_26_45 
                    #      alloc i32 temp_27_45 
                    #      alloc i1 temp_28_45 
                    #      alloc i1 temp_29_45 
                    #      alloc ptr->i32 temp_30_49 
                    #      alloc i32 temp_31_49 
                    #      alloc i1 temp_32_51 
                    #      alloc i32 temp_33_53 
                    #      alloc i32 temp_34_53 
                    #      alloc i32 temp_35_33 
                    #      label L4_0: 
.L4_0:
                    #      new_var next_33:Array:i32:[Some(4096_0)] 
                    #       Call void get_next_0(dst_31, next_33) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 16504
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 16496
    add     a0,sp,a0
    sd      a1,0(a0)
                    #arg load ended
    call    get_next
                    #      i_33 = i32 0_0 
    li      a1, 0
                    #      j_33 = i32 0_0 
    li      a6, 0
                    #      jump label: while.head_38 
    j       .while.head_38
                    #      label while.head_38: 
.while.head_38:
                    #      new_var temp_16_37:ptr->i32 
                    #      new_var temp_17_37:i32 
                    #      temp_16_37 = getelementptr src_31:ptr->i32 [Some(j_33)] 
    li      a7, 0
    li      s1, 1
    mul     s2,s1,a6
    add     a7,a7,s2
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_17_37 = load temp_16_37:ptr->i32 
    lw      s3,0(a7)
                    #      new_var temp_18_684:i1 
                    #      temp_18_684 = icmp i32 Ne temp_17_37, 0_0 
    li      s4, 0
    xor     s5,s3,s4
    snez    s5, s5
                    #      br i1 temp_18_684, label while.body_38, label while.exit_38 
    bnez    s5, .while.body_38
    j       .while.exit_38
                    #      label while.body_38: 
.while.body_38:
                    #      new_var temp_19_40:ptr->i32 
                    #      new_var temp_20_40:i32 
                    #      temp_19_40 = getelementptr src_31:ptr->i32 [Some(j_33)] 
    li      s6, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     s6,s6,s2
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_20_40 = load temp_19_40:ptr->i32 
    lw      s7,0(s6)
                    #      new_var temp_21_40:ptr->i32 
                    #      new_var temp_22_40:i32 
                    #      temp_21_40 = getelementptr dst_31:ptr->i32 [Some(i_33)] 
    li      s8, 0
                    #found literal reg Some(s1) already exist with 1_0
    mul     s9,s1,a1
    add     s8,s8,s9
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_22_40 = load temp_21_40:ptr->i32 
    lw      s10,0(s8)
                    #      new_var temp_23_40:i1 
                    #      temp_23_40 = icmp i32 Eq temp_22_40, temp_20_40 
    xor     s11,s10,s7
    seqz    s11, s11
                    #      br i1 temp_23_40, label branch_true_41, label branch_false_41 
    bnez    s11, .branch_true_41
    j       .branch_false_41
                    #      label branch_true_41: 
.branch_true_41:
                    #      new_var temp_24_42:i32 
                    #      temp_24_42 = Add i32 i_33, 1_0 
                    #found literal reg Some(s1) already exist with 1_0
    add     a0,a1,s1
                    #      i_33 = i32 temp_24_42 
                    #      new_var temp_25_42:i32 
                    #      temp_25_42 = Add i32 j_33, 1_0 
                    #found literal reg Some(s1) already exist with 1_0
    add     a2,a6,s1
                    #      j_33 = i32 temp_25_42 
                    #      jump label: L5_0 
    j       .L5_0
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_26_45:ptr->i32 
                    #      new_var temp_27_45:i32 
                    #      temp_26_45 = getelementptr dst_31:ptr->i32 [Some(i_33)] 
    li      a3, 0
                    #found literal reg Some(s1) already exist with 1_0
    add     a3,a3,s9
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_27_45 = load temp_26_45:ptr->i32 
    lw      a4,0(a3)
                    #      new_var temp_28_45:i1 
                    #      temp_28_45 = icmp i1 Ne temp_27_45, 0_0 
                    #found literal reg Some(s4) already exist with 0_0
    xor     a5,a4,s4
    snez    a5, a5
                    #      new_var temp_29_45:i1 
                    #      temp_29_45 = xor i1 temp_28_45, true 
    seqz    s1, a5
                    #      br i1 temp_29_45, label branch_true_46, label branch_false_46 
    bnez    s1, .branch_true_46
    j       .branch_false_46
                    #      label branch_true_46: 
.branch_true_46:
                    #      ret j_33 
    li      s4, 16520
    add     s4,sp,s4
    ld      ra,0(s4)
    sw      a0,52(sp)
    li      a0, 16512
    add     a0,sp,a0
    ld      s0,0(a0)
    sw      a6,104(sp)
    li      a0, 16512
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a6, 16528
    li      a6, 16528
    add     sp,a6,sp
    ret
                    #      label branch_false_46: 
.branch_false_46:
                    #      label branch_false_41: 
.branch_false_41:
                    #      new_var temp_30_49:ptr->i32 
                    #      new_var temp_31_49:i32 
                    #      temp_30_49 = getelementptr next_33:Array:i32:[Some(4096_0)] [Some(i_33)] 
    li      a6, 0
    sw      a0,104(sp)
    li      a0, 1
    sw      a2,48(sp)
    mul     a2,a0,a1
    add     a6,a6,a2
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_31_49 = load temp_30_49:ptr->i32 
    lw      a0,0(a6)
                    #      i_33 = i32 temp_31_49 
                    #      jump label: L6_0 
    j       .L6_0
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_32_51:i1 
                    #      temp_32_51 = icmp i32 Eq i_33, -1_0 
    sw      a0,20(sp)
    li      a0, -1
    li      a2, 16492
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_32_51, label branch_true_52, label branch_false_52 
    bnez    a2, .branch_true_52
    j       .branch_false_52
                    #      label branch_true_52: 
.branch_true_52:
                    #      new_var temp_33_53:i32 
                    #      temp_33_53 = Add i32 i_33, 1_0 
    li      a0, 1
    sb      a2,19(sp)
    add     a2,a1,a0
                    #      i_33 = i32 temp_33_53 
                    #      new_var temp_34_53:i32 
                    #      temp_34_53 = Add i32 j_33, 1_0 
    sw      a1,108(sp)
    li      a1, 1
    sw      a2,12(sp)
    add     a2,a0,a1
                    #      j_33 = i32 temp_34_53 
                    #      jump label: branch_false_52 
    j       .branch_false_52
                    #      label branch_false_52: 
.branch_false_52:
                    #      label L7_0: 
.L7_0:
                    #      jump label: while.head_38 
    j       .while.head_38
                    #      label while.exit_38: 
.while.exit_38:
                    #      new_var temp_35_33:i32 
                    #      temp_35_33 = Sub i32 0_0, 1_0 
    li      a1, 0
    sw      a0,104(sp)
    li      a0, 1
    sw      a2,8(sp)
    sub     a2,a1,a0
                    #      ret temp_35_33 
    mv      ra, s4
    li      a0, 16512
    add     a0,sp,a0
    ld      s0,0(a0)
    sw      a2,4(sp)
    li      a0, 16512
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a2, 16528
    li      a2, 16528
    add     sp,a2,sp
    ret
                    #      Define read_str_0 [buf_57] -> read_str_ret_0 
    .globl read_str
    .type read_str,@function
read_str:
                    #mem layout:|ra_read_str:8|s0_read_str:8|buf:8|i:4|temp_36:1|none:3|temp_37:8|temp_38:4|none:4|temp_39:8|temp_40:4|temp_41:1|none:3|temp_42:4|none:4|temp_43:8
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
                    #      new_var buf_57:ptr->i32 
                    #      alloc i32 i_59 
                    #      alloc i1 temp_36_1228 
                    #      alloc ptr->i32 temp_37_63 
                    #      alloc i32 temp_38_63 
                    #      alloc ptr->i32 temp_39_65 
                    #      alloc i32 temp_40_65 
                    #      alloc i1 temp_41_65 
                    #      alloc i32 temp_42_63 
                    #      alloc ptr->i32 temp_43_59 
                    #      label L1_0: 
.L1_0:
                    #      i_59 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_62 
    j       .while.head_62
                    #      label while.head_62: 
.while.head_62:
                    #      new_var temp_36_1228:i1 
                    #      temp_36_1228 = icmp i32 Ne 1_0, 0_0 
    li      a2, 1
    li      a3, 0
    xor     a4,a2,a3
    snez    a4, a4
                    #      br i1 temp_36_1228, label while.body_62, label while.exit_62 
    bnez    a4, .while.body_62
    j       .while.exit_62
                    #      label while.body_62: 
.while.body_62:
                    #      new_var temp_37_63:ptr->i32 
                    #      temp_37_63 = getelementptr buf_57:ptr->i32 [Some(i_59)] 
    li      a5, 0
                    #found literal reg Some(a2) already exist with 1_0
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
                    #      new_var temp_38_63:i32 
                    #      temp_38_63 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sd      a0,56(sp)
    sw      a0,36(sp)
                    #      store temp_38_63:i32 temp_37_63:ptr->i32 
    sd      a0,0(a5)
                    #      mu buf_57:199 
                    #      buf_57 = chi buf_57:199 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_39_65:ptr->i32 
                    #      new_var temp_40_65:i32 
                    #      temp_39_65 = getelementptr buf_57:ptr->i32 [Some(i_59)] 
    li      a6, 0
                    #found literal reg Some(a2) already exist with 1_0
    mul     a7,a2,a1
    add     a6,a6,a7
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_40_65 = load temp_39_65:ptr->i32 
    lw      s1,0(a6)
                    #      new_var temp_41_65:i1 
                    #      temp_41_65 = icmp i32 Eq temp_40_65, 10_0 
    li      s2, 10
    xor     s3,s1,s2
    seqz    s3, s3
                    #      br i1 temp_41_65, label branch_true_66, label branch_false_66 
    bnez    s3, .branch_true_66
    j       .branch_false_66
                    #      label branch_true_66: 
.branch_true_66:
                    #      jump label: while.exit_62 
    j       .while.exit_62
                    #      label while.exit_62: 
.while.exit_62:
                    #      new_var temp_43_59:ptr->i32 
                    #      temp_43_59 = getelementptr buf_57:ptr->i32 [Some(i_59)] 
    li      s4, 0
                    #found literal reg Some(a2) already exist with 1_0
    add     s4,s4,a7
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      store 0_0:i32 temp_43_59:ptr->i32 
                    #found literal reg Some(a3) already exist with 0_0
    sd      a3,0(s4)
                    #      mu buf_57:222 
                    #      buf_57 = chi buf_57:222 
                    #      ret i_59 
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a1,52(sp)
    sw      a0,36(sp)
    addi    sp,sp,80
    ret
                    #      label branch_false_66: 
.branch_false_66:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_42_63:i32 
                    #      temp_42_63 = Add i32 i_59, 1_0 
                    #found literal reg Some(a2) already exist with 1_0
    add     a1,a0,a2
                    #      i_59 = i32 temp_42_63 
                    #      jump label: while.head_62 
    j       .while.head_62
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|dst:16384|src:16384|temp_44:4|temp_45:4|temp_46:4|none:4
    li      a0, -32800
    li      a0, -32800
    add     sp,a0,sp
    li      a1, 32792
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 32784
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 32800
    li      a3, 32800
    add     s0,a3,sp
                    #      alloc Array:i32:[Some(4096_0)] dst_72 
                    #      alloc Array:i32:[Some(4096_0)] src_72 
                    #      alloc i32 temp_44_72 
                    #      alloc i32 temp_45_72 
                    #      alloc i32 temp_46_72 
                    #      label L0_0: 
.L0_0:
                    #      new_var dst_72:Array:i32:[Some(4096_0)] 
                    #      new_var src_72:Array:i32:[Some(4096_0)] 
                    #      new_var temp_44_72:i32 
                    #      temp_44_72 =  Call i32 read_str_0(dst_72) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    read_str
    sw      a0,12(sp)
                    #      new_var temp_45_72:i32 
                    #      temp_45_72 =  Call i32 read_str_0(src_72) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,12(sp)
                    #arg load ended
    call    read_str
    sw      a0,8(sp)
                    #      new_var temp_46_72:i32 
                    #      temp_46_72 =  Call i32 KMP_0(dst_72, src_72) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,8(sp)
                    #arg load ended
    call    KMP
    sw      a0,4(sp)
                    #       Call void putint_0(temp_46_72) 
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
    li      a0, 32792
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 32784
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 32792
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
                    #found literal reg Some(a3) already exist with 32800_0
    li      a3, 32800
    add     sp,a3,sp
    ret
