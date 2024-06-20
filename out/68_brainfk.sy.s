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
                    #      jump label: while.head_22 
    j       .while.head_22
                    #      label while.exit_22: 
.while.exit_22:
                    #      new_var temp_5_19:ptr->i32 
                    #      temp_5_19 = getelementptr program_0:Array:i32:[Some(32768_0)] [Some(i_19)] 
    li      s1, 0
                    #found literal reg Some(a5) already exist with 1_0
    mul     s2,a5,a2
                    #occupy reg s2 with program_0
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
                    #      store 0_0:i32 temp_5_19:ptr->i32 
    li      s3, 0
    sd      s3,0(s1)
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
    li      a6, 0
    li      a7, 1
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_7_31 = load temp_6_31:ptr->i32 
                    #      new_var temp_8_470:i1 
                    #      temp_8_470 = icmp i32 Ne temp_7_31, 0_0 
    li      s2, 0
    xor     s3,s1,s2
    snez    s3, s3
                    #      br i1 temp_8_470, label while.body_32, label while.exit_32 
    bnez    s3, .while.body_32
    j       .while.exit_32
                    #      label while.body_32: 
.while.body_32:
                    #      new_var temp_9_33:ptr->i32 
                    #      new_var temp_10_33:i32 
                    #      temp_9_33 = getelementptr input_27:ptr->i32 [Some(i_29)] 
    li      s4, 0
                    #found literal reg Some(a7) already exist with 1_0
    add     s4,s4,a0
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_10_33 = load temp_9_33:ptr->i32 
                    #      cur_char_29 = i32 temp_10_33 
    mv      s6, s5
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_11_35:i1 
                    #      temp_11_35 = icmp i32 Eq cur_char_29, 62_0 
    li      s7, 62
    xor     s8,s6,s7
    seqz    s8, s8
                    #      br i1 temp_11_35, label branch_true_36, label branch_false_36 
    bnez    s8, .branch_true_36
    j       .branch_false_36
                    #      label branch_true_36: 
.branch_true_36:
                    #      new_var temp_12_37:i32 
                    #      temp_12_37 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      s9, ptr
                    #occupy reg s9 with *ptr_0
    lw      s10,0(s9)
                    #occupy reg s10 with ptr_0
                    #      new_var temp_13_37:i32 
                    #      temp_13_37 = Add i32 temp_12_37, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    add     a1,s11,a7
                    #      store temp_13_37:i32 *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a2, ptr
                    #occupy reg a2 with *ptr_0
    sd      a1,0(a2)
                    #      jump label: L10_0 
    j       .L10_0
                    #      label branch_false_36: 
.branch_false_36:
                    #      new_var temp_15_39:i1 
                    #      temp_15_39 = icmp i32 Eq cur_char_29, 60_0 
    li      a2, 60
    xor     a3,s6,a2
    seqz    a3, a3
                    #      br i1 temp_15_39, label branch_true_40, label branch_false_40 
    bnez    a3, .branch_true_40
    j       .branch_false_40
                    #      label branch_true_40: 
.branch_true_40:
                    #      new_var temp_16_41:i32 
                    #      temp_16_41 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a2, ptr
                    #occupy reg a2 with *ptr_0
    lw      a4,0(a2)
                    #occupy reg a4 with ptr_0
                    #      new_var temp_17_41:i32 
                    #      temp_17_41 = Sub i32 temp_16_41, 1_0 
                    #found literal reg Some(a7) already exist with 1_0
    sub     a4,a2,a7
                    #      store temp_17_41:i32 *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a7, ptr
                    #occupy reg a7 with *ptr_0
    sd      a4,0(a7)
                    #      jump label: L9_0 
    j       .L9_0
                    #      label branch_false_40: 
.branch_false_40:
                    #      new_var temp_18_43:i1 
                    #      temp_18_43 = icmp i32 Eq cur_char_29, 43_0 
    li      a7, 43
    xor     s2,s6,a7
    seqz    s2, s2
                    #      br i1 temp_18_43, label branch_true_44, label branch_false_44 
    bnez    s2, .branch_true_44
    j       .branch_false_44
                    #      label branch_true_44: 
