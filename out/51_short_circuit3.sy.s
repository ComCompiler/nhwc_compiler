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
                    #      Define set_a_0 [val_17] -> set_a_ret_0 
    .globl set_a
    .type set_a,@function
set_a:
                    #mem layout:|ra_set_a:8|s0_set_a:8|val:4|temp_0:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_0_19 
                    #      label L23_0: 
.L23_0:
                    #      store val_17:i32 *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a1, a
                    #occupy reg a1 with *a_0
    sd      a0,0(a1)
                    #      new_var temp_0_19:i32 
                    #      temp_0_19 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a2, a
                    #occupy reg a2 with *a_0
    lw      a3,0(a2)
                    #      ret temp_0_19 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a3,0(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
                    #      Define set_b_0 [val_22] -> set_b_ret_0 
    .globl set_b
    .type set_b,@function
set_b:
                    #mem layout:|ra_set_b:8|s0_set_b:8|val:4|temp_1:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_1_24 
                    #      label L22_0: 
.L22_0:
                    #      store val_22:i32 *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a1, b
                    #occupy reg a1 with *b_0
    sd      a0,0(a1)
                    #      new_var temp_1_24:i32 
                    #      temp_1_24 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a2, b
                    #occupy reg a2 with *b_0
    lw      a3,0(a2)
                    #      ret temp_1_24 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a3,0(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
                    #      Define set_d_0 [val_27] -> set_d_ret_0 
    .globl set_d
    .type set_d,@function
set_d:
                    #mem layout:|ra_set_d:8|s0_set_d:8|val:4|temp_2:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_2_29 
                    #      label L21_0: 
.L21_0:
                    #      store val_27:i32 *d_0:ptr->i32 
                    #   load label d as ptr to reg
    la      a1, d
                    #occupy reg a1 with *d_0
    sd      a0,0(a1)
                    #      new_var temp_2_29:i32 
                    #      temp_2_29 = load *d_0:ptr->i32 
                    #   load label d as ptr to reg
    la      a2, d
                    #occupy reg a2 with *d_0
    lw      a3,0(a2)
                    #      ret temp_2_29 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a3,0(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_3:4|temp_4:4|temp_5:1|temp_6:1|temp_7:1|none:1|temp_8:4|temp_9:4|temp_10:4|temp_11:4|temp_12:1|temp_13:1|temp_14:1|none:1|temp_15:4|temp_16:4|c:4|temp_17:4|temp_18:1|temp_19:1|none:2|temp_20:4|temp_21:4|temp_22:1|temp_23:1|none:2|temp_24:4|temp_25:1|temp_26:1|none:2|temp_27:4|temp_28:1|none:3|temp_29:4|temp_30:1|temp_31:1|none:2|temp_32:4|temp_33:1|temp_34:1|none:2|i0:4|i1:4|i2:4|i3:4|i4:4|temp_35:1|temp_36:1|temp_37:1|temp_38:1|temp_39:1|temp_40:1|temp_41:1|temp_42:1|temp_43:1|temp_44:1|temp_45:1|temp_46:1|temp_47:1|temp_48:1|temp_49:1|temp_50:1|temp_51:4|temp_52:1|temp_53:1|temp_54:1|temp_55:1|temp_56:1|temp_57:1|temp_58:1|temp_59:1|temp_60:4|temp_61:1|temp_62:1|none:2
    addi    sp,sp,-168
    sd      ra,160(sp)
    sd      s0,152(sp)
    addi    s0,sp,168
                    #      alloc i32 temp_3_36 
                    #      alloc i32 temp_4_36 
                    #      alloc i1 temp_5_36 
                    #      alloc i1 temp_6_36 
                    #      alloc i1 temp_7_36 
                    #      alloc i32 temp_8_33 
                    #      alloc i32 temp_9_33 
                    #      alloc i32 temp_10_45 
                    #      alloc i32 temp_11_45 
                    #      alloc i1 temp_12_45 
                    #      alloc i1 temp_13_45 
                    #      alloc i1 temp_14_45 
                    #      alloc i32 temp_15_33 
                    #      alloc i32 temp_16_33 
                    #      alloc i32 c_33 
                    #      alloc i32 temp_17_54 
                    #      alloc i1 temp_18_54 
                    #      alloc i1 temp_19_54 
                    #      alloc i32 temp_20_33 
                    #      alloc i32 temp_21_59 
                    #      alloc i1 temp_22_59 
                    #      alloc i1 temp_23_59 
                    #      alloc i32 temp_24_33 
                    #      alloc i1 temp_25_64 
                    #      alloc i1 temp_26_68 
                    #      alloc i32 temp_27_71 
                    #      alloc i1 temp_28_71 
                    #      alloc i32 temp_29_75 
                    #      alloc i1 temp_30_75 
                    #      alloc i1 temp_31_79 
                    #      alloc i32 temp_32_79 
                    #      alloc i1 temp_33_79 
                    #      alloc i1 temp_34_82 
                    #      alloc i32 i0_33 
                    #      alloc i32 i1_33 
                    #      alloc i32 i2_33 
                    #      alloc i32 i3_33 
                    #      alloc i32 i4_33 
                    #      alloc i1 temp_35_87 
                    #      alloc i1 temp_36_87 
                    #      alloc i1 temp_37_87 
                    #      alloc i1 temp_38_90 
                    #      alloc i1 temp_39_90 
                    #      alloc i1 temp_40_90 
                    #      alloc i1 temp_41_93 
                    #      alloc i1 temp_42_93 
                    #      alloc i1 temp_43_93 
                    #      alloc i1 temp_44_96 
                    #      alloc i1 temp_45_96 
                    #      alloc i1 temp_46_96 
                    #      alloc i1 temp_47_100 
                    #      alloc i1 temp_48_100 
                    #      alloc i1 temp_49_100 
                    #      alloc i1 temp_50_100 
                    #      alloc i32 temp_51_100 
                    #      alloc i1 temp_52_100 
                    #      alloc i1 temp_53_100 
                    #      alloc i1 temp_54_100 
                    #      alloc i1 temp_55_104 
                    #      alloc i1 temp_56_104 
                    #      alloc i1 temp_57_104 
                    #      alloc i1 temp_58_104 
                    #      alloc i1 temp_59_104 
                    #      alloc i32 temp_60_104 
                    #      alloc i1 temp_61_104 
                    #      alloc i1 temp_62_104 
                    #      label L0_0: 
