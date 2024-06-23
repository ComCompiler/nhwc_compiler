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
              #                          Define is_clique_0 [num_20] -> is_clique_ret_0 
    .globl is_clique
    .type is_clique,@function
is_clique:
              #                    mem layout:|ra_is_clique:8 at 3928|s0_is_clique:8 at 3920|num:4 at 3916|i:4 at 3912|temp_0_cmp:1 at 3911|none:3 at 3908|temp_1_arithop:4 at 3904|j:4 at 3900|temp_2_cmp:1 at 3899|none:3 at 3896|temp_3_ptr2globl:120 at 3776|temp_4_array_ptr:8 at 3768|temp_5_array_ele:4 at 3764|temp_6_ptr2globl:120 at 3644|none:4 at 3640|temp_7_array_ptr:8 at 3632|temp_8_array_ele:4 at 3628|temp_9_ptr2globl:3600 at 28|none:4 at 24|temp_10_array_ptr:8 at 16|temp_11_array_ele:4 at 12|temp_12_cmp:1 at 11|none:3 at 8|temp_13_arithop:4 at 4|temp_14_arithop:4 at 0
              #                    occupy a1 with -3936_0
    li      a1, -3936
    li      a1, -3936
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_is_clique_0 in mem offset_illegal
              #                    occupy a2 with 3928_0
    li      a2, 3928
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_is_clique_0 in mem offset_illegal
              #                    occupy a3 with 3920_0
    li      a3, 3920
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 3936_0
    li      a4, 3936
    li      a4, 3936
    add     s0,a4,sp
              #                    free a4
              #                          alloc i32 i_22 
              #                          alloc i1 temp_0_cmp_24 
              #                          alloc i32 temp_1_arithop_26 
              #                          alloc i32 j_26 
              #                          alloc i1 temp_2_cmp_28 
              #                          alloc Array:i32:[Some(30_0)] temp_3_ptr2globl_31 
              #                          alloc ptr->i32 temp_4_array_ptr_31 
              #                          alloc i32 temp_5_array_ele_31 
              #                          alloc Array:i32:[Some(30_0)] temp_6_ptr2globl_31 
              #                          alloc ptr->i32 temp_7_array_ptr_31 
              #                          alloc i32 temp_8_array_ele_31 
              #                          alloc Array:i32:[Some(30_0), Some(30_0)] temp_9_ptr2globl_31 
              #                          alloc ptr->i32 temp_10_array_ptr_31 
              #                          alloc i32 temp_11_array_ele_31 
              #                          alloc i1 temp_12_cmp_31 
              #                          alloc i32 temp_13_arithop_30 
              #                          alloc i32 temp_14_arithop_26 
              #                    regtab     a0:Freed { symidx: num_20, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          i_22 = i32 1_0 
              #                    occupy a1 with i_22
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: num_20, tracked: true } |     a1:Freed { symidx: i_22, tracked: true } | 
              #                          label while.head_25: 
.while.head_25:
              #                          new_var temp_0_cmp_24:i1 
              #                          temp_0_cmp_24 = icmp i32 Slt i_22, num_20 
              #                    occupy a1 with i_22
              #                    occupy a0 with num_20
              #                    occupy a2 with temp_0_cmp_24
    slt     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          br i1 temp_0_cmp_24, label while.body_25, label while.exit_25 
              #                    occupy a2 with temp_0_cmp_24
              #                    free a2
              #                    occupy a2 with temp_0_cmp_24
    bnez    a2, .while.body_25
              #                    free a2
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: num_20, tracked: true } |     a1:Freed { symidx: i_22, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } | 
              #                          label while.body_25: 
.while.body_25:
              #                          new_var temp_1_arithop_26:i32 
              #                          temp_1_arithop_26 = Add i32 i_22, 1_0 
              #                    occupy a1 with i_22
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_1_arithop_26
    add     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          j_26 = i32 temp_1_arithop_26 
              #                    occupy a4 with temp_1_arithop_26
              #                    occupy a5 with j_26
    mv      a5, a4
              #                    free a4
              #                    free a5
              #                          jump label: while.head_29 
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: num_20, tracked: true } |     a1:Freed { symidx: i_22, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } |     a4:Freed { symidx: temp_1_arithop_26, tracked: true } |     a5:Freed { symidx: j_26, tracked: true } | 
              #                          label while.head_29: 
.while.head_29:
              #                          new_var temp_2_cmp_28:i1 
              #                          temp_2_cmp_28 = icmp i32 Slt j_26, num_20 
              #                    occupy a5 with j_26
              #                    occupy a0 with num_20
              #                    occupy a3 with temp_2_cmp_28
    slt     a3,a5,a0
              #                    free a5
              #                    free a0
              #                    free a3
              #                          br i1 temp_2_cmp_28, label while.body_29, label while.exit_29 
              #                    occupy a3 with temp_2_cmp_28
              #                    free a3
              #                    occupy a3 with temp_2_cmp_28
    bnez    a3, .while.body_29
              #                    free a3
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: num_20, tracked: true } |     a1:Freed { symidx: i_22, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } |     a3:Freed { symidx: temp_2_cmp_28, tracked: true } |     a4:Freed { symidx: temp_1_arithop_26, tracked: true } |     a5:Freed { symidx: j_26, tracked: true } | 
              #                          label while.body_29: 
