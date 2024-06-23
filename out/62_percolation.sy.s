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
              #                          Define init_0 [n_18] -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 48|s0_init:8 at 40|n:4 at 36|i:4 at 32|temp_0_arithop:4 at 28|temp_1_arithop:4 at 24|temp_2_cmp:1 at 23|none:7 at 16|temp_3_index_ptr:8 at 8|temp_4_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-56
              #                    store to ra_init_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc i32 i_20 
              #                          alloc i32 temp_0_arithop_22 
              #                          alloc i32 temp_1_arithop_22 
              #                          alloc i1 temp_2_cmp_22 
              #                          alloc ptr->i32 temp_3_index_ptr_24 
              #                          alloc i32 temp_4_arithop_24 
              #                    regtab     a0:Freed { symidx: n_18, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          i_20 = i32 1_0 
              #                    occupy a1 with i_20
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: n_18, tracked: true } |     a1:Freed { symidx: i_20, tracked: true } | 
              #                          label while.head_23: 
.while.head_23:
              #                          new_var temp_0_arithop_22:i32 
              #                          temp_0_arithop_22 = Mul i32 n_18, n_18 
              #                    occupy a0 with n_18
              #                    occupy a0 with n_18
              #                    occupy a2 with temp_0_arithop_22
    mul     a2,a0,a0
              #                    free a0
              #                    free a0
              #                    free a2
              #                          new_var temp_1_arithop_22:i32 
              #                          temp_1_arithop_22 = Add i32 temp_0_arithop_22, 1_0 
              #                    occupy a2 with temp_0_arithop_22
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_1_arithop_22
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_2_cmp_22:i1 
              #                          temp_2_cmp_22 = icmp i32 Sle i_20, temp_1_arithop_22 
              #                    occupy a1 with i_20
              #                    occupy a4 with temp_1_arithop_22
              #                    occupy a5 with temp_2_cmp_22
    slt     a5,a4,a1
    xori    a5,a5,1
              #                    free a1
              #                    free a4
              #                    free a5
              #                          br i1 temp_2_cmp_22, label while.body_23, label while.exit_23 
              #                    occupy a5 with temp_2_cmp_22
              #                    free a5
              #                    occupy a5 with temp_2_cmp_22
    bnez    a5, .while.body_23
              #                    free a5
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: n_18, tracked: true } |     a1:Freed { symidx: i_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a4:Freed { symidx: temp_1_arithop_22, tracked: true } |     a5:Freed { symidx: temp_2_cmp_22, tracked: true } | 
              #                          label while.body_23: 
.while.body_23:
              #                          new_var temp_3_index_ptr_24:ptr->i32 
              #                          temp_3_index_ptr_24 = getelementptr array_0:Array:i32:[Some(110_0)] [Some(i_20)] 
              #                    occupy a3 with temp_3_index_ptr_24
    li      a3, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a1 with i_20
              #                    occupy a7 with _anonymous_of_array_0_0
    mul     a7,a6,a1
              #                    free a6
              #                    free a1
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy s1 with _anonymous_of_array_0_0
    la      s1, array
    add     a3,a3,s1
              #                    free s1
              #                    free a3
              #                          store -1_0:i32 temp_3_index_ptr_24:ptr->i32 
              #                    occupy a3 with temp_3_index_ptr_24
              #                    occupy s2 with -1_0
    li      s2, -1
    sw      s2,0(a3)
              #                    free s2
              #                    free a3
              #                          mu array_0:41 
              #                          array_0 = chi array_0:41 
              #                          new_var temp_4_arithop_24:i32 
              #                          temp_4_arithop_24 = Add i32 i_20, 1_0 
              #                    occupy a1 with i_20
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s3 with temp_4_arithop_24
    add     s3,a1,a6
              #                    free a1
              #                    free a6
              #                    free s3
              #                          i_20 = i32 temp_4_arithop_24 
              #                    occupy s3 with temp_4_arithop_24
              #                    occupy a1 with i_20
    mv      a1, s3
              #                    free s3
              #                    free a1
              #                          jump label: while.head_23 
              #                    store to temp_3_index_ptr_24 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_3_index_ptr_24
              #                    store to temp_2_cmp_22 in mem offset legal
    sb      a5,23(sp)
              #                    release a5 with temp_2_cmp_22
              #                    store to temp_1_arithop_22 in mem offset legal
    sw      a4,24(sp)
              #                    release a4 with temp_1_arithop_22
              #                    store to temp_0_arithop_22 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_0_arithop_22
              #                    store to temp_4_arithop_24 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_4_arithop_24
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: n_18, tracked: true } |     a1:Freed { symidx: i_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a4:Freed { symidx: temp_1_arithop_22, tracked: true } |     a5:Freed { symidx: temp_2_cmp_22, tracked: true } | 
              #                          label while.exit_23: 
.while.exit_23:
              #                    regtab 
              #                          Define findfa_0 [a_27] -> findfa_ret_0 
    .globl findfa
    .type findfa,@function
findfa:
              #                    mem layout:|ra_findfa:8 at 1392|s0_findfa:8 at 1384|a:4 at 1380|temp_5_ptr2globl:440 at 940|none:4 at 936|temp_6_array_ptr:8 at 928|temp_7_array_ele:4 at 924|temp_8_cmp:1 at 923|none:3 at 920|temp_9_index_ptr:8 at 912|temp_10_ptr2globl:440 at 472|temp_11_array_ptr:8 at 464|temp_12_array_ele:4 at 460|temp_13_ret_of_findfa:4 at 456|temp_14_ptr2globl:440 at 16|temp_15_array_ptr:8 at 8|temp_16_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-1400
              #                    store to ra_findfa_0 in mem offset legal
    sd      ra,1392(sp)
              #                    store to s0_findfa_0 in mem offset legal
    sd      s0,1384(sp)
    addi    s0,sp,1400
              #                          alloc Array:i32:[Some(110_0)] temp_5_ptr2globl_30 
              #                          alloc ptr->i32 temp_6_array_ptr_30 
              #                          alloc i32 temp_7_array_ele_30 
              #                          alloc i1 temp_8_cmp_30 
              #                          alloc ptr->i32 temp_9_index_ptr_33 
              #                          alloc Array:i32:[Some(110_0)] temp_10_ptr2globl_33 
              #                          alloc ptr->i32 temp_11_array_ptr_33 
              #                          alloc i32 temp_12_array_ele_33 
              #                          alloc i32 temp_13_ret_of_findfa_33 
              #                          alloc Array:i32:[Some(110_0)] temp_14_ptr2globl_33 
              #                          alloc ptr->i32 temp_15_array_ptr_33 
              #                          alloc i32 temp_16_array_ele_33 
              #                    regtab     a0:Freed { symidx: a_27, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_5_ptr2globl_30:Array:i32:[Some(110_0)] 
              #                          temp_5_ptr2globl_30 = load *array_0:ptr->i32 
              #                    occupy a1 with *array_0
              #                       load label array as ptr to reg
    la      a1, array
              #                    occupy reg a1 with *array_0
              #                    occupy a2 with temp_5_ptr2globl_30
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_6_array_ptr_30:ptr->i32 
              #                          temp_6_array_ptr_30 = getelementptr temp_5_ptr2globl_30:Array:i32:[Some(110_0)] [Some(a_27)] 
              #                    occupy a3 with temp_6_array_ptr_30
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with a_27
              #                    occupy a5 with _anonymous_of_temp_5_ptr2globl_30_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,940
              #                    free a3
              #                          new_var temp_7_array_ele_30:i32 
              #                          temp_7_array_ele_30 = load temp_6_array_ptr_30:ptr->i32 
              #                    occupy a3 with temp_6_array_ptr_30
              #                    occupy a6 with temp_7_array_ele_30
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                          new_var temp_8_cmp_30:i1 
              #                          temp_8_cmp_30 = icmp i32 Eq temp_7_array_ele_30, a_27 
              #                    occupy a6 with temp_7_array_ele_30
              #                    occupy a0 with a_27
              #                    occupy a7 with temp_8_cmp_30
    xor     a7,a6,a0
    seqz    a7, a7
              #                    free a6
              #                    free a0
              #                    free a7
              #                          br i1 temp_8_cmp_30, label branch_true_31, label branch_false_31 
              #                    occupy a7 with temp_8_cmp_30
              #                    free a7
              #                    occupy a7 with temp_8_cmp_30
    bnez    a7, .branch_true_31
              #                    free a7
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: a_27, tracked: true } |     a2:Freed { symidx: temp_5_ptr2globl_30, tracked: true } |     a3:Freed { symidx: temp_6_array_ptr_30, tracked: true } |     a6:Freed { symidx: temp_7_array_ele_30, tracked: true } |     a7:Freed { symidx: temp_8_cmp_30, tracked: true } | 
              #                          label branch_true_31: 
.branch_true_31:
              #                          ret a_27 
              #                    load from ra_findfa_0 in mem
    ld      ra,1392(sp)
              #                    load from s0_findfa_0 in mem
    ld      s0,1384(sp)
              #                    store to a_27 in mem offset legal
    sw      a0,1380(sp)
              #                    release a0 with a_27
              #                    occupy a0 with a_27
              #                    load from a_27 in mem


    lw      a0,1380(sp)
    addi    sp,sp,1400
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_27, tracked: true } |     a2:Freed { symidx: temp_5_ptr2globl_30, tracked: true } |     a3:Freed { symidx: temp_6_array_ptr_30, tracked: true } |     a6:Freed { symidx: temp_7_array_ele_30, tracked: true } |     a7:Freed { symidx: temp_8_cmp_30, tracked: true } | 
              #                          label branch_false_31: 
.branch_false_31:
              #                          new_var temp_9_index_ptr_33:ptr->i32 
              #                          temp_9_index_ptr_33 = getelementptr array_0:Array:i32:[Some(110_0)] [Some(a_27)] 
              #                    occupy a1 with temp_9_index_ptr_33
    li      a1, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with a_27
              #                    occupy a5 with _anonymous_of_array_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
              #                    occupy s1 with _anonymous_of_array_0_0
    la      s1, array
    add     a1,a1,s1
              #                    free s1
              #                    free a1
              #                          new_var temp_10_ptr2globl_33:Array:i32:[Some(110_0)] 
              #                          temp_10_ptr2globl_33 = load *array_0:ptr->i32 
              #                    occupy s2 with *array_0
              #                       load label array as ptr to reg
    la      s2, array
              #                    occupy reg s2 with *array_0
              #                    occupy s3 with temp_10_ptr2globl_33
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_11_array_ptr_33:ptr->i32 
              #                          temp_11_array_ptr_33 = getelementptr temp_10_ptr2globl_33:Array:i32:[Some(110_0)] [Some(a_27)] 
              #                    occupy s4 with temp_11_array_ptr_33
    li      s4, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a0 with a_27
              #                    occupy s5 with _anonymous_of_temp_10_ptr2globl_33_0
    mul     s5,a4,a0
              #                    free a4
              #                    free a0
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,472
              #                    free s4
              #                          new_var temp_12_array_ele_33:i32 
              #                          temp_12_array_ele_33 = load temp_11_array_ptr_33:ptr->i32 
              #                    occupy s4 with temp_11_array_ptr_33
              #                    occupy s6 with temp_12_array_ele_33
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          new_var temp_13_ret_of_findfa_33:i32 
              #                          temp_13_ret_of_findfa_33 =  Call i32 findfa_0(temp_12_array_ele_33) 
              #                    saved register dumping to mem
              #                    store to temp_10_ptr2globl_33 in mem offset legal
    sw      s3,472(sp)
              #                    release s3 with temp_10_ptr2globl_33
              #                    store to temp_11_array_ptr_33 in mem offset legal
    sd      s4,464(sp)
              #                    release s4 with temp_11_array_ptr_33
              #                    store to temp_12_array_ele_33 in mem offset legal
    sw      s6,460(sp)
              #                    release s6 with temp_12_array_ele_33
              #                    store to a_27 in mem offset legal
    sw      a0,1380(sp)
              #                    release a0 with a_27
              #                    store to temp_9_index_ptr_33 in mem offset legal
    sd      a1,912(sp)
              #                    release a1 with temp_9_index_ptr_33
              #                    store to temp_5_ptr2globl_30 in mem offset legal
    sw      a2,940(sp)
              #                    release a2 with temp_5_ptr2globl_30
              #                    store to temp_6_array_ptr_30 in mem offset legal
    sd      a3,928(sp)
              #                    release a3 with temp_6_array_ptr_30
              #                    store to temp_7_array_ele_30 in mem offset legal
    sw      a6,924(sp)
              #                    release a6 with temp_7_array_ele_30
              #                    store to temp_8_cmp_30 in mem offset legal
    sb      a7,923(sp)
              #                    release a7 with temp_8_cmp_30
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_12_array_ele_33_0
              #                    load from temp_12_array_ele_33 in mem


    lw      a0,460(sp)
              #                    arg load ended


    call    findfa
              #                    store to temp_13_ret_of_findfa_33 in mem offset legal
    sw      a0,456(sp)
              #                          store temp_13_ret_of_findfa_33:i32 temp_9_index_ptr_33:ptr->i32 
              #                    occupy a1 with temp_9_index_ptr_33
              #                    load from temp_9_index_ptr_33 in mem
    ld      a1,912(sp)
              #                    occupy a0 with temp_13_ret_of_findfa_33
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu array_0:80 
              #                          array_0 = chi array_0:80 
              #                          new_var temp_14_ptr2globl_33:Array:i32:[Some(110_0)] 
              #                          temp_14_ptr2globl_33 = load *array_0:ptr->i32 
              #                    occupy a2 with *array_0
              #                       load label array as ptr to reg
    la      a2, array
              #                    occupy reg a2 with *array_0
              #                    occupy a3 with temp_14_ptr2globl_33
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_15_array_ptr_33:ptr->i32 
              #                          temp_15_array_ptr_33 = getelementptr temp_14_ptr2globl_33:Array:i32:[Some(110_0)] [Some(a_27)] 
              #                    occupy a4 with temp_15_array_ptr_33
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with a_27
              #                    load from a_27 in mem


    lw      a6,1380(sp)
              #                    occupy a7 with _anonymous_of_temp_14_ptr2globl_33_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,16
              #                    free a4
              #                          new_var temp_16_array_ele_33:i32 
              #                          temp_16_array_ele_33 = load temp_15_array_ptr_33:ptr->i32 
              #                    occupy a4 with temp_15_array_ptr_33
              #                    occupy s1 with temp_16_array_ele_33
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          ret temp_16_array_ele_33 
              #                    load from ra_findfa_0 in mem
    ld      ra,1392(sp)
              #                    load from s0_findfa_0 in mem
    ld      s0,1384(sp)
              #                    store to temp_16_array_ele_33 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_16_array_ele_33
              #                    store to temp_13_ret_of_findfa_33 in mem offset legal
    sw      a0,456(sp)
              #                    release a0 with temp_13_ret_of_findfa_33
              #                    occupy a0 with temp_16_array_ele_33
              #                    load from temp_16_array_ele_33 in mem


    lw      a0,4(sp)
    addi    sp,sp,1400
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_9_index_ptr_33, tracked: true } |     a3:Freed { symidx: temp_14_ptr2globl_33, tracked: true } |     a4:Freed { symidx: temp_15_array_ptr_33, tracked: true } |     a6:Freed { symidx: a_27, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                    regtab     a1:Freed { symidx: temp_9_index_ptr_33, tracked: true } |     a3:Freed { symidx: temp_14_ptr2globl_33, tracked: true } |     a4:Freed { symidx: temp_15_array_ptr_33, tracked: true } |     a6:Freed { symidx: a_27, tracked: true } | 
              #                    regtab 
              #                          Define mmerge_0 [a_36, b_36] -> mmerge_ret_0 
    .globl mmerge
    .type mmerge,@function
mmerge:
              #                    mem layout:|ra_mmerge:8 at 48|s0_mmerge:8 at 40|a:4 at 36|b:4 at 32|temp_17_ret_of_findfa:4 at 28|m:4 at 24|temp_18_ret_of_findfa:4 at 20|n:4 at 16|temp_19_cmp:1 at 15|none:7 at 8|temp_20_index_ptr:8 at 0
    addi    sp,sp,-56
              #                    store to ra_mmerge_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_mmerge_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc i32 temp_17_ret_of_findfa_38 
              #                          alloc i32 m_38 
              #                          alloc i32 temp_18_ret_of_findfa_38 
              #                          alloc i32 n_38 
              #                          alloc i1 temp_19_cmp_41 
              #                          alloc ptr->i32 temp_20_index_ptr_41 
              #                    regtab     a0:Freed { symidx: a_36, tracked: true } |     a1:Freed { symidx: b_36, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_17_ret_of_findfa_38:i32 
              #                          temp_17_ret_of_findfa_38 =  Call i32 findfa_0(a_36) 
              #                    saved register dumping to mem
              #                    store to a_36 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with a_36
              #                    store to b_36 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with b_36
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_36_0
              #                    load from a_36 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    findfa
              #                    store to temp_17_ret_of_findfa_38 in mem offset legal
    sw      a0,28(sp)
              #                          m_38 = i32 temp_17_ret_of_findfa_38 
              #                    occupy a0 with temp_17_ret_of_findfa_38
              #                    occupy a1 with m_38
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_18_ret_of_findfa_38:i32 
              #                          temp_18_ret_of_findfa_38 =  Call i32 findfa_0(b_36) 
              #                    saved register dumping to mem
              #                    store to temp_17_ret_of_findfa_38 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_17_ret_of_findfa_38
              #                    store to m_38 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with m_38
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_b_36_0
              #                    load from b_36 in mem


    lw      a0,32(sp)
              #                    arg load ended


    call    findfa
              #                    store to temp_18_ret_of_findfa_38 in mem offset legal
    sw      a0,20(sp)
              #                          n_38 = i32 temp_18_ret_of_findfa_38 
              #                    occupy a0 with temp_18_ret_of_findfa_38
              #                    occupy a1 with n_38
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: temp_18_ret_of_findfa_38, tracked: true } |     a1:Freed { symidx: n_38, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_19_cmp_41:i1 
              #                          temp_19_cmp_41 = icmp i32 Ne m_38, n_38 
              #                    occupy a2 with m_38
              #                    load from m_38 in mem


    lw      a2,24(sp)
              #                    occupy a1 with n_38
              #                    occupy a3 with temp_19_cmp_41
    xor     a3,a2,a1
    snez    a3, a3
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_19_cmp_41, label branch_true_42, label branch_false_42 
              #                    occupy a3 with temp_19_cmp_41
              #                    free a3
              #                    occupy a3 with temp_19_cmp_41
    bnez    a3, .branch_true_42
              #                    free a3
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: temp_18_ret_of_findfa_38, tracked: true } |     a1:Freed { symidx: n_38, tracked: true } |     a2:Freed { symidx: m_38, tracked: true } |     a3:Freed { symidx: temp_19_cmp_41, tracked: true } | 
              #                          label branch_true_42: 
.branch_true_42:
              #                          new_var temp_20_index_ptr_41:ptr->i32 
              #                          temp_20_index_ptr_41 = getelementptr array_0:Array:i32:[Some(110_0)] [Some(m_38)] 
              #                    occupy a4 with temp_20_index_ptr_41
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with m_38
              #                    occupy a6 with _anonymous_of_array_0_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with _anonymous_of_array_0_0
    la      a7, array
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store n_38:i32 temp_20_index_ptr_41:ptr->i32 
              #                    occupy a4 with temp_20_index_ptr_41
              #                    occupy a1 with n_38
    sw      a1,0(a4)
              #                    free a1
              #                    free a4
              #                          mu array_0:113 
              #                          array_0 = chi array_0:113 
              #                          jump label: branch_false_42 
              #                    store to temp_20_index_ptr_41 in mem offset legal
    sd      a4,0(sp)
              #                    release a4 with temp_20_index_ptr_41
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: temp_18_ret_of_findfa_38, tracked: true } |     a1:Freed { symidx: n_38, tracked: true } |     a2:Freed { symidx: m_38, tracked: true } |     a3:Freed { symidx: temp_19_cmp_41, tracked: true } | 
              #                          label branch_false_42: 
