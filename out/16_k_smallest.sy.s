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
              #                          Define swap_0 [i_19, j_19] -> swap_ret_0 
    .globl swap
    .type swap,@function
swap:
              #                    mem layout:|ra_swap:8 at 8064|s0_swap:8 at 8056|i:4 at 8052|j:4 at 8048|temp_0_ptr2globl:4000 at 4048|temp_1_array_ptr:8 at 4040|temp_2_array_ele:4 at 4036|tmp:4 at 4032|temp_3_index_ptr:8 at 4024|temp_4_ptr2globl:4000 at 24|temp_5_array_ptr:8 at 16|temp_6_array_ele:4 at 12|none:4 at 8|temp_7_index_ptr:8 at 0
              #                    occupy a2 with -8072_0
    li      a2, -8072
    li      a2, -8072
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_swap_0 in mem offset_illegal
              #                    occupy a3 with 8064_0
    li      a3, 8064
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_swap_0 in mem offset_illegal
              #                    occupy a4 with 8056_0
    li      a4, 8056
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 8072_0
    li      a5, 8072
    li      a5, 8072
    add     s0,a5,sp
              #                    free a5
              #                          alloc Array:i32:[Some(1000_0)] temp_0_ptr2globl_21 
              #                          alloc ptr->i32 temp_1_array_ptr_21 
              #                          alloc i32 temp_2_array_ele_21 
              #                          alloc i32 tmp_21 
              #                          alloc ptr->i32 temp_3_index_ptr_21 
              #                          alloc Array:i32:[Some(1000_0)] temp_4_ptr2globl_21 
              #                          alloc ptr->i32 temp_5_array_ptr_21 
              #                          alloc i32 temp_6_array_ele_21 
              #                          alloc ptr->i32 temp_7_index_ptr_21 
              #                    regtab     a0:Freed { symidx: i_19, tracked: true } |     a1:Freed { symidx: j_19, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_0_ptr2globl_21:Array:i32:[Some(1000_0)] 
              #                          temp_0_ptr2globl_21 = load *array_0:ptr->i32 
              #                    occupy a2 with *array_0
              #                       load label array as ptr to reg
    la      a2, array
              #                    occupy reg a2 with *array_0
              #                    occupy a3 with temp_0_ptr2globl_21
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_1_array_ptr_21:ptr->i32 
              #                          temp_1_array_ptr_21 = getelementptr temp_0_ptr2globl_21:Array:i32:[Some(1000_0)] [Some(i_19)] 
              #                    occupy a4 with temp_1_array_ptr_21
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with i_19
              #                    occupy a6 with _anonymous_of_temp_0_ptr2globl_21_0
    mul     a6,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
              #                    occupy a7 with 4048_0
    li      a7, 4048
    li      a7, 4048
    add     a4,a7,a4
              #                    free a7
              #                    free a4
              #                          new_var temp_2_array_ele_21:i32 
              #                          temp_2_array_ele_21 = load temp_1_array_ptr_21:ptr->i32 
              #                    occupy a4 with temp_1_array_ptr_21
              #                    occupy s1 with temp_2_array_ele_21
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          tmp_21 = i32 temp_2_array_ele_21 
              #                    occupy s1 with temp_2_array_ele_21
              #                    occupy s2 with tmp_21
    mv      s2, s1
              #                    free s1
              #                    free s2
              #                          new_var temp_3_index_ptr_21:ptr->i32 
              #                          temp_3_index_ptr_21 = getelementptr array_0:Array:i32:[Some(1000_0)] [Some(i_19)] 
              #                    occupy s3 with temp_3_index_ptr_21
    li      s3, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with i_19
              #                    occupy s4 with _anonymous_of_array_0_0
    mul     s4,a5,a0
              #                    free a5
              #                    free a0
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with _anonymous_of_array_0_0
    la      s5, array
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                          new_var temp_4_ptr2globl_21:Array:i32:[Some(1000_0)] 
              #                          temp_4_ptr2globl_21 = load *array_0:ptr->i32 
              #                    occupy s6 with *array_0
              #                       load label array as ptr to reg
    la      s6, array
              #                    occupy reg s6 with *array_0
              #                    occupy s7 with temp_4_ptr2globl_21
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          new_var temp_5_array_ptr_21:ptr->i32 
              #                          temp_5_array_ptr_21 = getelementptr temp_4_ptr2globl_21:Array:i32:[Some(1000_0)] [Some(j_19)] 
              #                    occupy s8 with temp_5_array_ptr_21
    li      s8, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a1 with j_19
              #                    occupy s9 with _anonymous_of_temp_4_ptr2globl_21_0
    mul     s9,a5,a1
              #                    free a5
              #                    free a1
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,24
              #                    free s8
              #                          new_var temp_6_array_ele_21:i32 
              #                          temp_6_array_ele_21 = load temp_5_array_ptr_21:ptr->i32 
              #                    occupy s8 with temp_5_array_ptr_21
              #                    occupy s10 with temp_6_array_ele_21
    lw      s10,0(s8)
              #                    free s10
              #                    free s8
              #                          store temp_6_array_ele_21:i32 temp_3_index_ptr_21:ptr->i32 
              #                    occupy s3 with temp_3_index_ptr_21
              #                    occupy s10 with temp_6_array_ele_21
    sw      s10,0(s3)
              #                    free s10
              #                    free s3
              #                          mu array_0:48 
              #                          array_0 = chi array_0:48 
              #                          new_var temp_7_index_ptr_21:ptr->i32 
              #                          temp_7_index_ptr_21 = getelementptr array_0:Array:i32:[Some(1000_0)] [Some(j_19)] 
              #                    occupy s11 with temp_7_index_ptr_21
    li      s11, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a1 with j_19
              #                    occupy a2 with _anonymous_of_array_0_0
    mul     a2,a5,a1
              #                    free a5
              #                    free a1
    add     s11,s11,a2
              #                    free a2
    slli s11,s11,2
              #                    occupy a2 with _anonymous_of_array_0_0
    la      a2, array
    add     s11,s11,a2
              #                    free a2
              #                    free s11
              #                          store tmp_21:i32 temp_7_index_ptr_21:ptr->i32 
              #                    occupy s11 with temp_7_index_ptr_21
              #                    occupy s2 with tmp_21
    sw      s2,0(s11)
              #                    free s2
              #                    free s11
              #                          mu array_0:54 
              #                          array_0 = chi array_0:54 
              #                    regtab     a0:Freed { symidx: i_19, tracked: true } |     a1:Freed { symidx: j_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_21, tracked: true } |     a4:Freed { symidx: temp_1_array_ptr_21, tracked: true } |     s10:Freed { symidx: temp_6_array_ele_21, tracked: true } |     s11:Freed { symidx: temp_7_index_ptr_21, tracked: true } |     s1:Freed { symidx: temp_2_array_ele_21, tracked: true } |     s2:Freed { symidx: tmp_21, tracked: true } |     s3:Freed { symidx: temp_3_index_ptr_21, tracked: true } |     s7:Freed { symidx: temp_4_ptr2globl_21, tracked: true } |     s8:Freed { symidx: temp_5_array_ptr_21, tracked: true } | 
              #                    regtab 
              #                          Define findPivot_0 [start_25, end_25] -> findPivot_ret_0 
    .globl findPivot
    .type findPivot,@function