.while.body_29:
              #                          new_var temp_3_ptr2globl_31:Array:i32:[Some(30_0)] 
              #                          temp_3_ptr2globl_31 = load *store_0:ptr->i32 
              #                    occupy a6 with *store_0
              #                       load label store as ptr to reg
    la      a6, store
              #                    occupy reg a6 with *store_0
              #                    occupy a7 with temp_3_ptr2globl_31
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_4_array_ptr_31:ptr->i32 
              #                          temp_4_array_ptr_31 = getelementptr temp_3_ptr2globl_31:Array:i32:[Some(30_0)] [Some(j_26)] 
              #                    occupy s1 with temp_4_array_ptr_31
    li      s1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a5 with j_26
              #                    occupy s3 with _anonymous_of_temp_3_ptr2globl_31_0
    mul     s3,s2,a5
              #                    free s2
              #                    free a5
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
    add     s1,s1,sp
              #                    occupy s4 with 3776_0
    li      s4, 3776
    li      s4, 3776
    add     s1,s4,s1
              #                    free s4
              #                    free s1
              #                          new_var temp_5_array_ele_31:i32 
              #                          temp_5_array_ele_31 = load temp_4_array_ptr_31:ptr->i32 
              #                    occupy s1 with temp_4_array_ptr_31
              #                    occupy s5 with temp_5_array_ele_31
    lw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          new_var temp_6_ptr2globl_31:Array:i32:[Some(30_0)] 
              #                          temp_6_ptr2globl_31 = load *store_0:ptr->i32 
              #                    occupy s6 with *store_0
              #                       load label store as ptr to reg
    la      s6, store
              #                    occupy reg s6 with *store_0
              #                    occupy s7 with temp_6_ptr2globl_31
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          new_var temp_7_array_ptr_31:ptr->i32 
              #                          temp_7_array_ptr_31 = getelementptr temp_6_ptr2globl_31:Array:i32:[Some(30_0)] [Some(i_22)] 
              #                    occupy s8 with temp_7_array_ptr_31
    li      s8, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy a1 with i_22
              #                    occupy s9 with _anonymous_of_temp_6_ptr2globl_31_0
    mul     s9,s2,a1
              #                    free s2
              #                    free a1
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
    add     s8,s8,sp
              #                    occupy s10 with 3644_0
    li      s10, 3644
    li      s10, 3644
    add     s8,s10,s8
              #                    free s10
              #                    free s8
              #                          new_var temp_8_array_ele_31:i32 
              #                          temp_8_array_ele_31 = load temp_7_array_ptr_31:ptr->i32 
              #                    occupy s8 with temp_7_array_ptr_31
              #                    occupy s11 with temp_8_array_ele_31
    lw      s11,0(s8)
              #                    free s11
              #                    free s8
              #                          new_var temp_9_ptr2globl_31:Array:i32:[Some(30_0), Some(30_0)] 
              #                          temp_9_ptr2globl_31 = load *graph_0:ptr->Array:i32:[Some(30_0)] 
              #                    occupy a6 with *graph_0
              #                       load label graph as ptr to reg
    la      a6, graph
              #                    occupy reg a6 with *graph_0
              #                    occupy s2 with temp_9_ptr2globl_31
    lw      s2,0(a6)
              #                    free s2
              #                    free a6
              #                          new_var temp_10_array_ptr_31:ptr->i32 
              #                          temp_10_array_ptr_31 = getelementptr temp_9_ptr2globl_31:Array:i32:[Some(30_0), Some(30_0)] [Some(temp_8_array_ele_31), Some(temp_5_array_ele_31)] 
              #                    occupy a6 with temp_10_array_ptr_31
    li      a6, 0
              #                    occupy s3 with 30_0
    li      s3, 30
              #                    occupy s11 with temp_8_array_ele_31
              #                    occupy s4 with _anonymous_of_temp_9_ptr2globl_31_0
    mul     s4,s3,s11
              #                    free s3
              #                    free s11
    add     a6,a6,s4
              #                    free s4
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s5 with temp_5_array_ele_31
              #                    occupy s4 with _anonymous_of_temp_9_ptr2globl_31_0
    mul     s4,s3,s5
              #                    free s3
              #                    free s5
    add     a6,a6,s4
              #                    free s4
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,28
              #                    free a6
              #                          new_var temp_11_array_ele_31:i32 
              #                          temp_11_array_ele_31 = load temp_10_array_ptr_31:ptr->i32 
              #                    occupy a6 with temp_10_array_ptr_31
              #                    occupy s3 with temp_11_array_ele_31
    lw      s3,0(a6)
              #                    free s3
              #                    free a6
              #                          new_var temp_12_cmp_31:i1 
              #                          temp_12_cmp_31 = icmp i32 Eq temp_11_array_ele_31, 0_0 
              #                    occupy s3 with temp_11_array_ele_31
              #                    occupy s4 with 0_0
    li      s4, 0
              #                    occupy s6 with temp_12_cmp_31
    xor     s6,s3,s4
    seqz    s6, s6
              #                    free s3
              #                    free s4
              #                    free s6
              #                          br i1 temp_12_cmp_31, label branch_true_32, label branch_false_32 
              #                    occupy s6 with temp_12_cmp_31
              #                    free s6
              #                    occupy s6 with temp_12_cmp_31
    bnez    s6, .branch_true_32
              #                    free s6
    j       .branch_false_32
              #                    regtab     a0:Freed { symidx: num_20, tracked: true } |     a1:Freed { symidx: i_22, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } |     a3:Freed { symidx: temp_2_cmp_28, tracked: true } |     a4:Freed { symidx: temp_1_arithop_26, tracked: true } |     a5:Freed { symidx: j_26, tracked: true } |     a6:Freed { symidx: temp_10_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_31, tracked: true } |     s11:Freed { symidx: temp_8_array_ele_31, tracked: true } |     s1:Freed { symidx: temp_4_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_9_ptr2globl_31, tracked: true } |     s3:Freed { symidx: temp_11_array_ele_31, tracked: true } |     s5:Freed { symidx: temp_5_array_ele_31, tracked: true } |     s6:Freed { symidx: temp_12_cmp_31, tracked: true } |     s7:Freed { symidx: temp_6_ptr2globl_31, tracked: true } |     s8:Freed { symidx: temp_7_array_ptr_31, tracked: true } | 
              #                          label branch_true_32: 
.branch_true_32:
              #                          ret 0_0 
              #                    load from ra_is_clique_0 in mem
              #                    occupy s4 with ra_is_clique_0
    li      s4, 3928
    add     s4,sp,s4
    ld      ra,0(s4)
              #                    free s4
              #                    load from s0_is_clique_0 in mem
              #                    occupy s9 with s0_is_clique_0
    li      s9, 3920
    add     s9,sp,s9
    ld      s0,0(s9)
              #                    free s9
              #                    store to num_20 in mem offset_illegal
              #                    occupy a0 with 3916_0
    li      a0, 3916
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with num_20
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy s10 with 3936_0
    li      s10, 3936
    li      s10, 3936
    add     sp,s10,sp
              #                    free s10
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: num_20, tracked: true } |     a1:Freed { symidx: i_22, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } |     a3:Freed { symidx: temp_2_cmp_28, tracked: true } |     a4:Freed { symidx: temp_1_arithop_26, tracked: true } |     a5:Freed { symidx: j_26, tracked: true } |     a6:Freed { symidx: temp_10_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_31, tracked: true } |     s11:Freed { symidx: temp_8_array_ele_31, tracked: true } |     s1:Freed { symidx: temp_4_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_9_ptr2globl_31, tracked: true } |     s3:Freed { symidx: temp_11_array_ele_31, tracked: true } |     s5:Freed { symidx: temp_5_array_ele_31, tracked: true } |     s6:Freed { symidx: temp_12_cmp_31, tracked: true } |     s7:Freed { symidx: temp_6_ptr2globl_31, tracked: true } |     s8:Freed { symidx: temp_7_array_ptr_31, tracked: true } | 
              #                          label branch_false_32: 
