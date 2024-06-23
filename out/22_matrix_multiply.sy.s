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


.section ___func
    .text
    .align 4
              #                    regtab 
              #                          Define matrix_multiply_0 [] -> matrix_multiply_ret_0 
    .globl matrix_multiply
    .type matrix_multiply,@function
matrix_multiply:
              #                    mem layout:|ra_matrix_multiply:8 at 120120|s0_matrix_multiply:8 at 120112|i:4 at 120108|temp_0_ptr2globl:4 at 120104|temp_1_cmp:1 at 120103|none:3 at 120100|j:4 at 120096|temp_2_ptr2globl:4 at 120092|temp_3_cmp:1 at 120091|none:3 at 120088|k:4 at 120084|temp_4_ptr2globl:4 at 120080|temp_5_cmp:1 at 120079|none:7 at 120072|temp_6_index_ptr:8 at 120064|temp_7_ptr2globl:40000 at 80064|temp_8_array_ptr:8 at 80056|temp_9_array_ele:4 at 80052|temp_10_ptr2globl:40000 at 40052|none:4 at 40048|temp_11_array_ptr:8 at 40040|temp_12_array_ele:4 at 40036|temp_13_arithop:4 at 40032|temp_14_ptr2globl:40000 at 32|temp_15_array_ptr:8 at 24|temp_16_array_ele:4 at 20|temp_17_arithop:4 at 16|temp_18_arithop:4 at 12|temp_19_arithop:4 at 8|temp_20_arithop:4 at 4|none:4 at 0
              #                    occupy a0 with -120128_0
    li      a0, -120128
    li      a0, -120128
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_matrix_multiply_0 in mem offset_illegal
              #                    occupy a1 with 120120_0
    li      a1, 120120
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_matrix_multiply_0 in mem offset_illegal
              #                    occupy a2 with 120112_0
    li      a2, 120112
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 120128_0
    li      a3, 120128
    li      a3, 120128
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 i_21 
              #                          alloc i32 temp_0_ptr2globl_23 
              #                          alloc i1 temp_1_cmp_23 
              #                          alloc i32 j_25 
              #                          alloc i32 temp_2_ptr2globl_27 
              #                          alloc i1 temp_3_cmp_27 
              #                          alloc i32 k_29 
              #                          alloc i32 temp_4_ptr2globl_31 
              #                          alloc i1 temp_5_cmp_31 
              #                          alloc ptr->i32 temp_6_index_ptr_33 
              #                          alloc Array:i32:[Some(100_0), Some(100_0)] temp_7_ptr2globl_33 
              #                          alloc ptr->i32 temp_8_array_ptr_33 
              #                          alloc i32 temp_9_array_ele_33 
              #                          alloc Array:i32:[Some(100_0), Some(100_0)] temp_10_ptr2globl_33 
              #                          alloc ptr->i32 temp_11_array_ptr_33 
              #                          alloc i32 temp_12_array_ele_33 
              #                          alloc i32 temp_13_arithop_33 
              #                          alloc Array:i32:[Some(100_0), Some(100_0)] temp_14_ptr2globl_33 
              #                          alloc ptr->i32 temp_15_array_ptr_33 
              #                          alloc i32 temp_16_array_ele_33 
              #                          alloc i32 temp_17_arithop_33 
              #                          alloc i32 temp_18_arithop_33 
              #                          alloc i32 temp_19_arithop_29 
              #                          alloc i32 temp_20_arithop_25 
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          i_21 = i32 0_0 
              #                    occupy a0 with i_21
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_24 
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: i_21, tracked: true } | 
              #                          label while.head_24: 
.while.head_24:
              #                          new_var temp_0_ptr2globl_23:i32 
              #                          temp_0_ptr2globl_23 = load *m1_0:ptr->i32 
              #                    occupy a1 with *m1_0
              #                       load label m1 as ptr to reg
    la      a1, m1
              #                    occupy reg a1 with *m1_0
              #                    occupy a2 with temp_0_ptr2globl_23
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_1_cmp_23:i1 
              #                          temp_1_cmp_23 = icmp i32 Slt i_21, temp_0_ptr2globl_23 
              #                    occupy a0 with i_21
              #                    occupy a2 with temp_0_ptr2globl_23
              #                    occupy a3 with temp_1_cmp_23
    slt     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_1_cmp_23, label while.body_24, label while.exit_24 
              #                    occupy a3 with temp_1_cmp_23
              #                    free a3
              #                    occupy a3 with temp_1_cmp_23
    bnez    a3, .while.body_24
              #                    free a3
    j       .while.exit_24
              #                    regtab     a0:Freed { symidx: i_21, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a3:Freed { symidx: temp_1_cmp_23, tracked: true } | 
              #                          label while.body_24: 