findPivot:
              #                    mem layout:|ra_findPivot:8 at 8072|s0_findPivot:8 at 8064|start:4 at 8060|end:4 at 8056|temp_8_ptr2globl:4000 at 4056|temp_9_array_ptr:8 at 4048|temp_10_array_ele:4 at 4044|pivot:4 at 4040|pIndex:4 at 4036|i:4 at 4032|temp_11_cmp:1 at 4031|none:3 at 4028|temp_12_ptr2globl:4000 at 28|none:4 at 24|temp_13_array_ptr:8 at 16|temp_14_array_ele:4 at 12|temp_15_cmp:1 at 11|none:3 at 8|temp_16_arithop:4 at 4|temp_17_arithop:4 at 0
              #                    occupy a2 with -8080_0
    li      a2, -8080
    li      a2, -8080
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_findPivot_0 in mem offset_illegal
              #                    occupy a3 with 8072_0
    li      a3, 8072
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_findPivot_0 in mem offset_illegal
              #                    occupy a4 with 8064_0
    li      a4, 8064
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 8080_0
    li      a5, 8080
    li      a5, 8080
    add     s0,a5,sp
              #                    free a5
              #                          alloc Array:i32:[Some(1000_0)] temp_8_ptr2globl_27 
              #                          alloc ptr->i32 temp_9_array_ptr_27 
              #                          alloc i32 temp_10_array_ele_27 
              #                          alloc i32 pivot_27 
              #                          alloc i32 pIndex_27 
              #                          alloc i32 i_27 
              #                          alloc i1 temp_11_cmp_30 
              #                          alloc Array:i32:[Some(1000_0)] temp_12_ptr2globl_33 
              #                          alloc ptr->i32 temp_13_array_ptr_33 
              #                          alloc i32 temp_14_array_ele_33 
              #                          alloc i1 temp_15_cmp_33 
              #                          alloc i32 temp_16_arithop_35 
              #                          alloc i32 temp_17_arithop_32 
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_8_ptr2globl_27:Array:i32:[Some(1000_0)] 
              #                          temp_8_ptr2globl_27 = load *array_0:ptr->i32 
              #                    occupy a2 with *array_0
              #                       load label array as ptr to reg
    la      a2, array
              #                    occupy reg a2 with *array_0
              #                    occupy a3 with temp_8_ptr2globl_27
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_9_array_ptr_27:ptr->i32 
              #                          temp_9_array_ptr_27 = getelementptr temp_8_ptr2globl_27:Array:i32:[Some(1000_0)] [Some(end_25)] 
              #                    occupy a4 with temp_9_array_ptr_27
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with end_25
              #                    occupy a6 with _anonymous_of_temp_8_ptr2globl_27_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
              #                    occupy a7 with 4056_0
    li      a7, 4056
    li      a7, 4056
    add     a4,a7,a4
              #                    free a7
              #                    free a4
              #                          new_var temp_10_array_ele_27:i32 
              #                          temp_10_array_ele_27 = load temp_9_array_ptr_27:ptr->i32 
              #                    occupy a4 with temp_9_array_ptr_27
              #                    occupy s1 with temp_10_array_ele_27
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          pivot_27 = i32 temp_10_array_ele_27 
              #                    occupy s1 with temp_10_array_ele_27
              #                    occupy s2 with pivot_27
    mv      s2, s1
              #                    free s1
              #                    free s2
              #                          pIndex_27 = i32 start_25 
              #                    occupy a0 with start_25
              #                    occupy s3 with pIndex_27
    mv      s3, a0
              #                    free a0
              #                    free s3
              #                          i_27 = i32 start_25 
              #                    occupy a0 with start_25
              #                    occupy s4 with i_27
    mv      s4, a0
              #                    free a0
              #                    free s4
              #                          jump label: while.head_31 
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } |     a3:Freed { symidx: temp_8_ptr2globl_27, tracked: true } |     a4:Freed { symidx: temp_9_array_ptr_27, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_27, tracked: true } |     s2:Freed { symidx: pivot_27, tracked: true } |     s3:Freed { symidx: pIndex_27, tracked: true } |     s4:Freed { symidx: i_27, tracked: true } | 
              #                          label while.head_31: 
.while.head_31:
              #                          new_var temp_11_cmp_30:i1 
              #                          temp_11_cmp_30 = icmp i32 Slt i_27, end_25 
              #                    occupy s4 with i_27
              #                    occupy a1 with end_25
              #                    occupy a2 with temp_11_cmp_30
    slt     a2,s4,a1
              #                    free s4
              #                    free a1
              #                    free a2
              #                          br i1 temp_11_cmp_30, label while.body_31, label while.exit_31 
              #                    occupy a2 with temp_11_cmp_30
              #                    free a2
              #                    occupy a2 with temp_11_cmp_30
    bnez    a2, .while.body_31
              #                    free a2
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } |     a2:Freed { symidx: temp_11_cmp_30, tracked: true } |     a3:Freed { symidx: temp_8_ptr2globl_27, tracked: true } |     a4:Freed { symidx: temp_9_array_ptr_27, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_27, tracked: true } |     s2:Freed { symidx: pivot_27, tracked: true } |     s3:Freed { symidx: pIndex_27, tracked: true } |     s4:Freed { symidx: i_27, tracked: true } | 
              #                          label while.body_31: 
.while.body_31:
              #                          new_var temp_12_ptr2globl_33:Array:i32:[Some(1000_0)] 
              #                          temp_12_ptr2globl_33 = load *array_0:ptr->i32 
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
              #                    occupy a6 with temp_12_ptr2globl_33
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_13_array_ptr_33:ptr->i32 
              #                          temp_13_array_ptr_33 = getelementptr temp_12_ptr2globl_33:Array:i32:[Some(1000_0)] [Some(i_27)] 
              #                    occupy a7 with temp_13_array_ptr_33
    li      a7, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s4 with i_27
              #                    occupy s6 with _anonymous_of_temp_12_ptr2globl_33_0
    mul     s6,s5,s4
              #                    free s5
              #                    free s4
    add     a7,a7,s6
              #                    free s6
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,28
              #                    free a7
              #                          new_var temp_14_array_ele_33:i32 
              #                          temp_14_array_ele_33 = load temp_13_array_ptr_33:ptr->i32 
              #                    occupy a7 with temp_13_array_ptr_33
              #                    occupy s7 with temp_14_array_ele_33
    lw      s7,0(a7)
              #                    free s7
              #                    free a7
              #                          new_var temp_15_cmp_33:i1 
              #                          temp_15_cmp_33 = icmp i32 Sle temp_14_array_ele_33, pivot_27 
              #                    occupy s7 with temp_14_array_ele_33
              #                    occupy s2 with pivot_27
              #                    occupy s8 with temp_15_cmp_33
    slt     s8,s2,s7
    xori    s8,s8,1
              #                    free s7
              #                    free s2
              #                    free s8
              #                          br i1 temp_15_cmp_33, label branch_true_34, label branch_false_34 
              #                    occupy s8 with temp_15_cmp_33
              #                    free s8
              #                    occupy s8 with temp_15_cmp_33
    bnez    s8, .branch_true_34
              #                    free s8
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } |     a2:Freed { symidx: temp_11_cmp_30, tracked: true } |     a3:Freed { symidx: temp_8_ptr2globl_27, tracked: true } |     a4:Freed { symidx: temp_9_array_ptr_27, tracked: true } |     a6:Freed { symidx: temp_12_ptr2globl_33, tracked: true } |     a7:Freed { symidx: temp_13_array_ptr_33, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_27, tracked: true } |     s2:Freed { symidx: pivot_27, tracked: true } |     s3:Freed { symidx: pIndex_27, tracked: true } |     s4:Freed { symidx: i_27, tracked: true } |     s7:Freed { symidx: temp_14_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_15_cmp_33, tracked: true } | 
              #                          label branch_true_34: 