.branch_false_42:
              #                    regtab     a0:Freed { symidx: temp_18_ret_of_findfa_38, tracked: true } |     a1:Freed { symidx: n_38, tracked: true } |     a2:Freed { symidx: m_38, tracked: true } |     a3:Freed { symidx: temp_19_cmp_41, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 2984|s0_main:8 at 2976|t:4 at 2972|m:4 at 2968|a:4 at 2964|b:4 at 2960|temp_21_:1 at 2959|none:3 at 2956|temp_22_arithop:4 at 2952|i:4 at 2948|flag:4 at 2944|temp_23_ptr2globl:4 at 2940|temp_24_ptr2globl:4 at 2936|temp_25_ptr2globl:4 at 2932|temp_26_arithop:4 at 2928|temp_27_arithop:4 at 2924|k:4 at 2920|temp_28_cmp:1 at 2919|none:3 at 2916|temp_29_ret_of_getint:4 at 2912|temp_30_ret_of_getint:4 at 2908|temp_31_booltrans:1 at 2907|temp_32_logicnot:1 at 2906|none:2 at 2904|temp_33_arithop:4 at 2900|temp_34_ptr2globl:4 at 2896|temp_35_arithop:4 at 2892|temp_36_arithop:4 at 2888|loc:4 at 2884|none:4 at 2880|temp_37_index_ptr:8 at 2872|temp_38_cmp:1 at 2871|none:7 at 2864|temp_39_index_ptr:8 at 2856|temp_40_ptr2globl:4 at 2852|temp_41_cmp:1 at 2851|none:3 at 2848|temp_42_index_ptr:8 at 2840|temp_43_arithop:4 at 2836|temp_44_ptr2globl:440 at 2396|none:4 at 2392|temp_45_array_ptr:8 at 2384|temp_46_array_ele:4 at 2380|temp_47_cmp:1 at 2379|none:3 at 2376|temp_48_ptr2globl:4 at 2372|temp_49_cmp:1 at 2371|temp_50_logic:1 at 2370|none:2 at 2368|temp_51_arithop:4 at 2364|temp_52_arithop:4 at 2360|temp_53_ptr2globl:440 at 1920|temp_54_array_ptr:8 at 1912|temp_55_array_ele:4 at 1908|temp_56_cmp:1 at 1907|temp_57_cmp:1 at 1906|temp_58_logic:1 at 1905|none:1 at 1904|temp_59_arithop:4 at 1900|temp_60_ptr2globl:4 at 1896|temp_61_arithop:4 at 1892|temp_62_ptr2globl:440 at 1452|none:4 at 1448|temp_63_array_ptr:8 at 1440|temp_64_array_ele:4 at 1436|temp_65_cmp:1 at 1435|none:3 at 1432|temp_66_ptr2globl:4 at 1428|temp_67_cmp:1 at 1427|temp_68_logic:1 at 1426|none:2 at 1424|temp_69_ptr2globl:4 at 1420|temp_70_arithop:4 at 1416|temp_71_ptr2globl:4 at 1412|temp_72_arithop:4 at 1408|temp_73_ptr2globl:440 at 968|temp_74_array_ptr:8 at 960|temp_75_array_ele:4 at 956|temp_76_cmp:1 at 955|temp_77_cmp:1 at 954|temp_78_logic:1 at 953|none:1 at 952|temp_79_ptr2globl:4 at 948|temp_80_arithop:4 at 944|temp_81_ret_of_findfa:4 at 940|temp_82_ret_of_findfa:4 at 936|temp_83_cmp:1 at 935|none:3 at 932|temp_84_ptr2globl:440 at 492|none:4 at 488|temp_85_array_ptr:8 at 480|temp_86_array_ele:4 at 476|temp_87_cmp:1 at 475|temp_88_logic:1 at 474|none:2 at 472|temp_89_ptr2globl:440 at 32|temp_90_array_ptr:8 at 24|temp_91_array_ele:4 at 20|temp_92_cmp:1 at 19|temp_93_logic:1 at 18|none:2 at 16|temp_94_arithop:4 at 12|tmp:4 at 8|temp_95_arithop:4 at 4|temp_96_booltrans:1 at 3|temp_97_logicnot:1 at 2|none:2 at 0
              #                    occupy a0 with -2992_0
    li      a0, -2992
    li      a0, -2992
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 2984_0
    li      a1, 2984
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 2976_0
    li      a2, 2976
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 2992_0
    li      a3, 2992
    li      a3, 2992
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 t_45 
              #                          alloc i32 m_45 
              #                          alloc i32 a_45 
              #                          alloc i32 b_45 
              #                          alloc i1 temp_21__800 
              #                          alloc i32 temp_22_arithop_51 
              #                          alloc i32 i_51 
              #                          alloc i32 flag_51 
              #                          alloc i32 temp_23_ptr2globl_51 
              #                          alloc i32 temp_24_ptr2globl_51 
              #                          alloc i32 temp_25_ptr2globl_51 
              #                          alloc i32 temp_26_arithop_51 
              #                          alloc i32 temp_27_arithop_51 
              #                          alloc i32 k_51 
              #                          alloc i1 temp_28_cmp_59 
              #                          alloc i32 temp_29_ret_of_getint_61 
              #                          alloc i32 temp_30_ret_of_getint_61 
              #                          alloc i1 temp_31_booltrans_64 
              #                          alloc i1 temp_32_logicnot_64 
              #                          alloc i32 temp_33_arithop_66 
              #                          alloc i32 temp_34_ptr2globl_66 
              #                          alloc i32 temp_35_arithop_66 
              #                          alloc i32 temp_36_arithop_66 
              #                          alloc i32 loc_66 
              #                          alloc ptr->i32 temp_37_index_ptr_66 
              #                          alloc i1 temp_38_cmp_69 
              #                          alloc ptr->i32 temp_39_index_ptr_71 
              #                          alloc i32 temp_40_ptr2globl_74 
              #                          alloc i1 temp_41_cmp_74 
              #                          alloc ptr->i32 temp_42_index_ptr_76 
              #                          alloc i32 temp_43_arithop_79 
              #                          alloc Array:i32:[Some(110_0)] temp_44_ptr2globl_79 
              #                          alloc ptr->i32 temp_45_array_ptr_79 
              #                          alloc i32 temp_46_array_ele_79 
              #                          alloc i1 temp_47_cmp_79 
              #                          alloc i32 temp_48_ptr2globl_79 
              #                          alloc i1 temp_49_cmp_79 
              #                          alloc i1 temp_50_logic_79 
              #                          alloc i32 temp_51_arithop_81 
              #                          alloc i32 temp_52_arithop_83 
              #                          alloc Array:i32:[Some(110_0)] temp_53_ptr2globl_83 
              #                          alloc ptr->i32 temp_54_array_ptr_83 
              #                          alloc i32 temp_55_array_ele_83 
              #                          alloc i1 temp_56_cmp_83 
              #                          alloc i1 temp_57_cmp_83 
              #                          alloc i1 temp_58_logic_83 
              #                          alloc i32 temp_59_arithop_85 
              #                          alloc i32 temp_60_ptr2globl_87 
              #                          alloc i32 temp_61_arithop_87 
              #                          alloc Array:i32:[Some(110_0)] temp_62_ptr2globl_87 
              #                          alloc ptr->i32 temp_63_array_ptr_87 
              #                          alloc i32 temp_64_array_ele_87 
              #                          alloc i1 temp_65_cmp_87 
              #                          alloc i32 temp_66_ptr2globl_87 
              #                          alloc i1 temp_67_cmp_87 
              #                          alloc i1 temp_68_logic_87 
              #                          alloc i32 temp_69_ptr2globl_89 
              #                          alloc i32 temp_70_arithop_89 
              #                          alloc i32 temp_71_ptr2globl_91 
              #                          alloc i32 temp_72_arithop_91 
              #                          alloc Array:i32:[Some(110_0)] temp_73_ptr2globl_91 
              #                          alloc ptr->i32 temp_74_array_ptr_91 
              #                          alloc i32 temp_75_array_ele_91 
              #                          alloc i1 temp_76_cmp_91 
              #                          alloc i1 temp_77_cmp_91 
              #                          alloc i1 temp_78_logic_91 
              #                          alloc i32 temp_79_ptr2globl_93 
              #                          alloc i32 temp_80_arithop_93 
              #                          alloc i32 temp_81_ret_of_findfa_95 
              #                          alloc i32 temp_82_ret_of_findfa_95 
              #                          alloc i1 temp_83_cmp_95 
              #                          alloc Array:i32:[Some(110_0)] temp_84_ptr2globl_95 
              #                          alloc ptr->i32 temp_85_array_ptr_95 
              #                          alloc i32 temp_86_array_ele_95 
              #                          alloc i1 temp_87_cmp_95 
              #                          alloc i1 temp_88_logic_95 
              #                          alloc Array:i32:[Some(110_0)] temp_89_ptr2globl_95 
              #                          alloc ptr->i32 temp_90_array_ptr_95 
              #                          alloc i32 temp_91_array_ele_95 
              #                          alloc i1 temp_92_cmp_95 
              #                          alloc i1 temp_93_logic_95 
              #                          alloc i32 temp_94_arithop_97 
              #                          alloc i32 tmp_97 
              #                          alloc i32 temp_95_arithop_61 
              #                          alloc i1 temp_96_booltrans_103 
              #                          alloc i1 temp_97_logicnot_103 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var t_45:i32 
              #                          new_var m_45:i32 
              #                          new_var a_45:i32 
              #                          new_var b_45:i32 
              #                          t_45 = i32 1_0 
              #                    occupy a0 with t_45
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_50 
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: t_45, tracked: true } | 
              #                          label while.head_50: 
.while.head_50:
              #                          new_var temp_21__800:i1 
              #                          temp_21__800 = icmp i32 Ne t_45, 0_0 
              #                    occupy a0 with t_45
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_21__800
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_21__800, label while.body_50, label while.exit_50 
              #                    occupy a2 with temp_21__800
              #                    free a2
              #                    occupy a2 with temp_21__800
    bnez    a2, .while.body_50
              #                    free a2
    j       .while.exit_50
              #                    regtab     a0:Freed { symidx: t_45, tracked: true } |     a2:Freed { symidx: temp_21__800, tracked: true } | 
              #                          label while.body_50: 
.while.body_50:
              #                          new_var temp_22_arithop_51:i32 
              #                          temp_22_arithop_51 = Sub i32 t_45, 1_0 
              #                    occupy a0 with t_45
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_22_arithop_51
              #                    regtab:    a0:Occupied { symidx: t_45, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_21__800, tracked: true } |     a3:Occupied { symidx: temp_22_arithop_51, tracked: true, occupy_count: 1 } | 


    sub     a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                          t_45 = i32 temp_22_arithop_51 
              #                    occupy a3 with temp_22_arithop_51
              #                    occupy a0 with t_45
    mv      a0, a3
              #                    free a3
              #                    free a0
              #                          store 4_0:i32 *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    occupy a5 with 4_0
    li      a5, 4
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          m_45 = i32 10_0 
              #                    occupy a6 with m_45
    li      a6, 10
              #                    free a6
              #                          i_51 = i32 0_0 
              #                    occupy a7 with i_51
    li      a7, 0
              #                    free a7
              #                          flag_51 = i32 0_0 
              #                    occupy s1 with flag_51
    li      s1, 0
              #                    free s1
              #                          new_var temp_23_ptr2globl_51:i32 
              #                          temp_23_ptr2globl_51 = load *n_0:ptr->i32 
              #                    occupy s2 with *n_0
              #                       load label n as ptr to reg
    la      s2, n
              #                    occupy reg s2 with *n_0
              #                    occupy s3 with temp_23_ptr2globl_51
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                           Call void init_0(temp_23_ptr2globl_51) 
              #                    saved register dumping to mem
              #                    store to flag_51 in mem offset_illegal
              #                    occupy s1 with 2944_0
    li      s1, 2944
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with flag_51
              #                    store to temp_23_ptr2globl_51 in mem offset_illegal
              #                    occupy s1 with 2940_0
    li      s1, 2940
    add     s1,sp,s1
    sw      s3,0(s1)
              #                    free s1
              #                    release s3 with temp_23_ptr2globl_51
              #                    store to t_45 in mem offset_illegal
              #                    occupy a0 with 2972_0
    li      a0, 2972
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with t_45
              #                    store to temp_21__800 in mem offset_illegal
              #                    occupy a0 with 2959_0
    li      a0, 2959
    add     a0,sp,a0
    sb      a2,0(a0)
              #                    free a0
              #                    release a2 with temp_21__800
              #                    store to temp_22_arithop_51 in mem offset_illegal
              #                    occupy a1 with 2952_0
    li      a1, 2952
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_22_arithop_51
              #                    store to m_45 in mem offset_illegal
              #                    occupy a2 with 2968_0
    li      a2, 2968
    add     a2,sp,a2
    sw      a6,0(a2)
              #                    free a2
              #                    release a6 with m_45
              #                    store to i_51 in mem offset_illegal
              #                    occupy a3 with 2948_0
    li      a3, 2948
    add     a3,sp,a3
    sw      a7,0(a3)
              #                    free a3
              #                    release a7 with i_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_23_ptr2globl_51_0
              #                    load from temp_23_ptr2globl_51 in mem

              #                    occupy a4 with temp_23_ptr2globl_51
    li      a4, 2940
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    arg load ended


    call    init
              #                          new_var temp_24_ptr2globl_51:i32 
              #                          temp_24_ptr2globl_51 = load *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a5 with temp_24_ptr2globl_51
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                          new_var temp_25_ptr2globl_51:i32 
              #                          temp_25_ptr2globl_51 = load *n_0:ptr->i32 
              #                    occupy a6 with *n_0
              #                       load label n as ptr to reg
    la      a6, n
              #                    occupy reg a6 with *n_0
              #                    occupy a7 with temp_25_ptr2globl_51
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_26_arithop_51:i32 
              #                          temp_26_arithop_51 = Mul i32 temp_25_ptr2globl_51, temp_24_ptr2globl_51 
              #                    occupy a7 with temp_25_ptr2globl_51
              #                    occupy a5 with temp_24_ptr2globl_51
              #                    occupy s2 with temp_26_arithop_51
    mul     s2,a7,a5
              #                    free a7
              #                    free a5
              #                    free s2
              #                          new_var temp_27_arithop_51:i32 
              #                          temp_27_arithop_51 = Add i32 temp_26_arithop_51, 1_0 
              #                    occupy s2 with temp_26_arithop_51
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_27_arithop_51
    add     s4,s2,s3
              #                    free s2
              #                    free s3
              #                    free s4
              #                          k_51 = i32 temp_27_arithop_51 
              #                    occupy s4 with temp_27_arithop_51
              #                    occupy s5 with k_51
    mv      s5, s4
              #                    free s4
              #                    free s5
              #                          jump label: while.head_60 
    j       .while.head_60
              #                    regtab     a4:Freed { symidx: temp_23_ptr2globl_51, tracked: true } |     a5:Freed { symidx: temp_24_ptr2globl_51, tracked: true } |     a7:Freed { symidx: temp_25_ptr2globl_51, tracked: true } |     s2:Freed { symidx: temp_26_arithop_51, tracked: true } |     s4:Freed { symidx: temp_27_arithop_51, tracked: true } |     s5:Freed { symidx: k_51, tracked: true } | 
              #                          label while.head_60: 
.while.head_60:
              #                          new_var temp_28_cmp_59:i1 
              #                          temp_28_cmp_59 = icmp i32 Slt i_51, m_45 
              #                    occupy a0 with i_51
              #                    load from i_51 in mem

              #                    occupy a0 with i_51
    add     a0,sp,a0
    lw      a0,0(a0)
              #                    free a0
              #                    occupy a1 with m_45
              #                    load from m_45 in mem

              #                    occupy a1 with m_45
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    occupy a2 with temp_28_cmp_59
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_28_cmp_59, label while.body_60, label while.exit_60 
              #                    occupy a2 with temp_28_cmp_59
              #                    free a2
              #                    occupy a2 with temp_28_cmp_59
    bnez    a2, .while.body_60
              #                    free a2
    j       .while.exit_60
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a1:Freed { symidx: m_45, tracked: true } |     a2:Freed { symidx: temp_28_cmp_59, tracked: true } |     a4:Freed { symidx: temp_23_ptr2globl_51, tracked: true } |     a5:Freed { symidx: temp_24_ptr2globl_51, tracked: true } |     a7:Freed { symidx: temp_25_ptr2globl_51, tracked: true } |     s2:Freed { symidx: temp_26_arithop_51, tracked: true } |     s4:Freed { symidx: temp_27_arithop_51, tracked: true } |     s5:Freed { symidx: k_51, tracked: true } | 
              #                          label while.body_60: 
.while.body_60:
              #                          new_var temp_29_ret_of_getint_61:i32 
              #                          temp_29_ret_of_getint_61 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_26_arithop_51 in mem offset_illegal
              #                    occupy a3 with 2928_0
    li      a3, 2928
    add     a3,sp,a3
    sw      s2,0(a3)
              #                    free a3
              #                    release s2 with temp_26_arithop_51
              #                    store to temp_27_arithop_51 in mem offset_illegal
              #                    occupy a6 with 2924_0
    li      a6, 2924
    add     a6,sp,a6
    sw      s4,0(a6)
              #                    free a6
              #                    release s4 with temp_27_arithop_51
              #                    store to k_51 in mem offset_illegal
              #                    occupy s1 with 2920_0
    li      s1, 2920
    add     s1,sp,s1
    sw      s5,0(s1)
              #                    free s1
              #                    release s5 with k_51
              #                    store to i_51 in mem offset_illegal
              #                    occupy a0 with 2948_0
    li      a0, 2948
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_51
              #                    store to m_45 in mem offset_illegal
              #                    occupy a0 with 2968_0
    li      a0, 2968
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with m_45
              #                    store to temp_28_cmp_59 in mem offset_illegal
              #                    occupy a1 with 2919_0
    li      a1, 2919
    add     a1,sp,a1
    sb      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_28_cmp_59
              #                    store to temp_23_ptr2globl_51 in mem offset_illegal
              #                    occupy a2 with 2940_0
    li      a2, 2940
    add     a2,sp,a2
    sw      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_23_ptr2globl_51
              #                    store to temp_24_ptr2globl_51 in mem offset_illegal
              #                    occupy a3 with 2936_0
    li      a3, 2936
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_24_ptr2globl_51
              #                    store to temp_25_ptr2globl_51 in mem offset_illegal
              #                    occupy a4 with 2932_0
    li      a4, 2932
    add     a4,sp,a4
    sw      a7,0(a4)
              #                    free a4
              #                    release a7 with temp_25_ptr2globl_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_29_ret_of_getint_61 in mem offset_illegal
              #                    occupy a0 with 2912_0
    li      a0, 2912
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          a_45 = i32 temp_29_ret_of_getint_61 
              #                    occupy a0 with temp_29_ret_of_getint_61
              #                    occupy a5 with a_45
    mv      a5, a0
              #                    free a0
              #                    free a5
              #                          new_var temp_30_ret_of_getint_61:i32 
              #                          temp_30_ret_of_getint_61 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_29_ret_of_getint_61 in mem offset_illegal
              #                    occupy a0 with 2912_0
    li      a0, 2912
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_29_ret_of_getint_61
              #                    store to a_45 in mem offset_illegal
              #                    occupy a0 with 2964_0
    li      a0, 2964
    add     a0,sp,a0
    sw      a5,0(a0)
              #                    free a0
              #                    release a5 with a_45
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_30_ret_of_getint_61 in mem offset_illegal
              #                    occupy a0 with 2908_0
    li      a0, 2908
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          b_45 = i32 temp_30_ret_of_getint_61 
              #                    occupy a0 with temp_30_ret_of_getint_61
              #                    occupy a1 with b_45
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_31_booltrans_64:i1 
              #                          temp_31_booltrans_64 = icmp i1 Ne flag_51, 0_0 
              #                    occupy a2 with flag_51
              #                    load from flag_51 in mem

              #                    occupy a2 with flag_51
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_31_booltrans_64
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_32_logicnot_64:i1 
              #                          temp_32_logicnot_64 = xor i1 temp_31_booltrans_64, true 
              #                    occupy a4 with temp_31_booltrans_64
              #                    occupy a5 with temp_32_logicnot_64
    seqz    a5, a4
              #                    free a4
              #                    free a5
              #                          br i1 temp_32_logicnot_64, label branch_true_65, label branch_false_65 
              #                    occupy a5 with temp_32_logicnot_64
              #                    free a5
              #                    occupy a5 with temp_32_logicnot_64
    bnez    a5, .branch_true_65
              #                    free a5
    j       .branch_false_65
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a4:Freed { symidx: temp_31_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } | 
              #                          label branch_true_65: 
