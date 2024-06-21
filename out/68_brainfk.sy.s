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
                    #      Define read_program_0 [] -> read_program_ret_0 
    .globl read_program
    .type read_program,@function
read_program:
                    #mem layout:|ra_read_program:8|s0_read_program:8|i:4|temp_0:4|len:4|temp_1:1|none:3|temp_2:8|temp_3:4|temp_4:4|temp_5:8
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      alloc i32 i_19 
                    #      alloc i32 temp_0_19 
                    #      alloc i32 len_19 
                    #      alloc i1 temp_1_21 
                    #      alloc ptr->i32 temp_2_23 
                    #      alloc i32 temp_3_23 
                    #      alloc i32 temp_4_23 
                    #      alloc ptr->i32 temp_5_19 
                    #      label L12_0: 
.L12_0:
                    #      i_19 = i32 0_0 
    li      a0, 0
                    #      new_var temp_0_19:i32 
                    #      temp_0_19 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,36(sp)
    sw      a0,32(sp)
                    #      len_19 = i32 temp_0_19 
    mv      a1, a0
                    #      jump label: while.head_22 
    j       .while.head_22
                    #      label while.head_22: 
.while.head_22:
                    #      new_var temp_1_21:i1 
                    #      temp_1_21 = icmp i32 Slt i_19, len_19 
    slt     a3,a2,a1
                    #      br i1 temp_1_21, label while.body_22, label while.exit_22 
    bnez    a3, .while.body_22
    j       .while.exit_22
                    #      label while.body_22: 
.while.body_22:
                    #      new_var temp_2_23:ptr->i32 
                    #      temp_2_23 = getelementptr program_0:Array:i32:[Some(32768_0)] [Some(i_19)] 
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a2
                    #occupy reg a6 with program_0
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,a4
                    #      new_var temp_3_23:i32 
                    #      temp_3_23 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,32(sp)
    sw      a0,12(sp)
                    #      store temp_3_23:i32 temp_2_23:ptr->i32 
    sd      a0,0(a4)
                    #      mu program_0:50 
                    #      program_0 = chi program_0:50 
                    #      new_var temp_4_23:i32 
                    #      temp_4_23 = Add i32 i_19, 1_0 
                    #found literal reg Some(a5) already exist with 1_0
    add     a7,a2,a5
                    #      i_19 = i32 temp_4_23 
    mv      a2, a7
                    #      jump label: while.head_22 
    sb      a3,27(sp)
    sw      a0,12(sp)
    lw      a0,32(sp)
    sw      a7,8(sp)
    sd      a4,16(sp)
    sw      a2,36(sp)
    j       .while.head_22
                    #      label while.exit_22: 
.while.exit_22:
                    #      new_var temp_5_19:ptr->i32 
                    #      temp_5_19 = getelementptr program_0:Array:i32:[Some(32768_0)] [Some(i_19)] 
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a2
                    #occupy reg a6 with program_0
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,a4
                    #      store 0_0:i32 temp_5_19:ptr->i32 
    li      a7, 0
    sd      a7,0(a4)
                    #      mu program_0:60 
                    #      program_0 = chi program_0:60 
                    #      Define interpret_0 [input_27] -> interpret_ret_0 
    .globl interpret
    .type interpret,@function