.branch_true_34:
              #                           Call void swap_0(i_27, pIndex_27) 
              #                    saved register dumping to mem
              #                    store to temp_10_array_ele_27 in mem offset_illegal
              #                    occupy a5 with 4044_0
    li      a5, 4044
    add     a5,sp,a5
    sw      s1,0(a5)
              #                    free a5
              #                    release s1 with temp_10_array_ele_27
              #                    store to pivot_27 in mem offset_illegal
              #                    occupy s1 with 4040_0
    li      s1, 4040
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with pivot_27
              #                    store to pIndex_27 in mem offset_illegal
              #                    occupy s2 with 4036_0
    li      s2, 4036
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with pIndex_27
              #                    store to i_27 in mem offset_illegal
              #                    occupy s3 with 4032_0
    li      s3, 4032
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with i_27
              #                    store to temp_14_array_ele_33 in mem offset legal
    sw      s7,12(sp)
              #                    release s7 with temp_14_array_ele_33
              #                    store to temp_15_cmp_33 in mem offset legal
    sb      s8,11(sp)
              #                    release s8 with temp_15_cmp_33
              #                    store to start_25 in mem offset_illegal
              #                    occupy a0 with 8060_0
    li      a0, 8060
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with start_25
              #                    store to end_25 in mem offset_illegal
              #                    occupy a0 with 8056_0
    li      a0, 8056
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with end_25
              #                    store to temp_11_cmp_30 in mem offset_illegal
              #                    occupy a1 with 4031_0
    li      a1, 4031
    add     a1,sp,a1
    sb      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_11_cmp_30
              #                    store to temp_8_ptr2globl_27 in mem offset_illegal
              #                    occupy a2 with 4056_0
    li      a2, 4056
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_8_ptr2globl_27
              #                    store to temp_9_array_ptr_27 in mem offset_illegal
              #                    occupy a3 with 4048_0
    li      a3, 4048
    add     a3,sp,a3
    sd      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_9_array_ptr_27
              #                    store to temp_12_ptr2globl_33 in mem offset legal
    sw      a6,28(sp)
              #                    release a6 with temp_12_ptr2globl_33
              #                    store to temp_13_array_ptr_33 in mem offset legal
    sd      a7,16(sp)
              #                    release a7 with temp_13_array_ptr_33
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_i_27_0
              #                    load from i_27 in mem

              #                    occupy a4 with i_27
    li      a4, 4032
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    occupy a1 with _anonymous_of_pIndex_27_0
              #                    load from pIndex_27 in mem

              #                    occupy a5 with pIndex_27
    li      a5, 4036
    add     a5,sp,a5
    lw      a1,0(a5)
              #                    free a5
              #                    arg load ended


    call    swap
              #                          new_var temp_16_arithop_35:i32 
              #                          temp_16_arithop_35 = Add i32 pIndex_27, 1_0 
              #                    occupy a5 with pIndex_27
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with temp_16_arithop_35
    add     a1,a5,a0
              #                    free a5
              #                    free a0
              #                    free a1
              #                          pIndex_27 = i32 temp_16_arithop_35 
              #                    occupy a1 with temp_16_arithop_35
              #                    occupy a5 with pIndex_27
    mv      a5, a1
              #                    free a1
              #                    free a5
              #                          jump label: branch_false_34 
              #                    store to temp_16_arithop_35 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_16_arithop_35
              #                    store to pIndex_27 in mem offset_illegal
              #                    occupy a1 with 4036_0
    li      a1, 4036
    add     a1,sp,a1
    sw      a5,0(a1)
              #                    free a1
              #                    release a5 with pIndex_27
              #                    store to i_27 in mem offset_illegal
              #                    occupy a4 with 4032_0
    li      a4, 4032
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with i_27
              #                    occupy s3 with _anonymous_of_pIndex_27_0
              #                    load from pIndex_27 in mem

              #                    occupy a0 with pIndex_27
    li      a0, 4036
    add     a0,sp,a0
    lw      s3,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_pivot_27_0
              #                    load from pivot_27 in mem

              #                    occupy a2 with pivot_27
    li      a2, 4040
    add     a2,sp,a2
    lw      s2,0(a2)
              #                    free a2
              #                    occupy a1 with _anonymous_of_end_25_0
              #                    load from end_25 in mem

              #                    occupy a3 with end_25
    li      a3, 8056
    add     a3,sp,a3
    lw      a1,0(a3)
              #                    free a3
              #                    occupy s8 with _anonymous_of_temp_15_cmp_33_0
              #                    load from temp_15_cmp_33 in mem
    lb      s8,11(sp)
              #                    occupy a4 with _anonymous_of_temp_9_array_ptr_27_0
              #                    load from temp_9_array_ptr_27 in mem
              #                    occupy a5 with temp_9_array_ptr_27
    li      a5, 4048
    add     a5,sp,a5
    ld      a4,0(a5)
              #                    free a5
              #                    occupy s4 with _anonymous_of_i_27_0
              #                    load from i_27 in mem

              #                    occupy a6 with i_27
    li      a6, 4032
    add     a6,sp,a6
    lw      s4,0(a6)
              #                    free a6
              #                    store to i_27 in mem offset_illegal
              #                    occupy a6 with 4032_0
    li      a6, 4032
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with i_27
              #                    occupy a6 with _anonymous_of_temp_12_ptr2globl_33_0
              #                    load from temp_12_ptr2globl_33 in mem
    lw      a6,28(sp)
              #                    store to end_25 in mem offset_illegal
              #                    occupy a3 with 8056_0
    li      a3, 8056
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with end_25
              #                    occupy a3 with _anonymous_of_temp_8_ptr2globl_27_0
              #                    load from temp_8_ptr2globl_27 in mem
              #                    occupy a7 with temp_8_ptr2globl_27
    li      a7, 4056
    add     a7,sp,a7
    lw      a3,0(a7)
              #                    free a7
              #                    store to temp_8_ptr2globl_27 in mem offset_illegal
              #                    occupy a7 with 4056_0
    li      a7, 4056
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_8_ptr2globl_27
              #                    occupy a7 with _anonymous_of_temp_13_array_ptr_33_0
              #                    load from temp_13_array_ptr_33 in mem
    ld      a7,16(sp)
              #                    occupy s1 with _anonymous_of_temp_10_array_ele_27_0
              #                    load from temp_10_array_ele_27 in mem

              #                    occupy s5 with temp_10_array_ele_27
    li      s5, 4044
    add     s5,sp,s5
    lw      s1,0(s5)
              #                    free s5
              #                    store to pIndex_27 in mem offset_illegal
              #                    occupy a0 with 4036_0
    li      a0, 4036
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with pIndex_27
              #                    occupy a0 with _anonymous_of_start_25_0
              #                    load from start_25 in mem

              #                    occupy s6 with start_25
    li      s6, 8060
    add     s6,sp,s6
    lw      a0,0(s6)
              #                    free s6
              #                    occupy s7 with _anonymous_of_temp_14_array_ele_33_0
              #                    load from temp_14_array_ele_33 in mem


    lw      s7,12(sp)
              #                    store to pivot_27 in mem offset_illegal
              #                    occupy a2 with 4040_0
    li      a2, 4040
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with pivot_27
              #                    occupy a2 with _anonymous_of_temp_11_cmp_30_0
              #                    load from temp_11_cmp_30 in mem
              #                    occupy s9 with temp_11_cmp_30
    li      s9, 4031
    add     s9,sp,s9
    lb      a2,0(s9)
              #                    free s9
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } |     a2:Freed { symidx: temp_11_cmp_30, tracked: true } |     a3:Freed { symidx: temp_8_ptr2globl_27, tracked: true } |     a4:Freed { symidx: temp_9_array_ptr_27, tracked: true } |     a6:Freed { symidx: temp_12_ptr2globl_33, tracked: true } |     a7:Freed { symidx: temp_13_array_ptr_33, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_27, tracked: true } |     s2:Freed { symidx: pivot_27, tracked: true } |     s3:Freed { symidx: pIndex_27, tracked: true } |     s4:Freed { symidx: i_27, tracked: true } |     s7:Freed { symidx: temp_14_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_15_cmp_33, tracked: true } | 
              #                          label branch_false_34: 