.L0_0:
                    #      store 2_0:i32 *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a0, a
                    #occupy reg a0 with *a_0
    li      a1, 2
    sd      a1,0(a0)
                    #      store 3_0:i32 *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a2, b
                    #occupy reg a2 with *b_0
    li      a3, 3
    sd      a3,0(a2)
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_3_36:i32 
                    #      temp_3_36 =  Call i32 set_b_0(1_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 1
                    #arg load ended
    call    set_b
    sw      a0,148(sp)
                    #      new_var temp_4_36:i32 
                    #      temp_4_36 =  Call i32 set_a_0(0_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,148(sp)
    li      a0, 0
                    #arg load ended
    call    set_a
    sw      a0,144(sp)
                    #      new_var temp_5_36:i1 
                    #      temp_5_36 = icmp i32 Ne temp_4_36, 0_0 
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
                    #      new_var temp_6_36:i1 
                    #      temp_5_36 = icmp i32 Ne temp_3_36, 0_0 
                    #found literal reg Some(a1) already exist with 0_0
                    #      new_var temp_7_36:i1 
                    #      temp_7_36 = And i1 temp_5_36, temp_6_36 
    and     a5,a2,a4
                    #      br i1 temp_7_36, label branch_true_37, label branch_false_37 
    bnez    a5, .branch_true_37
    j       .branch_false_37
                    #      label branch_false_37: 