.while.body_24:
              #                          j_25 = i32 0_0 
              #                    occupy a1 with j_25
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_28 
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: i_21, tracked: true } |     a1:Freed { symidx: j_25, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a3:Freed { symidx: temp_1_cmp_23, tracked: true } | 
              #                          label while.head_28: 
.while.head_28:
              #                          new_var temp_2_ptr2globl_27:i32 
              #                          temp_2_ptr2globl_27 = load *n2_0:ptr->i32 
              #                    occupy a4 with *n2_0
              #                       load label n2 as ptr to reg
    la      a4, n2
              #                    occupy reg a4 with *n2_0
              #                    occupy a5 with temp_2_ptr2globl_27
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_3_cmp_27:i1 
              #                          temp_3_cmp_27 = icmp i32 Slt j_25, temp_2_ptr2globl_27 
              #                    occupy a1 with j_25
              #                    occupy a5 with temp_2_ptr2globl_27
              #                    occupy a6 with temp_3_cmp_27
    slt     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                          br i1 temp_3_cmp_27, label while.body_28, label while.exit_28 
              #                    occupy a6 with temp_3_cmp_27
              #                    free a6
              #                    occupy a6 with temp_3_cmp_27
    bnez    a6, .while.body_28
              #                    free a6
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: i_21, tracked: true } |     a1:Freed { symidx: j_25, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a3:Freed { symidx: temp_1_cmp_23, tracked: true } |     a5:Freed { symidx: temp_2_ptr2globl_27, tracked: true } |     a6:Freed { symidx: temp_3_cmp_27, tracked: true } | 
              #                          label while.body_28: 
.while.body_28:
              #                          k_29 = i32 0_0 
              #                    occupy a4 with k_29
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: i_21, tracked: true } |     a1:Freed { symidx: j_25, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a3:Freed { symidx: temp_1_cmp_23, tracked: true } |     a4:Freed { symidx: k_29, tracked: true } |     a5:Freed { symidx: temp_2_ptr2globl_27, tracked: true } |     a6:Freed { symidx: temp_3_cmp_27, tracked: true } | 
              #                          label while.head_32: 
.while.head_32:
              #                          new_var temp_4_ptr2globl_31:i32 
              #                          temp_4_ptr2globl_31 = load *n1_0:ptr->i32 
              #                    occupy a7 with *n1_0
              #                       load label n1 as ptr to reg
    la      a7, n1
              #                    occupy reg a7 with *n1_0
              #                    occupy s1 with temp_4_ptr2globl_31
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_5_cmp_31:i1 
              #                          temp_5_cmp_31 = icmp i32 Slt k_29, temp_4_ptr2globl_31 
              #                    occupy a4 with k_29
              #                    occupy s1 with temp_4_ptr2globl_31
              #                    occupy s2 with temp_5_cmp_31
    slt     s2,a4,s1
              #                    free a4
              #                    free s1
              #                    free s2
              #                          br i1 temp_5_cmp_31, label while.body_32, label while.exit_32 
              #                    occupy s2 with temp_5_cmp_31
              #                    free s2
              #                    occupy s2 with temp_5_cmp_31
    bnez    s2, .while.body_32
              #                    free s2
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: i_21, tracked: true } |     a1:Freed { symidx: j_25, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a3:Freed { symidx: temp_1_cmp_23, tracked: true } |     a4:Freed { symidx: k_29, tracked: true } |     a5:Freed { symidx: temp_2_ptr2globl_27, tracked: true } |     a6:Freed { symidx: temp_3_cmp_27, tracked: true } |     s1:Freed { symidx: temp_4_ptr2globl_31, tracked: true } |     s2:Freed { symidx: temp_5_cmp_31, tracked: true } | 
              #                          label while.body_32: 
.while.body_32:
              #                          new_var temp_6_index_ptr_33:ptr->i32 
              #                          temp_6_index_ptr_33 = getelementptr res_0:Array:i32:[Some(100_0), Some(100_0)] [Some(i_21), Some(j_25)] 
              #                    occupy a7 with temp_6_index_ptr_33
    li      a7, 0
              #                    occupy s3 with 100_0
    li      s3, 100
              #                    occupy a0 with i_21
              #                    occupy s4 with _anonymous_of_res_0_0
    mul     s4,s3,a0
              #                    free s3
              #                    free a0
    add     a7,a7,s4
              #                    free s4
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy a1 with j_25
              #                    occupy s6 with _anonymous_of_res_0_0
    mul     s6,s5,a1
              #                    free s5
              #                    free a1
    add     a7,a7,s6
              #                    free s6
    slli a7,a7,2
              #                    occupy s7 with _anonymous_of_res_0_0
    la      s7, res
    add     a7,a7,s7
              #                    free s7
              #                    free a7
              #                          new_var temp_7_ptr2globl_33:Array:i32:[Some(100_0), Some(100_0)] 
              #                          temp_7_ptr2globl_33 = load *b_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy s8 with *b_0
              #                       load label b as ptr to reg
    la      s8, b
              #                    occupy reg s8 with *b_0
              #                    occupy s9 with temp_7_ptr2globl_33
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_8_array_ptr_33:ptr->i32 
              #                          temp_8_array_ptr_33 = getelementptr temp_7_ptr2globl_33:Array:i32:[Some(100_0), Some(100_0)] [Some(k_29), Some(j_25)] 
              #                    occupy s10 with temp_8_array_ptr_33
    li      s10, 0
              #                    found literal reg Some(s3) already exist with 100_0
              #                    occupy s3 with 100_0
              #                    occupy a4 with k_29
              #                    occupy s11 with _anonymous_of_temp_7_ptr2globl_33_0
    mul     s11,s3,a4
              #                    free s3
              #                    free a4
    add     s10,s10,s11
              #                    free s11
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy a1 with j_25
              #                    occupy s3 with _anonymous_of_temp_7_ptr2globl_33_0
    mul     s3,s5,a1
              #                    free s5
              #                    free a1
    add     s10,s10,s3
              #                    free s3
    slli s10,s10,2
    add     s10,s10,sp
              #                    occupy s3 with 80064_0
    li      s3, 80064
    li      s3, 80064
    add     s10,s3,s10
              #                    free s3
              #                    free s10
              #                          new_var temp_9_array_ele_33:i32 
              #                          temp_9_array_ele_33 = load temp_8_array_ptr_33:ptr->i32 
              #                    occupy s10 with temp_8_array_ptr_33
              #                    occupy s3 with temp_9_array_ele_33
    lw      s3,0(s10)
              #                    free s3
              #                    free s10
              #                          new_var temp_10_ptr2globl_33:Array:i32:[Some(100_0), Some(100_0)] 
              #                          temp_10_ptr2globl_33 = load *a_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy s4 with *a_0
              #                       load label a as ptr to reg
    la      s4, a
              #                    occupy reg s4 with *a_0
              #                    occupy s5 with temp_10_ptr2globl_33
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_11_array_ptr_33:ptr->i32 
              #                          temp_11_array_ptr_33 = getelementptr temp_10_ptr2globl_33:Array:i32:[Some(100_0), Some(100_0)] [Some(i_21), Some(k_29)] 
              #                    occupy s4 with temp_11_array_ptr_33
    li      s4, 0
              #                    occupy s6 with 100_0
    li      s6, 100
              #                    occupy a0 with i_21
              #                    occupy s7 with _anonymous_of_temp_10_ptr2globl_33_0
    mul     s7,s6,a0
              #                    free s6
              #                    free a0
    add     s4,s4,s7
              #                    free s7
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a4 with k_29
              #                    occupy s7 with _anonymous_of_temp_10_ptr2globl_33_0
    mul     s7,s6,a4
              #                    free s6
              #                    free a4
    add     s4,s4,s7
              #                    free s7
    slli s4,s4,2
    add     s4,s4,sp
              #                    occupy s6 with 40052_0
    li      s6, 40052
    li      s6, 40052
    add     s4,s6,s4
              #                    free s6
              #                    free s4
              #                          new_var temp_12_array_ele_33:i32 
              #                          temp_12_array_ele_33 = load temp_11_array_ptr_33:ptr->i32 
              #                    occupy s4 with temp_11_array_ptr_33
              #                    occupy s6 with temp_12_array_ele_33
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          new_var temp_13_arithop_33:i32 
              #                          temp_13_arithop_33 = Mul i32 temp_12_array_ele_33, temp_9_array_ele_33 
              #                    occupy s6 with temp_12_array_ele_33
              #                    occupy s3 with temp_9_array_ele_33
              #                    occupy s7 with temp_13_arithop_33
    mul     s7,s6,s3
              #                    free s6
              #                    free s3
              #                    free s7
              #                          new_var temp_14_ptr2globl_33:Array:i32:[Some(100_0), Some(100_0)] 
              #                          temp_14_ptr2globl_33 = load *res_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy s8 with *res_0
              #                       load label res as ptr to reg
    la      s8, res
              #                    occupy reg s8 with *res_0
              #                    occupy s11 with temp_14_ptr2globl_33
    lw      s11,0(s8)
              #                    free s11
              #                    free s8
              #                          new_var temp_15_array_ptr_33:ptr->i32 
              #                          temp_15_array_ptr_33 = getelementptr temp_14_ptr2globl_33:Array:i32:[Some(100_0), Some(100_0)] [Some(i_21), Some(j_25)] 
              #                    occupy s8 with temp_15_array_ptr_33
    li      s8, 0
              #                    store to i_21 in mem offset_illegal
              #                    occupy a0 with 120108_0
    li      a0, 120108
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_21
              #                    occupy a0 with 100_0
    li      a0, 100
              #                    store to j_25 in mem offset_illegal
              #                    occupy a1 with 120096_0
    li      a1, 120096
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with j_25
              #                    occupy a1 with i_21
              #                    load from i_21 in mem

              #                    occupy a1 with i_21
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_0_ptr2globl_23 in mem offset_illegal
              #                    occupy a2 with 120104_0
    li      a2, 120104
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_0_ptr2globl_23
              #                    occupy a2 with _anonymous_of_temp_14_ptr2globl_33_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s8,s8,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with j_25
              #                    load from j_25 in mem

              #                    occupy a2 with j_25
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to i_21 in mem offset_illegal
              #                    occupy a1 with 120108_0
    li      a1, 120108
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with i_21
              #                    occupy a1 with _anonymous_of_temp_14_ptr2globl_33_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     s8,s8,a1
              #                    free a1
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,32
              #                    free s8
              #                          new_var temp_16_array_ele_33:i32 
              #                          temp_16_array_ele_33 = load temp_15_array_ptr_33:ptr->i32 
              #                    occupy s8 with temp_15_array_ptr_33
              #                    occupy a0 with temp_16_array_ele_33
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_17_arithop_33:i32 
              #                          temp_17_arithop_33 = Add i32 temp_16_array_ele_33, temp_13_arithop_33 
              #                    occupy a0 with temp_16_array_ele_33
              #                    occupy s7 with temp_13_arithop_33
              #                    occupy a1 with temp_17_arithop_33
    add     a1,a0,s7
              #                    free a0
              #                    free s7
              #                    free a1
              #                          store temp_17_arithop_33:i32 temp_6_index_ptr_33:ptr->i32 
              #                    occupy a7 with temp_6_index_ptr_33
              #                    occupy a1 with temp_17_arithop_33
    sw      a1,0(a7)
              #                    free a1
              #                    free a7
              #                          mu res_0:104 
              #                          res_0 = chi res_0:104 
              #                          new_var temp_18_arithop_33:i32 
              #                          temp_18_arithop_33 = Add i32 k_29, 1_0 
              #                    occupy a4 with k_29
              #                    store to temp_16_array_ele_33 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_16_array_ele_33
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_17_arithop_33 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_17_arithop_33
              #                    occupy a1 with temp_18_arithop_33
    add     a1,a4,a0
              #                    free a4
              #                    free a0
              #                    free a1
              #                          k_29 = i32 temp_18_arithop_33 
              #                    occupy a1 with temp_18_arithop_33
              #                    occupy a4 with k_29
    mv      a4, a1
              #                    free a1
              #                    free a4
              #                          jump label: while.head_32 
              #                    store to temp_10_ptr2globl_33 in mem offset_illegal
              #                    occupy s5 with 40052_0
    li      s5, 40052
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_10_ptr2globl_33
              #                    store to temp_5_cmp_31 in mem offset_illegal
              #                    occupy s2 with 120079_0
    li      s2, 120079
    add     s2,sp,s2
    sb      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_5_cmp_31
              #                    store to temp_11_array_ptr_33 in mem offset_illegal
              #                    occupy s2 with 40040_0
    li      s2, 40040
    add     s2,sp,s2
    sd      s4,0(s2)
              #                    free s2
              #                    release s4 with temp_11_array_ptr_33
              #                    store to temp_12_array_ele_33 in mem offset_illegal
              #                    occupy s4 with 40036_0
    li      s4, 40036
    add     s4,sp,s4
    sw      s6,0(s4)
              #                    free s4
              #                    release s6 with temp_12_array_ele_33
              #                    store to temp_13_arithop_33 in mem offset_illegal
              #                    occupy s5 with 40032_0
    li      s5, 40032
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_13_arithop_33
              #                    store to temp_15_array_ptr_33 in mem offset legal
    sd      s8,24(sp)
              #                    release s8 with temp_15_array_ptr_33
              #                    store to temp_18_arithop_33 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_18_arithop_33
              #                    store to temp_8_array_ptr_33 in mem offset_illegal
              #                    occupy a1 with 80056_0
    li      a1, 80056
    add     a1,sp,a1
    sd      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_8_array_ptr_33
              #                    store to temp_9_array_ele_33 in mem offset_illegal
              #                    occupy s3 with 80052_0
    li      s3, 80052
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_9_array_ele_33
              #                    store to temp_7_ptr2globl_33 in mem offset_illegal
              #                    occupy s3 with 80064_0
    li      s3, 80064
    add     s3,sp,s3
    sw      s9,0(s3)
              #                    free s3
              #                    release s9 with temp_7_ptr2globl_33
              #                    store to j_25 in mem offset_illegal
              #                    occupy a2 with 120096_0
    li      a2, 120096
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with j_25
              #                    store to temp_4_ptr2globl_31 in mem offset_illegal
              #                    occupy a2 with 120080_0
    li      a2, 120080
    add     a2,sp,a2
    sw      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_4_ptr2globl_31
              #                    store to temp_6_index_ptr_33 in mem offset_illegal
              #                    occupy a0 with 120064_0
    li      a0, 120064
    add     a0,sp,a0
    sd      a7,0(a0)
              #                    free a0
              #                    release a7 with temp_6_index_ptr_33
              #                    store to temp_14_ptr2globl_33 in mem offset legal
    sw      s11,32(sp)
              #                    release s11 with temp_14_ptr2globl_33
              #                    occupy a1 with _anonymous_of_j_25_0
              #                    load from j_25 in mem

              #                    occupy a7 with j_25
    li      a7, 120096
    add     a7,sp,a7
    lw      a1,0(a7)
              #                    free a7
              #                    occupy a2 with _anonymous_of_temp_0_ptr2globl_23_0
              #                    load from temp_0_ptr2globl_23 in mem

              #                    occupy s1 with temp_0_ptr2globl_23
    li      s1, 120104
    add     s1,sp,s1
    lw      a2,0(s1)
              #                    free s1
              #                    store to temp_0_ptr2globl_23 in mem offset_illegal
              #                    occupy s1 with 120104_0
    li      s1, 120104
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_0_ptr2globl_23
              #                    occupy a0 with _anonymous_of_i_21_0
              #                    load from i_21 in mem

              #                    occupy s1 with i_21
    li      s1, 120108
    add     s1,sp,s1
    lw      a0,0(s1)
              #                    free s1
              #                    store to j_25 in mem offset_illegal
              #                    occupy a7 with 120096_0
    li      a7, 120096
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with j_25
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: i_21, tracked: true } |     a1:Freed { symidx: j_25, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a3:Freed { symidx: temp_1_cmp_23, tracked: true } |     a4:Freed { symidx: k_29, tracked: true } |     a5:Freed { symidx: temp_2_ptr2globl_27, tracked: true } |     a6:Freed { symidx: temp_3_cmp_27, tracked: true } |     s1:Freed { symidx: temp_4_ptr2globl_31, tracked: true } |     s2:Freed { symidx: temp_5_cmp_31, tracked: true } | 
              #                          label while.exit_32: 
.while.exit_32:
              #                          new_var temp_19_arithop_29:i32 
              #                          temp_19_arithop_29 = Add i32 j_25, 1_0 
              #                    occupy a1 with j_25
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_19_arithop_29
    add     s3,a1,a7
              #                    free a1
              #                    free a7
              #                    free s3
              #                          j_25 = i32 temp_19_arithop_29 
              #                    occupy s3 with temp_19_arithop_29
              #                    occupy a1 with j_25
    mv      a1, s3
              #                    free s3
              #                    free a1
              #                          jump label: while.head_28 
              #                    store to temp_2_ptr2globl_27 in mem offset_illegal
              #                    occupy a5 with 120092_0
    li      a5, 120092
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_2_ptr2globl_27
              #                    store to temp_5_cmp_31 in mem offset_illegal
              #                    occupy a5 with 120079_0
    li      a5, 120079
    add     a5,sp,a5
    sb      s2,0(a5)
              #                    free a5
              #                    release s2 with temp_5_cmp_31
              #                    store to temp_3_cmp_27 in mem offset_illegal
              #                    occupy a6 with 120091_0
    li      a6, 120091
    add     a6,sp,a6
    sb      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_3_cmp_27
              #                    store to temp_19_arithop_29 in mem offset legal
    sw      s3,8(sp)
              #                    release s3 with temp_19_arithop_29
              #                    store to temp_4_ptr2globl_31 in mem offset_illegal
              #                    occupy a6 with 120080_0
    li      a6, 120080
    add     a6,sp,a6
    sw      s1,0(a6)
              #                    free a6
              #                    release s1 with temp_4_ptr2globl_31
              #                    store to k_29 in mem offset_illegal
              #                    occupy a4 with 120084_0
    li      a4, 120084
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with k_29
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: i_21, tracked: true } |     a1:Freed { symidx: j_25, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a3:Freed { symidx: temp_1_cmp_23, tracked: true } |     a5:Freed { symidx: temp_2_ptr2globl_27, tracked: true } |     a6:Freed { symidx: temp_3_cmp_27, tracked: true } | 
              #                          label while.exit_28: 
.while.exit_28:
              #                          new_var temp_20_arithop_25:i32 
              #                          temp_20_arithop_25 = Add i32 i_21, 1_0 
              #                    occupy a0 with i_21
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a7 with temp_20_arithop_25
    add     a7,a0,a4
              #                    free a0
              #                    free a4
              #                    free a7
              #                          i_21 = i32 temp_20_arithop_25 
              #                    occupy a7 with temp_20_arithop_25
              #                    occupy a0 with i_21
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_24 
              #                    store to temp_2_ptr2globl_27 in mem offset_illegal
              #                    occupy a5 with 120092_0
    li      a5, 120092
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_2_ptr2globl_27
              #                    store to temp_1_cmp_23 in mem offset_illegal
              #                    occupy a3 with 120103_0
    li      a3, 120103
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_1_cmp_23
              #                    store to temp_3_cmp_27 in mem offset_illegal
              #                    occupy a3 with 120091_0
    li      a3, 120091
    add     a3,sp,a3
    sb      a6,0(a3)
              #                    free a3
              #                    release a6 with temp_3_cmp_27
              #                    store to j_25 in mem offset_illegal
              #                    occupy a1 with 120096_0
    li      a1, 120096
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with j_25
              #                    store to temp_0_ptr2globl_23 in mem offset_illegal
              #                    occupy a1 with 120104_0
    li      a1, 120104
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_0_ptr2globl_23
              #                    store to temp_20_arithop_25 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_20_arithop_25
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: i_21, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a3:Freed { symidx: temp_1_cmp_23, tracked: true } | 
              #                          label while.exit_24: 
.while.exit_24:
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 40152|s0_main:8 at 40144|i:4 at 40140|j:4 at 40136|temp_21_ret_of_getint:4 at 40132|temp_22_ret_of_getint:4 at 40128|temp_23_ptr2globl:4 at 40124|temp_24_cmp:1 at 40123|none:3 at 40120|temp_25_ptr2globl:4 at 40116|temp_26_cmp:1 at 40115|none:3 at 40112|temp_27_index_ptr:8 at 40104|temp_28_ret_of_getint:4 at 40100|temp_29_arithop:4 at 40096|temp_30_arithop:4 at 40092|temp_31_ret_of_getint:4 at 40088|temp_32_ret_of_getint:4 at 40084|temp_33_ptr2globl:4 at 40080|temp_34_cmp:1 at 40079|none:3 at 40076|temp_35_ptr2globl:4 at 40072|temp_36_cmp:1 at 40071|none:7 at 40064|temp_37_index_ptr:8 at 40056|temp_38_ret_of_getint:4 at 40052|temp_39_arithop:4 at 40048|temp_40_arithop:4 at 40044|temp_41_ptr2globl:4 at 40040|temp_42_cmp:1 at 40039|none:3 at 40036|temp_43_ptr2globl:4 at 40032|temp_44_cmp:1 at 40031|none:3 at 40028|temp_45_ptr2globl:40000 at 28|none:4 at 24|temp_46_array_ptr:8 at 16|temp_47_array_ele:4 at 12|temp_48_arithop:4 at 8|temp_49_arithop:4 at 4|none:4 at 0
              #                    occupy a0 with -40160_0
    li      a0, -40160
    li      a0, -40160
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 40152_0
    li      a1, 40152
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 40144_0
    li      a2, 40144
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 40160_0
    li      a3, 40160
    li      a3, 40160
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 i_39 
              #                          alloc i32 j_39 
              #                          alloc i32 temp_21_ret_of_getint_39 
              #                          alloc i32 temp_22_ret_of_getint_39 
              #                          alloc i32 temp_23_ptr2globl_44 
              #                          alloc i1 temp_24_cmp_44 
              #                          alloc i32 temp_25_ptr2globl_48 
              #                          alloc i1 temp_26_cmp_48 
              #                          alloc ptr->i32 temp_27_index_ptr_50 
              #                          alloc i32 temp_28_ret_of_getint_50 
              #                          alloc i32 temp_29_arithop_50 
              #                          alloc i32 temp_30_arithop_46 
              #                          alloc i32 temp_31_ret_of_getint_39 
              #                          alloc i32 temp_32_ret_of_getint_39 
              #                          alloc i32 temp_33_ptr2globl_57 
              #                          alloc i1 temp_34_cmp_57 
              #                          alloc i32 temp_35_ptr2globl_61 
              #                          alloc i1 temp_36_cmp_61 
              #                          alloc ptr->i32 temp_37_index_ptr_63 
              #                          alloc i32 temp_38_ret_of_getint_63 
              #                          alloc i32 temp_39_arithop_63 
              #                          alloc i32 temp_40_arithop_59 
              #                          alloc i32 temp_41_ptr2globl_69 
              #                          alloc i1 temp_42_cmp_69 
              #                          alloc i32 temp_43_ptr2globl_73 
              #                          alloc i1 temp_44_cmp_73 
              #                          alloc Array:i32:[Some(100_0), Some(100_0)] temp_45_ptr2globl_75 
              #                          alloc ptr->i32 temp_46_array_ptr_75 
              #                          alloc i32 temp_47_array_ele_75 
              #                          alloc i32 temp_48_arithop_75 
              #                          alloc i32 temp_49_arithop_71 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var i_39:i32 
              #                          new_var j_39:i32 
              #                          new_var temp_21_ret_of_getint_39:i32 
              #                          temp_21_ret_of_getint_39 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_21_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 40132_0
    li      a0, 40132
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_21_ret_of_getint_39:i32 *m1_0:ptr->i32 
              #                    occupy a1 with *m1_0
              #                       load label m1 as ptr to reg
    la      a1, m1
              #                    occupy reg a1 with *m1_0
              #                    occupy a0 with temp_21_ret_of_getint_39
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_22_ret_of_getint_39:i32 
              #                          temp_22_ret_of_getint_39 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_21_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 40132_0
    li      a0, 40132
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_21_ret_of_getint_39
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_22_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 40128_0
    li      a0, 40128
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_22_ret_of_getint_39:i32 *n1_0:ptr->i32 
              #                    occupy a1 with *n1_0
              #                       load label n1 as ptr to reg
    la      a1, n1
              #                    occupy reg a1 with *n1_0
              #                    occupy a0 with temp_22_ret_of_getint_39
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          i_39 = i32 0_0 
              #                    occupy a2 with i_39
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_45 
    j       .while.head_45
              #                    regtab     a0:Freed { symidx: temp_22_ret_of_getint_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } | 
              #                          label while.head_45: 
.while.head_45:
              #                          new_var temp_23_ptr2globl_44:i32 
              #                          temp_23_ptr2globl_44 = load *m1_0:ptr->i32 
              #                    occupy a1 with *m1_0
              #                       load label m1 as ptr to reg
    la      a1, m1
              #                    occupy reg a1 with *m1_0
              #                    occupy a3 with temp_23_ptr2globl_44
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_24_cmp_44:i1 
              #                          temp_24_cmp_44 = icmp i32 Slt i_39, temp_23_ptr2globl_44 
              #                    occupy a2 with i_39
              #                    occupy a3 with temp_23_ptr2globl_44
              #                    occupy a4 with temp_24_cmp_44
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_24_cmp_44, label while.body_45, label while.exit_45 
              #                    occupy a4 with temp_24_cmp_44
              #                    free a4
              #                    occupy a4 with temp_24_cmp_44
    bnez    a4, .while.body_45
              #                    free a4
    j       .while.exit_45
              #                    regtab     a0:Freed { symidx: temp_22_ret_of_getint_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_44, tracked: true } |     a4:Freed { symidx: temp_24_cmp_44, tracked: true } | 
              #                          label while.body_45: 
.while.body_45:
              #                          j_39 = i32 0_0 
              #                    occupy a1 with j_39
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_49 
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: temp_22_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: j_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_44, tracked: true } |     a4:Freed { symidx: temp_24_cmp_44, tracked: true } | 
              #                          label while.head_49: 
