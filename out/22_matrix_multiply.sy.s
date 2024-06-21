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
                    #      Define matrix_multiply_0 [] -> matrix_multiply_ret_0 
    .globl matrix_multiply
    .type matrix_multiply,@function
matrix_multiply:
                    #mem layout:|ra_matrix_multiply:8|s0_matrix_multiply:8|i:4|temp_0:4|temp_1:1|none:3|j:4|temp_2:4|temp_3:1|none:3|k:4|temp_4:4|temp_5:1|none:7|temp_6:8|temp_7:40000|temp_8:8|temp_9:4|temp_10:40000|none:4|temp_11:8|temp_12:4|temp_13:4|temp_14:40000|temp_15:8|temp_16:4|temp_17:4|temp_18:4|temp_19:4|temp_20:4|none:4
    li      a0, -120128
    li      a0, -120128
    add     sp,a0,sp
    li      a1, 120120
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 120112
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 120128
    li      a3, 120128
    add     s0,a3,sp
                    #      alloc i32 i_21 
                    #      alloc i32 temp_0_23 
                    #      alloc i1 temp_1_23 
                    #      alloc i32 j_25 
                    #      alloc i32 temp_2_27 
                    #      alloc i1 temp_3_27 
                    #      alloc i32 k_29 
                    #      alloc i32 temp_4_31 
                    #      alloc i1 temp_5_31 
                    #      alloc ptr->i32 temp_6_33 
                    #      alloc Array:i32:[Some(100_0), Some(100_0)] temp_7_33 
                    #      alloc ptr->i32 temp_8_33 
                    #      alloc i32 temp_9_33 
                    #      alloc Array:i32:[Some(100_0), Some(100_0)] temp_10_33 
                    #      alloc ptr->i32 temp_11_33 
                    #      alloc i32 temp_12_33 
                    #      alloc i32 temp_13_33 
                    #      alloc Array:i32:[Some(100_0), Some(100_0)] temp_14_33 
                    #      alloc ptr->i32 temp_15_33 
                    #      alloc i32 temp_16_33 
                    #      alloc i32 temp_17_33 
                    #      alloc i32 temp_18_33 
                    #      alloc i32 temp_19_29 
                    #      alloc i32 temp_20_25 
                    #      label L1_0: 
.L1_0:
                    #      i_21 = i32 0_0 
    li      a4, 0
                    #      jump label: while.head_24 
    j       .while.head_24
                    #      label while.head_24: 
.while.head_24:
                    #      new_var temp_0_23:i32 
                    #      temp_0_23 = load *m1_0:ptr->i32 
                    #   load label m1 as ptr to reg
    la      a0, m1
                    #occupy reg a0 with *m1_0
    lw      a1,0(a0)
                    #      new_var temp_1_23:i1 
                    #      temp_1_23 = icmp i32 Slt i_21, temp_0_23 
    slt     a2,a4,a1
                    #      br i1 temp_1_23, label while.body_24, label while.exit_24 
    bnez    a2, .while.body_24
    j       .while.exit_24
                    #      label while.body_24: 
.while.body_24:
                    #      j_25 = i32 0_0 
    li      a0, 0
                    #      jump label: while.head_28 
    j       .while.head_28
                    #      label while.head_28: 
.while.head_28:
                    #      new_var temp_2_27:i32 
                    #      temp_2_27 = load *n2_0:ptr->i32 
                    #   load label n2 as ptr to reg
    la      a3, n2
                    #occupy reg a3 with *n2_0
    lw      a5,0(a3)
                    #      new_var temp_3_27:i1 
                    #      temp_3_27 = icmp i32 Slt j_25, temp_2_27 
    slt     a6,a0,a5
                    #      br i1 temp_3_27, label while.body_28, label while.exit_28 
    bnez    a6, .while.body_28
    j       .while.exit_28
                    #      label while.body_28: 
.while.body_28:
                    #      k_29 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_32 
    j       .while.head_32
                    #      label while.head_32: 