interpret:
                    #mem layout:|ra_interpret:8|s0_interpret:8|input:8|cur_char:4|loop:4|i:4|none:4|temp_6:8|temp_7:4|temp_8:1|none:3|temp_9:8|temp_10:4|temp_11:1|none:3|temp_12:4|temp_13:4|temp_14:4|temp_15:1|none:3|temp_16:4|temp_17:4|temp_18:1|none:3|temp_19:4|temp_20:8|temp_21:4|temp_22:262144|none:4|temp_23:8|temp_24:4|temp_25:4|temp_26:1|none:3|temp_27:4|temp_28:8|temp_29:4|temp_30:262144|none:4|temp_31:8|temp_32:4|temp_33:4|temp_34:1|none:3|temp_35:4|temp_36:262144|temp_37:8|temp_38:4|temp_39:1|none:3|temp_40:4|none:4|temp_41:8|temp_42:4|temp_43:4|temp_44:262144|temp_45:8|temp_46:4|temp_47:1|temp_48:1|temp_49:1|temp_50:1|temp_51:4|none:4|temp_52:8|temp_53:4|temp_54:1|none:3|temp_55:4|temp_56:1|none:3|temp_57:4|none:4
    li      a1, -1048856
    li      a1, -1048856
    add     sp,a1,sp
    li      a2, 1048848
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 1048840
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 1048856
    li      a4, 1048856
    add     s0,a4,sp
                    #      new_var input_27:ptr->i32 
                    #      alloc i32 cur_char_29 
                    #      alloc i32 loop_29 
                    #      alloc i32 i_29 
                    #      alloc ptr->i32 temp_6_31 
                    #      alloc i32 temp_7_31 
                    #      alloc i1 temp_8_470 
                    #      alloc ptr->i32 temp_9_33 
                    #      alloc i32 temp_10_33 
                    #      alloc i1 temp_11_35 
                    #      alloc i32 temp_12_37 
                    #      alloc i32 temp_13_37 
                    #      alloc i32 temp_14_33 
                    #      alloc i1 temp_15_39 
                    #      alloc i32 temp_16_41 
                    #      alloc i32 temp_17_41 
                    #      alloc i1 temp_18_43 
                    #      alloc i32 temp_19_45 
                    #      alloc ptr->i32 temp_20_45 
                    #      alloc i32 temp_21_45 
                    #      alloc Array:i32:[Some(65536_0)] temp_22_45 
                    #      alloc ptr->i32 temp_23_45 
                    #      alloc i32 temp_24_45 
                    #      alloc i32 temp_25_45 
                    #      alloc i1 temp_26_47 
                    #      alloc i32 temp_27_49 
                    #      alloc ptr->i32 temp_28_49 
                    #      alloc i32 temp_29_49 
                    #      alloc Array:i32:[Some(65536_0)] temp_30_49 
                    #      alloc ptr->i32 temp_31_49 
                    #      alloc i32 temp_32_49 
                    #      alloc i32 temp_33_49 
                    #      alloc i1 temp_34_51 
                    #      alloc i32 temp_35_53 
                    #      alloc Array:i32:[Some(65536_0)] temp_36_53 
                    #      alloc ptr->i32 temp_37_53 
                    #      alloc i32 temp_38_53 
                    #      alloc i1 temp_39_55 
                    #      alloc i32 temp_40_57 
                    #      alloc ptr->i32 temp_41_57 
                    #      alloc i32 temp_42_57 
                    #      alloc i32 temp_43_59 
                    #      alloc Array:i32:[Some(65536_0)] temp_44_59 
                    #      alloc ptr->i32 temp_45_59 
                    #      alloc i32 temp_46_59 
                    #      alloc i1 temp_47_59 
                    #      alloc i1 temp_48_59 
                    #      alloc i1 temp_49_59 
                    #      alloc i1 temp_50_63 
                    #      alloc i32 temp_51_65 
                    #      alloc ptr->i32 temp_52_65 
                    #      alloc i32 temp_53_65 
                    #      alloc i1 temp_54_68 
                    #      alloc i32 temp_55_70 
                    #      alloc i1 temp_56_72 
                    #      alloc i32 temp_57_74 
                    #      label L1_0: 
.L1_0:
                    #      new_var cur_char_29:i32 
                    #      new_var loop_29:i32 
                    #      i_29 = i32 0_0 
    li      a5, 0
                    #      jump label: while.head_32 
    j       .while.head_32
                    #      label while.head_32: 
.while.head_32:
                    #      new_var temp_6_31:ptr->i32 
                    #      new_var temp_7_31:i32 
                    #      temp_6_31 = getelementptr input_27:ptr->i32 [Some(i_29)] 
    li      a1, 0
    li      a2, 1
    add     a1,a1,a0
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_7_31 = load temp_6_31:ptr->i32 
    lw      a3,0(a1)
                    #      new_var temp_8_470:i1 
                    #      temp_8_470 = icmp i32 Ne temp_7_31, 0_0 
    li      a4, 0
    xor     a6,a3,a4
    snez    a6, a6
                    #      br i1 temp_8_470, label while.body_32, label while.exit_32 
    bnez    a6, .while.body_32
    j       .while.exit_32
                    #      label while.body_32: 