.while.head_49:
              #                          new_var temp_25_ptr2globl_48:i32 
              #                          temp_25_ptr2globl_48 = load *n1_0:ptr->i32 
              #                    occupy a5 with *n1_0
              #                       load label n1 as ptr to reg
    la      a5, n1
              #                    occupy reg a5 with *n1_0
              #                    occupy a6 with temp_25_ptr2globl_48
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_26_cmp_48:i1 
              #                          temp_26_cmp_48 = icmp i32 Slt j_39, temp_25_ptr2globl_48 
              #                    occupy a1 with j_39
              #                    occupy a6 with temp_25_ptr2globl_48
              #                    occupy a7 with temp_26_cmp_48
    slt     a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                          br i1 temp_26_cmp_48, label while.body_49, label while.exit_49 
              #                    occupy a7 with temp_26_cmp_48
              #                    free a7
              #                    occupy a7 with temp_26_cmp_48
    bnez    a7, .while.body_49
              #                    free a7
    j       .while.exit_49
              #                    regtab     a0:Freed { symidx: temp_22_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: j_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_44, tracked: true } |     a4:Freed { symidx: temp_24_cmp_44, tracked: true } |     a6:Freed { symidx: temp_25_ptr2globl_48, tracked: true } |     a7:Freed { symidx: temp_26_cmp_48, tracked: true } | 
              #                          label while.body_49: 