.branch_false_34:
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } |     a2:Freed { symidx: temp_11_cmp_30, tracked: true } |     a3:Freed { symidx: temp_8_ptr2globl_27, tracked: true } |     a4:Freed { symidx: temp_9_array_ptr_27, tracked: true } |     a6:Freed { symidx: temp_12_ptr2globl_33, tracked: true } |     a7:Freed { symidx: temp_13_array_ptr_33, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_27, tracked: true } |     s2:Freed { symidx: pivot_27, tracked: true } |     s3:Freed { symidx: pIndex_27, tracked: true } |     s4:Freed { symidx: i_27, tracked: true } |     s7:Freed { symidx: temp_14_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_15_cmp_33, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_17_arithop_32:i32 
              #                          temp_17_arithop_32 = Add i32 i_27, 1_0 
              #                    occupy s4 with i_27
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s5 with temp_17_arithop_32
    add     s5,s4,a5
              #                    free s4
              #                    free a5
              #                    free s5
              #                          i_27 = i32 temp_17_arithop_32 
              #                    occupy s5 with temp_17_arithop_32
              #                    occupy s4 with i_27
    mv      s4, s5
              #                    free s5
              #                    free s4
              #                          jump label: while.head_31 
              #                    store to temp_15_cmp_33 in mem offset legal
    sb      s8,11(sp)
              #                    release s8 with temp_15_cmp_33
              #                    store to temp_12_ptr2globl_33 in mem offset legal
    sw      a6,28(sp)
              #                    release a6 with temp_12_ptr2globl_33
              #                    store to temp_13_array_ptr_33 in mem offset legal
    sd      a7,16(sp)
              #                    release a7 with temp_13_array_ptr_33
              #                    store to temp_17_arithop_32 in mem offset legal
    sw      s5,0(sp)
              #                    release s5 with temp_17_arithop_32
              #                    store to temp_14_array_ele_33 in mem offset legal
    sw      s7,12(sp)
              #                    release s7 with temp_14_array_ele_33
              #                    store to temp_11_cmp_30 in mem offset_illegal
              #                    occupy a2 with 4031_0
    li      a2, 4031
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_11_cmp_30
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } |     a2:Freed { symidx: temp_11_cmp_30, tracked: true } |     a3:Freed { symidx: temp_8_ptr2globl_27, tracked: true } |     a4:Freed { symidx: temp_9_array_ptr_27, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_27, tracked: true } |     s2:Freed { symidx: pivot_27, tracked: true } |     s3:Freed { symidx: pIndex_27, tracked: true } |     s4:Freed { symidx: i_27, tracked: true } | 
              #                          label while.exit_31: 
.while.exit_31:
              #                           Call void swap_0(pIndex_27, end_25) 
              #                    saved register dumping to mem
              #                    store to temp_10_array_ele_27 in mem offset_illegal
              #                    occupy a5 with 4044_0
    li      a5, 4044
    add     a5,sp,a5
    sw      s1,0(a5)
              #                    free a5
              #                    release s1 with temp_10_array_ele_27
              #                    store to pivot_27 in mem offset_illegal
              #                    occupy a6 with 4040_0
    li      a6, 4040
    add     a6,sp,a6
    sw      s2,0(a6)
              #                    free a6
              #                    release s2 with pivot_27
              #                    store to pIndex_27 in mem offset_illegal
              #                    occupy a7 with 4036_0
    li      a7, 4036
    add     a7,sp,a7
    sw      s3,0(a7)
              #                    free a7
              #                    release s3 with pIndex_27
              #                    store to i_27 in mem offset_illegal
              #                    occupy s1 with 4032_0
    li      s1, 4032
    add     s1,sp,s1
    sw      s4,0(s1)
              #                    free s1
              #                    release s4 with i_27
              #                    store to start_25 in mem offset_illegal
              #                    occupy a0 with 8060_0
    li      a0, 8060
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with start_25
              #                    store to end_25 in mem offset_illegal
              #                    occupy a0 with 8056_0
    li      a0, 8056
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with end_25
              #                    store to temp_11_cmp_30 in mem offset_illegal
              #                    occupy a1 with 4031_0
    li      a1, 4031
    add     a1,sp,a1
    sb      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_11_cmp_30
              #                    store to temp_8_ptr2globl_27 in mem offset_illegal
              #                    occupy a2 with 4056_0
    li      a2, 4056
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_8_ptr2globl_27
              #                    store to temp_9_array_ptr_27 in mem offset_illegal
              #                    occupy a3 with 4048_0
    li      a3, 4048
    add     a3,sp,a3
    sd      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_9_array_ptr_27
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_pIndex_27_0
              #                    load from pIndex_27 in mem

              #                    occupy a4 with pIndex_27
    li      a4, 4036
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    occupy a1 with _anonymous_of_end_25_0
              #                    load from end_25 in mem

              #                    occupy a5 with end_25
    li      a5, 8056
    add     a5,sp,a5
    lw      a1,0(a5)
              #                    free a5
              #                    arg load ended


    call    swap
              #                          ret pIndex_27 
              #                    load from ra_findPivot_0 in mem
              #                    occupy a0 with ra_findPivot_0
    li      a0, 8072
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_findPivot_0 in mem
              #                    occupy a1 with s0_findPivot_0
    li      a1, 8064
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    store to pIndex_27 in mem offset_illegal
              #                    occupy a4 with 4036_0
    li      a4, 4036
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with pIndex_27
              #                    store to ra_findPivot_0 in mem offset_illegal
              #                    occupy a0 with 8072_0
    li      a0, 8072
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with ra_findPivot_0
              #                    occupy a0 with pIndex_27
              #                    load from pIndex_27 in mem

              #                    occupy a4 with pIndex_27
    li      a4, 4036
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    occupy a6 with 8080_0
    li      a6, 8080
    li      a6, 8080
    add     sp,a6,sp
              #                    free a6
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: s0_findPivot_0, tracked: true } |     a4:Freed { symidx: pIndex_27, tracked: true } |     a5:Freed { symidx: end_25, tracked: true } | 
              #                    regtab 
              #                          Define findSmallest_0 [low_41, high_41, k_41, n_41] -> findSmallest_ret_0 
    .globl findSmallest
    .type findSmallest,@function