.branch_false_32:
              #                    regtab     a0:Freed { symidx: num_20, tracked: true } |     a1:Freed { symidx: i_22, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } |     a3:Freed { symidx: temp_2_cmp_28, tracked: true } |     a4:Freed { symidx: temp_1_arithop_26, tracked: true } |     a5:Freed { symidx: j_26, tracked: true } |     a6:Freed { symidx: temp_10_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_31, tracked: true } |     s11:Freed { symidx: temp_8_array_ele_31, tracked: true } |     s1:Freed { symidx: temp_4_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_9_ptr2globl_31, tracked: true } |     s3:Freed { symidx: temp_11_array_ele_31, tracked: true } |     s5:Freed { symidx: temp_5_array_ele_31, tracked: true } |     s6:Freed { symidx: temp_12_cmp_31, tracked: true } |     s7:Freed { symidx: temp_6_ptr2globl_31, tracked: true } |     s8:Freed { symidx: temp_7_array_ptr_31, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_13_arithop_30:i32 
              #                          temp_13_arithop_30 = Add i32 j_26, 1_0 
              #                    occupy a5 with j_26
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s9 with temp_13_arithop_30
    add     s9,a5,s4
              #                    free a5
              #                    free s4
              #                    free s9
              #                          j_26 = i32 temp_13_arithop_30 
              #                    occupy s9 with temp_13_arithop_30
              #                    occupy a5 with j_26
    mv      a5, s9
              #                    free s9
              #                    free a5
              #                          jump label: while.head_29 
              #                    store to temp_13_arithop_30 in mem offset legal
    sw      s9,4(sp)
              #                    release s9 with temp_13_arithop_30
              #                    store to temp_4_array_ptr_31 in mem offset_illegal
              #                    occupy s1 with 3768_0
    li      s1, 3768
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_4_array_ptr_31
              #                    store to temp_5_array_ele_31 in mem offset_illegal
              #                    occupy s1 with 3764_0
    li      s1, 3764
    add     s1,sp,s1
    sw      s5,0(s1)
              #                    free s1
              #                    release s5 with temp_5_array_ele_31
              #                    store to temp_6_ptr2globl_31 in mem offset_illegal
              #                    occupy s4 with 3644_0
    li      s4, 3644
    add     s4,sp,s4
    sw      s7,0(s4)
              #                    free s4
              #                    release s7 with temp_6_ptr2globl_31
              #                    store to temp_2_cmp_28 in mem offset_illegal
              #                    occupy a3 with 3899_0
    li      a3, 3899
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_2_cmp_28
              #                    store to temp_10_array_ptr_31 in mem offset legal
    sd      a6,16(sp)
              #                    release a6 with temp_10_array_ptr_31
              #                    store to temp_3_ptr2globl_31 in mem offset_illegal
              #                    occupy a3 with 3776_0
    li      a3, 3776
    add     a3,sp,a3
    sw      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_3_ptr2globl_31
              #                    store to temp_12_cmp_31 in mem offset legal
    sb      s6,11(sp)
              #                    release s6 with temp_12_cmp_31
              #                    store to temp_7_array_ptr_31 in mem offset_illegal
              #                    occupy a6 with 3632_0
    li      a6, 3632
    add     a6,sp,a6
    sd      s8,0(a6)
              #                    free a6
              #                    release s8 with temp_7_array_ptr_31
              #                    store to temp_8_array_ele_31 in mem offset_illegal
              #                    occupy a7 with 3628_0
    li      a7, 3628
    add     a7,sp,a7
    sw      s11,0(a7)
              #                    free a7
              #                    release s11 with temp_8_array_ele_31
              #                    store to temp_11_array_ele_31 in mem offset legal
    sw      s3,12(sp)
              #                    release s3 with temp_11_array_ele_31
              #                    store to temp_9_ptr2globl_31 in mem offset legal
    sw      s2,28(sp)
              #                    release s2 with temp_9_ptr2globl_31
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: num_20, tracked: true } |     a1:Freed { symidx: i_22, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } |     a3:Freed { symidx: temp_2_cmp_28, tracked: true } |     a4:Freed { symidx: temp_1_arithop_26, tracked: true } |     a5:Freed { symidx: j_26, tracked: true } | 
              #                          label while.exit_29: 
.while.exit_29:
              #                          new_var temp_14_arithop_26:i32 
              #                          temp_14_arithop_26 = Add i32 i_22, 1_0 
              #                    occupy a1 with i_22
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_14_arithop_26
    add     a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                          i_22 = i32 temp_14_arithop_26 
              #                    occupy a7 with temp_14_arithop_26
              #                    occupy a1 with i_22
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                          jump label: while.head_25 
              #                    store to temp_1_arithop_26 in mem offset_illegal
              #                    occupy a4 with 3904_0
    li      a4, 3904
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_1_arithop_26
              #                    store to temp_0_cmp_24 in mem offset_illegal
              #                    occupy a2 with 3911_0
    li      a2, 3911
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_0_cmp_24
              #                    store to temp_2_cmp_28 in mem offset_illegal
              #                    occupy a2 with 3899_0
    li      a2, 3899
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_2_cmp_28
              #                    store to j_26 in mem offset_illegal
              #                    occupy a3 with 3900_0
    li      a3, 3900
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with j_26
              #                    store to temp_14_arithop_26 in mem offset legal
    sw      a7,0(sp)
              #                    release a7 with temp_14_arithop_26
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: num_20, tracked: true } |     a1:Freed { symidx: i_22, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } | 
              #                          label while.exit_25: 
.while.exit_25:
              #                          ret 1_0 
              #                    load from ra_is_clique_0 in mem
              #                    occupy a3 with ra_is_clique_0
    li      a3, 3928
    add     a3,sp,a3
    ld      ra,0(a3)
              #                    free a3
              #                    load from s0_is_clique_0 in mem
              #                    occupy a4 with s0_is_clique_0
    li      a4, 3920
    add     a4,sp,a4
    ld      s0,0(a4)
              #                    free a4
              #                    store to num_20 in mem offset_illegal
              #                    occupy a0 with 3916_0
    li      a0, 3916
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with num_20
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a5 with 3936_0
    li      a5, 3936
    li      a5, 3936
    add     sp,a5,sp
              #                    free a5
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_22, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } |     a3:Freed { symidx: ra_is_clique_0, tracked: true } |     a4:Freed { symidx: s0_is_clique_0, tracked: true } | 
              #                    regtab 
              #                          Define maxCliques_0 [i_37, k_37] -> maxCliques_ret_0 
    .globl maxCliques
    .type maxCliques,@function
maxCliques:
              #                    mem layout:|ra_maxCliques:8 at 72|s0_maxCliques:8 at 64|i:4 at 60|k:4 at 56|max_:4 at 52|j:4 at 48|temp_15_ptr2globl:4 at 44|temp_16_cmp:1 at 43|none:3 at 40|temp_17_index_ptr:8 at 32|temp_18_arithop:4 at 28|temp_19_ret_of_is_clique:4 at 24|temp_20_:1 at 23|temp_21_cmp:1 at 22|none:2 at 20|temp_22_arithop:4 at 16|temp_23_ret_of_maxCliques:4 at 12|tmp:4 at 8|temp_24_cmp:1 at 7|none:3 at 4|temp_25_arithop:4 at 0
    addi    sp,sp,-80
              #                    store to ra_maxCliques_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_maxCliques_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          alloc i32 max__39 
              #                          alloc i32 j_39 
              #                          alloc i32 temp_15_ptr2globl_43 
              #                          alloc i1 temp_16_cmp_43 
              #                          alloc ptr->i32 temp_17_index_ptr_45 
              #                          alloc i32 temp_18_arithop_47 
              #                          alloc i32 temp_19_ret_of_is_clique_47 
              #                          alloc i1 temp_20__794 
              #                          alloc i1 temp_21_cmp_50 
              #                          alloc i32 temp_22_arithop_49 
              #                          alloc i32 temp_23_ret_of_maxCliques_49 
              #                          alloc i32 tmp_49 
              #                          alloc i1 temp_24_cmp_54 
              #                          alloc i32 temp_25_arithop_45 
              #                    regtab     a0:Freed { symidx: i_37, tracked: true } |     a1:Freed { symidx: k_37, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          max__39 = i32 0_0 
              #                    occupy a2 with max__39
    li      a2, 0
              #                    free a2
              #                          j_39 = i32 1_0 
              #                    occupy a3 with j_39
    li      a3, 1
              #                    free a3
              #                          i_37 = i32 1_0 
              #                    occupy a0 with i_37
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_44 
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: i_37, tracked: true } |     a1:Freed { symidx: k_37, tracked: true } |     a2:Freed { symidx: max__39, tracked: true } |     a3:Freed { symidx: j_39, tracked: true } | 
              #                          label while.head_44: 