.while.body_49:
              #                          new_var temp_27_index_ptr_50:ptr->i32 
              #                          temp_27_index_ptr_50 = getelementptr a_0:Array:i32:[Some(100_0), Some(100_0)] [Some(i_39), Some(j_39)] 
              #                    occupy a5 with temp_27_index_ptr_50
    li      a5, 0
              #                    occupy s1 with 100_0
    li      s1, 100
              #                    occupy a2 with i_39
              #                    occupy s2 with _anonymous_of_a_0_0
    mul     s2,s1,a2
              #                    free s1
              #                    free a2
    add     a5,a5,s2
              #                    free s2
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a1 with j_39
              #                    occupy s4 with _anonymous_of_a_0_0
    mul     s4,s3,a1
              #                    free s3
              #                    free a1
    add     a5,a5,s4
              #                    free s4
    slli a5,a5,2
              #                    occupy s5 with _anonymous_of_a_0_0
    la      s5, a
    add     a5,a5,s5
              #                    free s5
              #                    free a5
              #                          new_var temp_28_ret_of_getint_50:i32 
              #                          temp_28_ret_of_getint_50 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_22_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 40128_0
    li      a0, 40128
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_22_ret_of_getint_39
              #                    store to j_39 in mem offset_illegal
              #                    occupy a0 with 40136_0
    li      a0, 40136
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with j_39
              #                    store to i_39 in mem offset_illegal
              #                    occupy a1 with 40140_0
    li      a1, 40140
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with i_39
              #                    store to temp_23_ptr2globl_44 in mem offset_illegal
              #                    occupy a2 with 40124_0
    li      a2, 40124
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_23_ptr2globl_44
              #                    store to temp_24_cmp_44 in mem offset_illegal
              #                    occupy a3 with 40123_0
    li      a3, 40123
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_24_cmp_44
              #                    store to temp_27_index_ptr_50 in mem offset_illegal
              #                    occupy a4 with 40104_0
    li      a4, 40104
    add     a4,sp,a4
    sd      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_27_index_ptr_50
              #                    store to temp_25_ptr2globl_48 in mem offset_illegal
              #                    occupy a5 with 40116_0
    li      a5, 40116
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_25_ptr2globl_48
              #                    store to temp_26_cmp_48 in mem offset_illegal
              #                    occupy a6 with 40115_0
    li      a6, 40115
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_26_cmp_48
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_28_ret_of_getint_50 in mem offset_illegal
              #                    occupy a0 with 40100_0
    li      a0, 40100
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_28_ret_of_getint_50:i32 temp_27_index_ptr_50:ptr->i32 
              #                    occupy a7 with temp_27_index_ptr_50
              #                    load from temp_27_index_ptr_50 in mem
              #                    occupy a7 with temp_27_index_ptr_50
    add     a7,sp,a7
    ld      a7,0(a7)
              #                    free a7
              #                    occupy a0 with temp_28_ret_of_getint_50
    sw      a0,0(a7)
              #                    free a0
              #                    free a7
              #                          mu a_0:161 
              #                          a_0 = chi a_0:161 
              #                          new_var temp_29_arithop_50:i32 
              #                          temp_29_arithop_50 = Add i32 j_39, 1_0 
              #                    occupy s1 with j_39
              #                    load from j_39 in mem

              #                    occupy s1 with j_39
    add     s1,sp,s1
    lw      s1,0(s1)
              #                    free s1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_29_arithop_50
    add     s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                          j_39 = i32 temp_29_arithop_50 
              #                    occupy s3 with temp_29_arithop_50
              #                    occupy s1 with j_39
    mv      s1, s3
              #                    free s3
              #                    free s1
              #                          jump label: while.head_49 
              #                    store to temp_28_ret_of_getint_50 in mem offset_illegal
              #                    occupy a0 with 40100_0
    li      a0, 40100
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_28_ret_of_getint_50
              #                    store to j_39 in mem offset_illegal
              #                    occupy a0 with 40136_0
    li      a0, 40136
    add     a0,sp,a0
    sw      s1,0(a0)
              #                    free a0
              #                    release s1 with j_39
              #                    store to temp_29_arithop_50 in mem offset_illegal
              #                    occupy a1 with 40096_0
    li      a1, 40096
    add     a1,sp,a1
    sw      s3,0(a1)
              #                    free a1
              #                    release s3 with temp_29_arithop_50
              #                    store to temp_27_index_ptr_50 in mem offset_illegal
              #                    occupy a2 with 40104_0
    li      a2, 40104
    add     a2,sp,a2
    sd      a7,0(a2)
              #                    free a2
              #                    release a7 with temp_27_index_ptr_50
              #                    occupy a0 with _anonymous_of_temp_22_ret_of_getint_39_0
              #                    load from temp_22_ret_of_getint_39 in mem

              #                    occupy a3 with temp_22_ret_of_getint_39
    li      a3, 40128
    add     a3,sp,a3
    lw      a0,0(a3)
              #                    free a3
              #                    occupy a2 with _anonymous_of_i_39_0
              #                    load from i_39 in mem

              #                    occupy a4 with i_39
    li      a4, 40140
    add     a4,sp,a4
    lw      a2,0(a4)
              #                    free a4
              #                    store to i_39 in mem offset_illegal
              #                    occupy a4 with 40140_0
    li      a4, 40140
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with i_39
              #                    occupy a4 with _anonymous_of_temp_24_cmp_44_0
              #                    load from temp_24_cmp_44 in mem
              #                    occupy a5 with temp_24_cmp_44
    li      a5, 40123
    add     a5,sp,a5
    lb      a4,0(a5)
              #                    free a5
              #                    occupy a1 with _anonymous_of_j_39_0
              #                    load from j_39 in mem

              #                    occupy a6 with j_39
    li      a6, 40136
    add     a6,sp,a6
    lw      a1,0(a6)
              #                    free a6
              #                    store to temp_24_cmp_44 in mem offset_illegal
              #                    occupy a5 with 40123_0
    li      a5, 40123
    add     a5,sp,a5
    sb      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_24_cmp_44
              #                    store to temp_22_ret_of_getint_39 in mem offset_illegal
              #                    occupy a3 with 40128_0
    li      a3, 40128
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_22_ret_of_getint_39
              #                    occupy a3 with _anonymous_of_temp_23_ptr2globl_44_0
              #                    load from temp_23_ptr2globl_44 in mem

              #                    occupy a5 with temp_23_ptr2globl_44
    li      a5, 40124
    add     a5,sp,a5
    lw      a3,0(a5)
              #                    free a5
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: temp_22_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: j_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_44, tracked: true } |     a4:Freed { symidx: temp_24_cmp_44, tracked: true } |     a6:Freed { symidx: temp_25_ptr2globl_48, tracked: true } |     a7:Freed { symidx: temp_26_cmp_48, tracked: true } | 
              #                          label while.exit_49: 