findSmallest:
              #                    mem layout:|ra_findSmallest:8 at 4080|s0_findSmallest:8 at 4072|low:4 at 4068|high:4 at 4064|k:4 at 4060|n:4 at 4056|temp_18_cmp:1 at 4055|none:3 at 4052|temp_19_ret_of_findPivot:4 at 4048|pIndex:4 at 4044|temp_20_cmp:1 at 4043|none:3 at 4040|i:4 at 4036|temp_21_cmp:1 at 4035|none:3 at 4032|temp_22_ptr2globl:4000 at 32|temp_23_array_ptr:8 at 24|temp_24_array_ele:4 at 20|temp_25_arithop:4 at 16|temp_26_cmp:1 at 15|none:3 at 12|temp_27_arithop:4 at 8|temp_28_arithop:4 at 4|none:4 at 0
              #                    occupy a4 with -4088_0
    li      a4, -4088
    li      a4, -4088
    add     sp,a4,sp
              #                    free a4
              #                    store to ra_findSmallest_0 in mem offset_illegal
              #                    occupy a5 with 4080_0
    li      a5, 4080
    add     a5,sp,a5
    sd      ra,0(a5)
              #                    free a5
              #                    store to s0_findSmallest_0 in mem offset_illegal
              #                    occupy a6 with 4072_0
    li      a6, 4072
    add     a6,sp,a6
    sd      s0,0(a6)
              #                    free a6
              #                    occupy a7 with 4088_0
    li      a7, 4088
    li      a7, 4088
    add     s0,a7,sp
              #                    free a7
              #                          alloc i1 temp_18_cmp_44 
              #                          alloc i32 temp_19_ret_of_findPivot_47 
              #                          alloc i32 pIndex_47 
              #                          alloc i1 temp_20_cmp_49 
              #                          alloc i32 i_51 
              #                          alloc i1 temp_21_cmp_53 
              #                          alloc Array:i32:[Some(1000_0)] temp_22_ptr2globl_55 
              #                          alloc ptr->i32 temp_23_array_ptr_55 
              #                          alloc i32 temp_24_array_ele_55 
              #                          alloc i32 temp_25_arithop_55 
              #                          alloc i1 temp_26_cmp_59 
              #                          alloc i32 temp_27_arithop_61 
              #                          alloc i32 temp_28_arithop_63 
              #                    regtab     a0:Freed { symidx: low_41, tracked: true } |     a1:Freed { symidx: high_41, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: n_41, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_18_cmp_44:i1 
              #                          temp_18_cmp_44 = icmp i32 Eq low_41, high_41 
              #                    occupy a0 with low_41
              #                    occupy a1 with high_41
              #                    occupy a4 with temp_18_cmp_44
    xor     a4,a0,a1
    seqz    a4, a4
              #                    free a0
              #                    free a1
              #                    free a4
              #                          br i1 temp_18_cmp_44, label branch_true_45, label branch_false_45 
              #                    occupy a4 with temp_18_cmp_44
              #                    free a4
              #                    occupy a4 with temp_18_cmp_44
    bnez    a4, .branch_true_45
              #                    free a4
    j       .branch_false_45
              #                    regtab     a0:Freed { symidx: low_41, tracked: true } |     a1:Freed { symidx: high_41, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: n_41, tracked: true } |     a4:Freed { symidx: temp_18_cmp_44, tracked: true } | 
              #                          label branch_true_45: 
.branch_true_45:
              #                          ret 
              #                    load from ra_findSmallest_0 in mem
              #                    occupy a5 with ra_findSmallest_0
    li      a5, 4080
    add     a5,sp,a5
    ld      ra,0(a5)
              #                    free a5
              #                    load from s0_findSmallest_0 in mem
              #                    occupy a6 with s0_findSmallest_0
    li      a6, 4072
    add     a6,sp,a6
    ld      s0,0(a6)
              #                    free a6
              #                    occupy a7 with 4088_0
    li      a7, 4088
    li      a7, 4088
    add     sp,a7,sp
              #                    free a7
    ret
              #                    regtab     a0:Freed { symidx: low_41, tracked: true } |     a1:Freed { symidx: high_41, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: n_41, tracked: true } |     a4:Freed { symidx: temp_18_cmp_44, tracked: true } | 
              #                          label branch_false_45: 
.branch_false_45:
              #                          new_var temp_19_ret_of_findPivot_47:i32 
              #                          temp_19_ret_of_findPivot_47 =  Call i32 findPivot_0(low_41, high_41) 
              #                    saved register dumping to mem
              #                    store to low_41 in mem offset_illegal
              #                    occupy a0 with 4068_0
    li      a0, 4068
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with low_41
              #                    store to high_41 in mem offset_illegal
              #                    occupy a0 with 4064_0
    li      a0, 4064
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with high_41
              #                    store to k_41 in mem offset_illegal
              #                    occupy a1 with 4060_0
    li      a1, 4060
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with k_41
              #                    store to n_41 in mem offset_illegal
              #                    occupy a2 with 4056_0
    li      a2, 4056
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with n_41
              #                    store to temp_18_cmp_44 in mem offset_illegal
              #                    occupy a3 with 4055_0
    li      a3, 4055
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_18_cmp_44
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_low_41_0
              #                    load from low_41 in mem

              #                    occupy a4 with low_41
    li      a4, 4068
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    occupy a1 with _anonymous_of_high_41_0
              #                    load from high_41 in mem

              #                    occupy a5 with high_41
    li      a5, 4064
    add     a5,sp,a5
    lw      a1,0(a5)
              #                    free a5
              #                    arg load ended


    call    findPivot
              #                    store to temp_19_ret_of_findPivot_47 in mem offset_illegal
              #                    occupy a0 with 4048_0
    li      a0, 4048
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          pIndex_47 = i32 temp_19_ret_of_findPivot_47 
              #                    occupy a0 with temp_19_ret_of_findPivot_47
              #                    occupy a1 with pIndex_47
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a4:Freed { symidx: low_41, tracked: true } |     a5:Freed { symidx: high_41, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_20_cmp_49:i1 
              #                          temp_20_cmp_49 = icmp i32 Eq k_41, pIndex_47 
              #                    occupy a2 with k_41
              #                    load from k_41 in mem

              #                    occupy a2 with k_41
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    occupy a1 with pIndex_47
              #                    occupy a3 with temp_20_cmp_49
    xor     a3,a2,a1
    seqz    a3, a3
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_20_cmp_49, label branch_true_50, label branch_false_50 
              #                    occupy a3 with temp_20_cmp_49
              #                    free a3
              #                    occupy a3 with temp_20_cmp_49
    bnez    a3, .branch_true_50
              #                    free a3
    j       .branch_false_50
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_20_cmp_49, tracked: true } |     a4:Freed { symidx: low_41, tracked: true } |     a5:Freed { symidx: high_41, tracked: true } | 
              #                          label branch_true_50: 
.branch_true_50:
              #                          i_51 = i32 0_0 
              #                    occupy a6 with i_51
    li      a6, 0
              #                    free a6
              #                          jump label: while.head_54 
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_20_cmp_49, tracked: true } |     a4:Freed { symidx: low_41, tracked: true } |     a5:Freed { symidx: high_41, tracked: true } |     a6:Freed { symidx: i_51, tracked: true } | 
              #                          label while.head_54: 
.while.head_54:
              #                          new_var temp_21_cmp_53:i1 
              #                          temp_21_cmp_53 = icmp i32 Slt i_51, pIndex_47 
              #                    occupy a6 with i_51
              #                    occupy a1 with pIndex_47
              #                    occupy a7 with temp_21_cmp_53
    slt     a7,a6,a1
              #                    free a6
              #                    free a1
              #                    free a7
              #                          br i1 temp_21_cmp_53, label while.body_54, label while.exit_54 
              #                    occupy a7 with temp_21_cmp_53
              #                    free a7
              #                    occupy a7 with temp_21_cmp_53
    bnez    a7, .while.body_54
              #                    free a7
    j       .while.exit_54
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_20_cmp_49, tracked: true } |     a4:Freed { symidx: low_41, tracked: true } |     a5:Freed { symidx: high_41, tracked: true } |     a6:Freed { symidx: i_51, tracked: true } |     a7:Freed { symidx: temp_21_cmp_53, tracked: true } | 
              #                          label while.body_54: 