.while.head_44:
              #                          new_var temp_15_ptr2globl_43:i32 
              #                          temp_15_ptr2globl_43 = load *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    occupy a5 with temp_15_ptr2globl_43
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_16_cmp_43:i1 
              #                          temp_16_cmp_43 = icmp i32 Sle j_39, temp_15_ptr2globl_43 
              #                    occupy a3 with j_39
              #                    occupy a5 with temp_15_ptr2globl_43
              #                    occupy a6 with temp_16_cmp_43
    slt     a6,a5,a3
    xori    a6,a6,1
              #                    free a3
              #                    free a5
              #                    free a6
              #                          br i1 temp_16_cmp_43, label while.body_44, label while.exit_44 
              #                    occupy a6 with temp_16_cmp_43
              #                    free a6
              #                    occupy a6 with temp_16_cmp_43
    bnez    a6, .while.body_44
              #                    free a6
    j       .while.exit_44
              #                    regtab     a0:Freed { symidx: i_37, tracked: true } |     a1:Freed { symidx: k_37, tracked: true } |     a2:Freed { symidx: max__39, tracked: true } |     a3:Freed { symidx: j_39, tracked: true } |     a5:Freed { symidx: temp_15_ptr2globl_43, tracked: true } |     a6:Freed { symidx: temp_16_cmp_43, tracked: true } | 
              #                          label while.body_44: 
.while.body_44:
              #                          new_var temp_17_index_ptr_45:ptr->i32 
              #                          temp_17_index_ptr_45 = getelementptr store_0:Array:i32:[Some(30_0)] [Some(k_37)] 
              #                    occupy a4 with temp_17_index_ptr_45
    li      a4, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a1 with k_37
              #                    occupy s1 with _anonymous_of_store_0_0
    mul     s1,a7,a1
              #                    free a7
              #                    free a1
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
              #                    occupy s2 with _anonymous_of_store_0_0
    la      s2, store
    add     a4,a4,s2
              #                    free s2
              #                    free a4
              #                          store j_39:i32 temp_17_index_ptr_45:ptr->i32 
              #                    occupy a4 with temp_17_index_ptr_45
              #                    occupy a3 with j_39
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          mu store_0:115 
              #                          store_0 = chi store_0:115 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: i_37, tracked: true } |     a1:Freed { symidx: k_37, tracked: true } |     a2:Freed { symidx: max__39, tracked: true } |     a3:Freed { symidx: j_39, tracked: true } |     a4:Freed { symidx: temp_17_index_ptr_45, tracked: true } |     a5:Freed { symidx: temp_15_ptr2globl_43, tracked: true } |     a6:Freed { symidx: temp_16_cmp_43, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_18_arithop_47:i32 
              #                          temp_18_arithop_47 = Add i32 k_37, 1_0 
              #                    occupy a1 with k_37
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_18_arithop_47
    add     s1,a1,a7
              #                    free a1
              #                    free a7
              #                    free s1
              #                          new_var temp_19_ret_of_is_clique_47:i32 
              #                          temp_19_ret_of_is_clique_47 =  Call i32 is_clique_0(temp_18_arithop_47) 
              #                    saved register dumping to mem
              #                    store to temp_18_arithop_47 in mem offset legal
    sw      s1,28(sp)
              #                    release s1 with temp_18_arithop_47
              #                    store to i_37 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with i_37
              #                    store to k_37 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with k_37
              #                    store to max__39 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with max__39
              #                    store to j_39 in mem offset legal
    sw      a3,48(sp)
              #                    release a3 with j_39
              #                    store to temp_17_index_ptr_45 in mem offset legal
    sd      a4,32(sp)
              #                    release a4 with temp_17_index_ptr_45
              #                    store to temp_15_ptr2globl_43 in mem offset legal
    sw      a5,44(sp)
              #                    release a5 with temp_15_ptr2globl_43
              #                    store to temp_16_cmp_43 in mem offset legal
    sb      a6,43(sp)
              #                    release a6 with temp_16_cmp_43
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_18_arithop_47_0
              #                    load from temp_18_arithop_47 in mem


    lw      a0,28(sp)
              #                    arg load ended


    call    is_clique
              #                    store to temp_19_ret_of_is_clique_47 in mem offset legal
    sw      a0,24(sp)
              #                          new_var temp_20__794:i1 
              #                          temp_20__794 = icmp i32 Ne temp_19_ret_of_is_clique_47, 0_0 
              #                    occupy a0 with temp_19_ret_of_is_clique_47
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_20__794
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_20__794, label branch_true_48, label branch_false_48 
              #                    occupy a2 with temp_20__794
              #                    free a2
              #                    occupy a2 with temp_20__794
    bnez    a2, .branch_true_48
              #                    free a2
    j       .branch_false_48
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_is_clique_47, tracked: true } |     a2:Freed { symidx: temp_20__794, tracked: true } | 
              #                          label branch_true_48: 
.branch_true_48:
              #                          new_var temp_21_cmp_50:i1 
              #                          temp_21_cmp_50 = icmp i32 Sgt k_37, max__39 
              #                    occupy a1 with k_37
              #                    load from k_37 in mem


    lw      a1,56(sp)
              #                    occupy a3 with max__39
              #                    load from max__39 in mem


    lw      a3,52(sp)
              #                    occupy a4 with temp_21_cmp_50
    slt     a4,a3,a1
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_21_cmp_50, label branch_true_51, label branch_false_51 
              #                    occupy a4 with temp_21_cmp_50
              #                    free a4
              #                    occupy a4 with temp_21_cmp_50
    bnez    a4, .branch_true_51
              #                    free a4
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_is_clique_47, tracked: true } |     a1:Freed { symidx: k_37, tracked: true } |     a2:Freed { symidx: temp_20__794, tracked: true } |     a3:Freed { symidx: max__39, tracked: true } |     a4:Freed { symidx: temp_21_cmp_50, tracked: true } | 
              #                          label branch_true_51: 
.branch_true_51:
              #                          max__39 = i32 k_37 
              #                    occupy a1 with k_37
              #                    occupy a3 with max__39
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                          jump label: branch_false_51 
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_is_clique_47, tracked: true } |     a1:Freed { symidx: k_37, tracked: true } |     a2:Freed { symidx: temp_20__794, tracked: true } |     a3:Freed { symidx: max__39, tracked: true } |     a4:Freed { symidx: temp_21_cmp_50, tracked: true } | 
              #                          label branch_false_51: 