.while.head_32:
                    #      new_var temp_4_31:i32 
                    #      temp_4_31 = load *n1_0:ptr->i32 
                    #   load label n1 as ptr to reg
    la      a7, n1
                    #occupy reg a7 with *n1_0
    lw      s1,0(a7)
                    #      new_var temp_5_31:i1 
                    #      temp_5_31 = icmp i32 Slt k_29, temp_4_31 
    slt     s2,a3,s1
                    #      br i1 temp_5_31, label while.body_32, label while.exit_32 
    bnez    s2, .while.body_32
    j       .while.exit_32
                    #      label while.body_32: 
.while.body_32:
                    #      new_var temp_6_33:ptr->i32 
                    #      temp_6_33 = getelementptr res_0:Array:i32:[Some(100_0), Some(100_0)] [Some(i_21), Some(j_25)] 
    li      a7, 0
    li      s3, 100
    mul     s4,s3,a4
                    #occupy reg s4 with res_0
    add     a7,a7,s4
    li      s5, 1
    mul     s6,s5,a0
                    #occupy reg s6 with res_0
    add     a7,a7,s6
    slli a7,a7,2
    add     a7,a7,a7
                    #      new_var temp_7_33:Array:i32:[Some(100_0), Some(100_0)] 
                    #      temp_7_33 = load *b_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label b as ptr to reg
    la      s7, b
                    #occupy reg s7 with *b_0
    lw      s8,0(s7)
                    #      new_var temp_8_33:ptr->i32 
                    #      new_var temp_9_33:i32 
                    #      temp_8_33 = getelementptr temp_7_33:Array:i32:[Some(100_0), Some(100_0)] [Some(k_29), Some(j_25)] 
    li      s9, 0
                    #found literal reg Some(s3) already exist with 100_0
    add     s9,s9,s8
                    #found literal reg Some(s5) already exist with 1_0
    add     s9,s9,s8
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_9_33 = load temp_8_33:ptr->i32 
    lw      s10,0(s9)
                    #      new_var temp_10_33:Array:i32:[Some(100_0), Some(100_0)] 
                    #      temp_10_33 = load *a_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label a as ptr to reg
    la      s11, a
                    #occupy reg s11 with *a_0
    lw      s3,0(s11)
                    #      new_var temp_11_33:ptr->i32 
                    #      new_var temp_12_33:i32 
                    #      temp_11_33 = getelementptr temp_10_33:Array:i32:[Some(100_0), Some(100_0)] [Some(i_21), Some(k_29)] 
    li      s4, 0
    li      s5, 100
    add     s4,s4,s3
    li      s5, 1
    add     s4,s4,s3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
                    #      temp_12_33 = load temp_11_33:ptr->i32 
    lw      s5,0(s4)
                    #      new_var temp_13_33:i32 
                    #      temp_13_33 = Mul i32 temp_12_33, temp_9_33 
    mul     s6,s5,s10
                    #      new_var temp_14_33:Array:i32:[Some(100_0), Some(100_0)] 
                    #      temp_14_33 = load *res_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label res as ptr to reg
    la      s7, res
                    #occupy reg s7 with *res_0
    lw      s11,0(s7)
                    #      new_var temp_15_33:ptr->i32 
                    #      new_var temp_16_33:i32 
                    #      temp_15_33 = getelementptr temp_14_33:Array:i32:[Some(100_0), Some(100_0)] [Some(i_21), Some(j_25)] 
    li      s7, 0
    li      a0, 120096
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 100
    add     s7,s7,s11
    li      a0, 1
    li      a1, 120104
    add     a1,sp,a1
    sw      a1,0(a1)
    add     s7,s7,s11
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_16_33 = load temp_15_33:ptr->i32 
    lw      a0,0(s7)
                    #      new_var temp_17_33:i32 
                    #      temp_17_33 = Add i32 temp_16_33, temp_13_33 
    li      a1, 120096
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,a0,s6
                    #      store temp_17_33:i32 temp_6_33:ptr->i32 
    sd      a1,0(a7)
                    #      mu res_0:104 
                    #      res_0 = chi res_0:104 
                    #      new_var temp_18_33:i32 
                    #      temp_18_33 = Add i32 k_29, 1_0 
    sw      a0,20(sp)
    li      a0, 1
    sw      a1,16(sp)
    add     a1,a3,a0
                    #      k_29 = i32 temp_18_33 
    mv      a3, a1
                    #      jump label: while.head_32 
    li      s6, 40032
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s8, 120060
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 80056
    add     s9,sp,s9
    sd      s9,0(s9)
    sd      s7,24(sp)
    sw      a1,12(sp)
    li      a0, 120104
    add     a0,sp,a0
    lw      a1,0(a0)
    li      s4, 40040
    add     s4,sp,s4
    sd      s4,0(s4)
    li      s11, 40028
    add     s11,sp,s11
    sw      s11,0(s11)
    li      s3, 80048
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s10, 80052
    add     s10,sp,s10
    sw      s10,0(s10)
    li      a0, 120104
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 120103
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a2, 120096
    add     a2,sp,a2
    lw      a0,0(a2)
    li      a7, 120064
    add     a7,sp,a7
    sd      a7,0(a7)
    li      s1, 120080
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 120079
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s5, 40036
    add     s5,sp,s5
    sw      s5,0(s5)
    j       .while.head_32
                    #      label while.exit_32: 