.while.body_54:
              #                          new_var temp_22_ptr2globl_55:Array:i32:[Some(1000_0)] 
              #                          temp_22_ptr2globl_55 = load *array_0:ptr->i32 
              #                    occupy s1 with *array_0
              #                       load label array as ptr to reg
    la      s1, array
              #                    occupy reg s1 with *array_0
              #                    occupy s2 with temp_22_ptr2globl_55
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_23_array_ptr_55:ptr->i32 
              #                          temp_23_array_ptr_55 = getelementptr temp_22_ptr2globl_55:Array:i32:[Some(1000_0)] [Some(i_51)] 
              #                    occupy s3 with temp_23_array_ptr_55
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a6 with i_51
              #                    occupy s5 with _anonymous_of_temp_22_ptr2globl_55_0
    mul     s5,s4,a6
              #                    free s4
              #                    free a6
    add     s3,s3,s5
              #                    free s5
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,32
              #                    free s3
              #                          new_var temp_24_array_ele_55:i32 
              #                          temp_24_array_ele_55 = load temp_23_array_ptr_55:ptr->i32 
              #                    occupy s3 with temp_23_array_ptr_55
              #                    occupy s6 with temp_24_array_ele_55
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                           Call void putint_0(temp_24_array_ele_55) 
              #                    saved register dumping to mem
              #                    store to temp_22_ptr2globl_55 in mem offset legal
    sw      s2,32(sp)
              #                    release s2 with temp_22_ptr2globl_55
              #                    store to temp_23_array_ptr_55 in mem offset legal
    sd      s3,24(sp)
              #                    release s3 with temp_23_array_ptr_55
              #                    store to temp_24_array_ele_55 in mem offset legal
    sw      s6,20(sp)
              #                    release s6 with temp_24_array_ele_55
              #                    store to temp_19_ret_of_findPivot_47 in mem offset_illegal
              #                    occupy a0 with 4048_0
    li      a0, 4048
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_19_ret_of_findPivot_47
              #                    store to pIndex_47 in mem offset_illegal
              #                    occupy a0 with 4044_0
    li      a0, 4044
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with pIndex_47
              #                    store to k_41 in mem offset_illegal
              #                    occupy a1 with 4060_0
    li      a1, 4060
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with k_41
              #                    store to temp_20_cmp_49 in mem offset_illegal
              #                    occupy a2 with 4043_0
    li      a2, 4043
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_20_cmp_49
              #                    store to low_41 in mem offset_illegal
              #                    occupy a3 with 4068_0
    li      a3, 4068
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with low_41
              #                    store to high_41 in mem offset_illegal
              #                    occupy a4 with 4064_0
    li      a4, 4064
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with high_41
              #                    store to i_51 in mem offset_illegal
              #                    occupy a5 with 4036_0
    li      a5, 4036
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with i_51
              #                    store to temp_21_cmp_53 in mem offset_illegal
              #                    occupy a6 with 4035_0
    li      a6, 4035
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_21_cmp_53
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_24_array_ele_55_0
              #                    load from temp_24_array_ele_55 in mem


    lw      a0,20(sp)
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
              #                          new_var temp_25_arithop_55:i32 
              #                          temp_25_arithop_55 = Add i32 i_51, 1_0 
              #                    occupy a0 with i_51
              #                    load from i_51 in mem

              #                    occupy a0 with i_51
    add     a0,sp,a0
    lw      a0,0(a0)
              #                    free a0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_25_arithop_55
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_51 = i32 temp_25_arithop_55 
              #                    occupy a2 with temp_25_arithop_55
              #                    occupy a0 with i_51
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_54 
              #                    store to i_51 in mem offset_illegal
              #                    occupy a0 with 4036_0
    li      a0, 4036
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_51
              #                    store to temp_25_arithop_55 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_25_arithop_55
              #                    occupy a4 with _anonymous_of_low_41_0
              #                    load from low_41 in mem

              #                    occupy a0 with low_41
    li      a0, 4068
    add     a0,sp,a0
    lw      a4,0(a0)
              #                    free a0
              #                    occupy a5 with _anonymous_of_high_41_0
              #                    load from high_41 in mem

              #                    occupy a1 with high_41
    li      a1, 4064
    add     a1,sp,a1
    lw      a5,0(a1)
              #                    free a1
              #                    store to low_41 in mem offset_illegal
              #                    occupy a0 with 4068_0
    li      a0, 4068
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with low_41
              #                    occupy a0 with _anonymous_of_temp_19_ret_of_findPivot_47_0
              #                    load from temp_19_ret_of_findPivot_47 in mem

              #                    occupy a2 with temp_19_ret_of_findPivot_47
    li      a2, 4048
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    occupy a6 with _anonymous_of_i_51_0
              #                    load from i_51 in mem

              #                    occupy a3 with i_51
    li      a3, 4036
    add     a3,sp,a3
    lw      a6,0(a3)
              #                    free a3
              #                    store to high_41 in mem offset_illegal
              #                    occupy a1 with 4064_0
    li      a1, 4064
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with high_41
              #                    occupy a1 with _anonymous_of_pIndex_47_0
              #                    load from pIndex_47 in mem

              #                    occupy a7 with pIndex_47
    li      a7, 4044
    add     a7,sp,a7
    lw      a1,0(a7)
              #                    free a7
              #                    store to i_51 in mem offset_illegal
              #                    occupy a3 with 4036_0
    li      a3, 4036
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with i_51
              #                    occupy a3 with _anonymous_of_temp_20_cmp_49_0
              #                    load from temp_20_cmp_49 in mem
              #                    occupy s1 with temp_20_cmp_49
    li      s1, 4043
    add     s1,sp,s1
    lb      a3,0(s1)
              #                    free s1
              #                    store to temp_19_ret_of_findPivot_47 in mem offset_illegal
              #                    occupy a2 with 4048_0
    li      a2, 4048
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_19_ret_of_findPivot_47
              #                    occupy a2 with _anonymous_of_k_41_0
              #                    load from k_41 in mem

              #                    occupy s2 with k_41
    li      s2, 4060
    add     s2,sp,s2
    lw      a2,0(s2)
              #                    free s2
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_20_cmp_49, tracked: true } |     a4:Freed { symidx: low_41, tracked: true } |     a5:Freed { symidx: high_41, tracked: true } | 
              #                          label branch_false_50: 
.branch_false_50:
              #                          new_var temp_26_cmp_59:i1 
              #                          temp_26_cmp_59 = icmp i32 Slt k_41, pIndex_47 
              #                    occupy a2 with k_41
              #                    occupy a1 with pIndex_47
              #                    occupy a6 with temp_26_cmp_59
    slt     a6,a2,a1
              #                    free a2
              #                    free a1
              #                    free a6
              #                          br i1 temp_26_cmp_59, label branch_true_60, label branch_false_60 
              #                    occupy a6 with temp_26_cmp_59
              #                    free a6
              #                    occupy a6 with temp_26_cmp_59
    bnez    a6, .branch_true_60
              #                    free a6
    j       .branch_false_60
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_20_cmp_49, tracked: true } |     a4:Freed { symidx: low_41, tracked: true } |     a5:Freed { symidx: high_41, tracked: true } |     a6:Freed { symidx: temp_26_cmp_59, tracked: true } | 
              #                          label branch_true_60: 