.branch_true_65:
              #                          new_var temp_33_arithop_66:i32 
              #                          temp_33_arithop_66 = Sub i32 a_45, 1_0 
              #                    occupy a3 with a_45
              #                    load from a_45 in mem

              #                    occupy a3 with a_45
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_33_arithop_66
              #                    regtab:    a0:Freed { symidx: temp_30_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Occupied { symidx: a_45, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_31_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Occupied { symidx: temp_33_arithop_66, tracked: true, occupy_count: 1 } | 


    sub     a7,a3,a6
              #                    free a3
              #                    free a6
              #                    free a7
              #                          new_var temp_34_ptr2globl_66:i32 
              #                          temp_34_ptr2globl_66 = load *n_0:ptr->i32 
              #                    occupy s1 with *n_0
              #                       load label n as ptr to reg
    la      s1, n
              #                    occupy reg s1 with *n_0
              #                    occupy s2 with temp_34_ptr2globl_66
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_35_arithop_66:i32 
              #                          temp_35_arithop_66 = Mul i32 temp_34_ptr2globl_66, temp_33_arithop_66 
              #                    occupy s2 with temp_34_ptr2globl_66
              #                    occupy a7 with temp_33_arithop_66
              #                    occupy s3 with temp_35_arithop_66
    mul     s3,s2,a7
              #                    free s2
              #                    free a7
              #                    free s3
              #                          new_var temp_36_arithop_66:i32 
              #                          temp_36_arithop_66 = Add i32 temp_35_arithop_66, b_45 
              #                    occupy s3 with temp_35_arithop_66
              #                    occupy a1 with b_45
              #                    occupy s4 with temp_36_arithop_66
    add     s4,s3,a1
              #                    free s3
              #                    free a1
              #                    free s4
              #                          loc_66 = i32 temp_36_arithop_66 
              #                    occupy s4 with temp_36_arithop_66
              #                    occupy s5 with loc_66
    mv      s5, s4
              #                    free s4
              #                    free s5
              #                          new_var temp_37_index_ptr_66:ptr->i32 
              #                          temp_37_index_ptr_66 = getelementptr array_0:Array:i32:[Some(110_0)] [Some(loc_66)] 
              #                    occupy s6 with temp_37_index_ptr_66
    li      s6, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s5 with loc_66
              #                    occupy s7 with _anonymous_of_array_0_0
    mul     s7,a6,s5
              #                    free a6
              #                    free s5
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s8 with _anonymous_of_array_0_0
    la      s8, array
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          store loc_66:i32 temp_37_index_ptr_66:ptr->i32 
              #                    occupy s6 with temp_37_index_ptr_66
              #                    occupy s5 with loc_66
    sw      s5,0(s6)
              #                    free s5
              #                    free s6
              #                          mu array_0:203 
              #                          array_0 = chi array_0:203 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_31_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_38_cmp_69:i1 
              #                          temp_38_cmp_69 = icmp i32 Eq a_45, 1_0 
              #                    occupy a3 with a_45
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with temp_38_cmp_69
    xor     s1,a3,a6
    seqz    s1, s1
              #                    free a3
              #                    free a6
              #                    free s1
              #                          br i1 temp_38_cmp_69, label branch_true_70, label branch_false_70 
              #                    occupy s1 with temp_38_cmp_69
              #                    free s1
              #                    occupy s1 with temp_38_cmp_69
    bnez    s1, .branch_true_70
              #                    free s1
    j       .branch_false_70
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_31_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } | 
              #                          label branch_true_70: 
.branch_true_70:
              #                          new_var temp_39_index_ptr_71:ptr->i32 
              #                          temp_39_index_ptr_71 = getelementptr array_0:Array:i32:[Some(110_0)] [Some(0_0)] 
              #                    occupy a6 with temp_39_index_ptr_71
    li      a6, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    occupy s9 with _anonymous_of_array_0_0
    mul     s9,s7,s8
              #                    free s7
              #                    free s8
    add     a6,a6,s9
              #                    free s9
    slli a6,a6,2
              #                    occupy s10 with _anonymous_of_array_0_0
    la      s10, array
    add     a6,a6,s10
              #                    free s10
              #                    free a6
              #                          store 0_0:i32 temp_39_index_ptr_71:ptr->i32 
              #                    occupy a6 with temp_39_index_ptr_71
              #                    found literal reg Some(s8) already exist with 0_0
              #                    occupy s8 with 0_0
    sw      s8,0(a6)
              #                    free s8
              #                    free a6
              #                          mu array_0:215 
              #                          array_0 = chi array_0:215 
              #                           Call void mmerge_0(loc_66, 0_0) 
              #                    saved register dumping to mem
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy s1 with 2871_0
    li      s1, 2871
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_38_cmp_69
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy s1 with 2896_0
    li      s1, 2896
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_34_ptr2globl_66
              #                    store to temp_35_arithop_66 in mem offset_illegal
              #                    occupy s2 with 2892_0
    li      s2, 2892
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_35_arithop_66
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy s3 with 2888_0
    li      s3, 2888
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_36_arithop_66
              #                    store to loc_66 in mem offset_illegal
              #                    occupy s4 with 2884_0
    li      s4, 2884
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with loc_66
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s5 with 2872_0
    li      s5, 2872
    add     s5,sp,s5
    sd      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_37_index_ptr_66
              #                    store to temp_30_ret_of_getint_61 in mem offset_illegal
              #                    occupy a0 with 2908_0
    li      a0, 2908
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_30_ret_of_getint_61
              #                    store to b_45 in mem offset_illegal
              #                    occupy a0 with 2960_0
    li      a0, 2960
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with b_45
              #                    store to flag_51 in mem offset_illegal
              #                    occupy a1 with 2944_0
    li      a1, 2944
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with flag_51
              #                    store to a_45 in mem offset_illegal
              #                    occupy a2 with 2964_0
    li      a2, 2964
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with a_45
              #                    store to temp_31_booltrans_64 in mem offset_illegal
              #                    occupy a3 with 2907_0
    li      a3, 2907
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_31_booltrans_64
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy a4 with 2906_0
    li      a4, 2906
    add     a4,sp,a4
    sb      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_32_logicnot_64
              #                    store to temp_39_index_ptr_71 in mem offset_illegal
              #                    occupy a5 with 2856_0
    li      a5, 2856
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_39_index_ptr_71
              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy a6 with 2900_0
    li      a6, 2900
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_33_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem

              #                    occupy a7 with loc_66
    li      a7, 2884
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    arg load ended


    call    mmerge
              #                          jump label: branch_false_70 
              #                    store to loc_66 in mem offset_illegal
              #                    occupy a0 with 2884_0
    li      a0, 2884
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with loc_66
              #                    occupy a4 with _anonymous_of_temp_31_booltrans_64_0
              #                    load from temp_31_booltrans_64 in mem
              #                    occupy a1 with temp_31_booltrans_64
    li      a1, 2907
    add     a1,sp,a1
    lb      a4,0(a1)
              #                    free a1
              #                    occupy a2 with _anonymous_of_flag_51_0
              #                    load from flag_51 in mem

              #                    occupy a3 with flag_51
    li      a3, 2944
    add     a3,sp,a3
    lw      a2,0(a3)
              #                    free a3
              #                    occupy s4 with _anonymous_of_temp_36_arithop_66_0
              #                    load from temp_36_arithop_66 in mem

              #                    occupy a5 with temp_36_arithop_66
    li      a5, 2888
    add     a5,sp,a5
    lw      s4,0(a5)
              #                    free a5
              #                    occupy a0 with _anonymous_of_temp_30_ret_of_getint_61_0
              #                    load from temp_30_ret_of_getint_61 in mem

              #                    occupy a6 with temp_30_ret_of_getint_61
    li      a6, 2908
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    store to temp_30_ret_of_getint_61 in mem offset_illegal
              #                    occupy a6 with 2908_0
    li      a6, 2908
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_30_ret_of_getint_61
              #                    store to flag_51 in mem offset_illegal
              #                    occupy a3 with 2944_0
    li      a3, 2944
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with flag_51
              #                    occupy a3 with _anonymous_of_a_45_0
              #                    load from a_45 in mem

              #                    occupy a6 with a_45
    li      a6, 2964
    add     a6,sp,a6
    lw      a3,0(a6)
              #                    free a6
              #                    occupy s2 with _anonymous_of_temp_34_ptr2globl_66_0
              #                    load from temp_34_ptr2globl_66 in mem

              #                    occupy a7 with temp_34_ptr2globl_66
    li      a7, 2896
    add     a7,sp,a7
    lw      s2,0(a7)
              #                    free a7
              #                    occupy s6 with _anonymous_of_temp_37_index_ptr_66_0
              #                    load from temp_37_index_ptr_66 in mem
              #                    occupy s1 with temp_37_index_ptr_66
    li      s1, 2872
    add     s1,sp,s1
    ld      s6,0(s1)
              #                    free s1
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy a5 with 2888_0
    li      a5, 2888
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_36_arithop_66
              #                    occupy a5 with _anonymous_of_temp_32_logicnot_64_0
              #                    load from temp_32_logicnot_64 in mem
              #                    occupy s3 with temp_32_logicnot_64
    li      s3, 2906
    add     s3,sp,s3
    lb      a5,0(s3)
              #                    free s3
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s1 with 2872_0
    li      s1, 2872
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_37_index_ptr_66
              #                    occupy s1 with _anonymous_of_temp_38_cmp_69_0
              #                    load from temp_38_cmp_69 in mem
              #                    occupy s5 with temp_38_cmp_69
    li      s5, 2871
    add     s5,sp,s5
    lb      s1,0(s5)
              #                    free s5
              #                    store to temp_31_booltrans_64 in mem offset_illegal
              #                    occupy a1 with 2907_0
    li      a1, 2907
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_31_booltrans_64
              #                    occupy a1 with _anonymous_of_b_45_0
              #                    load from b_45 in mem

              #                    occupy s7 with b_45
    li      s7, 2960
    add     s7,sp,s7
    lw      a1,0(s7)
              #                    free s7
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy a7 with 2896_0
    li      a7, 2896
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_34_ptr2globl_66
              #                    occupy a7 with _anonymous_of_temp_33_arithop_66_0
              #                    load from temp_33_arithop_66 in mem

              #                    occupy s8 with temp_33_arithop_66
    li      s8, 2900
    add     s8,sp,s8
    lw      a7,0(s8)
              #                    free s8
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy s3 with 2906_0
    li      s3, 2906
    add     s3,sp,s3
    sb      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_32_logicnot_64
              #                    occupy s3 with _anonymous_of_temp_35_arithop_66_0
              #                    load from temp_35_arithop_66 in mem

              #                    occupy s9 with temp_35_arithop_66
    li      s9, 2892
    add     s9,sp,s9
    lw      s3,0(s9)
              #                    free s9
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy s5 with 2871_0
    li      s5, 2871
    add     s5,sp,s5
    sb      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_38_cmp_69
              #                    occupy s5 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem

              #                    occupy s10 with loc_66
    li      s10, 2884
    add     s10,sp,s10
    lw      s5,0(s10)
              #                    free s10
              #                    store to temp_35_arithop_66 in mem offset_illegal
              #                    occupy s9 with 2892_0
    li      s9, 2892
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_35_arithop_66
              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy s8 with 2900_0
    li      s8, 2900
    add     s8,sp,s8
    sw      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_33_arithop_66
    j       .branch_false_70
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_31_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } | 
              #                          label branch_false_70: 
.branch_false_70:
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_31_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_40_ptr2globl_74:i32 
              #                          temp_40_ptr2globl_74 = load *n_0:ptr->i32 
              #                    occupy a6 with *n_0
              #                       load label n as ptr to reg
    la      a6, n
              #                    occupy reg a6 with *n_0
              #                    occupy s7 with temp_40_ptr2globl_74
    lw      s7,0(a6)
              #                    free s7
              #                    free a6
              #                          new_var temp_41_cmp_74:i1 
              #                          temp_41_cmp_74 = icmp i32 Eq a_45, temp_40_ptr2globl_74 
              #                    occupy a3 with a_45
              #                    occupy s7 with temp_40_ptr2globl_74
              #                    occupy s8 with temp_41_cmp_74
    xor     s8,a3,s7
    seqz    s8, s8
              #                    free a3
              #                    free s7
              #                    free s8
              #                          br i1 temp_41_cmp_74, label branch_true_75, label branch_false_75 
              #                    occupy s8 with temp_41_cmp_74
              #                    free s8
              #                    occupy s8 with temp_41_cmp_74
    bnez    s8, .branch_true_75
              #                    free s8
    j       .branch_false_75
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_31_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } | 
              #                          label branch_true_75: 
.branch_true_75:
              #                          new_var temp_42_index_ptr_76:ptr->i32 
              #                          temp_42_index_ptr_76 = getelementptr array_0:Array:i32:[Some(110_0)] [Some(k_51)] 
              #                    occupy a6 with temp_42_index_ptr_76
    li      a6, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with k_51
              #                    load from k_51 in mem

              #                    occupy s10 with k_51
    add     s10,sp,s10
    lw      s10,0(s10)
              #                    free s10
              #                    occupy s11 with _anonymous_of_array_0_0
    mul     s11,s9,s10
              #                    free s9
              #                    free s10
    add     a6,a6,s11
              #                    free s11
    slli a6,a6,2
              #                    occupy s9 with _anonymous_of_array_0_0
    la      s9, array
    add     a6,a6,s9
              #                    free s9
              #                    free a6
              #                          store k_51:i32 temp_42_index_ptr_76:ptr->i32 
              #                    occupy a6 with temp_42_index_ptr_76
              #                    occupy s10 with k_51
    sw      s10,0(a6)
              #                    free s10
              #                    free a6
              #                          mu array_0:231 
              #                          array_0 = chi array_0:231 
              #                           Call void mmerge_0(loc_66, k_51) 
              #                    saved register dumping to mem
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy s1 with 2871_0
    li      s1, 2871
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_38_cmp_69
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy s1 with 2896_0
    li      s1, 2896
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_34_ptr2globl_66
              #                    store to temp_35_arithop_66 in mem offset_illegal
              #                    occupy s2 with 2892_0
    li      s2, 2892
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_35_arithop_66
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy s3 with 2888_0
    li      s3, 2888
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_36_arithop_66
              #                    store to loc_66 in mem offset_illegal
              #                    occupy s4 with 2884_0
    li      s4, 2884
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with loc_66
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s5 with 2872_0
    li      s5, 2872
    add     s5,sp,s5
    sd      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_37_index_ptr_66
              #                    store to temp_40_ptr2globl_74 in mem offset_illegal
              #                    occupy s6 with 2852_0
    li      s6, 2852
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_40_ptr2globl_74
              #                    store to temp_41_cmp_74 in mem offset_illegal
              #                    occupy s7 with 2851_0
    li      s7, 2851
    add     s7,sp,s7
    sb      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_41_cmp_74
              #                    store to k_51 in mem offset_illegal
              #                    occupy s8 with 2920_0
    li      s8, 2920
    add     s8,sp,s8
    sw      s10,0(s8)
              #                    free s8
              #                    release s10 with k_51
              #                    store to temp_30_ret_of_getint_61 in mem offset_illegal
              #                    occupy a0 with 2908_0
    li      a0, 2908
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_30_ret_of_getint_61
              #                    store to b_45 in mem offset_illegal
              #                    occupy a0 with 2960_0
    li      a0, 2960
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with b_45
              #                    store to flag_51 in mem offset_illegal
              #                    occupy a1 with 2944_0
    li      a1, 2944
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with flag_51
              #                    store to a_45 in mem offset_illegal
              #                    occupy a2 with 2964_0
    li      a2, 2964
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with a_45
              #                    store to temp_31_booltrans_64 in mem offset_illegal
              #                    occupy a3 with 2907_0
    li      a3, 2907
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_31_booltrans_64
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy a4 with 2906_0
    li      a4, 2906
    add     a4,sp,a4
    sb      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_32_logicnot_64
              #                    store to temp_42_index_ptr_76 in mem offset_illegal
              #                    occupy a5 with 2840_0
    li      a5, 2840
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_42_index_ptr_76
              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy a6 with 2900_0
    li      a6, 2900
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_33_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem

              #                    occupy a7 with loc_66
    li      a7, 2884
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_k_51_0
              #                    load from k_51 in mem

              #                    occupy s9 with k_51
    li      s9, 2920
    add     s9,sp,s9
    lw      a1,0(s9)
              #                    free s9
              #                    arg load ended


    call    mmerge
              #                          jump label: branch_false_75 
              #                    store to loc_66 in mem offset_illegal
              #                    occupy a0 with 2884_0
    li      a0, 2884
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with loc_66
              #                    store to k_51 in mem offset_illegal
              #                    found literal reg Some(s8) already exist with 2920_0
              #                    occupy s8 with 2920_0
    add     s8,sp,s8
    sw      s9,0(s8)
              #                    free s8
              #                    release s9 with k_51
              #                    occupy a4 with _anonymous_of_temp_31_booltrans_64_0
              #                    load from temp_31_booltrans_64 in mem
              #                    occupy a1 with temp_31_booltrans_64
    li      a1, 2907
    add     a1,sp,a1
    lb      a4,0(a1)
              #                    free a1
              #                    occupy s7 with _anonymous_of_temp_40_ptr2globl_74_0
              #                    load from temp_40_ptr2globl_74 in mem

              #                    occupy a2 with temp_40_ptr2globl_74
    li      a2, 2852
    add     a2,sp,a2
    lw      s7,0(a2)
              #                    free a2
              #                    store to temp_40_ptr2globl_74 in mem offset_illegal
              #                    occupy a2 with 2852_0
    li      a2, 2852
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_40_ptr2globl_74
              #                    occupy a2 with _anonymous_of_flag_51_0
              #                    load from flag_51 in mem

              #                    occupy a3 with flag_51
    li      a3, 2944
    add     a3,sp,a3
    lw      a2,0(a3)
              #                    free a3
              #                    occupy s4 with _anonymous_of_temp_36_arithop_66_0
              #                    load from temp_36_arithop_66 in mem

              #                    occupy a5 with temp_36_arithop_66
    li      a5, 2888
    add     a5,sp,a5
    lw      s4,0(a5)
              #                    free a5
              #                    occupy a0 with _anonymous_of_temp_30_ret_of_getint_61_0
              #                    load from temp_30_ret_of_getint_61 in mem

              #                    occupy a6 with temp_30_ret_of_getint_61
    li      a6, 2908
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    store to temp_30_ret_of_getint_61 in mem offset_illegal
              #                    occupy a6 with 2908_0
    li      a6, 2908
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_30_ret_of_getint_61
              #                    store to flag_51 in mem offset_illegal
              #                    occupy a3 with 2944_0
    li      a3, 2944
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with flag_51
              #                    occupy a3 with _anonymous_of_a_45_0
              #                    load from a_45 in mem

              #                    occupy a6 with a_45
    li      a6, 2964
    add     a6,sp,a6
    lw      a3,0(a6)
              #                    free a6
              #                    occupy s2 with _anonymous_of_temp_34_ptr2globl_66_0
              #                    load from temp_34_ptr2globl_66 in mem

              #                    occupy a7 with temp_34_ptr2globl_66
    li      a7, 2896
    add     a7,sp,a7
    lw      s2,0(a7)
              #                    free a7
              #                    occupy s6 with _anonymous_of_temp_37_index_ptr_66_0
              #                    load from temp_37_index_ptr_66 in mem
              #                    occupy s1 with temp_37_index_ptr_66
    li      s1, 2872
    add     s1,sp,s1
    ld      s6,0(s1)
              #                    free s1
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy a5 with 2888_0
    li      a5, 2888
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_36_arithop_66
              #                    occupy a5 with _anonymous_of_temp_32_logicnot_64_0
              #                    load from temp_32_logicnot_64 in mem
              #                    occupy s3 with temp_32_logicnot_64
    li      s3, 2906
    add     s3,sp,s3
    lb      a5,0(s3)
              #                    free s3
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s1 with 2872_0
    li      s1, 2872
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_37_index_ptr_66
              #                    occupy s1 with _anonymous_of_temp_38_cmp_69_0
              #                    load from temp_38_cmp_69 in mem
              #                    occupy s5 with temp_38_cmp_69
    li      s5, 2871
    add     s5,sp,s5
    lb      s1,0(s5)
              #                    free s5
              #                    store to temp_31_booltrans_64 in mem offset_illegal
              #                    occupy a1 with 2907_0
    li      a1, 2907
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_31_booltrans_64
              #                    occupy a1 with _anonymous_of_b_45_0
              #                    load from b_45 in mem

              #                    occupy s8 with b_45
    li      s8, 2960
    add     s8,sp,s8
    lw      a1,0(s8)
              #                    free s8
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy a7 with 2896_0
    li      a7, 2896
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_34_ptr2globl_66
              #                    occupy a7 with _anonymous_of_temp_33_arithop_66_0
              #                    load from temp_33_arithop_66 in mem

              #                    occupy s9 with temp_33_arithop_66
    li      s9, 2900
    add     s9,sp,s9
    lw      a7,0(s9)
              #                    free s9
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy s3 with 2906_0
    li      s3, 2906
    add     s3,sp,s3
    sb      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_32_logicnot_64
              #                    occupy s3 with _anonymous_of_temp_35_arithop_66_0
              #                    load from temp_35_arithop_66 in mem

              #                    occupy s10 with temp_35_arithop_66
    li      s10, 2892
    add     s10,sp,s10
    lw      s3,0(s10)
              #                    free s10
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy s5 with 2871_0
    li      s5, 2871
    add     s5,sp,s5
    sb      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_38_cmp_69
              #                    occupy s5 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem

              #                    occupy s11 with loc_66
    li      s11, 2884
    add     s11,sp,s11
    lw      s5,0(s11)
              #                    free s11
              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy s9 with 2900_0
    li      s9, 2900
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_33_arithop_66
              #                    store to b_45 in mem offset_illegal
              #                    occupy s8 with 2960_0
    li      s8, 2960
    add     s8,sp,s8
    sw      s8,0(s8)
              #                    free s8
              #                    release s8 with b_45
              #                    occupy s8 with _anonymous_of_temp_41_cmp_74_0
              #                    load from temp_41_cmp_74 in mem
              #                    occupy s9 with temp_41_cmp_74
    li      s9, 2851
    add     s9,sp,s9
    lb      s8,0(s9)
              #                    free s9
    j       .branch_false_75
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_31_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } | 
              #                          label branch_false_75: 
