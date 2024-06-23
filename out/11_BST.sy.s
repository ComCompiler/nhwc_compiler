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
              #                          Define search_0 [root_23, x_23] -> search_ret_0 
    .globl search
    .type search,@function
search:
              #                    mem layout:|ra_search:8 at 160080|s0_search:8 at 160072|root:4 at 160068|x:4 at 160064|temp_0_ptr2globl:40000 at 120064|temp_1_array_ptr:8 at 120056|temp_2_array_ele:4 at 120052|temp_3_cmp:1 at 120051|temp_4_cmp:1 at 120050|temp_5_logic:1 at 120049|none:1 at 120048|temp_6_ptr2globl:40000 at 80048|temp_7_array_ptr:8 at 80040|temp_8_array_ele:4 at 80036|temp_9_cmp:1 at 80035|none:3 at 80032|temp_10_ptr2globl:40000 at 40032|temp_11_array_ptr:8 at 40024|temp_12_array_ele:4 at 40020|temp_13_ret_of_search:4 at 40016|temp_14_ptr2globl:40000 at 16|temp_15_array_ptr:8 at 8|temp_16_array_ele:4 at 4|temp_17_ret_of_search:4 at 0
              #                    occupy a2 with -160088_0
    li      a2, -160088
    li      a2, -160088
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_search_0 in mem offset_illegal
              #                    occupy a3 with 160080_0
    li      a3, 160080
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_search_0 in mem offset_illegal
              #                    occupy a4 with 160072_0
    li      a4, 160072
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 160088_0
    li      a5, 160088
    li      a5, 160088
    add     s0,a5,sp
              #                    free a5
              #                          alloc Array:i32:[Some(10000_0)] temp_0_ptr2globl_26 
              #                          alloc ptr->i32 temp_1_array_ptr_26 
              #                          alloc i32 temp_2_array_ele_26 
              #                          alloc i1 temp_3_cmp_26 
              #                          alloc i1 temp_4_cmp_26 
              #                          alloc i1 temp_5_logic_26 
              #                          alloc Array:i32:[Some(10000_0)] temp_6_ptr2globl_29 
              #                          alloc ptr->i32 temp_7_array_ptr_29 
              #                          alloc i32 temp_8_array_ele_29 
              #                          alloc i1 temp_9_cmp_29 
              #                          alloc Array:i32:[Some(10000_0)] temp_10_ptr2globl_29 
              #                          alloc ptr->i32 temp_11_array_ptr_29 
              #                          alloc i32 temp_12_array_ele_29 
              #                          alloc i32 temp_13_ret_of_search_29 
              #                          alloc Array:i32:[Some(10000_0)] temp_14_ptr2globl_29 
              #                          alloc ptr->i32 temp_15_array_ptr_29 
              #                          alloc i32 temp_16_array_ele_29 
              #                          alloc i32 temp_17_ret_of_search_29 
              #                    regtab     a0:Freed { symidx: root_23, tracked: true } |     a1:Freed { symidx: x_23, tracked: true } | 
              #                          label L20_0: 
.L20_0:
              #                          new_var temp_0_ptr2globl_26:Array:i32:[Some(10000_0)] 
              #                          temp_0_ptr2globl_26 = load *value_0:ptr->i32 
              #                    occupy a2 with *value_0
              #                       load label value as ptr to reg
    la      a2, value
              #                    occupy reg a2 with *value_0
              #                    occupy a3 with temp_0_ptr2globl_26
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_1_array_ptr_26:ptr->i32 
              #                          temp_1_array_ptr_26 = getelementptr temp_0_ptr2globl_26:Array:i32:[Some(10000_0)] [Some(root_23)] 
              #                    occupy a4 with temp_1_array_ptr_26
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with root_23
              #                    occupy a6 with _anonymous_of_temp_0_ptr2globl_26_0
    mul     a6,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
              #                    occupy a7 with 120064_0
    li      a7, 120064
    li      a7, 120064
    add     a4,a7,a4
              #                    free a7
              #                    free a4
              #                          new_var temp_2_array_ele_26:i32 
              #                          temp_2_array_ele_26 = load temp_1_array_ptr_26:ptr->i32 
              #                    occupy a4 with temp_1_array_ptr_26
              #                    occupy s1 with temp_2_array_ele_26
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          new_var temp_3_cmp_26:i1 
              #                          temp_3_cmp_26 = icmp i32 Eq temp_2_array_ele_26, x_23 
              #                    occupy s1 with temp_2_array_ele_26
              #                    occupy a1 with x_23
              #                    occupy s2 with temp_3_cmp_26
    xor     s2,s1,a1
    seqz    s2, s2
              #                    free s1
              #                    free a1
              #                    free s2
              #                          new_var temp_4_cmp_26:i1 
              #                          temp_4_cmp_26 = icmp i32 Eq root_23, -1_0 
              #                    occupy a0 with root_23
              #                    occupy s3 with -1_0
    li      s3, -1
              #                    occupy s4 with temp_4_cmp_26
    xor     s4,a0,s3
    seqz    s4, s4
              #                    free a0
              #                    free s3
              #                    free s4
              #                          new_var temp_5_logic_26:i1 
              #                          temp_5_logic_26 = Or i1 temp_4_cmp_26, temp_3_cmp_26 
              #                    occupy s4 with temp_4_cmp_26
              #                    occupy s2 with temp_3_cmp_26
              #                    occupy s2 with temp_3_cmp_26
              #                    free s4
              #                    free s2
              #                    free s2
              #                          br i1 temp_5_logic_26, label branch_true_27, label branch_false_27 
              #                    occupy s5 with temp_5_logic_26
              #                    load from temp_5_logic_26 in mem
              #                    occupy s5 with temp_5_logic_26
    add     s5,sp,s5
    lb      s5,0(s5)
              #                    free s5
              #                    free s5
              #                    occupy s5 with temp_5_logic_26
    bnez    s5, .branch_true_27
              #                    free s5
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: root_23, tracked: true } |     a1:Freed { symidx: x_23, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a4:Freed { symidx: temp_1_array_ptr_26, tracked: true } |     s1:Freed { symidx: temp_2_array_ele_26, tracked: true } |     s2:Freed { symidx: temp_3_cmp_26, tracked: true } |     s4:Freed { symidx: temp_4_cmp_26, tracked: true } |     s5:Freed { symidx: temp_5_logic_26, tracked: true } | 
              #                          label branch_true_27: 
.branch_true_27:
              #                          ret root_23 
              #                    load from ra_search_0 in mem
              #                    occupy a2 with ra_search_0
    li      a2, 160080
    add     a2,sp,a2
    ld      ra,0(a2)
              #                    free a2
              #                    load from s0_search_0 in mem
              #                    occupy a5 with s0_search_0
    li      a5, 160072
    add     a5,sp,a5
    ld      s0,0(a5)
              #                    free a5
              #                    store to root_23 in mem offset_illegal
              #                    occupy a0 with 160068_0
    li      a0, 160068
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_23
              #                    occupy a0 with root_23
              #                    load from root_23 in mem

              #                    occupy a6 with root_23
    li      a6, 160068
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy a7 with 160088_0
    li      a7, 160088
    li      a7, 160088
    add     sp,a7,sp
              #                    free a7
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_23, tracked: true } |     a1:Freed { symidx: x_23, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a4:Freed { symidx: temp_1_array_ptr_26, tracked: true } |     s1:Freed { symidx: temp_2_array_ele_26, tracked: true } |     s2:Freed { symidx: temp_3_cmp_26, tracked: true } |     s4:Freed { symidx: temp_4_cmp_26, tracked: true } |     s5:Freed { symidx: temp_5_logic_26, tracked: true } | 
              #                          label branch_false_27: 
.branch_false_27:
              #                          new_var temp_6_ptr2globl_29:Array:i32:[Some(10000_0)] 
              #                          temp_6_ptr2globl_29 = load *value_0:ptr->i32 
              #                    occupy a2 with *value_0
              #                       load label value as ptr to reg
    la      a2, value
              #                    occupy reg a2 with *value_0
              #                    occupy a5 with temp_6_ptr2globl_29
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          new_var temp_7_array_ptr_29:ptr->i32 
              #                          temp_7_array_ptr_29 = getelementptr temp_6_ptr2globl_29:Array:i32:[Some(10000_0)] [Some(root_23)] 
              #                    occupy a6 with temp_7_array_ptr_29
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a0 with root_23
              #                    occupy s3 with _anonymous_of_temp_6_ptr2globl_29_0
    mul     s3,a7,a0
              #                    free a7
              #                    free a0
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
    add     a6,a6,sp
              #                    occupy s6 with 80048_0
    li      s6, 80048
    li      s6, 80048
    add     a6,s6,a6
              #                    free s6
              #                    free a6
              #                          new_var temp_8_array_ele_29:i32 
              #                          temp_8_array_ele_29 = load temp_7_array_ptr_29:ptr->i32 
              #                    occupy a6 with temp_7_array_ptr_29
              #                    occupy s7 with temp_8_array_ele_29
    lw      s7,0(a6)
              #                    free s7
              #                    free a6
              #                          new_var temp_9_cmp_29:i1 
              #                          temp_9_cmp_29 = icmp i32 Sgt x_23, temp_8_array_ele_29 
              #                    occupy a1 with x_23
              #                    occupy s7 with temp_8_array_ele_29
              #                    occupy s8 with temp_9_cmp_29
    slt     s8,s7,a1
              #                    free a1
              #                    free s7
              #                    free s8
              #                          br i1 temp_9_cmp_29, label branch_true_30, label branch_false_30 
              #                    occupy s8 with temp_9_cmp_29
              #                    free s8
              #                    occupy s8 with temp_9_cmp_29
    bnez    s8, .branch_true_30
              #                    free s8
    j       .branch_false_30
              #                    regtab     a0:Freed { symidx: root_23, tracked: true } |     a1:Freed { symidx: x_23, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a4:Freed { symidx: temp_1_array_ptr_26, tracked: true } |     a5:Freed { symidx: temp_6_ptr2globl_29, tracked: true } |     a6:Freed { symidx: temp_7_array_ptr_29, tracked: true } |     s1:Freed { symidx: temp_2_array_ele_26, tracked: true } |     s2:Freed { symidx: temp_3_cmp_26, tracked: true } |     s4:Freed { symidx: temp_4_cmp_26, tracked: true } |     s5:Freed { symidx: temp_5_logic_26, tracked: true } |     s7:Freed { symidx: temp_8_array_ele_29, tracked: true } |     s8:Freed { symidx: temp_9_cmp_29, tracked: true } | 
              #                          label branch_true_30: 
.branch_true_30:
              #                          new_var temp_10_ptr2globl_29:Array:i32:[Some(10000_0)] 
              #                          temp_10_ptr2globl_29 = load *right_child_0:ptr->i32 
              #                    occupy a2 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a2, right_child
              #                    occupy reg a2 with *right_child_0
              #                    occupy a7 with temp_10_ptr2globl_29
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_11_array_ptr_29:ptr->i32 
              #                          temp_11_array_ptr_29 = getelementptr temp_10_ptr2globl_29:Array:i32:[Some(10000_0)] [Some(root_23)] 
              #                    occupy s3 with temp_11_array_ptr_29
    li      s3, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a0 with root_23
              #                    occupy s9 with _anonymous_of_temp_10_ptr2globl_29_0
    mul     s9,s6,a0
              #                    free s6
              #                    free a0
    add     s3,s3,s9
              #                    free s9
    slli s3,s3,2
    add     s3,s3,sp
              #                    occupy s10 with 40032_0
    li      s10, 40032
    li      s10, 40032
    add     s3,s10,s3
              #                    free s10
              #                    free s3
              #                          new_var temp_12_array_ele_29:i32 
              #                          temp_12_array_ele_29 = load temp_11_array_ptr_29:ptr->i32 
              #                    occupy s3 with temp_11_array_ptr_29
              #                    occupy s11 with temp_12_array_ele_29
    lw      s11,0(s3)
              #                    free s11
              #                    free s3
              #                          new_var temp_13_ret_of_search_29:i32 
              #                          temp_13_ret_of_search_29 =  Call i32 search_0(temp_12_array_ele_29, x_23) 
              #                    saved register dumping to mem
              #                    store to temp_2_array_ele_26 in mem offset_illegal
              #                    occupy s1 with 120052_0
    li      s1, 120052
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_2_array_ele_26
              #                    store to temp_3_cmp_26 in mem offset_illegal
              #                    occupy s1 with 120051_0
    li      s1, 120051
    add     s1,sp,s1
    sb      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_3_cmp_26
              #                    store to temp_11_array_ptr_29 in mem offset_illegal
              #                    occupy s2 with 40024_0
    li      s2, 40024
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_11_array_ptr_29
              #                    store to temp_4_cmp_26 in mem offset_illegal
              #                    occupy s3 with 120050_0
    li      s3, 120050
    add     s3,sp,s3
    sb      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_4_cmp_26
              #                    store to temp_5_logic_26 in mem offset_illegal
              #                    occupy s4 with 120049_0
    li      s4, 120049
    add     s4,sp,s4
    sb      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_5_logic_26
              #                    store to temp_8_array_ele_29 in mem offset_illegal
              #                    occupy s5 with 80036_0
    li      s5, 80036
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_8_array_ele_29
              #                    store to temp_9_cmp_29 in mem offset_illegal
              #                    occupy s6 with 80035_0
    li      s6, 80035
    add     s6,sp,s6
    sb      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_9_cmp_29
              #                    store to temp_12_array_ele_29 in mem offset_illegal
              #                    occupy s7 with 40020_0
    li      s7, 40020
    add     s7,sp,s7
    sw      s11,0(s7)
              #                    free s7
              #                    release s11 with temp_12_array_ele_29
              #                    store to root_23 in mem offset_illegal
              #                    occupy a0 with 160068_0
    li      a0, 160068
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_23
              #                    store to x_23 in mem offset_illegal
              #                    occupy a0 with 160064_0
    li      a0, 160064
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with x_23
              #                    store to temp_0_ptr2globl_26 in mem offset_illegal
              #                    occupy a1 with 120064_0
    li      a1, 120064
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_0_ptr2globl_26
              #                    store to temp_1_array_ptr_26 in mem offset_illegal
              #                    occupy a2 with 120056_0
    li      a2, 120056
    add     a2,sp,a2
    sd      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_1_array_ptr_26
              #                    store to temp_6_ptr2globl_29 in mem offset_illegal
              #                    occupy a3 with 80048_0
    li      a3, 80048
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_6_ptr2globl_29
              #                    store to temp_7_array_ptr_29 in mem offset_illegal
              #                    occupy a4 with 80040_0
    li      a4, 80040
    add     a4,sp,a4
    sd      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_7_array_ptr_29
              #                    store to temp_10_ptr2globl_29 in mem offset_illegal
              #                    occupy a5 with 40032_0
    li      a5, 40032
    add     a5,sp,a5
    sw      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_10_ptr2globl_29
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_12_array_ele_29_0
              #                    load from temp_12_array_ele_29 in mem

              #                    occupy a6 with temp_12_array_ele_29
    li      a6, 40020
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy a1 with _anonymous_of_x_23_0
              #                    load from x_23 in mem

              #                    occupy a7 with x_23
    li      a7, 160064
    add     a7,sp,a7
    lw      a1,0(a7)
              #                    free a7
              #                    arg load ended


    call    search
              #                    store to temp_13_ret_of_search_29 in mem offset_illegal
              #                    occupy a0 with 40016_0
    li      a0, 40016
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          ret temp_13_ret_of_search_29 
              #                    load from ra_search_0 in mem
              #                    occupy a1 with ra_search_0
    li      a1, 160080
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_search_0 in mem
              #                    occupy s8 with s0_search_0
    li      s8, 160072
    add     s8,sp,s8
    ld      s0,0(s8)
              #                    free s8
              #                    store to temp_13_ret_of_search_29 in mem offset_illegal
              #                    occupy a0 with 40016_0
    li      a0, 40016
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_13_ret_of_search_29
              #                    occupy a0 with temp_13_ret_of_search_29
              #                    load from temp_13_ret_of_search_29 in mem

              #                    occupy s9 with temp_13_ret_of_search_29
    li      s9, 40016
    add     s9,sp,s9
    lw      a0,0(s9)
              #                    free s9
              #                    occupy s10 with 160088_0
    li      s10, 160088
    li      s10, 160088
    add     sp,s10,sp
              #                    free s10
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_23, tracked: true } |     a1:Freed { symidx: x_23, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a4:Freed { symidx: temp_1_array_ptr_26, tracked: true } |     a5:Freed { symidx: temp_6_ptr2globl_29, tracked: true } |     a6:Freed { symidx: temp_7_array_ptr_29, tracked: true } |     s1:Freed { symidx: temp_2_array_ele_26, tracked: true } |     s2:Freed { symidx: temp_3_cmp_26, tracked: true } |     s4:Freed { symidx: temp_4_cmp_26, tracked: true } |     s5:Freed { symidx: temp_5_logic_26, tracked: true } |     s7:Freed { symidx: temp_8_array_ele_29, tracked: true } |     s8:Freed { symidx: temp_9_cmp_29, tracked: true } | 
              #                          label branch_false_30: 
.branch_false_30:
              #                          new_var temp_14_ptr2globl_29:Array:i32:[Some(10000_0)] 
              #                          temp_14_ptr2globl_29 = load *left_child_0:ptr->i32 
              #                    occupy a2 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a2, left_child
              #                    occupy reg a2 with *left_child_0
              #                    occupy a7 with temp_14_ptr2globl_29
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_15_array_ptr_29:ptr->i32 
              #                          temp_15_array_ptr_29 = getelementptr temp_14_ptr2globl_29:Array:i32:[Some(10000_0)] [Some(root_23)] 
              #                    occupy s3 with temp_15_array_ptr_29
    li      s3, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a0 with root_23
              #                    occupy s9 with _anonymous_of_temp_14_ptr2globl_29_0
    mul     s9,s6,a0
              #                    free s6
              #                    free a0
    add     s3,s3,s9
              #                    free s9
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,16
              #                    free s3
              #                          new_var temp_16_array_ele_29:i32 
              #                          temp_16_array_ele_29 = load temp_15_array_ptr_29:ptr->i32 
              #                    occupy s3 with temp_15_array_ptr_29
              #                    occupy s10 with temp_16_array_ele_29
    lw      s10,0(s3)
              #                    free s10
              #                    free s3
              #                          new_var temp_17_ret_of_search_29:i32 
              #                          temp_17_ret_of_search_29 =  Call i32 search_0(temp_16_array_ele_29, x_23) 
              #                    saved register dumping to mem
              #                    store to temp_2_array_ele_26 in mem offset_illegal
              #                    occupy s1 with 120052_0
    li      s1, 120052
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_2_array_ele_26
              #                    store to temp_3_cmp_26 in mem offset_illegal
              #                    occupy s1 with 120051_0
    li      s1, 120051
    add     s1,sp,s1
    sb      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_3_cmp_26
              #                    store to temp_15_array_ptr_29 in mem offset legal
    sd      s3,8(sp)
              #                    release s3 with temp_15_array_ptr_29
              #                    store to temp_4_cmp_26 in mem offset_illegal
              #                    occupy s2 with 120050_0
    li      s2, 120050
    add     s2,sp,s2
    sb      s4,0(s2)
              #                    free s2
              #                    release s4 with temp_4_cmp_26
              #                    store to temp_5_logic_26 in mem offset_illegal
              #                    occupy s3 with 120049_0
    li      s3, 120049
    add     s3,sp,s3
    sb      s5,0(s3)
              #                    free s3
              #                    release s5 with temp_5_logic_26
              #                    store to temp_8_array_ele_29 in mem offset_illegal
              #                    occupy s4 with 80036_0
    li      s4, 80036
    add     s4,sp,s4
    sw      s7,0(s4)
              #                    free s4
              #                    release s7 with temp_8_array_ele_29
              #                    store to temp_9_cmp_29 in mem offset_illegal
              #                    occupy s5 with 80035_0
    li      s5, 80035
    add     s5,sp,s5
    sb      s8,0(s5)
              #                    free s5
              #                    release s8 with temp_9_cmp_29
              #                    store to temp_16_array_ele_29 in mem offset legal
    sw      s10,4(sp)
              #                    release s10 with temp_16_array_ele_29
              #                    store to root_23 in mem offset_illegal
              #                    occupy a0 with 160068_0
    li      a0, 160068
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_23
              #                    store to x_23 in mem offset_illegal
              #                    occupy a0 with 160064_0
    li      a0, 160064
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with x_23
              #                    store to temp_0_ptr2globl_26 in mem offset_illegal
              #                    occupy a1 with 120064_0
    li      a1, 120064
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_0_ptr2globl_26
              #                    store to temp_1_array_ptr_26 in mem offset_illegal
              #                    occupy a2 with 120056_0
    li      a2, 120056
    add     a2,sp,a2
    sd      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_1_array_ptr_26
              #                    store to temp_6_ptr2globl_29 in mem offset_illegal
              #                    occupy a3 with 80048_0
    li      a3, 80048
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_6_ptr2globl_29
              #                    store to temp_7_array_ptr_29 in mem offset_illegal
              #                    occupy a4 with 80040_0
    li      a4, 80040
    add     a4,sp,a4
    sd      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_7_array_ptr_29
              #                    store to temp_14_ptr2globl_29 in mem offset legal
    sw      a7,16(sp)
              #                    release a7 with temp_14_ptr2globl_29
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_16_array_ele_29_0
              #                    load from temp_16_array_ele_29 in mem


    lw      a0,4(sp)
              #                    occupy a1 with _anonymous_of_x_23_0
              #                    load from x_23 in mem

              #                    occupy a5 with x_23
    li      a5, 160064
    add     a5,sp,a5
    lw      a1,0(a5)
              #                    free a5
              #                    arg load ended


    call    search
              #                    store to temp_17_ret_of_search_29 in mem offset legal
    sw      a0,0(sp)
              #                          ret temp_17_ret_of_search_29 
              #                    load from ra_search_0 in mem
              #                    occupy a1 with ra_search_0
    li      a1, 160080
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_search_0 in mem
              #                    occupy a6 with s0_search_0
    li      a6, 160072
    add     a6,sp,a6
    ld      s0,0(a6)
              #                    free a6
              #                    store to temp_17_ret_of_search_29 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_17_ret_of_search_29
              #                    occupy a0 with temp_17_ret_of_search_29
              #                    load from temp_17_ret_of_search_29 in mem


    lw      a0,0(sp)
              #                    occupy a7 with 160088_0
    li      a7, 160088
    li      a7, 160088
    add     sp,a7,sp
              #                    free a7
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ra_search_0, tracked: true } |     a5:Freed { symidx: x_23, tracked: true } |     a6:Freed { symidx: s0_search_0, tracked: true } | 
              #                          label L21_0: 