.while.body_32:
                    #      new_var temp_9_33:ptr->i32 
                    #      new_var temp_10_33:i32 
                    #      temp_9_33 = getelementptr input_27:ptr->i32 [Some(i_29)] 
    li      a2, 0
    li      a4, 1
    add     a2,a2,a0
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      temp_10_33 = load temp_9_33:ptr->i32 
    lw      a7,0(a2)
                    #      cur_char_29 = i32 temp_10_33 
    mv      s1, a7
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_11_35:i1 
                    #      temp_11_35 = icmp i32 Eq cur_char_29, 62_0 
    li      a4, 62
    xor     s2,s1,a4
    seqz    s2, s2
                    #      br i1 temp_11_35, label branch_true_36, label branch_false_36 
    bnez    s2, .branch_true_36
    j       .branch_false_36
                    #      label branch_true_36: 
.branch_true_36:
                    #      new_var temp_12_37:i32 
                    #      temp_12_37 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a4, ptr
                    #occupy reg a4 with *ptr_0
    lw      s3,0(a4)
                    #      new_var temp_13_37:i32 
                    #      temp_13_37 = Add i32 temp_12_37, 1_0 
    li      s4, 1
    add     s5,s3,s4
                    #      store temp_13_37:i32 *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      s6, ptr
                    #occupy reg s6 with *ptr_0
    sd      s5,0(s6)
                    #      jump label: L10_0 
    j       .L10_0
                    #      label branch_false_36: 
.branch_false_36:
                    #      new_var temp_15_39:i1 
                    #      temp_15_39 = icmp i32 Eq cur_char_29, 60_0 
    li      a4, 60
    xor     s3,s1,a4
    seqz    s3, s3
                    #      br i1 temp_15_39, label branch_true_40, label branch_false_40 
    bnez    s3, .branch_true_40
    j       .branch_false_40
                    #      label branch_true_40: 
.branch_true_40:
                    #      new_var temp_16_41:i32 
                    #      temp_16_41 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a4, ptr
                    #occupy reg a4 with *ptr_0
    lw      s4,0(a4)
                    #      new_var temp_17_41:i32 
                    #      temp_17_41 = Sub i32 temp_16_41, 1_0 
    li      s5, 1
    sub     s6,s4,s5
                    #      store temp_17_41:i32 *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      s7, ptr
                    #occupy reg s7 with *ptr_0
    sd      s6,0(s7)
                    #      jump label: L9_0 
    j       .L9_0
                    #      label branch_false_40: 
.branch_false_40:
                    #      new_var temp_18_43:i1 
                    #      temp_18_43 = icmp i32 Eq cur_char_29, 43_0 
    li      a4, 43
    xor     s4,s1,a4
    seqz    s4, s4
                    #      br i1 temp_18_43, label branch_true_44, label branch_false_44 
    bnez    s4, .branch_true_44
    j       .branch_false_44
                    #      label branch_true_44: 
.branch_true_44:
                    #      new_var temp_19_45:i32 
                    #      temp_19_45 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a4, ptr
                    #occupy reg a4 with *ptr_0
    lw      s5,0(a4)
                    #      new_var temp_20_45:ptr->i32 
                    #      temp_20_45 = getelementptr tape_0:Array:i32:[Some(65536_0)] [Some(temp_19_45)] 
    li      s6, 0
    li      s7, 1
    mul     s8,s7,s5
                    #occupy reg s8 with tape_0
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,s6
                    #      new_var temp_21_45:i32 
                    #      temp_21_45 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      s9, ptr
                    #occupy reg s9 with *ptr_0
    lw      s10,0(s9)
                    #      new_var temp_22_45:Array:i32:[Some(65536_0)] 
                    #      temp_22_45 = load *tape_0:ptr->i32 
                    #   load label tape as ptr to reg
    la      s11, tape
                    #occupy reg s11 with *tape_0
    lw      a4,0(s11)
                    #      new_var temp_23_45:ptr->i32 
                    #      new_var temp_24_45:i32 
                    #      temp_23_45 = getelementptr temp_22_45:Array:i32:[Some(65536_0)] [Some(temp_21_45)] 
    li      s7, 0
    li      s8, 1
    add     s7,s7,a4
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_24_45 = load temp_23_45:ptr->i32 
    lw      s8,0(s7)
                    #      new_var temp_25_45:i32 
                    #      temp_25_45 = Add i32 temp_24_45, 1_0 
    li      s9, 1
    add     s11,s8,s9
                    #      store temp_25_45:i32 temp_20_45:ptr->i32 
    sd      s11,0(s6)
                    #      mu tape_0:147 
                    #      tape_0 = chi tape_0:147 
                    #      jump label: L8_0 
    j       .L8_0
                    #      label branch_false_44: 