.branch_false_75:
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_31_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_43_arithop_79:i32 
              #                          temp_43_arithop_79 = Add i32 loc_66, 1_0 
              #                    occupy s5 with loc_66
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s9 with temp_43_arithop_79
    add     s9,s5,a6
              #                    free s5
              #                    free a6
              #                    free s9
              #                          new_var temp_44_ptr2globl_79:Array:i32:[Some(110_0)] 
              #                          temp_44_ptr2globl_79 = load *array_0:ptr->i32 
              #                    occupy s10 with *array_0
              #                       load label array as ptr to reg
    la      s10, array
              #                    occupy reg s10 with *array_0
              #                    occupy s11 with temp_44_ptr2globl_79
    lw      s11,0(s10)
              #                    free s11
              #                    free s10
              #                          new_var temp_45_array_ptr_79:ptr->i32 
              #                          temp_45_array_ptr_79 = getelementptr temp_44_ptr2globl_79:Array:i32:[Some(110_0)] [Some(temp_43_arithop_79)] 
              #                    occupy a6 with temp_45_array_ptr_79
    li      a6, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s9 with temp_43_arithop_79
              #                    store to temp_30_ret_of_getint_61 in mem offset_illegal
              #                    occupy a0 with 2908_0
    li      a0, 2908
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_30_ret_of_getint_61
              #                    occupy a0 with _anonymous_of_temp_44_ptr2globl_79_0
    mul     a0,s10,s9
              #                    free s10
              #                    free s9
    add     a6,a6,a0
              #                    free a0
    slli a6,a6,2
    add     a6,a6,sp
              #                    occupy a0 with 2396_0
    li      a0, 2396
    li      a0, 2396
    add     a6,a0,a6
              #                    free a0
              #                    free a6
              #                          new_var temp_46_array_ele_79:i32 
              #                          temp_46_array_ele_79 = load temp_45_array_ptr_79:ptr->i32 
              #                    occupy a6 with temp_45_array_ptr_79
              #                    occupy a0 with temp_46_array_ele_79
    lw      a0,0(a6)
              #                    free a0
              #                    free a6
              #                          new_var temp_47_cmp_79:i1 
              #                          temp_47_cmp_79 = icmp i32 Ne temp_46_array_ele_79, -1_0 
              #                    occupy a0 with temp_46_array_ele_79
              #                    occupy s10 with -1_0
    li      s10, -1
              #                    store to b_45 in mem offset_illegal
              #                    occupy a1 with 2960_0
    li      a1, 2960
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with b_45
              #                    occupy a1 with temp_47_cmp_79
    xor     a1,a0,s10
    snez    a1, a1
              #                    free a0
              #                    free s10
              #                    free a1
              #                          new_var temp_48_ptr2globl_79:i32 
              #                          temp_48_ptr2globl_79 = load *n_0:ptr->i32 
              #                    occupy s10 with *n_0
              #                       load label n as ptr to reg
    la      s10, n
              #                    occupy reg s10 with *n_0
              #                    store to temp_46_array_ele_79 in mem offset_illegal
              #                    occupy a0 with 2380_0
    li      a0, 2380
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_46_array_ele_79
              #                    occupy a0 with temp_48_ptr2globl_79
    lw      a0,0(s10)
              #                    free a0
              #                    free s10
              #                          new_var temp_49_cmp_79:i1 
              #                          temp_49_cmp_79 = icmp i32 Slt b_45, temp_48_ptr2globl_79 
              #                    occupy s10 with b_45
              #                    load from b_45 in mem

              #                    occupy s10 with b_45
    add     s10,sp,s10
    lw      s10,0(s10)
              #                    free s10
              #                    occupy a0 with temp_48_ptr2globl_79
              #                    store to temp_47_cmp_79 in mem offset_illegal
              #                    occupy a1 with 2379_0
    li      a1, 2379
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_47_cmp_79
              #                    occupy a1 with temp_49_cmp_79
    slt     a1,s10,a0
              #                    free s10
              #                    free a0
              #                    free a1
              #                          new_var temp_50_logic_79:i1 
              #                          temp_50_logic_79 = And i1 temp_49_cmp_79, temp_47_cmp_79 
              #                    occupy a1 with temp_49_cmp_79
              #                    store to temp_48_ptr2globl_79 in mem offset_illegal
              #                    occupy a0 with 2372_0
    li      a0, 2372
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_48_ptr2globl_79
              #                    occupy a0 with temp_47_cmp_79
              #                    load from temp_47_cmp_79 in mem
              #                    occupy a0 with temp_47_cmp_79
    add     a0,sp,a0
    lb      a0,0(a0)
              #                    free a0
              #                    store to flag_51 in mem offset_illegal
              #                    occupy a2 with 2944_0
    li      a2, 2944
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with flag_51
              #                    occupy a2 with temp_50_logic_79
    and     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          br i1 temp_50_logic_79, label branch_true_80, label branch_false_80 
              #                    occupy a2 with temp_50_logic_79
              #                    free a2
              #                    store to temp_31_booltrans_64 in mem offset_illegal
              #                    occupy a4 with 2907_0
    li      a4, 2907
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_31_booltrans_64
              #                    occupy a2 with temp_50_logic_79
    bnez    a2, .branch_true_80
              #                    free a2
    j       .branch_false_80
              #                    regtab     a0:Freed { symidx: temp_47_cmp_79, tracked: true } |     a1:Freed { symidx: temp_49_cmp_79, tracked: true } |     a2:Freed { symidx: temp_50_logic_79, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 
              #                          label branch_true_80: 
.branch_true_80:
              #                          new_var temp_51_arithop_81:i32 
              #                          temp_51_arithop_81 = Add i32 loc_66, 1_0 
              #                    occupy s5 with loc_66
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    store to temp_47_cmp_79 in mem offset_illegal
              #                    occupy a0 with 2379_0
    li      a0, 2379
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_47_cmp_79
              #                    occupy a0 with temp_51_arithop_81
    add     a0,s5,a4
              #                    free s5
              #                    free a4
              #                    free a0
              #                           Call void mmerge_0(loc_66, temp_51_arithop_81) 
              #                    saved register dumping to mem
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy s1 with 2871_0
    li      s1, 2871
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_38_cmp_69
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy s1 with 2896_0
    li      s1, 2896
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_34_ptr2globl_66
              #                    store to temp_35_arithop_66 in mem offset_illegal
              #                    occupy s2 with 2892_0
    li      s2, 2892
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_35_arithop_66
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy s3 with 2888_0
    li      s3, 2888
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_36_arithop_66
              #                    store to loc_66 in mem offset_illegal
              #                    occupy s4 with 2884_0
    li      s4, 2884
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with loc_66
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s5 with 2872_0
    li      s5, 2872
    add     s5,sp,s5
    sd      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_37_index_ptr_66
              #                    store to temp_40_ptr2globl_74 in mem offset_illegal
              #                    occupy s6 with 2852_0
    li      s6, 2852
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_40_ptr2globl_74
              #                    store to temp_41_cmp_74 in mem offset_illegal
              #                    occupy s7 with 2851_0
    li      s7, 2851
    add     s7,sp,s7
    sb      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_41_cmp_74
              #                    store to temp_43_arithop_79 in mem offset_illegal
              #                    occupy s8 with 2836_0
    li      s8, 2836
    add     s8,sp,s8
    sw      s9,0(s8)
              #                    free s8
              #                    release s9 with temp_43_arithop_79
              #                    store to b_45 in mem offset_illegal
              #                    occupy s9 with 2960_0
    li      s9, 2960
    add     s9,sp,s9
    sw      s10,0(s9)
              #                    free s9
              #                    release s10 with b_45
              #                    store to temp_44_ptr2globl_79 in mem offset_illegal
              #                    occupy s10 with 2396_0
    li      s10, 2396
    add     s10,sp,s10
    sw      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_44_ptr2globl_79
              #                    store to temp_51_arithop_81 in mem offset_illegal
              #                    occupy a0 with 2364_0
    li      a0, 2364
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_51_arithop_81
              #                    store to temp_49_cmp_79 in mem offset_illegal
              #                    occupy a0 with 2371_0
    li      a0, 2371
    add     a0,sp,a0
    sb      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_49_cmp_79
              #                    store to temp_50_logic_79 in mem offset_illegal
              #                    occupy a1 with 2370_0
    li      a1, 2370
    add     a1,sp,a1
    sb      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_50_logic_79
              #                    store to a_45 in mem offset_illegal
              #                    occupy a2 with 2964_0
    li      a2, 2964
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with a_45
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy a3 with 2906_0
    li      a3, 2906
    add     a3,sp,a3
    sb      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_32_logicnot_64
              #                    store to temp_45_array_ptr_79 in mem offset_illegal
              #                    occupy a4 with 2384_0
    li      a4, 2384
    add     a4,sp,a4
    sd      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_45_array_ptr_79
              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy a5 with 2900_0
    li      a5, 2900
    add     a5,sp,a5
    sw      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_33_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem

              #                    occupy a6 with loc_66
    li      a6, 2884
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy a1 with _anonymous_of_temp_51_arithop_81_0
              #                    load from temp_51_arithop_81 in mem

              #                    occupy a7 with temp_51_arithop_81
    li      a7, 2364
    add     a7,sp,a7
    lw      a1,0(a7)
              #                    free a7
              #                    arg load ended


    call    mmerge
              #                          jump label: branch_false_80 
              #                    store to loc_66 in mem offset_illegal
              #                    occupy a0 with 2884_0
    li      a0, 2884
    add     a0,sp,a0
    sw      a6,0(a0)
              #                    free a0
              #                    release a6 with loc_66
              #                    store to temp_51_arithop_81 in mem offset_illegal
              #                    occupy a1 with 2364_0
    li      a1, 2364
    add     a1,sp,a1
    sw      a7,0(a1)
              #                    free a1
              #                    release a7 with temp_51_arithop_81
              #                    occupy s7 with _anonymous_of_temp_40_ptr2globl_74_0
              #                    load from temp_40_ptr2globl_74 in mem

              #                    occupy a2 with temp_40_ptr2globl_74
    li      a2, 2852
    add     a2,sp,a2
    lw      s7,0(a2)
              #                    free a2
              #                    store to temp_40_ptr2globl_74 in mem offset_illegal
              #                    occupy a2 with 2852_0
    li      a2, 2852
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_40_ptr2globl_74
              #                    occupy a2 with _anonymous_of_temp_50_logic_79_0
              #                    load from temp_50_logic_79 in mem
              #                    occupy a3 with temp_50_logic_79
    li      a3, 2370
    add     a3,sp,a3
    lb      a2,0(a3)
              #                    free a3
              #                    occupy s4 with _anonymous_of_temp_36_arithop_66_0
              #                    load from temp_36_arithop_66 in mem

              #                    occupy a4 with temp_36_arithop_66
    li      a4, 2888
    add     a4,sp,a4
    lw      s4,0(a4)
              #                    free a4
              #                    occupy a0 with _anonymous_of_temp_47_cmp_79_0
              #                    load from temp_47_cmp_79 in mem
              #                    occupy a5 with temp_47_cmp_79
    li      a5, 2379
    add     a5,sp,a5
    lb      a0,0(a5)
              #                    free a5
              #                    occupy s11 with _anonymous_of_temp_44_ptr2globl_79_0
              #                    load from temp_44_ptr2globl_79 in mem
              #                    occupy a6 with temp_44_ptr2globl_79
    li      a6, 2396
    add     a6,sp,a6
    lw      s11,0(a6)
              #                    free a6
              #                    store to temp_44_ptr2globl_79 in mem offset_illegal
              #                    occupy a6 with 2396_0
    li      a6, 2396
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_44_ptr2globl_79
              #                    occupy a6 with _anonymous_of_temp_45_array_ptr_79_0
              #                    load from temp_45_array_ptr_79 in mem
              #                    occupy a7 with temp_45_array_ptr_79
    li      a7, 2384
    add     a7,sp,a7
    ld      a6,0(a7)
              #                    free a7
              #                    store to temp_50_logic_79 in mem offset_illegal
              #                    occupy a3 with 2370_0
    li      a3, 2370
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_50_logic_79
              #                    occupy a3 with _anonymous_of_a_45_0
              #                    load from a_45 in mem

              #                    occupy s1 with a_45
    li      s1, 2964
    add     s1,sp,s1
    lw      a3,0(s1)
              #                    free s1
              #                    occupy s2 with _anonymous_of_temp_34_ptr2globl_66_0
              #                    load from temp_34_ptr2globl_66 in mem

              #                    occupy s3 with temp_34_ptr2globl_66
    li      s3, 2896
    add     s3,sp,s3
    lw      s2,0(s3)
              #                    free s3
              #                    occupy s6 with _anonymous_of_temp_37_index_ptr_66_0
              #                    load from temp_37_index_ptr_66 in mem
              #                    occupy s5 with temp_37_index_ptr_66
    li      s5, 2872
    add     s5,sp,s5
    ld      s6,0(s5)
              #                    free s5
              #                    store to temp_47_cmp_79 in mem offset_illegal
              #                    occupy a5 with 2379_0
    li      a5, 2379
    add     a5,sp,a5
    sb      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_47_cmp_79
              #                    occupy a5 with _anonymous_of_temp_32_logicnot_64_0
              #                    load from temp_32_logicnot_64 in mem
              #                    occupy s8 with temp_32_logicnot_64
    li      s8, 2906
    add     s8,sp,s8
    lb      a5,0(s8)
              #                    free s8
              #                    occupy s10 with _anonymous_of_b_45_0
              #                    load from b_45 in mem

              #                    occupy s9 with b_45
    li      s9, 2960
    add     s9,sp,s9
    lw      s10,0(s9)
              #                    free s9
              #                    store to a_45 in mem offset_illegal
              #                    occupy s1 with 2964_0
    li      s1, 2964
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with a_45
              #                    occupy s1 with _anonymous_of_temp_38_cmp_69_0
              #                    load from temp_38_cmp_69 in mem
              #                    occupy a1 with temp_38_cmp_69
    li      a1, 2871
    add     a1,sp,a1
    lb      s1,0(a1)
              #                    free a1
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy a1 with 2871_0
    li      a1, 2871
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_38_cmp_69
              #                    occupy a1 with _anonymous_of_temp_49_cmp_79_0
              #                    load from temp_49_cmp_79 in mem
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy a4 with 2888_0
    li      a4, 2888
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_36_arithop_66
              #                    occupy a4 with temp_49_cmp_79
    li      a4, 2371
    add     a4,sp,a4
    lb      a1,0(a4)
              #                    free a4
              #                    store to temp_45_array_ptr_79 in mem offset_illegal
              #                    occupy a7 with 2384_0
    li      a7, 2384
    add     a7,sp,a7
    sd      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_45_array_ptr_79
              #                    occupy a7 with _anonymous_of_temp_33_arithop_66_0
              #                    load from temp_33_arithop_66 in mem

              #                    store to temp_49_cmp_79 in mem offset_illegal
              #                    occupy a4 with 2371_0
    li      a4, 2371
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_49_cmp_79
              #                    occupy a4 with temp_33_arithop_66
    li      a4, 2900
    add     a4,sp,a4
    lw      a7,0(a4)
              #                    free a4
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy s3 with 2896_0
    li      s3, 2896
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_34_ptr2globl_66
              #                    occupy s3 with _anonymous_of_temp_35_arithop_66_0
              #                    load from temp_35_arithop_66 in mem

              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy a4 with 2900_0
    li      a4, 2900
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_33_arithop_66
              #                    occupy a4 with temp_35_arithop_66
    li      a4, 2892
    add     a4,sp,a4
    lw      s3,0(a4)
              #                    free a4
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s5 with 2872_0
    li      s5, 2872
    add     s5,sp,s5
    sd      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_37_index_ptr_66
              #                    occupy s5 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem

              #                    store to temp_35_arithop_66 in mem offset_illegal
              #                    occupy a4 with 2892_0
    li      a4, 2892
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_35_arithop_66
              #                    occupy a4 with loc_66
    li      a4, 2884
    add     a4,sp,a4
    lw      s5,0(a4)
              #                    free a4
              #                    store to b_45 in mem offset_illegal
              #                    occupy s9 with 2960_0
    li      s9, 2960
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with b_45
              #                    occupy s9 with _anonymous_of_temp_43_arithop_79_0
              #                    load from temp_43_arithop_79 in mem

              #                    store to loc_66 in mem offset_illegal
              #                    occupy a4 with 2884_0
    li      a4, 2884
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with loc_66
              #                    occupy a4 with temp_43_arithop_79
    li      a4, 2836
    add     a4,sp,a4
    lw      s9,0(a4)
              #                    free a4
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy s8 with 2906_0
    li      s8, 2906
    add     s8,sp,s8
    sb      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_32_logicnot_64
              #                    occupy s8 with _anonymous_of_temp_41_cmp_74_0
              #                    load from temp_41_cmp_74 in mem
              #                    store to temp_43_arithop_79 in mem offset_illegal
              #                    occupy a4 with 2836_0
    li      a4, 2836
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_43_arithop_79
              #                    occupy a4 with temp_41_cmp_74
    li      a4, 2851
    add     a4,sp,a4
    lb      s8,0(a4)
              #                    free a4
    j       .branch_false_80
              #                    regtab     a0:Freed { symidx: temp_47_cmp_79, tracked: true } |     a1:Freed { symidx: temp_49_cmp_79, tracked: true } |     a2:Freed { symidx: temp_50_logic_79, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 
              #                          label branch_false_80: 