.L21_0:
              #                    regtab     a1:Freed { symidx: ra_search_0, tracked: true } |     a5:Freed { symidx: x_23, tracked: true } |     a6:Freed { symidx: s0_search_0, tracked: true } | 
              #                          label L22_0: 
.L22_0:
              #                    regtab     a1:Freed { symidx: ra_search_0, tracked: true } |     a5:Freed { symidx: x_23, tracked: true } |     a6:Freed { symidx: s0_search_0, tracked: true } | 
              #                    regtab 
              #                          Define find_minimum_0 [root_33] -> find_minimum_ret_0 
    .globl find_minimum
    .type find_minimum,@function
find_minimum:
              #                    mem layout:|ra_find_minimum:8 at 80056|s0_find_minimum:8 at 80048|root:4 at 80044|temp_18_cmp:1 at 80043|none:3 at 80040|temp_19_:4 at 80036|temp_20_ptr2globl:40000 at 40036|none:4 at 40032|temp_21_array_ptr:8 at 40024|temp_22_array_ele:4 at 40020|temp_23_cmp:1 at 40019|none:3 at 40016|temp_24_ptr2globl:40000 at 16|temp_25_array_ptr:8 at 8|temp_26_array_ele:4 at 4|temp_27_ret_of_find_minimum:4 at 0
              #                    occupy a1 with -80064_0
    li      a1, -80064
    li      a1, -80064
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_find_minimum_0 in mem offset_illegal
              #                    occupy a2 with 80056_0
    li      a2, 80056
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_find_minimum_0 in mem offset_illegal
              #                    occupy a3 with 80048_0
    li      a3, 80048
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 80064_0
    li      a4, 80064
    li      a4, 80064
    add     s0,a4,sp
              #                    free a4
              #                          alloc i1 temp_18_cmp_36 
              #                          alloc i32 temp_19__38 
              #                          alloc Array:i32:[Some(10000_0)] temp_20_ptr2globl_40 
              #                          alloc ptr->i32 temp_21_array_ptr_40 
              #                          alloc i32 temp_22_array_ele_40 
              #                          alloc i1 temp_23_cmp_40 
              #                          alloc Array:i32:[Some(10000_0)] temp_24_ptr2globl_42 
              #                          alloc ptr->i32 temp_25_array_ptr_42 
              #                          alloc i32 temp_26_array_ele_42 
              #                          alloc i32 temp_27_ret_of_find_minimum_42 
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } | 
              #                          label L17_0: 
.L17_0:
              #                          new_var temp_18_cmp_36:i1 
              #                          temp_18_cmp_36 = icmp i32 Eq root_33, -1_0 
              #                    occupy a0 with root_33
              #                    occupy a1 with -1_0
    li      a1, -1
              #                    occupy a2 with temp_18_cmp_36
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_18_cmp_36, label branch_true_37, label branch_false_37 
              #                    occupy a2 with temp_18_cmp_36
              #                    free a2
              #                    occupy a2 with temp_18_cmp_36
    bnez    a2, .branch_true_37
              #                    free a2
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } |     a2:Freed { symidx: temp_18_cmp_36, tracked: true } | 
              #                          label branch_true_37: 
.branch_true_37:
              #                          new_var temp_19__38:i32 
              #                          temp_19__38 = Sub i32 0_0, 1_0 
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_19__38
              #                    regtab:    a0:Freed { symidx: root_33, tracked: true } |     a1:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_18_cmp_36, tracked: true } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Occupied { symidx: temp_19__38, tracked: true, occupy_count: 1 } | 


    sub     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          ret temp_19__38 
              #                    load from ra_find_minimum_0 in mem
              #                    occupy a5 with ra_find_minimum_0
    li      a5, 80056
    add     a5,sp,a5
    ld      ra,0(a5)
              #                    free a5
              #                    load from s0_find_minimum_0 in mem
              #                    occupy a6 with s0_find_minimum_0
    li      a6, 80048
    add     a6,sp,a6
    ld      s0,0(a6)
              #                    free a6
              #                    store to temp_19__38 in mem offset_illegal
              #                    occupy a4 with 80036_0
    li      a4, 80036
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_19__38
              #                    store to root_33 in mem offset_illegal
              #                    occupy a0 with 80044_0
    li      a0, 80044
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_33
              #                    occupy a0 with temp_19__38
              #                    load from temp_19__38 in mem

              #                    occupy a4 with temp_19__38
    li      a4, 80036
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    occupy a7 with 80064_0
    li      a7, 80064
    li      a7, 80064
    add     sp,a7,sp
              #                    free a7
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } |     a2:Freed { symidx: temp_18_cmp_36, tracked: true } | 
              #                          label branch_false_37: 
.branch_false_37:
              #                          new_var temp_20_ptr2globl_40:Array:i32:[Some(10000_0)] 
              #                          temp_20_ptr2globl_40 = load *left_child_0:ptr->i32 
              #                    occupy a1 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a1, left_child
              #                    occupy reg a1 with *left_child_0
              #                    occupy a3 with temp_20_ptr2globl_40
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_21_array_ptr_40:ptr->i32 
              #                          temp_21_array_ptr_40 = getelementptr temp_20_ptr2globl_40:Array:i32:[Some(10000_0)] [Some(root_33)] 
              #                    occupy a4 with temp_21_array_ptr_40
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with root_33
              #                    occupy a6 with _anonymous_of_temp_20_ptr2globl_40_0
    mul     a6,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
              #                    occupy a7 with 40036_0
    li      a7, 40036
    li      a7, 40036
    add     a4,a7,a4
              #                    free a7
              #                    free a4
              #                          new_var temp_22_array_ele_40:i32 
              #                          temp_22_array_ele_40 = load temp_21_array_ptr_40:ptr->i32 
              #                    occupy a4 with temp_21_array_ptr_40
              #                    occupy s1 with temp_22_array_ele_40
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          new_var temp_23_cmp_40:i1 
              #                          temp_23_cmp_40 = icmp i32 Ne temp_22_array_ele_40, -1_0 
              #                    occupy s1 with temp_22_array_ele_40
              #                    occupy s2 with -1_0
    li      s2, -1
              #                    occupy s3 with temp_23_cmp_40
    xor     s3,s1,s2
    snez    s3, s3
              #                    free s1
              #                    free s2
              #                    free s3
              #                          br i1 temp_23_cmp_40, label branch_true_41, label branch_false_41 
              #                    occupy s3 with temp_23_cmp_40
              #                    free s3
              #                    occupy s3 with temp_23_cmp_40
    bnez    s3, .branch_true_41
              #                    free s3
    j       .branch_false_41
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } |     a2:Freed { symidx: temp_18_cmp_36, tracked: true } |     a3:Freed { symidx: temp_20_ptr2globl_40, tracked: true } |     a4:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s1:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_23_cmp_40, tracked: true } | 
              #                          label branch_true_41: 
.branch_true_41:
              #                          new_var temp_24_ptr2globl_42:Array:i32:[Some(10000_0)] 
              #                          temp_24_ptr2globl_42 = load *left_child_0:ptr->i32 
              #                    occupy a1 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a1, left_child
              #                    occupy reg a1 with *left_child_0
              #                    occupy a5 with temp_24_ptr2globl_42
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_25_array_ptr_42:ptr->i32 
              #                          temp_25_array_ptr_42 = getelementptr temp_24_ptr2globl_42:Array:i32:[Some(10000_0)] [Some(root_33)] 
              #                    occupy a6 with temp_25_array_ptr_42
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a0 with root_33
              #                    occupy s2 with _anonymous_of_temp_24_ptr2globl_42_0
    mul     s2,a7,a0
              #                    free a7
              #                    free a0
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,16
              #                    free a6
              #                          new_var temp_26_array_ele_42:i32 
              #                          temp_26_array_ele_42 = load temp_25_array_ptr_42:ptr->i32 
              #                    occupy a6 with temp_25_array_ptr_42
              #                    occupy s4 with temp_26_array_ele_42
    lw      s4,0(a6)
              #                    free s4
              #                    free a6
              #                          new_var temp_27_ret_of_find_minimum_42:i32 
              #                          temp_27_ret_of_find_minimum_42 =  Call i32 find_minimum_0(temp_26_array_ele_42) 
              #                    saved register dumping to mem
              #                    store to temp_22_array_ele_40 in mem offset_illegal
              #                    occupy s1 with 40020_0
    li      s1, 40020
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_22_array_ele_40
              #                    store to temp_23_cmp_40 in mem offset_illegal
              #                    occupy s1 with 40019_0
    li      s1, 40019
    add     s1,sp,s1
    sb      s3,0(s1)
              #                    free s1
              #                    release s3 with temp_23_cmp_40
              #                    store to temp_26_array_ele_42 in mem offset legal
    sw      s4,4(sp)
              #                    release s4 with temp_26_array_ele_42
              #                    store to root_33 in mem offset_illegal
              #                    occupy a0 with 80044_0
    li      a0, 80044
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_33
              #                    store to temp_18_cmp_36 in mem offset_illegal
              #                    occupy a0 with 80043_0
    li      a0, 80043
    add     a0,sp,a0
    sb      a2,0(a0)
              #                    free a0
              #                    release a2 with temp_18_cmp_36
              #                    store to temp_20_ptr2globl_40 in mem offset_illegal
              #                    occupy a1 with 40036_0
    li      a1, 40036
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_20_ptr2globl_40
              #                    store to temp_21_array_ptr_40 in mem offset_illegal
              #                    occupy a2 with 40024_0
    li      a2, 40024
    add     a2,sp,a2
    sd      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_21_array_ptr_40
              #                    store to temp_24_ptr2globl_42 in mem offset legal
    sw      a5,16(sp)
              #                    release a5 with temp_24_ptr2globl_42
              #                    store to temp_25_array_ptr_42 in mem offset legal
    sd      a6,8(sp)
              #                    release a6 with temp_25_array_ptr_42
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_26_array_ele_42_0
              #                    load from temp_26_array_ele_42 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    find_minimum
              #                    store to temp_27_ret_of_find_minimum_42 in mem offset legal
    sw      a0,0(sp)
              #                          ret temp_27_ret_of_find_minimum_42 
              #                    load from ra_find_minimum_0 in mem
              #                    occupy a3 with ra_find_minimum_0
    li      a3, 80056
    add     a3,sp,a3
    ld      ra,0(a3)
              #                    free a3
              #                    load from s0_find_minimum_0 in mem
              #                    occupy a4 with s0_find_minimum_0
    li      a4, 80048
    add     a4,sp,a4
    ld      s0,0(a4)
              #                    free a4
              #                    store to temp_27_ret_of_find_minimum_42 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_27_ret_of_find_minimum_42
              #                    occupy a0 with temp_27_ret_of_find_minimum_42
              #                    load from temp_27_ret_of_find_minimum_42 in mem


    lw      a0,0(sp)
              #                    occupy a5 with 80064_0
    li      a5, 80064
    li      a5, 80064
    add     sp,a5,sp
              #                    free a5
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } |     a2:Freed { symidx: temp_18_cmp_36, tracked: true } |     a3:Freed { symidx: temp_20_ptr2globl_40, tracked: true } |     a4:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s1:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_23_cmp_40, tracked: true } | 
              #                          label branch_false_41: 
.branch_false_41:
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } |     a2:Freed { symidx: temp_18_cmp_36, tracked: true } |     a3:Freed { symidx: temp_20_ptr2globl_40, tracked: true } |     a4:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s1:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_23_cmp_40, tracked: true } | 
              #                          label L18_0: 
.L18_0:
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } |     a2:Freed { symidx: temp_18_cmp_36, tracked: true } |     a3:Freed { symidx: temp_20_ptr2globl_40, tracked: true } |     a4:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s1:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_23_cmp_40, tracked: true } | 
              #                          label L19_0: 
.L19_0:
              #                          ret root_33 
              #                    load from ra_find_minimum_0 in mem
              #                    occupy a1 with ra_find_minimum_0
    li      a1, 80056
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_find_minimum_0 in mem
              #                    occupy a5 with s0_find_minimum_0
    li      a5, 80048
    add     a5,sp,a5
    ld      s0,0(a5)
              #                    free a5
              #                    store to root_33 in mem offset_illegal
              #                    occupy a0 with 80044_0
    li      a0, 80044
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_33
              #                    occupy a0 with root_33
              #                    load from root_33 in mem

              #                    occupy a6 with root_33
    li      a6, 80044
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy a7 with 80064_0
    li      a7, 80064
    li      a7, 80064
    add     sp,a7,sp
              #                    free a7
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ra_find_minimum_0, tracked: true } |     a2:Freed { symidx: temp_18_cmp_36, tracked: true } |     a3:Freed { symidx: temp_20_ptr2globl_40, tracked: true } |     a4:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     a5:Freed { symidx: s0_find_minimum_0, tracked: true } |     a6:Freed { symidx: root_33, tracked: true } |     s1:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_23_cmp_40, tracked: true } | 
              #                    regtab 
              #                          Define new_node_0 [x_45] -> new_node_ret_0 
    .globl new_node
    .type new_node,@function
new_node:
              #                    mem layout:|ra_new_node:8 at 72|s0_new_node:8 at 64|x:4 at 60|temp_28_ptr2globl:4 at 56|temp_29_index_ptr:8 at 48|temp_30_ptr2globl:4 at 44|none:4 at 40|temp_31_index_ptr:8 at 32|temp_32_ptr2globl:4 at 28|none:4 at 24|temp_33_index_ptr:8 at 16|temp_34_ptr2globl:4 at 12|temp_35_arithop:4 at 8|temp_36_ptr2globl:4 at 4|temp_37_arithop:4 at 0
    addi    sp,sp,-80
              #                    store to ra_new_node_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_new_node_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          alloc i32 temp_28_ptr2globl_47 
              #                          alloc ptr->i32 temp_29_index_ptr_47 
              #                          alloc i32 temp_30_ptr2globl_47 
              #                          alloc ptr->i32 temp_31_index_ptr_47 
              #                          alloc i32 temp_32_ptr2globl_47 
              #                          alloc ptr->i32 temp_33_index_ptr_47 
              #                          alloc i32 temp_34_ptr2globl_47 
              #                          alloc i32 temp_35_arithop_47 
              #                          alloc i32 temp_36_ptr2globl_47 
              #                          alloc i32 temp_37_arithop_47 
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } | 
              #                          label L16_0: 
.L16_0:
              #                          new_var temp_28_ptr2globl_47:i32 
              #                          temp_28_ptr2globl_47 = load *now_0:ptr->i32 
              #                    occupy a1 with *now_0
              #                       load label now as ptr to reg
    la      a1, now
              #                    occupy reg a1 with *now_0
              #                    occupy a2 with temp_28_ptr2globl_47
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_29_index_ptr_47:ptr->i32 
              #                          temp_29_index_ptr_47 = getelementptr value_0:Array:i32:[Some(10000_0)] [Some(temp_28_ptr2globl_47)] 
              #                    occupy a3 with temp_29_index_ptr_47
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a2 with temp_28_ptr2globl_47
              #                    occupy a5 with _anonymous_of_value_0_0
    mul     a5,a4,a2
              #                    free a4
              #                    free a2
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a6 with _anonymous_of_value_0_0
    la      a6, value
    add     a3,a3,a6
              #                    free a6
              #                    free a3
              #                          store x_45:i32 temp_29_index_ptr_47:ptr->i32 
              #                    occupy a3 with temp_29_index_ptr_47
              #                    occupy a0 with x_45
    sw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          mu value_0:149 
              #                          value_0 = chi value_0:149 
              #                          new_var temp_30_ptr2globl_47:i32 
              #                          temp_30_ptr2globl_47 = load *now_0:ptr->i32 
              #                    occupy a7 with *now_0
              #                       load label now as ptr to reg
    la      a7, now
              #                    occupy reg a7 with *now_0
              #                    occupy s1 with temp_30_ptr2globl_47
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_31_index_ptr_47:ptr->i32 
              #                          temp_31_index_ptr_47 = getelementptr left_child_0:Array:i32:[Some(10000_0)] [Some(temp_30_ptr2globl_47)] 
              #                    occupy s2 with temp_31_index_ptr_47
    li      s2, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s1 with temp_30_ptr2globl_47
              #                    occupy s3 with _anonymous_of_left_child_0_0
    mul     s3,a4,s1
              #                    free a4
              #                    free s1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy s4 with _anonymous_of_left_child_0_0
    la      s4, left_child
    add     s2,s2,s4
              #                    free s4
              #                    free s2
              #                          store -1_0:i32 temp_31_index_ptr_47:ptr->i32 
              #                    occupy s2 with temp_31_index_ptr_47
              #                    occupy s5 with -1_0
    li      s5, -1
    sw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          mu left_child_0:158 
              #                          left_child_0 = chi left_child_0:158 
              #                          new_var temp_32_ptr2globl_47:i32 
              #                          temp_32_ptr2globl_47 = load *now_0:ptr->i32 
              #                    occupy s6 with *now_0
              #                       load label now as ptr to reg
    la      s6, now
              #                    occupy reg s6 with *now_0
              #                    occupy s7 with temp_32_ptr2globl_47
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          new_var temp_33_index_ptr_47:ptr->i32 
              #                          temp_33_index_ptr_47 = getelementptr right_child_0:Array:i32:[Some(10000_0)] [Some(temp_32_ptr2globl_47)] 
              #                    occupy s8 with temp_33_index_ptr_47
    li      s8, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s7 with temp_32_ptr2globl_47
              #                    occupy s9 with _anonymous_of_right_child_0_0
    mul     s9,a4,s7
              #                    free a4
              #                    free s7
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
              #                    occupy s10 with _anonymous_of_right_child_0_0
    la      s10, right_child
    add     s8,s8,s10
              #                    free s10
              #                    free s8
              #                          store -1_0:i32 temp_33_index_ptr_47:ptr->i32 
              #                    occupy s8 with temp_33_index_ptr_47
              #                    found literal reg Some(s5) already exist with -1_0
              #                    occupy s5 with -1_0
    sw      s5,0(s8)
              #                    free s5
              #                    free s8
              #                          mu right_child_0:167 
              #                          right_child_0 = chi right_child_0:167 
              #                          new_var temp_34_ptr2globl_47:i32 
              #                          temp_34_ptr2globl_47 = load *now_0:ptr->i32 
              #                    occupy s11 with *now_0
              #                       load label now as ptr to reg
    la      s11, now
              #                    occupy reg s11 with *now_0
              #                    occupy a1 with temp_34_ptr2globl_47
    lw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          new_var temp_35_arithop_47:i32 
              #                          temp_35_arithop_47 = Add i32 temp_34_ptr2globl_47, 1_0 
              #                    occupy a1 with temp_34_ptr2globl_47
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a5 with temp_35_arithop_47
    add     a5,a1,a4
              #                    free a1
              #                    free a4
              #                    free a5
              #                          store temp_35_arithop_47:i32 *now_0:ptr->i32 
              #                    occupy a4 with *now_0
              #                       load label now as ptr to reg
    la      a4, now
              #                    occupy reg a4 with *now_0
              #                    occupy a5 with temp_35_arithop_47
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_36_ptr2globl_47:i32 
              #                          temp_36_ptr2globl_47 = load *now_0:ptr->i32 
              #                    occupy a4 with *now_0
              #                       load label now as ptr to reg
    la      a4, now
              #                    occupy reg a4 with *now_0
              #                    occupy a6 with temp_36_ptr2globl_47
    lw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                          new_var temp_37_arithop_47:i32 
              #                          temp_37_arithop_47 = Sub i32 temp_36_ptr2globl_47, 1_0 
              #                    occupy a6 with temp_36_ptr2globl_47
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a7 with temp_37_arithop_47
              #                    regtab:    a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: temp_34_ptr2globl_47, tracked: true } |     a2:Freed { symidx: temp_28_ptr2globl_47, tracked: true } |     a3:Freed { symidx: temp_29_index_ptr_47, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_35_arithop_47, tracked: true } |     a6:Occupied { symidx: temp_36_ptr2globl_47, tracked: true, occupy_count: 1 } |     a7:Occupied { symidx: temp_37_arithop_47, tracked: true, occupy_count: 1 } |     s10:Freed { symidx: _anonymous_of_right_child_0_0, tracked: false } |     s11:Freed { symidx: *now_0, tracked: false } |     s1:Freed { symidx: temp_30_ptr2globl_47, tracked: true } |     s2:Freed { symidx: temp_31_index_ptr_47, tracked: true } |     s3:Freed { symidx: _anonymous_of_left_child_0_0, tracked: false } |     s4:Freed { symidx: _anonymous_of_left_child_0_0, tracked: false } |     s5:Freed { symidx: -1_0, tracked: false } |     s6:Freed { symidx: *now_0, tracked: false } |     s7:Freed { symidx: temp_32_ptr2globl_47, tracked: true } |     s8:Freed { symidx: temp_33_index_ptr_47, tracked: true } |     s9:Freed { symidx: _anonymous_of_right_child_0_0, tracked: false } | 


    sub     a7,a6,a4
              #                    free a6
              #                    free a4
              #                    free a7
              #                          ret temp_37_arithop_47 
              #                    load from ra_new_node_0 in mem
    ld      ra,72(sp)
              #                    load from s0_new_node_0 in mem
    ld      s0,64(sp)
              #                    store to temp_37_arithop_47 in mem offset legal
    sw      a7,0(sp)
              #                    release a7 with temp_37_arithop_47
              #                    store to x_45 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with x_45
              #                    occupy a0 with temp_37_arithop_47
              #                    load from temp_37_arithop_47 in mem


    lw      a0,0(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_34_ptr2globl_47, tracked: true } |     a2:Freed { symidx: temp_28_ptr2globl_47, tracked: true } |     a3:Freed { symidx: temp_29_index_ptr_47, tracked: true } |     a5:Freed { symidx: temp_35_arithop_47, tracked: true } |     a6:Freed { symidx: temp_36_ptr2globl_47, tracked: true } |     s1:Freed { symidx: temp_30_ptr2globl_47, tracked: true } |     s2:Freed { symidx: temp_31_index_ptr_47, tracked: true } |     s7:Freed { symidx: temp_32_ptr2globl_47, tracked: true } |     s8:Freed { symidx: temp_33_index_ptr_47, tracked: true } | 
              #                    regtab 
              #                          Define insert_0 [root_53, x_53] -> insert_ret_0 
    .globl insert
    .type insert,@function