.branch_true_44:
                    #      new_var temp_19_45:i32 
                    #      temp_19_45 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a7, ptr
                    #occupy reg a7 with *ptr_0
    lw      s7,0(a7)
                    #occupy reg s7 with ptr_0
                    #      new_var temp_20_45:ptr->i32 
                    #      temp_20_45 = getelementptr tape_0:Array:i32:[Some(65536_0)] [Some(temp_19_45)] 
    li      a7, 0
    li      s7, 1
    mul     s10,s7,s9
                    #occupy reg s10 with tape_0
    add     a7,a7,s10
    slli a7,a7,2
    add     a7,a7,a7
                    #      new_var temp_21_45:i32 
                    #      temp_21_45 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      s7, ptr
                    #occupy reg s7 with *ptr_0
    lw      s10,0(s7)
                    #occupy reg s10 with ptr_0
                    #      new_var temp_22_45:Array:i32:[Some(65536_0)] 
                    #      temp_22_45 = load *tape_0:ptr->i32 
                    #   load label tape as ptr to reg
    la      s7, tape
                    #occupy reg s7 with *tape_0
    lw      s10,0(s7)
                    #occupy reg s10 with tape_0
                    #      new_var temp_23_45:ptr->i32 
                    #      new_var temp_24_45:i32 
                    #      temp_23_45 = getelementptr temp_22_45:Array:i32:[Some(65536_0)] [Some(temp_21_45)] 
    li      s7, 0
    li      s10, 1
    li      a0, 1048832
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 1048776
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,s10,a0
    add     s7,s7,a1
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_24_45 = load temp_23_45:ptr->i32 
                    #      new_var temp_25_45:i32 
                    #      temp_25_45 = Add i32 temp_24_45, 1_0 
    li      a0, 1048740
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 1048736
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s10,a0
                    #      store temp_25_45:i32 temp_20_45:ptr->i32 
    sd      a1,0(a7)
                    #      mu tape_0:147 
                    #      tape_0 = chi tape_0:147 
                    #      jump label: L8_0 
    j       .L8_0
                    #      label branch_false_44: 
.branch_false_44:
                    #      new_var temp_26_47:i1 
                    #      temp_26_47 = icmp i32 Eq cur_char_29, 45_0 
    li      a0, 45
    li      a1, 786576
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,s6,a0
    seqz    a1, a1
                    #      br i1 temp_26_47, label branch_true_48, label branch_false_48 
    bnez    a1, .branch_true_48
    j       .branch_false_48
                    #      label branch_true_48: 
.branch_true_48:
                    #      new_var temp_27_49:i32 
                    #      temp_27_49 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a0, ptr
                    #occupy reg a0 with *ptr_0
    li      a1, 786575
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #occupy reg a1 with ptr_0
                    #      new_var temp_28_49:ptr->i32 
                    #      temp_28_49 = getelementptr tape_0:Array:i32:[Some(65536_0)] [Some(temp_27_49)] 
    li      a0, 0
    li      a1, 1
    li      a2, 1048764
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 1048771
    add     a3,sp,a3
    sb      a3,0(a3)
    mul     a3,a1,a2
                    #occupy reg a3 with tape_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_29_49:i32 
                    #      temp_29_49 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a1, ptr
                    #occupy reg a1 with *ptr_0
    lw      a3,0(a1)
                    #occupy reg a3 with ptr_0
                    #      new_var temp_30_49:Array:i32:[Some(65536_0)] 
                    #      temp_30_49 = load *tape_0:ptr->i32 
                    #   load label tape as ptr to reg
    la      a1, tape
                    #occupy reg a1 with *tape_0
    lw      a3,0(a1)
                    #occupy reg a3 with tape_0
                    #      new_var temp_31_49:ptr->i32 
                    #      new_var temp_32_49:i32 
                    #      temp_31_49 = getelementptr temp_30_49:Array:i32:[Some(65536_0)] [Some(temp_29_49)] 
    li      a1, 0
    li      a3, 1
    li      a0, 786560
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a2, 786568
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a3,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_32_49 = load temp_31_49:ptr->i32 
                    #      new_var temp_33_49:i32 
                    #      temp_33_49 = Sub i32 temp_32_49, 1_0 
    li      a0, 786556
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 524400
    add     a1,sp,a1
    sd      a1,0(a1)
    sub     a1,a3,a0
                    #      store temp_33_49:i32 temp_28_49:ptr->i32 
    sd      a1,0(a0)
                    #      mu tape_0:177 
                    #      tape_0 = chi tape_0:177 
                    #      jump label: L7_0 
    j       .L7_0
                    #      label branch_false_48: 
.branch_false_48:
                    #      new_var temp_34_51:i1 
                    #      temp_34_51 = icmp i32 Eq cur_char_29, 46_0 
    li      a0, 786560
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 46
    li      a1, 524392
    add     a1,sp,a1
    sw      a1,0(a1)
    xor     a1,s6,a0
    seqz    a1, a1
                    #      br i1 temp_34_51, label branch_true_52, label branch_false_52 
    bnez    a1, .branch_true_52
    j       .branch_false_52
                    #      label branch_true_52: 