.branch_false_80:
              #                    regtab     a0:Freed { symidx: temp_47_cmp_79, tracked: true } |     a1:Freed { symidx: temp_49_cmp_79, tracked: true } |     a2:Freed { symidx: temp_50_logic_79, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_52_arithop_83:i32 
              #                          temp_52_arithop_83 = Sub i32 loc_66, 1_0 
              #                    occupy s5 with loc_66
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    store to temp_47_cmp_79 in mem offset_illegal
              #                    occupy a0 with 2379_0
    li      a0, 2379
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_47_cmp_79
              #                    occupy a0 with temp_52_arithop_83
              #                    regtab:    a0:Occupied { symidx: temp_52_arithop_83, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_49_cmp_79, tracked: true } |     a2:Freed { symidx: temp_50_logic_79, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Occupied { symidx: loc_66, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 


    sub     a0,s5,a4
              #                    free s5
              #                    free a4
              #                    free a0
              #                          new_var temp_53_ptr2globl_83:Array:i32:[Some(110_0)] 
              #                          temp_53_ptr2globl_83 = load *array_0:ptr->i32 
              #                    occupy a4 with *array_0
              #                       load label array as ptr to reg
    la      a4, array
              #                    occupy reg a4 with *array_0
              #                    store to temp_52_arithop_83 in mem offset_illegal
              #                    occupy a0 with 2360_0
    li      a0, 2360
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_52_arithop_83
              #                    occupy a0 with temp_53_ptr2globl_83
    lw      a0,0(a4)
              #                    free a0
              #                    free a4
              #                          new_var temp_54_array_ptr_83:ptr->i32 
              #                          temp_54_array_ptr_83 = getelementptr temp_53_ptr2globl_83:Array:i32:[Some(110_0)] [Some(temp_52_arithop_83)] 
              #                    occupy a4 with temp_54_array_ptr_83
    li      a4, 0
              #                    store to temp_53_ptr2globl_83 in mem offset legal
    sw      a0,1920(sp)
              #                    release a0 with temp_53_ptr2globl_83
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_49_cmp_79 in mem offset_illegal
              #                    occupy a1 with 2371_0
    li      a1, 2371
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_49_cmp_79
              #                    occupy a1 with temp_52_arithop_83
              #                    load from temp_52_arithop_83 in mem

              #                    occupy a1 with temp_52_arithop_83
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_50_logic_79 in mem offset_illegal
              #                    occupy a2 with 2370_0
    li      a2, 2370
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_50_logic_79
              #                    occupy a2 with _anonymous_of_temp_53_ptr2globl_83_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a4,a4,a2
              #                    free a2
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,1920
              #                    free a4
              #                          new_var temp_55_array_ele_83:i32 
              #                          temp_55_array_ele_83 = load temp_54_array_ptr_83:ptr->i32 
              #                    occupy a4 with temp_54_array_ptr_83
              #                    occupy a0 with temp_55_array_ele_83
    lw      a0,0(a4)
              #                    free a0
              #                    free a4
              #                          new_var temp_56_cmp_83:i1 
              #                          temp_56_cmp_83 = icmp i32 Ne temp_55_array_ele_83, -1_0 
              #                    occupy a0 with temp_55_array_ele_83
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    store to temp_52_arithop_83 in mem offset_illegal
              #                    occupy a1 with 2360_0
    li      a1, 2360
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_52_arithop_83
              #                    occupy a1 with temp_56_cmp_83
    xor     a1,a0,a2
    snez    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_57_cmp_83:i1 
              #                          temp_57_cmp_83 = icmp i32 Sgt b_45, 1_0 
              #                    occupy s10 with b_45
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    store to temp_55_array_ele_83 in mem offset legal
    sw      a0,1908(sp)
              #                    release a0 with temp_55_array_ele_83
              #                    occupy a0 with temp_57_cmp_83
    slt     a0,a2,s10
              #                    free s10
              #                    free a2
              #                    free a0
              #                          new_var temp_58_logic_83:i1 
              #                          temp_58_logic_83 = And i1 temp_57_cmp_83, temp_56_cmp_83 
              #                    occupy a0 with temp_57_cmp_83
              #                    occupy a1 with temp_56_cmp_83
              #                    occupy a2 with temp_58_logic_83
    and     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_58_logic_83, label branch_true_84, label branch_false_84 
              #                    occupy a2 with temp_58_logic_83
              #                    free a2
              #                    store to temp_54_array_ptr_83 in mem offset legal
    sd      a4,1912(sp)
              #                    release a4 with temp_54_array_ptr_83
              #                    occupy a2 with temp_58_logic_83
    bnez    a2, .branch_true_84
              #                    free a2
    j       .branch_false_84
              #                    regtab     a0:Freed { symidx: temp_57_cmp_83, tracked: true } |     a1:Freed { symidx: temp_56_cmp_83, tracked: true } |     a2:Freed { symidx: temp_58_logic_83, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 
              #                          label branch_true_84: 
.branch_true_84:
              #                          new_var temp_59_arithop_85:i32 
              #                          temp_59_arithop_85 = Sub i32 loc_66, 1_0 
              #                    occupy s5 with loc_66
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    store to temp_57_cmp_83 in mem offset legal
    sb      a0,1906(sp)
              #                    release a0 with temp_57_cmp_83
              #                    occupy a0 with temp_59_arithop_85
              #                    regtab:    a0:Occupied { symidx: temp_59_arithop_85, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_56_cmp_83, tracked: true } |     a2:Freed { symidx: temp_58_logic_83, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Occupied { symidx: loc_66, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 


    sub     a0,s5,a4
              #                    free s5
              #                    free a4
              #                    free a0
              #                           Call void mmerge_0(loc_66, temp_59_arithop_85) 
              #                    saved register dumping to mem
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy s1 with 2871_0
    li      s1, 2871
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_38_cmp_69
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy s1 with 2896_0
    li      s1, 2896
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_34_ptr2globl_66
              #                    store to temp_35_arithop_66 in mem offset_illegal
              #                    occupy s2 with 2892_0
    li      s2, 2892
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_35_arithop_66
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy s3 with 2888_0
    li      s3, 2888
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_36_arithop_66
              #                    store to loc_66 in mem offset_illegal
              #                    occupy s4 with 2884_0
    li      s4, 2884
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with loc_66
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s5 with 2872_0
    li      s5, 2872
    add     s5,sp,s5
    sd      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_37_index_ptr_66
              #                    store to temp_40_ptr2globl_74 in mem offset_illegal
              #                    occupy s6 with 2852_0
    li      s6, 2852
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_40_ptr2globl_74
              #                    store to temp_41_cmp_74 in mem offset_illegal
              #                    occupy s7 with 2851_0
    li      s7, 2851
    add     s7,sp,s7
    sb      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_41_cmp_74
              #                    store to temp_43_arithop_79 in mem offset_illegal
              #                    occupy s8 with 2836_0
    li      s8, 2836
    add     s8,sp,s8
    sw      s9,0(s8)
              #                    free s8
              #                    release s9 with temp_43_arithop_79
              #                    store to b_45 in mem offset_illegal
              #                    occupy s9 with 2960_0
    li      s9, 2960
    add     s9,sp,s9
    sw      s10,0(s9)
              #                    free s9
              #                    release s10 with b_45
              #                    store to temp_44_ptr2globl_79 in mem offset_illegal
              #                    occupy s10 with 2396_0
    li      s10, 2396
    add     s10,sp,s10
    sw      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_44_ptr2globl_79
              #                    store to temp_59_arithop_85 in mem offset legal
    sw      a0,1900(sp)
              #                    release a0 with temp_59_arithop_85
              #                    store to temp_56_cmp_83 in mem offset legal
    sb      a1,1907(sp)
              #                    release a1 with temp_56_cmp_83
              #                    store to temp_58_logic_83 in mem offset legal
    sb      a2,1905(sp)
              #                    release a2 with temp_58_logic_83
              #                    store to a_45 in mem offset_illegal
              #                    occupy a0 with 2964_0
    li      a0, 2964
    add     a0,sp,a0
    sw      a3,0(a0)
              #                    free a0
              #                    release a3 with a_45
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy a1 with 2906_0
    li      a1, 2906
    add     a1,sp,a1
    sb      a5,0(a1)
              #                    free a1
              #                    release a5 with temp_32_logicnot_64
              #                    store to temp_45_array_ptr_79 in mem offset_illegal
              #                    occupy a2 with 2384_0
    li      a2, 2384
    add     a2,sp,a2
    sd      a6,0(a2)
              #                    free a2
              #                    release a6 with temp_45_array_ptr_79
              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy a3 with 2900_0
    li      a3, 2900
    add     a3,sp,a3
    sw      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_33_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem

              #                    occupy a4 with loc_66
    li      a4, 2884
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    occupy a1 with _anonymous_of_temp_59_arithop_85_0
              #                    load from temp_59_arithop_85 in mem


    lw      a1,1900(sp)
              #                    arg load ended


    call    mmerge
              #                          jump label: branch_false_84 
              #                    store to loc_66 in mem offset_illegal
              #                    found literal reg Some(s4) already exist with 2884_0
              #                    occupy s4 with 2884_0
    add     s4,sp,s4
    sw      a4,0(s4)
              #                    free s4
              #                    release a4 with loc_66
              #                    occupy s7 with _anonymous_of_temp_40_ptr2globl_74_0
              #                    load from temp_40_ptr2globl_74 in mem

              #                    occupy a0 with temp_40_ptr2globl_74
    li      a0, 2852
    add     a0,sp,a0
    lw      s7,0(a0)
              #                    free a0
              #                    occupy a2 with _anonymous_of_temp_58_logic_83_0
              #                    load from temp_58_logic_83 in mem
    lb      a2,1905(sp)
              #                    occupy s4 with _anonymous_of_temp_36_arithop_66_0
              #                    load from temp_36_arithop_66 in mem

              #                    occupy a1 with temp_36_arithop_66
    li      a1, 2888
    add     a1,sp,a1
    lw      s4,0(a1)
              #                    free a1
              #                    store to temp_40_ptr2globl_74 in mem offset_illegal
              #                    occupy a0 with 2852_0
    li      a0, 2852
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_40_ptr2globl_74
              #                    occupy a0 with _anonymous_of_temp_57_cmp_83_0
              #                    load from temp_57_cmp_83 in mem
    lb      a0,1906(sp)
              #                    occupy s11 with _anonymous_of_temp_44_ptr2globl_79_0
              #                    load from temp_44_ptr2globl_79 in mem
              #                    occupy a3 with temp_44_ptr2globl_79
    li      a3, 2396
    add     a3,sp,a3
    lw      s11,0(a3)
              #                    free a3
              #                    occupy a6 with _anonymous_of_temp_45_array_ptr_79_0
              #                    load from temp_45_array_ptr_79 in mem
              #                    occupy a4 with temp_45_array_ptr_79
    li      a4, 2384
    add     a4,sp,a4
    ld      a6,0(a4)
              #                    free a4
              #                    store to temp_44_ptr2globl_79 in mem offset_illegal
              #                    occupy a3 with 2396_0
    li      a3, 2396
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_44_ptr2globl_79
              #                    occupy a3 with _anonymous_of_a_45_0
              #                    load from a_45 in mem

              #                    occupy a5 with a_45
    li      a5, 2964
    add     a5,sp,a5
    lw      a3,0(a5)
              #                    free a5
              #                    occupy s2 with _anonymous_of_temp_34_ptr2globl_66_0
              #                    load from temp_34_ptr2globl_66 in mem

              #                    occupy a7 with temp_34_ptr2globl_66
    li      a7, 2896
    add     a7,sp,a7
    lw      s2,0(a7)
              #                    free a7
              #                    occupy s6 with _anonymous_of_temp_37_index_ptr_66_0
              #                    load from temp_37_index_ptr_66 in mem
              #                    occupy s1 with temp_37_index_ptr_66
    li      s1, 2872
    add     s1,sp,s1
    ld      s6,0(s1)
              #                    free s1
              #                    store to a_45 in mem offset_illegal
              #                    occupy a5 with 2964_0
    li      a5, 2964
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with a_45
              #                    occupy a5 with _anonymous_of_temp_32_logicnot_64_0
              #                    load from temp_32_logicnot_64 in mem
              #                    occupy s3 with temp_32_logicnot_64
    li      s3, 2906
    add     s3,sp,s3
    lb      a5,0(s3)
              #                    free s3
              #                    occupy s10 with _anonymous_of_b_45_0
              #                    load from b_45 in mem

              #                    occupy s5 with b_45
    li      s5, 2960
    add     s5,sp,s5
    lw      s10,0(s5)
              #                    free s5
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s1 with 2872_0
    li      s1, 2872
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_37_index_ptr_66
              #                    occupy s1 with _anonymous_of_temp_38_cmp_69_0
              #                    load from temp_38_cmp_69 in mem
              #                    occupy s8 with temp_38_cmp_69
    li      s8, 2871
    add     s8,sp,s8
    lb      s1,0(s8)
              #                    free s8
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy a1 with 2888_0
    li      a1, 2888
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_36_arithop_66
              #                    occupy a1 with _anonymous_of_temp_56_cmp_83_0
              #                    load from temp_56_cmp_83 in mem
    lb      a1,1907(sp)
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy a7 with 2896_0
    li      a7, 2896
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_34_ptr2globl_66
              #                    occupy a7 with _anonymous_of_temp_33_arithop_66_0
              #                    load from temp_33_arithop_66 in mem

              #                    occupy s9 with temp_33_arithop_66
    li      s9, 2900
    add     s9,sp,s9
    lw      a7,0(s9)
              #                    free s9
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy s3 with 2906_0
    li      s3, 2906
    add     s3,sp,s3
    sb      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_32_logicnot_64
              #                    occupy s3 with _anonymous_of_temp_35_arithop_66_0
              #                    load from temp_35_arithop_66 in mem

              #                    store to temp_45_array_ptr_79 in mem offset_illegal
              #                    occupy a4 with 2384_0
    li      a4, 2384
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_45_array_ptr_79
              #                    occupy a4 with temp_35_arithop_66
    li      a4, 2892
    add     a4,sp,a4
    lw      s3,0(a4)
              #                    free a4
              #                    store to b_45 in mem offset_illegal
              #                    occupy s5 with 2960_0
    li      s5, 2960
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with b_45
              #                    occupy s5 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem

              #                    store to temp_35_arithop_66 in mem offset_illegal
              #                    occupy a4 with 2892_0
    li      a4, 2892
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_35_arithop_66
              #                    occupy a4 with loc_66
    li      a4, 2884
    add     a4,sp,a4
    lw      s5,0(a4)
              #                    free a4
              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy s9 with 2900_0
    li      s9, 2900
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_33_arithop_66
              #                    occupy s9 with _anonymous_of_temp_43_arithop_79_0
              #                    load from temp_43_arithop_79 in mem

              #                    store to loc_66 in mem offset_illegal
              #                    occupy a4 with 2884_0
    li      a4, 2884
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with loc_66
              #                    occupy a4 with temp_43_arithop_79
    li      a4, 2836
    add     a4,sp,a4
    lw      s9,0(a4)
              #                    free a4
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy s8 with 2871_0
    li      s8, 2871
    add     s8,sp,s8
    sb      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_38_cmp_69
              #                    occupy s8 with _anonymous_of_temp_41_cmp_74_0
              #                    load from temp_41_cmp_74 in mem
              #                    store to temp_43_arithop_79 in mem offset_illegal
              #                    occupy a4 with 2836_0
    li      a4, 2836
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_43_arithop_79
              #                    occupy a4 with temp_41_cmp_74
    li      a4, 2851
    add     a4,sp,a4
    lb      s8,0(a4)
              #                    free a4
    j       .branch_false_84
              #                    regtab     a0:Freed { symidx: temp_57_cmp_83, tracked: true } |     a1:Freed { symidx: temp_56_cmp_83, tracked: true } |     a2:Freed { symidx: temp_58_logic_83, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 
              #                          label branch_false_84: 
.branch_false_84:
              #                    regtab     a0:Freed { symidx: temp_57_cmp_83, tracked: true } |     a1:Freed { symidx: temp_56_cmp_83, tracked: true } |     a2:Freed { symidx: temp_58_logic_83, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_60_ptr2globl_87:i32 
              #                          temp_60_ptr2globl_87 = load *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    store to temp_57_cmp_83 in mem offset legal
    sb      a0,1906(sp)
              #                    release a0 with temp_57_cmp_83
              #                    occupy a0 with temp_60_ptr2globl_87
    lw      a0,0(a4)
              #                    free a0
              #                    free a4
              #                          new_var temp_61_arithop_87:i32 
              #                          temp_61_arithop_87 = Add i32 loc_66, temp_60_ptr2globl_87 
              #                    occupy s5 with loc_66
              #                    occupy a0 with temp_60_ptr2globl_87
              #                    occupy a4 with temp_61_arithop_87
    add     a4,s5,a0
              #                    free s5
              #                    free a0
              #                    free a4
              #                          new_var temp_62_ptr2globl_87:Array:i32:[Some(110_0)] 
              #                          temp_62_ptr2globl_87 = load *array_0:ptr->i32 
              #                    store to temp_60_ptr2globl_87 in mem offset legal
    sw      a0,1896(sp)
              #                    release a0 with temp_60_ptr2globl_87
              #                    occupy a0 with *array_0
              #                       load label array as ptr to reg
    la      a0, array
              #                    occupy reg a0 with *array_0
              #                    store to temp_56_cmp_83 in mem offset legal
    sb      a1,1907(sp)
              #                    release a1 with temp_56_cmp_83
              #                    occupy a1 with temp_62_ptr2globl_87
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_63_array_ptr_87:ptr->i32 
              #                          temp_63_array_ptr_87 = getelementptr temp_62_ptr2globl_87:Array:i32:[Some(110_0)] [Some(temp_61_arithop_87)] 
              #                    occupy a0 with temp_63_array_ptr_87
    li      a0, 0
              #                    store to temp_62_ptr2globl_87 in mem offset legal
    sw      a1,1452(sp)
              #                    release a1 with temp_62_ptr2globl_87
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with temp_61_arithop_87
              #                    store to temp_58_logic_83 in mem offset legal
    sb      a2,1905(sp)
              #                    release a2 with temp_58_logic_83
              #                    occupy a2 with _anonymous_of_temp_62_ptr2globl_87_0
    mul     a2,a1,a4
              #                    free a1
              #                    free a4
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1452
              #                    free a0
              #                          new_var temp_64_array_ele_87:i32 
              #                          temp_64_array_ele_87 = load temp_63_array_ptr_87:ptr->i32 
              #                    occupy a0 with temp_63_array_ptr_87
              #                    occupy a1 with temp_64_array_ele_87
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_65_cmp_87:i1 
              #                          temp_65_cmp_87 = icmp i32 Ne temp_64_array_ele_87, -1_0 
              #                    occupy a1 with temp_64_array_ele_87
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    store to temp_63_array_ptr_87 in mem offset legal
    sd      a0,1440(sp)
              #                    release a0 with temp_63_array_ptr_87
              #                    occupy a0 with temp_65_cmp_87
    xor     a0,a1,a2
    snez    a0, a0
              #                    free a1
              #                    free a2
              #                    free a0
              #                          new_var temp_66_ptr2globl_87:i32 
              #                          temp_66_ptr2globl_87 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    store to temp_65_cmp_87 in mem offset legal
    sb      a0,1435(sp)
              #                    release a0 with temp_65_cmp_87
              #                    occupy a0 with temp_66_ptr2globl_87
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_67_cmp_87:i1 
              #                          temp_67_cmp_87 = icmp i32 Slt a_45, temp_66_ptr2globl_87 
              #                    occupy a3 with a_45
              #                    occupy a0 with temp_66_ptr2globl_87
              #                    occupy a2 with temp_67_cmp_87
    slt     a2,a3,a0
              #                    free a3
              #                    free a0
              #                    free a2
              #                          new_var temp_68_logic_87:i1 
              #                          temp_68_logic_87 = And i1 temp_67_cmp_87, temp_65_cmp_87 
              #                    occupy a2 with temp_67_cmp_87
              #                    store to temp_66_ptr2globl_87 in mem offset legal
    sw      a0,1428(sp)
              #                    release a0 with temp_66_ptr2globl_87
              #                    occupy a0 with temp_65_cmp_87
              #                    load from temp_65_cmp_87 in mem
    lb      a0,1435(sp)
              #                    store to temp_64_array_ele_87 in mem offset legal
    sw      a1,1436(sp)
              #                    release a1 with temp_64_array_ele_87
              #                    occupy a1 with temp_68_logic_87
    and     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          br i1 temp_68_logic_87, label branch_true_88, label branch_false_88 
              #                    occupy a1 with temp_68_logic_87
              #                    free a1
              #                    store to temp_61_arithop_87 in mem offset legal
    sw      a4,1892(sp)
              #                    release a4 with temp_61_arithop_87
              #                    occupy a1 with temp_68_logic_87
    bnez    a1, .branch_true_88
              #                    free a1
    j       .branch_false_88
              #                    regtab     a0:Freed { symidx: temp_65_cmp_87, tracked: true } |     a1:Freed { symidx: temp_68_logic_87, tracked: true } |     a2:Freed { symidx: temp_67_cmp_87, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 
              #                          label branch_true_88: 