.branch_false_51:
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_is_clique_47, tracked: true } |     a1:Freed { symidx: k_37, tracked: true } |     a2:Freed { symidx: temp_20__794, tracked: true } |     a3:Freed { symidx: max__39, tracked: true } |     a4:Freed { symidx: temp_21_cmp_50, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_22_arithop_49:i32 
              #                          temp_22_arithop_49 = Add i32 k_37, 1_0 
              #                    occupy a1 with k_37
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_22_arithop_49
    add     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                          new_var temp_23_ret_of_maxCliques_49:i32 
              #                          temp_23_ret_of_maxCliques_49 =  Call i32 maxCliques_0(j_39, temp_22_arithop_49) 
              #                    saved register dumping to mem
              #                    store to temp_19_ret_of_is_clique_47 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_19_ret_of_is_clique_47
              #                    store to k_37 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with k_37
              #                    store to temp_20__794 in mem offset legal
    sb      a2,23(sp)
              #                    release a2 with temp_20__794
              #                    store to max__39 in mem offset legal
    sw      a3,52(sp)
              #                    release a3 with max__39
              #                    store to temp_21_cmp_50 in mem offset legal
    sb      a4,22(sp)
              #                    release a4 with temp_21_cmp_50
              #                    store to temp_22_arithop_49 in mem offset legal
    sw      a6,16(sp)
              #                    release a6 with temp_22_arithop_49
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_j_39_0
              #                    load from j_39 in mem


    lw      a0,48(sp)
              #                    occupy a1 with _anonymous_of_temp_22_arithop_49_0
              #                    load from temp_22_arithop_49 in mem


    lw      a1,16(sp)
              #                    arg load ended


    call    maxCliques
              #                    store to temp_23_ret_of_maxCliques_49 in mem offset legal
    sw      a0,12(sp)
              #                          tmp_49 = i32 temp_23_ret_of_maxCliques_49 
              #                    occupy a0 with temp_23_ret_of_maxCliques_49
              #                    occupy a1 with tmp_49
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_23_ret_of_maxCliques_49, tracked: true } |     a1:Freed { symidx: tmp_49, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_24_cmp_54:i1 
              #                          temp_24_cmp_54 = icmp i32 Sgt tmp_49, max__39 
              #                    occupy a1 with tmp_49
              #                    occupy a2 with max__39
              #                    load from max__39 in mem


    lw      a2,52(sp)
              #                    occupy a3 with temp_24_cmp_54
    slt     a3,a2,a1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_24_cmp_54, label branch_true_55, label branch_false_55 
              #                    occupy a3 with temp_24_cmp_54
              #                    free a3
              #                    occupy a3 with temp_24_cmp_54
    bnez    a3, .branch_true_55
              #                    free a3
    j       .branch_false_55
              #                    regtab     a0:Freed { symidx: temp_23_ret_of_maxCliques_49, tracked: true } |     a1:Freed { symidx: tmp_49, tracked: true } |     a2:Freed { symidx: max__39, tracked: true } |     a3:Freed { symidx: temp_24_cmp_54, tracked: true } | 
              #                          label branch_true_55: 
.branch_true_55:
              #                          max__39 = i32 tmp_49 
              #                    occupy a1 with tmp_49
              #                    occupy a2 with max__39
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          jump label: branch_false_55 
    j       .branch_false_55
              #                    regtab     a0:Freed { symidx: temp_23_ret_of_maxCliques_49, tracked: true } |     a1:Freed { symidx: tmp_49, tracked: true } |     a2:Freed { symidx: max__39, tracked: true } |     a3:Freed { symidx: temp_24_cmp_54, tracked: true } | 
              #                          label branch_false_55: 
.branch_false_55:
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_is_clique_47, tracked: true } |     a2:Freed { symidx: temp_20__794, tracked: true } | 
              #                          label branch_false_48: 
.branch_false_48:
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_is_clique_47, tracked: true } |     a2:Freed { symidx: temp_20__794, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_25_arithop_45:i32 
              #                          temp_25_arithop_45 = Add i32 j_39, 1_0 
              #                    occupy a1 with j_39
              #                    load from j_39 in mem


    lw      a1,48(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_25_arithop_45
    add     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          j_39 = i32 temp_25_arithop_45 
              #                    occupy a4 with temp_25_arithop_45
              #                    occupy a1 with j_39
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: while.head_44 
              #                    store to temp_19_ret_of_is_clique_47 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_19_ret_of_is_clique_47
              #                    store to temp_25_arithop_45 in mem offset legal
    sw      a4,0(sp)
              #                    release a4 with temp_25_arithop_45
              #                    store to j_39 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with j_39
              #                    store to temp_20__794 in mem offset legal
    sb      a2,23(sp)
              #                    release a2 with temp_20__794
              #                    occupy a0 with _anonymous_of_i_37_0
              #                    load from i_37 in mem


    lw      a0,60(sp)
              #                    occupy a1 with _anonymous_of_k_37_0
              #                    load from k_37 in mem


    lw      a1,56(sp)
              #                    occupy a3 with _anonymous_of_j_39_0
              #                    load from j_39 in mem


    lw      a3,48(sp)
              #                    occupy a2 with _anonymous_of_max__39_0
              #                    load from max__39 in mem


    lw      a2,52(sp)
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: i_37, tracked: true } |     a1:Freed { symidx: k_37, tracked: true } |     a2:Freed { symidx: max__39, tracked: true } |     a3:Freed { symidx: j_39, tracked: true } |     a5:Freed { symidx: temp_15_ptr2globl_43, tracked: true } |     a6:Freed { symidx: temp_16_cmp_43, tracked: true } | 
              #                          label while.exit_44: 
.while.exit_44:
              #                          ret max__39 
              #                    load from ra_maxCliques_0 in mem
    ld      ra,72(sp)
              #                    load from s0_maxCliques_0 in mem
    ld      s0,64(sp)
              #                    store to max__39 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with max__39
              #                    store to i_37 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with i_37
              #                    occupy a0 with max__39
              #                    load from max__39 in mem


    lw      a0,52(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: k_37, tracked: true } |     a3:Freed { symidx: j_39, tracked: true } |     a5:Freed { symidx: temp_15_ptr2globl_43, tracked: true } |     a6:Freed { symidx: temp_16_cmp_43, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 4960|s0_main:8 at 4952|temp_26_ret_of_getint:4 at 4948|temp_27_ret_of_getint:4 at 4944|edges:4800 at 144|i:4 at 140|temp_28_ptr2globl:4 at 136|temp_29_cmp:1 at 135|none:7 at 128|temp_30_index_ptr:8 at 120|temp_31_ret_of_getint:4 at 116|none:4 at 112|temp_32_index_ptr:8 at 104|temp_33_ret_of_getint:4 at 100|temp_34_arithop:4 at 96|temp_35_ptr2globl:4 at 92|temp_36_cmp:1 at 91|none:3 at 88|temp_37_array_ptr:8 at 80|temp_38_array_ele:4 at 76|none:4 at 72|temp_39_array_ptr:8 at 64|temp_40_array_ele:4 at 60|none:4 at 56|temp_41_index_ptr:8 at 48|temp_42_array_ptr:8 at 40|temp_43_array_ele:4 at 36|none:4 at 32|temp_44_array_ptr:8 at 24|temp_45_array_ele:4 at 20|none:4 at 16|temp_46_index_ptr:8 at 8|temp_47_arithop:4 at 4|temp_48_ret_of_maxCliques:4 at 0
              #                    occupy a0 with -4968_0
    li      a0, -4968
    li      a0, -4968
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 4960_0
    li      a1, 4960
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 4952_0
    li      a2, 4952
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 4968_0
    li      a3, 4968
    li      a3, 4968
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 temp_26_ret_of_getint_60 
              #                          alloc i32 temp_27_ret_of_getint_60 
              #                          alloc Array:i32:[Some(600_0), Some(2_0)] edges_60 
              #                          alloc i32 i_60 
              #                          alloc i32 temp_28_ptr2globl_65 
              #                          alloc i1 temp_29_cmp_65 
              #                          alloc ptr->i32 temp_30_index_ptr_67 
              #                          alloc i32 temp_31_ret_of_getint_67 
              #                          alloc ptr->i32 temp_32_index_ptr_67 
              #                          alloc i32 temp_33_ret_of_getint_67 
              #                          alloc i32 temp_34_arithop_67 
              #                          alloc i32 temp_35_ptr2globl_72 
              #                          alloc i1 temp_36_cmp_72 
              #                          alloc ptr->i32 temp_37_array_ptr_74 
              #                          alloc i32 temp_38_array_ele_74 
              #                          alloc ptr->i32 temp_39_array_ptr_74 
              #                          alloc i32 temp_40_array_ele_74 
              #                          alloc ptr->i32 temp_41_index_ptr_74 
              #                          alloc ptr->i32 temp_42_array_ptr_74 
              #                          alloc i32 temp_43_array_ele_74 
              #                          alloc ptr->i32 temp_44_array_ptr_74 
              #                          alloc i32 temp_45_array_ele_74 
              #                          alloc ptr->i32 temp_46_index_ptr_74 
              #                          alloc i32 temp_47_arithop_74 
              #                          alloc i32 temp_48_ret_of_maxCliques_60 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_26_ret_of_getint_60:i32 
              #                          temp_26_ret_of_getint_60 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_26_ret_of_getint_60 in mem offset_illegal
              #                    occupy a0 with 4948_0
    li      a0, 4948
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_26_ret_of_getint_60:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_26_ret_of_getint_60
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_27_ret_of_getint_60:i32 
              #                          temp_27_ret_of_getint_60 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_26_ret_of_getint_60 in mem offset_illegal
              #                    occupy a0 with 4948_0
    li      a0, 4948
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_26_ret_of_getint_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_27_ret_of_getint_60 in mem offset_illegal
              #                    occupy a0 with 4944_0
    li      a0, 4944
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_27_ret_of_getint_60:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_27_ret_of_getint_60
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var edges_60:Array:i32:[Some(600_0), Some(2_0)] 
              #                          i_60 = i32 0_0 
              #                    occupy a2 with i_60
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_66 
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_60, tracked: true } |     a2:Freed { symidx: i_60, tracked: true } | 
              #                          label while.head_66: 
.while.head_66:
              #                          new_var temp_28_ptr2globl_65:i32 
              #                          temp_28_ptr2globl_65 = load *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a3 with temp_28_ptr2globl_65
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_29_cmp_65:i1 
              #                          temp_29_cmp_65 = icmp i32 Slt i_60, temp_28_ptr2globl_65 
              #                    occupy a2 with i_60
              #                    occupy a3 with temp_28_ptr2globl_65
              #                    occupy a4 with temp_29_cmp_65
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_29_cmp_65, label while.body_66, label while.exit_66 
              #                    occupy a4 with temp_29_cmp_65
              #                    free a4
              #                    occupy a4 with temp_29_cmp_65
    bnez    a4, .while.body_66
              #                    free a4
    j       .while.exit_66
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_60, tracked: true } |     a2:Freed { symidx: i_60, tracked: true } |     a3:Freed { symidx: temp_28_ptr2globl_65, tracked: true } |     a4:Freed { symidx: temp_29_cmp_65, tracked: true } | 
              #                          label while.body_66: 