.branch_false_37:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_8_33:i32 
                    #      temp_8_33 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a1, a
                    #occupy reg a1 with *a_0
    lw      a6,0(a1)
                    #       Call void putint_0(temp_8_33) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,144(sp)
    mv      a0, a6
                    #arg load ended
    call    putint
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      new_var temp_9_33:i32 
                    #      temp_9_33 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a0, b
                    #occupy reg a0 with *b_0
    lw      a7,0(a0)
                    #       Call void putint_0(temp_9_33) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a7
                    #arg load ended
    call    putint
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      store 2_0:i32 *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a0, a
                    #occupy reg a0 with *a_0
    li      s1, 2
    sd      s1,0(a0)
                    #      store 3_0:i32 *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      s2, b
                    #occupy reg s2 with *b_0
    li      s3, 3
    sd      s3,0(s2)
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_10_45:i32 
                    #      temp_10_45 =  Call i32 set_b_0(1_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 1
                    #arg load ended
    call    set_b
    sw      a0,128(sp)
                    #      new_var temp_11_45:i32 
                    #      temp_11_45 =  Call i32 set_a_0(0_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,128(sp)
    li      a0, 0
                    #arg load ended
    call    set_a
    sw      a0,124(sp)
                    #      new_var temp_12_45:i1 
                    #      temp_12_45 = icmp i32 Ne temp_11_45, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_13_45:i1 
                    #      temp_12_45 = icmp i32 Ne temp_10_45, 0_0 
                    #found literal reg Some(a1) already exist with 0_0
                    #      new_var temp_14_45:i1 
                    #      temp_14_45 = And i1 temp_12_45, temp_13_45 
    and     s4,s1,s3
                    #      br i1 temp_14_45, label branch_true_46, label branch_false_46 
    bnez    s4, .branch_true_46
    j       .branch_false_46
                    #      label branch_true_46: 
.branch_true_46:
                    #      jump label: branch_false_46 
    j       .branch_false_46
                    #      label branch_false_46: 