.branch_false_44:
                    #      new_var temp_26_47:i1 
                    #      temp_26_47 = icmp i32 Eq cur_char_29, 45_0 
    li      a4, 45
    xor     s5,s1,a4
    seqz    s5, s5
                    #      br i1 temp_26_47, label branch_true_48, label branch_false_48 
    bnez    s5, .branch_true_48
    j       .branch_false_48
                    #      label branch_true_48: 
.branch_true_48:
                    #      new_var temp_27_49:i32 
                    #      temp_27_49 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a4, ptr
                    #occupy reg a4 with *ptr_0
    lw      s6,0(a4)
                    #      new_var temp_28_49:ptr->i32 
                    #      temp_28_49 = getelementptr tape_0:Array:i32:[Some(65536_0)] [Some(temp_27_49)] 
    li      s7, 0
    li      s8, 1
    mul     s9,s8,s6
                    #occupy reg s9 with tape_0
    add     s7,s7,s9
    slli s7,s7,2
    add     s7,s7,s7
                    #      new_var temp_29_49:i32 
                    #      temp_29_49 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      s10, ptr
                    #occupy reg s10 with *ptr_0
    lw      s11,0(s10)
                    #      new_var temp_30_49:Array:i32:[Some(65536_0)] 
                    #      temp_30_49 = load *tape_0:ptr->i32 
                    #   load label tape as ptr to reg
    la      a4, tape
                    #occupy reg a4 with *tape_0
    lw      s8,0(a4)
                    #      new_var temp_31_49:ptr->i32 
                    #      new_var temp_32_49:i32 
                    #      temp_31_49 = getelementptr temp_30_49:Array:i32:[Some(65536_0)] [Some(temp_29_49)] 
    li      a4, 0
    li      s9, 1
    add     a4,a4,s8
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_32_49 = load temp_31_49:ptr->i32 
    lw      s9,0(a4)
                    #      new_var temp_33_49:i32 
                    #      temp_33_49 = Sub i32 temp_32_49, 1_0 
    li      s10, 1
    li      a0, 1048832
    add     a0,sp,a0
    sd      a0,0(a0)
    sub     a0,s9,s10
                    #      store temp_33_49:i32 temp_28_49:ptr->i32 
    sd      a0,0(s7)
                    #      mu tape_0:177 
                    #      tape_0 = chi tape_0:177 
                    #      jump label: L7_0 
    j       .L7_0
                    #      label branch_false_48: 
.branch_false_48:
                    #      new_var temp_34_51:i1 
                    #      temp_34_51 = icmp i32 Eq cur_char_29, 46_0 
    li      a4, 46
    xor     s6,s1,a4
    seqz    s6, s6
                    #      br i1 temp_34_51, label branch_true_52, label branch_false_52 
    bnez    s6, .branch_true_52
    j       .branch_false_52
                    #      label branch_true_52: 
.branch_true_52:
                    #      new_var temp_35_53:i32 
                    #      temp_35_53 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a4, ptr
                    #occupy reg a4 with *ptr_0
    lw      s7,0(a4)
                    #      new_var temp_36_53:Array:i32:[Some(65536_0)] 
                    #      temp_36_53 = load *tape_0:ptr->i32 
                    #   load label tape as ptr to reg
    la      s8, tape
                    #occupy reg s8 with *tape_0
    lw      s9,0(s8)
                    #      new_var temp_37_53:ptr->i32 
                    #      new_var temp_38_53:i32 
                    #      temp_37_53 = getelementptr temp_36_53:Array:i32:[Some(65536_0)] [Some(temp_35_53)] 
    li      s10, 0
    li      s11, 1
    add     s10,s10,s9
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_38_53 = load temp_37_53:ptr->i32 
    lw      a4,0(s10)
                    #       Call void putch_0(temp_38_53) 
                    #saved register dumping to mem
    li      s1, 1048828
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1048787
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 1048771
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s4, 1048759
    add     s4,sp,s4
    sb      s4,0(s4)
    li      s5, 786575
    add     s5,sp,s5
    sb      s5,0(s5)
    li      s6, 524391
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 524384
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s8, 524380
    add     s8,sp,s8
    sw      s9,0(s8)
    li      s9, 262232
    add     s9,sp,s9
    sd      s10,0(s9)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 1048832
    add     a0,sp,a0
    sd      a0,0(a0)
    mv      a0, a4
                    #arg load ended
    call    putch
                    #      jump label: L6_0 
    j       .L6_0
                    #      label branch_false_52: 