.while.exit_49:
              #                          new_var temp_30_arithop_46:i32 
              #                          temp_30_arithop_46 = Add i32 i_39, 1_0 
              #                    occupy a2 with i_39
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s1 with temp_30_arithop_46
    add     s1,a2,a5
              #                    free a2
              #                    free a5
              #                    free s1
              #                          i_39 = i32 temp_30_arithop_46 
              #                    occupy s1 with temp_30_arithop_46
              #                    occupy a2 with i_39
    mv      a2, s1
              #                    free s1
              #                    free a2
              #                          jump label: while.head_45 
              #                    store to temp_24_cmp_44 in mem offset_illegal
              #                    occupy a4 with 40123_0
    li      a4, 40123
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_24_cmp_44
              #                    store to temp_25_ptr2globl_48 in mem offset_illegal
              #                    occupy a4 with 40116_0
    li      a4, 40116
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_25_ptr2globl_48
              #                    store to j_39 in mem offset_illegal
              #                    occupy a1 with 40136_0
    li      a1, 40136
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with j_39
              #                    store to temp_30_arithop_46 in mem offset_illegal
              #                    occupy a1 with 40092_0
    li      a1, 40092
    add     a1,sp,a1
    sw      s1,0(a1)
              #                    free a1
              #                    release s1 with temp_30_arithop_46
              #                    store to temp_23_ptr2globl_44 in mem offset_illegal
              #                    occupy a3 with 40124_0
    li      a3, 40124
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_23_ptr2globl_44
              #                    store to temp_26_cmp_48 in mem offset_illegal
              #                    occupy a3 with 40115_0
    li      a3, 40115
    add     a3,sp,a3
    sb      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_26_cmp_48
    j       .while.head_45
              #                    regtab     a0:Freed { symidx: temp_22_ret_of_getint_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_44, tracked: true } |     a4:Freed { symidx: temp_24_cmp_44, tracked: true } | 
              #                          label while.exit_45: 
.while.exit_45:
              #                          new_var temp_31_ret_of_getint_39:i32 
              #                          temp_31_ret_of_getint_39 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_22_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 40128_0
    li      a0, 40128
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_22_ret_of_getint_39
              #                    store to i_39 in mem offset_illegal
              #                    occupy a0 with 40140_0
    li      a0, 40140
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with i_39
              #                    store to temp_23_ptr2globl_44 in mem offset_illegal
              #                    occupy a1 with 40124_0
    li      a1, 40124
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_23_ptr2globl_44
              #                    store to temp_24_cmp_44 in mem offset_illegal
              #                    occupy a2 with 40123_0
    li      a2, 40123
    add     a2,sp,a2
    sb      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_24_cmp_44
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_31_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 40088_0
    li      a0, 40088
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_31_ret_of_getint_39:i32 *m2_0:ptr->i32 
              #                    occupy a3 with *m2_0
              #                       load label m2 as ptr to reg
    la      a3, m2
              #                    occupy reg a3 with *m2_0
              #                    occupy a0 with temp_31_ret_of_getint_39
    sw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_32_ret_of_getint_39:i32 
              #                          temp_32_ret_of_getint_39 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_31_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 40088_0
    li      a0, 40088
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_31_ret_of_getint_39
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_32_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 40084_0
    li      a0, 40084
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_32_ret_of_getint_39:i32 *n2_0:ptr->i32 
              #                    occupy a1 with *n2_0
              #                       load label n2 as ptr to reg
    la      a1, n2
              #                    occupy reg a1 with *n2_0
              #                    occupy a0 with temp_32_ret_of_getint_39
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          i_39 = i32 0_0 
              #                    occupy a2 with i_39
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_58 
    j       .while.head_58
              #                    regtab     a0:Freed { symidx: temp_32_ret_of_getint_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } | 
              #                          label while.head_58: 