.branch_true_60:
              #                          new_var temp_27_arithop_61:i32 
              #                          temp_27_arithop_61 = Sub i32 pIndex_47, 1_0 
              #                    occupy a1 with pIndex_47
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_27_arithop_61
              #                    regtab:    a0:Freed { symidx: temp_19_ret_of_findPivot_47, tracked: true } |     a1:Occupied { symidx: pIndex_47, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_20_cmp_49, tracked: true } |     a4:Freed { symidx: low_41, tracked: true } |     a5:Freed { symidx: high_41, tracked: true } |     a6:Freed { symidx: temp_26_cmp_59, tracked: true } |     a7:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Occupied { symidx: temp_27_arithop_61, tracked: true, occupy_count: 1 } | 


    sub     s1,a1,a7
              #                    free a1
              #                    free a7
              #                    free s1
              #                           Call void findSmallest_0(low_41, temp_27_arithop_61, k_41, n_41) 
              #                    saved register dumping to mem
              #                    store to temp_27_arithop_61 in mem offset legal
    sw      s1,8(sp)
              #                    release s1 with temp_27_arithop_61
              #                    store to temp_19_ret_of_findPivot_47 in mem offset_illegal
              #                    occupy a0 with 4048_0
    li      a0, 4048
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_19_ret_of_findPivot_47
              #                    store to pIndex_47 in mem offset_illegal
              #                    occupy a0 with 4044_0
    li      a0, 4044
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with pIndex_47
              #                    store to k_41 in mem offset_illegal
              #                    occupy a1 with 4060_0
    li      a1, 4060
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with k_41
              #                    store to temp_20_cmp_49 in mem offset_illegal
              #                    occupy a2 with 4043_0
    li      a2, 4043
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_20_cmp_49
              #                    store to low_41 in mem offset_illegal
              #                    occupy a3 with 4068_0
    li      a3, 4068
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with low_41
              #                    store to high_41 in mem offset_illegal
              #                    occupy a4 with 4064_0
    li      a4, 4064
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with high_41
              #                    store to temp_26_cmp_59 in mem offset legal
    sb      a6,15(sp)
              #                    release a6 with temp_26_cmp_59
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_low_41_0
              #                    load from low_41 in mem

              #                    occupy a5 with low_41
    li      a5, 4068
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    occupy a1 with _anonymous_of_temp_27_arithop_61_0
              #                    load from temp_27_arithop_61 in mem


    lw      a1,8(sp)
              #                    occupy a2 with _anonymous_of_k_41_0
              #                    load from k_41 in mem

              #                    occupy a6 with k_41
    li      a6, 4060
    add     a6,sp,a6
    lw      a2,0(a6)
              #                    free a6
              #                    occupy a3 with _anonymous_of_n_41_0
              #                    load from n_41 in mem

              #                    occupy a7 with n_41
    li      a7, 4056
    add     a7,sp,a7
    lw      a3,0(a7)
              #                    free a7
              #                    arg load ended


    call    findSmallest
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_20_cmp_49, tracked: true } |     a4:Freed { symidx: low_41, tracked: true } |     a5:Freed { symidx: high_41, tracked: true } |     a6:Freed { symidx: temp_26_cmp_59, tracked: true } | 
              #                          label branch_false_60: 
.branch_false_60:
              #                          new_var temp_28_arithop_63:i32 
              #                          temp_28_arithop_63 = Add i32 pIndex_47, 1_0 
              #                    occupy a1 with pIndex_47
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_28_arithop_63
    add     s1,a1,a7
              #                    free a1
              #                    free a7
              #                    free s1
              #                           Call void findSmallest_0(temp_28_arithop_63, high_41, k_41, n_41) 
              #                    saved register dumping to mem
              #                    store to temp_28_arithop_63 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_28_arithop_63
              #                    store to temp_19_ret_of_findPivot_47 in mem offset_illegal
              #                    occupy a0 with 4048_0
    li      a0, 4048
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_19_ret_of_findPivot_47
              #                    store to pIndex_47 in mem offset_illegal
              #                    occupy a0 with 4044_0
    li      a0, 4044
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with pIndex_47
              #                    store to k_41 in mem offset_illegal
              #                    occupy a1 with 4060_0
    li      a1, 4060
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with k_41
              #                    store to temp_20_cmp_49 in mem offset_illegal
              #                    occupy a2 with 4043_0
    li      a2, 4043
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_20_cmp_49
              #                    store to low_41 in mem offset_illegal
              #                    occupy a3 with 4068_0
    li      a3, 4068
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with low_41
              #                    store to high_41 in mem offset_illegal
              #                    occupy a4 with 4064_0
    li      a4, 4064
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with high_41
              #                    store to temp_26_cmp_59 in mem offset legal
    sb      a6,15(sp)
              #                    release a6 with temp_26_cmp_59
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_28_arithop_63_0
              #                    load from temp_28_arithop_63 in mem


    lw      a0,4(sp)
              #                    occupy a1 with _anonymous_of_high_41_0
              #                    load from high_41 in mem

              #                    occupy a5 with high_41
    li      a5, 4064
    add     a5,sp,a5
    lw      a1,0(a5)
              #                    free a5
              #                    occupy a2 with _anonymous_of_k_41_0
              #                    load from k_41 in mem

              #                    occupy a6 with k_41
    li      a6, 4060
    add     a6,sp,a6
    lw      a2,0(a6)
              #                    free a6
              #                    occupy a3 with _anonymous_of_n_41_0
              #                    load from n_41 in mem

              #                    occupy a7 with n_41
    li      a7, 4056
    add     a7,sp,a7
    lw      a3,0(a7)
              #                    free a7
              #                    arg load ended


    call    findSmallest
              #                          jump label: L3_0 
              #                    store to high_41 in mem offset_illegal
              #                    occupy a0 with 4064_0
    li      a0, 4064
    add     a0,sp,a0
    sw      a5,0(a0)
              #                    free a0
              #                    release a5 with high_41
              #                    occupy a5 with _anonymous_of_low_41_0
              #                    load from low_41 in mem

              #                    occupy a0 with low_41
    li      a0, 4068
    add     a0,sp,a0
    lw      a5,0(a0)
              #                    free a0
              #                    store to low_41 in mem offset_illegal
              #                    occupy a0 with 4068_0
    li      a0, 4068
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with low_41
    j       .L3_0
              #                    regtab     a5:Freed { symidx: low_41, tracked: true } |     a6:Freed { symidx: k_41, tracked: true } |     a7:Freed { symidx: n_41, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_20_cmp_49, tracked: true } |     a4:Freed { symidx: low_41, tracked: true } |     a5:Freed { symidx: high_41, tracked: true } |     a6:Freed { symidx: i_51, tracked: true } |     a7:Freed { symidx: temp_21_cmp_53, tracked: true } | 
              #                          label while.exit_54: 
.while.exit_54:
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_20_cmp_49, tracked: true } |     a4:Freed { symidx: low_41, tracked: true } |     a5:Freed { symidx: high_41, tracked: true } |     a6:Freed { symidx: i_51, tracked: true } |     a7:Freed { symidx: temp_21_cmp_53, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_20_cmp_49, tracked: true } |     a4:Freed { symidx: low_41, tracked: true } |     a5:Freed { symidx: high_41, tracked: true } |     a6:Freed { symidx: i_51, tracked: true } |     a7:Freed { symidx: temp_21_cmp_53, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 64|s0_main:8 at 56|temp_29_ret_of_getint:4 at 52|n:4 at 48|temp_30_ret_of_getint:4 at 44|k:4 at 40|i:4 at 36|temp_31_cmp:1 at 35|none:3 at 32|temp_32_index_ptr:8 at 24|temp_33_ret_of_getint:4 at 20|temp_34_arithop:4 at 16|low:4 at 12|temp_35_arithop:4 at 8|high:4 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_main_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc i32 temp_29_ret_of_getint_66 
              #                          alloc i32 n_66 
              #                          alloc i32 temp_30_ret_of_getint_66 
              #                          alloc i32 k_66 
              #                          alloc i32 i_66 
              #                          alloc i1 temp_31_cmp_69 
              #                          alloc ptr->i32 temp_32_index_ptr_71 
              #                          alloc i32 temp_33_ret_of_getint_71 
              #                          alloc i32 temp_34_arithop_71 
              #                          alloc i32 low_66 
              #                          alloc i32 temp_35_arithop_66 
              #                          alloc i32 high_66 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_29_ret_of_getint_66:i32 
              #                          temp_29_ret_of_getint_66 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_29_ret_of_getint_66 in mem offset legal
    sw      a0,52(sp)
              #                          n_66 = i32 temp_29_ret_of_getint_66 
              #                    occupy a0 with temp_29_ret_of_getint_66
              #                    occupy a1 with n_66
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_30_ret_of_getint_66:i32 
              #                          temp_30_ret_of_getint_66 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_29_ret_of_getint_66 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_29_ret_of_getint_66
              #                    store to n_66 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with n_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_30_ret_of_getint_66 in mem offset legal
    sw      a0,44(sp)
              #                          k_66 = i32 temp_30_ret_of_getint_66 
              #                    occupy a0 with temp_30_ret_of_getint_66
              #                    occupy a1 with k_66
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_66 = i32 0_0 
              #                    occupy a2 with i_66
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_66, tracked: true } |     a1:Freed { symidx: k_66, tracked: true } |     a2:Freed { symidx: i_66, tracked: true } | 
              #                          label while.head_70: 