.while.exit_32:
                    #      new_var temp_19_29:i32 
                    #      temp_19_29 = Add i32 j_25, 1_0 
    li      a7, 1
    add     s3,a0,a7
                    #      j_25 = i32 temp_19_29 
    mv      a0, s3
                    #      jump label: while.head_28 
    li      a5, 120092
    add     a5,sp,a5
    sw      a5,0(a5)
    sw      s3,8(sp)
    li      s1, 120080
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 120079
    add     s2,sp,s2
    sb      s2,0(s2)
    li      a6, 120091
    add     a6,sp,a6
    sb      a6,0(a6)
    li      a3, 120084
    add     a3,sp,a3
    sw      a3,0(a3)
    j       .while.head_28
                    #      label while.exit_28: 
.while.exit_28:
                    #      new_var temp_20_25:i32 
                    #      temp_20_25 = Add i32 i_21, 1_0 
    li      a3, 1
    add     a7,a4,a3
                    #      i_21 = i32 temp_20_25 
    mv      a4, a7
                    #      jump label: while.head_24 
    li      a5, 120092
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a1, 120104
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 120103
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a0, 120096
    add     a0,sp,a0
    sw      a0,0(a0)
    sw      a7,4(sp)
    li      a6, 120091
    add     a6,sp,a6
    sb      a6,0(a6)
    j       .while.head_24
                    #      label while.exit_24: 
.while.exit_24:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|i:4|j:4|temp_21:4|temp_22:4|temp_23:4|temp_24:1|none:3|temp_25:4|temp_26:1|none:3|temp_27:8|temp_28:4|temp_29:4|temp_30:4|temp_31:4|temp_32:4|temp_33:4|temp_34:1|none:3|temp_35:4|temp_36:1|none:7|temp_37:8|temp_38:4|temp_39:4|temp_40:4|temp_41:4|temp_42:1|none:3|temp_43:4|temp_44:1|none:3|temp_45:40000|none:4|temp_46:8|temp_47:4|temp_48:4|temp_49:4|none:4
    li      a0, -40160
    li      a0, -40160
    add     sp,a0,sp
    li      a1, 40152
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 40144
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 40160
    li      a3, 40160
    add     s0,a3,sp
                    #      alloc i32 i_39 
                    #      alloc i32 j_39 
                    #      alloc i32 temp_21_39 
                    #      alloc i32 temp_22_39 
                    #      alloc i32 temp_23_44 
                    #      alloc i1 temp_24_44 
                    #      alloc i32 temp_25_48 
                    #      alloc i1 temp_26_48 
                    #      alloc ptr->i32 temp_27_50 
                    #      alloc i32 temp_28_50 
                    #      alloc i32 temp_29_50 
                    #      alloc i32 temp_30_46 
                    #      alloc i32 temp_31_39 
                    #      alloc i32 temp_32_39 
                    #      alloc i32 temp_33_57 
                    #      alloc i1 temp_34_57 
                    #      alloc i32 temp_35_61 
                    #      alloc i1 temp_36_61 
                    #      alloc ptr->i32 temp_37_63 
                    #      alloc i32 temp_38_63 
                    #      alloc i32 temp_39_63 
                    #      alloc i32 temp_40_59 
                    #      alloc i32 temp_41_69 
                    #      alloc i1 temp_42_69 
                    #      alloc i32 temp_43_73 
                    #      alloc i1 temp_44_73 
                    #      alloc Array:i32:[Some(100_0), Some(100_0)] temp_45_75 
                    #      alloc ptr->i32 temp_46_75 
                    #      alloc i32 temp_47_75 
                    #      alloc i32 temp_48_75 
                    #      alloc i32 temp_49_71 
                    #      label L0_0: 