.branch_false_52:
                    #      new_var temp_39_55:i1 
                    #      temp_39_55 = icmp i32 Eq cur_char_29, 44_0 
    li      a4, 44
    xor     s7,s1,a4
    seqz    s7, s7
                    #      br i1 temp_39_55, label branch_true_56, label branch_false_56 
    bnez    s7, .branch_true_56
    j       .branch_false_56
                    #      label branch_true_56: 
.branch_true_56:
                    #      new_var temp_40_57:i32 
                    #      temp_40_57 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a4, ptr
                    #occupy reg a4 with *ptr_0
    lw      s8,0(a4)
                    #      new_var temp_41_57:ptr->i32 
                    #      temp_41_57 = getelementptr tape_0:Array:i32:[Some(65536_0)] [Some(temp_40_57)] 
    li      s9, 0
    li      s10, 1
    mul     s11,s10,s8
                    #occupy reg s11 with tape_0
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,s9
                    #      new_var temp_42_57:i32 
                    #      temp_42_57 =  Call i32 getch_0() 
                    #saved register dumping to mem
    li      s1, 1048828
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1048787
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 1048771
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s4, 1048759
    add     s4,sp,s4
    sb      s4,0(s4)
    li      s5, 786575
    add     s5,sp,s5
    sb      s5,0(s5)
    li      s6, 524391
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 262227
    add     s7,sp,s7
    sb      s7,0(s7)
    li      s8, 262220
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 262208
    add     s9,sp,s9
    sd      s9,0(s9)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    li      a0, 1048832
    add     a0,sp,a0
    sd      a0,0(a0)
    li      s10, 262204
    add     s10,sp,s10
    sw      a0,0(s10)
                    #      store temp_42_57:i32 temp_41_57:ptr->i32 
    sd      a0,0(s11)
                    #      mu tape_0:214 
                    #      tape_0 = chi tape_0:214 
                    #      jump label: L5_0 
    j       .L5_0
                    #      label branch_false_56: 
.branch_false_56:
                    #      new_var temp_43_59:i32 
                    #      temp_43_59 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a4, ptr
                    #occupy reg a4 with *ptr_0
    lw      s8,0(a4)
                    #      new_var temp_44_59:Array:i32:[Some(65536_0)] 
                    #      temp_44_59 = load *tape_0:ptr->i32 
                    #   load label tape as ptr to reg
    la      s9, tape
                    #occupy reg s9 with *tape_0
    lw      s10,0(s9)
                    #      new_var temp_45_59:ptr->i32 
                    #      new_var temp_46_59:i32 
                    #      temp_45_59 = getelementptr temp_44_59:Array:i32:[Some(65536_0)] [Some(temp_43_59)] 
    li      s11, 0
    li      a4, 1
    add     s11,s11,s10
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
                    #      temp_46_59 = load temp_45_59:ptr->i32 
    lw      a4,0(s11)
                    #      new_var temp_47_59:i1 
                    #      temp_47_59 = icmp i32 Eq cur_char_29, 93_0 
    li      s9, 93
    li      a0, 1048832
    add     a0,sp,a0
    sd      a0,0(a0)
    xor     a0,s1,s9
    seqz    a0, a0
                    #      new_var temp_48_59:i1 
                    #      temp_48_59 = icmp i32 Ne temp_46_59, 0_0 
    li      s9, 0
    sb      a0,43(sp)
    xor     a0,a4,s9
    snez    a0, a0
                    #      new_var temp_49_59:i1 
                    #      temp_49_59 = And i1 temp_47_59, temp_48_59 
    li      a1, 1048808
    add     a1,sp,a1
    sd      a1,0(a1)
    and     a1,s9,a0
                    #      br i1 temp_49_59, label branch_true_60, label branch_false_60 
    bnez    a1, .branch_true_60
    j       .branch_false_60
                    #      label branch_true_60: 