insert:
              #                    mem layout:|ra_insert:8 at 120088|s0_insert:8 at 120080|root:4 at 120076|x:4 at 120072|temp_38_cmp:1 at 120071|none:3 at 120068|temp_39_ret_of_new_node:4 at 120064|temp_40_ptr2globl:40000 at 80064|temp_41_array_ptr:8 at 80056|temp_42_array_ele:4 at 80052|temp_43_cmp:1 at 80051|none:3 at 80048|temp_44_index_ptr:8 at 80040|temp_45_ptr2globl:40000 at 40040|temp_46_array_ptr:8 at 40032|temp_47_array_ele:4 at 40028|temp_48_ret_of_insert:4 at 40024|temp_49_index_ptr:8 at 40016|temp_50_ptr2globl:40000 at 16|temp_51_array_ptr:8 at 8|temp_52_array_ele:4 at 4|temp_53_ret_of_insert:4 at 0
              #                    occupy a2 with -120096_0
    li      a2, -120096
    li      a2, -120096
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_insert_0 in mem offset_illegal
              #                    occupy a3 with 120088_0
    li      a3, 120088
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_insert_0 in mem offset_illegal
              #                    occupy a4 with 120080_0
    li      a4, 120080
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 120096_0
    li      a5, 120096
    li      a5, 120096
    add     s0,a5,sp
              #                    free a5
              #                          alloc i1 temp_38_cmp_56 
              #                          alloc i32 temp_39_ret_of_new_node_58 
              #                          alloc Array:i32:[Some(10000_0)] temp_40_ptr2globl_60 
              #                          alloc ptr->i32 temp_41_array_ptr_60 
              #                          alloc i32 temp_42_array_ele_60 
              #                          alloc i1 temp_43_cmp_60 
              #                          alloc ptr->i32 temp_44_index_ptr_60 
              #                          alloc Array:i32:[Some(10000_0)] temp_45_ptr2globl_60 
              #                          alloc ptr->i32 temp_46_array_ptr_60 
              #                          alloc i32 temp_47_array_ele_60 
              #                          alloc i32 temp_48_ret_of_insert_60 
              #                          alloc ptr->i32 temp_49_index_ptr_63 
              #                          alloc Array:i32:[Some(10000_0)] temp_50_ptr2globl_63 
              #                          alloc ptr->i32 temp_51_array_ptr_63 
              #                          alloc i32 temp_52_array_ele_63 
              #                          alloc i32 temp_53_ret_of_insert_63 
              #                    regtab     a0:Freed { symidx: root_53, tracked: true } |     a1:Freed { symidx: x_53, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_38_cmp_56:i1 
              #                          temp_38_cmp_56 = icmp i32 Eq root_53, -1_0 
              #                    occupy a0 with root_53
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    occupy a3 with temp_38_cmp_56
    xor     a3,a0,a2
    seqz    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_38_cmp_56, label branch_true_57, label branch_false_57 
              #                    occupy a3 with temp_38_cmp_56
              #                    free a3
              #                    occupy a3 with temp_38_cmp_56
    bnez    a3, .branch_true_57
              #                    free a3
    j       .branch_false_57
              #                    regtab     a0:Freed { symidx: root_53, tracked: true } |     a1:Freed { symidx: x_53, tracked: true } |     a3:Freed { symidx: temp_38_cmp_56, tracked: true } | 
              #                          label branch_true_57: 
.branch_true_57:
              #                          new_var temp_39_ret_of_new_node_58:i32 
              #                          temp_39_ret_of_new_node_58 =  Call i32 new_node_0(x_53) 
              #                    saved register dumping to mem
              #                    store to root_53 in mem offset_illegal
              #                    occupy a0 with 120076_0
    li      a0, 120076
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_53
              #                    store to x_53 in mem offset_illegal
              #                    occupy a0 with 120072_0
    li      a0, 120072
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with x_53
              #                    store to temp_38_cmp_56 in mem offset_illegal
              #                    occupy a1 with 120071_0
    li      a1, 120071
    add     a1,sp,a1
    sb      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_38_cmp_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_53_0
              #                    load from x_53 in mem

              #                    occupy a2 with x_53
    li      a2, 120072
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    arg load ended


    call    new_node
              #                    store to temp_39_ret_of_new_node_58 in mem offset_illegal
              #                    occupy a0 with 120064_0
    li      a0, 120064
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          ret temp_39_ret_of_new_node_58 
              #                    load from ra_insert_0 in mem
              #                    occupy a3 with ra_insert_0
    li      a3, 120088
    add     a3,sp,a3
    ld      ra,0(a3)
              #                    free a3
              #                    load from s0_insert_0 in mem
              #                    occupy a4 with s0_insert_0
    li      a4, 120080
    add     a4,sp,a4
    ld      s0,0(a4)
              #                    free a4
              #                    store to temp_39_ret_of_new_node_58 in mem offset_illegal
              #                    occupy a0 with 120064_0
    li      a0, 120064
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_39_ret_of_new_node_58
              #                    occupy a0 with temp_39_ret_of_new_node_58
              #                    load from temp_39_ret_of_new_node_58 in mem

              #                    occupy a5 with temp_39_ret_of_new_node_58
    li      a5, 120064
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    occupy a6 with 120096_0
    li      a6, 120096
    li      a6, 120096
    add     sp,a6,sp
              #                    free a6
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_53, tracked: true } |     a1:Freed { symidx: x_53, tracked: true } |     a3:Freed { symidx: temp_38_cmp_56, tracked: true } | 
              #                          label branch_false_57: 
.branch_false_57:
              #                          new_var temp_40_ptr2globl_60:Array:i32:[Some(10000_0)] 
              #                          temp_40_ptr2globl_60 = load *value_0:ptr->i32 
              #                    occupy a2 with *value_0
              #                       load label value as ptr to reg
    la      a2, value
              #                    occupy reg a2 with *value_0
              #                    occupy a4 with temp_40_ptr2globl_60
    lw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                          new_var temp_41_array_ptr_60:ptr->i32 
              #                          temp_41_array_ptr_60 = getelementptr temp_40_ptr2globl_60:Array:i32:[Some(10000_0)] [Some(root_53)] 
              #                    occupy a5 with temp_41_array_ptr_60
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with root_53
              #                    occupy a7 with _anonymous_of_temp_40_ptr2globl_60_0
    mul     a7,a6,a0
              #                    free a6
              #                    free a0
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
              #                    occupy s1 with 80064_0
    li      s1, 80064
    li      s1, 80064
    add     a5,s1,a5
              #                    free s1
              #                    free a5
              #                          new_var temp_42_array_ele_60:i32 
              #                          temp_42_array_ele_60 = load temp_41_array_ptr_60:ptr->i32 
              #                    occupy a5 with temp_41_array_ptr_60
              #                    occupy s2 with temp_42_array_ele_60
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_43_cmp_60:i1 
              #                          temp_43_cmp_60 = icmp i32 Sgt x_53, temp_42_array_ele_60 
              #                    occupy a1 with x_53
              #                    occupy s2 with temp_42_array_ele_60
              #                    occupy s3 with temp_43_cmp_60
    slt     s3,s2,a1
              #                    free a1
              #                    free s2
              #                    free s3
              #                          br i1 temp_43_cmp_60, label branch_true_61, label branch_false_61 
              #                    occupy s3 with temp_43_cmp_60
              #                    free s3
              #                    occupy s3 with temp_43_cmp_60
    bnez    s3, .branch_true_61
              #                    free s3
    j       .branch_false_61
              #                    regtab     a0:Freed { symidx: root_53, tracked: true } |     a1:Freed { symidx: x_53, tracked: true } |     a3:Freed { symidx: temp_38_cmp_56, tracked: true } |     a4:Freed { symidx: temp_40_ptr2globl_60, tracked: true } |     a5:Freed { symidx: temp_41_array_ptr_60, tracked: true } |     s2:Freed { symidx: temp_42_array_ele_60, tracked: true } |     s3:Freed { symidx: temp_43_cmp_60, tracked: true } | 
              #                          label branch_true_61: 
.branch_true_61:
              #                          new_var temp_44_index_ptr_60:ptr->i32 
              #                          temp_44_index_ptr_60 = getelementptr right_child_0:Array:i32:[Some(10000_0)] [Some(root_53)] 
              #                    occupy a2 with temp_44_index_ptr_60
    li      a2, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with root_53
              #                    occupy a7 with _anonymous_of_right_child_0_0
    mul     a7,a6,a0
              #                    free a6
              #                    free a0
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
              #                    occupy s1 with _anonymous_of_right_child_0_0
    la      s1, right_child
    add     a2,a2,s1
              #                    free s1
              #                    free a2
              #                          new_var temp_45_ptr2globl_60:Array:i32:[Some(10000_0)] 
              #                          temp_45_ptr2globl_60 = load *right_child_0:ptr->i32 
              #                    occupy s4 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s4, right_child
              #                    occupy reg s4 with *right_child_0
              #                    occupy s5 with temp_45_ptr2globl_60
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_46_array_ptr_60:ptr->i32 
              #                          temp_46_array_ptr_60 = getelementptr temp_45_ptr2globl_60:Array:i32:[Some(10000_0)] [Some(root_53)] 
              #                    occupy s6 with temp_46_array_ptr_60
    li      s6, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a0 with root_53
              #                    occupy s7 with _anonymous_of_temp_45_ptr2globl_60_0
    mul     s7,a6,a0
              #                    free a6
              #                    free a0
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
    add     s6,s6,sp
              #                    occupy s8 with 40040_0
    li      s8, 40040
    li      s8, 40040
    add     s6,s8,s6
              #                    free s8
              #                    free s6
              #                          new_var temp_47_array_ele_60:i32 
              #                          temp_47_array_ele_60 = load temp_46_array_ptr_60:ptr->i32 
              #                    occupy s6 with temp_46_array_ptr_60
              #                    occupy s9 with temp_47_array_ele_60
    lw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          new_var temp_48_ret_of_insert_60:i32 
              #                          temp_48_ret_of_insert_60 =  Call i32 insert_0(temp_47_array_ele_60, x_53) 
              #                    saved register dumping to mem
              #                    store to temp_42_array_ele_60 in mem offset_illegal
              #                    occupy s1 with 80052_0
    li      s1, 80052
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_42_array_ele_60
              #                    store to temp_43_cmp_60 in mem offset_illegal
              #                    occupy s2 with 80051_0
    li      s2, 80051
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_43_cmp_60
              #                    store to temp_45_ptr2globl_60 in mem offset_illegal
              #                    found literal reg Some(s8) already exist with 40040_0
              #                    occupy s8 with 40040_0
    add     s8,sp,s8
    sw      s5,0(s8)
              #                    free s8
              #                    release s5 with temp_45_ptr2globl_60
              #                    store to temp_46_array_ptr_60 in mem offset_illegal
              #                    occupy s3 with 40032_0
    li      s3, 40032
    add     s3,sp,s3
    sd      s6,0(s3)
              #                    free s3
              #                    release s6 with temp_46_array_ptr_60
              #                    store to temp_47_array_ele_60 in mem offset_illegal
              #                    occupy s4 with 40028_0
    li      s4, 40028
    add     s4,sp,s4
    sw      s9,0(s4)
              #                    free s4
              #                    release s9 with temp_47_array_ele_60
              #                    store to root_53 in mem offset_illegal
              #                    occupy a0 with 120076_0
    li      a0, 120076
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_53
              #                    store to x_53 in mem offset_illegal
              #                    occupy a0 with 120072_0
    li      a0, 120072
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with x_53
              #                    store to temp_44_index_ptr_60 in mem offset_illegal
              #                    occupy a1 with 80040_0
    li      a1, 80040
    add     a1,sp,a1
    sd      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_44_index_ptr_60
              #                    store to temp_38_cmp_56 in mem offset_illegal
              #                    occupy a2 with 120071_0
    li      a2, 120071
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_38_cmp_56
              #                    store to temp_40_ptr2globl_60 in mem offset_illegal
              #                    occupy a3 with 80064_0
    li      a3, 80064
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_40_ptr2globl_60
              #                    store to temp_41_array_ptr_60 in mem offset_illegal
              #                    occupy a4 with 80056_0
    li      a4, 80056
    add     a4,sp,a4
    sd      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_41_array_ptr_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_47_array_ele_60_0
              #                    load from temp_47_array_ele_60 in mem

              #                    occupy a5 with temp_47_array_ele_60
    li      a5, 40028
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    occupy a1 with _anonymous_of_x_53_0
              #                    load from x_53 in mem

              #                    occupy a6 with x_53
    li      a6, 120072
    add     a6,sp,a6
    lw      a1,0(a6)
              #                    free a6
              #                    arg load ended


    call    insert
              #                    store to temp_48_ret_of_insert_60 in mem offset_illegal
              #                    occupy a0 with 40024_0
    li      a0, 40024
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_48_ret_of_insert_60:i32 temp_44_index_ptr_60:ptr->i32 
              #                    occupy a1 with temp_44_index_ptr_60
              #                    load from temp_44_index_ptr_60 in mem
              #                    occupy a1 with temp_44_index_ptr_60
    add     a1,sp,a1
    ld      a1,0(a1)
              #                    free a1
              #                    occupy a0 with temp_48_ret_of_insert_60
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu right_child_0:228 
              #                          right_child_0 = chi right_child_0:228 
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     a0:Freed { symidx: root_53, tracked: true } |     a1:Freed { symidx: x_53, tracked: true } |     a3:Freed { symidx: temp_38_cmp_56, tracked: true } |     a4:Freed { symidx: temp_40_ptr2globl_60, tracked: true } |     a5:Freed { symidx: temp_41_array_ptr_60, tracked: true } |     s2:Freed { symidx: temp_42_array_ele_60, tracked: true } |     s3:Freed { symidx: temp_43_cmp_60, tracked: true } | 
              #                          label branch_false_61: 