.L0_0:
                    #      new_var i_39:i32 
                    #      new_var j_39:i32 
                    #      new_var temp_21_39:i32 
                    #      temp_21_39 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 40132
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      store temp_21_39:i32 *m1_0:ptr->i32 
                    #   load label m1 as ptr to reg
    la      a4, m1
                    #occupy reg a4 with *m1_0
    sd      a0,0(a4)
                    #      new_var temp_22_39:i32 
                    #      temp_22_39 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 40132
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a5, 40128
    add     a5,sp,a5
    sw      a0,0(a5)
                    #      store temp_22_39:i32 *n1_0:ptr->i32 
                    #   load label n1 as ptr to reg
    la      a6, n1
                    #occupy reg a6 with *n1_0
    sd      a0,0(a6)
                    #      i_39 = i32 0_0 
    li      a7, 0
                    #      jump label: while.head_45 
    j       .while.head_45
                    #      label while.head_45: 
.while.head_45:
                    #      new_var temp_23_44:i32 
                    #      temp_23_44 = load *m1_0:ptr->i32 
                    #   load label m1 as ptr to reg
    la      a1, m1
                    #occupy reg a1 with *m1_0
    lw      a2,0(a1)
                    #      new_var temp_24_44:i1 
                    #      temp_24_44 = icmp i32 Slt i_39, temp_23_44 
    slt     a3,a7,a2
                    #      br i1 temp_24_44, label while.body_45, label while.exit_45 
    bnez    a3, .while.body_45
    j       .while.exit_45
                    #      label while.body_45: 
.while.body_45:
                    #      j_39 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_49 
    j       .while.head_49
                    #      label while.head_49: 
.while.head_49:
                    #      new_var temp_25_48:i32 
                    #      temp_25_48 = load *n1_0:ptr->i32 
                    #   load label n1 as ptr to reg
    la      a4, n1
                    #occupy reg a4 with *n1_0
    lw      a5,0(a4)
                    #      new_var temp_26_48:i1 
                    #      temp_26_48 = icmp i32 Slt j_39, temp_25_48 
    slt     a6,a1,a5
                    #      br i1 temp_26_48, label while.body_49, label while.exit_49 
    bnez    a6, .while.body_49
    j       .while.exit_49
                    #      label while.body_49: 