.branch_true_60:
                    #      loop_29 = i32 1_0 
    sb      a0,42(sp)
    li      a0, 1
                    #      jump label: while.head_64 
    j       .while.head_64
                    #      label while.head_64: 
.while.head_64:
                    #      new_var temp_50_63:i1 
                    #      temp_50_63 = icmp i32 Sgt loop_29, 0_0 
    sb      a1,41(sp)
    li      a1, 0
    li      a2, 1048792
    add     a2,sp,a2
    sd      a2,0(a2)
    slt     a2,a1,a0
                    #      br i1 temp_50_63, label while.body_64, label while.exit_64 
    bnez    a2, .while.body_64
    lb      a1,41(sp)
    sb      a2,40(sp)
    li      a0, 1048824
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1048792
    add     a0,sp,a0
    ld      a2,0(a0)
    li      a0, 1048792
    add     a0,sp,a0
    sd      a0,0(a0)
    lb      a0,42(sp)
    j       .while.exit_64
                    #      label while.body_64: 
.while.body_64:
                    #      new_var temp_51_65:i32 
                    #      temp_51_65 = Sub i32 i_29, 1_0 
    li      a1, 1
    li      a0, 1048824
    add     a0,sp,a0
    sw      a0,0(a0)
    sub     a0,a5,a1
                    #      i_29 = i32 temp_51_65 
    mv      a5, a0
                    #      new_var temp_52_65:ptr->i32 
                    #      new_var temp_53_65:i32 
                    #      temp_52_65 = getelementptr input_27:ptr->i32 [Some(i_29)] 
    li      a1, 0
    sw      a0,36(sp)
    li      a0, 1
    sb      a2,40(sp)
    mul     a2,a0,a5
    add     a1,a1,a2
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_53_65 = load temp_52_65:ptr->i32 
    lw      a0,0(a1)
                    #      cur_char_29 = i32 temp_53_65 
    mv      s1, a0
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_54_68:i1 
                    #      temp_54_68 = icmp i32 Eq cur_char_29, 91_0 
    sw      a0,20(sp)
    li      a0, 91
    sd      a1,24(sp)
    xor     a1,s1,a0
    seqz    a1, a1
                    #      br i1 temp_54_68, label branch_true_69, label branch_false_69 
    bnez    a1, .branch_true_69
    j       .branch_false_69
                    #      label branch_true_69: 
.branch_true_69:
                    #      new_var temp_55_70:i32 
                    #      temp_55_70 = Sub i32 loop_29, 1_0 
    sb      a1,19(sp)
    li      a1, 1
    li      a2, 1048832
    add     a2,sp,a2
    sd      a2,0(a2)
    sub     a2,a0,a1
                    #      loop_29 = i32 temp_55_70 
    mv      a0, a2
                    #      jump label: L4_0 
    j       .L4_0
                    #      label branch_false_69: 
.branch_false_69:
                    #      new_var temp_56_72:i1 
                    #      temp_56_72 = icmp i32 Eq cur_char_29, 93_0 
    li      a0, 93
    sb      a1,19(sp)
    xor     a1,s1,a0
    seqz    a1, a1
                    #      br i1 temp_56_72, label branch_true_73, label branch_false_73 
    bnez    a1, .branch_true_73
    j       .branch_false_73
                    #      label branch_true_73: 
.branch_true_73:
                    #      new_var temp_57_74:i32 
                    #      temp_57_74 = Add i32 loop_29, 1_0 
    sb      a1,11(sp)
    li      a1, 1
    li      a2, 1048832
    add     a2,sp,a2
    sd      a2,0(a2)
    add     a2,a0,a1
                    #      loop_29 = i32 temp_57_74 
    mv      a0, a2
                    #      jump label: branch_false_73 
    lb      a1,11(sp)
    sw      a2,4(sp)
    li      a0, 1048824
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1048832
    add     a0,sp,a0
    ld      a2,0(a0)
    li      a0, 1048832
    add     a0,sp,a0
    sd      a0,0(a0)
    j       .branch_false_73
                    #      label branch_false_73: 