.while.body_66:
              #                          new_var temp_30_index_ptr_67:ptr->i32 
              #                          temp_30_index_ptr_67 = getelementptr edges_60:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60), Some(0_0)] 
              #                    occupy a1 with temp_30_index_ptr_67
    li      a1, 0
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy a2 with i_60
              #                    occupy a6 with _anonymous_of_edges_60_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a1,a1,a6
              #                    free a6
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s2 with _anonymous_of_edges_60_0
    mul     s2,a7,s1
              #                    free a7
              #                    free s1
    add     a1,a1,s2
              #                    free s2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,144
              #                    free a1
              #                          new_var temp_31_ret_of_getint_67:i32 
              #                          temp_31_ret_of_getint_67 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_27_ret_of_getint_60 in mem offset_illegal
              #                    occupy a0 with 4944_0
    li      a0, 4944
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_27_ret_of_getint_60
              #                    store to temp_30_index_ptr_67 in mem offset legal
    sd      a1,120(sp)
              #                    release a1 with temp_30_index_ptr_67
              #                    store to i_60 in mem offset legal
    sw      a2,140(sp)
              #                    release a2 with i_60
              #                    store to temp_28_ptr2globl_65 in mem offset legal
    sw      a3,136(sp)
              #                    release a3 with temp_28_ptr2globl_65
              #                    store to temp_29_cmp_65 in mem offset legal
    sb      a4,135(sp)
              #                    release a4 with temp_29_cmp_65
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_31_ret_of_getint_67 in mem offset legal
    sw      a0,116(sp)
              #                          store temp_31_ret_of_getint_67:i32 temp_30_index_ptr_67:ptr->i32 
              #                    occupy a1 with temp_30_index_ptr_67
              #                    load from temp_30_index_ptr_67 in mem
    ld      a1,120(sp)
              #                    occupy a0 with temp_31_ret_of_getint_67
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu edges_60:187 
              #                          edges_60 = chi edges_60:187 
              #                          new_var temp_32_index_ptr_67:ptr->i32 
              #                          temp_32_index_ptr_67 = getelementptr edges_60:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60), Some(1_0)] 
              #                    occupy a2 with temp_32_index_ptr_67
    li      a2, 0
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a4 with i_60
              #                    load from i_60 in mem


    lw      a4,140(sp)
              #                    occupy a5 with _anonymous_of_edges_60_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with _anonymous_of_edges_60_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a2,a2,s1
              #                    free s1
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,144
              #                    free a2
              #                          new_var temp_33_ret_of_getint_67:i32 
              #                          temp_33_ret_of_getint_67 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_31_ret_of_getint_67 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_31_ret_of_getint_67
              #                    store to temp_30_index_ptr_67 in mem offset legal
    sd      a1,120(sp)
              #                    release a1 with temp_30_index_ptr_67
              #                    store to temp_32_index_ptr_67 in mem offset legal
    sd      a2,104(sp)
              #                    release a2 with temp_32_index_ptr_67
              #                    store to i_60 in mem offset legal
    sw      a4,140(sp)
              #                    release a4 with i_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_33_ret_of_getint_67 in mem offset legal
    sw      a0,100(sp)
              #                          store temp_33_ret_of_getint_67:i32 temp_32_index_ptr_67:ptr->i32 
              #                    occupy a1 with temp_32_index_ptr_67
              #                    load from temp_32_index_ptr_67 in mem
    ld      a1,104(sp)
              #                    occupy a0 with temp_33_ret_of_getint_67
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu edges_60:196 
              #                          edges_60 = chi edges_60:196 
              #                          new_var temp_34_arithop_67:i32 
              #                          temp_34_arithop_67 = Add i32 i_60, 1_0 
              #                    occupy a2 with i_60
              #                    load from i_60 in mem


    lw      a2,140(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_34_arithop_67
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_60 = i32 temp_34_arithop_67 
              #                    occupy a4 with temp_34_arithop_67
              #                    occupy a2 with i_60
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_66 
              #                    store to temp_32_index_ptr_67 in mem offset legal
    sd      a1,104(sp)
              #                    release a1 with temp_32_index_ptr_67
              #                    store to temp_34_arithop_67 in mem offset legal
    sw      a4,96(sp)
              #                    release a4 with temp_34_arithop_67
              #                    store to temp_33_ret_of_getint_67 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_33_ret_of_getint_67
              #                    occupy a0 with _anonymous_of_temp_27_ret_of_getint_60_0
              #                    load from temp_27_ret_of_getint_60 in mem

              #                    occupy a1 with temp_27_ret_of_getint_60
    li      a1, 4944
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_60, tracked: true } |     a2:Freed { symidx: i_60, tracked: true } |     a3:Freed { symidx: temp_28_ptr2globl_65, tracked: true } |     a4:Freed { symidx: temp_29_cmp_65, tracked: true } | 
              #                          label while.exit_66: 