.while.head_58:
              #                          new_var temp_33_ptr2globl_57:i32 
              #                          temp_33_ptr2globl_57 = load *m2_0:ptr->i32 
              #                    occupy a1 with *m2_0
              #                       load label m2 as ptr to reg
    la      a1, m2
              #                    occupy reg a1 with *m2_0
              #                    occupy a3 with temp_33_ptr2globl_57
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_34_cmp_57:i1 
              #                          temp_34_cmp_57 = icmp i32 Slt i_39, temp_33_ptr2globl_57 
              #                    occupy a2 with i_39
              #                    occupy a3 with temp_33_ptr2globl_57
              #                    occupy a4 with temp_34_cmp_57
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_34_cmp_57, label while.body_58, label while.exit_58 
              #                    occupy a4 with temp_34_cmp_57
              #                    free a4
              #                    occupy a4 with temp_34_cmp_57
    bnez    a4, .while.body_58
              #                    free a4
    j       .while.exit_58
              #                    regtab     a0:Freed { symidx: temp_32_ret_of_getint_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: temp_33_ptr2globl_57, tracked: true } |     a4:Freed { symidx: temp_34_cmp_57, tracked: true } | 
              #                          label while.body_58: 
.while.body_58:
              #                          j_39 = i32 0_0 
              #                    occupy a1 with j_39
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: temp_32_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: j_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: temp_33_ptr2globl_57, tracked: true } |     a4:Freed { symidx: temp_34_cmp_57, tracked: true } | 
              #                          label while.head_62: 
.while.head_62:
              #                          new_var temp_35_ptr2globl_61:i32 
              #                          temp_35_ptr2globl_61 = load *n2_0:ptr->i32 
              #                    occupy a5 with *n2_0
              #                       load label n2 as ptr to reg
    la      a5, n2
              #                    occupy reg a5 with *n2_0
              #                    occupy a6 with temp_35_ptr2globl_61
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_36_cmp_61:i1 
              #                          temp_36_cmp_61 = icmp i32 Slt j_39, temp_35_ptr2globl_61 
              #                    occupy a1 with j_39
              #                    occupy a6 with temp_35_ptr2globl_61
              #                    occupy a7 with temp_36_cmp_61
    slt     a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                          br i1 temp_36_cmp_61, label while.body_62, label while.exit_62 
              #                    occupy a7 with temp_36_cmp_61
              #                    free a7
              #                    occupy a7 with temp_36_cmp_61
    bnez    a7, .while.body_62
              #                    free a7
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: temp_32_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: j_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: temp_33_ptr2globl_57, tracked: true } |     a4:Freed { symidx: temp_34_cmp_57, tracked: true } |     a6:Freed { symidx: temp_35_ptr2globl_61, tracked: true } |     a7:Freed { symidx: temp_36_cmp_61, tracked: true } | 
              #                          label while.body_62: 
.while.body_62:
              #                          new_var temp_37_index_ptr_63:ptr->i32 
              #                          temp_37_index_ptr_63 = getelementptr b_0:Array:i32:[Some(100_0), Some(100_0)] [Some(i_39), Some(j_39)] 
              #                    occupy a5 with temp_37_index_ptr_63
    li      a5, 0
              #                    occupy s1 with 100_0
    li      s1, 100
              #                    occupy a2 with i_39
              #                    occupy s2 with _anonymous_of_b_0_0
    mul     s2,s1,a2
              #                    free s1
              #                    free a2
    add     a5,a5,s2
              #                    free s2
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a1 with j_39
              #                    occupy s4 with _anonymous_of_b_0_0
    mul     s4,s3,a1
              #                    free s3
              #                    free a1
    add     a5,a5,s4
              #                    free s4
    slli a5,a5,2
              #                    occupy s5 with _anonymous_of_b_0_0
    la      s5, b
    add     a5,a5,s5
              #                    free s5
              #                    free a5
              #                          new_var temp_38_ret_of_getint_63:i32 
              #                          temp_38_ret_of_getint_63 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_32_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 40084_0
    li      a0, 40084
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_32_ret_of_getint_39
              #                    store to j_39 in mem offset_illegal
              #                    occupy a0 with 40136_0
    li      a0, 40136
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with j_39
              #                    store to i_39 in mem offset_illegal
              #                    occupy a1 with 40140_0
    li      a1, 40140
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with i_39
              #                    store to temp_33_ptr2globl_57 in mem offset_illegal
              #                    occupy a2 with 40080_0
    li      a2, 40080
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_33_ptr2globl_57
              #                    store to temp_34_cmp_57 in mem offset_illegal
              #                    occupy a3 with 40079_0
    li      a3, 40079
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_34_cmp_57
              #                    store to temp_37_index_ptr_63 in mem offset_illegal
              #                    occupy a4 with 40056_0
    li      a4, 40056
    add     a4,sp,a4
    sd      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_37_index_ptr_63
              #                    store to temp_35_ptr2globl_61 in mem offset_illegal
              #                    occupy a5 with 40072_0
    li      a5, 40072
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_35_ptr2globl_61
              #                    store to temp_36_cmp_61 in mem offset_illegal
              #                    occupy a6 with 40071_0
    li      a6, 40071
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_36_cmp_61
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_38_ret_of_getint_63 in mem offset_illegal
              #                    occupy a0 with 40052_0
    li      a0, 40052
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_38_ret_of_getint_63:i32 temp_37_index_ptr_63:ptr->i32 
              #                    occupy a7 with temp_37_index_ptr_63
              #                    load from temp_37_index_ptr_63 in mem
              #                    occupy a7 with temp_37_index_ptr_63
    add     a7,sp,a7
    ld      a7,0(a7)
              #                    free a7
              #                    occupy a0 with temp_38_ret_of_getint_63
    sw      a0,0(a7)
              #                    free a0
              #                    free a7
              #                          mu b_0:210 
              #                          b_0 = chi b_0:210 
              #                          new_var temp_39_arithop_63:i32 
              #                          temp_39_arithop_63 = Add i32 j_39, 1_0 
              #                    occupy s1 with j_39
              #                    load from j_39 in mem

              #                    occupy s1 with j_39
    add     s1,sp,s1
    lw      s1,0(s1)
              #                    free s1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_39_arithop_63
    add     s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                          j_39 = i32 temp_39_arithop_63 
              #                    occupy s3 with temp_39_arithop_63
              #                    occupy s1 with j_39
    mv      s1, s3
              #                    free s3
              #                    free s1
              #                          jump label: while.head_62 
              #                    store to temp_38_ret_of_getint_63 in mem offset_illegal
              #                    occupy a0 with 40052_0
    li      a0, 40052
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_38_ret_of_getint_63
              #                    store to j_39 in mem offset_illegal
              #                    occupy a0 with 40136_0
    li      a0, 40136
    add     a0,sp,a0
    sw      s1,0(a0)
              #                    free a0
              #                    release s1 with j_39
              #                    store to temp_39_arithop_63 in mem offset_illegal
              #                    occupy a1 with 40048_0
    li      a1, 40048
    add     a1,sp,a1
    sw      s3,0(a1)
              #                    free a1
              #                    release s3 with temp_39_arithop_63
              #                    store to temp_37_index_ptr_63 in mem offset_illegal
              #                    occupy a2 with 40056_0
    li      a2, 40056
    add     a2,sp,a2
    sd      a7,0(a2)
              #                    free a2
              #                    release a7 with temp_37_index_ptr_63
              #                    occupy a0 with _anonymous_of_temp_32_ret_of_getint_39_0
              #                    load from temp_32_ret_of_getint_39 in mem

              #                    occupy a3 with temp_32_ret_of_getint_39
    li      a3, 40084
    add     a3,sp,a3
    lw      a0,0(a3)
              #                    free a3
              #                    occupy a2 with _anonymous_of_i_39_0
              #                    load from i_39 in mem

              #                    occupy a4 with i_39
    li      a4, 40140
    add     a4,sp,a4
    lw      a2,0(a4)
              #                    free a4
              #                    store to i_39 in mem offset_illegal
              #                    occupy a4 with 40140_0
    li      a4, 40140
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with i_39
              #                    occupy a4 with _anonymous_of_temp_34_cmp_57_0
              #                    load from temp_34_cmp_57 in mem
              #                    occupy a5 with temp_34_cmp_57
    li      a5, 40079
    add     a5,sp,a5
    lb      a4,0(a5)
              #                    free a5
              #                    occupy a1 with _anonymous_of_j_39_0
              #                    load from j_39 in mem

              #                    occupy a6 with j_39
    li      a6, 40136
    add     a6,sp,a6
    lw      a1,0(a6)
              #                    free a6
              #                    store to temp_34_cmp_57 in mem offset_illegal
              #                    occupy a5 with 40079_0
    li      a5, 40079
    add     a5,sp,a5
    sb      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_34_cmp_57
              #                    store to temp_32_ret_of_getint_39 in mem offset_illegal
              #                    occupy a3 with 40084_0
    li      a3, 40084
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_32_ret_of_getint_39
              #                    occupy a3 with _anonymous_of_temp_33_ptr2globl_57_0
              #                    load from temp_33_ptr2globl_57 in mem

              #                    occupy a5 with temp_33_ptr2globl_57
    li      a5, 40080
    add     a5,sp,a5
    lw      a3,0(a5)
              #                    free a5
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: temp_32_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: j_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: temp_33_ptr2globl_57, tracked: true } |     a4:Freed { symidx: temp_34_cmp_57, tracked: true } |     a6:Freed { symidx: temp_35_ptr2globl_61, tracked: true } |     a7:Freed { symidx: temp_36_cmp_61, tracked: true } | 
              #                          label while.exit_62: 