.while.body_49:
                    #      new_var temp_27_50:ptr->i32 
                    #      temp_27_50 = getelementptr a_0:Array:i32:[Some(100_0), Some(100_0)] [Some(i_39), Some(j_39)] 
    li      a4, 0
    li      s1, 100
    mul     s2,s1,a7
                    #occupy reg s2 with a_0
    add     a4,a4,s2
    li      s3, 1
    mul     s4,s3,a1
                    #occupy reg s4 with a_0
    add     a4,a4,s4
    slli a4,a4,2
    add     a4,a4,a4
                    #      new_var temp_28_50:i32 
                    #      temp_28_50 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 40128
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s1, 40100
    add     s1,sp,s1
    sw      a0,0(s1)
                    #      store temp_28_50:i32 temp_27_50:ptr->i32 
    sd      a0,0(a4)
                    #      mu a_0:161 
                    #      a_0 = chi a_0:161 
                    #      new_var temp_29_50:i32 
                    #      temp_29_50 = Add i32 j_39, 1_0 
    li      s2, 1
    add     s3,a1,s2
                    #      j_39 = i32 temp_29_50 
    mv      a1, s3
                    #      jump label: while.head_49 
    li      a5, 40116
    add     a5,sp,a5
    sw      a5,0(a5)
    li      a0, 40100
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s4, 40128
    add     s4,sp,s4
    lw      a0,0(s4)
    li      a4, 40104
    add     a4,sp,a4
    sd      a4,0(a4)
    li      s4, 40128
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s3, 40096
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a6, 40115
    add     a6,sp,a6
    sb      a6,0(a6)
    j       .while.head_49
                    #      label while.exit_49: 
.while.exit_49:
                    #      new_var temp_30_46:i32 
                    #      temp_30_46 = Add i32 i_39, 1_0 
    li      a4, 1
    add     s1,a7,a4
                    #      i_39 = i32 temp_30_46 
    mv      a7, s1
                    #      jump label: while.head_45 
    li      a5, 40116
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s1, 40092
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a1, 40136
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a2, 40124
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 40123
    add     a3,sp,a3
    sb      a3,0(a3)
    li      a6, 40115
    add     a6,sp,a6
    sb      a6,0(a6)
    j       .while.head_45
                    #      label while.exit_45: 
.while.exit_45:
                    #      new_var temp_31_39:i32 
                    #      temp_31_39 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 40128
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a1, 40088
    add     a1,sp,a1
    sw      a0,0(a1)
                    #      store temp_31_39:i32 *m2_0:ptr->i32 
                    #   load label m2 as ptr to reg
    la      a4, m2
                    #occupy reg a4 with *m2_0
    sd      a0,0(a4)
                    #      new_var temp_32_39:i32 
                    #      temp_32_39 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
                    #found literal reg Some(a1) already exist with 40088_0
    add     a1,sp,a1
    sw      a0,0(a1)
    li      a0, 40084
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      store temp_32_39:i32 *n2_0:ptr->i32 
                    #   load label n2 as ptr to reg
    la      a5, n2
                    #occupy reg a5 with *n2_0
    sd      a0,0(a5)
                    #      i_39 = i32 0_0 
                    #      jump label: while.head_58 
    j       .while.head_58
                    #      label while.head_58: 
.while.head_58:
                    #      new_var temp_33_57:i32 
                    #      temp_33_57 = load *m2_0:ptr->i32 
                    #   load label m2 as ptr to reg
    la      a1, m2
                    #occupy reg a1 with *m2_0
    lw      a4,0(a1)
                    #      new_var temp_34_57:i1 
                    #      temp_34_57 = icmp i32 Slt i_39, temp_33_57 
    slt     a5,a7,a4
                    #      br i1 temp_34_57, label while.body_58, label while.exit_58 
    bnez    a5, .while.body_58
    j       .while.exit_58
                    #      label while.body_58: 
.while.body_58:
                    #      j_39 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_62 
    j       .while.head_62
                    #      label while.head_62: 
.while.head_62:
                    #      new_var temp_35_61:i32 
                    #      temp_35_61 = load *n2_0:ptr->i32 
                    #   load label n2 as ptr to reg
    la      a6, n2
                    #occupy reg a6 with *n2_0
    lw      s1,0(a6)
                    #      new_var temp_36_61:i1 
                    #      temp_36_61 = icmp i32 Slt j_39, temp_35_61 
    slt     s2,a1,s1
                    #      br i1 temp_36_61, label while.body_62, label while.exit_62 
    bnez    s2, .while.body_62
    j       .while.exit_62
                    #      label while.body_62: 