.while.exit_66:
              #                          i_60 = i32 0_0 
              #                    occupy a2 with i_60
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_73 
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_60, tracked: true } |     a2:Freed { symidx: i_60, tracked: true } |     a3:Freed { symidx: temp_28_ptr2globl_65, tracked: true } |     a4:Freed { symidx: temp_29_cmp_65, tracked: true } | 
              #                          label while.head_73: 
.while.head_73:
              #                          new_var temp_35_ptr2globl_72:i32 
              #                          temp_35_ptr2globl_72 = load *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a5 with temp_35_ptr2globl_72
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_36_cmp_72:i1 
              #                          temp_36_cmp_72 = icmp i32 Slt i_60, temp_35_ptr2globl_72 
              #                    occupy a2 with i_60
              #                    occupy a5 with temp_35_ptr2globl_72
              #                    occupy a6 with temp_36_cmp_72
    slt     a6,a2,a5
              #                    free a2
              #                    free a5
              #                    free a6
              #                          br i1 temp_36_cmp_72, label while.body_73, label while.exit_73 
              #                    occupy a6 with temp_36_cmp_72
              #                    free a6
              #                    occupy a6 with temp_36_cmp_72
    bnez    a6, .while.body_73
              #                    free a6
    j       .while.exit_73
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_60, tracked: true } |     a2:Freed { symidx: i_60, tracked: true } |     a3:Freed { symidx: temp_28_ptr2globl_65, tracked: true } |     a4:Freed { symidx: temp_29_cmp_65, tracked: true } |     a5:Freed { symidx: temp_35_ptr2globl_72, tracked: true } |     a6:Freed { symidx: temp_36_cmp_72, tracked: true } | 
              #                          label while.body_73: 
.while.body_73:
              #                          new_var temp_37_array_ptr_74:ptr->i32 
              #                          temp_37_array_ptr_74 = getelementptr edges_60:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60), Some(1_0)] 
              #                    occupy a1 with temp_37_array_ptr_74
    li      a1, 0
              #                    occupy a7 with 2_0
    li      a7, 2
              #                    occupy a2 with i_60
              #                    occupy s1 with _anonymous_of_edges_60_0
    mul     s1,a7,a2
              #                    free a7
              #                    free a2
    add     a1,a1,s1
              #                    free s1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with _anonymous_of_edges_60_0
    mul     s4,s2,s3
              #                    free s2
              #                    free s3
    add     a1,a1,s4
              #                    free s4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,144
              #                    free a1
              #                          new_var temp_38_array_ele_74:i32 
              #                          temp_38_array_ele_74 = load temp_37_array_ptr_74:ptr->i32 
              #                    occupy a1 with temp_37_array_ptr_74
              #                    occupy s5 with temp_38_array_ele_74
    lw      s5,0(a1)
              #                    free s5
              #                    free a1
              #                          new_var temp_39_array_ptr_74:ptr->i32 
              #                          temp_39_array_ptr_74 = getelementptr edges_60:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60), Some(0_0)] 
              #                    occupy s6 with temp_39_array_ptr_74
    li      s6, 0
              #                    found literal reg Some(a7) already exist with 2_0
              #                    occupy a7 with 2_0
              #                    occupy a2 with i_60
              #                    occupy s7 with _anonymous_of_edges_60_0
    mul     s7,a7,a2
              #                    free a7
              #                    free a2
    add     s6,s6,s7
              #                    free s7
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    occupy s9 with _anonymous_of_edges_60_0
    mul     s9,s3,s8
              #                    free s3
              #                    free s8
    add     s6,s6,s9
              #                    free s9
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,144
              #                    free s6
              #                          new_var temp_40_array_ele_74:i32 
              #                          temp_40_array_ele_74 = load temp_39_array_ptr_74:ptr->i32 
              #                    occupy s6 with temp_39_array_ptr_74
              #                    occupy s10 with temp_40_array_ele_74
    lw      s10,0(s6)
              #                    free s10
              #                    free s6
              #                          new_var temp_41_index_ptr_74:ptr->i32 
              #                          temp_41_index_ptr_74 = getelementptr graph_0:Array:i32:[Some(30_0), Some(30_0)] [Some(temp_40_array_ele_74), Some(temp_38_array_ele_74)] 
              #                    occupy s11 with temp_41_index_ptr_74
    li      s11, 0
              #                    occupy a7 with 30_0
    li      a7, 30
              #                    occupy s10 with temp_40_array_ele_74
              #                    occupy s1 with _anonymous_of_graph_0_0
    mul     s1,a7,s10
              #                    free a7
              #                    free s10
    add     s11,s11,s1
              #                    free s1
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s5 with temp_38_array_ele_74
              #                    occupy a7 with _anonymous_of_graph_0_0
    mul     a7,s3,s5
              #                    free s3
              #                    free s5
    add     s11,s11,a7
              #                    free a7
    slli s11,s11,2
              #                    occupy a7 with _anonymous_of_graph_0_0
    la      a7, graph
    add     s11,s11,a7
              #                    free a7
              #                    free s11
              #                          store 1_0:i32 temp_41_index_ptr_74:ptr->i32 
              #                    occupy s11 with temp_41_index_ptr_74
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
    sw      s3,0(s11)
              #                    free s3
              #                    free s11
              #                          mu graph_0:230 
              #                          graph_0 = chi graph_0:230 
              #                          new_var temp_42_array_ptr_74:ptr->i32 
              #                          temp_42_array_ptr_74 = getelementptr edges_60:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60), Some(0_0)] 
              #                    occupy a7 with temp_42_array_ptr_74
    li      a7, 0
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy a2 with i_60
              #                    occupy s2 with _anonymous_of_edges_60_0
    mul     s2,s1,a2
              #                    free s1
              #                    free a2
    add     a7,a7,s2
              #                    free s2
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(s8) already exist with 0_0
              #                    occupy s8 with 0_0
              #                    occupy s1 with _anonymous_of_edges_60_0
    mul     s1,s3,s8
              #                    free s3
              #                    free s8
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,144
              #                    free a7
              #                          new_var temp_43_array_ele_74:i32 
              #                          temp_43_array_ele_74 = load temp_42_array_ptr_74:ptr->i32 
              #                    occupy a7 with temp_42_array_ptr_74
              #                    occupy s1 with temp_43_array_ele_74
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_44_array_ptr_74:ptr->i32 
              #                          temp_44_array_ptr_74 = getelementptr edges_60:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60), Some(1_0)] 
              #                    occupy s2 with temp_44_array_ptr_74
    li      s2, 0
              #                    occupy s3 with 2_0
    li      s3, 2
              #                    occupy a2 with i_60
              #                    occupy s4 with _anonymous_of_edges_60_0
    mul     s4,s3,a2
              #                    free s3
              #                    free a2
    add     s2,s2,s4
              #                    free s4
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s7 with _anonymous_of_edges_60_0
    mul     s7,s3,s4
              #                    free s3
              #                    free s4
    add     s2,s2,s7
              #                    free s7
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,144
              #                    free s2
              #                          new_var temp_45_array_ele_74:i32 
              #                          temp_45_array_ele_74 = load temp_44_array_ptr_74:ptr->i32 
              #                    occupy s2 with temp_44_array_ptr_74
              #                    occupy s3 with temp_45_array_ele_74
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_46_index_ptr_74:ptr->i32 
              #                          temp_46_index_ptr_74 = getelementptr graph_0:Array:i32:[Some(30_0), Some(30_0)] [Some(temp_45_array_ele_74), Some(temp_43_array_ele_74)] 
              #                    occupy s4 with temp_46_index_ptr_74
    li      s4, 0
              #                    occupy s7 with 30_0
    li      s7, 30
              #                    occupy s3 with temp_45_array_ele_74
              #                    occupy s8 with _anonymous_of_graph_0_0
    mul     s8,s7,s3
              #                    free s7
              #                    free s3
    add     s4,s4,s8
              #                    free s8
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s1 with temp_43_array_ele_74
              #                    occupy s8 with _anonymous_of_graph_0_0
    mul     s8,s7,s1
              #                    free s7
              #                    free s1
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
              #                    occupy s7 with _anonymous_of_graph_0_0
    la      s7, graph
    add     s4,s4,s7
              #                    free s7
              #                    free s4
              #                          store 1_0:i32 temp_46_index_ptr_74:ptr->i32 
              #                    occupy s4 with temp_46_index_ptr_74
              #                    occupy s7 with 1_0
    li      s7, 1
    sw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          mu graph_0:248 
              #                          graph_0 = chi graph_0:248 
              #                          new_var temp_47_arithop_74:i32 
              #                          temp_47_arithop_74 = Add i32 i_60, 1_0 
              #                    occupy a2 with i_60
              #                    found literal reg Some(s7) already exist with 1_0
              #                    occupy s7 with 1_0
              #                    occupy s8 with temp_47_arithop_74
    add     s8,a2,s7
              #                    free a2
              #                    free s7
              #                    free s8
              #                          i_60 = i32 temp_47_arithop_74 
              #                    occupy s8 with temp_47_arithop_74
              #                    occupy a2 with i_60
    mv      a2, s8
              #                    free s8
              #                    free a2
              #                          jump label: while.head_73 
              #                    store to temp_36_cmp_72 in mem offset legal
    sb      a6,91(sp)
              #                    release a6 with temp_36_cmp_72
              #                    store to temp_37_array_ptr_74 in mem offset legal
    sd      a1,80(sp)
              #                    release a1 with temp_37_array_ptr_74
              #                    store to temp_47_arithop_74 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_47_arithop_74
              #                    store to temp_41_index_ptr_74 in mem offset legal
    sd      s11,48(sp)
              #                    release s11 with temp_41_index_ptr_74
              #                    store to temp_40_array_ele_74 in mem offset legal
    sw      s10,60(sp)
              #                    release s10 with temp_40_array_ele_74
              #                    store to temp_46_index_ptr_74 in mem offset legal
    sd      s4,8(sp)
              #                    release s4 with temp_46_index_ptr_74
              #                    store to temp_45_array_ele_74 in mem offset legal
    sw      s3,20(sp)
              #                    release s3 with temp_45_array_ele_74
              #                    store to temp_35_ptr2globl_72 in mem offset legal
    sw      a5,92(sp)
              #                    release a5 with temp_35_ptr2globl_72
              #                    store to temp_43_array_ele_74 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_43_array_ele_74
              #                    store to temp_38_array_ele_74 in mem offset legal
    sw      s5,76(sp)
              #                    release s5 with temp_38_array_ele_74
              #                    store to temp_44_array_ptr_74 in mem offset legal
    sd      s2,24(sp)
              #                    release s2 with temp_44_array_ptr_74
              #                    store to temp_39_array_ptr_74 in mem offset legal
    sd      s6,64(sp)
              #                    release s6 with temp_39_array_ptr_74
              #                    store to temp_42_array_ptr_74 in mem offset legal
    sd      a7,40(sp)
              #                    release a7 with temp_42_array_ptr_74
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_60, tracked: true } |     a2:Freed { symidx: i_60, tracked: true } |     a3:Freed { symidx: temp_28_ptr2globl_65, tracked: true } |     a4:Freed { symidx: temp_29_cmp_65, tracked: true } |     a5:Freed { symidx: temp_35_ptr2globl_72, tracked: true } |     a6:Freed { symidx: temp_36_cmp_72, tracked: true } | 
              #                          label while.exit_73: 