.branch_false_61:
              #                          new_var temp_49_index_ptr_63:ptr->i32 
              #                          temp_49_index_ptr_63 = getelementptr left_child_0:Array:i32:[Some(10000_0)] [Some(root_53)] 
              #                    occupy a2 with temp_49_index_ptr_63
    li      a2, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with root_53
              #                    occupy a7 with _anonymous_of_left_child_0_0
    mul     a7,a6,a0
              #                    free a6
              #                    free a0
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
              #                    occupy s1 with _anonymous_of_left_child_0_0
    la      s1, left_child
    add     a2,a2,s1
              #                    free s1
              #                    free a2
              #                          new_var temp_50_ptr2globl_63:Array:i32:[Some(10000_0)] 
              #                          temp_50_ptr2globl_63 = load *left_child_0:ptr->i32 
              #                    occupy s4 with *left_child_0
              #                       load label left_child as ptr to reg
    la      s4, left_child
              #                    occupy reg s4 with *left_child_0
              #                    occupy s5 with temp_50_ptr2globl_63
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_51_array_ptr_63:ptr->i32 
              #                          temp_51_array_ptr_63 = getelementptr temp_50_ptr2globl_63:Array:i32:[Some(10000_0)] [Some(root_53)] 
              #                    occupy s6 with temp_51_array_ptr_63
    li      s6, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a0 with root_53
              #                    occupy s7 with _anonymous_of_temp_50_ptr2globl_63_0
    mul     s7,a6,a0
              #                    free a6
              #                    free a0
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,16
              #                    free s6
              #                          new_var temp_52_array_ele_63:i32 
              #                          temp_52_array_ele_63 = load temp_51_array_ptr_63:ptr->i32 
              #                    occupy s6 with temp_51_array_ptr_63
              #                    occupy s8 with temp_52_array_ele_63
    lw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                          new_var temp_53_ret_of_insert_63:i32 
              #                          temp_53_ret_of_insert_63 =  Call i32 insert_0(temp_52_array_ele_63, x_53) 
              #                    saved register dumping to mem
              #                    store to temp_42_array_ele_60 in mem offset_illegal
              #                    occupy s1 with 80052_0
    li      s1, 80052
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_42_array_ele_60
              #                    store to temp_43_cmp_60 in mem offset_illegal
              #                    occupy s2 with 80051_0
    li      s2, 80051
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_43_cmp_60
              #                    store to temp_50_ptr2globl_63 in mem offset legal
    sw      s5,16(sp)
              #                    release s5 with temp_50_ptr2globl_63
              #                    store to temp_51_array_ptr_63 in mem offset legal
    sd      s6,8(sp)
              #                    release s6 with temp_51_array_ptr_63
              #                    store to temp_52_array_ele_63 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_52_array_ele_63
              #                    store to root_53 in mem offset_illegal
              #                    occupy a0 with 120076_0
    li      a0, 120076
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_53
              #                    store to x_53 in mem offset_illegal
              #                    occupy a0 with 120072_0
    li      a0, 120072
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with x_53
              #                    store to temp_49_index_ptr_63 in mem offset_illegal
              #                    occupy a1 with 40016_0
    li      a1, 40016
    add     a1,sp,a1
    sd      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_49_index_ptr_63
              #                    store to temp_38_cmp_56 in mem offset_illegal
              #                    occupy a2 with 120071_0
    li      a2, 120071
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_38_cmp_56
              #                    store to temp_40_ptr2globl_60 in mem offset_illegal
              #                    occupy a3 with 80064_0
    li      a3, 80064
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_40_ptr2globl_60
              #                    store to temp_41_array_ptr_60 in mem offset_illegal
              #                    occupy a4 with 80056_0
    li      a4, 80056
    add     a4,sp,a4
    sd      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_41_array_ptr_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_52_array_ele_63_0
              #                    load from temp_52_array_ele_63 in mem


    lw      a0,4(sp)
              #                    occupy a1 with _anonymous_of_x_53_0
              #                    load from x_53 in mem

              #                    occupy a5 with x_53
    li      a5, 120072
    add     a5,sp,a5
    lw      a1,0(a5)
              #                    free a5
              #                    arg load ended


    call    insert
              #                    store to temp_53_ret_of_insert_63 in mem offset legal
    sw      a0,0(sp)
              #                          store temp_53_ret_of_insert_63:i32 temp_49_index_ptr_63:ptr->i32 
              #                    occupy a1 with temp_49_index_ptr_63
              #                    load from temp_49_index_ptr_63 in mem
              #                    occupy a1 with temp_49_index_ptr_63
    add     a1,sp,a1
    ld      a1,0(a1)
              #                    free a1
              #                    occupy a0 with temp_53_ret_of_insert_63
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu left_child_0:246 
              #                          left_child_0 = chi left_child_0:246 
              #                          jump label: L13_0 
              #                    store to temp_49_index_ptr_63 in mem offset_illegal
              #                    occupy a1 with 40016_0
    li      a1, 40016
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_49_index_ptr_63
              #                    store to temp_53_ret_of_insert_63 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_53_ret_of_insert_63
              #                    store to x_53 in mem offset_illegal
              #                    occupy a0 with 120072_0
    li      a0, 120072
    add     a0,sp,a0
    sw      a5,0(a0)
              #                    free a0
              #                    release a5 with x_53
              #                    occupy a1 with _anonymous_of_temp_44_index_ptr_60_0
              #                    load from temp_44_index_ptr_60 in mem
              #                    occupy a2 with temp_44_index_ptr_60
    li      a2, 80040
    add     a2,sp,a2
    ld      a1,0(a2)
              #                    free a2
              #                    occupy a0 with _anonymous_of_temp_48_ret_of_insert_60_0
              #                    load from temp_48_ret_of_insert_60 in mem

              #                    occupy a3 with temp_48_ret_of_insert_60
    li      a3, 40024
    add     a3,sp,a3
    lw      a0,0(a3)
              #                    free a3
              #                    occupy a6 with _anonymous_of_x_53_0
              #                    load from x_53 in mem

              #                    occupy a4 with x_53
    li      a4, 120072
    add     a4,sp,a4
    lw      a6,0(a4)
              #                    free a4
              #                    store to temp_44_index_ptr_60 in mem offset_illegal
              #                    occupy a2 with 80040_0
    li      a2, 80040
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_44_index_ptr_60
              #                    store to x_53 in mem offset_illegal
              #                    occupy a2 with 120072_0
    li      a2, 120072
    add     a2,sp,a2
    sw      a4,0(a2)
              #                    free a2
              #                    release a4 with x_53
              #                    occupy a5 with _anonymous_of_temp_47_array_ele_60_0
              #                    load from temp_47_array_ele_60 in mem

              #                    occupy a4 with temp_47_array_ele_60
    li      a4, 40028
    add     a4,sp,a4
    lw      a5,0(a4)
              #                    free a4
    j       .L13_0
              #                    regtab     a0:Freed { symidx: temp_48_ret_of_insert_60, tracked: true } |     a1:Freed { symidx: temp_44_index_ptr_60, tracked: true } |     a5:Freed { symidx: temp_47_array_ele_60, tracked: true } |     a6:Freed { symidx: x_53, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                    regtab     a0:Freed { symidx: temp_48_ret_of_insert_60, tracked: true } |     a1:Freed { symidx: temp_44_index_ptr_60, tracked: true } |     a5:Freed { symidx: temp_47_array_ele_60, tracked: true } |     a6:Freed { symidx: x_53, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                    regtab     a0:Freed { symidx: temp_48_ret_of_insert_60, tracked: true } |     a1:Freed { symidx: temp_44_index_ptr_60, tracked: true } |     a5:Freed { symidx: temp_47_array_ele_60, tracked: true } |     a6:Freed { symidx: x_53, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                          ret root_53 
              #                    load from ra_insert_0 in mem
              #                    occupy a2 with ra_insert_0
    li      a2, 120088
    add     a2,sp,a2
    ld      ra,0(a2)
              #                    free a2
              #                    load from s0_insert_0 in mem
              #                    occupy a3 with s0_insert_0
    li      a3, 120080
    add     a3,sp,a3
    ld      s0,0(a3)
              #                    free a3
              #                    store to temp_48_ret_of_insert_60 in mem offset_illegal
              #                    occupy a0 with 40024_0
    li      a0, 40024
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_48_ret_of_insert_60
              #                    occupy a0 with root_53
              #                    load from root_53 in mem

              #                    occupy a4 with root_53
    li      a4, 120076
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    occupy a7 with 120096_0
    li      a7, 120096
    li      a7, 120096
    add     sp,a7,sp
              #                    free a7
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_44_index_ptr_60, tracked: true } |     a2:Freed { symidx: ra_insert_0, tracked: true } |     a3:Freed { symidx: s0_insert_0, tracked: true } |     a4:Freed { symidx: root_53, tracked: true } |     a5:Freed { symidx: temp_47_array_ele_60, tracked: true } |     a6:Freed { symidx: x_53, tracked: true } | 
              #                    regtab 
              #                          Define delete_0 [root_66, x_66] -> delete_ret_0 
    .globl delete
    .type delete,@function
delete:
              #                    mem layout:|ra_delete:8 at 600312|s0_delete:8 at 600304|root:4 at 600300|x:4 at 600296|temp_54_cmp:1 at 600295|none:3 at 600292|temp_55_:4 at 600288|temp_56_ptr2globl:40000 at 560288|temp_57_array_ptr:8 at 560280|temp_58_array_ele:4 at 560276|temp_59_cmp:1 at 560275|none:3 at 560272|temp_60_index_ptr:8 at 560264|temp_61_ptr2globl:40000 at 520264|temp_62_array_ptr:8 at 520256|temp_63_array_ele:4 at 520252|temp_64_ret_of_delete:4 at 520248|temp_65_ptr2globl:40000 at 480248|temp_66_array_ptr:8 at 480240|temp_67_array_ele:4 at 480236|temp_68_cmp:1 at 480235|none:3 at 480232|temp_69_index_ptr:8 at 480224|temp_70_ptr2globl:40000 at 440224|temp_71_array_ptr:8 at 440216|temp_72_array_ele:4 at 440212|temp_73_ret_of_delete:4 at 440208|temp_74_ptr2globl:40000 at 400208|temp_75_array_ptr:8 at 400200|temp_76_array_ele:4 at 400196|temp_77_cmp:1 at 400195|none:3 at 400192|temp_78_ptr2globl:40000 at 360192|temp_79_array_ptr:8 at 360184|temp_80_array_ele:4 at 360180|temp_81_cmp:1 at 360179|temp_82_logic:1 at 360178|none:2 at 360176|temp_83_:4 at 360172|temp_84_ptr2globl:40000 at 320172|none:4 at 320168|temp_85_array_ptr:8 at 320160|temp_86_array_ele:4 at 320156|temp_87_cmp:1 at 320155|none:3 at 320152|temp_88_ptr2globl:40000 at 280152|temp_89_array_ptr:8 at 280144|temp_90_array_ele:4 at 280140|temp_91_cmp:1 at 280139|temp_92_logic:1 at 280138|none:2 at 280136|temp_93_ptr2globl:40000 at 240136|temp_94_array_ptr:8 at 240128|temp_95_array_ele:4 at 240124|temp_96_cmp:1 at 240123|none:3 at 240120|temp_97_ptr2globl:40000 at 200120|temp_98_array_ptr:8 at 200112|temp_99_array_ele:4 at 200108|temp_100_ptr2globl:40000 at 160108|none:4 at 160104|temp_101_array_ptr:8 at 160096|temp_102_array_ele:4 at 160092|temp_103_ptr2globl:40000 at 120092|none:4 at 120088|temp_104_array_ptr:8 at 120080|temp_105_array_ele:4 at 120076|temp_106_ret_of_find_minimum:4 at 120072|tmp:4 at 120068|none:4 at 120064|temp_107_index_ptr:8 at 120056|temp_108_ptr2globl:40000 at 80056|temp_109_array_ptr:8 at 80048|temp_110_array_ele:4 at 80044|none:4 at 80040|temp_111_index_ptr:8 at 80032|temp_112_ptr2globl:40000 at 40032|temp_113_array_ptr:8 at 40024|temp_114_array_ele:4 at 40020|temp_115_ptr2globl:40000 at 20|none:4 at 16|temp_116_array_ptr:8 at 8|temp_117_array_ele:4 at 4|temp_118_ret_of_delete:4 at 0
              #                    occupy a2 with -600320_0
    li      a2, -600320
    li      a2, -600320
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_delete_0 in mem offset_illegal
              #                    occupy a3 with 600312_0
    li      a3, 600312
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_delete_0 in mem offset_illegal
              #                    occupy a4 with 600304_0
    li      a4, 600304
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 600320_0
    li      a5, 600320
    li      a5, 600320
    add     s0,a5,sp
              #                    free a5
              #                          alloc i1 temp_54_cmp_69 
              #                          alloc i32 temp_55__69 
              #                          alloc Array:i32:[Some(10000_0)] temp_56_ptr2globl_72 
              #                          alloc ptr->i32 temp_57_array_ptr_72 
              #                          alloc i32 temp_58_array_ele_72 
              #                          alloc i1 temp_59_cmp_72 
              #                          alloc ptr->i32 temp_60_index_ptr_72 
              #                          alloc Array:i32:[Some(10000_0)] temp_61_ptr2globl_72 
              #                          alloc ptr->i32 temp_62_array_ptr_72 
              #                          alloc i32 temp_63_array_ele_72 
              #                          alloc i32 temp_64_ret_of_delete_72 
              #                          alloc Array:i32:[Some(10000_0)] temp_65_ptr2globl_75 
              #                          alloc ptr->i32 temp_66_array_ptr_75 
              #                          alloc i32 temp_67_array_ele_75 
              #                          alloc i1 temp_68_cmp_75 
              #                          alloc ptr->i32 temp_69_index_ptr_75 
              #                          alloc Array:i32:[Some(10000_0)] temp_70_ptr2globl_75 
              #                          alloc ptr->i32 temp_71_array_ptr_75 
              #                          alloc i32 temp_72_array_ele_75 
              #                          alloc i32 temp_73_ret_of_delete_75 
              #                          alloc Array:i32:[Some(10000_0)] temp_74_ptr2globl_78 
              #                          alloc ptr->i32 temp_75_array_ptr_78 
              #                          alloc i32 temp_76_array_ele_78 
              #                          alloc i1 temp_77_cmp_78 
              #                          alloc Array:i32:[Some(10000_0)] temp_78_ptr2globl_78 
              #                          alloc ptr->i32 temp_79_array_ptr_78 
              #                          alloc i32 temp_80_array_ele_78 
              #                          alloc i1 temp_81_cmp_78 
              #                          alloc i1 temp_82_logic_78 
              #                          alloc i32 temp_83__78 
              #                          alloc Array:i32:[Some(10000_0)] temp_84_ptr2globl_81 
              #                          alloc ptr->i32 temp_85_array_ptr_81 
              #                          alloc i32 temp_86_array_ele_81 
              #                          alloc i1 temp_87_cmp_81 
              #                          alloc Array:i32:[Some(10000_0)] temp_88_ptr2globl_81 
              #                          alloc ptr->i32 temp_89_array_ptr_81 
              #                          alloc i32 temp_90_array_ele_81 
              #                          alloc i1 temp_91_cmp_81 
              #                          alloc i1 temp_92_logic_81 
              #                          alloc Array:i32:[Some(10000_0)] temp_93_ptr2globl_83 
              #                          alloc ptr->i32 temp_94_array_ptr_83 
              #                          alloc i32 temp_95_array_ele_83 
              #                          alloc i1 temp_96_cmp_83 
              #                          alloc Array:i32:[Some(10000_0)] temp_97_ptr2globl_83 
              #                          alloc ptr->i32 temp_98_array_ptr_83 
              #                          alloc i32 temp_99_array_ele_83 
              #                          alloc Array:i32:[Some(10000_0)] temp_100_ptr2globl_83 
              #                          alloc ptr->i32 temp_101_array_ptr_83 
              #                          alloc i32 temp_102_array_ele_83 
              #                          alloc Array:i32:[Some(10000_0)] temp_103_ptr2globl_87 
              #                          alloc ptr->i32 temp_104_array_ptr_87 
              #                          alloc i32 temp_105_array_ele_87 
              #                          alloc i32 temp_106_ret_of_find_minimum_87 
              #                          alloc i32 tmp_87 
              #                          alloc ptr->i32 temp_107_index_ptr_87 
              #                          alloc Array:i32:[Some(10000_0)] temp_108_ptr2globl_87 
              #                          alloc ptr->i32 temp_109_array_ptr_87 
              #                          alloc i32 temp_110_array_ele_87 
              #                          alloc ptr->i32 temp_111_index_ptr_87 
              #                          alloc Array:i32:[Some(10000_0)] temp_112_ptr2globl_87 
              #                          alloc ptr->i32 temp_113_array_ptr_87 
              #                          alloc i32 temp_114_array_ele_87 
              #                          alloc Array:i32:[Some(10000_0)] temp_115_ptr2globl_87 
              #                          alloc ptr->i32 temp_116_array_ptr_87 
              #                          alloc i32 temp_117_array_ele_87 
              #                          alloc i32 temp_118_ret_of_delete_87 
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_54_cmp_69:i1 
              #                          temp_54_cmp_69 = icmp i32 Eq root_66, -1_0 
              #                    occupy a0 with root_66
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    occupy a3 with temp_54_cmp_69
    xor     a3,a0,a2
    seqz    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_54_cmp_69, label branch_true_70, label branch_false_70 
              #                    occupy a3 with temp_54_cmp_69
              #                    free a3
              #                    occupy a3 with temp_54_cmp_69
    bnez    a3, .branch_true_70
              #                    free a3
    j       .branch_false_70
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } | 
              #                          label branch_true_70: 
.branch_true_70:
              #                          new_var temp_55__69:i32 
              #                          temp_55__69 = Sub i32 0_0, 1_0 
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_55__69
              #                    regtab:    a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a2:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Occupied { symidx: temp_55__69, tracked: true, occupy_count: 1 } | 


    sub     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          ret temp_55__69 
              #                    load from ra_delete_0 in mem
              #                    occupy a6 with ra_delete_0
    li      a6, 600312
    add     a6,sp,a6
    ld      ra,0(a6)
              #                    free a6
              #                    load from s0_delete_0 in mem
              #                    occupy a7 with s0_delete_0
    li      a7, 600304
    add     a7,sp,a7
    ld      s0,0(a7)
              #                    free a7
              #                    store to temp_55__69 in mem offset_illegal
              #                    occupy a5 with 600288_0
    li      a5, 600288
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_55__69
              #                    store to root_66 in mem offset_illegal
              #                    occupy a0 with 600300_0
    li      a0, 600300
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_66
              #                    occupy a0 with temp_55__69
              #                    load from temp_55__69 in mem

              #                    occupy a5 with temp_55__69
    li      a5, 600288
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    occupy s1 with 600320_0
    li      s1, 600320
    li      s1, 600320
    add     sp,s1,sp
              #                    free s1
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } | 
              #                          label branch_false_70: 
.branch_false_70:
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_56_ptr2globl_72:Array:i32:[Some(10000_0)] 
              #                          temp_56_ptr2globl_72 = load *value_0:ptr->i32 
              #                    occupy a2 with *value_0
              #                       load label value as ptr to reg
    la      a2, value
              #                    occupy reg a2 with *value_0
              #                    occupy a4 with temp_56_ptr2globl_72
    lw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                          new_var temp_57_array_ptr_72:ptr->i32 
              #                          temp_57_array_ptr_72 = getelementptr temp_56_ptr2globl_72:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy a5 with temp_57_array_ptr_72
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with root_66
              #                    occupy a7 with _anonymous_of_temp_56_ptr2globl_72_0
    mul     a7,a6,a0
              #                    free a6
              #                    free a0
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
              #                    occupy s1 with 560288_0
    li      s1, 560288
    li      s1, 560288
    add     a5,s1,a5
              #                    free s1
              #                    free a5
              #                          new_var temp_58_array_ele_72:i32 
              #                          temp_58_array_ele_72 = load temp_57_array_ptr_72:ptr->i32 
              #                    occupy a5 with temp_57_array_ptr_72
              #                    occupy s2 with temp_58_array_ele_72
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_59_cmp_72:i1 
              #                          temp_59_cmp_72 = icmp i32 Sgt x_66, temp_58_array_ele_72 
              #                    occupy a1 with x_66
              #                    occupy s2 with temp_58_array_ele_72
              #                    occupy s3 with temp_59_cmp_72
    slt     s3,s2,a1
              #                    free a1
              #                    free s2
              #                    free s3
              #                          br i1 temp_59_cmp_72, label branch_true_73, label branch_false_73 
              #                    occupy s3 with temp_59_cmp_72
              #                    free s3
              #                    occupy s3 with temp_59_cmp_72
    bnez    s3, .branch_true_73
              #                    free s3
    j       .branch_false_73
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } |     a4:Freed { symidx: temp_56_ptr2globl_72, tracked: true } |     a5:Freed { symidx: temp_57_array_ptr_72, tracked: true } |     s2:Freed { symidx: temp_58_array_ele_72, tracked: true } |     s3:Freed { symidx: temp_59_cmp_72, tracked: true } | 
              #                          label branch_true_73: 
.branch_true_73:
              #                          new_var temp_60_index_ptr_72:ptr->i32 
              #                          temp_60_index_ptr_72 = getelementptr right_child_0:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy a2 with temp_60_index_ptr_72
    li      a2, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with root_66
              #                    occupy a7 with _anonymous_of_right_child_0_0
    mul     a7,a6,a0
              #                    free a6
              #                    free a0
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
              #                    occupy s1 with _anonymous_of_right_child_0_0
    la      s1, right_child
    add     a2,a2,s1
              #                    free s1
              #                    free a2
              #                          new_var temp_61_ptr2globl_72:Array:i32:[Some(10000_0)] 
              #                          temp_61_ptr2globl_72 = load *right_child_0:ptr->i32 
              #                    occupy s4 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s4, right_child
              #                    occupy reg s4 with *right_child_0
              #                    occupy s5 with temp_61_ptr2globl_72
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_62_array_ptr_72:ptr->i32 
              #                          temp_62_array_ptr_72 = getelementptr temp_61_ptr2globl_72:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy s6 with temp_62_array_ptr_72
    li      s6, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a0 with root_66
              #                    occupy s7 with _anonymous_of_temp_61_ptr2globl_72_0
    mul     s7,a6,a0
              #                    free a6
              #                    free a0
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
    add     s6,s6,sp
              #                    occupy s8 with 520264_0
    li      s8, 520264
    li      s8, 520264
    add     s6,s8,s6
              #                    free s8
              #                    free s6
              #                          new_var temp_63_array_ele_72:i32 
              #                          temp_63_array_ele_72 = load temp_62_array_ptr_72:ptr->i32 
              #                    occupy s6 with temp_62_array_ptr_72
              #                    occupy s9 with temp_63_array_ele_72
    lw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          new_var temp_64_ret_of_delete_72:i32 
              #                          temp_64_ret_of_delete_72 =  Call i32 delete_0(temp_63_array_ele_72, x_66) 
              #                    saved register dumping to mem
              #                    store to temp_58_array_ele_72 in mem offset_illegal
              #                    occupy s1 with 560276_0
    li      s1, 560276
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_58_array_ele_72
              #                    store to temp_59_cmp_72 in mem offset_illegal
              #                    occupy s2 with 560275_0
    li      s2, 560275
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_59_cmp_72
              #                    store to temp_61_ptr2globl_72 in mem offset_illegal
              #                    found literal reg Some(s8) already exist with 520264_0
              #                    occupy s8 with 520264_0
    add     s8,sp,s8
    sw      s5,0(s8)
              #                    free s8
              #                    release s5 with temp_61_ptr2globl_72
              #                    store to temp_62_array_ptr_72 in mem offset_illegal
              #                    occupy s3 with 520256_0
    li      s3, 520256
    add     s3,sp,s3
    sd      s6,0(s3)
              #                    free s3
              #                    release s6 with temp_62_array_ptr_72
              #                    store to temp_63_array_ele_72 in mem offset_illegal
              #                    occupy s4 with 520252_0
    li      s4, 520252
    add     s4,sp,s4
    sw      s9,0(s4)
              #                    free s4
              #                    release s9 with temp_63_array_ele_72
              #                    store to root_66 in mem offset_illegal
              #                    occupy a0 with 600300_0
    li      a0, 600300
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_66
              #                    store to x_66 in mem offset_illegal
              #                    occupy a0 with 600296_0
    li      a0, 600296
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with x_66
              #                    store to temp_60_index_ptr_72 in mem offset_illegal
              #                    occupy a1 with 560264_0
    li      a1, 560264
    add     a1,sp,a1
    sd      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_60_index_ptr_72
              #                    store to temp_54_cmp_69 in mem offset_illegal
              #                    occupy a2 with 600295_0
    li      a2, 600295
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_54_cmp_69
              #                    store to temp_56_ptr2globl_72 in mem offset_illegal
              #                    occupy a3 with 560288_0
    li      a3, 560288
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_56_ptr2globl_72
              #                    store to temp_57_array_ptr_72 in mem offset_illegal
              #                    occupy a4 with 560280_0
    li      a4, 560280
    add     a4,sp,a4
    sd      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_57_array_ptr_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_63_array_ele_72_0
              #                    load from temp_63_array_ele_72 in mem

              #                    occupy a5 with temp_63_array_ele_72
    li      a5, 520252
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    occupy a1 with _anonymous_of_x_66_0
              #                    load from x_66 in mem

              #                    occupy a6 with x_66
    li      a6, 600296
    add     a6,sp,a6
    lw      a1,0(a6)
              #                    free a6
              #                    arg load ended


    call    delete
              #                    store to temp_64_ret_of_delete_72 in mem offset_illegal
              #                    occupy a0 with 520248_0
    li      a0, 520248
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_64_ret_of_delete_72:i32 temp_60_index_ptr_72:ptr->i32 
              #                    occupy a1 with temp_60_index_ptr_72
              #                    load from temp_60_index_ptr_72 in mem
              #                    occupy a1 with temp_60_index_ptr_72
    add     a1,sp,a1
    ld      a1,0(a1)
              #                    free a1
              #                    occupy a0 with temp_64_ret_of_delete_72
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu right_child_0:290 
              #                          right_child_0 = chi right_child_0:290 
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } |     a4:Freed { symidx: temp_56_ptr2globl_72, tracked: true } |     a5:Freed { symidx: temp_57_array_ptr_72, tracked: true } |     s2:Freed { symidx: temp_58_array_ele_72, tracked: true } |     s3:Freed { symidx: temp_59_cmp_72, tracked: true } | 
              #                          label branch_false_73: 