.branch_true_88:
              #                          new_var temp_69_ptr2globl_89:i32 
              #                          temp_69_ptr2globl_89 = load *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    store to temp_65_cmp_87 in mem offset legal
    sb      a0,1435(sp)
              #                    release a0 with temp_65_cmp_87
              #                    occupy a0 with temp_69_ptr2globl_89
    lw      a0,0(a4)
              #                    free a0
              #                    free a4
              #                          new_var temp_70_arithop_89:i32 
              #                          temp_70_arithop_89 = Add i32 loc_66, temp_69_ptr2globl_89 
              #                    occupy s5 with loc_66
              #                    occupy a0 with temp_69_ptr2globl_89
              #                    occupy a4 with temp_70_arithop_89
    add     a4,s5,a0
              #                    free s5
              #                    free a0
              #                    free a4
              #                           Call void mmerge_0(loc_66, temp_70_arithop_89) 
              #                    saved register dumping to mem
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy s1 with 2871_0
    li      s1, 2871
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_38_cmp_69
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy s1 with 2896_0
    li      s1, 2896
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_34_ptr2globl_66
              #                    store to temp_35_arithop_66 in mem offset_illegal
              #                    occupy s2 with 2892_0
    li      s2, 2892
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_35_arithop_66
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy s3 with 2888_0
    li      s3, 2888
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_36_arithop_66
              #                    store to loc_66 in mem offset_illegal
              #                    occupy s4 with 2884_0
    li      s4, 2884
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with loc_66
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s5 with 2872_0
    li      s5, 2872
    add     s5,sp,s5
    sd      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_37_index_ptr_66
              #                    store to temp_40_ptr2globl_74 in mem offset_illegal
              #                    occupy s6 with 2852_0
    li      s6, 2852
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_40_ptr2globl_74
              #                    store to temp_41_cmp_74 in mem offset_illegal
              #                    occupy s7 with 2851_0
    li      s7, 2851
    add     s7,sp,s7
    sb      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_41_cmp_74
              #                    store to temp_43_arithop_79 in mem offset_illegal
              #                    occupy s8 with 2836_0
    li      s8, 2836
    add     s8,sp,s8
    sw      s9,0(s8)
              #                    free s8
              #                    release s9 with temp_43_arithop_79
              #                    store to b_45 in mem offset_illegal
              #                    occupy s9 with 2960_0
    li      s9, 2960
    add     s9,sp,s9
    sw      s10,0(s9)
              #                    free s9
              #                    release s10 with b_45
              #                    store to temp_44_ptr2globl_79 in mem offset_illegal
              #                    occupy s10 with 2396_0
    li      s10, 2396
    add     s10,sp,s10
    sw      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_44_ptr2globl_79
              #                    store to temp_69_ptr2globl_89 in mem offset legal
    sw      a0,1420(sp)
              #                    release a0 with temp_69_ptr2globl_89
              #                    store to temp_68_logic_87 in mem offset legal
    sb      a1,1426(sp)
              #                    release a1 with temp_68_logic_87
              #                    store to temp_67_cmp_87 in mem offset legal
    sb      a2,1427(sp)
              #                    release a2 with temp_67_cmp_87
              #                    store to a_45 in mem offset_illegal
              #                    occupy a0 with 2964_0
    li      a0, 2964
    add     a0,sp,a0
    sw      a3,0(a0)
              #                    free a0
              #                    release a3 with a_45
              #                    store to temp_70_arithop_89 in mem offset legal
    sw      a4,1416(sp)
              #                    release a4 with temp_70_arithop_89
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy a1 with 2906_0
    li      a1, 2906
    add     a1,sp,a1
    sb      a5,0(a1)
              #                    free a1
              #                    release a5 with temp_32_logicnot_64
              #                    store to temp_45_array_ptr_79 in mem offset_illegal
              #                    occupy a2 with 2384_0
    li      a2, 2384
    add     a2,sp,a2
    sd      a6,0(a2)
              #                    free a2
              #                    release a6 with temp_45_array_ptr_79
              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy a3 with 2900_0
    li      a3, 2900
    add     a3,sp,a3
    sw      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_33_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem

              #                    occupy a4 with loc_66
    li      a4, 2884
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    occupy a1 with _anonymous_of_temp_70_arithop_89_0
              #                    load from temp_70_arithop_89 in mem


    lw      a1,1416(sp)
              #                    arg load ended


    call    mmerge
              #                          jump label: branch_false_88 
              #                    store to loc_66 in mem offset_illegal
              #                    found literal reg Some(s4) already exist with 2884_0
              #                    occupy s4 with 2884_0
    add     s4,sp,s4
    sw      a4,0(s4)
              #                    free s4
              #                    release a4 with loc_66
              #                    occupy s7 with _anonymous_of_temp_40_ptr2globl_74_0
              #                    load from temp_40_ptr2globl_74 in mem

              #                    occupy a0 with temp_40_ptr2globl_74
    li      a0, 2852
    add     a0,sp,a0
    lw      s7,0(a0)
              #                    free a0
              #                    occupy a2 with _anonymous_of_temp_67_cmp_87_0
              #                    load from temp_67_cmp_87 in mem
    lb      a2,1427(sp)
              #                    occupy s4 with _anonymous_of_temp_36_arithop_66_0
              #                    load from temp_36_arithop_66 in mem

              #                    occupy a1 with temp_36_arithop_66
    li      a1, 2888
    add     a1,sp,a1
    lw      s4,0(a1)
              #                    free a1
              #                    store to temp_40_ptr2globl_74 in mem offset_illegal
              #                    occupy a0 with 2852_0
    li      a0, 2852
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_40_ptr2globl_74
              #                    occupy a0 with _anonymous_of_temp_65_cmp_87_0
              #                    load from temp_65_cmp_87 in mem
    lb      a0,1435(sp)
              #                    occupy s11 with _anonymous_of_temp_44_ptr2globl_79_0
              #                    load from temp_44_ptr2globl_79 in mem
              #                    occupy a3 with temp_44_ptr2globl_79
    li      a3, 2396
    add     a3,sp,a3
    lw      s11,0(a3)
              #                    free a3
              #                    occupy a6 with _anonymous_of_temp_45_array_ptr_79_0
              #                    load from temp_45_array_ptr_79 in mem
              #                    occupy a4 with temp_45_array_ptr_79
    li      a4, 2384
    add     a4,sp,a4
    ld      a6,0(a4)
              #                    free a4
              #                    store to temp_44_ptr2globl_79 in mem offset_illegal
              #                    occupy a3 with 2396_0
    li      a3, 2396
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_44_ptr2globl_79
              #                    occupy a3 with _anonymous_of_a_45_0
              #                    load from a_45 in mem

              #                    occupy a5 with a_45
    li      a5, 2964
    add     a5,sp,a5
    lw      a3,0(a5)
              #                    free a5
              #                    occupy s2 with _anonymous_of_temp_34_ptr2globl_66_0
              #                    load from temp_34_ptr2globl_66 in mem

              #                    occupy a7 with temp_34_ptr2globl_66
    li      a7, 2896
    add     a7,sp,a7
    lw      s2,0(a7)
              #                    free a7
              #                    occupy s6 with _anonymous_of_temp_37_index_ptr_66_0
              #                    load from temp_37_index_ptr_66 in mem
              #                    occupy s1 with temp_37_index_ptr_66
    li      s1, 2872
    add     s1,sp,s1
    ld      s6,0(s1)
              #                    free s1
              #                    store to a_45 in mem offset_illegal
              #                    occupy a5 with 2964_0
    li      a5, 2964
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with a_45
              #                    occupy a5 with _anonymous_of_temp_32_logicnot_64_0
              #                    load from temp_32_logicnot_64 in mem
              #                    occupy s3 with temp_32_logicnot_64
    li      s3, 2906
    add     s3,sp,s3
    lb      a5,0(s3)
              #                    free s3
              #                    occupy s10 with _anonymous_of_b_45_0
              #                    load from b_45 in mem

              #                    occupy s5 with b_45
    li      s5, 2960
    add     s5,sp,s5
    lw      s10,0(s5)
              #                    free s5
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s1 with 2872_0
    li      s1, 2872
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_37_index_ptr_66
              #                    occupy s1 with _anonymous_of_temp_38_cmp_69_0
              #                    load from temp_38_cmp_69 in mem
              #                    occupy s8 with temp_38_cmp_69
    li      s8, 2871
    add     s8,sp,s8
    lb      s1,0(s8)
              #                    free s8
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy a1 with 2888_0
    li      a1, 2888
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_36_arithop_66
              #                    occupy a1 with _anonymous_of_temp_68_logic_87_0
              #                    load from temp_68_logic_87 in mem
    lb      a1,1426(sp)
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy a7 with 2896_0
    li      a7, 2896
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_34_ptr2globl_66
              #                    occupy a7 with _anonymous_of_temp_33_arithop_66_0
              #                    load from temp_33_arithop_66 in mem

              #                    occupy s9 with temp_33_arithop_66
    li      s9, 2900
    add     s9,sp,s9
    lw      a7,0(s9)
              #                    free s9
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy s3 with 2906_0
    li      s3, 2906
    add     s3,sp,s3
    sb      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_32_logicnot_64
              #                    occupy s3 with _anonymous_of_temp_35_arithop_66_0
              #                    load from temp_35_arithop_66 in mem

              #                    store to temp_45_array_ptr_79 in mem offset_illegal
              #                    occupy a4 with 2384_0
    li      a4, 2384
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_45_array_ptr_79
              #                    occupy a4 with temp_35_arithop_66
    li      a4, 2892
    add     a4,sp,a4
    lw      s3,0(a4)
              #                    free a4
              #                    store to b_45 in mem offset_illegal
              #                    occupy s5 with 2960_0
    li      s5, 2960
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with b_45
              #                    occupy s5 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem

              #                    store to temp_35_arithop_66 in mem offset_illegal
              #                    occupy a4 with 2892_0
    li      a4, 2892
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_35_arithop_66
              #                    occupy a4 with loc_66
    li      a4, 2884
    add     a4,sp,a4
    lw      s5,0(a4)
              #                    free a4
              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy s9 with 2900_0
    li      s9, 2900
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_33_arithop_66
              #                    occupy s9 with _anonymous_of_temp_43_arithop_79_0
              #                    load from temp_43_arithop_79 in mem

              #                    store to loc_66 in mem offset_illegal
              #                    occupy a4 with 2884_0
    li      a4, 2884
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with loc_66
              #                    occupy a4 with temp_43_arithop_79
    li      a4, 2836
    add     a4,sp,a4
    lw      s9,0(a4)
              #                    free a4
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy s8 with 2871_0
    li      s8, 2871
    add     s8,sp,s8
    sb      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_38_cmp_69
              #                    occupy s8 with _anonymous_of_temp_41_cmp_74_0
              #                    load from temp_41_cmp_74 in mem
              #                    store to temp_43_arithop_79 in mem offset_illegal
              #                    occupy a4 with 2836_0
    li      a4, 2836
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_43_arithop_79
              #                    occupy a4 with temp_41_cmp_74
    li      a4, 2851
    add     a4,sp,a4
    lb      s8,0(a4)
              #                    free a4
    j       .branch_false_88
              #                    regtab     a0:Freed { symidx: temp_65_cmp_87, tracked: true } |     a1:Freed { symidx: temp_68_logic_87, tracked: true } |     a2:Freed { symidx: temp_67_cmp_87, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 
              #                          label branch_false_88: 
.branch_false_88:
              #                    regtab     a0:Freed { symidx: temp_65_cmp_87, tracked: true } |     a1:Freed { symidx: temp_68_logic_87, tracked: true } |     a2:Freed { symidx: temp_67_cmp_87, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_71_ptr2globl_91:i32 
              #                          temp_71_ptr2globl_91 = load *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    store to temp_65_cmp_87 in mem offset legal
    sb      a0,1435(sp)
              #                    release a0 with temp_65_cmp_87
              #                    occupy a0 with temp_71_ptr2globl_91
    lw      a0,0(a4)
              #                    free a0
              #                    free a4
              #                          new_var temp_72_arithop_91:i32 
              #                          temp_72_arithop_91 = Sub i32 loc_66, temp_71_ptr2globl_91 
              #                    occupy s5 with loc_66
              #                    occupy a0 with temp_71_ptr2globl_91
              #                    occupy a4 with temp_72_arithop_91
              #                    regtab:    a0:Occupied { symidx: temp_71_ptr2globl_91, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_68_logic_87, tracked: true } |     a2:Freed { symidx: temp_67_cmp_87, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Occupied { symidx: temp_72_arithop_91, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Occupied { symidx: loc_66, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 


    sub     a4,s5,a0
              #                    free s5
              #                    free a0
              #                    free a4
              #                          new_var temp_73_ptr2globl_91:Array:i32:[Some(110_0)] 
              #                          temp_73_ptr2globl_91 = load *array_0:ptr->i32 
              #                    store to temp_71_ptr2globl_91 in mem offset legal
    sw      a0,1412(sp)
              #                    release a0 with temp_71_ptr2globl_91
              #                    occupy a0 with *array_0
              #                       load label array as ptr to reg
    la      a0, array
              #                    occupy reg a0 with *array_0
              #                    store to temp_68_logic_87 in mem offset legal
    sb      a1,1426(sp)
              #                    release a1 with temp_68_logic_87
              #                    occupy a1 with temp_73_ptr2globl_91
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_74_array_ptr_91:ptr->i32 
              #                          temp_74_array_ptr_91 = getelementptr temp_73_ptr2globl_91:Array:i32:[Some(110_0)] [Some(temp_72_arithop_91)] 
              #                    occupy a0 with temp_74_array_ptr_91
    li      a0, 0
              #                    store to temp_73_ptr2globl_91 in mem offset legal
    sw      a1,968(sp)
              #                    release a1 with temp_73_ptr2globl_91
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with temp_72_arithop_91
              #                    store to temp_67_cmp_87 in mem offset legal
    sb      a2,1427(sp)
              #                    release a2 with temp_67_cmp_87
              #                    occupy a2 with _anonymous_of_temp_73_ptr2globl_91_0
    mul     a2,a1,a4
              #                    free a1
              #                    free a4
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,968
              #                    free a0
              #                          new_var temp_75_array_ele_91:i32 
              #                          temp_75_array_ele_91 = load temp_74_array_ptr_91:ptr->i32 
              #                    occupy a0 with temp_74_array_ptr_91
              #                    occupy a1 with temp_75_array_ele_91
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_76_cmp_91:i1 
              #                          temp_76_cmp_91 = icmp i32 Ne temp_75_array_ele_91, -1_0 
              #                    occupy a1 with temp_75_array_ele_91
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    store to temp_74_array_ptr_91 in mem offset legal
    sd      a0,960(sp)
              #                    release a0 with temp_74_array_ptr_91
              #                    occupy a0 with temp_76_cmp_91
    xor     a0,a1,a2
    snez    a0, a0
              #                    free a1
              #                    free a2
              #                    free a0
              #                          new_var temp_77_cmp_91:i1 
              #                          temp_77_cmp_91 = icmp i32 Sgt a_45, 1_0 
              #                    occupy a3 with a_45
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    store to temp_76_cmp_91 in mem offset legal
    sb      a0,955(sp)
              #                    release a0 with temp_76_cmp_91
              #                    occupy a0 with temp_77_cmp_91
    slt     a0,a2,a3
              #                    free a3
              #                    free a2
              #                    free a0
              #                          new_var temp_78_logic_91:i1 
              #                          temp_78_logic_91 = And i1 temp_77_cmp_91, temp_76_cmp_91 
              #                    occupy a0 with temp_77_cmp_91
              #                    occupy a2 with temp_76_cmp_91
              #                    load from temp_76_cmp_91 in mem
    lb      a2,955(sp)
              #                    store to temp_75_array_ele_91 in mem offset legal
    sw      a1,956(sp)
              #                    release a1 with temp_75_array_ele_91
              #                    occupy a1 with temp_78_logic_91
    and     a1,a0,a2
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_78_logic_91, label branch_true_92, label branch_false_92 
              #                    occupy a1 with temp_78_logic_91
              #                    free a1
              #                    store to temp_72_arithop_91 in mem offset legal
    sw      a4,1408(sp)
              #                    release a4 with temp_72_arithop_91
              #                    occupy a1 with temp_78_logic_91
    bnez    a1, .branch_true_92
              #                    free a1
    j       .branch_false_92
              #                    regtab     a0:Freed { symidx: temp_77_cmp_91, tracked: true } |     a1:Freed { symidx: temp_78_logic_91, tracked: true } |     a2:Freed { symidx: temp_76_cmp_91, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 
              #                          label branch_true_92: 
.branch_true_92:
              #                          new_var temp_79_ptr2globl_93:i32 
              #                          temp_79_ptr2globl_93 = load *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    store to temp_77_cmp_91 in mem offset legal
    sb      a0,954(sp)
              #                    release a0 with temp_77_cmp_91
              #                    occupy a0 with temp_79_ptr2globl_93
    lw      a0,0(a4)
              #                    free a0
              #                    free a4
              #                          new_var temp_80_arithop_93:i32 
              #                          temp_80_arithop_93 = Sub i32 loc_66, temp_79_ptr2globl_93 
              #                    occupy s5 with loc_66
              #                    occupy a0 with temp_79_ptr2globl_93
              #                    occupy a4 with temp_80_arithop_93
              #                    regtab:    a0:Occupied { symidx: temp_79_ptr2globl_93, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_78_logic_91, tracked: true } |     a2:Freed { symidx: temp_76_cmp_91, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Occupied { symidx: temp_80_arithop_93, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Occupied { symidx: loc_66, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 


    sub     a4,s5,a0
              #                    free s5
              #                    free a0
              #                    free a4
              #                           Call void mmerge_0(loc_66, temp_80_arithop_93) 
              #                    saved register dumping to mem
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy s1 with 2871_0
    li      s1, 2871
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_38_cmp_69
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy s1 with 2896_0
    li      s1, 2896
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_34_ptr2globl_66
              #                    store to temp_35_arithop_66 in mem offset_illegal
              #                    occupy s2 with 2892_0
    li      s2, 2892
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_35_arithop_66
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy s3 with 2888_0
    li      s3, 2888
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_36_arithop_66
              #                    store to loc_66 in mem offset_illegal
              #                    occupy s4 with 2884_0
    li      s4, 2884
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with loc_66
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s5 with 2872_0
    li      s5, 2872
    add     s5,sp,s5
    sd      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_37_index_ptr_66
              #                    store to temp_40_ptr2globl_74 in mem offset_illegal
              #                    occupy s6 with 2852_0
    li      s6, 2852
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_40_ptr2globl_74
              #                    store to temp_41_cmp_74 in mem offset_illegal
              #                    occupy s7 with 2851_0
    li      s7, 2851
    add     s7,sp,s7
    sb      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_41_cmp_74
              #                    store to temp_43_arithop_79 in mem offset_illegal
              #                    occupy s8 with 2836_0
    li      s8, 2836
    add     s8,sp,s8
    sw      s9,0(s8)
              #                    free s8
              #                    release s9 with temp_43_arithop_79
              #                    store to b_45 in mem offset_illegal
              #                    occupy s9 with 2960_0
    li      s9, 2960
    add     s9,sp,s9
    sw      s10,0(s9)
              #                    free s9
              #                    release s10 with b_45
              #                    store to temp_44_ptr2globl_79 in mem offset_illegal
              #                    occupy s10 with 2396_0
    li      s10, 2396
    add     s10,sp,s10
    sw      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_44_ptr2globl_79
              #                    store to temp_79_ptr2globl_93 in mem offset legal
    sw      a0,948(sp)
              #                    release a0 with temp_79_ptr2globl_93
              #                    store to temp_78_logic_91 in mem offset legal
    sb      a1,953(sp)
              #                    release a1 with temp_78_logic_91
              #                    store to temp_76_cmp_91 in mem offset legal
    sb      a2,955(sp)
              #                    release a2 with temp_76_cmp_91
              #                    store to a_45 in mem offset_illegal
              #                    occupy a0 with 2964_0
    li      a0, 2964
    add     a0,sp,a0
    sw      a3,0(a0)
              #                    free a0
              #                    release a3 with a_45
              #                    store to temp_80_arithop_93 in mem offset legal
    sw      a4,944(sp)
              #                    release a4 with temp_80_arithop_93
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy a1 with 2906_0
    li      a1, 2906
    add     a1,sp,a1
    sb      a5,0(a1)
              #                    free a1
              #                    release a5 with temp_32_logicnot_64
              #                    store to temp_45_array_ptr_79 in mem offset_illegal
              #                    occupy a2 with 2384_0
    li      a2, 2384
    add     a2,sp,a2
    sd      a6,0(a2)
              #                    free a2
              #                    release a6 with temp_45_array_ptr_79
              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy a3 with 2900_0
    li      a3, 2900
    add     a3,sp,a3
    sw      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_33_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem

              #                    occupy a4 with loc_66
    li      a4, 2884
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    occupy a1 with _anonymous_of_temp_80_arithop_93_0
              #                    load from temp_80_arithop_93 in mem


    lw      a1,944(sp)
              #                    arg load ended


    call    mmerge
              #                          jump label: branch_false_92 
              #                    store to loc_66 in mem offset_illegal
              #                    found literal reg Some(s4) already exist with 2884_0
              #                    occupy s4 with 2884_0
    add     s4,sp,s4
    sw      a4,0(s4)
              #                    free s4
              #                    release a4 with loc_66
              #                    occupy s7 with _anonymous_of_temp_40_ptr2globl_74_0
              #                    load from temp_40_ptr2globl_74 in mem

              #                    occupy a0 with temp_40_ptr2globl_74
    li      a0, 2852
    add     a0,sp,a0
    lw      s7,0(a0)
              #                    free a0
              #                    occupy a2 with _anonymous_of_temp_76_cmp_91_0
              #                    load from temp_76_cmp_91 in mem
    lb      a2,955(sp)
              #                    occupy s4 with _anonymous_of_temp_36_arithop_66_0
              #                    load from temp_36_arithop_66 in mem

              #                    occupy a1 with temp_36_arithop_66
    li      a1, 2888
    add     a1,sp,a1
    lw      s4,0(a1)
              #                    free a1
              #                    store to temp_40_ptr2globl_74 in mem offset_illegal
              #                    occupy a0 with 2852_0
    li      a0, 2852
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_40_ptr2globl_74
              #                    occupy a0 with _anonymous_of_temp_77_cmp_91_0
              #                    load from temp_77_cmp_91 in mem
    lb      a0,954(sp)
              #                    occupy s11 with _anonymous_of_temp_44_ptr2globl_79_0
              #                    load from temp_44_ptr2globl_79 in mem
              #                    occupy a3 with temp_44_ptr2globl_79
    li      a3, 2396
    add     a3,sp,a3
    lw      s11,0(a3)
              #                    free a3
              #                    occupy a6 with _anonymous_of_temp_45_array_ptr_79_0
              #                    load from temp_45_array_ptr_79 in mem
              #                    occupy a4 with temp_45_array_ptr_79
    li      a4, 2384
    add     a4,sp,a4
    ld      a6,0(a4)
              #                    free a4
              #                    store to temp_44_ptr2globl_79 in mem offset_illegal
              #                    occupy a3 with 2396_0
    li      a3, 2396
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_44_ptr2globl_79
              #                    occupy a3 with _anonymous_of_a_45_0
              #                    load from a_45 in mem

              #                    occupy a5 with a_45
    li      a5, 2964
    add     a5,sp,a5
    lw      a3,0(a5)
              #                    free a5
              #                    occupy s2 with _anonymous_of_temp_34_ptr2globl_66_0
              #                    load from temp_34_ptr2globl_66 in mem

              #                    occupy a7 with temp_34_ptr2globl_66
    li      a7, 2896
    add     a7,sp,a7
    lw      s2,0(a7)
              #                    free a7
              #                    occupy s6 with _anonymous_of_temp_37_index_ptr_66_0
              #                    load from temp_37_index_ptr_66 in mem
              #                    occupy s1 with temp_37_index_ptr_66
    li      s1, 2872
    add     s1,sp,s1
    ld      s6,0(s1)
              #                    free s1
              #                    store to a_45 in mem offset_illegal
              #                    occupy a5 with 2964_0
    li      a5, 2964
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with a_45
              #                    occupy a5 with _anonymous_of_temp_32_logicnot_64_0
              #                    load from temp_32_logicnot_64 in mem
              #                    occupy s3 with temp_32_logicnot_64
    li      s3, 2906
    add     s3,sp,s3
    lb      a5,0(s3)
              #                    free s3
              #                    occupy s10 with _anonymous_of_b_45_0
              #                    load from b_45 in mem

              #                    occupy s5 with b_45
    li      s5, 2960
    add     s5,sp,s5
    lw      s10,0(s5)
              #                    free s5
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s1 with 2872_0
    li      s1, 2872
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_37_index_ptr_66
              #                    occupy s1 with _anonymous_of_temp_38_cmp_69_0
              #                    load from temp_38_cmp_69 in mem
              #                    occupy s8 with temp_38_cmp_69
    li      s8, 2871
    add     s8,sp,s8
    lb      s1,0(s8)
              #                    free s8
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy a1 with 2888_0
    li      a1, 2888
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_36_arithop_66
              #                    occupy a1 with _anonymous_of_temp_78_logic_91_0
              #                    load from temp_78_logic_91 in mem
    lb      a1,953(sp)
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy a7 with 2896_0
    li      a7, 2896
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_34_ptr2globl_66
              #                    occupy a7 with _anonymous_of_temp_33_arithop_66_0
              #                    load from temp_33_arithop_66 in mem

              #                    occupy s9 with temp_33_arithop_66
    li      s9, 2900
    add     s9,sp,s9
    lw      a7,0(s9)
              #                    free s9
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy s3 with 2906_0
    li      s3, 2906
    add     s3,sp,s3
    sb      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_32_logicnot_64
              #                    occupy s3 with _anonymous_of_temp_35_arithop_66_0
              #                    load from temp_35_arithop_66 in mem

              #                    store to temp_45_array_ptr_79 in mem offset_illegal
              #                    occupy a4 with 2384_0
    li      a4, 2384
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_45_array_ptr_79
              #                    occupy a4 with temp_35_arithop_66
    li      a4, 2892
    add     a4,sp,a4
    lw      s3,0(a4)
              #                    free a4
              #                    store to b_45 in mem offset_illegal
              #                    occupy s5 with 2960_0
    li      s5, 2960
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with b_45
              #                    occupy s5 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem

              #                    store to temp_35_arithop_66 in mem offset_illegal
              #                    occupy a4 with 2892_0
    li      a4, 2892
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_35_arithop_66
              #                    occupy a4 with loc_66
    li      a4, 2884
    add     a4,sp,a4
    lw      s5,0(a4)
              #                    free a4
              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy s9 with 2900_0
    li      s9, 2900
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_33_arithop_66
              #                    occupy s9 with _anonymous_of_temp_43_arithop_79_0
              #                    load from temp_43_arithop_79 in mem

              #                    store to loc_66 in mem offset_illegal
              #                    occupy a4 with 2884_0
    li      a4, 2884
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with loc_66
              #                    occupy a4 with temp_43_arithop_79
    li      a4, 2836
    add     a4,sp,a4
    lw      s9,0(a4)
              #                    free a4
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy s8 with 2871_0
    li      s8, 2871
    add     s8,sp,s8
    sb      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_38_cmp_69
              #                    occupy s8 with _anonymous_of_temp_41_cmp_74_0
              #                    load from temp_41_cmp_74 in mem
              #                    store to temp_43_arithop_79 in mem offset_illegal
              #                    occupy a4 with 2836_0
    li      a4, 2836
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_43_arithop_79
              #                    occupy a4 with temp_41_cmp_74
    li      a4, 2851
    add     a4,sp,a4
    lb      s8,0(a4)
              #                    free a4
    j       .branch_false_92
              #                    regtab     a0:Freed { symidx: temp_77_cmp_91, tracked: true } |     a1:Freed { symidx: temp_78_logic_91, tracked: true } |     a2:Freed { symidx: temp_76_cmp_91, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 
              #                          label branch_false_92: 