.while.exit_73:
              #                          new_var temp_48_ret_of_maxCliques_60:i32 
              #                          temp_48_ret_of_maxCliques_60 =  Call i32 maxCliques_0(0_0, 1_0) 
              #                    saved register dumping to mem
              #                    store to temp_27_ret_of_getint_60 in mem offset_illegal
              #                    occupy a0 with 4944_0
    li      a0, 4944
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_27_ret_of_getint_60
              #                    store to i_60 in mem offset legal
    sw      a2,140(sp)
              #                    release a2 with i_60
              #                    store to temp_28_ptr2globl_65 in mem offset legal
    sw      a3,136(sp)
              #                    release a3 with temp_28_ptr2globl_65
              #                    store to temp_29_cmp_65 in mem offset legal
    sb      a4,135(sp)
              #                    release a4 with temp_29_cmp_65
              #                    store to temp_35_ptr2globl_72 in mem offset legal
    sw      a5,92(sp)
              #                    release a5 with temp_35_ptr2globl_72
              #                    store to temp_36_cmp_72 in mem offset legal
    sb      a6,91(sp)
              #                    release a6 with temp_36_cmp_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_1_0_0
    li      a1, 1
              #                    arg load ended


    call    maxCliques
              #                    store to temp_48_ret_of_maxCliques_60 in mem offset legal
    sw      a0,0(sp)
              #                           Call void putint_0(temp_48_ret_of_maxCliques_60) 
              #                    saved register dumping to mem
              #                    store to temp_48_ret_of_maxCliques_60 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_48_ret_of_maxCliques_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_48_ret_of_maxCliques_60_0
              #                    load from temp_48_ret_of_maxCliques_60 in mem


    lw      a0,0(sp)
              #                    arg load ended


    call    putint
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with ra_main_0
    li      a0, 4960
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy a1 with s0_main_0
    li      a1, 4952
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a0 with 4960_0
    li      a0, 4960
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with ra_main_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with 4968_0
    li      a2, 4968
    li      a2, 4968
    add     sp,a2,sp
              #                    free a2
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: s0_main_0, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl graph
              #                          global Array:i32:[Some(30_0), Some(30_0)] graph_0 
    .type graph,@object
graph:
    .zero 3600
    .align 4
    .globl m
              #                          global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl store
              #                          global Array:i32:[Some(30_0)] store_0 
    .type store,@object
store:
    .zero 120
    .align 4
    .globl maxM
              #                          global i32 maxM_0 
    .type maxM,@object
maxM:
    .word 600
    .align 4
    .globl maxN
              #                          global i32 maxN_0 
    .type maxN,@object
maxN:
    .word 30