.branch_false_73:
                    #      label L4_0: 
.L4_0:
                    #      jump label: while.head_64 
    lb      a1,41(sp)
    sw      a2,12(sp)
    li      a0, 1048824
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1048792
    add     a0,sp,a0
    ld      a2,0(a0)
    li      a0, 1048792
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a3, 1048804
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 1048824
    add     a3,sp,a3
    lw      a0,0(a3)
    li      a3, 1048824
    add     a3,sp,a3
    sw      a3,0(a3)
    sw      a4,44(sp)
    li      a4, 1048804
    add     a4,sp,a4
    lw      a3,0(a4)
    j       .while.head_64
                    #      label while.exit_64: 
.while.exit_64:
                    #      label L5_0: 
.L5_0:
                    #      label L6_0: 
.L6_0:
                    #      label L7_0: 
.L7_0:
                    #      label L8_0: 
.L8_0:
                    #      label L9_0: 
.L9_0:
                    #      label L10_0: 
.L10_0:
                    #      label L11_0: 
.L11_0:
                    #      new_var temp_14_33:i32 
                    #      temp_14_33 = Add i32 i_29, 1_0 
    li      a4, 1
    add     s4,a5,a4
                    #      i_29 = i32 temp_14_33 
    mv      a5, s4
                    #      jump label: while.head_32 
    li      s4, 1048772
    add     s4,sp,s4
    sw      s4,0(s4)
    li      a1, 1048808
    add     a1,sp,a1
    sd      a1,0(a1)
    li      a6, 1048803
    add     a6,sp,a6
    sb      a6,0(a6)
    li      a2, 1048792
    add     a2,sp,a2
    sd      a2,0(a2)
    li      s5, 1048776
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s2, 1048787
    add     s2,sp,s2
    sb      s2,0(s2)
    li      a7, 1048788
    add     a7,sp,a7
    sw      a7,0(a7)
    li      s3, 1048780
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a3, 1048804
    add     a3,sp,a3
    sw      a3,0(a3)
    li      s1, 1048828
    add     s1,sp,s1
    sw      s1,0(s1)
    j       .while.head_32
                    #      label while.exit_32: 
.while.exit_32:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_58:131072
    li      a0, -131088
    li      a0, -131088
    add     sp,a0,sp
    li      a1, 131080
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 131072
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 131088
    li      a3, 131088
    add     s0,a3,sp
                    #      alloc Array:i32:[Some(32768_0)] temp_58_78 
                    #      label L0_0: 
.L0_0:
                    #       Call void read_program_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    read_program
                    #      new_var temp_58_78:Array:i32:[Some(32768_0)] 
                    #      temp_58_78 = load *program_0:ptr->i32 
                    #   load label program as ptr to reg
    la      a4, program
                    #occupy reg a4 with *program_0
    lw      a5,0(a4)
                    #       Call void interpret_0(temp_58_78) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a5
                    #arg load ended
    call    interpret
                    #      ret 0_0 
    li      a0, 131080
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a6, 131072
    add     a6,sp,a6
    ld      s0,0(a6)
                    #found literal reg Some(a1) already exist with 131080_0
    add     a1,sp,a1
    sd      a0,0(a1)
    li      a0, 0
                    #found literal reg Some(a3) already exist with 131088_0
    li      a3, 131088
    add     sp,a3,sp
    ret
.section        .data
    .align 4
    .globl ptr
                    #      global i32 ptr_0 
    .type ptr,@object
ptr:
    .word 0
    .align 4
    .globl program
                    #      global Array:i32:[Some(32768_0)] program_0 
    .type program,@object
program:
    .zero 131072
    .align 4
    .globl tape
                    #      global Array:i32:[Some(65536_0)] tape_0 
    .type tape,@object
tape:
    .zero 262144
    .align 4
    .globl BUFFER_LEN
                    #      global i32 BUFFER_LEN_0 
    .type BUFFER_LEN,@object
BUFFER_LEN:
    .word 32768
    .align 4
    .globl TAPE_LEN
                    #      global i32 TAPE_LEN_0 
    .type TAPE_LEN,@object
TAPE_LEN:
    .word 65536