.while.exit_62:
              #                          new_var temp_40_arithop_59:i32 
              #                          temp_40_arithop_59 = Add i32 i_39, 1_0 
              #                    occupy a2 with i_39
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s1 with temp_40_arithop_59
    add     s1,a2,a5
              #                    free a2
              #                    free a5
              #                    free s1
              #                          i_39 = i32 temp_40_arithop_59 
              #                    occupy s1 with temp_40_arithop_59
              #                    occupy a2 with i_39
    mv      a2, s1
              #                    free s1
              #                    free a2
              #                          jump label: while.head_58 
              #                    store to temp_34_cmp_57 in mem offset_illegal
              #                    occupy a4 with 40079_0
    li      a4, 40079
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_34_cmp_57
              #                    store to temp_35_ptr2globl_61 in mem offset_illegal
              #                    occupy a4 with 40072_0
    li      a4, 40072
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_35_ptr2globl_61
              #                    store to j_39 in mem offset_illegal
              #                    occupy a1 with 40136_0
    li      a1, 40136
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with j_39
              #                    store to temp_40_arithop_59 in mem offset_illegal
              #                    occupy a1 with 40044_0
    li      a1, 40044
    add     a1,sp,a1
    sw      s1,0(a1)
              #                    free a1
              #                    release s1 with temp_40_arithop_59
              #                    store to temp_33_ptr2globl_57 in mem offset_illegal
              #                    occupy a3 with 40080_0
    li      a3, 40080
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_33_ptr2globl_57
              #                    store to temp_36_cmp_61 in mem offset_illegal
              #                    occupy a3 with 40071_0
    li      a3, 40071
    add     a3,sp,a3
    sb      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_36_cmp_61
    j       .while.head_58
              #                    regtab     a0:Freed { symidx: temp_32_ret_of_getint_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: temp_33_ptr2globl_57, tracked: true } |     a4:Freed { symidx: temp_34_cmp_57, tracked: true } | 
              #                          label while.exit_58: 
.while.exit_58:
              #                           Call void matrix_multiply_0() 
              #                    saved register dumping to mem
              #                    store to temp_32_ret_of_getint_39 in mem offset_illegal
              #                    occupy a0 with 40084_0
    li      a0, 40084
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_32_ret_of_getint_39
              #                    store to i_39 in mem offset_illegal
              #                    occupy a0 with 40140_0
    li      a0, 40140
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with i_39
              #                    store to temp_33_ptr2globl_57 in mem offset_illegal
              #                    occupy a1 with 40080_0
    li      a1, 40080
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_33_ptr2globl_57
              #                    store to temp_34_cmp_57 in mem offset_illegal
              #                    occupy a2 with 40079_0
    li      a2, 40079
    add     a2,sp,a2
    sb      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_34_cmp_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    matrix_multiply
              #                          i_39 = i32 0_0 
              #                    occupy a3 with i_39
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a3:Freed { symidx: i_39, tracked: true } | 
              #                          label while.head_70: 
.while.head_70:
              #                          new_var temp_41_ptr2globl_69:i32 
              #                          temp_41_ptr2globl_69 = load *m1_0:ptr->i32 
              #                    occupy a0 with *m1_0
              #                       load label m1 as ptr to reg
    la      a0, m1
              #                    occupy reg a0 with *m1_0
              #                    occupy a1 with temp_41_ptr2globl_69
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_42_cmp_69:i1 
              #                          temp_42_cmp_69 = icmp i32 Slt i_39, temp_41_ptr2globl_69 
              #                    occupy a3 with i_39
              #                    occupy a1 with temp_41_ptr2globl_69
              #                    occupy a2 with temp_42_cmp_69
    slt     a2,a3,a1
              #                    free a3
              #                    free a1
              #                    free a2
              #                          br i1 temp_42_cmp_69, label while.body_70, label while.exit_70 
              #                    occupy a2 with temp_42_cmp_69
              #                    free a2
              #                    occupy a2 with temp_42_cmp_69
    bnez    a2, .while.body_70
              #                    free a2
    j       .while.exit_70
              #                    regtab     a1:Freed { symidx: temp_41_ptr2globl_69, tracked: true } |     a2:Freed { symidx: temp_42_cmp_69, tracked: true } |     a3:Freed { symidx: i_39, tracked: true } | 
              #                          label while.body_70: 
.while.body_70:
              #                          j_39 = i32 0_0 
              #                    occupy a0 with j_39
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_74 
    j       .while.head_74
              #                    regtab     a0:Freed { symidx: j_39, tracked: true } |     a1:Freed { symidx: temp_41_ptr2globl_69, tracked: true } |     a2:Freed { symidx: temp_42_cmp_69, tracked: true } |     a3:Freed { symidx: i_39, tracked: true } | 
              #                          label while.head_74: 
.while.head_74:
              #                          new_var temp_43_ptr2globl_73:i32 
              #                          temp_43_ptr2globl_73 = load *n2_0:ptr->i32 
              #                    occupy a4 with *n2_0
              #                       load label n2 as ptr to reg
    la      a4, n2
              #                    occupy reg a4 with *n2_0
              #                    occupy a5 with temp_43_ptr2globl_73
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_44_cmp_73:i1 
              #                          temp_44_cmp_73 = icmp i32 Slt j_39, temp_43_ptr2globl_73 
              #                    occupy a0 with j_39
              #                    occupy a5 with temp_43_ptr2globl_73
              #                    occupy a6 with temp_44_cmp_73
    slt     a6,a0,a5
              #                    free a0
              #                    free a5
              #                    free a6
              #                          br i1 temp_44_cmp_73, label while.body_74, label while.exit_74 
              #                    occupy a6 with temp_44_cmp_73
              #                    free a6
              #                    occupy a6 with temp_44_cmp_73
    bnez    a6, .while.body_74
              #                    free a6
    j       .while.exit_74
              #                    regtab     a0:Freed { symidx: j_39, tracked: true } |     a1:Freed { symidx: temp_41_ptr2globl_69, tracked: true } |     a2:Freed { symidx: temp_42_cmp_69, tracked: true } |     a3:Freed { symidx: i_39, tracked: true } |     a5:Freed { symidx: temp_43_ptr2globl_73, tracked: true } |     a6:Freed { symidx: temp_44_cmp_73, tracked: true } | 
              #                          label while.body_74: 