.branch_false_73:
              #                          new_var temp_65_ptr2globl_75:Array:i32:[Some(10000_0)] 
              #                          temp_65_ptr2globl_75 = load *value_0:ptr->i32 
              #                    occupy a2 with *value_0
              #                       load label value as ptr to reg
    la      a2, value
              #                    occupy reg a2 with *value_0
              #                    occupy a6 with temp_65_ptr2globl_75
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          new_var temp_66_array_ptr_75:ptr->i32 
              #                          temp_66_array_ptr_75 = getelementptr temp_65_ptr2globl_75:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy a7 with temp_66_array_ptr_75
    li      a7, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a0 with root_66
              #                    occupy s4 with _anonymous_of_temp_65_ptr2globl_75_0
    mul     s4,s1,a0
              #                    free s1
              #                    free a0
    add     a7,a7,s4
              #                    free s4
    slli a7,a7,2
    add     a7,a7,sp
              #                    occupy s5 with 480248_0
    li      s5, 480248
    li      s5, 480248
    add     a7,s5,a7
              #                    free s5
              #                    free a7
              #                          new_var temp_67_array_ele_75:i32 
              #                          temp_67_array_ele_75 = load temp_66_array_ptr_75:ptr->i32 
              #                    occupy a7 with temp_66_array_ptr_75
              #                    occupy s6 with temp_67_array_ele_75
    lw      s6,0(a7)
              #                    free s6
              #                    free a7
              #                          new_var temp_68_cmp_75:i1 
              #                          temp_68_cmp_75 = icmp i32 Slt x_66, temp_67_array_ele_75 
              #                    occupy a1 with x_66
              #                    occupy s6 with temp_67_array_ele_75
              #                    occupy s7 with temp_68_cmp_75
    slt     s7,a1,s6
              #                    free a1
              #                    free s6
              #                    free s7
              #                          br i1 temp_68_cmp_75, label branch_true_76, label branch_false_76 
              #                    occupy s7 with temp_68_cmp_75
              #                    free s7
              #                    occupy s7 with temp_68_cmp_75
    bnez    s7, .branch_true_76
              #                    free s7
    j       .branch_false_76
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } |     a4:Freed { symidx: temp_56_ptr2globl_72, tracked: true } |     a5:Freed { symidx: temp_57_array_ptr_72, tracked: true } |     a6:Freed { symidx: temp_65_ptr2globl_75, tracked: true } |     a7:Freed { symidx: temp_66_array_ptr_75, tracked: true } |     s2:Freed { symidx: temp_58_array_ele_72, tracked: true } |     s3:Freed { symidx: temp_59_cmp_72, tracked: true } |     s6:Freed { symidx: temp_67_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_68_cmp_75, tracked: true } | 
              #                          label branch_true_76: 
.branch_true_76:
              #                          new_var temp_69_index_ptr_75:ptr->i32 
              #                          temp_69_index_ptr_75 = getelementptr left_child_0:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy a2 with temp_69_index_ptr_75
    li      a2, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a0 with root_66
              #                    occupy s4 with _anonymous_of_left_child_0_0
    mul     s4,s1,a0
              #                    free s1
              #                    free a0
    add     a2,a2,s4
              #                    free s4
    slli a2,a2,2
              #                    occupy s5 with _anonymous_of_left_child_0_0
    la      s5, left_child
    add     a2,a2,s5
              #                    free s5
              #                    free a2
              #                          new_var temp_70_ptr2globl_75:Array:i32:[Some(10000_0)] 
              #                          temp_70_ptr2globl_75 = load *left_child_0:ptr->i32 
              #                    occupy s8 with *left_child_0
              #                       load label left_child as ptr to reg
    la      s8, left_child
              #                    occupy reg s8 with *left_child_0
              #                    occupy s9 with temp_70_ptr2globl_75
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_71_array_ptr_75:ptr->i32 
              #                          temp_71_array_ptr_75 = getelementptr temp_70_ptr2globl_75:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy s10 with temp_71_array_ptr_75
    li      s10, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a0 with root_66
              #                    occupy s11 with _anonymous_of_temp_70_ptr2globl_75_0
    mul     s11,s1,a0
              #                    free s1
              #                    free a0
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
    add     s10,s10,sp
              #                    occupy s1 with 440224_0
    li      s1, 440224
    li      s1, 440224
    add     s10,s1,s10
              #                    free s1
              #                    free s10
              #                          new_var temp_72_array_ele_75:i32 
              #                          temp_72_array_ele_75 = load temp_71_array_ptr_75:ptr->i32 
              #                    occupy s10 with temp_71_array_ptr_75
              #                    occupy s1 with temp_72_array_ele_75
    lw      s1,0(s10)
              #                    free s1
              #                    free s10
              #                          new_var temp_73_ret_of_delete_75:i32 
              #                          temp_73_ret_of_delete_75 =  Call i32 delete_0(temp_72_array_ele_75, x_66) 
              #                    saved register dumping to mem
              #                    store to temp_72_array_ele_75 in mem offset_illegal
              #                    occupy s1 with 440212_0
    li      s1, 440212
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_72_array_ele_75
              #                    store to temp_58_array_ele_72 in mem offset_illegal
              #                    occupy s1 with 560276_0
    li      s1, 560276
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_58_array_ele_72
              #                    store to temp_59_cmp_72 in mem offset_illegal
              #                    occupy s2 with 560275_0
    li      s2, 560275
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_59_cmp_72
              #                    store to temp_67_array_ele_75 in mem offset_illegal
              #                    occupy s3 with 480236_0
    li      s3, 480236
    add     s3,sp,s3
    sw      s6,0(s3)
              #                    free s3
              #                    release s6 with temp_67_array_ele_75
              #                    store to temp_68_cmp_75 in mem offset_illegal
              #                    occupy s4 with 480235_0
    li      s4, 480235
    add     s4,sp,s4
    sb      s7,0(s4)
              #                    free s4
              #                    release s7 with temp_68_cmp_75
              #                    store to temp_70_ptr2globl_75 in mem offset_illegal
              #                    occupy s5 with 440224_0
    li      s5, 440224
    add     s5,sp,s5
    sw      s9,0(s5)
              #                    free s5
              #                    release s9 with temp_70_ptr2globl_75
              #                    store to temp_71_array_ptr_75 in mem offset_illegal
              #                    occupy s6 with 440216_0
    li      s6, 440216
    add     s6,sp,s6
    sd      s10,0(s6)
              #                    free s6
              #                    release s10 with temp_71_array_ptr_75
              #                    store to root_66 in mem offset_illegal
              #                    occupy a0 with 600300_0
    li      a0, 600300
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_66
              #                    store to x_66 in mem offset_illegal
              #                    occupy a0 with 600296_0
    li      a0, 600296
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with x_66
              #                    store to temp_69_index_ptr_75 in mem offset_illegal
              #                    occupy a1 with 480224_0
    li      a1, 480224
    add     a1,sp,a1
    sd      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_69_index_ptr_75
              #                    store to temp_54_cmp_69 in mem offset_illegal
              #                    occupy a2 with 600295_0
    li      a2, 600295
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_54_cmp_69
              #                    store to temp_56_ptr2globl_72 in mem offset_illegal
              #                    occupy a3 with 560288_0
    li      a3, 560288
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_56_ptr2globl_72
              #                    store to temp_57_array_ptr_72 in mem offset_illegal
              #                    occupy a4 with 560280_0
    li      a4, 560280
    add     a4,sp,a4
    sd      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_57_array_ptr_72
              #                    store to temp_65_ptr2globl_75 in mem offset_illegal
              #                    occupy a5 with 480248_0
    li      a5, 480248
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_65_ptr2globl_75
              #                    store to temp_66_array_ptr_75 in mem offset_illegal
              #                    occupy a6 with 480240_0
    li      a6, 480240
    add     a6,sp,a6
    sd      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_66_array_ptr_75
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_72_array_ele_75_0
              #                    load from temp_72_array_ele_75 in mem

              #                    occupy a7 with temp_72_array_ele_75
    li      a7, 440212
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_x_66_0
              #                    load from x_66 in mem

              #                    occupy s7 with x_66
    li      s7, 600296
    add     s7,sp,s7
    lw      a1,0(s7)
              #                    free s7
              #                    arg load ended


    call    delete
              #                    store to temp_73_ret_of_delete_75 in mem offset_illegal
              #                    occupy a0 with 440208_0
    li      a0, 440208
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_73_ret_of_delete_75:i32 temp_69_index_ptr_75:ptr->i32 
              #                    occupy a1 with temp_69_index_ptr_75
              #                    load from temp_69_index_ptr_75 in mem
              #                    occupy a1 with temp_69_index_ptr_75
    add     a1,sp,a1
    ld      a1,0(a1)
              #                    free a1
              #                    occupy a0 with temp_73_ret_of_delete_75
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu left_child_0:325 
              #                          left_child_0 = chi left_child_0:325 
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } |     a4:Freed { symidx: temp_56_ptr2globl_72, tracked: true } |     a5:Freed { symidx: temp_57_array_ptr_72, tracked: true } |     a6:Freed { symidx: temp_65_ptr2globl_75, tracked: true } |     a7:Freed { symidx: temp_66_array_ptr_75, tracked: true } |     s2:Freed { symidx: temp_58_array_ele_72, tracked: true } |     s3:Freed { symidx: temp_59_cmp_72, tracked: true } |     s6:Freed { symidx: temp_67_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_68_cmp_75, tracked: true } | 
              #                          label branch_false_76: 
.branch_false_76:
              #                          new_var temp_74_ptr2globl_78:Array:i32:[Some(10000_0)] 
              #                          temp_74_ptr2globl_78 = load *right_child_0:ptr->i32 
              #                    occupy a2 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a2, right_child
              #                    occupy reg a2 with *right_child_0
              #                    occupy s1 with temp_74_ptr2globl_78
    lw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                          new_var temp_75_array_ptr_78:ptr->i32 
              #                          temp_75_array_ptr_78 = getelementptr temp_74_ptr2globl_78:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy s4 with temp_75_array_ptr_78
    li      s4, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy a0 with root_66
              #                    occupy s8 with _anonymous_of_temp_74_ptr2globl_78_0
    mul     s8,s5,a0
              #                    free s5
              #                    free a0
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
    add     s4,s4,sp
              #                    occupy s9 with 400208_0
    li      s9, 400208
    li      s9, 400208
    add     s4,s9,s4
              #                    free s9
              #                    free s4
              #                          new_var temp_76_array_ele_78:i32 
              #                          temp_76_array_ele_78 = load temp_75_array_ptr_78:ptr->i32 
              #                    occupy s4 with temp_75_array_ptr_78
              #                    occupy s10 with temp_76_array_ele_78
    lw      s10,0(s4)
              #                    free s10
              #                    free s4
              #                          new_var temp_77_cmp_78:i1 
              #                          temp_77_cmp_78 = icmp i32 Eq temp_76_array_ele_78, -1_0 
              #                    occupy s10 with temp_76_array_ele_78
              #                    occupy s11 with -1_0
    li      s11, -1
              #                    occupy a2 with temp_77_cmp_78
    xor     a2,s10,s11
    seqz    a2, a2
              #                    free s10
              #                    free s11
              #                    free a2
              #                          new_var temp_78_ptr2globl_78:Array:i32:[Some(10000_0)] 
              #                          temp_78_ptr2globl_78 = load *left_child_0:ptr->i32 
              #                    occupy s5 with *left_child_0
              #                       load label left_child as ptr to reg
    la      s5, left_child
              #                    occupy reg s5 with *left_child_0
              #                    occupy s8 with temp_78_ptr2globl_78
    lw      s8,0(s5)
              #                    free s8
              #                    free s5
              #                          new_var temp_79_array_ptr_78:ptr->i32 
              #                          temp_79_array_ptr_78 = getelementptr temp_78_ptr2globl_78:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy s5 with temp_79_array_ptr_78
    li      s5, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy a0 with root_66
              #                    occupy s11 with _anonymous_of_temp_78_ptr2globl_78_0
    mul     s11,s9,a0
              #                    free s9
              #                    free a0
    add     s5,s5,s11
              #                    free s11
    slli s5,s5,2
    add     s5,s5,sp
              #                    occupy s9 with 360192_0
    li      s9, 360192
    li      s9, 360192
    add     s5,s9,s5
              #                    free s9
              #                    free s5
              #                          new_var temp_80_array_ele_78:i32 
              #                          temp_80_array_ele_78 = load temp_79_array_ptr_78:ptr->i32 
              #                    occupy s5 with temp_79_array_ptr_78
              #                    occupy s9 with temp_80_array_ele_78
    lw      s9,0(s5)
              #                    free s9
              #                    free s5
              #                          new_var temp_81_cmp_78:i1 
              #                          temp_81_cmp_78 = icmp i32 Eq temp_80_array_ele_78, -1_0 
              #                    occupy s9 with temp_80_array_ele_78
              #                    occupy s11 with -1_0
    li      s11, -1
              #                    store to root_66 in mem offset_illegal
              #                    occupy a0 with 600300_0
    li      a0, 600300
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_66
              #                    occupy a0 with temp_81_cmp_78
    xor     a0,s9,s11
    seqz    a0, a0
              #                    free s9
              #                    free s11
              #                    free a0
              #                          new_var temp_82_logic_78:i1 
              #                          temp_82_logic_78 = And i1 temp_81_cmp_78, temp_77_cmp_78 
              #                    occupy a0 with temp_81_cmp_78
              #                    occupy a2 with temp_77_cmp_78
              #                    occupy s11 with temp_82_logic_78
    and     s11,a0,a2
              #                    free a0
              #                    free a2
              #                    free s11
              #                          br i1 temp_82_logic_78, label branch_true_79, label branch_false_79 
              #                    occupy s11 with temp_82_logic_78
              #                    free s11
              #                    store to temp_81_cmp_78 in mem offset_illegal
              #                    occupy a0 with 360179_0
    li      a0, 360179
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_81_cmp_78
              #                    occupy s11 with temp_82_logic_78
    bnez    s11, .branch_true_79
              #                    free s11
    j       .branch_false_79
              #                    regtab     a1:Freed { symidx: x_66, tracked: true } |     a2:Freed { symidx: temp_77_cmp_78, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } |     a4:Freed { symidx: temp_56_ptr2globl_72, tracked: true } |     a5:Freed { symidx: temp_57_array_ptr_72, tracked: true } |     a6:Freed { symidx: temp_65_ptr2globl_75, tracked: true } |     a7:Freed { symidx: temp_66_array_ptr_75, tracked: true } |     s10:Freed { symidx: temp_76_array_ele_78, tracked: true } |     s11:Freed { symidx: temp_82_logic_78, tracked: true } |     s1:Freed { symidx: temp_74_ptr2globl_78, tracked: true } |     s2:Freed { symidx: temp_58_array_ele_72, tracked: true } |     s3:Freed { symidx: temp_59_cmp_72, tracked: true } |     s4:Freed { symidx: temp_75_array_ptr_78, tracked: true } |     s5:Freed { symidx: temp_79_array_ptr_78, tracked: true } |     s6:Freed { symidx: temp_67_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_68_cmp_75, tracked: true } |     s8:Freed { symidx: temp_78_ptr2globl_78, tracked: true } |     s9:Freed { symidx: temp_80_array_ele_78, tracked: true } | 
              #                          label branch_true_79: 
.branch_true_79:
              #                          new_var temp_83__78:i32 
              #                          temp_83__78 = Sub i32 0_0, 1_0 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    store to x_66 in mem offset_illegal
              #                    occupy a1 with 600296_0
    li      a1, 600296
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with x_66
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_77_cmp_78 in mem offset_illegal
              #                    occupy a2 with 400195_0
    li      a2, 400195
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_77_cmp_78
              #                    occupy a2 with temp_83__78
              #                    regtab:    a0:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_83__78, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } |     a4:Freed { symidx: temp_56_ptr2globl_72, tracked: true } |     a5:Freed { symidx: temp_57_array_ptr_72, tracked: true } |     a6:Freed { symidx: temp_65_ptr2globl_75, tracked: true } |     a7:Freed { symidx: temp_66_array_ptr_75, tracked: true } |     s10:Freed { symidx: temp_76_array_ele_78, tracked: true } |     s11:Freed { symidx: temp_82_logic_78, tracked: true } |     s1:Freed { symidx: temp_74_ptr2globl_78, tracked: true } |     s2:Freed { symidx: temp_58_array_ele_72, tracked: true } |     s3:Freed { symidx: temp_59_cmp_72, tracked: true } |     s4:Freed { symidx: temp_75_array_ptr_78, tracked: true } |     s5:Freed { symidx: temp_79_array_ptr_78, tracked: true } |     s6:Freed { symidx: temp_67_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_68_cmp_75, tracked: true } |     s8:Freed { symidx: temp_78_ptr2globl_78, tracked: true } |     s9:Freed { symidx: temp_80_array_ele_78, tracked: true } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          ret temp_83__78 
              #                    load from ra_delete_0 in mem
              #                    occupy a0 with ra_delete_0
    li      a0, 600312
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_delete_0 in mem
              #                    occupy a1 with s0_delete_0
    li      a1, 600304
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    store to temp_83__78 in mem offset_illegal
              #                    occupy a2 with 360172_0
    li      a2, 360172
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_83__78
              #                    store to ra_delete_0 in mem offset_illegal
              #                    occupy a0 with 600312_0
    li      a0, 600312
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with ra_delete_0
              #                    occupy a0 with temp_83__78
              #                    load from temp_83__78 in mem

              #                    occupy a2 with temp_83__78
    li      a2, 360172
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    store to s0_delete_0 in mem offset_illegal
              #                    occupy a1 with 600304_0
    li      a1, 600304
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with s0_delete_0
              #                    occupy a1 with 600320_0
    li      a1, 600320
    li      a1, 600320
    add     sp,a1,sp
              #                    free a1
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: x_66, tracked: true } |     a2:Freed { symidx: temp_77_cmp_78, tracked: true } |     a3:Freed { symidx: temp_54_cmp_69, tracked: true } |     a4:Freed { symidx: temp_56_ptr2globl_72, tracked: true } |     a5:Freed { symidx: temp_57_array_ptr_72, tracked: true } |     a6:Freed { symidx: temp_65_ptr2globl_75, tracked: true } |     a7:Freed { symidx: temp_66_array_ptr_75, tracked: true } |     s10:Freed { symidx: temp_76_array_ele_78, tracked: true } |     s11:Freed { symidx: temp_82_logic_78, tracked: true } |     s1:Freed { symidx: temp_74_ptr2globl_78, tracked: true } |     s2:Freed { symidx: temp_58_array_ele_72, tracked: true } |     s3:Freed { symidx: temp_59_cmp_72, tracked: true } |     s4:Freed { symidx: temp_75_array_ptr_78, tracked: true } |     s5:Freed { symidx: temp_79_array_ptr_78, tracked: true } |     s6:Freed { symidx: temp_67_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_68_cmp_75, tracked: true } |     s8:Freed { symidx: temp_78_ptr2globl_78, tracked: true } |     s9:Freed { symidx: temp_80_array_ele_78, tracked: true } | 
              #                          label branch_false_79: 