.while.body_62:
                    #      new_var temp_37_63:ptr->i32 
                    #      temp_37_63 = getelementptr b_0:Array:i32:[Some(100_0), Some(100_0)] [Some(i_39), Some(j_39)] 
    li      a6, 0
    li      s3, 100
    mul     s4,s3,a7
                    #occupy reg s4 with b_0
    add     a6,a6,s4
    li      s5, 1
    mul     s6,s5,a1
                    #occupy reg s6 with b_0
    add     a6,a6,s6
    slli a6,a6,2
    add     a6,a6,a6
                    #      new_var temp_38_63:i32 
                    #      temp_38_63 =  Call i32 getint_0() 
                    #saved register dumping to mem
    li      s1, 40072
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 40071
    add     s2,sp,s2
    sb      s2,0(s2)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 40084
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s3, 40052
    add     s3,sp,s3
    sw      a0,0(s3)
                    #      store temp_38_63:i32 temp_37_63:ptr->i32 
    sd      a0,0(a6)
                    #      mu b_0:210 
                    #      b_0 = chi b_0:210 
                    #      new_var temp_39_63:i32 
                    #      temp_39_63 = Add i32 j_39, 1_0 
    li      s4, 1
    add     s5,a1,s4
                    #      j_39 = i32 temp_39_63 
    mv      a1, s5
                    #      jump label: while.head_62 
                    #found literal reg Some(s3) already exist with 40052_0
    add     s3,sp,s3
    sw      a0,0(s3)
    li      s6, 40084
    add     s6,sp,s6
    lw      a0,0(s6)
    li      s5, 40048
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a6, 40056
    add     a6,sp,a6
    sd      a6,0(a6)
    li      s6, 40084
    add     s6,sp,s6
    sw      s6,0(s6)
    j       .while.head_62
                    #      label while.exit_62: 
.while.exit_62:
                    #      new_var temp_40_59:i32 
                    #      temp_40_59 = Add i32 i_39, 1_0 
    li      a6, 1
    add     s3,a7,a6
                    #      i_39 = i32 temp_40_59 
    mv      a7, s3
                    #      jump label: while.head_58 
    li      a5, 40079
    add     a5,sp,a5
    sb      a5,0(a5)
    li      s1, 40072
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a1, 40136
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s2, 40071
    add     s2,sp,s2
    sb      s2,0(s2)
    li      a4, 40080
    add     a4,sp,a4
    sw      a4,0(a4)
    li      s3, 40044
    add     s3,sp,s3
    sw      s3,0(s3)
    j       .while.head_58
                    #      label while.exit_58: 
.while.exit_58:
                    #       Call void matrix_multiply_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    matrix_multiply
                    #      i_39 = i32 0_0 
                    #      jump label: while.head_70 
    j       .while.head_70
                    #      label while.head_70: 
.while.head_70:
                    #      new_var temp_41_69:i32 
                    #      temp_41_69 = load *m1_0:ptr->i32 
                    #   load label m1 as ptr to reg
    la      a1, m1
                    #occupy reg a1 with *m1_0
    lw      a6,0(a1)
                    #      new_var temp_42_69:i1 
                    #      temp_42_69 = icmp i32 Slt i_39, temp_41_69 
    slt     s1,a7,a6
                    #      br i1 temp_42_69, label while.body_70, label while.exit_70 
    bnez    s1, .while.body_70
    j       .while.exit_70
                    #      label while.body_70: 
.while.body_70:
                    #      j_39 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_74 
    j       .while.head_74
                    #      label while.head_74: 
.while.head_74:
                    #      new_var temp_43_73:i32 
                    #      temp_43_73 = load *n2_0:ptr->i32 
                    #   load label n2 as ptr to reg
    la      s2, n2
                    #occupy reg s2 with *n2_0
    lw      s3,0(s2)
                    #      new_var temp_44_73:i1 
                    #      temp_44_73 = icmp i32 Slt j_39, temp_43_73 
    slt     s4,a1,s3
                    #      br i1 temp_44_73, label while.body_74, label while.exit_74 
    bnez    s4, .while.body_74
    j       .while.exit_74
                    #      label while.body_74: 