.branch_true_52:
                    #      new_var temp_35_53:i32 
                    #      temp_35_53 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a0, ptr
                    #occupy reg a0 with *ptr_0
    li      a1, 524391
    add     a1,sp,a1
    sb      a1,0(a1)
    lw      a1,0(a0)
                    #occupy reg a1 with ptr_0
                    #      new_var temp_36_53:Array:i32:[Some(65536_0)] 
                    #      temp_36_53 = load *tape_0:ptr->i32 
                    #   load label tape as ptr to reg
    la      a0, tape
                    #occupy reg a0 with *tape_0
    lw      a1,0(a0)
                    #occupy reg a1 with tape_0
                    #      new_var temp_37_53:ptr->i32 
                    #      new_var temp_38_53:i32 
                    #      temp_37_53 = getelementptr temp_36_53:Array:i32:[Some(65536_0)] [Some(temp_35_53)] 
    li      a0, 0
    li      a1, 1
    li      a2, 786552
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 524396
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_38_53 = load temp_37_53:ptr->i32 
                    #       Call void putch_0(temp_38_53) 
                    #saved register dumping to mem
    li      s1, 1048804
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 1048759
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 1048803
    add     s3,sp,s3
    sb      s3,0(s3)
    li      s4, 1048792
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s5, 1048788
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s6, 1048828
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s7, 786584
    add     s7,sp,s7
    sd      s7,0(s7)
    li      s8, 1048787
    add     s8,sp,s8
    sb      s8,0(s8)
    li      s9, 1048752
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s10, 786580
    add     s10,sp,s10
    sw      s10,0(s10)
    li      s11, 1048780
    add     s11,sp,s11
    sw      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 262232
    add     a0,sp,a0
    sd      a0,0(a0)
                    #arg load ended
    call    putch
                    #      jump label: L6_0 
    j       .L6_0
                    #      label branch_false_52: 
.branch_false_52:
                    #      new_var temp_39_55:i1 
                    #      temp_39_55 = icmp i32 Eq cur_char_29, 44_0 
    li      a1, 44
    xor     s1,a0,a1
    seqz    s1, s1
                    #      br i1 temp_39_55, label branch_true_56, label branch_false_56 
    bnez    s1, .branch_true_56
    j       .branch_false_56
                    #      label branch_true_56: 
.branch_true_56:
                    #      new_var temp_40_57:i32 
                    #      temp_40_57 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      a1, ptr
                    #occupy reg a1 with *ptr_0
    lw      s2,0(a1)
                    #occupy reg s2 with ptr_0
                    #      new_var temp_41_57:ptr->i32 
                    #      temp_41_57 = getelementptr tape_0:Array:i32:[Some(65536_0)] [Some(temp_40_57)] 
    li      a1, 0
    li      s2, 1
    mul     s4,s2,s3
                    #occupy reg s4 with tape_0
    add     a1,a1,s4
    slli a1,a1,2
    add     a1,a1,a1
                    #      new_var temp_42_57:i32 
                    #      temp_42_57 =  Call i32 getch_0() 
                    #saved register dumping to mem
    li      s1, 262227
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 262220
    add     s2,sp,s2
    sw      s3,0(s2)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    li      a0, 1048828
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s3, 262204
    add     s3,sp,s3
    sw      a0,0(s3)
                    #      store temp_42_57:i32 temp_41_57:ptr->i32 
    sd      a0,0(a1)
                    #      mu tape_0:214 
                    #      tape_0 = chi tape_0:214 
                    #      jump label: L5_0 
    j       .L5_0
                    #      label branch_false_56: 