.branch_false_92:
              #                    regtab     a0:Freed { symidx: temp_77_cmp_91, tracked: true } |     a1:Freed { symidx: temp_78_logic_91, tracked: true } |     a2:Freed { symidx: temp_76_cmp_91, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_45_array_ptr_79, tracked: true } |     a7:Freed { symidx: temp_33_arithop_66, tracked: true } |     s10:Freed { symidx: b_45, tracked: true } |     s11:Freed { symidx: temp_44_ptr2globl_79, tracked: true } |     s1:Freed { symidx: temp_38_cmp_69, tracked: true } |     s2:Freed { symidx: temp_34_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_35_arithop_66, tracked: true } |     s4:Freed { symidx: temp_36_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_40_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_41_cmp_74, tracked: true } |     s9:Freed { symidx: temp_43_arithop_79, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_81_ret_of_findfa_95:i32 
              #                          temp_81_ret_of_findfa_95 =  Call i32 findfa_0(k_51) 
              #                    saved register dumping to mem
              #                    store to temp_38_cmp_69 in mem offset_illegal
              #                    occupy a4 with 2871_0
    li      a4, 2871
    add     a4,sp,a4
    sb      s1,0(a4)
              #                    free a4
              #                    release s1 with temp_38_cmp_69
              #                    store to temp_34_ptr2globl_66 in mem offset_illegal
              #                    occupy s1 with 2896_0
    li      s1, 2896
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_34_ptr2globl_66
              #                    store to temp_35_arithop_66 in mem offset_illegal
              #                    occupy s2 with 2892_0
    li      s2, 2892
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_35_arithop_66
              #                    store to temp_36_arithop_66 in mem offset_illegal
              #                    occupy s3 with 2888_0
    li      s3, 2888
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_36_arithop_66
              #                    store to loc_66 in mem offset_illegal
              #                    occupy s4 with 2884_0
    li      s4, 2884
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with loc_66
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy s5 with 2872_0
    li      s5, 2872
    add     s5,sp,s5
    sd      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_37_index_ptr_66
              #                    store to temp_40_ptr2globl_74 in mem offset_illegal
              #                    occupy s6 with 2852_0
    li      s6, 2852
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_40_ptr2globl_74
              #                    store to temp_41_cmp_74 in mem offset_illegal
              #                    occupy s7 with 2851_0
    li      s7, 2851
    add     s7,sp,s7
    sb      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_41_cmp_74
              #                    store to temp_43_arithop_79 in mem offset_illegal
              #                    occupy s8 with 2836_0
    li      s8, 2836
    add     s8,sp,s8
    sw      s9,0(s8)
              #                    free s8
              #                    release s9 with temp_43_arithop_79
              #                    store to b_45 in mem offset_illegal
              #                    occupy s9 with 2960_0
    li      s9, 2960
    add     s9,sp,s9
    sw      s10,0(s9)
              #                    free s9
              #                    release s10 with b_45
              #                    store to temp_44_ptr2globl_79 in mem offset_illegal
              #                    occupy s10 with 2396_0
    li      s10, 2396
    add     s10,sp,s10
    sw      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_44_ptr2globl_79
              #                    store to temp_77_cmp_91 in mem offset legal
    sb      a0,954(sp)
              #                    release a0 with temp_77_cmp_91
              #                    store to temp_78_logic_91 in mem offset legal
    sb      a1,953(sp)
              #                    release a1 with temp_78_logic_91
              #                    store to temp_76_cmp_91 in mem offset legal
    sb      a2,955(sp)
              #                    release a2 with temp_76_cmp_91
              #                    store to a_45 in mem offset_illegal
              #                    occupy a0 with 2964_0
    li      a0, 2964
    add     a0,sp,a0
    sw      a3,0(a0)
              #                    free a0
              #                    release a3 with a_45
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy a1 with 2906_0
    li      a1, 2906
    add     a1,sp,a1
    sb      a5,0(a1)
              #                    free a1
              #                    release a5 with temp_32_logicnot_64
              #                    store to temp_45_array_ptr_79 in mem offset_illegal
              #                    occupy a2 with 2384_0
    li      a2, 2384
    add     a2,sp,a2
    sd      a6,0(a2)
              #                    free a2
              #                    release a6 with temp_45_array_ptr_79
              #                    store to temp_33_arithop_66 in mem offset_illegal
              #                    occupy a3 with 2900_0
    li      a3, 2900
    add     a3,sp,a3
    sw      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_33_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_k_51_0
              #                    load from k_51 in mem

              #                    occupy a4 with k_51
    li      a4, 2920
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    arg load ended


    call    findfa
              #                    store to temp_81_ret_of_findfa_95 in mem offset legal
    sw      a0,940(sp)
              #                          new_var temp_82_ret_of_findfa_95:i32 
              #                          temp_82_ret_of_findfa_95 =  Call i32 findfa_0(0_0) 
              #                    saved register dumping to mem
              #                    store to temp_81_ret_of_findfa_95 in mem offset legal
    sw      a0,940(sp)
              #                    release a0 with temp_81_ret_of_findfa_95
              #                    store to k_51 in mem offset_illegal
              #                    occupy a0 with 2920_0
    li      a0, 2920
    add     a0,sp,a0
    sw      a4,0(a0)
              #                    free a0
              #                    release a4 with k_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    findfa
              #                    store to temp_82_ret_of_findfa_95 in mem offset legal
    sw      a0,936(sp)
              #                          new_var temp_83_cmp_95:i1 
              #                          temp_83_cmp_95 = icmp i32 Eq temp_82_ret_of_findfa_95, temp_81_ret_of_findfa_95 
              #                    occupy a0 with temp_82_ret_of_findfa_95
              #                    occupy a1 with temp_81_ret_of_findfa_95
              #                    load from temp_81_ret_of_findfa_95 in mem


    lw      a1,940(sp)
              #                    occupy a2 with temp_83_cmp_95
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_84_ptr2globl_95:Array:i32:[Some(110_0)] 
              #                          temp_84_ptr2globl_95 = load *array_0:ptr->i32 
              #                    occupy a3 with *array_0
              #                       load label array as ptr to reg
    la      a3, array
              #                    occupy reg a3 with *array_0
              #                    occupy a4 with temp_84_ptr2globl_95
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          new_var temp_85_array_ptr_95:ptr->i32 
              #                          temp_85_array_ptr_95 = getelementptr temp_84_ptr2globl_95:Array:i32:[Some(110_0)] [Some(k_51)] 
              #                    occupy a5 with temp_85_array_ptr_95
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with k_51
              #                    load from k_51 in mem

              #                    occupy a7 with k_51
    add     a7,sp,a7
    lw      a7,0(a7)
              #                    free a7
              #                    occupy s1 with _anonymous_of_temp_84_ptr2globl_95_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s1
              #                    free s1
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,492
              #                    free a5
              #                          new_var temp_86_array_ele_95:i32 
              #                          temp_86_array_ele_95 = load temp_85_array_ptr_95:ptr->i32 
              #                    occupy a5 with temp_85_array_ptr_95
              #                    occupy s2 with temp_86_array_ele_95
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_87_cmp_95:i1 
              #                          temp_87_cmp_95 = icmp i32 Ne temp_86_array_ele_95, -1_0 
              #                    occupy s2 with temp_86_array_ele_95
              #                    occupy s3 with -1_0
    li      s3, -1
              #                    occupy s4 with temp_87_cmp_95
    xor     s4,s2,s3
    snez    s4, s4
              #                    free s2
              #                    free s3
              #                    free s4
              #                          new_var temp_88_logic_95:i1 
              #                          temp_88_logic_95 = And i1 temp_87_cmp_95, temp_83_cmp_95 
              #                    occupy s4 with temp_87_cmp_95
              #                    occupy a2 with temp_83_cmp_95
              #                    occupy s5 with temp_88_logic_95
    and     s5,s4,a2
              #                    free s4
              #                    free a2
              #                    free s5
              #                          new_var temp_89_ptr2globl_95:Array:i32:[Some(110_0)] 
              #                          temp_89_ptr2globl_95 = load *array_0:ptr->i32 
              #                    occupy s6 with *array_0
              #                       load label array as ptr to reg
    la      s6, array
              #                    occupy reg s6 with *array_0
              #                    occupy s7 with temp_89_ptr2globl_95
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          new_var temp_90_array_ptr_95:ptr->i32 
              #                          temp_90_array_ptr_95 = getelementptr temp_89_ptr2globl_95:Array:i32:[Some(110_0)] [Some(0_0)] 
              #                    occupy s8 with temp_90_array_ptr_95
    li      s8, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    occupy s10 with _anonymous_of_temp_89_ptr2globl_95_0
    mul     s10,a6,s9
              #                    free a6
              #                    free s9
    add     s8,s8,s10
              #                    free s10
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,32
              #                    free s8
              #                          new_var temp_91_array_ele_95:i32 
              #                          temp_91_array_ele_95 = load temp_90_array_ptr_95:ptr->i32 
              #                    occupy s8 with temp_90_array_ptr_95
              #                    occupy s11 with temp_91_array_ele_95
    lw      s11,0(s8)
              #                    free s11
              #                    free s8
              #                          new_var temp_92_cmp_95:i1 
              #                          temp_92_cmp_95 = icmp i32 Ne temp_91_array_ele_95, -1_0 
              #                    occupy s11 with temp_91_array_ele_95
              #                    found literal reg Some(s3) already exist with -1_0
              #                    occupy s3 with -1_0
              #                    occupy a3 with temp_92_cmp_95
    xor     a3,s11,s3
    snez    a3, a3
              #                    free s11
              #                    free s3
              #                    free a3
              #                          new_var temp_93_logic_95:i1 
              #                          temp_93_logic_95 = And i1 temp_92_cmp_95, temp_88_logic_95 
              #                    occupy a3 with temp_92_cmp_95
              #                    occupy s5 with temp_88_logic_95
              #                    occupy a6 with temp_93_logic_95
    and     a6,a3,s5
              #                    free a3
              #                    free s5
              #                    free a6
              #                          br i1 temp_93_logic_95, label branch_true_96, label branch_false_96 
              #                    occupy a6 with temp_93_logic_95
              #                    free a6
              #                    occupy a6 with temp_93_logic_95
    bnez    a6, .branch_true_96
              #                    free a6
    j       .branch_false_96
              #                    regtab     a0:Freed { symidx: temp_82_ret_of_findfa_95, tracked: true } |     a1:Freed { symidx: temp_81_ret_of_findfa_95, tracked: true } |     a2:Freed { symidx: temp_83_cmp_95, tracked: true } |     a3:Freed { symidx: temp_92_cmp_95, tracked: true } |     a4:Freed { symidx: temp_84_ptr2globl_95, tracked: true } |     a5:Freed { symidx: temp_85_array_ptr_95, tracked: true } |     a6:Freed { symidx: temp_93_logic_95, tracked: true } |     a7:Freed { symidx: k_51, tracked: true } |     s11:Freed { symidx: temp_91_array_ele_95, tracked: true } |     s2:Freed { symidx: temp_86_array_ele_95, tracked: true } |     s4:Freed { symidx: temp_87_cmp_95, tracked: true } |     s5:Freed { symidx: temp_88_logic_95, tracked: true } |     s7:Freed { symidx: temp_89_ptr2globl_95, tracked: true } |     s8:Freed { symidx: temp_90_array_ptr_95, tracked: true } | 
              #                          label branch_true_96: 