.while.body_74:
              #                          new_var temp_45_ptr2globl_75:Array:i32:[Some(100_0), Some(100_0)] 
              #                          temp_45_ptr2globl_75 = load *res_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy a4 with *res_0
              #                       load label res as ptr to reg
    la      a4, res
              #                    occupy reg a4 with *res_0
              #                    occupy a7 with temp_45_ptr2globl_75
    lw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                          new_var temp_46_array_ptr_75:ptr->i32 
              #                          temp_46_array_ptr_75 = getelementptr temp_45_ptr2globl_75:Array:i32:[Some(100_0), Some(100_0)] [Some(i_39), Some(j_39)] 
              #                    occupy s1 with temp_46_array_ptr_75
    li      s1, 0
              #                    occupy s2 with 100_0
    li      s2, 100
              #                    occupy a3 with i_39
              #                    occupy s3 with _anonymous_of_temp_45_ptr2globl_75_0
    mul     s3,s2,a3
              #                    free s2
              #                    free a3
    add     s1,s1,s3
              #                    free s3
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a0 with j_39
              #                    occupy s5 with _anonymous_of_temp_45_ptr2globl_75_0
    mul     s5,s4,a0
              #                    free s4
              #                    free a0
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,28
              #                    free s1
              #                          new_var temp_47_array_ele_75:i32 
              #                          temp_47_array_ele_75 = load temp_46_array_ptr_75:ptr->i32 
              #                    occupy s1 with temp_46_array_ptr_75
              #                    occupy s6 with temp_47_array_ele_75
    lw      s6,0(s1)
              #                    free s6
              #                    free s1
              #                           Call void putint_0(temp_47_array_ele_75) 
              #                    saved register dumping to mem
              #                    store to temp_46_array_ptr_75 in mem offset legal
    sd      s1,16(sp)
              #                    release s1 with temp_46_array_ptr_75
              #                    store to temp_47_array_ele_75 in mem offset legal
    sw      s6,12(sp)
              #                    release s6 with temp_47_array_ele_75
              #                    store to j_39 in mem offset_illegal
              #                    occupy a0 with 40136_0
    li      a0, 40136
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with j_39
              #                    store to temp_41_ptr2globl_69 in mem offset_illegal
              #                    occupy a0 with 40040_0
    li      a0, 40040
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_41_ptr2globl_69
              #                    store to temp_42_cmp_69 in mem offset_illegal
              #                    occupy a1 with 40039_0
    li      a1, 40039
    add     a1,sp,a1
    sb      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_42_cmp_69
              #                    store to i_39 in mem offset_illegal
              #                    occupy a2 with 40140_0
    li      a2, 40140
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with i_39
              #                    store to temp_43_ptr2globl_73 in mem offset_illegal
              #                    occupy a3 with 40032_0
    li      a3, 40032
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_43_ptr2globl_73
              #                    store to temp_44_cmp_73 in mem offset_illegal
              #                    occupy a4 with 40031_0
    li      a4, 40031
    add     a4,sp,a4
    sb      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_44_cmp_73
              #                    store to temp_45_ptr2globl_75 in mem offset legal
    sw      a7,28(sp)
              #                    release a7 with temp_45_ptr2globl_75
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_47_array_ele_75_0
              #                    load from temp_47_array_ele_75 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          new_var temp_48_arithop_75:i32 
              #                          temp_48_arithop_75 = Add i32 j_39, 1_0 
              #                    occupy a0 with j_39
              #                    load from j_39 in mem

              #                    occupy a0 with j_39
    add     a0,sp,a0
    lw      a0,0(a0)
              #                    free a0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_48_arithop_75
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          j_39 = i32 temp_48_arithop_75 
              #                    occupy a2 with temp_48_arithop_75
              #                    occupy a0 with j_39
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_74 
              #                    store to temp_48_arithop_75 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_48_arithop_75
              #                    occupy a2 with _anonymous_of_temp_42_cmp_69_0
              #                    load from temp_42_cmp_69 in mem
              #                    occupy a1 with temp_42_cmp_69
    li      a1, 40039
    add     a1,sp,a1
    lb      a2,0(a1)
              #                    free a1
              #                    store to temp_42_cmp_69 in mem offset_illegal
              #                    occupy a1 with 40039_0
    li      a1, 40039
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_42_cmp_69
              #                    occupy a1 with _anonymous_of_temp_41_ptr2globl_69_0
              #                    load from temp_41_ptr2globl_69 in mem

              #                    occupy a3 with temp_41_ptr2globl_69
    li      a3, 40040
    add     a3,sp,a3
    lw      a1,0(a3)
              #                    free a3
              #                    store to temp_41_ptr2globl_69 in mem offset_illegal
              #                    occupy a3 with 40040_0
    li      a3, 40040
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_41_ptr2globl_69
              #                    occupy a3 with _anonymous_of_i_39_0
              #                    load from i_39 in mem

              #                    occupy a4 with i_39
    li      a4, 40140
    add     a4,sp,a4
    lw      a3,0(a4)
              #                    free a4
    j       .while.head_74
              #                    regtab     a0:Freed { symidx: j_39, tracked: true } |     a1:Freed { symidx: temp_41_ptr2globl_69, tracked: true } |     a2:Freed { symidx: temp_42_cmp_69, tracked: true } |     a3:Freed { symidx: i_39, tracked: true } |     a5:Freed { symidx: temp_43_ptr2globl_73, tracked: true } |     a6:Freed { symidx: temp_44_cmp_73, tracked: true } | 
              #                          label while.exit_74: 
.while.exit_74:
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    store to j_39 in mem offset_illegal
              #                    occupy a0 with 40136_0
    li      a0, 40136
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with j_39
              #                    store to temp_41_ptr2globl_69 in mem offset_illegal
              #                    occupy a0 with 40040_0
    li      a0, 40040
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_41_ptr2globl_69
              #                    store to temp_42_cmp_69 in mem offset_illegal
              #                    occupy a1 with 40039_0
    li      a1, 40039
    add     a1,sp,a1
    sb      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_42_cmp_69
              #                    store to i_39 in mem offset_illegal
              #                    occupy a2 with 40140_0
    li      a2, 40140
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with i_39
              #                    store to temp_43_ptr2globl_73 in mem offset_illegal
              #                    occupy a3 with 40032_0
    li      a3, 40032
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_43_ptr2globl_73
              #                    store to temp_44_cmp_73 in mem offset_illegal
              #                    occupy a4 with 40031_0
    li      a4, 40031
    add     a4,sp,a4
    sb      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_44_cmp_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          new_var temp_49_arithop_71:i32 
              #                          temp_49_arithop_71 = Add i32 i_39, 1_0 
              #                    occupy a0 with i_39
              #                    load from i_39 in mem

              #                    occupy a0 with i_39
    add     a0,sp,a0
    lw      a0,0(a0)
              #                    free a0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_49_arithop_71
    add     a6,a0,a5
              #                    free a0
              #                    free a5
              #                    free a6
              #                          i_39 = i32 temp_49_arithop_71 
              #                    occupy a6 with temp_49_arithop_71
              #                    occupy a0 with i_39
    mv      a0, a6
              #                    free a6
              #                    free a0
              #                          jump label: while.head_70 
              #                    store to i_39 in mem offset_illegal
              #                    found literal reg Some(a2) already exist with 40140_0
              #                    occupy a2 with 40140_0
    add     a2,sp,a2
    sw      a0,0(a2)
              #                    free a2
              #                    release a0 with i_39
              #                    store to temp_49_arithop_71 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_49_arithop_71
              #                    occupy a3 with _anonymous_of_i_39_0
              #                    load from i_39 in mem

              #                    occupy a0 with i_39
    li      a0, 40140
    add     a0,sp,a0
    lw      a3,0(a0)
              #                    free a0
    j       .while.head_70
              #                    regtab     a1:Freed { symidx: temp_41_ptr2globl_69, tracked: true } |     a2:Freed { symidx: temp_42_cmp_69, tracked: true } |     a3:Freed { symidx: i_39, tracked: true } | 
              #                          label while.exit_70: 
.while.exit_70:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with ra_main_0
    li      a0, 40152
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy a4 with s0_main_0
    li      a4, 40144
    add     a4,sp,a4
    ld      s0,0(a4)
              #                    free a4
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a0 with 40152_0
    li      a0, 40152
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with ra_main_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a5 with 40160_0
    li      a5, 40160
    li      a5, 40160
    add     sp,a5,sp
              #                    free a5
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_41_ptr2globl_69, tracked: true } |     a2:Freed { symidx: temp_42_cmp_69, tracked: true } |     a3:Freed { symidx: i_39, tracked: true } |     a4:Freed { symidx: s0_main_0, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl m2
              #                          global i32 m2_0 
    .type m2,@object
m2:
    .word 0
    .align 4
    .globl n2
              #                          global i32 n2_0 
    .type n2,@object
n2:
    .word 0
    .align 4
    .globl m1
              #                          global i32 m1_0 
    .type m1,@object
m1:
    .word 0
    .align 4
    .globl n1
              #                          global i32 n1_0 
    .type n1,@object
n1:
    .word 0
    .align 4
    .globl res
              #                          global Array:i32:[Some(100_0), Some(100_0)] res_0 
    .type res,@object
res:
    .zero 40000
    .align 4
    .globl b
              #                          global Array:i32:[Some(100_0), Some(100_0)] b_0 
    .type b,@object
b:
    .zero 40000
    .align 4
    .globl a
              #                          global Array:i32:[Some(100_0), Some(100_0)] a_0 
    .type a,@object
a:
    .zero 40000
    .align 4
    .globl MAX_SIZE
              #                          global i32 MAX_SIZE_0 
    .type MAX_SIZE,@object
MAX_SIZE:
    .word 100