.while.head_70:
              #                          new_var temp_31_cmp_69:i1 
              #                          temp_31_cmp_69 = icmp i32 Slt i_66, n_66 
              #                    occupy a2 with i_66
              #                    occupy a3 with n_66
              #                    load from n_66 in mem


    lw      a3,48(sp)
              #                    occupy a4 with temp_31_cmp_69
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_31_cmp_69, label while.body_70, label while.exit_70 
              #                    occupy a4 with temp_31_cmp_69
              #                    free a4
              #                    occupy a4 with temp_31_cmp_69
    bnez    a4, .while.body_70
              #                    free a4
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_66, tracked: true } |     a1:Freed { symidx: k_66, tracked: true } |     a2:Freed { symidx: i_66, tracked: true } |     a3:Freed { symidx: n_66, tracked: true } |     a4:Freed { symidx: temp_31_cmp_69, tracked: true } | 
              #                          label while.body_70: 
.while.body_70:
              #                          new_var temp_32_index_ptr_71:ptr->i32 
              #                          temp_32_index_ptr_71 = getelementptr array_0:Array:i32:[Some(1000_0)] [Some(i_66)] 
              #                    occupy a5 with temp_32_index_ptr_71
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a2 with i_66
              #                    occupy a7 with _anonymous_of_array_0_0
    mul     a7,a6,a2
              #                    free a6
              #                    free a2
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with _anonymous_of_array_0_0
    la      s1, array
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_33_ret_of_getint_71:i32 
              #                          temp_33_ret_of_getint_71 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_30_ret_of_getint_66 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_30_ret_of_getint_66
              #                    store to k_66 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with k_66
              #                    store to i_66 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_66
              #                    store to n_66 in mem offset legal
    sw      a3,48(sp)
              #                    release a3 with n_66
              #                    store to temp_31_cmp_69 in mem offset legal
    sb      a4,35(sp)
              #                    release a4 with temp_31_cmp_69
              #                    store to temp_32_index_ptr_71 in mem offset legal
    sd      a5,24(sp)
              #                    release a5 with temp_32_index_ptr_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_33_ret_of_getint_71 in mem offset legal
    sw      a0,20(sp)
              #                          store temp_33_ret_of_getint_71:i32 temp_32_index_ptr_71:ptr->i32 
              #                    occupy a1 with temp_32_index_ptr_71
              #                    load from temp_32_index_ptr_71 in mem
    ld      a1,24(sp)
              #                    occupy a0 with temp_33_ret_of_getint_71
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu array_0:191 
              #                          array_0 = chi array_0:191 
              #                          new_var temp_34_arithop_71:i32 
              #                          temp_34_arithop_71 = Add i32 i_66, 1_0 
              #                    occupy a2 with i_66
              #                    load from i_66 in mem


    lw      a2,36(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_34_arithop_71
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_66 = i32 temp_34_arithop_71 
              #                    occupy a4 with temp_34_arithop_71
              #                    occupy a2 with i_66
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_70 
              #                    store to temp_33_ret_of_getint_71 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_33_ret_of_getint_71
              #                    store to temp_34_arithop_71 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_34_arithop_71
              #                    store to temp_32_index_ptr_71 in mem offset legal
    sd      a1,24(sp)
              #                    release a1 with temp_32_index_ptr_71
              #                    occupy a0 with _anonymous_of_temp_30_ret_of_getint_66_0
              #                    load from temp_30_ret_of_getint_66 in mem


    lw      a0,44(sp)
              #                    occupy a1 with _anonymous_of_k_66_0
              #                    load from k_66 in mem


    lw      a1,40(sp)
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_66, tracked: true } |     a1:Freed { symidx: k_66, tracked: true } |     a2:Freed { symidx: i_66, tracked: true } |     a3:Freed { symidx: n_66, tracked: true } |     a4:Freed { symidx: temp_31_cmp_69, tracked: true } | 
              #                          label while.exit_70: 
.while.exit_70:
              #                          low_66 = i32 0_0 
              #                    occupy a5 with low_66
    li      a5, 0
              #                    free a5
              #                          new_var temp_35_arithop_66:i32 
              #                          temp_35_arithop_66 = Sub i32 n_66, 1_0 
              #                    occupy a3 with n_66
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_35_arithop_66
              #                    regtab:    a0:Freed { symidx: temp_30_ret_of_getint_66, tracked: true } |     a1:Freed { symidx: k_66, tracked: true } |     a2:Freed { symidx: i_66, tracked: true } |     a3:Occupied { symidx: n_66, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_31_cmp_69, tracked: true } |     a5:Freed { symidx: low_66, tracked: true } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Occupied { symidx: temp_35_arithop_66, tracked: true, occupy_count: 1 } | 


    sub     a7,a3,a6
              #                    free a3
              #                    free a6
              #                    free a7
              #                          high_66 = i32 temp_35_arithop_66 
              #                    occupy a7 with temp_35_arithop_66
              #                    occupy s1 with high_66
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                           Call void findSmallest_0(low_66, high_66, k_66, n_66) 
              #                    saved register dumping to mem
              #                    store to high_66 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with high_66
              #                    store to temp_30_ret_of_getint_66 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_30_ret_of_getint_66
              #                    store to k_66 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with k_66
              #                    store to i_66 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_66
              #                    store to n_66 in mem offset legal
    sw      a3,48(sp)
              #                    release a3 with n_66
              #                    store to temp_31_cmp_69 in mem offset legal
    sb      a4,35(sp)
              #                    release a4 with temp_31_cmp_69
              #                    store to low_66 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with low_66
              #                    store to temp_35_arithop_66 in mem offset legal
    sw      a7,8(sp)
              #                    release a7 with temp_35_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_low_66_0
              #                    load from low_66 in mem


    lw      a0,12(sp)
              #                    occupy a1 with _anonymous_of_high_66_0
              #                    load from high_66 in mem


    lw      a1,4(sp)
              #                    occupy a2 with _anonymous_of_k_66_0
              #                    load from k_66 in mem


    lw      a2,40(sp)
              #                    occupy a3 with _anonymous_of_n_66_0
              #                    load from n_66 in mem


    lw      a3,48(sp)
              #                    arg load ended


    call    findSmallest
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,64(sp)
              #                    load from s0_main_0 in mem
    ld      s0,56(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl array
              #                          global Array:i32:[Some(1000_0)] array_0 
    .type array,@object
array:
    .zero 4000
    .align 4
    .globl space
              #                          global i32 space_0 
    .type space,@object
space:
    .word 32
    .align 4
    .globl maxN
              #                          global i32 maxN_0 
    .type maxN,@object
maxN:
    .word 1000