.branch_true_96:
              #                          flag_51 = i32 1_0 
              #                    occupy s1 with flag_51
    li      s1, 1
              #                    free s1
              #                          new_var temp_94_arithop_97:i32 
              #                          temp_94_arithop_97 = Add i32 i_51, 1_0 
              #                    occupy s3 with i_51
              #                    load from i_51 in mem

              #                    occupy s3 with i_51
    add     s3,sp,s3
    lw      s3,0(s3)
              #                    free s3
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s9 with temp_94_arithop_97
    add     s9,s3,s6
              #                    free s3
              #                    free s6
              #                    free s9
              #                          tmp_97 = i32 temp_94_arithop_97 
              #                    occupy s9 with temp_94_arithop_97
              #                    occupy s10 with tmp_97
    mv      s10, s9
              #                    free s9
              #                    free s10
              #                           Call void putint_0(tmp_97) 
              #                    saved register dumping to mem
              #                    store to flag_51 in mem offset_illegal
              #                    occupy s1 with 2944_0
    li      s1, 2944
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with flag_51
              #                    store to temp_86_array_ele_95 in mem offset legal
    sw      s2,476(sp)
              #                    release s2 with temp_86_array_ele_95
              #                    store to i_51 in mem offset_illegal
              #                    occupy s1 with 2948_0
    li      s1, 2948
    add     s1,sp,s1
    sw      s3,0(s1)
              #                    free s1
              #                    release s3 with i_51
              #                    store to temp_87_cmp_95 in mem offset legal
    sb      s4,475(sp)
              #                    release s4 with temp_87_cmp_95
              #                    store to temp_88_logic_95 in mem offset legal
    sb      s5,474(sp)
              #                    release s5 with temp_88_logic_95
              #                    store to temp_89_ptr2globl_95 in mem offset legal
    sw      s7,32(sp)
              #                    release s7 with temp_89_ptr2globl_95
              #                    store to temp_90_array_ptr_95 in mem offset legal
    sd      s8,24(sp)
              #                    release s8 with temp_90_array_ptr_95
              #                    store to temp_94_arithop_97 in mem offset legal
    sw      s9,12(sp)
              #                    release s9 with temp_94_arithop_97
              #                    store to tmp_97 in mem offset legal
    sw      s10,8(sp)
              #                    release s10 with tmp_97
              #                    store to temp_91_array_ele_95 in mem offset legal
    sw      s11,20(sp)
              #                    release s11 with temp_91_array_ele_95
              #                    store to temp_82_ret_of_findfa_95 in mem offset legal
    sw      a0,936(sp)
              #                    release a0 with temp_82_ret_of_findfa_95
              #                    store to temp_81_ret_of_findfa_95 in mem offset legal
    sw      a1,940(sp)
              #                    release a1 with temp_81_ret_of_findfa_95
              #                    store to temp_83_cmp_95 in mem offset legal
    sb      a2,935(sp)
              #                    release a2 with temp_83_cmp_95
              #                    store to temp_92_cmp_95 in mem offset legal
    sb      a3,19(sp)
              #                    release a3 with temp_92_cmp_95
              #                    store to temp_84_ptr2globl_95 in mem offset legal
    sw      a4,492(sp)
              #                    release a4 with temp_84_ptr2globl_95
              #                    store to temp_85_array_ptr_95 in mem offset legal
    sd      a5,480(sp)
              #                    release a5 with temp_85_array_ptr_95
              #                    store to temp_93_logic_95 in mem offset legal
    sb      a6,18(sp)
              #                    release a6 with temp_93_logic_95
              #                    store to k_51 in mem offset_illegal
              #                    occupy a0 with 2920_0
    li      a0, 2920
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with k_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_97_0
              #                    load from tmp_97 in mem


    lw      a0,8(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_96 
              #                    occupy a4 with _anonymous_of_temp_84_ptr2globl_95_0
              #                    load from temp_84_ptr2globl_95 in mem
    lw      a4,492(sp)
              #                    occupy s7 with _anonymous_of_temp_89_ptr2globl_95_0
              #                    load from temp_89_ptr2globl_95 in mem
    lw      s7,32(sp)
              #                    occupy a2 with _anonymous_of_temp_83_cmp_95_0
              #                    load from temp_83_cmp_95 in mem
    lb      a2,935(sp)
              #                    occupy s4 with _anonymous_of_temp_87_cmp_95_0
              #                    load from temp_87_cmp_95 in mem
    lb      s4,475(sp)
              #                    occupy a0 with _anonymous_of_temp_82_ret_of_findfa_95_0
              #                    load from temp_82_ret_of_findfa_95 in mem


    lw      a0,936(sp)
              #                    occupy s11 with _anonymous_of_temp_91_array_ele_95_0
              #                    load from temp_91_array_ele_95 in mem


    lw      s11,20(sp)
              #                    occupy a6 with _anonymous_of_temp_93_logic_95_0
              #                    load from temp_93_logic_95 in mem
    lb      a6,18(sp)
              #                    occupy a3 with _anonymous_of_temp_92_cmp_95_0
              #                    load from temp_92_cmp_95 in mem
    lb      a3,19(sp)
              #                    occupy s2 with _anonymous_of_temp_86_array_ele_95_0
              #                    load from temp_86_array_ele_95 in mem


    lw      s2,476(sp)
              #                    occupy a5 with _anonymous_of_temp_85_array_ptr_95_0
              #                    load from temp_85_array_ptr_95 in mem
    ld      a5,480(sp)
              #                    occupy a1 with _anonymous_of_temp_81_ret_of_findfa_95_0
              #                    load from temp_81_ret_of_findfa_95 in mem


    lw      a1,940(sp)
              #                    occupy a7 with _anonymous_of_k_51_0
              #                    load from k_51 in mem

              #                    occupy s1 with k_51
    li      s1, 2920
    add     s1,sp,s1
    lw      a7,0(s1)
              #                    free s1
              #                    occupy s5 with _anonymous_of_temp_88_logic_95_0
              #                    load from temp_88_logic_95 in mem
    lb      s5,474(sp)
              #                    occupy s8 with _anonymous_of_temp_90_array_ptr_95_0
              #                    load from temp_90_array_ptr_95 in mem
    ld      s8,24(sp)
    j       .branch_false_96
              #                    regtab     a0:Freed { symidx: temp_82_ret_of_findfa_95, tracked: true } |     a1:Freed { symidx: temp_81_ret_of_findfa_95, tracked: true } |     a2:Freed { symidx: temp_83_cmp_95, tracked: true } |     a3:Freed { symidx: temp_92_cmp_95, tracked: true } |     a4:Freed { symidx: temp_84_ptr2globl_95, tracked: true } |     a5:Freed { symidx: temp_85_array_ptr_95, tracked: true } |     a6:Freed { symidx: temp_93_logic_95, tracked: true } |     a7:Freed { symidx: k_51, tracked: true } |     s11:Freed { symidx: temp_91_array_ele_95, tracked: true } |     s2:Freed { symidx: temp_86_array_ele_95, tracked: true } |     s4:Freed { symidx: temp_87_cmp_95, tracked: true } |     s5:Freed { symidx: temp_88_logic_95, tracked: true } |     s7:Freed { symidx: temp_89_ptr2globl_95, tracked: true } |     s8:Freed { symidx: temp_90_array_ptr_95, tracked: true } | 
              #                          label branch_false_96: 
.branch_false_96:
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a4:Freed { symidx: temp_31_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } | 
              #                          label branch_false_65: 
.branch_false_65:
              #                    regtab     a0:Freed { symidx: temp_30_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a4:Freed { symidx: temp_31_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_32_logicnot_64, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_95_arithop_61:i32 
              #                          temp_95_arithop_61 = Add i32 i_51, 1_0 
              #                    occupy a3 with i_51
              #                    load from i_51 in mem

              #                    occupy a3 with i_51
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_95_arithop_61
    add     a7,a3,a6
              #                    free a3
              #                    free a6
              #                    free a7
              #                          i_51 = i32 temp_95_arithop_61 
              #                    occupy a7 with temp_95_arithop_61
              #                    occupy a3 with i_51
    mv      a3, a7
              #                    free a7
              #                    free a3
              #                          jump label: while.head_60 
              #                    store to temp_31_booltrans_64 in mem offset_illegal
              #                    occupy a4 with 2907_0
    li      a4, 2907
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_31_booltrans_64
              #                    store to flag_51 in mem offset_illegal
              #                    occupy a2 with 2944_0
    li      a2, 2944
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with flag_51
              #                    store to temp_30_ret_of_getint_61 in mem offset_illegal
              #                    occupy a0 with 2908_0
    li      a0, 2908
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_30_ret_of_getint_61
              #                    store to i_51 in mem offset_illegal
              #                    occupy a0 with 2948_0
    li      a0, 2948
    add     a0,sp,a0
    sw      a3,0(a0)
              #                    free a0
              #                    release a3 with i_51
              #                    store to temp_32_logicnot_64 in mem offset_illegal
              #                    occupy a2 with 2906_0
    li      a2, 2906
    add     a2,sp,a2
    sb      a5,0(a2)
              #                    free a2
              #                    release a5 with temp_32_logicnot_64
              #                    store to b_45 in mem offset_illegal
              #                    occupy a1 with 2960_0
    li      a1, 2960
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with b_45
              #                    store to temp_95_arithop_61 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_95_arithop_61
              #                    occupy a4 with _anonymous_of_temp_23_ptr2globl_51_0
              #                    load from temp_23_ptr2globl_51 in mem

              #                    occupy a1 with temp_23_ptr2globl_51
    li      a1, 2940
    add     a1,sp,a1
    lw      a4,0(a1)
              #                    free a1
              #                    occupy s4 with _anonymous_of_temp_27_arithop_51_0
              #                    load from temp_27_arithop_51 in mem

              #                    occupy a2 with temp_27_arithop_51
    li      a2, 2924
    add     a2,sp,a2
    lw      s4,0(a2)
              #                    free a2
              #                    occupy s2 with _anonymous_of_temp_26_arithop_51_0
              #                    load from temp_26_arithop_51 in mem

              #                    occupy a0 with temp_26_arithop_51
    li      a0, 2928
    add     a0,sp,a0
    lw      s2,0(a0)
              #                    free a0
              #                    occupy a5 with _anonymous_of_temp_24_ptr2globl_51_0
              #                    load from temp_24_ptr2globl_51 in mem

              #                    occupy a3 with temp_24_ptr2globl_51
    li      a3, 2936
    add     a3,sp,a3
    lw      a5,0(a3)
              #                    free a3
              #                    store to temp_23_ptr2globl_51 in mem offset_illegal
              #                    occupy a1 with 2940_0
    li      a1, 2940
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_23_ptr2globl_51
              #                    occupy a7 with _anonymous_of_temp_25_ptr2globl_51_0
              #                    load from temp_25_ptr2globl_51 in mem

              #                    occupy a1 with temp_25_ptr2globl_51
    li      a1, 2932
    add     a1,sp,a1
    lw      a7,0(a1)
              #                    free a1
              #                    occupy s5 with _anonymous_of_k_51_0
              #                    load from k_51 in mem

              #                    occupy a6 with k_51
    li      a6, 2920
    add     a6,sp,a6
    lw      s5,0(a6)
              #                    free a6
    j       .while.head_60
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a1:Freed { symidx: m_45, tracked: true } |     a2:Freed { symidx: temp_28_cmp_59, tracked: true } |     a4:Freed { symidx: temp_23_ptr2globl_51, tracked: true } |     a5:Freed { symidx: temp_24_ptr2globl_51, tracked: true } |     a7:Freed { symidx: temp_25_ptr2globl_51, tracked: true } |     s2:Freed { symidx: temp_26_arithop_51, tracked: true } |     s4:Freed { symidx: temp_27_arithop_51, tracked: true } |     s5:Freed { symidx: k_51, tracked: true } | 
              #                          label while.exit_60: 
.while.exit_60:
              #                          new_var temp_96_booltrans_103:i1 
              #                          temp_96_booltrans_103 = icmp i1 Ne flag_51, 0_0 
              #                    occupy a3 with flag_51
              #                    load from flag_51 in mem

              #                    occupy a3 with flag_51
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy s1 with temp_96_booltrans_103
    xor     s1,a3,a6
    snez    s1, s1
              #                    free a3
              #                    free a6
              #                    free s1
              #                          new_var temp_97_logicnot_103:i1 
              #                          temp_97_logicnot_103 = xor i1 temp_96_booltrans_103, true 
              #                    occupy s1 with temp_96_booltrans_103
              #                    occupy s3 with temp_97_logicnot_103
    seqz    s3, s1
              #                    free s1
              #                    free s3
              #                          br i1 temp_97_logicnot_103, label branch_true_104, label branch_false_104 
              #                    occupy s3 with temp_97_logicnot_103
              #                    free s3
              #                    occupy s3 with temp_97_logicnot_103
    bnez    s3, .branch_true_104
              #                    free s3
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a1:Freed { symidx: m_45, tracked: true } |     a2:Freed { symidx: temp_28_cmp_59, tracked: true } |     a3:Freed { symidx: flag_51, tracked: true } |     a4:Freed { symidx: temp_23_ptr2globl_51, tracked: true } |     a5:Freed { symidx: temp_24_ptr2globl_51, tracked: true } |     a7:Freed { symidx: temp_25_ptr2globl_51, tracked: true } |     s1:Freed { symidx: temp_96_booltrans_103, tracked: true } |     s2:Freed { symidx: temp_26_arithop_51, tracked: true } |     s3:Freed { symidx: temp_97_logicnot_103, tracked: true } |     s4:Freed { symidx: temp_27_arithop_51, tracked: true } |     s5:Freed { symidx: k_51, tracked: true } | 
              #                          label branch_true_104: 
.branch_true_104:
              #                           Call void putint_0(-1_0) 
              #                    saved register dumping to mem
              #                    store to temp_96_booltrans_103 in mem offset legal
    sb      s1,3(sp)
              #                    release s1 with temp_96_booltrans_103
              #                    store to temp_26_arithop_51 in mem offset_illegal
              #                    occupy a6 with 2928_0
    li      a6, 2928
    add     a6,sp,a6
    sw      s2,0(a6)
              #                    free a6
              #                    release s2 with temp_26_arithop_51
              #                    store to temp_97_logicnot_103 in mem offset legal
    sb      s3,2(sp)
              #                    release s3 with temp_97_logicnot_103
              #                    store to temp_27_arithop_51 in mem offset_illegal
              #                    occupy s1 with 2924_0
    li      s1, 2924
    add     s1,sp,s1
    sw      s4,0(s1)
              #                    free s1
              #                    release s4 with temp_27_arithop_51
              #                    store to k_51 in mem offset_illegal
              #                    occupy s2 with 2920_0
    li      s2, 2920
    add     s2,sp,s2
    sw      s5,0(s2)
              #                    free s2
              #                    release s5 with k_51
              #                    store to i_51 in mem offset_illegal
              #                    occupy a0 with 2948_0
    li      a0, 2948
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_51
              #                    store to m_45 in mem offset_illegal
              #                    occupy a0 with 2968_0
    li      a0, 2968
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with m_45
              #                    store to temp_28_cmp_59 in mem offset_illegal
              #                    occupy a1 with 2919_0
    li      a1, 2919
    add     a1,sp,a1
    sb      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_28_cmp_59
              #                    store to flag_51 in mem offset_illegal
              #                    occupy a2 with 2944_0
    li      a2, 2944
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with flag_51
              #                    store to temp_23_ptr2globl_51 in mem offset_illegal
              #                    occupy a3 with 2940_0
    li      a3, 2940
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_23_ptr2globl_51
              #                    store to temp_24_ptr2globl_51 in mem offset_illegal
              #                    occupy a4 with 2936_0
    li      a4, 2936
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_24_ptr2globl_51
              #                    store to temp_25_ptr2globl_51 in mem offset_illegal
              #                    occupy a5 with 2932_0
    li      a5, 2932
    add     a5,sp,a5
    sw      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_25_ptr2globl_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_-1_0_0
    li      a0, -1
              #                    arg load ended


    call    putint
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_104 
              #                    occupy a4 with _anonymous_of_temp_23_ptr2globl_51_0
              #                    load from temp_23_ptr2globl_51 in mem

              #                    occupy a0 with temp_23_ptr2globl_51
    li      a0, 2940
    add     a0,sp,a0
    lw      a4,0(a0)
              #                    free a0
              #                    occupy a2 with _anonymous_of_temp_28_cmp_59_0
              #                    load from temp_28_cmp_59 in mem
              #                    occupy a1 with temp_28_cmp_59
    li      a1, 2919
    add     a1,sp,a1
    lb      a2,0(a1)
              #                    free a1
              #                    occupy s4 with _anonymous_of_temp_27_arithop_51_0
              #                    load from temp_27_arithop_51 in mem

              #                    occupy a3 with temp_27_arithop_51
    li      a3, 2924
    add     a3,sp,a3
    lw      s4,0(a3)
              #                    free a3
              #                    store to temp_23_ptr2globl_51 in mem offset_illegal
              #                    occupy a0 with 2940_0
    li      a0, 2940
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_23_ptr2globl_51
              #                    occupy a0 with _anonymous_of_i_51_0
              #                    load from i_51 in mem

              #                    occupy a5 with i_51
    li      a5, 2948
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    store to temp_27_arithop_51 in mem offset_illegal
              #                    occupy a3 with 2924_0
    li      a3, 2924
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_27_arithop_51
              #                    occupy a3 with _anonymous_of_flag_51_0
              #                    load from flag_51 in mem

              #                    occupy a6 with flag_51
    li      a6, 2944
    add     a6,sp,a6
    lw      a3,0(a6)
              #                    free a6
              #                    occupy s2 with _anonymous_of_temp_26_arithop_51_0
              #                    load from temp_26_arithop_51 in mem

              #                    occupy a7 with temp_26_arithop_51
    li      a7, 2928
    add     a7,sp,a7
    lw      s2,0(a7)
              #                    free a7
              #                    store to i_51 in mem offset_illegal
              #                    occupy a5 with 2948_0
    li      a5, 2948
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with i_51
              #                    occupy a5 with _anonymous_of_temp_24_ptr2globl_51_0
              #                    load from temp_24_ptr2globl_51 in mem

              #                    occupy s1 with temp_24_ptr2globl_51
    li      s1, 2936
    add     s1,sp,s1
    lw      a5,0(s1)
              #                    free s1
              #                    store to temp_24_ptr2globl_51 in mem offset_illegal
              #                    occupy s1 with 2936_0
    li      s1, 2936
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_24_ptr2globl_51
              #                    occupy s1 with _anonymous_of_temp_96_booltrans_103_0
              #                    load from temp_96_booltrans_103 in mem
    lb      s1,3(sp)
              #                    store to temp_28_cmp_59 in mem offset_illegal
              #                    occupy a1 with 2919_0
    li      a1, 2919
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_28_cmp_59
              #                    occupy a1 with _anonymous_of_m_45_0
              #                    load from m_45 in mem

              #                    occupy s3 with m_45
    li      s3, 2968
    add     s3,sp,s3
    lw      a1,0(s3)
              #                    free s3
              #                    store to temp_26_arithop_51 in mem offset_illegal
              #                    occupy a7 with 2928_0
    li      a7, 2928
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_26_arithop_51
              #                    occupy a7 with _anonymous_of_temp_25_ptr2globl_51_0
              #                    load from temp_25_ptr2globl_51 in mem

              #                    occupy s5 with temp_25_ptr2globl_51
    li      s5, 2932
    add     s5,sp,s5
    lw      a7,0(s5)
              #                    free s5
              #                    store to m_45 in mem offset_illegal
              #                    occupy s3 with 2968_0
    li      s3, 2968
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with m_45
              #                    occupy s3 with _anonymous_of_temp_97_logicnot_103_0
              #                    load from temp_97_logicnot_103 in mem
    lb      s3,2(sp)
              #                    store to temp_25_ptr2globl_51 in mem offset_illegal
              #                    occupy s5 with 2932_0
    li      s5, 2932
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_25_ptr2globl_51
              #                    occupy s5 with _anonymous_of_k_51_0
              #                    load from k_51 in mem

              #                    occupy s6 with k_51
    li      s6, 2920
    add     s6,sp,s6
    lw      s5,0(s6)
              #                    free s6
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a1:Freed { symidx: m_45, tracked: true } |     a2:Freed { symidx: temp_28_cmp_59, tracked: true } |     a3:Freed { symidx: flag_51, tracked: true } |     a4:Freed { symidx: temp_23_ptr2globl_51, tracked: true } |     a5:Freed { symidx: temp_24_ptr2globl_51, tracked: true } |     a7:Freed { symidx: temp_25_ptr2globl_51, tracked: true } |     s1:Freed { symidx: temp_96_booltrans_103, tracked: true } |     s2:Freed { symidx: temp_26_arithop_51, tracked: true } |     s3:Freed { symidx: temp_97_logicnot_103, tracked: true } |     s4:Freed { symidx: temp_27_arithop_51, tracked: true } |     s5:Freed { symidx: k_51, tracked: true } | 
              #                          label branch_false_104: 
.branch_false_104:
              #                          jump label: while.head_50 
              #                    store to temp_23_ptr2globl_51 in mem offset_illegal
              #                    occupy a4 with 2940_0
    li      a4, 2940
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_23_ptr2globl_51
              #                    store to temp_28_cmp_59 in mem offset_illegal
              #                    occupy a2 with 2919_0
    li      a2, 2919
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_28_cmp_59
              #                    store to temp_27_arithop_51 in mem offset_illegal
              #                    occupy a2 with 2924_0
    li      a2, 2924
    add     a2,sp,a2
    sw      s4,0(a2)
              #                    free a2
              #                    release s4 with temp_27_arithop_51
              #                    store to i_51 in mem offset_illegal
              #                    occupy a0 with 2948_0
    li      a0, 2948
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_51
              #                    store to flag_51 in mem offset_illegal
              #                    occupy a0 with 2944_0
    li      a0, 2944
    add     a0,sp,a0
    sw      a3,0(a0)
              #                    free a0
              #                    release a3 with flag_51
              #                    store to temp_26_arithop_51 in mem offset_illegal
              #                    occupy a3 with 2928_0
    li      a3, 2928
    add     a3,sp,a3
    sw      s2,0(a3)
              #                    free a3
              #                    release s2 with temp_26_arithop_51
              #                    store to temp_24_ptr2globl_51 in mem offset_illegal
              #                    occupy a4 with 2936_0
    li      a4, 2936
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_24_ptr2globl_51
              #                    store to temp_96_booltrans_103 in mem offset legal
    sb      s1,3(sp)
              #                    release s1 with temp_96_booltrans_103
              #                    store to m_45 in mem offset_illegal
              #                    occupy a1 with 2968_0
    li      a1, 2968
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with m_45
              #                    store to temp_25_ptr2globl_51 in mem offset_illegal
              #                    occupy a1 with 2932_0
    li      a1, 2932
    add     a1,sp,a1
    sw      a7,0(a1)
              #                    free a1
              #                    release a7 with temp_25_ptr2globl_51
              #                    store to temp_97_logicnot_103 in mem offset legal
    sb      s3,2(sp)
              #                    release s3 with temp_97_logicnot_103
              #                    store to k_51 in mem offset_illegal
              #                    occupy a5 with 2920_0
    li      a5, 2920
    add     a5,sp,a5
    sw      s5,0(a5)
              #                    free a5
              #                    release s5 with k_51
              #                    occupy a0 with _anonymous_of_t_45_0
              #                    load from t_45 in mem

              #                    occupy a2 with t_45
    li      a2, 2972
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: t_45, tracked: true } |     a2:Freed { symidx: temp_21__800, tracked: true } | 
              #                          label while.exit_50: 
.while.exit_50:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a1 with ra_main_0
    li      a1, 2984
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_main_0 in mem
              #                    occupy a3 with s0_main_0
    li      a3, 2976
    add     a3,sp,a3
    ld      s0,0(a3)
              #                    free a3
              #                    store to t_45 in mem offset_illegal
              #                    occupy a0 with 2972_0
    li      a0, 2972
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with t_45
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a4 with 2992_0
    li      a4, 2992
    li      a4, 2992
    add     sp,a4,sp
              #                    free a4
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ra_main_0, tracked: true } |     a2:Freed { symidx: temp_21__800, tracked: true } |     a3:Freed { symidx: s0_main_0, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl array
              #                          global Array:i32:[Some(110_0)] array_0 
    .type array,@object
array:
    .zero 440