.branch_false_56:
                    #      new_var temp_43_59:i32 
                    #      temp_43_59 = load *ptr_0:ptr->i32 
                    #   load label ptr as ptr to reg
    la      s4, ptr
                    #occupy reg s4 with *ptr_0
    lw      s5,0(s4)
                    #occupy reg s5 with ptr_0
                    #      new_var temp_44_59:Array:i32:[Some(65536_0)] 
                    #      temp_44_59 = load *tape_0:ptr->i32 
                    #   load label tape as ptr to reg
    la      s6, tape
                    #occupy reg s6 with *tape_0
    lw      s7,0(s6)
                    #occupy reg s7 with tape_0
                    #      new_var temp_45_59:ptr->i32 
                    #      new_var temp_46_59:i32 
                    #      temp_45_59 = getelementptr temp_44_59:Array:i32:[Some(65536_0)] [Some(temp_43_59)] 
    li      s8, 0
    li      s9, 1
    mul     s11,s9,s10
    add     s8,s8,s11
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
                    #      temp_46_59 = load temp_45_59:ptr->i32 
                    #      new_var temp_47_59:i1 
                    #      temp_47_59 = icmp i32 Eq cur_char_29, 93_0 
    li      s2, 93
    xor     s3,s1,s2
    seqz    s3, s3
                    #      new_var temp_48_59:i1 
                    #      temp_48_59 = icmp i32 Ne temp_46_59, 0_0 
    li      s4, 0
    xor     s5,s2,s4
    snez    s5, s5
                    #      new_var temp_49_59:i1 
                    #      temp_49_59 = And i1 temp_47_59, temp_48_59 
    and     s4,s3,s5
                    #      br i1 temp_49_59, label branch_true_60, label branch_false_60 
    bnez    s4, .branch_true_60
    j       .branch_false_60
                    #      label branch_true_60: 
.branch_true_60:
                    #      loop_29 = i32 1_0 
    li      s6, 1
                    #      jump label: while.head_64 
    j       .while.head_64
                    #      label while.head_64: 
.while.head_64:
                    #      new_var temp_50_63:i1 
                    #      temp_50_63 = icmp i32 Sgt loop_29, 0_0 
    li      s7, 0
    slt     s9,s7,s6
                    #      br i1 temp_50_63, label while.body_64, label while.exit_64 
    bnez    s9, .while.body_64
    j       .while.exit_64
                    #      label while.body_64: 
.while.body_64:
                    #      new_var temp_51_65:i32 
                    #      temp_51_65 = Sub i32 i_29, 1_0 
    li      s7, 1
    li      a0, 262204
    add     a0,sp,a0
    sw      a0,0(a0)
    sub     a0,a5,s7
                    #      i_29 = i32 temp_51_65 
                    #      new_var temp_52_65:ptr->i32 
                    #      new_var temp_53_65:i32 
                    #      temp_52_65 = getelementptr input_27:ptr->i32 [Some(i_29)] 
    li      s7, 0
    sw      a0,36(sp)
    li      a0, 1
    li      a1, 262208
    add     a1,sp,a1
    sd      a1,0(a1)
    mul     a1,a0,a5
    add     s7,s7,a1
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_53_65 = load temp_52_65:ptr->i32 
                    #      cur_char_29 = i32 temp_53_65 
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_54_68:i1 
                    #      temp_54_68 = icmp i32 Eq cur_char_29, 91_0 
    sw      a0,20(sp)
    li      a0, 91
    li      a1, 1048832
    add     a1,sp,a1
    sd      a1,0(a1)
    xor     a1,s1,a0
    seqz    a1, a1
                    #      br i1 temp_54_68, label branch_true_69, label branch_false_69 
    bnez    a1, .branch_true_69
    j       .branch_false_69
                    #      label branch_true_69: 
.branch_true_69:
                    #      new_var temp_55_70:i32 
                    #      temp_55_70 = Sub i32 loop_29, 1_0 
    li      a0, 1
    sb      a1,19(sp)
    sub     a1,s6,a0
                    #      loop_29 = i32 temp_55_70 
                    #      jump label: L4_0 
    j       .L4_0
                    #      label branch_false_69: 
.branch_false_69:
                    #      new_var temp_56_72:i1 
                    #      temp_56_72 = icmp i32 Eq cur_char_29, 93_0 
    li      a0, 93
    sw      a1,12(sp)
    xor     a1,s1,a0
    seqz    a1, a1
                    #      br i1 temp_56_72, label branch_true_73, label branch_false_73 
    bnez    a1, .branch_true_73
    j       .branch_false_73
                    #      label branch_true_73: 
.branch_true_73:
                    #      new_var temp_57_74:i32 
                    #      temp_57_74 = Add i32 loop_29, 1_0 
    li      a0, 1
    sb      a1,11(sp)
    add     a1,s6,a0
                    #      loop_29 = i32 temp_57_74 
                    #      jump label: branch_false_73 
    j       .branch_false_73
                    #      label branch_false_73: 
.branch_false_73:
                    #      label L4_0: 
.L4_0:
                    #      jump label: while.head_64 
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
                    #found literal reg Some(a0) already exist with 1_0
    sw      a1,4(sp)
    add     a1,a5,a0
                    #      i_29 = i32 temp_14_33 
                    #      jump label: while.head_32 
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
                    #occupy reg a5 with program_0
                    #       Call void interpret_0(temp_58_78) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
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