.branch_false_79:
              #                          new_var temp_84_ptr2globl_81:Array:i32:[Some(10000_0)] 
              #                          temp_84_ptr2globl_81 = load *right_child_0:ptr->i32 
              #                    occupy a0 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a0, right_child
              #                    occupy reg a0 with *right_child_0
              #                    store to x_66 in mem offset_illegal
              #                    occupy a1 with 600296_0
    li      a1, 600296
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with x_66
              #                    occupy a1 with temp_84_ptr2globl_81
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_85_array_ptr_81:ptr->i32 
              #                          temp_85_array_ptr_81 = getelementptr temp_84_ptr2globl_81:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy a0 with temp_85_array_ptr_81
    li      a0, 0
              #                    store to temp_84_ptr2globl_81 in mem offset_illegal
              #                    occupy a1 with 320172_0
    li      a1, 320172
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_84_ptr2globl_81
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_77_cmp_78 in mem offset_illegal
              #                    occupy a2 with 400195_0
    li      a2, 400195
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_77_cmp_78
              #                    occupy a2 with root_66
              #                    load from root_66 in mem

              #                    occupy a2 with root_66
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_54_cmp_69 in mem offset_illegal
              #                    occupy a3 with 600295_0
    li      a3, 600295
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_54_cmp_69
              #                    occupy a3 with _anonymous_of_temp_84_ptr2globl_81_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 320172_0
    li      a1, 320172
    li      a1, 320172
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_86_array_ele_81:i32 
              #                          temp_86_array_ele_81 = load temp_85_array_ptr_81:ptr->i32 
              #                    occupy a0 with temp_85_array_ptr_81
              #                    occupy a1 with temp_86_array_ele_81
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_87_cmp_81:i1 
              #                          temp_87_cmp_81 = icmp i32 Eq temp_86_array_ele_81, -1_0 
              #                    occupy a1 with temp_86_array_ele_81
              #                    occupy a3 with -1_0
    li      a3, -1
              #                    store to temp_85_array_ptr_81 in mem offset_illegal
              #                    occupy a0 with 320160_0
    li      a0, 320160
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_85_array_ptr_81
              #                    occupy a0 with temp_87_cmp_81
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_88_ptr2globl_81:Array:i32:[Some(10000_0)] 
              #                          temp_88_ptr2globl_81 = load *left_child_0:ptr->i32 
              #                    occupy a3 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a3, left_child
              #                    occupy reg a3 with *left_child_0
              #                    store to temp_87_cmp_81 in mem offset_illegal
              #                    occupy a0 with 320155_0
    li      a0, 320155
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_87_cmp_81
              #                    occupy a0 with temp_88_ptr2globl_81
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_89_array_ptr_81:ptr->i32 
              #                          temp_89_array_ptr_81 = getelementptr temp_88_ptr2globl_81:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy a3 with temp_89_array_ptr_81
    li      a3, 0
              #                    store to temp_88_ptr2globl_81 in mem offset_illegal
              #                    occupy a0 with 280152_0
    li      a0, 280152
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_88_ptr2globl_81
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with root_66
              #                    store to temp_86_array_ele_81 in mem offset_illegal
              #                    occupy a1 with 320156_0
    li      a1, 320156
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_86_array_ele_81
              #                    occupy a1 with _anonymous_of_temp_88_ptr2globl_81_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     a3,a3,a1
              #                    free a1
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a0 with 280152_0
    li      a0, 280152
    li      a0, 280152
    add     a3,a0,a3
              #                    free a0
              #                    free a3
              #                          new_var temp_90_array_ele_81:i32 
              #                          temp_90_array_ele_81 = load temp_89_array_ptr_81:ptr->i32 
              #                    occupy a3 with temp_89_array_ptr_81
              #                    occupy a0 with temp_90_array_ele_81
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_91_cmp_81:i1 
              #                          temp_91_cmp_81 = icmp i32 Eq temp_90_array_ele_81, -1_0 
              #                    occupy a0 with temp_90_array_ele_81
              #                    occupy a1 with -1_0
    li      a1, -1
              #                    store to root_66 in mem offset_illegal
              #                    occupy a2 with 600300_0
    li      a2, 600300
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with root_66
              #                    occupy a2 with temp_91_cmp_81
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_92_logic_81:i1 
              #                          temp_92_logic_81 = Or i1 temp_91_cmp_81, temp_87_cmp_81 
              #                    occupy a2 with temp_91_cmp_81
              #                    occupy a1 with temp_87_cmp_81
              #                    load from temp_87_cmp_81 in mem
              #                    occupy a1 with temp_87_cmp_81
    add     a1,sp,a1
    lb      a1,0(a1)
              #                    free a1
              #                    occupy a1 with temp_87_cmp_81
              #                    free a2
              #                    free a1
              #                    free a1
              #                          br i1 temp_92_logic_81, label branch_true_82, label branch_false_82 
              #                    store to temp_90_array_ele_81 in mem offset_illegal
              #                    occupy a0 with 280140_0
    li      a0, 280140
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_90_array_ele_81
              #                    occupy a0 with temp_92_logic_81
              #                    load from temp_92_logic_81 in mem
              #                    occupy a0 with temp_92_logic_81
    add     a0,sp,a0
    lb      a0,0(a0)
              #                    free a0
              #                    free a0
              #                    store to temp_92_logic_81 in mem offset_illegal
              #                    occupy a0 with 280138_0
    li      a0, 280138
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_92_logic_81
              #                    occupy a0 with temp_92_logic_81
              #                    load from temp_92_logic_81 in mem
              #                    occupy a0 with temp_92_logic_81
    add     a0,sp,a0
    lb      a0,0(a0)
              #                    free a0
    bnez    a0, .branch_true_82
              #                    free a0
              #                    store to temp_92_logic_81 in mem offset_illegal
              #                    occupy a0 with 280138_0
    li      a0, 280138
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_92_logic_81
    j       .branch_false_82
              #                    regtab     a1:Freed { symidx: temp_87_cmp_81, tracked: true } |     a2:Freed { symidx: temp_91_cmp_81, tracked: true } |     a3:Freed { symidx: temp_89_array_ptr_81, tracked: true } |     a4:Freed { symidx: temp_56_ptr2globl_72, tracked: true } |     a5:Freed { symidx: temp_57_array_ptr_72, tracked: true } |     a6:Freed { symidx: temp_65_ptr2globl_75, tracked: true } |     a7:Freed { symidx: temp_66_array_ptr_75, tracked: true } |     s10:Freed { symidx: temp_76_array_ele_78, tracked: true } |     s11:Freed { symidx: temp_82_logic_78, tracked: true } |     s1:Freed { symidx: temp_74_ptr2globl_78, tracked: true } |     s2:Freed { symidx: temp_58_array_ele_72, tracked: true } |     s3:Freed { symidx: temp_59_cmp_72, tracked: true } |     s4:Freed { symidx: temp_75_array_ptr_78, tracked: true } |     s5:Freed { symidx: temp_79_array_ptr_78, tracked: true } |     s6:Freed { symidx: temp_67_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_68_cmp_75, tracked: true } |     s8:Freed { symidx: temp_78_ptr2globl_78, tracked: true } |     s9:Freed { symidx: temp_80_array_ele_78, tracked: true } | 
              #                          label branch_true_82: 
.branch_true_82:
              #                          new_var temp_93_ptr2globl_83:Array:i32:[Some(10000_0)] 
              #                          temp_93_ptr2globl_83 = load *left_child_0:ptr->i32 
              #                    occupy a0 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a0, left_child
              #                    occupy reg a0 with *left_child_0
              #                    store to temp_87_cmp_81 in mem offset_illegal
              #                    occupy a1 with 320155_0
    li      a1, 320155
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_87_cmp_81
              #                    occupy a1 with temp_93_ptr2globl_83
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_94_array_ptr_83:ptr->i32 
              #                          temp_94_array_ptr_83 = getelementptr temp_93_ptr2globl_83:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy a0 with temp_94_array_ptr_83
    li      a0, 0
              #                    store to temp_93_ptr2globl_83 in mem offset_illegal
              #                    occupy a1 with 240136_0
    li      a1, 240136
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_93_ptr2globl_83
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_91_cmp_81 in mem offset_illegal
              #                    occupy a2 with 280139_0
    li      a2, 280139
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_91_cmp_81
              #                    occupy a2 with root_66
              #                    load from root_66 in mem

              #                    occupy a2 with root_66
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_89_array_ptr_81 in mem offset_illegal
              #                    occupy a3 with 280144_0
    li      a3, 280144
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_89_array_ptr_81
              #                    occupy a3 with _anonymous_of_temp_93_ptr2globl_83_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 240136_0
    li      a1, 240136
    li      a1, 240136
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_95_array_ele_83:i32 
              #                          temp_95_array_ele_83 = load temp_94_array_ptr_83:ptr->i32 
              #                    occupy a0 with temp_94_array_ptr_83
              #                    occupy a1 with temp_95_array_ele_83
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_96_cmp_83:i1 
              #                          temp_96_cmp_83 = icmp i32 Eq temp_95_array_ele_83, -1_0 
              #                    occupy a1 with temp_95_array_ele_83
              #                    occupy a3 with -1_0
    li      a3, -1
              #                    store to temp_94_array_ptr_83 in mem offset_illegal
              #                    occupy a0 with 240128_0
    li      a0, 240128
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_94_array_ptr_83
              #                    occupy a0 with temp_96_cmp_83
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          br i1 temp_96_cmp_83, label branch_true_84, label branch_false_84 
              #                    occupy a0 with temp_96_cmp_83
              #                    free a0
              #                    occupy a0 with temp_96_cmp_83
    bnez    a0, .branch_true_84
              #                    free a0
    j       .branch_false_84
              #                    regtab     a0:Freed { symidx: temp_96_cmp_83, tracked: true } |     a1:Freed { symidx: temp_95_array_ele_83, tracked: true } |     a2:Freed { symidx: root_66, tracked: true } |     a4:Freed { symidx: temp_56_ptr2globl_72, tracked: true } |     a5:Freed { symidx: temp_57_array_ptr_72, tracked: true } |     a6:Freed { symidx: temp_65_ptr2globl_75, tracked: true } |     a7:Freed { symidx: temp_66_array_ptr_75, tracked: true } |     s10:Freed { symidx: temp_76_array_ele_78, tracked: true } |     s11:Freed { symidx: temp_82_logic_78, tracked: true } |     s1:Freed { symidx: temp_74_ptr2globl_78, tracked: true } |     s2:Freed { symidx: temp_58_array_ele_72, tracked: true } |     s3:Freed { symidx: temp_59_cmp_72, tracked: true } |     s4:Freed { symidx: temp_75_array_ptr_78, tracked: true } |     s5:Freed { symidx: temp_79_array_ptr_78, tracked: true } |     s6:Freed { symidx: temp_67_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_68_cmp_75, tracked: true } |     s8:Freed { symidx: temp_78_ptr2globl_78, tracked: true } |     s9:Freed { symidx: temp_80_array_ele_78, tracked: true } | 
              #                          label branch_true_84: 
.branch_true_84:
              #                          new_var temp_97_ptr2globl_83:Array:i32:[Some(10000_0)] 
              #                          temp_97_ptr2globl_83 = load *right_child_0:ptr->i32 
              #                    occupy a3 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a3, right_child
              #                    occupy reg a3 with *right_child_0
              #                    store to temp_96_cmp_83 in mem offset_illegal
              #                    occupy a0 with 240123_0
    li      a0, 240123
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_96_cmp_83
              #                    occupy a0 with temp_97_ptr2globl_83
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_98_array_ptr_83:ptr->i32 
              #                          temp_98_array_ptr_83 = getelementptr temp_97_ptr2globl_83:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy a3 with temp_98_array_ptr_83
    li      a3, 0
              #                    store to temp_97_ptr2globl_83 in mem offset_illegal
              #                    occupy a0 with 200120_0
    li      a0, 200120
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_97_ptr2globl_83
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with root_66
              #                    store to temp_95_array_ele_83 in mem offset_illegal
              #                    occupy a1 with 240124_0
    li      a1, 240124
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_95_array_ele_83
              #                    occupy a1 with _anonymous_of_temp_97_ptr2globl_83_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     a3,a3,a1
              #                    free a1
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a0 with 200120_0
    li      a0, 200120
    li      a0, 200120
    add     a3,a0,a3
              #                    free a0
              #                    free a3
              #                          new_var temp_99_array_ele_83:i32 
              #                          temp_99_array_ele_83 = load temp_98_array_ptr_83:ptr->i32 
              #                    occupy a3 with temp_98_array_ptr_83
              #                    occupy a0 with temp_99_array_ele_83
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          ret temp_99_array_ele_83 
              #                    load from ra_delete_0 in mem
              #                    occupy a1 with ra_delete_0
    li      a1, 600312
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_delete_0 in mem
              #                    store to temp_99_array_ele_83 in mem offset_illegal
              #                    occupy a0 with 200108_0
    li      a0, 200108
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_99_array_ele_83
              #                    occupy a0 with s0_delete_0
    li      a0, 600304
    add     a0,sp,a0
    ld      s0,0(a0)
              #                    free a0
              #                    store to s0_delete_0 in mem offset_illegal
              #                    occupy a0 with 600304_0
    li      a0, 600304
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with s0_delete_0
              #                    occupy a0 with temp_99_array_ele_83
              #                    load from temp_99_array_ele_83 in mem

              #                    store to ra_delete_0 in mem offset_illegal
              #                    occupy a1 with 600312_0
    li      a1, 600312
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with ra_delete_0
              #                    occupy a1 with temp_99_array_ele_83
    li      a1, 200108
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    store to temp_99_array_ele_83 in mem offset_illegal
              #                    occupy a1 with 200108_0
    li      a1, 200108
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_99_array_ele_83
              #                    occupy a1 with 600320_0
    li      a1, 600320
    li      a1, 600320
    add     sp,a1,sp
              #                    free a1
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_96_cmp_83, tracked: true } |     a1:Freed { symidx: temp_95_array_ele_83, tracked: true } |     a2:Freed { symidx: root_66, tracked: true } |     a4:Freed { symidx: temp_56_ptr2globl_72, tracked: true } |     a5:Freed { symidx: temp_57_array_ptr_72, tracked: true } |     a6:Freed { symidx: temp_65_ptr2globl_75, tracked: true } |     a7:Freed { symidx: temp_66_array_ptr_75, tracked: true } |     s10:Freed { symidx: temp_76_array_ele_78, tracked: true } |     s11:Freed { symidx: temp_82_logic_78, tracked: true } |     s1:Freed { symidx: temp_74_ptr2globl_78, tracked: true } |     s2:Freed { symidx: temp_58_array_ele_72, tracked: true } |     s3:Freed { symidx: temp_59_cmp_72, tracked: true } |     s4:Freed { symidx: temp_75_array_ptr_78, tracked: true } |     s5:Freed { symidx: temp_79_array_ptr_78, tracked: true } |     s6:Freed { symidx: temp_67_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_68_cmp_75, tracked: true } |     s8:Freed { symidx: temp_78_ptr2globl_78, tracked: true } |     s9:Freed { symidx: temp_80_array_ele_78, tracked: true } | 
              #                          label branch_false_84: 