.while.body_74:
                    #      new_var temp_45_75:Array:i32:[Some(100_0), Some(100_0)] 
                    #      temp_45_75 = load *res_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label res as ptr to reg
    la      s2, res
                    #occupy reg s2 with *res_0
    lw      s5,0(s2)
                    #      new_var temp_46_75:ptr->i32 
                    #      new_var temp_47_75:i32 
                    #      temp_46_75 = getelementptr temp_45_75:Array:i32:[Some(100_0), Some(100_0)] [Some(i_39), Some(j_39)] 
    li      s6, 0
    li      s7, 100
    add     s6,s6,s5
    li      s8, 1
    add     s6,s6,s5
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_47_75 = load temp_46_75:ptr->i32 
    lw      s9,0(s6)
                    #       Call void putint_0(temp_47_75) 
                    #saved register dumping to mem
    li      s1, 40039
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 40032
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 40031
    add     s3,sp,s3
    sb      s4,0(s3)
    li      s4, 40024
    add     s4,sp,s4
    sw      s5,0(s4)
    sd      s6,16(sp)
    sw      s9,12(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 40084
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,12(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      new_var temp_48_75:i32 
                    #      temp_48_75 = Add i32 j_39, 1_0 
    li      a0, 1
    add     s1,a1,a0
                    #      j_39 = i32 temp_48_75 
    mv      a1, s1
                    #      jump label: while.head_74 
    sw      s1,8(sp)
    li      s2, 40039
    add     s2,sp,s2
    lb      s1,0(s2)
    li      s3, 40084
    add     s3,sp,s3
    lw      a0,0(s3)
    li      s2, 40039
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 40084
    add     s3,sp,s3
    sw      s3,0(s3)
    j       .while.head_74
                    #      label while.exit_74: 
.while.exit_74:
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
    li      s1, 40039
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 40032
    add     s2,sp,s2
    sw      s3,0(s2)
    li      s3, 40031
    add     s3,sp,s3
    sb      s4,0(s3)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 40084
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_49_71:i32 
                    #      temp_49_71 = Add i32 i_39, 1_0 
    li      a0, 1
    add     s4,a7,a0
                    #      i_39 = i32 temp_49_71 
    mv      a7, s4
                    #      jump label: while.head_70 
    li      a1, 40136
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s5, 40084
    add     s5,sp,s5
    lw      a0,0(s5)
    li      s5, 40084
    add     s5,sp,s5
    sw      s5,0(s5)
    sw      s4,4(sp)
    li      a6, 40040
    add     a6,sp,a6
    sw      a6,0(a6)
    j       .while.head_70
                    #      label while.exit_70: 
.while.exit_70:
                    #      ret 0_0 
    li      a1, 40152
    add     a1,sp,a1
    ld      ra,0(a1)
    li      s2, 40144
    add     s2,sp,s2
    ld      s0,0(s2)
    li      a0, 40084
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      s3, 40160
    li      s3, 40160
    add     sp,s3,sp
    ret
.section        .data
    .align 4
    .globl m2
                    #      global i32 m2_0 
    .type m2,@object
m2:
    .word 0
    .align 4
    .globl n2
                    #      global i32 n2_0 
    .type n2,@object
n2:
    .word 0
    .align 4
    .globl m1
                    #      global i32 m1_0 
    .type m1,@object
m1:
    .word 0
    .align 4
    .globl n1
                    #      global i32 n1_0 
    .type n1,@object
n1:
    .word 0
    .align 4
    .globl res
                    #      global Array:i32:[Some(100_0), Some(100_0)] res_0 
    .type res,@object
res:
    .zero 40000
    .align 4
    .globl b
                    #      global Array:i32:[Some(100_0), Some(100_0)] b_0 
    .type b,@object
b:
    .zero 40000
    .align 4
    .globl a
                    #      global Array:i32:[Some(100_0), Some(100_0)] a_0 
    .type a,@object
a:
    .zero 40000
    .align 4
    .globl MAX_SIZE
                    #      global i32 MAX_SIZE_0 
    .type MAX_SIZE,@object
MAX_SIZE:
    .word 100