.branch_false_46:
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_15_33:i32 
                    #      temp_15_33 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a1, a
                    #occupy reg a1 with *a_0
    lw      s5,0(a1)
                    #       Call void putint_0(temp_15_33) 
                    #saved register dumping to mem
    sb      s1,123(sp)
    sw      s2,128(sp)
    sb      s3,122(sp)
    sb      s4,121(sp)
    sw      s5,116(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,124(sp)
    lw      a0,116(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      new_var temp_16_33:i32 
                    #      temp_16_33 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a0, b
                    #occupy reg a0 with *b_0
    lw      s1,0(a0)
                    #       Call void putint_0(temp_16_33) 
                    #saved register dumping to mem
    sw      s1,112(sp)
                    #saved register dumped to mem
                    #arg load start
    lw      a0,112(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      c_33 = i32 1_0 
    li      a0, 1
                    #      store 2_0:i32 *d_0:ptr->i32 
                    #   load label d as ptr to reg
    la      s1, d
                    #occupy reg s1 with *d_0
    li      s2, 2
    sd      s2,0(s1)
                    #      jump label: L5_0 
    j       .L5_0
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_17_54:i32 
                    #      temp_17_54 =  Call i32 set_d_0(3_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,108(sp)
    li      a0, 3
                    #arg load ended
    call    set_d
    sw      a0,104(sp)
                    #      new_var temp_18_54:i1 
                    #      temp_18_54 = icmp i32 Ne temp_17_54, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_19_54:i1 
                    #      temp_19_54 = And i1 temp_18_54, true_0 
    li      s2, 1
    and     s3,s1,s2
                    #      br i1 temp_19_54, label branch_true_55, label branch_false_55 
    bnez    s3, .branch_true_55
    j       .branch_false_55
                    #      label branch_true_55: 
.branch_true_55:
                    #      jump label: branch_false_55 
    j       .branch_false_55
                    #      label branch_false_55: 
.branch_false_55:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_20_33:i32 
                    #      temp_20_33 = load *d_0:ptr->i32 
                    #   load label d as ptr to reg
    la      a1, d
                    #occupy reg a1 with *d_0
    lw      s2,0(a1)
                    #       Call void putint_0(temp_20_33) 
                    #saved register dumping to mem
    sb      s1,103(sp)
    sw      s2,96(sp)
    sb      s3,102(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,104(sp)
    lw      a0,96(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      jump label: L7_0 
    j       .L7_0
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_21_59:i32 
                    #      temp_21_59 =  Call i32 set_d_0(4_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 4
                    #arg load ended
    call    set_d
    sw      a0,92(sp)
                    #      new_var temp_22_59:i1 
                    #      temp_22_59 = icmp i32 Ne temp_21_59, 0_0 
    li      a1, 0
    xor     s1,a0,a1
    snez    s1, s1
                    #      new_var temp_23_59:i1 
                    #      temp_23_59 = Or i1 temp_22_59, true_0 
    li      s2, 1
    or      s3,s1,s2
                    #      br i1 temp_23_59, label branch_true_60, label branch_false_60 
    bnez    s4, .branch_true_60
    j       .branch_false_60
                    #      label branch_false_60: 
.branch_false_60:
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_24_33:i32 
                    #      temp_24_33 = load *d_0:ptr->i32 
                    #   load label d as ptr to reg
    la      a1, d
                    #occupy reg a1 with *d_0
    lw      s2,0(a1)
                    #       Call void putint_0(temp_24_33) 
                    #saved register dumping to mem
    sb      s1,91(sp)
    sw      s2,84(sp)
    sb      s4,90(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,92(sp)
    lw      a0,84(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: L9_0 
    j       .L9_0
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_25_64:i1 
                    #      temp_25_64 = icmp i32 Sge 16_0, 0_0 
    li      a0, 16
    li      a1, 0
    slt     s1,a0,a1
    xori    s1,s1,1
                    #      br i1 temp_25_64, label branch_true_65, label branch_false_65 
    bnez    s1, .branch_true_65
    j       .branch_false_65
                    #      label branch_true_65: 
.branch_true_65:
                    #       Call void putch_0(65_0) 
                    #saved register dumping to mem
    sb      s1,83(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 65
                    #arg load ended
    call    putch
                    #      jump label: branch_false_65 
    lb      s1,83(sp)
    j       .branch_false_65
                    #      label branch_false_65: 
.branch_false_65:
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_26_68:i1 
                    #      temp_26_68 = icmp i32 Ne 18_0, 18_0 
    li      a0, 18
    li      a1, 18
    xor     s2,a0,a1
    snez    s2, s2
                    #      br i1 temp_26_68, label branch_true_69, label branch_false_69 
    bnez    s2, .branch_true_69
    j       .branch_false_69
                    #      label branch_true_69: 
.branch_true_69:
                    #       Call void putch_0(66_0) 
                    #saved register dumping to mem
    sb      s1,83(sp)
    sb      s2,82(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 66
                    #arg load ended
    call    putch
                    #      jump label: branch_false_69 
    lb      s2,82(sp)
    lb      s1,83(sp)
    j       .branch_false_69
                    #      label branch_false_69: 
.branch_false_69:
                    #      label L11_0: 
.L11_0:
                    #      new_var temp_27_71:i32 
                    #      temp_27_71 = zext i1 true_0 to i32 
    li      a0, 1
    andi    a1,a0,1
                    #      new_var temp_28_71:i1 
                    #      temp_28_71 = icmp i32 Ne temp_27_71, 1_0 
    li      s4, 1
    xor     s5,s3,s4
    snez    s5, s5
                    #      br i1 temp_28_71, label branch_true_72, label branch_false_72 
    bnez    s5, .branch_true_72
    j       .branch_false_72
                    #      label branch_true_72: 
.branch_true_72:
                    #       Call void putch_0(67_0) 
                    #saved register dumping to mem
    sb      s1,83(sp)
    sb      s2,82(sp)
    sw      s3,76(sp)
    sb      s5,75(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 67
                    #arg load ended
    call    putch
                    #      jump label: branch_false_72 
    lb      s5,75(sp)
    lw      s3,76(sp)
    lb      s2,82(sp)
    lb      s1,83(sp)
    j       .branch_false_72
                    #      label branch_false_72: 
.branch_false_72:
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_29_75:i32 
                    #      temp_29_75 = zext i1 false_0 to i32 
    li      a0, 0
    andi    a1,a0,1
                    #      new_var temp_30_75:i1 
                    #      temp_30_75 = icmp i32 Eq 0_0, temp_29_75 
    li      s4, 0
    xor     s7,s4,s6
    seqz    s7, s7
                    #      br i1 temp_30_75, label branch_true_76, label branch_false_76 
    bnez    s7, .branch_true_76
    j       .branch_false_76
                    #      label branch_true_76: 
.branch_true_76:
                    #       Call void putch_0(68_0) 
                    #saved register dumping to mem
    sb      s1,83(sp)
    sb      s2,82(sp)
    sw      s3,76(sp)
    sb      s5,75(sp)
    sw      s6,68(sp)
    sb      s7,67(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 68
                    #arg load ended
    call    putch
                    #      jump label: branch_false_76 
    lb      s5,75(sp)
    lw      s3,76(sp)
    lw      s6,68(sp)
    lb      s2,82(sp)
    lb      s1,83(sp)
    lb      s7,67(sp)
    j       .branch_false_76
                    #      label branch_false_76: 
.branch_false_76:
                    #      label L13_0: 
.L13_0:
                    #      new_var temp_31_79:i1 
                    #      temp_31_79 = icmp i32 Sle 0x66_0, 077_0 
    li      a0, 0x66
    li      a1, 077
    slt     s4,a1,a0
    xori    s4,s4,1
                    #      new_var temp_32_79:i32 
                    #      temp_32_79 = zext i1 temp_31_79 to i32 
                    #      new_var temp_33_79:i1 
                    #      temp_33_79 = icmp i32 Eq 1_0, temp_32_79 
    li      s8, 1
    xor     s10,s8,s9
    seqz    s10, s10
                    #      br i1 temp_33_79, label branch_true_80, label branch_false_80 
    bnez    s10, .branch_true_80
    j       .branch_false_80
                    #      label branch_true_80: 
.branch_true_80:
                    #       Call void putch_0(69_0) 
                    #saved register dumping to mem
    sb      s1,83(sp)
    sb      s2,82(sp)
    sw      s3,76(sp)
    sb      s4,66(sp)
    sb      s5,75(sp)
    sw      s6,68(sp)
    sb      s7,67(sp)
    sw      s9,60(sp)
    sb      s10,59(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 69
                    #arg load ended
    call    putch
                    #      jump label: branch_false_80 
    lb      s4,66(sp)
    lb      s5,75(sp)
    lw      s3,76(sp)
    lw      s6,68(sp)
    lb      s2,82(sp)
    lb      s1,83(sp)
    lb      s7,67(sp)
    lb      s10,59(sp)
    lw      s9,60(sp)
    j       .branch_false_80
                    #      label branch_false_80: 
.branch_false_80:
                    #      label L14_0: 
.L14_0:
                    #      new_var temp_34_82:i1 
                    #      temp_34_82 = icmp i32 Eq -1_0, 1_0 
    li      a0, -1
    li      a1, 1
    xor     s8,a0,a1
    seqz    s8, s8
                    #      br i1 temp_34_82, label branch_true_83, label branch_false_83 
    bnez    s8, .branch_true_83
    j       .branch_false_83
                    #      label branch_true_83: 
.branch_true_83:
                    #       Call void putch_0(70_0) 
                    #saved register dumping to mem
    sb      s1,83(sp)
    sb      s2,82(sp)
    sw      s3,76(sp)
    sb      s4,66(sp)
    sb      s5,75(sp)
    sw      s6,68(sp)
    sb      s7,67(sp)
    sb      s8,58(sp)
    sw      s9,60(sp)
    sb      s10,59(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 70
                    #arg load ended
    call    putch
                    #      jump label: branch_false_83 
    lb      s8,58(sp)
    lb      s4,66(sp)
    lb      s5,75(sp)
    lw      s3,76(sp)
    lw      s6,68(sp)
    lb      s2,82(sp)
    lb      s1,83(sp)
    lb      s7,67(sp)
    lb      s10,59(sp)
    lw      s9,60(sp)
    j       .branch_false_83
                    #      label branch_false_83: 
.branch_false_83:
                    #      label L15_0: 
.L15_0:
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
    sb      s1,83(sp)
    sb      s2,82(sp)
    sw      s3,76(sp)
    sb      s4,66(sp)
    sb      s5,75(sp)
    sw      s6,68(sp)
    sb      s7,67(sp)
    sb      s8,58(sp)
    sw      s9,60(sp)
    sb      s10,59(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      i0_33 = i32 0_0 
    li      a0, 0
                    #      i1_33 = i32 1_0 
    li      a1, 1
                    #      i2_33 = i32 2_0 
    li      s1, 2
                    #      i3_33 = i32 3_0 
    li      s2, 3
                    #      i4_33 = i32 4_0 
    li      s3, 4
                    #      jump label: while.head_88 
    j       .while.head_88
                    #      label while.head_88: 
.while.head_88:
                    #      new_var temp_35_87:i1 
                    #      temp_35_87 = icmp i32 Ne i0_33, 0_0 
    li      s4, 0
    xor     s5,a0,s4
    snez    s5, s5
                    #      new_var temp_36_87:i1 
                    #      temp_35_87 = icmp i32 Ne i1_33, 0_0 
                    #found literal reg Some(s4) already exist with 0_0
                    #      new_var temp_37_87:i1 
                    #      temp_37_87 = And i1 temp_35_87, temp_36_87 
    and     s7,s5,s6
                    #      br i1 temp_37_87, label while.body_88, label while.exit_88 
    bnez    s7, .while.body_88
    j       .while.exit_88
                    #      label while.body_88: 
.while.body_88:
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
    sw      s1,44(sp)
    sw      s2,40(sp)
    sw      s3,36(sp)
    sb      s5,35(sp)
    sb      s6,34(sp)
    sb      s7,33(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,52(sp)
    li      a0, 32
                    #arg load ended
    call    putch
                    #      jump label: while.head_88 
    lw      a0,52(sp)
    lw      s3,36(sp)
    lw      s2,40(sp)
    lw      s1,44(sp)
    j       .while.head_88
                    #      label while.exit_88: 
.while.exit_88:
                    #      new_var temp_38_90:i1 
                    #      temp_38_90 = icmp i32 Ne i0_33, 0_0 
    li      s4, 0
    xor     s8,a0,s4
    snez    s8, s8
                    #      new_var temp_39_90:i1 
                    #      temp_38_90 = icmp i32 Ne i1_33, 0_0 
                    #found literal reg Some(s4) already exist with 0_0
                    #      new_var temp_40_90:i1 
                    #      temp_40_90 = Or i1 temp_38_90, temp_39_90 
                    #      br i1 temp_40_90, label branch_true_91, label branch_false_91 
    bnez    s10, .branch_true_91
    j       .branch_false_91
                    #      label branch_true_91: 
.branch_true_91:
                    #       Call void putch_0(67_0) 
                    #saved register dumping to mem
    sw      s1,44(sp)
    sw      s2,40(sp)
    sw      s3,36(sp)
    sb      s5,35(sp)
    sb      s6,34(sp)
    sb      s7,33(sp)
    sb      s8,32(sp)
    sb      s9,31(sp)
    sb      s10,30(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,52(sp)
    li      a0, 67
                    #arg load ended
    call    putch
                    #      jump label: branch_false_91 
    lw      a0,52(sp)
    lb      s8,32(sp)
    lb      s5,35(sp)
    lw      s3,36(sp)
    lb      s6,34(sp)
    lw      s2,40(sp)
    lw      s1,44(sp)
    lb      s7,33(sp)
    lb      s10,30(sp)
    lb      s9,31(sp)
    j       .branch_false_91
                    #      label branch_false_91: 
.branch_false_91:
                    #      label L16_0: 
.L16_0:
                    #      new_var temp_41_93:i1 
                    #      temp_41_93 = icmp i32 Sle i1_33, i0_33 
    slt     s4,a0,a1
    xori    s4,s4,1
                    #      new_var temp_42_93:i1 
                    #      temp_42_93 = icmp i32 Sge i0_33, i1_33 
    slt     s11,a0,a1
    xori    s11,s11,1
                    #      new_var temp_43_93:i1 
                    #      temp_43_93 = Or i1 temp_42_93, temp_41_93 
                    #      br i1 temp_43_93, label branch_true_94, label branch_false_94 
    sw      a0,52(sp)
    bnez    a0, .branch_true_94
    j       .branch_false_94
                    #      label branch_true_94: 
.branch_true_94:
                    #       Call void putch_0(72_0) 
                    #saved register dumping to mem
    sw      s1,44(sp)
    sw      s2,40(sp)
    sw      s3,36(sp)
    sb      s4,29(sp)
    sb      s5,35(sp)
    sb      s6,34(sp)
    sb      s7,33(sp)
    sb      s8,32(sp)
    sb      s9,31(sp)
    sb      s10,30(sp)
    sb      s11,28(sp)
                    #saved register dumped to mem
                    #arg load start
    sb      a0,27(sp)
    li      a0, 72
                    #arg load ended
    call    putch
                    #      jump label: branch_false_94 
    lb      a0,27(sp)
    lb      s8,32(sp)
    lb      s4,29(sp)
    lb      s5,35(sp)
    lw      s3,36(sp)
    lb      s6,34(sp)
    lw      s2,40(sp)
    lw      s1,44(sp)
    lb      s7,33(sp)
    lb      s10,30(sp)
    lb      s9,31(sp)
    lb      s11,28(sp)
    j       .branch_false_94
                    #      label branch_false_94: 
.branch_false_94:
                    #      label L17_0: 
.L17_0:
                    #      new_var temp_44_96:i1 
                    #      temp_44_96 = icmp i32 Ne i4_33, i3_33 
    sb      a0,27(sp)
    xor     a0,s3,s2
    snez    a0, a0
                    #      new_var temp_45_96:i1 
                    #      temp_45_96 = icmp i32 Sge i2_33, i1_33 
    sb      a0,26(sp)
    slt     a0,s1,a1
    xori    a0,a0,1
                    #      new_var temp_46_96:i1 
                    #      temp_46_96 = And i1 temp_45_96, temp_44_96 
    sw      a1,48(sp)
    sb      a2,143(sp)
    and     a2,a0,a1
                    #      br i1 temp_46_96, label branch_true_97, label branch_false_97 
    bnez    a2, .branch_true_97
    j       .branch_false_97
                    #      label branch_true_97: 
.branch_true_97:
                    #       Call void putch_0(73_0) 
                    #saved register dumping to mem
    sw      s1,44(sp)
    sw      s2,40(sp)
    sw      s3,36(sp)
    sb      s4,29(sp)
    sb      s5,35(sp)
    sb      s6,34(sp)
    sb      s7,33(sp)
    sb      s8,32(sp)
    sb      s9,31(sp)
    sb      s10,30(sp)
    sb      s11,28(sp)
                    #saved register dumped to mem
                    #arg load start
    sb      a0,25(sp)
    li      a0, 73
                    #arg load ended
    call    putch
                    #      jump label: branch_false_97 
    lb      a0,25(sp)
    lb      s8,32(sp)
    lb      s4,29(sp)
    lb      s5,35(sp)
    lw      s3,36(sp)
    lb      s6,34(sp)
    lw      s2,40(sp)
    lw      s1,44(sp)
    lb      s7,33(sp)
    lb      s10,30(sp)
    lb      s9,31(sp)
    lb      s11,28(sp)
    j       .branch_false_97
                    #      label branch_false_97: 
.branch_false_97:
                    #      label L18_0: 
.L18_0:
                    #      new_var temp_47_100:i1 
                    #      temp_47_100 = icmp i32 Sge i4_33, i4_33 
    sb      a0,25(sp)
    slt     a0,s3,s3
    xori    a0,a0,1
                    #      new_var temp_48_100:i1 
                    #      temp_48_100 = icmp i32 Slt i3_33, i3_33 
    sb      a0,23(sp)
    slt     a0,s2,s2
                    #      new_var temp_49_100:i1 
                    #      temp_49_100 = icmp i1 Ne i1_33, 0_0 
    sb      a0,22(sp)
    sb      a1,26(sp)
    li      a1, 0
    sb      a2,24(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      new_var temp_50_100:i1 
                    #      temp_50_100 = xor i1 temp_49_100, true 
    seqz    a1, a2
                    #      new_var temp_51_100:i32 
                    #      temp_51_100 = zext i1 temp_50_100 to i32 
                    #      new_var temp_52_100:i1 
                    #      temp_52_100 = icmp i32 Eq i0_33, temp_51_100 
    sw      a0,48(sp)
    sb      a1,20(sp)
    sb      a2,21(sp)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_53_100:i1 
                    #      temp_53_100 = And i1 temp_52_100, temp_48_100 
    sw      a0,52(sp)
    sw      a1,16(sp)
    and     a1,a2,a0
                    #      new_var temp_54_100:i1 
                    #      temp_54_100 = Or i1 temp_53_100, temp_47_100 
    sb      a0,22(sp)
                    #      br i1 temp_54_100, label branch_true_101, label branch_false_101 
    sb      a0,23(sp)
    bnez    a0, .branch_true_101
    j       .branch_false_101
                    #      label branch_true_101: 
.branch_true_101:
                    #       Call void putch_0(74_0) 
                    #saved register dumping to mem
    sw      s1,44(sp)
    sw      s2,40(sp)
    sw      s3,36(sp)
    sb      s4,29(sp)
    sb      s5,35(sp)
    sb      s6,34(sp)
    sb      s7,33(sp)
    sb      s8,32(sp)
    sb      s9,31(sp)
    sb      s10,30(sp)
    sb      s11,28(sp)
                    #saved register dumped to mem
                    #arg load start
    sb      a0,13(sp)
    li      a0, 74
                    #arg load ended
    call    putch
                    #      jump label: branch_false_101 
    lb      a0,13(sp)
    lb      s8,32(sp)
    lb      s4,29(sp)
    lb      s5,35(sp)
    lw      s3,36(sp)
    lb      s6,34(sp)
    lw      s2,40(sp)
    lw      s1,44(sp)
    lb      s7,33(sp)
    lb      s10,30(sp)
    lb      s9,31(sp)
    lb      s11,28(sp)
    j       .branch_false_101
                    #      label branch_false_101: 
.branch_false_101:
                    #      label L19_0: 
.L19_0:
                    #      new_var temp_55_104:i1 
                    #      temp_55_104 = icmp i32 Sge i4_33, i4_33 
    sb      a0,13(sp)
    slt     a0,s3,s3
    xori    a0,a0,1
                    #      new_var temp_56_104:i1 
                    #      temp_56_104 = icmp i32 Slt i3_33, i3_33 
    sb      a0,12(sp)
    slt     a0,s2,s2
                    #      new_var temp_57_104:i1 
                    #      temp_57_104 = And i1 temp_56_104, temp_55_104 
    sb      a1,14(sp)
    sb      a2,15(sp)
    and     a2,a0,a1
                    #      new_var temp_58_104:i1 
                    #      temp_58_104 = icmp i1 Ne i1_33, 0_0 
    sb      a0,11(sp)
    sb      a1,12(sp)
    li      a1, 0
    sb      a2,10(sp)
    xor     a2,a0,a1
    snez    a2, a2
                    #      new_var temp_59_104:i1 
                    #      temp_59_104 = xor i1 temp_58_104, true 
    seqz    a1, a2
                    #      new_var temp_60_104:i32 
                    #      temp_60_104 = zext i1 temp_59_104 to i32 
                    #      new_var temp_61_104:i1 
                    #      temp_61_104 = icmp i32 Eq i0_33, temp_60_104 
    sw      a0,48(sp)
    sb      a1,8(sp)
    sb      a2,9(sp)
    xor     a2,a0,a1
    seqz    a2, a2
                    #      new_var temp_62_104:i1 
                    #      temp_62_104 = Or i1 temp_61_104, temp_57_104 
    sw      a0,52(sp)
                    #      br i1 temp_62_104, label branch_true_105, label branch_false_105 
    sb      a0,10(sp)
    bnez    a0, .branch_true_105
    j       .branch_false_105
                    #      label branch_true_105: 
.branch_true_105:
                    #       Call void putch_0(75_0) 
                    #saved register dumping to mem
    sw      s1,44(sp)
    sw      s2,40(sp)
    sw      s3,36(sp)
    sb      s4,29(sp)
    sb      s5,35(sp)
    sb      s6,34(sp)
    sb      s7,33(sp)
    sb      s8,32(sp)
    sb      s9,31(sp)
    sb      s10,30(sp)
    sb      s11,28(sp)
                    #saved register dumped to mem
                    #arg load start
    sb      a0,2(sp)
    li      a0, 75
                    #arg load ended
    call    putch
                    #      jump label: branch_false_105 
    lb      a0,2(sp)
    lb      s8,32(sp)
    lb      s4,29(sp)
    lb      s5,35(sp)
    lw      s3,36(sp)
    lb      s6,34(sp)
    lw      s2,40(sp)
    lw      s1,44(sp)
    lb      s7,33(sp)
    lb      s10,30(sp)
    lb      s9,31(sp)
    lb      s11,28(sp)
    j       .branch_false_105
                    #      label branch_false_105: 
.branch_false_105:
                    #      label L20_0: 
.L20_0:
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
    sw      s1,44(sp)
    sw      s2,40(sp)
    sw      s3,36(sp)
    sb      s4,29(sp)
    sb      s5,35(sp)
    sb      s6,34(sp)
    sb      s7,33(sp)
    sb      s8,32(sp)
    sb      s9,31(sp)
    sb      s10,30(sp)
    sb      s11,28(sp)
                    #saved register dumped to mem
                    #arg load start
    sb      a0,2(sp)
    li      a0, 10
                    #arg load ended
    call    putch
                    #      ret 0_0 
    ld      ra,160(sp)
    ld      s0,152(sp)
    li      a0, 0
    addi    sp,sp,168
    ret
.section        .data
    .align 4
    .globl d
                    #      global i32 d_0 
    .type d,@object
d:
    .word 0
    .align 4
    .globl b
                    #      global i32 b_0 
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
                    #      global i32 a_0 
    .type a,@object
a:
    .word 0