.branch_false_84:
              #                          new_var temp_100_ptr2globl_83:Array:i32:[Some(10000_0)] 
              #                          temp_100_ptr2globl_83 = load *left_child_0:ptr->i32 
              #                    occupy a3 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a3, left_child
              #                    occupy reg a3 with *left_child_0
              #                    store to temp_96_cmp_83 in mem offset_illegal
              #                    occupy a0 with 240123_0
    li      a0, 240123
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_96_cmp_83
              #                    occupy a0 with temp_100_ptr2globl_83
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_101_array_ptr_83:ptr->i32 
              #                          temp_101_array_ptr_83 = getelementptr temp_100_ptr2globl_83:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy a3 with temp_101_array_ptr_83
    li      a3, 0
              #                    store to temp_100_ptr2globl_83 in mem offset_illegal
              #                    occupy a0 with 160108_0
    li      a0, 160108
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_100_ptr2globl_83
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with root_66
              #                    store to temp_95_array_ele_83 in mem offset_illegal
              #                    occupy a1 with 240124_0
    li      a1, 240124
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_95_array_ele_83
              #                    occupy a1 with _anonymous_of_temp_100_ptr2globl_83_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     a3,a3,a1
              #                    free a1
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a0 with 160108_0
    li      a0, 160108
    li      a0, 160108
    add     a3,a0,a3
              #                    free a0
              #                    free a3
              #                          new_var temp_102_array_ele_83:i32 
              #                          temp_102_array_ele_83 = load temp_101_array_ptr_83:ptr->i32 
              #                    occupy a3 with temp_101_array_ptr_83
              #                    occupy a0 with temp_102_array_ele_83
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          ret temp_102_array_ele_83 
              #                    load from ra_delete_0 in mem
              #                    occupy a1 with ra_delete_0
    li      a1, 600312
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_delete_0 in mem
              #                    store to temp_102_array_ele_83 in mem offset_illegal
              #                    occupy a0 with 160092_0
    li      a0, 160092
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_102_array_ele_83
              #                    occupy a0 with s0_delete_0
    li      a0, 600304
    add     a0,sp,a0
    ld      s0,0(a0)
              #                    free a0
              #                    store to s0_delete_0 in mem offset_illegal
              #                    occupy a0 with 600304_0
    li      a0, 600304
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with s0_delete_0
              #                    occupy a0 with temp_102_array_ele_83
              #                    load from temp_102_array_ele_83 in mem

              #                    store to ra_delete_0 in mem offset_illegal
              #                    occupy a1 with 600312_0
    li      a1, 600312
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with ra_delete_0
              #                    occupy a1 with temp_102_array_ele_83
    li      a1, 160092
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    store to temp_102_array_ele_83 in mem offset_illegal
              #                    occupy a1 with 160092_0
    li      a1, 160092
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_102_array_ele_83
              #                    occupy a1 with 600320_0
    li      a1, 600320
    li      a1, 600320
    add     sp,a1,sp
              #                    free a1
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: root_66, tracked: true } |     a3:Freed { symidx: temp_101_array_ptr_83, tracked: true } |     a4:Freed { symidx: temp_56_ptr2globl_72, tracked: true } |     a5:Freed { symidx: temp_57_array_ptr_72, tracked: true } |     a6:Freed { symidx: temp_65_ptr2globl_75, tracked: true } |     a7:Freed { symidx: temp_66_array_ptr_75, tracked: true } |     s10:Freed { symidx: temp_76_array_ele_78, tracked: true } |     s11:Freed { symidx: temp_82_logic_78, tracked: true } |     s1:Freed { symidx: temp_74_ptr2globl_78, tracked: true } |     s2:Freed { symidx: temp_58_array_ele_72, tracked: true } |     s3:Freed { symidx: temp_59_cmp_72, tracked: true } |     s4:Freed { symidx: temp_75_array_ptr_78, tracked: true } |     s5:Freed { symidx: temp_79_array_ptr_78, tracked: true } |     s6:Freed { symidx: temp_67_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_68_cmp_75, tracked: true } |     s8:Freed { symidx: temp_78_ptr2globl_78, tracked: true } |     s9:Freed { symidx: temp_80_array_ele_78, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                    regtab     a1:Freed { symidx: temp_87_cmp_81, tracked: true } |     a2:Freed { symidx: temp_91_cmp_81, tracked: true } |     a3:Freed { symidx: temp_89_array_ptr_81, tracked: true } |     a4:Freed { symidx: temp_56_ptr2globl_72, tracked: true } |     a5:Freed { symidx: temp_57_array_ptr_72, tracked: true } |     a6:Freed { symidx: temp_65_ptr2globl_75, tracked: true } |     a7:Freed { symidx: temp_66_array_ptr_75, tracked: true } |     s10:Freed { symidx: temp_76_array_ele_78, tracked: true } |     s11:Freed { symidx: temp_82_logic_78, tracked: true } |     s1:Freed { symidx: temp_74_ptr2globl_78, tracked: true } |     s2:Freed { symidx: temp_58_array_ele_72, tracked: true } |     s3:Freed { symidx: temp_59_cmp_72, tracked: true } |     s4:Freed { symidx: temp_75_array_ptr_78, tracked: true } |     s5:Freed { symidx: temp_79_array_ptr_78, tracked: true } |     s6:Freed { symidx: temp_67_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_68_cmp_75, tracked: true } |     s8:Freed { symidx: temp_78_ptr2globl_78, tracked: true } |     s9:Freed { symidx: temp_80_array_ele_78, tracked: true } | 
              #                          label branch_false_82: 
.branch_false_82:
              #                          new_var temp_103_ptr2globl_87:Array:i32:[Some(10000_0)] 
              #                          temp_103_ptr2globl_87 = load *right_child_0:ptr->i32 
              #                    occupy a0 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a0, right_child
              #                    occupy reg a0 with *right_child_0
              #                    store to temp_87_cmp_81 in mem offset_illegal
              #                    occupy a1 with 320155_0
    li      a1, 320155
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_87_cmp_81
              #                    occupy a1 with temp_103_ptr2globl_87
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_104_array_ptr_87:ptr->i32 
              #                          temp_104_array_ptr_87 = getelementptr temp_103_ptr2globl_87:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy a0 with temp_104_array_ptr_87
    li      a0, 0
              #                    store to temp_103_ptr2globl_87 in mem offset_illegal
              #                    occupy a1 with 120092_0
    li      a1, 120092
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_103_ptr2globl_87
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_91_cmp_81 in mem offset_illegal
              #                    occupy a2 with 280139_0
    li      a2, 280139
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_91_cmp_81
              #                    occupy a2 with root_66
              #                    load from root_66 in mem

              #                    occupy a2 with root_66
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_89_array_ptr_81 in mem offset_illegal
              #                    occupy a3 with 280144_0
    li      a3, 280144
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_89_array_ptr_81
              #                    occupy a3 with _anonymous_of_temp_103_ptr2globl_87_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 120092_0
    li      a1, 120092
    li      a1, 120092
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_105_array_ele_87:i32 
              #                          temp_105_array_ele_87 = load temp_104_array_ptr_87:ptr->i32 
              #                    occupy a0 with temp_104_array_ptr_87
              #                    occupy a1 with temp_105_array_ele_87
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_106_ret_of_find_minimum_87:i32 
              #                          temp_106_ret_of_find_minimum_87 =  Call i32 find_minimum_0(temp_105_array_ele_87) 
              #                    saved register dumping to mem
              #                    store to temp_74_ptr2globl_78 in mem offset_illegal
              #                    occupy s1 with 400208_0
    li      s1, 400208
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_74_ptr2globl_78
              #                    store to temp_58_array_ele_72 in mem offset_illegal
              #                    occupy s1 with 560276_0
    li      s1, 560276
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_58_array_ele_72
              #                    store to temp_59_cmp_72 in mem offset_illegal
              #                    occupy s2 with 560275_0
    li      s2, 560275
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_59_cmp_72
              #                    store to temp_75_array_ptr_78 in mem offset_illegal
              #                    occupy s3 with 400200_0
    li      s3, 400200
    add     s3,sp,s3
    sd      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_75_array_ptr_78
              #                    store to temp_79_array_ptr_78 in mem offset_illegal
              #                    occupy s4 with 360184_0
    li      s4, 360184
    add     s4,sp,s4
    sd      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_79_array_ptr_78
              #                    store to temp_67_array_ele_75 in mem offset_illegal
              #                    occupy s5 with 480236_0
    li      s5, 480236
    add     s5,sp,s5
    sw      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_67_array_ele_75
              #                    store to temp_68_cmp_75 in mem offset_illegal
              #                    occupy s6 with 480235_0
    li      s6, 480235
    add     s6,sp,s6
    sb      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_68_cmp_75
              #                    store to temp_78_ptr2globl_78 in mem offset_illegal
              #                    occupy s7 with 360192_0
    li      s7, 360192
    add     s7,sp,s7
    sw      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_78_ptr2globl_78
              #                    store to temp_80_array_ele_78 in mem offset_illegal
              #                    occupy s8 with 360180_0
    li      s8, 360180
    add     s8,sp,s8
    sw      s9,0(s8)
              #                    free s8
              #                    release s9 with temp_80_array_ele_78
              #                    store to temp_76_array_ele_78 in mem offset_illegal
              #                    occupy s9 with 400196_0
    li      s9, 400196
    add     s9,sp,s9
    sw      s10,0(s9)
              #                    free s9
              #                    release s10 with temp_76_array_ele_78
              #                    store to temp_82_logic_78 in mem offset_illegal
              #                    occupy s10 with 360178_0
    li      s10, 360178
    add     s10,sp,s10
    sb      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_82_logic_78
              #                    store to temp_104_array_ptr_87 in mem offset_illegal
              #                    occupy a0 with 120080_0
    li      a0, 120080
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_104_array_ptr_87
              #                    store to temp_105_array_ele_87 in mem offset_illegal
              #                    occupy a0 with 120076_0
    li      a0, 120076
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_105_array_ele_87
              #                    store to root_66 in mem offset_illegal
              #                    occupy a1 with 600300_0
    li      a1, 600300
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with root_66
              #                    store to temp_56_ptr2globl_72 in mem offset_illegal
              #                    occupy a2 with 560288_0
    li      a2, 560288
    add     a2,sp,a2
    sw      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_56_ptr2globl_72
              #                    store to temp_57_array_ptr_72 in mem offset_illegal
              #                    occupy a3 with 560280_0
    li      a3, 560280
    add     a3,sp,a3
    sd      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_57_array_ptr_72
              #                    store to temp_65_ptr2globl_75 in mem offset_illegal
              #                    occupy a4 with 480248_0
    li      a4, 480248
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_65_ptr2globl_75
              #                    store to temp_66_array_ptr_75 in mem offset_illegal
              #                    occupy a5 with 480240_0
    li      a5, 480240
    add     a5,sp,a5
    sd      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_66_array_ptr_75
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_105_array_ele_87_0
              #                    load from temp_105_array_ele_87 in mem

              #                    occupy a6 with temp_105_array_ele_87
    li      a6, 120076
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    arg load ended


    call    find_minimum
              #                    store to temp_106_ret_of_find_minimum_87 in mem offset_illegal
              #                    occupy a0 with 120072_0
    li      a0, 120072
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          tmp_87 = i32 temp_106_ret_of_find_minimum_87 
              #                    occupy a0 with temp_106_ret_of_find_minimum_87
              #                    occupy a7 with tmp_87
    mv      a7, a0
              #                    free a0
              #                    free a7
              #                          new_var temp_107_index_ptr_87:ptr->i32 
              #                          temp_107_index_ptr_87 = getelementptr value_0:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy s11 with temp_107_index_ptr_87
    li      s11, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with root_66
              #                    load from root_66 in mem

              #                    occupy a2 with root_66
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    occupy a3 with _anonymous_of_value_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     s11,s11,a3
              #                    free a3
    slli s11,s11,2
              #                    occupy a1 with _anonymous_of_value_0_0
    la      a1, value
    add     s11,s11,a1
              #                    free a1
              #                    free s11
              #                          new_var temp_108_ptr2globl_87:Array:i32:[Some(10000_0)] 
              #                          temp_108_ptr2globl_87 = load *value_0:ptr->i32 
              #                    occupy a1 with *value_0
              #                       load label value as ptr to reg
    la      a1, value
              #                    occupy reg a1 with *value_0
              #                    occupy a3 with temp_108_ptr2globl_87
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_109_array_ptr_87:ptr->i32 
              #                          temp_109_array_ptr_87 = getelementptr temp_108_ptr2globl_87:Array:i32:[Some(10000_0)] [Some(tmp_87)] 
              #                    occupy a1 with temp_109_array_ptr_87
    li      a1, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a7 with tmp_87
              #                    occupy a5 with _anonymous_of_temp_108_ptr2globl_87_0
    mul     a5,a4,a7
              #                    free a4
              #                    free a7
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
    add     a1,a1,sp
              #                    occupy a4 with 80056_0
    li      a4, 80056
    li      a4, 80056
    add     a1,a4,a1
              #                    free a4
              #                    free a1
              #                          new_var temp_110_array_ele_87:i32 
              #                          temp_110_array_ele_87 = load temp_109_array_ptr_87:ptr->i32 
              #                    occupy a1 with temp_109_array_ptr_87
              #                    occupy a4 with temp_110_array_ele_87
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                          store temp_110_array_ele_87:i32 temp_107_index_ptr_87:ptr->i32 
              #                    occupy s11 with temp_107_index_ptr_87
              #                    occupy a4 with temp_110_array_ele_87
    sw      a4,0(s11)
              #                    free a4
              #                    free s11
              #                          mu value_0:456 
              #                          value_0 = chi value_0:456 
              #                          new_var temp_111_index_ptr_87:ptr->i32 
              #                          temp_111_index_ptr_87 = getelementptr right_child_0:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy a5 with temp_111_index_ptr_87
    li      a5, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a2 with root_66
              #                    occupy s2 with _anonymous_of_right_child_0_0
    mul     s2,s1,a2
              #                    free s1
              #                    free a2
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
              #                    occupy s1 with _anonymous_of_right_child_0_0
    la      s1, right_child
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_112_ptr2globl_87:Array:i32:[Some(10000_0)] 
              #                          temp_112_ptr2globl_87 = load *right_child_0:ptr->i32 
              #                    occupy s1 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s1, right_child
              #                    occupy reg s1 with *right_child_0
              #                    occupy s2 with temp_112_ptr2globl_87
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_113_array_ptr_87:ptr->i32 
              #                          temp_113_array_ptr_87 = getelementptr temp_112_ptr2globl_87:Array:i32:[Some(10000_0)] [Some(root_66)] 
              #                    occupy s1 with temp_113_array_ptr_87
    li      s1, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a2 with root_66
              #                    occupy s4 with _anonymous_of_temp_112_ptr2globl_87_0
    mul     s4,s3,a2
              #                    free s3
              #                    free a2
    add     s1,s1,s4
              #                    free s4
    slli s1,s1,2
    add     s1,s1,sp
              #                    occupy s3 with 40032_0
    li      s3, 40032
    li      s3, 40032
    add     s1,s3,s1
              #                    free s3
              #                    free s1
              #                          new_var temp_114_array_ele_87:i32 
              #                          temp_114_array_ele_87 = load temp_113_array_ptr_87:ptr->i32 
              #                    occupy s1 with temp_113_array_ptr_87
              #                    occupy s3 with temp_114_array_ele_87
    lw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          new_var temp_115_ptr2globl_87:Array:i32:[Some(10000_0)] 
              #                          temp_115_ptr2globl_87 = load *value_0:ptr->i32 
              #                    occupy s4 with *value_0
              #                       load label value as ptr to reg
    la      s4, value
              #                    occupy reg s4 with *value_0
              #                    occupy s5 with temp_115_ptr2globl_87
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_116_array_ptr_87:ptr->i32 
              #                          temp_116_array_ptr_87 = getelementptr temp_115_ptr2globl_87:Array:i32:[Some(10000_0)] [Some(tmp_87)] 
              #                    occupy s4 with temp_116_array_ptr_87
    li      s4, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a7 with tmp_87
              #                    occupy s7 with _anonymous_of_temp_115_ptr2globl_87_0
    mul     s7,s6,a7
              #                    free s6
              #                    free a7
    add     s4,s4,s7
              #                    free s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,20
              #                    free s4
              #                          new_var temp_117_array_ele_87:i32 
              #                          temp_117_array_ele_87 = load temp_116_array_ptr_87:ptr->i32 
              #                    occupy s4 with temp_116_array_ptr_87
              #                    occupy s6 with temp_117_array_ele_87
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          new_var temp_118_ret_of_delete_87:i32 
              #                          temp_118_ret_of_delete_87 =  Call i32 delete_0(temp_114_array_ele_87, temp_117_array_ele_87) 
              #                    saved register dumping to mem
              #                    store to temp_113_array_ptr_87 in mem offset_illegal
              #                    occupy s1 with 40024_0
    li      s1, 40024
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_113_array_ptr_87
              #                    store to temp_112_ptr2globl_87 in mem offset_illegal
              #                    occupy s1 with 40032_0
    li      s1, 40032
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_112_ptr2globl_87
              #                    store to temp_114_array_ele_87 in mem offset_illegal
              #                    occupy s2 with 40020_0
    li      s2, 40020
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_114_array_ele_87
              #                    store to temp_116_array_ptr_87 in mem offset legal
    sd      s4,8(sp)
              #                    release s4 with temp_116_array_ptr_87
              #                    store to temp_115_ptr2globl_87 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_115_ptr2globl_87
              #                    store to temp_117_array_ele_87 in mem offset legal
    sw      s6,4(sp)
              #                    release s6 with temp_117_array_ele_87
              #                    store to temp_107_index_ptr_87 in mem offset_illegal
              #                    occupy s3 with 120056_0
    li      s3, 120056
    add     s3,sp,s3
    sd      s11,0(s3)
              #                    free s3
              #                    release s11 with temp_107_index_ptr_87
              #                    store to temp_106_ret_of_find_minimum_87 in mem offset_illegal
              #                    occupy a0 with 120072_0
    li      a0, 120072
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_106_ret_of_find_minimum_87
              #                    store to temp_109_array_ptr_87 in mem offset_illegal
              #                    occupy a0 with 80048_0
    li      a0, 80048
    add     a0,sp,a0
    sd      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_109_array_ptr_87
              #                    store to root_66 in mem offset_illegal
              #                    occupy a1 with 600300_0
    li      a1, 600300
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with root_66
              #                    store to temp_108_ptr2globl_87 in mem offset_illegal
              #                    occupy a2 with 80056_0
    li      a2, 80056
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_108_ptr2globl_87
              #                    store to temp_110_array_ele_87 in mem offset_illegal
              #                    occupy a3 with 80044_0
    li      a3, 80044
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_110_array_ele_87
              #                    store to temp_111_index_ptr_87 in mem offset_illegal
              #                    occupy a4 with 80032_0
    li      a4, 80032
    add     a4,sp,a4
    sd      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_111_index_ptr_87
              #                    store to temp_105_array_ele_87 in mem offset_illegal
              #                    occupy a5 with 120076_0
    li      a5, 120076
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_105_array_ele_87
              #                    store to tmp_87 in mem offset_illegal
              #                    occupy a6 with 120068_0
    li      a6, 120068
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with tmp_87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_114_array_ele_87_0
              #                    load from temp_114_array_ele_87 in mem

              #                    occupy a7 with temp_114_array_ele_87
    li      a7, 40020
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_temp_117_array_ele_87_0
              #                    load from temp_117_array_ele_87 in mem


    lw      a1,4(sp)
              #                    arg load ended


    call    delete
              #                    store to temp_118_ret_of_delete_87 in mem offset legal
    sw      a0,0(sp)
              #                          store temp_118_ret_of_delete_87:i32 temp_111_index_ptr_87:ptr->i32 
              #                    occupy a1 with temp_111_index_ptr_87
              #                    load from temp_111_index_ptr_87 in mem
              #                    occupy a1 with temp_111_index_ptr_87
    add     a1,sp,a1
    ld      a1,0(a1)
              #                    free a1
              #                    occupy a0 with temp_118_ret_of_delete_87
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu right_child_0:483 
              #                          right_child_0 = chi right_child_0:483 
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: temp_118_ret_of_delete_87, tracked: true } |     a1:Freed { symidx: temp_111_index_ptr_87, tracked: true } |     a7:Freed { symidx: temp_114_array_ele_87, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                    regtab     a0:Freed { symidx: temp_118_ret_of_delete_87, tracked: true } |     a1:Freed { symidx: temp_111_index_ptr_87, tracked: true } |     a7:Freed { symidx: temp_114_array_ele_87, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                    regtab     a0:Freed { symidx: temp_73_ret_of_delete_75, tracked: true } |     a1:Freed { symidx: temp_69_index_ptr_75, tracked: true } |     a7:Freed { symidx: temp_72_array_ele_75, tracked: true } |     s7:Freed { symidx: x_66, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_delete_72, tracked: true } |     a1:Freed { symidx: temp_60_index_ptr_72, tracked: true } |     a5:Freed { symidx: temp_63_array_ele_72, tracked: true } |     a6:Freed { symidx: x_66, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_delete_72, tracked: true } |     a1:Freed { symidx: temp_60_index_ptr_72, tracked: true } |     a5:Freed { symidx: temp_63_array_ele_72, tracked: true } |     a6:Freed { symidx: x_66, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          ret root_66 
              #                    load from ra_delete_0 in mem
              #                    occupy a2 with ra_delete_0
    li      a2, 600312
    add     a2,sp,a2
    ld      ra,0(a2)
              #                    free a2
              #                    load from s0_delete_0 in mem
              #                    occupy a3 with s0_delete_0
    li      a3, 600304
    add     a3,sp,a3
    ld      s0,0(a3)
              #                    free a3
              #                    store to temp_64_ret_of_delete_72 in mem offset_illegal
              #                    occupy a0 with 520248_0
    li      a0, 520248
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_64_ret_of_delete_72
              #                    occupy a0 with root_66
              #                    load from root_66 in mem

              #                    occupy a4 with root_66
    li      a4, 600300
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    occupy a7 with 600320_0
    li      a7, 600320
    li      a7, 600320
    add     sp,a7,sp
              #                    free a7
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_60_index_ptr_72, tracked: true } |     a2:Freed { symidx: ra_delete_0, tracked: true } |     a3:Freed { symidx: s0_delete_0, tracked: true } |     a4:Freed { symidx: root_66, tracked: true } |     a5:Freed { symidx: temp_63_array_ele_72, tracked: true } |     a6:Freed { symidx: x_66, tracked: true } | 
              #                    regtab 
              #                          Define inorder_0 [root_92] -> inorder_ret_0 
    .globl inorder
    .type inorder,@function
inorder:
              #                    mem layout:|ra_inorder:8 at 120064|s0_inorder:8 at 120056|root:4 at 120052|temp_119_cmp:1 at 120051|none:3 at 120048|temp_120_ptr2globl:40000 at 80048|temp_121_array_ptr:8 at 80040|temp_122_array_ele:4 at 80036|temp_123_ptr2globl:40000 at 40036|none:4 at 40032|temp_124_array_ptr:8 at 40024|temp_125_array_ele:4 at 40020|temp_126_ptr2globl:40000 at 20|none:4 at 16|temp_127_array_ptr:8 at 8|temp_128_array_ele:4 at 4|none:4 at 0
              #                    occupy a1 with -120072_0
    li      a1, -120072
    li      a1, -120072
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_inorder_0 in mem offset_illegal
              #                    occupy a2 with 120064_0
    li      a2, 120064
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_inorder_0 in mem offset_illegal
              #                    occupy a3 with 120056_0
    li      a3, 120056
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 120072_0
    li      a4, 120072
    li      a4, 120072
    add     s0,a4,sp
              #                    free a4
              #                          alloc i1 temp_119_cmp_95 
              #                          alloc Array:i32:[Some(10000_0)] temp_120_ptr2globl_97 
              #                          alloc ptr->i32 temp_121_array_ptr_97 
              #                          alloc i32 temp_122_array_ele_97 
              #                          alloc Array:i32:[Some(10000_0)] temp_123_ptr2globl_97 
              #                          alloc ptr->i32 temp_124_array_ptr_97 
              #                          alloc i32 temp_125_array_ele_97 
              #                          alloc Array:i32:[Some(10000_0)] temp_126_ptr2globl_97 
              #                          alloc ptr->i32 temp_127_array_ptr_97 
              #                          alloc i32 temp_128_array_ele_97 
              #                    regtab     a0:Freed { symidx: root_92, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_119_cmp_95:i1 
              #                          temp_119_cmp_95 = icmp i32 Ne root_92, -1_0 
              #                    occupy a0 with root_92
              #                    occupy a1 with -1_0
    li      a1, -1
              #                    occupy a2 with temp_119_cmp_95
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_119_cmp_95, label branch_true_96, label branch_false_96 
              #                    occupy a2 with temp_119_cmp_95
              #                    free a2
              #                    occupy a2 with temp_119_cmp_95
    bnez    a2, .branch_true_96
              #                    free a2
    j       .branch_false_96
              #                    regtab     a0:Freed { symidx: root_92, tracked: true } |     a2:Freed { symidx: temp_119_cmp_95, tracked: true } | 
              #                          label branch_true_96: 
.branch_true_96:
              #                          new_var temp_120_ptr2globl_97:Array:i32:[Some(10000_0)] 
              #                          temp_120_ptr2globl_97 = load *left_child_0:ptr->i32 
              #                    occupy a1 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a1, left_child
              #                    occupy reg a1 with *left_child_0
              #                    occupy a3 with temp_120_ptr2globl_97
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_121_array_ptr_97:ptr->i32 
              #                          temp_121_array_ptr_97 = getelementptr temp_120_ptr2globl_97:Array:i32:[Some(10000_0)] [Some(root_92)] 
              #                    occupy a4 with temp_121_array_ptr_97
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with root_92
              #                    occupy a6 with _anonymous_of_temp_120_ptr2globl_97_0
    mul     a6,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
              #                    occupy a7 with 80048_0
    li      a7, 80048
    li      a7, 80048
    add     a4,a7,a4
              #                    free a7
              #                    free a4
              #                          new_var temp_122_array_ele_97:i32 
              #                          temp_122_array_ele_97 = load temp_121_array_ptr_97:ptr->i32 
              #                    occupy a4 with temp_121_array_ptr_97
              #                    occupy s1 with temp_122_array_ele_97
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                           Call void inorder_0(temp_122_array_ele_97) 
              #                    saved register dumping to mem
              #                    store to temp_122_array_ele_97 in mem offset_illegal
              #                    occupy s1 with 80036_0
    li      s1, 80036
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_122_array_ele_97
              #                    store to root_92 in mem offset_illegal
              #                    occupy a0 with 120052_0
    li      a0, 120052
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with root_92
              #                    store to temp_119_cmp_95 in mem offset_illegal
              #                    occupy a0 with 120051_0
    li      a0, 120051
    add     a0,sp,a0
    sb      a2,0(a0)
              #                    free a0
              #                    release a2 with temp_119_cmp_95
              #                    store to temp_120_ptr2globl_97 in mem offset_illegal
              #                    found literal reg Some(a7) already exist with 80048_0
              #                    occupy a7 with 80048_0
    add     a7,sp,a7
    sw      a3,0(a7)
              #                    free a7
              #                    release a3 with temp_120_ptr2globl_97
              #                    store to temp_121_array_ptr_97 in mem offset_illegal
              #                    occupy a1 with 80040_0
    li      a1, 80040
    add     a1,sp,a1
    sd      a4,0(a1)
              #                    free a1
              #                    release a4 with temp_121_array_ptr_97
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_122_array_ele_97_0
              #                    load from temp_122_array_ele_97 in mem

              #                    occupy a2 with temp_122_array_ele_97
    li      a2, 80036
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    arg load ended


    call    inorder
              #                          new_var temp_123_ptr2globl_97:Array:i32:[Some(10000_0)] 
              #                          temp_123_ptr2globl_97 = load *value_0:ptr->i32 
              #                    occupy a0 with *value_0
              #                       load label value as ptr to reg
    la      a0, value
              #                    occupy reg a0 with *value_0
              #                    occupy a3 with temp_123_ptr2globl_97
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                          new_var temp_124_array_ptr_97:ptr->i32 
              #                          temp_124_array_ptr_97 = getelementptr temp_123_ptr2globl_97:Array:i32:[Some(10000_0)] [Some(root_92)] 
              #                    occupy a4 with temp_124_array_ptr_97
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with root_92
              #                    load from root_92 in mem

              #                    occupy a6 with root_92
    add     a6,sp,a6
    lw      a6,0(a6)
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_123_ptr2globl_97_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
    add     a4,a4,sp
              #                    occupy s1 with 40036_0
    li      s1, 40036
    li      s1, 40036
    add     a4,s1,a4
              #                    free s1
              #                    free a4
              #                          new_var temp_125_array_ele_97:i32 
              #                          temp_125_array_ele_97 = load temp_124_array_ptr_97:ptr->i32 
              #                    occupy a4 with temp_124_array_ptr_97
              #                    occupy s2 with temp_125_array_ele_97
    lw      s2,0(a4)
              #                    free s2
              #                    free a4
              #                           Call void putint_0(temp_125_array_ele_97) 
              #                    saved register dumping to mem
              #                    store to temp_125_array_ele_97 in mem offset_illegal
              #                    occupy s1 with 40020_0
    li      s1, 40020
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_125_array_ele_97
              #                    store to temp_122_array_ele_97 in mem offset_illegal
              #                    occupy a0 with 80036_0
    li      a0, 80036
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with temp_122_array_ele_97
              #                    store to temp_123_ptr2globl_97 in mem offset_illegal
              #                    occupy a1 with 40036_0
    li      a1, 40036
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_123_ptr2globl_97
              #                    store to temp_124_array_ptr_97 in mem offset_illegal
              #                    occupy a2 with 40024_0
    li      a2, 40024
    add     a2,sp,a2
    sd      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_124_array_ptr_97
              #                    store to root_92 in mem offset_illegal
              #                    occupy a3 with 120052_0
    li      a3, 120052
    add     a3,sp,a3
    sw      a6,0(a3)
              #                    free a3
              #                    release a6 with root_92
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_125_array_ele_97_0
              #                    load from temp_125_array_ele_97 in mem

              #                    occupy a4 with temp_125_array_ele_97
    li      a4, 40020
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    arg load ended


    call    putint
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    store to temp_125_array_ele_97 in mem offset_illegal
              #                    occupy a0 with 40020_0
    li      a0, 40020
    add     a0,sp,a0
    sw      a4,0(a0)
              #                    free a0
              #                    release a4 with temp_125_array_ele_97
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          new_var temp_126_ptr2globl_97:Array:i32:[Some(10000_0)] 
              #                          temp_126_ptr2globl_97 = load *right_child_0:ptr->i32 
              #                    occupy a0 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a0, right_child
              #                    occupy reg a0 with *right_child_0
              #                    occupy a1 with temp_126_ptr2globl_97
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_127_array_ptr_97:ptr->i32 
              #                          temp_127_array_ptr_97 = getelementptr temp_126_ptr2globl_97:Array:i32:[Some(10000_0)] [Some(root_92)] 
              #                    occupy a2 with temp_127_array_ptr_97
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with root_92
              #                    load from root_92 in mem

              #                    occupy a4 with root_92
    add     a4,sp,a4
    lw      a4,0(a4)
              #                    free a4
              #                    occupy a5 with _anonymous_of_temp_126_ptr2globl_97_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,20
              #                    free a2
              #                          new_var temp_128_array_ele_97:i32 
              #                          temp_128_array_ele_97 = load temp_127_array_ptr_97:ptr->i32 
              #                    occupy a2 with temp_127_array_ptr_97
              #                    occupy a6 with temp_128_array_ele_97
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                           Call void inorder_0(temp_128_array_ele_97) 
              #                    saved register dumping to mem
              #                    store to temp_126_ptr2globl_97 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_126_ptr2globl_97
              #                    store to temp_127_array_ptr_97 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_127_array_ptr_97
              #                    store to root_92 in mem offset_illegal
              #                    occupy a0 with 120052_0
    li      a0, 120052
    add     a0,sp,a0
    sw      a4,0(a0)
              #                    free a0
              #                    release a4 with root_92
              #                    store to temp_128_array_ele_97 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_128_array_ele_97
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_128_array_ele_97_0
              #                    load from temp_128_array_ele_97 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    inorder
              #                          jump label: branch_false_96 
              #                    occupy a0 with _anonymous_of_root_92_0
              #                    load from root_92 in mem

              #                    occupy a1 with root_92
    li      a1, 120052
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_119_cmp_95_0
              #                    load from temp_119_cmp_95 in mem
              #                    occupy a3 with temp_119_cmp_95
    li      a3, 120051
    add     a3,sp,a3
    lb      a2,0(a3)
              #                    free a3
              #                    store to temp_119_cmp_95 in mem offset_illegal
              #                    occupy a3 with 120051_0
    li      a3, 120051
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_119_cmp_95
    j       .branch_false_96
              #                    regtab     a0:Freed { symidx: root_92, tracked: true } |     a2:Freed { symidx: temp_119_cmp_95, tracked: true } | 
              #                          label branch_false_96: 
.branch_false_96:
              #                    regtab     a0:Freed { symidx: root_92, tracked: true } |     a2:Freed { symidx: temp_119_cmp_95, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 72|s0_main:8 at 64|temp_129_ret_of_getint:4 at 60|n:4 at 56|temp_130_booltrans:1 at 55|temp_131_logicnot:1 at 54|none:2 at 52|temp_132_ret_of_getint:4 at 48|temp_133_ret_of_new_node:4 at 44|root:4 at 40|i:4 at 36|temp_134_cmp:1 at 35|none:3 at 32|temp_135_ret_of_getint:4 at 28|temp_136_ret_of_insert:4 at 24|temp_137_arithop:4 at 20|temp_138_ret_of_getint:4 at 16|temp_139_cmp:1 at 15|none:3 at 12|temp_140_ret_of_getint:4 at 8|temp_141_ret_of_delete:4 at 4|temp_142_arithop:4 at 0
    addi    sp,sp,-80
              #                    store to ra_main_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          alloc i32 temp_129_ret_of_getint_103 
              #                          alloc i32 n_103 
              #                          alloc i1 temp_130_booltrans_106 
              #                          alloc i1 temp_131_logicnot_106 
              #                          alloc i32 temp_132_ret_of_getint_103 
              #                          alloc i32 temp_133_ret_of_new_node_103 
              #                          alloc i32 root_103 
              #                          alloc i32 i_103 
              #                          alloc i1 temp_134_cmp_110 
              #                          alloc i32 temp_135_ret_of_getint_112 
              #                          alloc i32 temp_136_ret_of_insert_112 
              #                          alloc i32 temp_137_arithop_112 
              #                          alloc i32 temp_138_ret_of_getint_103 
              #                          alloc i1 temp_139_cmp_119 
              #                          alloc i32 temp_140_ret_of_getint_121 
              #                          alloc i32 temp_141_ret_of_delete_121 
              #                          alloc i32 temp_142_arithop_121 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          store 0_0:i32 *now_0:ptr->i32 
              #                    occupy a0 with *now_0
              #                       load label now as ptr to reg
    la      a0, now
              #                    occupy reg a0 with *now_0
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_129_ret_of_getint_103:i32 
              #                          temp_129_ret_of_getint_103 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_129_ret_of_getint_103 in mem offset legal
    sw      a0,60(sp)
              #                          n_103 = i32 temp_129_ret_of_getint_103 
              #                    occupy a0 with temp_129_ret_of_getint_103
              #                    occupy a1 with n_103
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_129_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_130_booltrans_106:i1 
              #                          temp_130_booltrans_106 = icmp i1 Ne n_103, 0_0 
              #                    occupy a1 with n_103
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_130_booltrans_106
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_131_logicnot_106:i1 
              #                          temp_131_logicnot_106 = xor i1 temp_130_booltrans_106, true 
              #                    occupy a3 with temp_130_booltrans_106
              #                    occupy a4 with temp_131_logicnot_106
    seqz    a4, a3
              #                    free a3
              #                    free a4
              #                          br i1 temp_131_logicnot_106, label branch_true_107, label branch_false_107 
              #                    occupy a4 with temp_131_logicnot_106
              #                    free a4
              #                    occupy a4 with temp_131_logicnot_106
    bnez    a4, .branch_true_107
              #                    free a4
    j       .branch_false_107
              #                    regtab     a0:Freed { symidx: temp_129_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } |     a3:Freed { symidx: temp_130_booltrans_106, tracked: true } |     a4:Freed { symidx: temp_131_logicnot_106, tracked: true } | 
              #                          label branch_true_107: 
.branch_true_107:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,72(sp)
              #                    load from s0_main_0 in mem
    ld      s0,64(sp)
              #                    store to temp_129_ret_of_getint_103 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_129_ret_of_getint_103
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_129_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } |     a3:Freed { symidx: temp_130_booltrans_106, tracked: true } |     a4:Freed { symidx: temp_131_logicnot_106, tracked: true } | 
              #                          label branch_false_107: 
.branch_false_107:
              #                    regtab     a0:Freed { symidx: temp_129_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } |     a3:Freed { symidx: temp_130_booltrans_106, tracked: true } |     a4:Freed { symidx: temp_131_logicnot_106, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_132_ret_of_getint_103:i32 
              #                          temp_132_ret_of_getint_103 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_129_ret_of_getint_103 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_129_ret_of_getint_103
              #                    store to n_103 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with n_103
              #                    store to temp_130_booltrans_106 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_130_booltrans_106
              #                    store to temp_131_logicnot_106 in mem offset legal
    sb      a4,54(sp)
              #                    release a4 with temp_131_logicnot_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_132_ret_of_getint_103 in mem offset legal
    sw      a0,48(sp)
              #                          new_var temp_133_ret_of_new_node_103:i32 
              #                          temp_133_ret_of_new_node_103 =  Call i32 new_node_0(temp_132_ret_of_getint_103) 
              #                    saved register dumping to mem
              #                    store to temp_132_ret_of_getint_103 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_132_ret_of_getint_103
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_132_ret_of_getint_103_0
              #                    load from temp_132_ret_of_getint_103 in mem


    lw      a0,48(sp)
              #                    arg load ended


    call    new_node
              #                    store to temp_133_ret_of_new_node_103 in mem offset legal
    sw      a0,44(sp)
              #                          root_103 = i32 temp_133_ret_of_new_node_103 
              #                    occupy a0 with temp_133_ret_of_new_node_103
              #                    occupy a1 with root_103
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_103 = i32 1_0 
              #                    occupy a2 with i_103
    li      a2, 1
              #                    free a2
              #                          jump label: while.head_111 
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: temp_133_ret_of_new_node_103, tracked: true } |     a1:Freed { symidx: root_103, tracked: true } |     a2:Freed { symidx: i_103, tracked: true } | 
              #                          label while.head_111: 
.while.head_111:
              #                          new_var temp_134_cmp_110:i1 
              #                          temp_134_cmp_110 = icmp i32 Slt i_103, n_103 
              #                    occupy a2 with i_103
              #                    occupy a3 with n_103
              #                    load from n_103 in mem


    lw      a3,56(sp)
              #                    occupy a4 with temp_134_cmp_110
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_134_cmp_110, label while.body_111, label while.exit_111 
              #                    occupy a4 with temp_134_cmp_110
              #                    free a4
              #                    occupy a4 with temp_134_cmp_110
    bnez    a4, .while.body_111
              #                    free a4
    j       .while.exit_111
              #                    regtab     a0:Freed { symidx: temp_133_ret_of_new_node_103, tracked: true } |     a1:Freed { symidx: root_103, tracked: true } |     a2:Freed { symidx: i_103, tracked: true } |     a3:Freed { symidx: n_103, tracked: true } |     a4:Freed { symidx: temp_134_cmp_110, tracked: true } | 
              #                          label while.body_111: 
.while.body_111:
              #                          new_var temp_135_ret_of_getint_112:i32 
              #                          temp_135_ret_of_getint_112 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_133_ret_of_new_node_103 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_133_ret_of_new_node_103
              #                    store to root_103 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with root_103
              #                    store to i_103 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_103
              #                    store to n_103 in mem offset legal
    sw      a3,56(sp)
              #                    release a3 with n_103
              #                    store to temp_134_cmp_110 in mem offset legal
    sb      a4,35(sp)
              #                    release a4 with temp_134_cmp_110
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_135_ret_of_getint_112 in mem offset legal
    sw      a0,28(sp)
              #                          new_var temp_136_ret_of_insert_112:i32 
              #                          temp_136_ret_of_insert_112 =  Call i32 insert_0(root_103, temp_135_ret_of_getint_112) 
              #                    saved register dumping to mem
              #                    store to temp_135_ret_of_getint_112 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_135_ret_of_getint_112
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_root_103_0
              #                    load from root_103 in mem


    lw      a0,40(sp)
              #                    occupy a1 with _anonymous_of_temp_135_ret_of_getint_112_0
              #                    load from temp_135_ret_of_getint_112 in mem


    lw      a1,28(sp)
              #                    arg load ended


    call    insert
              #                    store to temp_136_ret_of_insert_112 in mem offset legal
    sw      a0,24(sp)
              #                          new_var temp_137_arithop_112:i32 
              #                          temp_137_arithop_112 = Add i32 i_103, 1_0 
              #                    occupy a1 with i_103
              #                    load from i_103 in mem


    lw      a1,36(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_137_arithop_112
    add     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          i_103 = i32 temp_137_arithop_112 
              #                    occupy a3 with temp_137_arithop_112
              #                    occupy a1 with i_103
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_111 
              #                    store to temp_137_arithop_112 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_137_arithop_112
              #                    store to i_103 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with i_103
              #                    store to temp_136_ret_of_insert_112 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_136_ret_of_insert_112
              #                    occupy a1 with _anonymous_of_root_103_0
              #                    load from root_103 in mem


    lw      a1,40(sp)
              #                    occupy a2 with _anonymous_of_i_103_0
              #                    load from i_103 in mem


    lw      a2,36(sp)
              #                    occupy a0 with _anonymous_of_temp_133_ret_of_new_node_103_0
              #                    load from temp_133_ret_of_new_node_103 in mem


    lw      a0,44(sp)
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: temp_133_ret_of_new_node_103, tracked: true } |     a1:Freed { symidx: root_103, tracked: true } |     a2:Freed { symidx: i_103, tracked: true } |     a3:Freed { symidx: n_103, tracked: true } |     a4:Freed { symidx: temp_134_cmp_110, tracked: true } | 
              #                          label while.exit_111: 
.while.exit_111:
              #                           Call void inorder_0(root_103) 
              #                    saved register dumping to mem
              #                    store to temp_133_ret_of_new_node_103 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_133_ret_of_new_node_103
              #                    store to root_103 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with root_103
              #                    store to i_103 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_103
              #                    store to n_103 in mem offset legal
    sw      a3,56(sp)
              #                    release a3 with n_103
              #                    store to temp_134_cmp_110 in mem offset legal
    sb      a4,35(sp)
              #                    release a4 with temp_134_cmp_110
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_root_103_0
              #                    load from root_103 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    inorder
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          new_var temp_138_ret_of_getint_103:i32 
              #                          temp_138_ret_of_getint_103 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_138_ret_of_getint_103 in mem offset legal
    sw      a0,16(sp)
              #                          n_103 = i32 temp_138_ret_of_getint_103 
              #                    occupy a0 with temp_138_ret_of_getint_103
              #                    occupy a1 with n_103
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_103 = i32 0_0 
              #                    occupy a2 with i_103
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_120 
    j       .while.head_120
              #                    regtab     a0:Freed { symidx: temp_138_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } |     a2:Freed { symidx: i_103, tracked: true } | 
              #                          label while.head_120: 
.while.head_120:
              #                          new_var temp_139_cmp_119:i1 
              #                          temp_139_cmp_119 = icmp i32 Slt i_103, n_103 
              #                    occupy a2 with i_103
              #                    occupy a1 with n_103
              #                    occupy a3 with temp_139_cmp_119
    slt     a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_139_cmp_119, label while.body_120, label while.exit_120 
              #                    occupy a3 with temp_139_cmp_119
              #                    free a3
              #                    occupy a3 with temp_139_cmp_119
    bnez    a3, .while.body_120
              #                    free a3
    j       .while.exit_120
              #                    regtab     a0:Freed { symidx: temp_138_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } |     a2:Freed { symidx: i_103, tracked: true } |     a3:Freed { symidx: temp_139_cmp_119, tracked: true } | 
              #                          label while.body_120: 
.while.body_120:
              #                          new_var temp_140_ret_of_getint_121:i32 
              #                          temp_140_ret_of_getint_121 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_138_ret_of_getint_103 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_138_ret_of_getint_103
              #                    store to n_103 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with n_103
              #                    store to i_103 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_103
              #                    store to temp_139_cmp_119 in mem offset legal
    sb      a3,15(sp)
              #                    release a3 with temp_139_cmp_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_140_ret_of_getint_121 in mem offset legal
    sw      a0,8(sp)
              #                          new_var temp_141_ret_of_delete_121:i32 
              #                          temp_141_ret_of_delete_121 =  Call i32 delete_0(root_103, temp_140_ret_of_getint_121) 
              #                    saved register dumping to mem
              #                    store to temp_140_ret_of_getint_121 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_140_ret_of_getint_121
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_root_103_0
              #                    load from root_103 in mem


    lw      a0,40(sp)
              #                    occupy a1 with _anonymous_of_temp_140_ret_of_getint_121_0
              #                    load from temp_140_ret_of_getint_121 in mem


    lw      a1,8(sp)
              #                    arg load ended


    call    delete
              #                    store to temp_141_ret_of_delete_121 in mem offset legal
    sw      a0,4(sp)
              #                          root_103 = i32 temp_141_ret_of_delete_121 
              #                    occupy a0 with temp_141_ret_of_delete_121
              #                    occupy a1 with root_103
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_142_arithop_121:i32 
              #                          temp_142_arithop_121 = Add i32 i_103, 1_0 
              #                    occupy a2 with i_103
              #                    load from i_103 in mem


    lw      a2,36(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_142_arithop_121
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_103 = i32 temp_142_arithop_121 
              #                    occupy a4 with temp_142_arithop_121
              #                    occupy a2 with i_103
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_120 
              #                    store to root_103 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with root_103
              #                    store to temp_142_arithop_121 in mem offset legal
    sw      a4,0(sp)
              #                    release a4 with temp_142_arithop_121
              #                    store to temp_141_ret_of_delete_121 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_141_ret_of_delete_121
              #                    occupy a1 with _anonymous_of_n_103_0
              #                    load from n_103 in mem


    lw      a1,56(sp)
              #                    occupy a0 with _anonymous_of_temp_138_ret_of_getint_103_0
              #                    load from temp_138_ret_of_getint_103 in mem


    lw      a0,16(sp)
    j       .while.head_120
              #                    regtab     a0:Freed { symidx: temp_138_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } |     a2:Freed { symidx: i_103, tracked: true } |     a3:Freed { symidx: temp_139_cmp_119, tracked: true } | 
              #                          label while.exit_120: 
.while.exit_120:
              #                           Call void inorder_0(root_103) 
              #                    saved register dumping to mem
              #                    store to temp_138_ret_of_getint_103 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_138_ret_of_getint_103
              #                    store to n_103 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with n_103
              #                    store to i_103 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_103
              #                    store to temp_139_cmp_119 in mem offset legal
    sb      a3,15(sp)
              #                    release a3 with temp_139_cmp_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_root_103_0
              #                    load from root_103 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    inorder
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,72(sp)
              #                    load from s0_main_0 in mem
    ld      s0,64(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl now
              #                          global i32 now_0 
    .type now,@object
now:
    .word 0
    .align 4
    .globl right_child
              #                          global Array:i32:[Some(10000_0)] right_child_0 
    .type right_child,@object
right_child:
    .zero 40000
    .align 4
    .globl left_child
              #                          global Array:i32:[Some(10000_0)] left_child_0 
    .type left_child,@object
left_child:
    .zero 40000
    .align 4
    .globl value
              #                          global Array:i32:[Some(10000_0)] value_0 
    .type value,@object
value:
    .zero 40000
    .align 4
    .globl maxNode
              #                          global i32 maxNode_0 
    .type maxNode,@object
maxNode:
    .word 10000
    .align 4
    .globl LF
              #                          global i32 LF_0 
    .type LF,@object
LF:
    .word 10
    .align 4
    .globl space
              #                          global i32 space_0 
    .type space,@object
space:
    .word 32
