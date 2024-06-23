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
              #                          Define f_0 [i_18, j_18] -> f_ret_0 
    .globl f
    .type f,@function
f:
              #                    mem layout:|ra_f:8 at 80|s0_f:8 at 72|i:4 at 68|j:4 at 64|temp_0_ptr2globl:4 at 60|temp_1_arithop:4 at 56|temp_2_cmp:1 at 55|temp_3_cmp:1 at 54|temp_4_logic:1 at 53|none:5 at 48|temp_5_index_ptr:8 at 40|temp_6_cmp:1 at 39|none:7 at 32|temp_7_array_ptr:8 at 24|temp_8_array_ele:4 at 20|temp_9_arithop:4 at 16|temp_10_array_ptr:8 at 8|temp_11_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-88
              #                    store to ra_f_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_f_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                          alloc i32 temp_0_ptr2globl_20 
              #                          alloc i32 temp_1_arithop_20 
              #                          alloc i1 temp_2_cmp_22 
              #                          alloc i1 temp_3_cmp_22 
              #                          alloc i1 temp_4_logic_22 
              #                          alloc ptr->i32 temp_5_index_ptr_20 
              #                          alloc i1 temp_6_cmp_26 
              #                          alloc ptr->i32 temp_7_array_ptr_26 
              #                          alloc i32 temp_8_array_ele_26 
              #                          alloc i32 temp_9_arithop_26 
              #                          alloc ptr->i32 temp_10_array_ptr_26 
              #                          alloc i32 temp_11_array_ele_26 
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } | 
              #                          label L19_0: 
.L19_0:
              #                          new_var temp_0_ptr2globl_20:i32 
              #                          temp_0_ptr2globl_20 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_0_ptr2globl_20
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_1_arithop_20:i32 
              #                          temp_1_arithop_20 = Add i32 temp_0_ptr2globl_20, 1_0 
              #                    occupy a3 with temp_0_ptr2globl_20
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_1_arithop_20
    add     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          store temp_1_arithop_20:i32 *sum_0:ptr->i32 
              #                    occupy a6 with *sum_0
              #                       load label sum as ptr to reg
    la      a6, sum
              #                    occupy reg a6 with *sum_0
              #                    occupy a5 with temp_1_arithop_20
    sw      a5,0(a6)
              #                    free a5
              #                    free a6
              #                          jump label: L20_0 
    j       .L20_0
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } | 
              #                          label L20_0: 
.L20_0:
              #                          new_var temp_2_cmp_22:i1 
              #                          temp_2_cmp_22 = icmp i32 Sge i_18, 20_0 
              #                    occupy a0 with i_18
              #                    occupy a2 with 20_0
    li      a2, 20
              #                    occupy a4 with temp_2_cmp_22
    slt     a4,a0,a2
    xori    a4,a4,1
              #                    free a0
              #                    free a2
              #                    free a4
              #                          new_var temp_3_cmp_22:i1 
              #                          temp_3_cmp_22 = icmp i32 Sge i_18, j_18 
              #                    occupy a0 with i_18
              #                    occupy a1 with j_18
              #                    occupy a6 with temp_3_cmp_22
    slt     a6,a0,a1
    xori    a6,a6,1
              #                    free a0
              #                    free a1
              #                    free a6
              #                          new_var temp_4_logic_22:i1 
              #                          temp_4_logic_22 = Or i1 temp_3_cmp_22, temp_2_cmp_22 
              #                    occupy a6 with temp_3_cmp_22
              #                    occupy a4 with temp_2_cmp_22
              #                    occupy a4 with temp_2_cmp_22
              #                    free a6
              #                    free a4
              #                    free a4
              #                          br i1 temp_4_logic_22, label branch_true_23, label branch_false_23 
              #                    occupy a7 with temp_4_logic_22
              #                    load from temp_4_logic_22 in mem
    lb      a7,53(sp)
              #                    free a7
              #                    occupy a7 with temp_4_logic_22
    bnez    a7, .branch_true_23
              #                    free a7
    j       .branch_false_23
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } | 
              #                          label branch_true_23: 
.branch_true_23:
              #                          ret 0_0 
              #                    load from ra_f_0 in mem
    ld      ra,80(sp)
              #                    load from s0_f_0 in mem
    ld      s0,72(sp)
              #                    store to i_18 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with i_18
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } | 
              #                          label branch_false_23: 
.branch_false_23:
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } | 
              #                          label L21_0: 
.L21_0:
              #                          new_var temp_5_index_ptr_20:ptr->i32 
              #                          temp_5_index_ptr_20 = getelementptr *array_0:ptr->i32 [Some(i_18)] 
              #                    occupy a2 with temp_5_index_ptr_20
    li      a2, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a0 with i_18
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,s1,a0
              #                    free s1
              #                    free a0
    add     a2,a2,s2
              #                    free s2
    slli a2,a2,2
              #                    occupy s3 with *array_0
              #                       load label array as ptr to reg
    la      s3, array
              #                    occupy reg s3 with *array_0
    add     a2,a2,s3
              #                    free s3
              #                    free a2
              #                          store 1_0:i32 temp_5_index_ptr_20:ptr->i32 
              #                    occupy a2 with temp_5_index_ptr_20
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
    sw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                          mu *array_0:47 
              #                          *array_0 = chi *array_0:47 
              #                          jump label: L22_0 
    j       .L22_0
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a2:Freed { symidx: temp_5_index_ptr_20, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } | 
              #                          label L22_0: 
.L22_0:
              #                          new_var temp_6_cmp_26:i1 
              #                          temp_6_cmp_26 = icmp i32 Eq i_18, 0_0 
              #                    occupy a0 with i_18
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s2 with temp_6_cmp_26
    xor     s2,a0,s1
    seqz    s2, s2
              #                    free a0
              #                    free s1
              #                    free s2
              #                          br i1 temp_6_cmp_26, label branch_true_27, label branch_false_27 
              #                    occupy s2 with temp_6_cmp_26
              #                    free s2
              #                    occupy s2 with temp_6_cmp_26
    bnez    s2, .branch_true_27
              #                    free s2
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a2:Freed { symidx: temp_5_index_ptr_20, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } |     s2:Freed { symidx: temp_6_cmp_26, tracked: true } | 
              #                          label branch_true_27: 
.branch_true_27:
              #                          new_var temp_7_array_ptr_26:ptr->i32 
              #                          temp_7_array_ptr_26 = getelementptr *array_0:ptr->i32 [Some(0_0)] 
              #                    occupy s1 with temp_7_array_ptr_26
    li      s1, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with 0_0
    li      s4, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s3,s4
              #                    free s3
              #                    free s4
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
              #                    occupy s6 with *array_0
              #                       load label array as ptr to reg
    la      s6, array
              #                    occupy reg s6 with *array_0
    add     s1,s1,s6
              #                    free s6
              #                    free s1
              #                          new_var temp_8_array_ele_26:i32 
              #                          temp_8_array_ele_26 = load temp_7_array_ptr_26:ptr->i32 
              #                    occupy s1 with temp_7_array_ptr_26
              #                    occupy s7 with temp_8_array_ele_26
    lw      s7,0(s1)
              #                    free s7
              #                    free s1
              #                          ret temp_8_array_ele_26 
              #                    load from ra_f_0 in mem
    ld      ra,80(sp)
              #                    load from s0_f_0 in mem
    ld      s0,72(sp)
              #                    store to temp_8_array_ele_26 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with temp_8_array_ele_26
              #                    store to i_18 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with i_18
              #                    occupy a0 with temp_8_array_ele_26
              #                    load from temp_8_array_ele_26 in mem


    lw      a0,20(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a2:Freed { symidx: temp_5_index_ptr_20, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } |     s2:Freed { symidx: temp_6_cmp_26, tracked: true } | 
              #                          label branch_false_27: 
.branch_false_27:
              #                          new_var temp_9_arithop_26:i32 
              #                          temp_9_arithop_26 = Sub i32 i_18, 1_0 
              #                    occupy a0 with i_18
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with temp_9_arithop_26
              #                    regtab:    a0:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: j_18, tracked: true } |     a2:Freed { symidx: temp_5_index_ptr_20, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_6_cmp_26, tracked: true } |     s3:Occupied { symidx: temp_9_arithop_26, tracked: true, occupy_count: 1 } | 


    sub     s3,a0,s1
              #                    free a0
              #                    free s1
              #                    free s3
              #                          new_var temp_10_array_ptr_26:ptr->i32 
              #                          temp_10_array_ptr_26 = getelementptr *array_0:ptr->i32 [Some(temp_9_arithop_26)] 
              #                    occupy s4 with temp_10_array_ptr_26
    li      s4, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s3 with temp_9_arithop_26
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s1,s3
              #                    free s1
              #                    free s3
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy s6 with *array_0
              #                       load label array as ptr to reg
    la      s6, array
              #                    occupy reg s6 with *array_0
    add     s4,s4,s6
              #                    free s6
              #                    free s4
              #                          new_var temp_11_array_ele_26:i32 
              #                          temp_11_array_ele_26 = load temp_10_array_ptr_26:ptr->i32 
              #                    occupy s4 with temp_10_array_ptr_26
              #                    occupy s7 with temp_11_array_ele_26
    lw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          ret temp_11_array_ele_26 
              #                    load from ra_f_0 in mem
    ld      ra,80(sp)
              #                    load from s0_f_0 in mem
    ld      s0,72(sp)
              #                    store to temp_11_array_ele_26 in mem offset legal
    sw      s7,4(sp)
              #                    release s7 with temp_11_array_ele_26
              #                    store to i_18 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with i_18
              #                    occupy a0 with temp_11_array_ele_26
              #                    load from temp_11_array_ele_26 in mem


    lw      a0,4(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: j_18, tracked: true } |     a2:Freed { symidx: temp_5_index_ptr_20, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } |     s2:Freed { symidx: temp_6_cmp_26, tracked: true } |     s3:Freed { symidx: temp_9_arithop_26, tracked: true } |     s4:Freed { symidx: temp_10_array_ptr_26, tracked: true } | 
              #                          label L23_0: 
.L23_0:
              #                    regtab     a1:Freed { symidx: j_18, tracked: true } |     a2:Freed { symidx: temp_5_index_ptr_20, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } |     s2:Freed { symidx: temp_6_cmp_26, tracked: true } |     s3:Freed { symidx: temp_9_arithop_26, tracked: true } |     s4:Freed { symidx: temp_10_array_ptr_26, tracked: true } | 
              #                    regtab 
              #                          Define g_0 [i_30, j_30] -> g_ret_0 
    .globl g
    .type g,@function
g:
              #                    mem layout:|ra_g:8 at 80|s0_g:8 at 72|i:4 at 68|j:4 at 64|temp_12_ptr2globl:4 at 60|temp_13_arithop:4 at 56|temp_14_cmp:1 at 55|temp_15_cmp:1 at 54|temp_16_logic:1 at 53|none:5 at 48|temp_17_index_ptr:8 at 40|temp_18_cmp:1 at 39|none:7 at 32|temp_19_array_ptr:8 at 24|temp_20_array_ele:4 at 20|temp_21_arithop:4 at 16|temp_22_array_ptr:8 at 8|temp_23_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-88
              #                    store to ra_g_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_g_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                          alloc i32 temp_12_ptr2globl_32 
              #                          alloc i32 temp_13_arithop_32 
              #                          alloc i1 temp_14_cmp_34 
              #                          alloc i1 temp_15_cmp_34 
              #                          alloc i1 temp_16_logic_34 
              #                          alloc ptr->i32 temp_17_index_ptr_32 
              #                          alloc i1 temp_18_cmp_38 
              #                          alloc ptr->i32 temp_19_array_ptr_38 
              #                          alloc i32 temp_20_array_ele_38 
              #                          alloc i32 temp_21_arithop_38 
              #                          alloc ptr->i32 temp_22_array_ptr_38 
              #                          alloc i32 temp_23_array_ele_38 
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          new_var temp_12_ptr2globl_32:i32 
              #                          temp_12_ptr2globl_32 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_12_ptr2globl_32
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_13_arithop_32:i32 
              #                          temp_13_arithop_32 = Add i32 temp_12_ptr2globl_32, 2_0 
              #                    occupy a3 with temp_12_ptr2globl_32
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    occupy a5 with temp_13_arithop_32
    add     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          store temp_13_arithop_32:i32 *sum_0:ptr->i32 
              #                    occupy a6 with *sum_0
              #                       load label sum as ptr to reg
    la      a6, sum
              #                    occupy reg a6 with *sum_0
              #                    occupy a5 with temp_13_arithop_32
    sw      a5,0(a6)
              #                    free a5
              #                    free a6
              #                          jump label: L15_0 
    j       .L15_0
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_32, tracked: true } |     a5:Freed { symidx: temp_13_arithop_32, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                          new_var temp_14_cmp_34:i1 
              #                          temp_14_cmp_34 = icmp i32 Sge i_30, 20_0 
              #                    occupy a0 with i_30
              #                    occupy a2 with 20_0
    li      a2, 20
              #                    occupy a4 with temp_14_cmp_34
    slt     a4,a0,a2
    xori    a4,a4,1
              #                    free a0
              #                    free a2
              #                    free a4
              #                          new_var temp_15_cmp_34:i1 
              #                          temp_15_cmp_34 = icmp i32 Sge i_30, j_30 
              #                    occupy a0 with i_30
              #                    occupy a1 with j_30
              #                    occupy a6 with temp_15_cmp_34
    slt     a6,a0,a1
    xori    a6,a6,1
              #                    free a0
              #                    free a1
              #                    free a6
              #                          new_var temp_16_logic_34:i1 
              #                          temp_16_logic_34 = Or i1 temp_15_cmp_34, temp_14_cmp_34 
              #                    occupy a6 with temp_15_cmp_34
              #                    occupy a4 with temp_14_cmp_34
              #                    occupy a4 with temp_14_cmp_34
              #                    free a6
              #                    free a4
              #                    free a4
              #                          br i1 temp_16_logic_34, label branch_true_35, label branch_false_35 
              #                    occupy a7 with temp_16_logic_34
              #                    load from temp_16_logic_34 in mem
    lb      a7,53(sp)
              #                    free a7
              #                    occupy a7 with temp_16_logic_34
    bnez    a7, .branch_true_35
              #                    free a7
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_14_cmp_34, tracked: true } |     a5:Freed { symidx: temp_13_arithop_32, tracked: true } |     a6:Freed { symidx: temp_15_cmp_34, tracked: true } |     a7:Freed { symidx: temp_16_logic_34, tracked: true } | 
              #                          label branch_true_35: 
.branch_true_35:
              #                          ret 1_0 
              #                    load from ra_g_0 in mem
    ld      ra,80(sp)
              #                    load from s0_g_0 in mem
    ld      s0,72(sp)
              #                    store to i_30 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with i_30
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_14_cmp_34, tracked: true } |     a5:Freed { symidx: temp_13_arithop_32, tracked: true } |     a6:Freed { symidx: temp_15_cmp_34, tracked: true } |     a7:Freed { symidx: temp_16_logic_34, tracked: true } | 
              #                          label branch_false_35: 
.branch_false_35:
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_14_cmp_34, tracked: true } |     a5:Freed { symidx: temp_13_arithop_32, tracked: true } |     a6:Freed { symidx: temp_15_cmp_34, tracked: true } |     a7:Freed { symidx: temp_16_logic_34, tracked: true } | 
              #                          label L16_0: 
.L16_0:
              #                          new_var temp_17_index_ptr_32:ptr->i32 
              #                          temp_17_index_ptr_32 = getelementptr *array_0:ptr->i32 [Some(i_30)] 
              #                    occupy a2 with temp_17_index_ptr_32
    li      a2, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a0 with i_30
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,s1,a0
              #                    free s1
              #                    free a0
    add     a2,a2,s2
              #                    free s2
    slli a2,a2,2
              #                    occupy s3 with *array_0
              #                       load label array as ptr to reg
    la      s3, array
              #                    occupy reg s3 with *array_0
    add     a2,a2,s3
              #                    free s3
              #                    free a2
              #                          store 0_0:i32 temp_17_index_ptr_32:ptr->i32 
              #                    occupy a2 with temp_17_index_ptr_32
              #                    occupy s4 with 0_0
    li      s4, 0
    sw      s4,0(a2)
              #                    free s4
              #                    free a2
              #                          mu *array_0:99 
              #                          *array_0 = chi *array_0:99 
              #                          jump label: L17_0 
    j       .L17_0
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a2:Freed { symidx: temp_17_index_ptr_32, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_14_cmp_34, tracked: true } |     a5:Freed { symidx: temp_13_arithop_32, tracked: true } |     a6:Freed { symidx: temp_15_cmp_34, tracked: true } |     a7:Freed { symidx: temp_16_logic_34, tracked: true } | 
              #                          label L17_0: 
.L17_0:
              #                          new_var temp_18_cmp_38:i1 
              #                          temp_18_cmp_38 = icmp i32 Eq i_30, 0_0 
              #                    occupy a0 with i_30
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s2 with temp_18_cmp_38
    xor     s2,a0,s1
    seqz    s2, s2
              #                    free a0
              #                    free s1
              #                    free s2
              #                          br i1 temp_18_cmp_38, label branch_true_39, label branch_false_39 
              #                    occupy s2 with temp_18_cmp_38
              #                    free s2
              #                    occupy s2 with temp_18_cmp_38
    bnez    s2, .branch_true_39
              #                    free s2
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a2:Freed { symidx: temp_17_index_ptr_32, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_14_cmp_34, tracked: true } |     a5:Freed { symidx: temp_13_arithop_32, tracked: true } |     a6:Freed { symidx: temp_15_cmp_34, tracked: true } |     a7:Freed { symidx: temp_16_logic_34, tracked: true } |     s2:Freed { symidx: temp_18_cmp_38, tracked: true } | 
              #                          label branch_true_39: 
.branch_true_39:
              #                          new_var temp_19_array_ptr_38:ptr->i32 
              #                          temp_19_array_ptr_38 = getelementptr *array_0:ptr->i32 [Some(0_0)] 
              #                    occupy s1 with temp_19_array_ptr_38
    li      s1, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with 0_0
    li      s4, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s3,s4
              #                    free s3
              #                    free s4
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
              #                    occupy s6 with *array_0
              #                       load label array as ptr to reg
    la      s6, array
              #                    occupy reg s6 with *array_0
    add     s1,s1,s6
              #                    free s6
              #                    free s1
              #                          new_var temp_20_array_ele_38:i32 
              #                          temp_20_array_ele_38 = load temp_19_array_ptr_38:ptr->i32 
              #                    occupy s1 with temp_19_array_ptr_38
              #                    occupy s7 with temp_20_array_ele_38
    lw      s7,0(s1)
              #                    free s7
              #                    free s1
              #                          ret temp_20_array_ele_38 
              #                    load from ra_g_0 in mem
    ld      ra,80(sp)
              #                    load from s0_g_0 in mem
    ld      s0,72(sp)
              #                    store to temp_20_array_ele_38 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with temp_20_array_ele_38
              #                    store to i_30 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with i_30
              #                    occupy a0 with temp_20_array_ele_38
              #                    load from temp_20_array_ele_38 in mem


    lw      a0,20(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a2:Freed { symidx: temp_17_index_ptr_32, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_14_cmp_34, tracked: true } |     a5:Freed { symidx: temp_13_arithop_32, tracked: true } |     a6:Freed { symidx: temp_15_cmp_34, tracked: true } |     a7:Freed { symidx: temp_16_logic_34, tracked: true } |     s2:Freed { symidx: temp_18_cmp_38, tracked: true } | 
              #                          label branch_false_39: 
.branch_false_39:
              #                          new_var temp_21_arithop_38:i32 
              #                          temp_21_arithop_38 = Sub i32 i_30, 1_0 
              #                    occupy a0 with i_30
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with temp_21_arithop_38
              #                    regtab:    a0:Occupied { symidx: i_30, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: j_30, tracked: true } |     a2:Freed { symidx: temp_17_index_ptr_32, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_14_cmp_34, tracked: true } |     a5:Freed { symidx: temp_13_arithop_32, tracked: true } |     a6:Freed { symidx: temp_15_cmp_34, tracked: true } |     a7:Freed { symidx: temp_16_logic_34, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_18_cmp_38, tracked: true } |     s3:Occupied { symidx: temp_21_arithop_38, tracked: true, occupy_count: 1 } | 


    sub     s3,a0,s1
              #                    free a0
              #                    free s1
              #                    free s3
              #                          new_var temp_22_array_ptr_38:ptr->i32 
              #                          temp_22_array_ptr_38 = getelementptr *array_0:ptr->i32 [Some(temp_21_arithop_38)] 
              #                    occupy s4 with temp_22_array_ptr_38
    li      s4, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s3 with temp_21_arithop_38
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s1,s3
              #                    free s1
              #                    free s3
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy s6 with *array_0
              #                       load label array as ptr to reg
    la      s6, array
              #                    occupy reg s6 with *array_0
    add     s4,s4,s6
              #                    free s6
              #                    free s4
              #                          new_var temp_23_array_ele_38:i32 
              #                          temp_23_array_ele_38 = load temp_22_array_ptr_38:ptr->i32 
              #                    occupy s4 with temp_22_array_ptr_38
              #                    occupy s7 with temp_23_array_ele_38
    lw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          ret temp_23_array_ele_38 
              #                    load from ra_g_0 in mem
    ld      ra,80(sp)
              #                    load from s0_g_0 in mem
    ld      s0,72(sp)
              #                    store to temp_23_array_ele_38 in mem offset legal
    sw      s7,4(sp)
              #                    release s7 with temp_23_array_ele_38
              #                    store to i_30 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with i_30
              #                    occupy a0 with temp_23_array_ele_38
              #                    load from temp_23_array_ele_38 in mem


    lw      a0,4(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: j_30, tracked: true } |     a2:Freed { symidx: temp_17_index_ptr_32, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_14_cmp_34, tracked: true } |     a5:Freed { symidx: temp_13_arithop_32, tracked: true } |     a6:Freed { symidx: temp_15_cmp_34, tracked: true } |     a7:Freed { symidx: temp_16_logic_34, tracked: true } |     s2:Freed { symidx: temp_18_cmp_38, tracked: true } |     s3:Freed { symidx: temp_21_arithop_38, tracked: true } |     s4:Freed { symidx: temp_22_array_ptr_38, tracked: true } | 
              #                          label L18_0: 
.L18_0:
              #                    regtab     a1:Freed { symidx: j_30, tracked: true } |     a2:Freed { symidx: temp_17_index_ptr_32, tracked: true } |     a3:Freed { symidx: temp_12_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_14_cmp_34, tracked: true } |     a5:Freed { symidx: temp_13_arithop_32, tracked: true } |     a6:Freed { symidx: temp_15_cmp_34, tracked: true } |     a7:Freed { symidx: temp_16_logic_34, tracked: true } |     s2:Freed { symidx: temp_18_cmp_38, tracked: true } |     s3:Freed { symidx: temp_21_arithop_38, tracked: true } |     s4:Freed { symidx: temp_22_array_ptr_38, tracked: true } | 
              #                    regtab 
              #                          Define h_0 [i_42] -> h_ret_0 
    .globl h
    .type h,@function
h:
              #                    mem layout:|ra_h:8 at 40|s0_h:8 at 32|i:4 at 28|temp_24_ptr2globl:4 at 24|temp_25_arithop:4 at 20|temp_26_cmp:1 at 19|temp_27_cmp:1 at 18|temp_28_logic:1 at 17|none:1 at 16|temp_29_array_ptr:8 at 8|temp_30_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_h_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_h_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 temp_24_ptr2globl_44 
              #                          alloc i32 temp_25_arithop_44 
              #                          alloc i1 temp_26_cmp_46 
              #                          alloc i1 temp_27_cmp_46 
              #                          alloc i1 temp_28_logic_46 
              #                          alloc ptr->i32 temp_29_array_ptr_44 
              #                          alloc i32 temp_30_array_ele_44 
              #                    regtab     a0:Freed { symidx: i_42, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_24_ptr2globl_44:i32 
              #                          temp_24_ptr2globl_44 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a2 with temp_24_ptr2globl_44
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_25_arithop_44:i32 
              #                          temp_25_arithop_44 = Add i32 temp_24_ptr2globl_44, 3_0 
              #                    occupy a2 with temp_24_ptr2globl_44
              #                    occupy a3 with 3_0
    li      a3, 3
              #                    occupy a4 with temp_25_arithop_44
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          store temp_25_arithop_44:i32 *sum_0:ptr->i32 
              #                    occupy a5 with *sum_0
              #                       load label sum as ptr to reg
    la      a5, sum
              #                    occupy reg a5 with *sum_0
              #                    occupy a4 with temp_25_arithop_44
    sw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab     a0:Freed { symidx: i_42, tracked: true } |     a2:Freed { symidx: temp_24_ptr2globl_44, tracked: true } |     a4:Freed { symidx: temp_25_arithop_44, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_26_cmp_46:i1 
              #                          temp_26_cmp_46 = icmp i32 Sge i_42, 20_0 
              #                    occupy a0 with i_42
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a3 with temp_26_cmp_46
    slt     a3,a0,a1
    xori    a3,a3,1
              #                    free a0
              #                    free a1
              #                    free a3
              #                          new_var temp_27_cmp_46:i1 
              #                          temp_27_cmp_46 = icmp i32 Slt i_42, 0_0 
              #                    occupy a0 with i_42
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_27_cmp_46
    slt     a6,a0,a5
              #                    free a0
              #                    free a5
              #                    free a6
              #                          new_var temp_28_logic_46:i1 
              #                          temp_28_logic_46 = Or i1 temp_27_cmp_46, temp_26_cmp_46 
              #                    occupy a6 with temp_27_cmp_46
              #                    occupy a3 with temp_26_cmp_46
              #                    occupy a3 with temp_26_cmp_46
              #                    free a6
              #                    free a3
              #                    free a3
              #                          br i1 temp_28_logic_46, label branch_true_47, label branch_false_47 
              #                    occupy a7 with temp_28_logic_46
              #                    load from temp_28_logic_46 in mem
    lb      a7,17(sp)
              #                    free a7
              #                    occupy a7 with temp_28_logic_46
    bnez    a7, .branch_true_47
              #                    free a7
    j       .branch_false_47
              #                    regtab     a0:Freed { symidx: i_42, tracked: true } |     a2:Freed { symidx: temp_24_ptr2globl_44, tracked: true } |     a3:Freed { symidx: temp_26_cmp_46, tracked: true } |     a4:Freed { symidx: temp_25_arithop_44, tracked: true } |     a6:Freed { symidx: temp_27_cmp_46, tracked: true } |     a7:Freed { symidx: temp_28_logic_46, tracked: true } | 
              #                          label branch_true_47: 
.branch_true_47:
              #                          ret 0_0 
              #                    load from ra_h_0 in mem
    ld      ra,40(sp)
              #                    load from s0_h_0 in mem
    ld      s0,32(sp)
              #                    store to i_42 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with i_42
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_42, tracked: true } |     a2:Freed { symidx: temp_24_ptr2globl_44, tracked: true } |     a3:Freed { symidx: temp_26_cmp_46, tracked: true } |     a4:Freed { symidx: temp_25_arithop_44, tracked: true } |     a6:Freed { symidx: temp_27_cmp_46, tracked: true } |     a7:Freed { symidx: temp_28_logic_46, tracked: true } | 
              #                          label branch_false_47: 
.branch_false_47:
              #                    regtab     a0:Freed { symidx: i_42, tracked: true } |     a2:Freed { symidx: temp_24_ptr2globl_44, tracked: true } |     a3:Freed { symidx: temp_26_cmp_46, tracked: true } |     a4:Freed { symidx: temp_25_arithop_44, tracked: true } |     a6:Freed { symidx: temp_27_cmp_46, tracked: true } |     a7:Freed { symidx: temp_28_logic_46, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                          new_var temp_29_array_ptr_44:ptr->i32 
              #                          temp_29_array_ptr_44 = getelementptr *array_0:ptr->i32 [Some(i_42)] 
              #                    occupy a1 with temp_29_array_ptr_44
    li      a1, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with i_42
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a5,a0
              #                    free a5
              #                    free a0
    add     a1,a1,s1
              #                    free s1
    slli a1,a1,2
              #                    occupy s2 with *array_0
              #                       load label array as ptr to reg
    la      s2, array
              #                    occupy reg s2 with *array_0
    add     a1,a1,s2
              #                    free s2
              #                    free a1
              #                          new_var temp_30_array_ele_44:i32 
              #                          temp_30_array_ele_44 = load temp_29_array_ptr_44:ptr->i32 
              #                    occupy a1 with temp_29_array_ptr_44
              #                    occupy s3 with temp_30_array_ele_44
    lw      s3,0(a1)
              #                    free s3
              #                    free a1
              #                          ret temp_30_array_ele_44 
              #                    load from ra_h_0 in mem
    ld      ra,40(sp)
              #                    load from s0_h_0 in mem
    ld      s0,32(sp)
              #                    store to temp_30_array_ele_44 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_30_array_ele_44
              #                    store to i_42 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with i_42
              #                    occupy a0 with temp_30_array_ele_44
              #                    load from temp_30_array_ele_44 in mem


    lw      a0,4(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_29_array_ptr_44, tracked: true } |     a2:Freed { symidx: temp_24_ptr2globl_44, tracked: true } |     a3:Freed { symidx: temp_26_cmp_46, tracked: true } |     a4:Freed { symidx: temp_25_arithop_44, tracked: true } |     a6:Freed { symidx: temp_27_cmp_46, tracked: true } |     a7:Freed { symidx: temp_28_logic_46, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 568|s0_main:8 at 560|i:4 at 556|temp_31_cmp:1 at 555|none:3 at 552|temp_32_ret_of_f:4 at 548|temp_33_ret_of_f:4 at 544|temp_34_:1 at 543|temp_35_:1 at 542|temp_36_logic:1 at 541|none:1 at 540|temp_37_ret_of_f:4 at 536|temp_38_:1 at 535|temp_39_logic:1 at 534|none:2 at 532|temp_40_ret_of_f:4 at 528|temp_41_:1 at 527|temp_42_logic:1 at 526|none:2 at 524|temp_43_ret_of_f:4 at 520|temp_44_:1 at 519|temp_45_logic:1 at 518|none:2 at 516|temp_46_ret_of_f:4 at 512|temp_47_:1 at 511|temp_48_logic:1 at 510|none:2 at 508|temp_49_ret_of_f:4 at 504|temp_50_:1 at 503|temp_51_logic:1 at 502|none:2 at 500|temp_52_ret_of_f:4 at 496|temp_53_:1 at 495|temp_54_logic:1 at 494|none:2 at 492|temp_55_ret_of_f:4 at 488|temp_56_:1 at 487|temp_57_logic:1 at 486|none:2 at 484|temp_58_ret_of_f:4 at 480|temp_59_:1 at 479|temp_60_logic:1 at 478|none:2 at 476|temp_61_ret_of_f:4 at 472|temp_62_:1 at 471|temp_63_logic:1 at 470|none:2 at 468|temp_64_ret_of_f:4 at 464|temp_65_:1 at 463|temp_66_logic:1 at 462|none:2 at 460|temp_67_ret_of_f:4 at 456|temp_68_:1 at 455|temp_69_logic:1 at 454|none:2 at 452|temp_70_ret_of_f:4 at 448|temp_71_:1 at 447|temp_72_logic:1 at 446|none:2 at 444|temp_73_ret_of_f:4 at 440|temp_74_:1 at 439|temp_75_logic:1 at 438|none:2 at 436|temp_76_ret_of_f:4 at 432|temp_77_:1 at 431|temp_78_logic:1 at 430|none:2 at 428|temp_79_ret_of_f:4 at 424|temp_80_:1 at 423|temp_81_logic:1 at 422|none:2 at 420|temp_82_ret_of_f:4 at 416|temp_83_:1 at 415|temp_84_logic:1 at 414|none:2 at 412|temp_85_ret_of_f:4 at 408|temp_86_:1 at 407|temp_87_logic:1 at 406|none:2 at 404|temp_88_ret_of_f:4 at 400|temp_89_:1 at 399|temp_90_logic:1 at 398|none:2 at 396|temp_91_arithop:4 at 392|temp_92_cmp:1 at 391|none:3 at 388|temp_93_ret_of_g:4 at 384|temp_94_ret_of_g:4 at 380|temp_95_:1 at 379|temp_96_:1 at 378|temp_97_logic:1 at 377|none:1 at 376|temp_98_ret_of_g:4 at 372|temp_99_:1 at 371|temp_100_logic:1 at 370|none:2 at 368|temp_101_ret_of_g:4 at 364|temp_102_:1 at 363|temp_103_logic:1 at 362|none:2 at 360|temp_104_ret_of_g:4 at 356|temp_105_:1 at 355|temp_106_logic:1 at 354|none:2 at 352|temp_107_ret_of_g:4 at 348|temp_108_:1 at 347|temp_109_logic:1 at 346|none:2 at 344|temp_110_ret_of_g:4 at 340|temp_111_:1 at 339|temp_112_logic:1 at 338|none:2 at 336|temp_113_ret_of_g:4 at 332|temp_114_:1 at 331|temp_115_logic:1 at 330|none:2 at 328|temp_116_ret_of_g:4 at 324|temp_117_:1 at 323|temp_118_logic:1 at 322|none:2 at 320|temp_119_ret_of_g:4 at 316|temp_120_:1 at 315|temp_121_logic:1 at 314|none:2 at 312|temp_122_ret_of_g:4 at 308|temp_123_:1 at 307|temp_124_logic:1 at 306|none:2 at 304|temp_125_ret_of_g:4 at 300|temp_126_:1 at 299|temp_127_logic:1 at 298|none:2 at 296|temp_128_ret_of_g:4 at 292|temp_129_:1 at 291|temp_130_logic:1 at 290|none:2 at 288|temp_131_ret_of_g:4 at 284|temp_132_:1 at 283|temp_133_logic:1 at 282|none:2 at 280|temp_134_ret_of_g:4 at 276|temp_135_:1 at 275|temp_136_logic:1 at 274|none:2 at 272|temp_137_ret_of_g:4 at 268|temp_138_:1 at 267|temp_139_logic:1 at 266|none:2 at 264|temp_140_ret_of_g:4 at 260|temp_141_:1 at 259|temp_142_logic:1 at 258|none:2 at 256|temp_143_ret_of_g:4 at 252|temp_144_:1 at 251|temp_145_logic:1 at 250|none:2 at 248|temp_146_ret_of_g:4 at 244|temp_147_:1 at 243|temp_148_logic:1 at 242|none:2 at 240|temp_149_ret_of_g:4 at 236|temp_150_:1 at 235|temp_151_logic:1 at 234|none:2 at 232|temp_152_arithop:4 at 228|temp_153_arithop:4 at 224|temp_154_ret_of_f:4 at 220|temp_155_cmp:1 at 219|temp_156_:1 at 218|temp_157_logic:1 at 217|none:1 at 216|temp_158_arithop:4 at 212|ans:4 at 208|temp_159_ret_of_h:4 at 204|temp_160_ret_of_h:4 at 200|temp_161_booltrans:1 at 199|temp_162_logicnot:1 at 198|temp_163_:1 at 197|temp_164_logic:1 at 196|temp_165_ret_of_h:4 at 192|temp_166_ret_of_h:4 at 188|temp_167_:1 at 187|temp_168_:1 at 186|temp_169_logic:1 at 185|temp_170_logic:1 at 184|temp_171_ptr2globl:4 at 180|temp_172_arithop:4 at 176|temp_173_ret_of_h:4 at 172|temp_174_booltrans:1 at 171|temp_175_logicnot:1 at 170|none:2 at 168|temp_176_ret_of_h:4 at 164|temp_177_ret_of_h:4 at 160|temp_178_booltrans:1 at 159|temp_179_logicnot:1 at 158|temp_180_:1 at 157|temp_181_logic:1 at 156|temp_182_ret_of_h:4 at 152|temp_183_:1 at 151|temp_184_logic:1 at 150|temp_185_logic:1 at 149|none:1 at 148|temp_186_ret_of_h:4 at 144|temp_187_booltrans:1 at 143|temp_188_logicnot:1 at 142|temp_189_logic:1 at 141|none:1 at 140|temp_190_ptr2globl:4 at 136|temp_191_arithop:4 at 132|temp_192_ret_of_h:4 at 128|temp_193_ret_of_h:4 at 124|temp_194_:1 at 123|temp_195_:1 at 122|temp_196_logic:1 at 121|none:1 at 120|temp_197_ret_of_h:4 at 116|temp_198_booltrans:1 at 115|temp_199_logicnot:1 at 114|temp_200_logic:1 at 113|none:1 at 112|temp_201_ret_of_h:4 at 108|temp_202_booltrans:1 at 107|temp_203_logicnot:1 at 106|temp_204_logic:1 at 105|none:1 at 104|temp_205_ret_of_h:4 at 100|temp_206_booltrans:1 at 99|temp_207_logicnot:1 at 98|temp_208_logic:1 at 97|none:1 at 96|temp_209_ret_of_h:4 at 92|temp_210_booltrans:1 at 91|temp_211_logicnot:1 at 90|none:2 at 88|temp_212_ret_of_h:4 at 84|temp_213_:1 at 83|temp_214_logic:1 at 82|temp_215_logic:1 at 81|none:1 at 80|temp_216_ptr2globl:4 at 76|temp_217_arithop:4 at 72|temp_218_ret_of_h:4 at 68|temp_219_ret_of_h:4 at 64|temp_220_booltrans:1 at 63|temp_221_logicnot:1 at 62|none:2 at 60|temp_222_ret_of_h:4 at 56|temp_223_:1 at 55|temp_224_logic:1 at 54|temp_225_:1 at 53|temp_226_logic:1 at 52|temp_227_ret_of_h:4 at 48|temp_228_:1 at 47|temp_229_logic:1 at 46|none:2 at 44|temp_230_ret_of_h:4 at 40|temp_231_booltrans:1 at 39|temp_232_logicnot:1 at 38|none:2 at 36|temp_233_ret_of_h:4 at 32|temp_234_booltrans:1 at 31|temp_235_logicnot:1 at 30|temp_236_logic:1 at 29|none:1 at 28|temp_237_ret_of_h:4 at 24|temp_238_:1 at 23|temp_239_logic:1 at 22|none:2 at 20|temp_240_ret_of_h:4 at 16|temp_241_:1 at 15|temp_242_logic:1 at 14|temp_243_logic:1 at 13|none:1 at 12|temp_244_ptr2globl:4 at 8|temp_245_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-576
              #                    store to ra_main_0 in mem offset legal
    sd      ra,568(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,560(sp)
    addi    s0,sp,576
              #                          alloc i32 i_51 
              #                          alloc i1 temp_31_cmp_53 
              #                          alloc i32 temp_32_ret_of_f_56 
              #                          alloc i32 temp_33_ret_of_f_56 
              #                          alloc i1 temp_34__56 
              #                          alloc i1 temp_35__56 
              #                          alloc i1 temp_36_logic_56 
              #                          alloc i32 temp_37_ret_of_f_56 
              #                          alloc i1 temp_38__56 
              #                          alloc i1 temp_39_logic_56 
              #                          alloc i32 temp_40_ret_of_f_56 
              #                          alloc i1 temp_41__56 
              #                          alloc i1 temp_42_logic_56 
              #                          alloc i32 temp_43_ret_of_f_56 
              #                          alloc i1 temp_44__56 
              #                          alloc i1 temp_45_logic_56 
              #                          alloc i32 temp_46_ret_of_f_56 
              #                          alloc i1 temp_47__56 
              #                          alloc i1 temp_48_logic_56 
              #                          alloc i32 temp_49_ret_of_f_56 
              #                          alloc i1 temp_50__56 
              #                          alloc i1 temp_51_logic_56 
              #                          alloc i32 temp_52_ret_of_f_56 
              #                          alloc i1 temp_53__56 
              #                          alloc i1 temp_54_logic_56 
              #                          alloc i32 temp_55_ret_of_f_56 
              #                          alloc i1 temp_56__56 
              #                          alloc i1 temp_57_logic_56 
              #                          alloc i32 temp_58_ret_of_f_56 
              #                          alloc i1 temp_59__56 
              #                          alloc i1 temp_60_logic_56 
              #                          alloc i32 temp_61_ret_of_f_56 
              #                          alloc i1 temp_62__56 
              #                          alloc i1 temp_63_logic_56 
              #                          alloc i32 temp_64_ret_of_f_56 
              #                          alloc i1 temp_65__56 
              #                          alloc i1 temp_66_logic_56 
              #                          alloc i32 temp_67_ret_of_f_56 
              #                          alloc i1 temp_68__56 
              #                          alloc i1 temp_69_logic_56 
              #                          alloc i32 temp_70_ret_of_f_56 
              #                          alloc i1 temp_71__56 
              #                          alloc i1 temp_72_logic_56 
              #                          alloc i32 temp_73_ret_of_f_56 
              #                          alloc i1 temp_74__56 
              #                          alloc i1 temp_75_logic_56 
              #                          alloc i32 temp_76_ret_of_f_56 
              #                          alloc i1 temp_77__56 
              #                          alloc i1 temp_78_logic_56 
              #                          alloc i32 temp_79_ret_of_f_56 
              #                          alloc i1 temp_80__56 
              #                          alloc i1 temp_81_logic_56 
              #                          alloc i32 temp_82_ret_of_f_56 
              #                          alloc i1 temp_83__56 
              #                          alloc i1 temp_84_logic_56 
              #                          alloc i32 temp_85_ret_of_f_56 
              #                          alloc i1 temp_86__56 
              #                          alloc i1 temp_87_logic_56 
              #                          alloc i32 temp_88_ret_of_f_56 
              #                          alloc i1 temp_89__56 
              #                          alloc i1 temp_90_logic_56 
              #                          alloc i32 temp_91_arithop_55 
              #                          alloc i1 temp_92_cmp_61 
              #                          alloc i32 temp_93_ret_of_g_64 
              #                          alloc i32 temp_94_ret_of_g_64 
              #                          alloc i1 temp_95__64 
              #                          alloc i1 temp_96__64 
              #                          alloc i1 temp_97_logic_64 
              #                          alloc i32 temp_98_ret_of_g_64 
              #                          alloc i1 temp_99__64 
              #                          alloc i1 temp_100_logic_64 
              #                          alloc i32 temp_101_ret_of_g_64 
              #                          alloc i1 temp_102__64 
              #                          alloc i1 temp_103_logic_64 
              #                          alloc i32 temp_104_ret_of_g_64 
              #                          alloc i1 temp_105__64 
              #                          alloc i1 temp_106_logic_64 
              #                          alloc i32 temp_107_ret_of_g_64 
              #                          alloc i1 temp_108__64 
              #                          alloc i1 temp_109_logic_64 
              #                          alloc i32 temp_110_ret_of_g_64 
              #                          alloc i1 temp_111__64 
              #                          alloc i1 temp_112_logic_64 
              #                          alloc i32 temp_113_ret_of_g_64 
              #                          alloc i1 temp_114__64 
              #                          alloc i1 temp_115_logic_64 
              #                          alloc i32 temp_116_ret_of_g_64 
              #                          alloc i1 temp_117__64 
              #                          alloc i1 temp_118_logic_64 
              #                          alloc i32 temp_119_ret_of_g_64 
              #                          alloc i1 temp_120__64 
              #                          alloc i1 temp_121_logic_64 
              #                          alloc i32 temp_122_ret_of_g_64 
              #                          alloc i1 temp_123__64 
              #                          alloc i1 temp_124_logic_64 
              #                          alloc i32 temp_125_ret_of_g_64 
              #                          alloc i1 temp_126__64 
              #                          alloc i1 temp_127_logic_64 
              #                          alloc i32 temp_128_ret_of_g_64 
              #                          alloc i1 temp_129__64 
              #                          alloc i1 temp_130_logic_64 
              #                          alloc i32 temp_131_ret_of_g_64 
              #                          alloc i1 temp_132__64 
              #                          alloc i1 temp_133_logic_64 
              #                          alloc i32 temp_134_ret_of_g_64 
              #                          alloc i1 temp_135__64 
              #                          alloc i1 temp_136_logic_64 
              #                          alloc i32 temp_137_ret_of_g_64 
              #                          alloc i1 temp_138__64 
              #                          alloc i1 temp_139_logic_64 
              #                          alloc i32 temp_140_ret_of_g_64 
              #                          alloc i1 temp_141__64 
              #                          alloc i1 temp_142_logic_64 
              #                          alloc i32 temp_143_ret_of_g_64 
              #                          alloc i1 temp_144__64 
              #                          alloc i1 temp_145_logic_64 
              #                          alloc i32 temp_146_ret_of_g_64 
              #                          alloc i1 temp_147__64 
              #                          alloc i1 temp_148_logic_64 
              #                          alloc i32 temp_149_ret_of_g_64 
              #                          alloc i1 temp_150__64 
              #                          alloc i1 temp_151_logic_64 
              #                          alloc i32 temp_152_arithop_63 
              #                          alloc i32 temp_153_arithop_69 
              #                          alloc i32 temp_154_ret_of_f_69 
              #                          alloc i1 temp_155_cmp_69 
              #                          alloc i1 temp_156__69 
              #                          alloc i1 temp_157_logic_69 
              #                          alloc i32 temp_158_arithop_51 
              #                          alloc i32 ans_51 
              #                          alloc i32 temp_159_ret_of_h_74 
              #                          alloc i32 temp_160_ret_of_h_74 
              #                          alloc i1 temp_161_booltrans_74 
              #                          alloc i1 temp_162_logicnot_74 
              #                          alloc i1 temp_163__74 
              #                          alloc i1 temp_164_logic_74 
              #                          alloc i32 temp_165_ret_of_h_74 
              #                          alloc i32 temp_166_ret_of_h_74 
              #                          alloc i1 temp_167__74 
              #                          alloc i1 temp_168__74 
              #                          alloc i1 temp_169_logic_74 
              #                          alloc i1 temp_170_logic_74 
              #                          alloc i32 temp_171_ptr2globl_51 
              #                          alloc i32 temp_172_arithop_51 
              #                          alloc i32 temp_173_ret_of_h_79 
              #                          alloc i1 temp_174_booltrans_79 
              #                          alloc i1 temp_175_logicnot_79 
              #                          alloc i32 temp_176_ret_of_h_79 
              #                          alloc i32 temp_177_ret_of_h_79 
              #                          alloc i1 temp_178_booltrans_79 
              #                          alloc i1 temp_179_logicnot_79 
              #                          alloc i1 temp_180__79 
              #                          alloc i1 temp_181_logic_79 
              #                          alloc i32 temp_182_ret_of_h_79 
              #                          alloc i1 temp_183__79 
              #                          alloc i1 temp_184_logic_79 
              #                          alloc i1 temp_185_logic_79 
              #                          alloc i32 temp_186_ret_of_h_79 
              #                          alloc i1 temp_187_booltrans_79 
              #                          alloc i1 temp_188_logicnot_79 
              #                          alloc i1 temp_189_logic_79 
              #                          alloc i32 temp_190_ptr2globl_51 
              #                          alloc i32 temp_191_arithop_51 
              #                          alloc i32 temp_192_ret_of_h_84 
              #                          alloc i32 temp_193_ret_of_h_84 
              #                          alloc i1 temp_194__84 
              #                          alloc i1 temp_195__84 
              #                          alloc i1 temp_196_logic_84 
              #                          alloc i32 temp_197_ret_of_h_84 
              #                          alloc i1 temp_198_booltrans_84 
              #                          alloc i1 temp_199_logicnot_84 
              #                          alloc i1 temp_200_logic_84 
              #                          alloc i32 temp_201_ret_of_h_84 
              #                          alloc i1 temp_202_booltrans_84 
              #                          alloc i1 temp_203_logicnot_84 
              #                          alloc i1 temp_204_logic_84 
              #                          alloc i32 temp_205_ret_of_h_84 
              #                          alloc i1 temp_206_booltrans_84 
              #                          alloc i1 temp_207_logicnot_84 
              #                          alloc i1 temp_208_logic_84 
              #                          alloc i32 temp_209_ret_of_h_84 
              #                          alloc i1 temp_210_booltrans_84 
              #                          alloc i1 temp_211_logicnot_84 
              #                          alloc i32 temp_212_ret_of_h_84 
              #                          alloc i1 temp_213__84 
              #                          alloc i1 temp_214_logic_84 
              #                          alloc i1 temp_215_logic_84 
              #                          alloc i32 temp_216_ptr2globl_51 
              #                          alloc i32 temp_217_arithop_51 
              #                          alloc i32 temp_218_ret_of_h_89 
              #                          alloc i32 temp_219_ret_of_h_89 
              #                          alloc i1 temp_220_booltrans_89 
              #                          alloc i1 temp_221_logicnot_89 
              #                          alloc i32 temp_222_ret_of_h_89 
              #                          alloc i1 temp_223__89 
              #                          alloc i1 temp_224_logic_89 
              #                          alloc i1 temp_225__89 
              #                          alloc i1 temp_226_logic_89 
              #                          alloc i32 temp_227_ret_of_h_89 
              #                          alloc i1 temp_228__89 
              #                          alloc i1 temp_229_logic_89 
              #                          alloc i32 temp_230_ret_of_h_89 
              #                          alloc i1 temp_231_booltrans_89 
              #                          alloc i1 temp_232_logicnot_89 
              #                          alloc i32 temp_233_ret_of_h_89 
              #                          alloc i1 temp_234_booltrans_89 
              #                          alloc i1 temp_235_logicnot_89 
              #                          alloc i1 temp_236_logic_89 
              #                          alloc i32 temp_237_ret_of_h_89 
              #                          alloc i1 temp_238__89 
              #                          alloc i1 temp_239_logic_89 
              #                          alloc i32 temp_240_ret_of_h_89 
              #                          alloc i1 temp_241__89 
              #                          alloc i1 temp_242_logic_89 
              #                          alloc i1 temp_243_logic_89 
              #                          alloc i32 temp_244_ptr2globl_51 
              #                          alloc i32 temp_245_arithop_51 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          i_51 = i32 0_0 
              #                    occupy a0 with i_51
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_54 
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } | 
              #                          label while.head_54: 
.while.head_54:
              #                          new_var temp_31_cmp_53:i1 
              #                          temp_31_cmp_53 = icmp i32 Slt i_51, 20_0 
              #                    occupy a0 with i_51
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a2 with temp_31_cmp_53
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_31_cmp_53, label while.body_54, label while.exit_54 
              #                    occupy a2 with temp_31_cmp_53
              #                    free a2
              #                    occupy a2 with temp_31_cmp_53
    bnez    a2, .while.body_54
              #                    free a2
    j       .while.exit_54
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: temp_31_cmp_53, tracked: true } | 
              #                          label while.body_54: 
.while.body_54:
              #                          new_var temp_32_ret_of_f_56:i32 
              #                          temp_32_ret_of_f_56 =  Call i32 f_0(19_0, i_51) 
              #                    saved register dumping to mem
              #                    store to i_51 in mem offset legal
    sw      a0,556(sp)
              #                    release a0 with i_51
              #                    store to temp_31_cmp_53 in mem offset legal
    sb      a2,555(sp)
              #                    release a2 with temp_31_cmp_53
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_19_0_0
    li      a0, 19
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_32_ret_of_f_56 in mem offset legal
    sw      a0,548(sp)
              #                          new_var temp_33_ret_of_f_56:i32 
              #                          temp_33_ret_of_f_56 =  Call i32 f_0(18_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_32_ret_of_f_56 in mem offset legal
    sw      a0,548(sp)
              #                    release a0 with temp_32_ret_of_f_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_18_0_0
    li      a0, 18
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_33_ret_of_f_56 in mem offset legal
    sw      a0,544(sp)
              #                          new_var temp_34__56:i1 
              #                          temp_34__56 = icmp i32 Ne temp_33_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_33_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_34__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_35__56:i1 
              #                          temp_34__56 = icmp i32 Ne temp_32_ret_of_f_56, 0_0 
              #                    occupy a3 with temp_32_ret_of_f_56
              #                    load from temp_32_ret_of_f_56 in mem


    lw      a3,548(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_34__56
              #                    free a3
              #                    free a1
              #                    free a2
              #                          new_var temp_36_logic_56:i1 
              #                          temp_36_logic_56 = And i1 temp_34__56, temp_35__56 
              #                    occupy a2 with temp_34__56
              #                    occupy a4 with temp_35__56
              #                    load from temp_35__56 in mem
    lb      a4,542(sp)
              #                    occupy a5 with temp_36_logic_56
    and     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          new_var temp_37_ret_of_f_56:i32 
              #                          temp_37_ret_of_f_56 =  Call i32 f_0(17_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_33_ret_of_f_56 in mem offset legal
    sw      a0,544(sp)
              #                    release a0 with temp_33_ret_of_f_56
              #                    store to temp_34__56 in mem offset legal
    sb      a2,543(sp)
              #                    release a2 with temp_34__56
              #                    store to temp_32_ret_of_f_56 in mem offset legal
    sw      a3,548(sp)
              #                    release a3 with temp_32_ret_of_f_56
              #                    store to temp_35__56 in mem offset legal
    sb      a4,542(sp)
              #                    release a4 with temp_35__56
              #                    store to temp_36_logic_56 in mem offset legal
    sb      a5,541(sp)
              #                    release a5 with temp_36_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_17_0_0
    li      a0, 17
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_37_ret_of_f_56 in mem offset legal
    sw      a0,536(sp)
              #                          new_var temp_38__56:i1 
              #                          temp_38__56 = icmp i32 Ne temp_37_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_37_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_38__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_39_logic_56:i1 
              #                          temp_39_logic_56 = And i1 temp_38__56, temp_36_logic_56 
              #                    occupy a2 with temp_38__56
              #                    occupy a3 with temp_36_logic_56
              #                    load from temp_36_logic_56 in mem
    lb      a3,541(sp)
              #                    occupy a4 with temp_39_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_40_ret_of_f_56:i32 
              #                          temp_40_ret_of_f_56 =  Call i32 f_0(16_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_37_ret_of_f_56 in mem offset legal
    sw      a0,536(sp)
              #                    release a0 with temp_37_ret_of_f_56
              #                    store to temp_38__56 in mem offset legal
    sb      a2,535(sp)
              #                    release a2 with temp_38__56
              #                    store to temp_36_logic_56 in mem offset legal
    sb      a3,541(sp)
              #                    release a3 with temp_36_logic_56
              #                    store to temp_39_logic_56 in mem offset legal
    sb      a4,534(sp)
              #                    release a4 with temp_39_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_16_0_0
    li      a0, 16
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_40_ret_of_f_56 in mem offset legal
    sw      a0,528(sp)
              #                          new_var temp_41__56:i1 
              #                          temp_41__56 = icmp i32 Ne temp_40_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_40_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_41__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_42_logic_56:i1 
              #                          temp_42_logic_56 = And i1 temp_41__56, temp_39_logic_56 
              #                    occupy a2 with temp_41__56
              #                    occupy a3 with temp_39_logic_56
              #                    load from temp_39_logic_56 in mem
    lb      a3,534(sp)
              #                    occupy a4 with temp_42_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_43_ret_of_f_56:i32 
              #                          temp_43_ret_of_f_56 =  Call i32 f_0(15_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_40_ret_of_f_56 in mem offset legal
    sw      a0,528(sp)
              #                    release a0 with temp_40_ret_of_f_56
              #                    store to temp_41__56 in mem offset legal
    sb      a2,527(sp)
              #                    release a2 with temp_41__56
              #                    store to temp_39_logic_56 in mem offset legal
    sb      a3,534(sp)
              #                    release a3 with temp_39_logic_56
              #                    store to temp_42_logic_56 in mem offset legal
    sb      a4,526(sp)
              #                    release a4 with temp_42_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_15_0_0
    li      a0, 15
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_43_ret_of_f_56 in mem offset legal
    sw      a0,520(sp)
              #                          new_var temp_44__56:i1 
              #                          temp_44__56 = icmp i32 Ne temp_43_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_43_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_44__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_45_logic_56:i1 
              #                          temp_45_logic_56 = And i1 temp_44__56, temp_42_logic_56 
              #                    occupy a2 with temp_44__56
              #                    occupy a3 with temp_42_logic_56
              #                    load from temp_42_logic_56 in mem
    lb      a3,526(sp)
              #                    occupy a4 with temp_45_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_46_ret_of_f_56:i32 
              #                          temp_46_ret_of_f_56 =  Call i32 f_0(14_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_43_ret_of_f_56 in mem offset legal
    sw      a0,520(sp)
              #                    release a0 with temp_43_ret_of_f_56
              #                    store to temp_44__56 in mem offset legal
    sb      a2,519(sp)
              #                    release a2 with temp_44__56
              #                    store to temp_42_logic_56 in mem offset legal
    sb      a3,526(sp)
              #                    release a3 with temp_42_logic_56
              #                    store to temp_45_logic_56 in mem offset legal
    sb      a4,518(sp)
              #                    release a4 with temp_45_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_14_0_0
    li      a0, 14
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_46_ret_of_f_56 in mem offset legal
    sw      a0,512(sp)
              #                          new_var temp_47__56:i1 
              #                          temp_47__56 = icmp i32 Ne temp_46_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_46_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_47__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_48_logic_56:i1 
              #                          temp_48_logic_56 = And i1 temp_47__56, temp_45_logic_56 
              #                    occupy a2 with temp_47__56
              #                    occupy a3 with temp_45_logic_56
              #                    load from temp_45_logic_56 in mem
    lb      a3,518(sp)
              #                    occupy a4 with temp_48_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_49_ret_of_f_56:i32 
              #                          temp_49_ret_of_f_56 =  Call i32 f_0(13_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_46_ret_of_f_56 in mem offset legal
    sw      a0,512(sp)
              #                    release a0 with temp_46_ret_of_f_56
              #                    store to temp_47__56 in mem offset legal
    sb      a2,511(sp)
              #                    release a2 with temp_47__56
              #                    store to temp_45_logic_56 in mem offset legal
    sb      a3,518(sp)
              #                    release a3 with temp_45_logic_56
              #                    store to temp_48_logic_56 in mem offset legal
    sb      a4,510(sp)
              #                    release a4 with temp_48_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_13_0_0
    li      a0, 13
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_49_ret_of_f_56 in mem offset legal
    sw      a0,504(sp)
              #                          new_var temp_50__56:i1 
              #                          temp_50__56 = icmp i32 Ne temp_49_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_49_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_50__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_51_logic_56:i1 
              #                          temp_51_logic_56 = And i1 temp_50__56, temp_48_logic_56 
              #                    occupy a2 with temp_50__56
              #                    occupy a3 with temp_48_logic_56
              #                    load from temp_48_logic_56 in mem
    lb      a3,510(sp)
              #                    occupy a4 with temp_51_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_52_ret_of_f_56:i32 
              #                          temp_52_ret_of_f_56 =  Call i32 f_0(12_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_49_ret_of_f_56 in mem offset legal
    sw      a0,504(sp)
              #                    release a0 with temp_49_ret_of_f_56
              #                    store to temp_50__56 in mem offset legal
    sb      a2,503(sp)
              #                    release a2 with temp_50__56
              #                    store to temp_48_logic_56 in mem offset legal
    sb      a3,510(sp)
              #                    release a3 with temp_48_logic_56
              #                    store to temp_51_logic_56 in mem offset legal
    sb      a4,502(sp)
              #                    release a4 with temp_51_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_12_0_0
    li      a0, 12
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_52_ret_of_f_56 in mem offset legal
    sw      a0,496(sp)
              #                          new_var temp_53__56:i1 
              #                          temp_53__56 = icmp i32 Ne temp_52_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_52_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_53__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_54_logic_56:i1 
              #                          temp_54_logic_56 = And i1 temp_53__56, temp_51_logic_56 
              #                    occupy a2 with temp_53__56
              #                    occupy a3 with temp_51_logic_56
              #                    load from temp_51_logic_56 in mem
    lb      a3,502(sp)
              #                    occupy a4 with temp_54_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_55_ret_of_f_56:i32 
              #                          temp_55_ret_of_f_56 =  Call i32 f_0(11_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_52_ret_of_f_56 in mem offset legal
    sw      a0,496(sp)
              #                    release a0 with temp_52_ret_of_f_56
              #                    store to temp_53__56 in mem offset legal
    sb      a2,495(sp)
              #                    release a2 with temp_53__56
              #                    store to temp_51_logic_56 in mem offset legal
    sb      a3,502(sp)
              #                    release a3 with temp_51_logic_56
              #                    store to temp_54_logic_56 in mem offset legal
    sb      a4,494(sp)
              #                    release a4 with temp_54_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_11_0_0
    li      a0, 11
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_55_ret_of_f_56 in mem offset legal
    sw      a0,488(sp)
              #                          new_var temp_56__56:i1 
              #                          temp_56__56 = icmp i32 Ne temp_55_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_55_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_56__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_57_logic_56:i1 
              #                          temp_57_logic_56 = And i1 temp_56__56, temp_54_logic_56 
              #                    occupy a2 with temp_56__56
              #                    occupy a3 with temp_54_logic_56
              #                    load from temp_54_logic_56 in mem
    lb      a3,494(sp)
              #                    occupy a4 with temp_57_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_58_ret_of_f_56:i32 
              #                          temp_58_ret_of_f_56 =  Call i32 f_0(10_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_55_ret_of_f_56 in mem offset legal
    sw      a0,488(sp)
              #                    release a0 with temp_55_ret_of_f_56
              #                    store to temp_56__56 in mem offset legal
    sb      a2,487(sp)
              #                    release a2 with temp_56__56
              #                    store to temp_54_logic_56 in mem offset legal
    sb      a3,494(sp)
              #                    release a3 with temp_54_logic_56
              #                    store to temp_57_logic_56 in mem offset legal
    sb      a4,486(sp)
              #                    release a4 with temp_57_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_58_ret_of_f_56 in mem offset legal
    sw      a0,480(sp)
              #                          new_var temp_59__56:i1 
              #                          temp_59__56 = icmp i32 Ne temp_58_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_58_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_59__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_60_logic_56:i1 
              #                          temp_60_logic_56 = And i1 temp_59__56, temp_57_logic_56 
              #                    occupy a2 with temp_59__56
              #                    occupy a3 with temp_57_logic_56
              #                    load from temp_57_logic_56 in mem
    lb      a3,486(sp)
              #                    occupy a4 with temp_60_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_61_ret_of_f_56:i32 
              #                          temp_61_ret_of_f_56 =  Call i32 f_0(9_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_58_ret_of_f_56 in mem offset legal
    sw      a0,480(sp)
              #                    release a0 with temp_58_ret_of_f_56
              #                    store to temp_59__56 in mem offset legal
    sb      a2,479(sp)
              #                    release a2 with temp_59__56
              #                    store to temp_57_logic_56 in mem offset legal
    sb      a3,486(sp)
              #                    release a3 with temp_57_logic_56
              #                    store to temp_60_logic_56 in mem offset legal
    sb      a4,478(sp)
              #                    release a4 with temp_60_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_9_0_0
    li      a0, 9
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_61_ret_of_f_56 in mem offset legal
    sw      a0,472(sp)
              #                          new_var temp_62__56:i1 
              #                          temp_62__56 = icmp i32 Ne temp_61_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_61_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_62__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_63_logic_56:i1 
              #                          temp_63_logic_56 = And i1 temp_62__56, temp_60_logic_56 
              #                    occupy a2 with temp_62__56
              #                    occupy a3 with temp_60_logic_56
              #                    load from temp_60_logic_56 in mem
    lb      a3,478(sp)
              #                    occupy a4 with temp_63_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_64_ret_of_f_56:i32 
              #                          temp_64_ret_of_f_56 =  Call i32 f_0(8_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_61_ret_of_f_56 in mem offset legal
    sw      a0,472(sp)
              #                    release a0 with temp_61_ret_of_f_56
              #                    store to temp_62__56 in mem offset legal
    sb      a2,471(sp)
              #                    release a2 with temp_62__56
              #                    store to temp_60_logic_56 in mem offset legal
    sb      a3,478(sp)
              #                    release a3 with temp_60_logic_56
              #                    store to temp_63_logic_56 in mem offset legal
    sb      a4,470(sp)
              #                    release a4 with temp_63_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_64_ret_of_f_56 in mem offset legal
    sw      a0,464(sp)
              #                          new_var temp_65__56:i1 
              #                          temp_65__56 = icmp i32 Ne temp_64_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_64_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_65__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_66_logic_56:i1 
              #                          temp_66_logic_56 = And i1 temp_65__56, temp_63_logic_56 
              #                    occupy a2 with temp_65__56
              #                    occupy a3 with temp_63_logic_56
              #                    load from temp_63_logic_56 in mem
    lb      a3,470(sp)
              #                    occupy a4 with temp_66_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_67_ret_of_f_56:i32 
              #                          temp_67_ret_of_f_56 =  Call i32 f_0(7_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_64_ret_of_f_56 in mem offset legal
    sw      a0,464(sp)
              #                    release a0 with temp_64_ret_of_f_56
              #                    store to temp_65__56 in mem offset legal
    sb      a2,463(sp)
              #                    release a2 with temp_65__56
              #                    store to temp_63_logic_56 in mem offset legal
    sb      a3,470(sp)
              #                    release a3 with temp_63_logic_56
              #                    store to temp_66_logic_56 in mem offset legal
    sb      a4,462(sp)
              #                    release a4 with temp_66_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_67_ret_of_f_56 in mem offset legal
    sw      a0,456(sp)
              #                          new_var temp_68__56:i1 
              #                          temp_68__56 = icmp i32 Ne temp_67_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_67_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_68__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_69_logic_56:i1 
              #                          temp_69_logic_56 = And i1 temp_68__56, temp_66_logic_56 
              #                    occupy a2 with temp_68__56
              #                    occupy a3 with temp_66_logic_56
              #                    load from temp_66_logic_56 in mem
    lb      a3,462(sp)
              #                    occupy a4 with temp_69_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_70_ret_of_f_56:i32 
              #                          temp_70_ret_of_f_56 =  Call i32 f_0(6_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_67_ret_of_f_56 in mem offset legal
    sw      a0,456(sp)
              #                    release a0 with temp_67_ret_of_f_56
              #                    store to temp_68__56 in mem offset legal
    sb      a2,455(sp)
              #                    release a2 with temp_68__56
              #                    store to temp_66_logic_56 in mem offset legal
    sb      a3,462(sp)
              #                    release a3 with temp_66_logic_56
              #                    store to temp_69_logic_56 in mem offset legal
    sb      a4,454(sp)
              #                    release a4 with temp_69_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_70_ret_of_f_56 in mem offset legal
    sw      a0,448(sp)
              #                          new_var temp_71__56:i1 
              #                          temp_71__56 = icmp i32 Ne temp_70_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_70_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_71__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_72_logic_56:i1 
              #                          temp_72_logic_56 = And i1 temp_71__56, temp_69_logic_56 
              #                    occupy a2 with temp_71__56
              #                    occupy a3 with temp_69_logic_56
              #                    load from temp_69_logic_56 in mem
    lb      a3,454(sp)
              #                    occupy a4 with temp_72_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_73_ret_of_f_56:i32 
              #                          temp_73_ret_of_f_56 =  Call i32 f_0(5_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_70_ret_of_f_56 in mem offset legal
    sw      a0,448(sp)
              #                    release a0 with temp_70_ret_of_f_56
              #                    store to temp_71__56 in mem offset legal
    sb      a2,447(sp)
              #                    release a2 with temp_71__56
              #                    store to temp_69_logic_56 in mem offset legal
    sb      a3,454(sp)
              #                    release a3 with temp_69_logic_56
              #                    store to temp_72_logic_56 in mem offset legal
    sb      a4,446(sp)
              #                    release a4 with temp_72_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_73_ret_of_f_56 in mem offset legal
    sw      a0,440(sp)
              #                          new_var temp_74__56:i1 
              #                          temp_74__56 = icmp i32 Ne temp_73_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_73_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_74__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_75_logic_56:i1 
              #                          temp_75_logic_56 = And i1 temp_74__56, temp_72_logic_56 
              #                    occupy a2 with temp_74__56
              #                    occupy a3 with temp_72_logic_56
              #                    load from temp_72_logic_56 in mem
    lb      a3,446(sp)
              #                    occupy a4 with temp_75_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_76_ret_of_f_56:i32 
              #                          temp_76_ret_of_f_56 =  Call i32 f_0(4_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_73_ret_of_f_56 in mem offset legal
    sw      a0,440(sp)
              #                    release a0 with temp_73_ret_of_f_56
              #                    store to temp_74__56 in mem offset legal
    sb      a2,439(sp)
              #                    release a2 with temp_74__56
              #                    store to temp_72_logic_56 in mem offset legal
    sb      a3,446(sp)
              #                    release a3 with temp_72_logic_56
              #                    store to temp_75_logic_56 in mem offset legal
    sb      a4,438(sp)
              #                    release a4 with temp_75_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_76_ret_of_f_56 in mem offset legal
    sw      a0,432(sp)
              #                          new_var temp_77__56:i1 
              #                          temp_77__56 = icmp i32 Ne temp_76_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_76_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_77__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_78_logic_56:i1 
              #                          temp_78_logic_56 = And i1 temp_77__56, temp_75_logic_56 
              #                    occupy a2 with temp_77__56
              #                    occupy a3 with temp_75_logic_56
              #                    load from temp_75_logic_56 in mem
    lb      a3,438(sp)
              #                    occupy a4 with temp_78_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_79_ret_of_f_56:i32 
              #                          temp_79_ret_of_f_56 =  Call i32 f_0(3_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_76_ret_of_f_56 in mem offset legal
    sw      a0,432(sp)
              #                    release a0 with temp_76_ret_of_f_56
              #                    store to temp_77__56 in mem offset legal
    sb      a2,431(sp)
              #                    release a2 with temp_77__56
              #                    store to temp_75_logic_56 in mem offset legal
    sb      a3,438(sp)
              #                    release a3 with temp_75_logic_56
              #                    store to temp_78_logic_56 in mem offset legal
    sb      a4,430(sp)
              #                    release a4 with temp_78_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_79_ret_of_f_56 in mem offset legal
    sw      a0,424(sp)
              #                          new_var temp_80__56:i1 
              #                          temp_80__56 = icmp i32 Ne temp_79_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_79_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_80__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_81_logic_56:i1 
              #                          temp_81_logic_56 = And i1 temp_80__56, temp_78_logic_56 
              #                    occupy a2 with temp_80__56
              #                    occupy a3 with temp_78_logic_56
              #                    load from temp_78_logic_56 in mem
    lb      a3,430(sp)
              #                    occupy a4 with temp_81_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_82_ret_of_f_56:i32 
              #                          temp_82_ret_of_f_56 =  Call i32 f_0(2_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_79_ret_of_f_56 in mem offset legal
    sw      a0,424(sp)
              #                    release a0 with temp_79_ret_of_f_56
              #                    store to temp_80__56 in mem offset legal
    sb      a2,423(sp)
              #                    release a2 with temp_80__56
              #                    store to temp_78_logic_56 in mem offset legal
    sb      a3,430(sp)
              #                    release a3 with temp_78_logic_56
              #                    store to temp_81_logic_56 in mem offset legal
    sb      a4,422(sp)
              #                    release a4 with temp_81_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_82_ret_of_f_56 in mem offset legal
    sw      a0,416(sp)
              #                          new_var temp_83__56:i1 
              #                          temp_83__56 = icmp i32 Ne temp_82_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_82_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_83__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_84_logic_56:i1 
              #                          temp_84_logic_56 = And i1 temp_83__56, temp_81_logic_56 
              #                    occupy a2 with temp_83__56
              #                    occupy a3 with temp_81_logic_56
              #                    load from temp_81_logic_56 in mem
    lb      a3,422(sp)
              #                    occupy a4 with temp_84_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_85_ret_of_f_56:i32 
              #                          temp_85_ret_of_f_56 =  Call i32 f_0(1_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_82_ret_of_f_56 in mem offset legal
    sw      a0,416(sp)
              #                    release a0 with temp_82_ret_of_f_56
              #                    store to temp_83__56 in mem offset legal
    sb      a2,415(sp)
              #                    release a2 with temp_83__56
              #                    store to temp_81_logic_56 in mem offset legal
    sb      a3,422(sp)
              #                    release a3 with temp_81_logic_56
              #                    store to temp_84_logic_56 in mem offset legal
    sb      a4,414(sp)
              #                    release a4 with temp_84_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_85_ret_of_f_56 in mem offset legal
    sw      a0,408(sp)
              #                          new_var temp_86__56:i1 
              #                          temp_86__56 = icmp i32 Ne temp_85_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_85_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_86__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_87_logic_56:i1 
              #                          temp_87_logic_56 = And i1 temp_86__56, temp_84_logic_56 
              #                    occupy a2 with temp_86__56
              #                    occupy a3 with temp_84_logic_56
              #                    load from temp_84_logic_56 in mem
    lb      a3,414(sp)
              #                    occupy a4 with temp_87_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_88_ret_of_f_56:i32 
              #                          temp_88_ret_of_f_56 =  Call i32 f_0(0_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_85_ret_of_f_56 in mem offset legal
    sw      a0,408(sp)
              #                    release a0 with temp_85_ret_of_f_56
              #                    store to temp_86__56 in mem offset legal
    sb      a2,407(sp)
              #                    release a2 with temp_86__56
              #                    store to temp_84_logic_56 in mem offset legal
    sb      a3,414(sp)
              #                    release a3 with temp_84_logic_56
              #                    store to temp_87_logic_56 in mem offset legal
    sb      a4,406(sp)
              #                    release a4 with temp_87_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_88_ret_of_f_56 in mem offset legal
    sw      a0,400(sp)
              #                          new_var temp_89__56:i1 
              #                          temp_89__56 = icmp i32 Ne temp_88_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_88_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_89__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_90_logic_56:i1 
              #                          temp_90_logic_56 = And i1 temp_89__56, temp_87_logic_56 
              #                    occupy a2 with temp_89__56
              #                    occupy a3 with temp_87_logic_56
              #                    load from temp_87_logic_56 in mem
    lb      a3,406(sp)
              #                    occupy a4 with temp_90_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_90_logic_56, label branch_true_57, label branch_false_57 
              #                    occupy a4 with temp_90_logic_56
              #                    free a4
              #                    occupy a4 with temp_90_logic_56
    bnez    a4, .branch_true_57
              #                    free a4
    j       .branch_false_57
              #                    regtab     a0:Freed { symidx: temp_88_ret_of_f_56, tracked: true } |     a2:Freed { symidx: temp_89__56, tracked: true } |     a3:Freed { symidx: temp_87_logic_56, tracked: true } |     a4:Freed { symidx: temp_90_logic_56, tracked: true } | 
              #                          label branch_true_57: 
.branch_true_57:
              #                          jump label: branch_false_57 
    j       .branch_false_57
              #                    regtab     a0:Freed { symidx: temp_88_ret_of_f_56, tracked: true } |     a2:Freed { symidx: temp_89__56, tracked: true } |     a3:Freed { symidx: temp_87_logic_56, tracked: true } |     a4:Freed { symidx: temp_90_logic_56, tracked: true } | 
              #                          label branch_false_57: 
.branch_false_57:
              #                    regtab     a0:Freed { symidx: temp_88_ret_of_f_56, tracked: true } |     a2:Freed { symidx: temp_89__56, tracked: true } |     a3:Freed { symidx: temp_87_logic_56, tracked: true } |     a4:Freed { symidx: temp_90_logic_56, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_91_arithop_55:i32 
              #                          temp_91_arithop_55 = Add i32 i_51, 1_0 
              #                    occupy a1 with i_51
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_91_arithop_55
    add     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                          i_51 = i32 temp_91_arithop_55 
              #                    occupy a6 with temp_91_arithop_55
              #                    occupy a1 with i_51
    mv      a1, a6
              #                    free a6
              #                    free a1
              #                          jump label: while.head_54 
              #                    store to temp_87_logic_56 in mem offset legal
    sb      a3,406(sp)
              #                    release a3 with temp_87_logic_56
              #                    store to temp_90_logic_56 in mem offset legal
    sb      a4,398(sp)
              #                    release a4 with temp_90_logic_56
              #                    store to temp_91_arithop_55 in mem offset legal
    sw      a6,392(sp)
              #                    release a6 with temp_91_arithop_55
              #                    store to temp_88_ret_of_f_56 in mem offset legal
    sw      a0,400(sp)
              #                    release a0 with temp_88_ret_of_f_56
              #                    store to i_51 in mem offset legal
    sw      a1,556(sp)
              #                    release a1 with i_51
              #                    store to temp_89__56 in mem offset legal
    sb      a2,399(sp)
              #                    release a2 with temp_89__56
              #                    occupy a0 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a0,556(sp)
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: temp_31_cmp_53, tracked: true } | 
              #                          label while.exit_54: 
.while.exit_54:
              #                          i_51 = i32 0_0 
              #                    occupy a0 with i_51
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: temp_31_cmp_53, tracked: true } | 
              #                          label while.head_62: 
.while.head_62:
              #                          new_var temp_92_cmp_61:i1 
              #                          temp_92_cmp_61 = icmp i32 Slt i_51, 20_0 
              #                    occupy a0 with i_51
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a3 with temp_92_cmp_61
    slt     a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                          br i1 temp_92_cmp_61, label while.body_62, label while.exit_62 
              #                    occupy a3 with temp_92_cmp_61
              #                    free a3
              #                    occupy a3 with temp_92_cmp_61
    bnez    a3, .while.body_62
              #                    free a3
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: temp_31_cmp_53, tracked: true } |     a3:Freed { symidx: temp_92_cmp_61, tracked: true } | 
              #                          label while.body_62: 
.while.body_62:
              #                          new_var temp_93_ret_of_g_64:i32 
              #                          temp_93_ret_of_g_64 =  Call i32 g_0(19_0, i_51) 
              #                    saved register dumping to mem
              #                    store to i_51 in mem offset legal
    sw      a0,556(sp)
              #                    release a0 with i_51
              #                    store to temp_31_cmp_53 in mem offset legal
    sb      a2,555(sp)
              #                    release a2 with temp_31_cmp_53
              #                    store to temp_92_cmp_61 in mem offset legal
    sb      a3,391(sp)
              #                    release a3 with temp_92_cmp_61
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_19_0_0
    li      a0, 19
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_93_ret_of_g_64 in mem offset legal
    sw      a0,384(sp)
              #                          new_var temp_94_ret_of_g_64:i32 
              #                          temp_94_ret_of_g_64 =  Call i32 g_0(18_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_93_ret_of_g_64 in mem offset legal
    sw      a0,384(sp)
              #                    release a0 with temp_93_ret_of_g_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_18_0_0
    li      a0, 18
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_94_ret_of_g_64 in mem offset legal
    sw      a0,380(sp)
              #                          new_var temp_95__64:i1 
              #                          temp_95__64 = icmp i32 Ne temp_94_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_94_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_95__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_96__64:i1 
              #                          temp_95__64 = icmp i32 Ne temp_93_ret_of_g_64, 0_0 
              #                    occupy a3 with temp_93_ret_of_g_64
              #                    load from temp_93_ret_of_g_64 in mem


    lw      a3,384(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_95__64
              #                    free a3
              #                    free a1
              #                    free a2
              #                          new_var temp_97_logic_64:i1 
              #                          temp_97_logic_64 = Or i1 temp_95__64, temp_96__64 
              #                    occupy a2 with temp_95__64
              #                    occupy a4 with temp_96__64
              #                    load from temp_96__64 in mem
    lb      a4,378(sp)
              #                    occupy a4 with temp_96__64
              #                    free a2
              #                    free a4
              #                    free a4
              #                          new_var temp_98_ret_of_g_64:i32 
              #                          temp_98_ret_of_g_64 =  Call i32 g_0(17_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_94_ret_of_g_64 in mem offset legal
    sw      a0,380(sp)
              #                    release a0 with temp_94_ret_of_g_64
              #                    store to temp_95__64 in mem offset legal
    sb      a2,379(sp)
              #                    release a2 with temp_95__64
              #                    store to temp_93_ret_of_g_64 in mem offset legal
    sw      a3,384(sp)
              #                    release a3 with temp_93_ret_of_g_64
              #                    store to temp_96__64 in mem offset legal
    sb      a4,378(sp)
              #                    release a4 with temp_96__64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_17_0_0
    li      a0, 17
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_98_ret_of_g_64 in mem offset legal
    sw      a0,372(sp)
              #                          new_var temp_99__64:i1 
              #                          temp_99__64 = icmp i32 Ne temp_98_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_98_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_99__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_100_logic_64:i1 
              #                          temp_100_logic_64 = Or i1 temp_99__64, temp_97_logic_64 
              #                    occupy a2 with temp_99__64
              #                    occupy a3 with temp_97_logic_64
              #                    load from temp_97_logic_64 in mem
    lb      a3,377(sp)
              #                    occupy a3 with temp_97_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_101_ret_of_g_64:i32 
              #                          temp_101_ret_of_g_64 =  Call i32 g_0(16_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_98_ret_of_g_64 in mem offset legal
    sw      a0,372(sp)
              #                    release a0 with temp_98_ret_of_g_64
              #                    store to temp_99__64 in mem offset legal
    sb      a2,371(sp)
              #                    release a2 with temp_99__64
              #                    store to temp_97_logic_64 in mem offset legal
    sb      a3,377(sp)
              #                    release a3 with temp_97_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_16_0_0
    li      a0, 16
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_101_ret_of_g_64 in mem offset legal
    sw      a0,364(sp)
              #                          new_var temp_102__64:i1 
              #                          temp_102__64 = icmp i32 Ne temp_101_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_101_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_102__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_103_logic_64:i1 
              #                          temp_103_logic_64 = Or i1 temp_102__64, temp_100_logic_64 
              #                    occupy a2 with temp_102__64
              #                    occupy a3 with temp_100_logic_64
              #                    load from temp_100_logic_64 in mem
    lb      a3,370(sp)
              #                    occupy a3 with temp_100_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_104_ret_of_g_64:i32 
              #                          temp_104_ret_of_g_64 =  Call i32 g_0(15_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_101_ret_of_g_64 in mem offset legal
    sw      a0,364(sp)
              #                    release a0 with temp_101_ret_of_g_64
              #                    store to temp_102__64 in mem offset legal
    sb      a2,363(sp)
              #                    release a2 with temp_102__64
              #                    store to temp_100_logic_64 in mem offset legal
    sb      a3,370(sp)
              #                    release a3 with temp_100_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_15_0_0
    li      a0, 15
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_104_ret_of_g_64 in mem offset legal
    sw      a0,356(sp)
              #                          new_var temp_105__64:i1 
              #                          temp_105__64 = icmp i32 Ne temp_104_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_104_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_105__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_106_logic_64:i1 
              #                          temp_106_logic_64 = Or i1 temp_105__64, temp_103_logic_64 
              #                    occupy a2 with temp_105__64
              #                    occupy a3 with temp_103_logic_64
              #                    load from temp_103_logic_64 in mem
    lb      a3,362(sp)
              #                    occupy a3 with temp_103_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_107_ret_of_g_64:i32 
              #                          temp_107_ret_of_g_64 =  Call i32 g_0(14_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_104_ret_of_g_64 in mem offset legal
    sw      a0,356(sp)
              #                    release a0 with temp_104_ret_of_g_64
              #                    store to temp_105__64 in mem offset legal
    sb      a2,355(sp)
              #                    release a2 with temp_105__64
              #                    store to temp_103_logic_64 in mem offset legal
    sb      a3,362(sp)
              #                    release a3 with temp_103_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_14_0_0
    li      a0, 14
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_107_ret_of_g_64 in mem offset legal
    sw      a0,348(sp)
              #                          new_var temp_108__64:i1 
              #                          temp_108__64 = icmp i32 Ne temp_107_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_107_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_108__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_109_logic_64:i1 
              #                          temp_109_logic_64 = Or i1 temp_108__64, temp_106_logic_64 
              #                    occupy a2 with temp_108__64
              #                    occupy a3 with temp_106_logic_64
              #                    load from temp_106_logic_64 in mem
    lb      a3,354(sp)
              #                    occupy a3 with temp_106_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_110_ret_of_g_64:i32 
              #                          temp_110_ret_of_g_64 =  Call i32 g_0(13_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_107_ret_of_g_64 in mem offset legal
    sw      a0,348(sp)
              #                    release a0 with temp_107_ret_of_g_64
              #                    store to temp_108__64 in mem offset legal
    sb      a2,347(sp)
              #                    release a2 with temp_108__64
              #                    store to temp_106_logic_64 in mem offset legal
    sb      a3,354(sp)
              #                    release a3 with temp_106_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_13_0_0
    li      a0, 13
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_110_ret_of_g_64 in mem offset legal
    sw      a0,340(sp)
              #                          new_var temp_111__64:i1 
              #                          temp_111__64 = icmp i32 Ne temp_110_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_110_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_111__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_112_logic_64:i1 
              #                          temp_112_logic_64 = Or i1 temp_111__64, temp_109_logic_64 
              #                    occupy a2 with temp_111__64
              #                    occupy a3 with temp_109_logic_64
              #                    load from temp_109_logic_64 in mem
    lb      a3,346(sp)
              #                    occupy a3 with temp_109_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_113_ret_of_g_64:i32 
              #                          temp_113_ret_of_g_64 =  Call i32 g_0(12_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_110_ret_of_g_64 in mem offset legal
    sw      a0,340(sp)
              #                    release a0 with temp_110_ret_of_g_64
              #                    store to temp_111__64 in mem offset legal
    sb      a2,339(sp)
              #                    release a2 with temp_111__64
              #                    store to temp_109_logic_64 in mem offset legal
    sb      a3,346(sp)
              #                    release a3 with temp_109_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_12_0_0
    li      a0, 12
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_113_ret_of_g_64 in mem offset legal
    sw      a0,332(sp)
              #                          new_var temp_114__64:i1 
              #                          temp_114__64 = icmp i32 Ne temp_113_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_113_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_114__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_115_logic_64:i1 
              #                          temp_115_logic_64 = Or i1 temp_114__64, temp_112_logic_64 
              #                    occupy a2 with temp_114__64
              #                    occupy a3 with temp_112_logic_64
              #                    load from temp_112_logic_64 in mem
    lb      a3,338(sp)
              #                    occupy a3 with temp_112_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_116_ret_of_g_64:i32 
              #                          temp_116_ret_of_g_64 =  Call i32 g_0(11_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_113_ret_of_g_64 in mem offset legal
    sw      a0,332(sp)
              #                    release a0 with temp_113_ret_of_g_64
              #                    store to temp_114__64 in mem offset legal
    sb      a2,331(sp)
              #                    release a2 with temp_114__64
              #                    store to temp_112_logic_64 in mem offset legal
    sb      a3,338(sp)
              #                    release a3 with temp_112_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_11_0_0
    li      a0, 11
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_116_ret_of_g_64 in mem offset legal
    sw      a0,324(sp)
              #                          new_var temp_117__64:i1 
              #                          temp_117__64 = icmp i32 Ne temp_116_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_116_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_117__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_118_logic_64:i1 
              #                          temp_118_logic_64 = Or i1 temp_117__64, temp_115_logic_64 
              #                    occupy a2 with temp_117__64
              #                    occupy a3 with temp_115_logic_64
              #                    load from temp_115_logic_64 in mem
    lb      a3,330(sp)
              #                    occupy a3 with temp_115_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_119_ret_of_g_64:i32 
              #                          temp_119_ret_of_g_64 =  Call i32 g_0(10_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_116_ret_of_g_64 in mem offset legal
    sw      a0,324(sp)
              #                    release a0 with temp_116_ret_of_g_64
              #                    store to temp_117__64 in mem offset legal
    sb      a2,323(sp)
              #                    release a2 with temp_117__64
              #                    store to temp_115_logic_64 in mem offset legal
    sb      a3,330(sp)
              #                    release a3 with temp_115_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_119_ret_of_g_64 in mem offset legal
    sw      a0,316(sp)
              #                          new_var temp_120__64:i1 
              #                          temp_120__64 = icmp i32 Ne temp_119_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_119_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_120__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_121_logic_64:i1 
              #                          temp_121_logic_64 = Or i1 temp_120__64, temp_118_logic_64 
              #                    occupy a2 with temp_120__64
              #                    occupy a3 with temp_118_logic_64
              #                    load from temp_118_logic_64 in mem
    lb      a3,322(sp)
              #                    occupy a3 with temp_118_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_122_ret_of_g_64:i32 
              #                          temp_122_ret_of_g_64 =  Call i32 g_0(9_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_119_ret_of_g_64 in mem offset legal
    sw      a0,316(sp)
              #                    release a0 with temp_119_ret_of_g_64
              #                    store to temp_120__64 in mem offset legal
    sb      a2,315(sp)
              #                    release a2 with temp_120__64
              #                    store to temp_118_logic_64 in mem offset legal
    sb      a3,322(sp)
              #                    release a3 with temp_118_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_9_0_0
    li      a0, 9
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_122_ret_of_g_64 in mem offset legal
    sw      a0,308(sp)
              #                          new_var temp_123__64:i1 
              #                          temp_123__64 = icmp i32 Ne temp_122_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_122_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_123__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_124_logic_64:i1 
              #                          temp_124_logic_64 = Or i1 temp_123__64, temp_121_logic_64 
              #                    occupy a2 with temp_123__64
              #                    occupy a3 with temp_121_logic_64
              #                    load from temp_121_logic_64 in mem
    lb      a3,314(sp)
              #                    occupy a3 with temp_121_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_125_ret_of_g_64:i32 
              #                          temp_125_ret_of_g_64 =  Call i32 g_0(8_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_122_ret_of_g_64 in mem offset legal
    sw      a0,308(sp)
              #                    release a0 with temp_122_ret_of_g_64
              #                    store to temp_123__64 in mem offset legal
    sb      a2,307(sp)
              #                    release a2 with temp_123__64
              #                    store to temp_121_logic_64 in mem offset legal
    sb      a3,314(sp)
              #                    release a3 with temp_121_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_125_ret_of_g_64 in mem offset legal
    sw      a0,300(sp)
              #                          new_var temp_126__64:i1 
              #                          temp_126__64 = icmp i32 Ne temp_125_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_125_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_126__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_127_logic_64:i1 
              #                          temp_127_logic_64 = Or i1 temp_126__64, temp_124_logic_64 
              #                    occupy a2 with temp_126__64
              #                    occupy a3 with temp_124_logic_64
              #                    load from temp_124_logic_64 in mem
    lb      a3,306(sp)
              #                    occupy a3 with temp_124_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_128_ret_of_g_64:i32 
              #                          temp_128_ret_of_g_64 =  Call i32 g_0(7_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_125_ret_of_g_64 in mem offset legal
    sw      a0,300(sp)
              #                    release a0 with temp_125_ret_of_g_64
              #                    store to temp_126__64 in mem offset legal
    sb      a2,299(sp)
              #                    release a2 with temp_126__64
              #                    store to temp_124_logic_64 in mem offset legal
    sb      a3,306(sp)
              #                    release a3 with temp_124_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_128_ret_of_g_64 in mem offset legal
    sw      a0,292(sp)
              #                          new_var temp_129__64:i1 
              #                          temp_129__64 = icmp i32 Ne temp_128_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_128_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_129__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_130_logic_64:i1 
              #                          temp_130_logic_64 = Or i1 temp_129__64, temp_127_logic_64 
              #                    occupy a2 with temp_129__64
              #                    occupy a3 with temp_127_logic_64
              #                    load from temp_127_logic_64 in mem
    lb      a3,298(sp)
              #                    occupy a3 with temp_127_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_131_ret_of_g_64:i32 
              #                          temp_131_ret_of_g_64 =  Call i32 g_0(6_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_128_ret_of_g_64 in mem offset legal
    sw      a0,292(sp)
              #                    release a0 with temp_128_ret_of_g_64
              #                    store to temp_129__64 in mem offset legal
    sb      a2,291(sp)
              #                    release a2 with temp_129__64
              #                    store to temp_127_logic_64 in mem offset legal
    sb      a3,298(sp)
              #                    release a3 with temp_127_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_131_ret_of_g_64 in mem offset legal
    sw      a0,284(sp)
              #                          new_var temp_132__64:i1 
              #                          temp_132__64 = icmp i32 Ne temp_131_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_131_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_132__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_133_logic_64:i1 
              #                          temp_133_logic_64 = Or i1 temp_132__64, temp_130_logic_64 
              #                    occupy a2 with temp_132__64
              #                    occupy a3 with temp_130_logic_64
              #                    load from temp_130_logic_64 in mem
    lb      a3,290(sp)
              #                    occupy a3 with temp_130_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_134_ret_of_g_64:i32 
              #                          temp_134_ret_of_g_64 =  Call i32 g_0(5_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_131_ret_of_g_64 in mem offset legal
    sw      a0,284(sp)
              #                    release a0 with temp_131_ret_of_g_64
              #                    store to temp_132__64 in mem offset legal
    sb      a2,283(sp)
              #                    release a2 with temp_132__64
              #                    store to temp_130_logic_64 in mem offset legal
    sb      a3,290(sp)
              #                    release a3 with temp_130_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_134_ret_of_g_64 in mem offset legal
    sw      a0,276(sp)
              #                          new_var temp_135__64:i1 
              #                          temp_135__64 = icmp i32 Ne temp_134_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_134_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_135__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_136_logic_64:i1 
              #                          temp_136_logic_64 = Or i1 temp_135__64, temp_133_logic_64 
              #                    occupy a2 with temp_135__64
              #                    occupy a3 with temp_133_logic_64
              #                    load from temp_133_logic_64 in mem
    lb      a3,282(sp)
              #                    occupy a3 with temp_133_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_137_ret_of_g_64:i32 
              #                          temp_137_ret_of_g_64 =  Call i32 g_0(4_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_134_ret_of_g_64 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with temp_134_ret_of_g_64
              #                    store to temp_135__64 in mem offset legal
    sb      a2,275(sp)
              #                    release a2 with temp_135__64
              #                    store to temp_133_logic_64 in mem offset legal
    sb      a3,282(sp)
              #                    release a3 with temp_133_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_137_ret_of_g_64 in mem offset legal
    sw      a0,268(sp)
              #                          new_var temp_138__64:i1 
              #                          temp_138__64 = icmp i32 Ne temp_137_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_137_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_138__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_139_logic_64:i1 
              #                          temp_139_logic_64 = Or i1 temp_138__64, temp_136_logic_64 
              #                    occupy a2 with temp_138__64
              #                    occupy a3 with temp_136_logic_64
              #                    load from temp_136_logic_64 in mem
    lb      a3,274(sp)
              #                    occupy a3 with temp_136_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_140_ret_of_g_64:i32 
              #                          temp_140_ret_of_g_64 =  Call i32 g_0(3_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_137_ret_of_g_64 in mem offset legal
    sw      a0,268(sp)
              #                    release a0 with temp_137_ret_of_g_64
              #                    store to temp_138__64 in mem offset legal
    sb      a2,267(sp)
              #                    release a2 with temp_138__64
              #                    store to temp_136_logic_64 in mem offset legal
    sb      a3,274(sp)
              #                    release a3 with temp_136_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_140_ret_of_g_64 in mem offset legal
    sw      a0,260(sp)
              #                          new_var temp_141__64:i1 
              #                          temp_141__64 = icmp i32 Ne temp_140_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_140_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_141__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_142_logic_64:i1 
              #                          temp_142_logic_64 = Or i1 temp_141__64, temp_139_logic_64 
              #                    occupy a2 with temp_141__64
              #                    occupy a3 with temp_139_logic_64
              #                    load from temp_139_logic_64 in mem
    lb      a3,266(sp)
              #                    occupy a3 with temp_139_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_143_ret_of_g_64:i32 
              #                          temp_143_ret_of_g_64 =  Call i32 g_0(2_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_140_ret_of_g_64 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with temp_140_ret_of_g_64
              #                    store to temp_141__64 in mem offset legal
    sb      a2,259(sp)
              #                    release a2 with temp_141__64
              #                    store to temp_139_logic_64 in mem offset legal
    sb      a3,266(sp)
              #                    release a3 with temp_139_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_143_ret_of_g_64 in mem offset legal
    sw      a0,252(sp)
              #                          new_var temp_144__64:i1 
              #                          temp_144__64 = icmp i32 Ne temp_143_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_143_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_144__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_145_logic_64:i1 
              #                          temp_145_logic_64 = Or i1 temp_144__64, temp_142_logic_64 
              #                    occupy a2 with temp_144__64
              #                    occupy a3 with temp_142_logic_64
              #                    load from temp_142_logic_64 in mem
    lb      a3,258(sp)
              #                    occupy a3 with temp_142_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_146_ret_of_g_64:i32 
              #                          temp_146_ret_of_g_64 =  Call i32 g_0(1_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_143_ret_of_g_64 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with temp_143_ret_of_g_64
              #                    store to temp_144__64 in mem offset legal
    sb      a2,251(sp)
              #                    release a2 with temp_144__64
              #                    store to temp_142_logic_64 in mem offset legal
    sb      a3,258(sp)
              #                    release a3 with temp_142_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_146_ret_of_g_64 in mem offset legal
    sw      a0,244(sp)
              #                          new_var temp_147__64:i1 
              #                          temp_147__64 = icmp i32 Ne temp_146_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_146_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_147__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_148_logic_64:i1 
              #                          temp_148_logic_64 = Or i1 temp_147__64, temp_145_logic_64 
              #                    occupy a2 with temp_147__64
              #                    occupy a3 with temp_145_logic_64
              #                    load from temp_145_logic_64 in mem
    lb      a3,250(sp)
              #                    occupy a3 with temp_145_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_149_ret_of_g_64:i32 
              #                          temp_149_ret_of_g_64 =  Call i32 g_0(0_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_146_ret_of_g_64 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with temp_146_ret_of_g_64
              #                    store to temp_147__64 in mem offset legal
    sb      a2,243(sp)
              #                    release a2 with temp_147__64
              #                    store to temp_145_logic_64 in mem offset legal
    sb      a3,250(sp)
              #                    release a3 with temp_145_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_149_ret_of_g_64 in mem offset legal
    sw      a0,236(sp)
              #                          new_var temp_150__64:i1 
              #                          temp_150__64 = icmp i32 Ne temp_149_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_149_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_150__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_151_logic_64:i1 
              #                          temp_151_logic_64 = Or i1 temp_150__64, temp_148_logic_64 
              #                    occupy a2 with temp_150__64
              #                    occupy a3 with temp_148_logic_64
              #                    load from temp_148_logic_64 in mem
    lb      a3,242(sp)
              #                    occupy a3 with temp_148_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          br i1 temp_151_logic_64, label branch_true_65, label branch_false_65 
              #                    occupy a4 with temp_151_logic_64
              #                    load from temp_151_logic_64 in mem
    lb      a4,234(sp)
              #                    free a4
              #                    occupy a4 with temp_151_logic_64
    bnez    a4, .branch_true_65
              #                    free a4
    j       .branch_false_65
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_g_64, tracked: true } |     a2:Freed { symidx: temp_150__64, tracked: true } |     a3:Freed { symidx: temp_148_logic_64, tracked: true } |     a4:Freed { symidx: temp_151_logic_64, tracked: true } | 
              #                          label branch_true_65: 
.branch_true_65:
              #                          jump label: branch_false_65 
    j       .branch_false_65
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_g_64, tracked: true } |     a2:Freed { symidx: temp_150__64, tracked: true } |     a3:Freed { symidx: temp_148_logic_64, tracked: true } |     a4:Freed { symidx: temp_151_logic_64, tracked: true } | 
              #                          label branch_false_65: 
.branch_false_65:
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_g_64, tracked: true } |     a2:Freed { symidx: temp_150__64, tracked: true } |     a3:Freed { symidx: temp_148_logic_64, tracked: true } |     a4:Freed { symidx: temp_151_logic_64, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_152_arithop_63:i32 
              #                          temp_152_arithop_63 = Add i32 i_51, 1_0 
              #                    occupy a1 with i_51
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_152_arithop_63
    add     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                          i_51 = i32 temp_152_arithop_63 
              #                    occupy a6 with temp_152_arithop_63
              #                    occupy a1 with i_51
    mv      a1, a6
              #                    free a6
              #                    free a1
              #                          jump label: while.head_62 
              #                    store to temp_148_logic_64 in mem offset legal
    sb      a3,242(sp)
              #                    release a3 with temp_148_logic_64
              #                    store to temp_151_logic_64 in mem offset legal
    sb      a4,234(sp)
              #                    release a4 with temp_151_logic_64
              #                    store to temp_152_arithop_63 in mem offset legal
    sw      a6,228(sp)
              #                    release a6 with temp_152_arithop_63
              #                    store to temp_149_ret_of_g_64 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with temp_149_ret_of_g_64
              #                    store to i_51 in mem offset legal
    sw      a1,556(sp)
              #                    release a1 with i_51
              #                    store to temp_150__64 in mem offset legal
    sb      a2,235(sp)
              #                    release a2 with temp_150__64
              #                    occupy a0 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a0,556(sp)
              #                    occupy a2 with _anonymous_of_temp_31_cmp_53_0
              #                    load from temp_31_cmp_53 in mem
    lb      a2,555(sp)
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: temp_31_cmp_53, tracked: true } |     a3:Freed { symidx: temp_92_cmp_61, tracked: true } | 
              #                          label while.exit_62: 
.while.exit_62:
              #                          i_51 = i32 1_0 
              #                    occupy a0 with i_51
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: temp_31_cmp_53, tracked: true } |     a3:Freed { symidx: temp_92_cmp_61, tracked: true } | 
              #                          label while.head_70: 
.while.head_70:
              #                          new_var temp_153_arithop_69:i32 
              #                          temp_153_arithop_69 = Sub i32 i_51, 1_0 
              #                    occupy a0 with i_51
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with temp_153_arithop_69
              #                    regtab:    a0:Occupied { symidx: i_51, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_31_cmp_53, tracked: true } |     a3:Freed { symidx: temp_92_cmp_61, tracked: true } |     a4:Occupied { symidx: temp_153_arithop_69, tracked: true, occupy_count: 1 } | 


    sub     a4,a0,a1
              #                    free a0
              #                    free a1
              #                    free a4
              #                          new_var temp_154_ret_of_f_69:i32 
              #                          temp_154_ret_of_f_69 =  Call i32 f_0(temp_153_arithop_69, i_51) 
              #                    saved register dumping to mem
              #                    store to i_51 in mem offset legal
    sw      a0,556(sp)
              #                    release a0 with i_51
              #                    store to temp_31_cmp_53 in mem offset legal
    sb      a2,555(sp)
              #                    release a2 with temp_31_cmp_53
              #                    store to temp_92_cmp_61 in mem offset legal
    sb      a3,391(sp)
              #                    release a3 with temp_92_cmp_61
              #                    store to temp_153_arithop_69 in mem offset legal
    sw      a4,224(sp)
              #                    release a4 with temp_153_arithop_69
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_153_arithop_69_0
              #                    load from temp_153_arithop_69 in mem


    lw      a0,224(sp)
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_154_ret_of_f_69 in mem offset legal
    sw      a0,220(sp)
              #                          new_var temp_155_cmp_69:i1 
              #                          temp_155_cmp_69 = icmp i32 Slt i_51, 20_0 
              #                    occupy a1 with i_51
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    occupy a2 with 20_0
    li      a2, 20
              #                    occupy a3 with temp_155_cmp_69
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_156__69:i1 
              #                          temp_156__69 = icmp i32 Ne temp_154_ret_of_f_69, 0_0 
              #                    occupy a0 with temp_154_ret_of_f_69
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_156__69
    xor     a5,a0,a4
    snez    a5, a5
              #                    free a0
              #                    free a4
              #                    free a5
              #                          new_var temp_157_logic_69:i1 
              #                          temp_157_logic_69 = And i1 temp_155_cmp_69, temp_156__69 
              #                    occupy a3 with temp_155_cmp_69
              #                    occupy a5 with temp_156__69
              #                    occupy a6 with temp_157_logic_69
    and     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          br i1 temp_157_logic_69, label while.body_70, label while.exit_70 
              #                    occupy a6 with temp_157_logic_69
              #                    free a6
              #                    occupy a6 with temp_157_logic_69
    bnez    a6, .while.body_70
              #                    free a6
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: temp_154_ret_of_f_69, tracked: true } |     a1:Freed { symidx: i_51, tracked: true } |     a3:Freed { symidx: temp_155_cmp_69, tracked: true } |     a5:Freed { symidx: temp_156__69, tracked: true } |     a6:Freed { symidx: temp_157_logic_69, tracked: true } | 
              #                          label while.body_70: 
.while.body_70:
              #                          new_var temp_158_arithop_51:i32 
              #                          temp_158_arithop_51 = Add i32 i_51, 1_0 
              #                    occupy a1 with i_51
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_158_arithop_51
    add     a4,a1,a2
              #                    free a1
              #                    free a2
              #                    free a4
              #                          i_51 = i32 temp_158_arithop_51 
              #                    occupy a4 with temp_158_arithop_51
              #                    occupy a1 with i_51
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: while.head_70 
              #                    store to temp_155_cmp_69 in mem offset legal
    sb      a3,219(sp)
              #                    release a3 with temp_155_cmp_69
              #                    store to temp_158_arithop_51 in mem offset legal
    sw      a4,212(sp)
              #                    release a4 with temp_158_arithop_51
              #                    store to temp_157_logic_69 in mem offset legal
    sb      a6,217(sp)
              #                    release a6 with temp_157_logic_69
              #                    store to temp_154_ret_of_f_69 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with temp_154_ret_of_f_69
              #                    store to i_51 in mem offset legal
    sw      a1,556(sp)
              #                    release a1 with i_51
              #                    store to temp_156__69 in mem offset legal
    sb      a5,218(sp)
              #                    release a5 with temp_156__69
              #                    occupy a3 with _anonymous_of_temp_92_cmp_61_0
              #                    load from temp_92_cmp_61 in mem
    lb      a3,391(sp)
              #                    occupy a0 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a0,556(sp)
              #                    occupy a2 with _anonymous_of_temp_31_cmp_53_0
              #                    load from temp_31_cmp_53 in mem
    lb      a2,555(sp)
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_154_ret_of_f_69, tracked: true } |     a1:Freed { symidx: i_51, tracked: true } |     a3:Freed { symidx: temp_155_cmp_69, tracked: true } |     a5:Freed { symidx: temp_156__69, tracked: true } |     a6:Freed { symidx: temp_157_logic_69, tracked: true } | 
              #                          label while.exit_70: 
.while.exit_70:
              #                          new_var ans_51:i32 
              #                          ans_51 = i32 0_0 
              #                    occupy a2 with ans_51
    li      a2, 0
              #                    free a2
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_154_ret_of_f_69, tracked: true } |     a1:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: ans_51, tracked: true } |     a3:Freed { symidx: temp_155_cmp_69, tracked: true } |     a5:Freed { symidx: temp_156__69, tracked: true } |     a6:Freed { symidx: temp_157_logic_69, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_159_ret_of_h_74:i32 
              #                          temp_159_ret_of_h_74 =  Call i32 h_0(3_0) 
              #                    saved register dumping to mem
              #                    store to temp_154_ret_of_f_69 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with temp_154_ret_of_f_69
              #                    store to i_51 in mem offset legal
    sw      a1,556(sp)
              #                    release a1 with i_51
              #                    store to ans_51 in mem offset legal
    sw      a2,208(sp)
              #                    release a2 with ans_51
              #                    store to temp_155_cmp_69 in mem offset legal
    sb      a3,219(sp)
              #                    release a3 with temp_155_cmp_69
              #                    store to temp_156__69 in mem offset legal
    sb      a5,218(sp)
              #                    release a5 with temp_156__69
              #                    store to temp_157_logic_69 in mem offset legal
    sb      a6,217(sp)
              #                    release a6 with temp_157_logic_69
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    arg load ended


    call    h
              #                    store to temp_159_ret_of_h_74 in mem offset legal
    sw      a0,204(sp)
              #                          new_var temp_160_ret_of_h_74:i32 
              #                          temp_160_ret_of_h_74 =  Call i32 h_0(2_0) 
              #                    saved register dumping to mem
              #                    store to temp_159_ret_of_h_74 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with temp_159_ret_of_h_74
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    arg load ended


    call    h
              #                    store to temp_160_ret_of_h_74 in mem offset legal
    sw      a0,200(sp)
              #                          new_var temp_161_booltrans_74:i1 
              #                          temp_161_booltrans_74 = icmp i1 Ne temp_160_ret_of_h_74, 0_0 
              #                    occupy a0 with temp_160_ret_of_h_74
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_161_booltrans_74
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_162_logicnot_74:i1 
              #                          temp_162_logicnot_74 = xor i1 temp_161_booltrans_74, true 
              #                    occupy a2 with temp_161_booltrans_74
              #                    occupy a3 with temp_162_logicnot_74
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_163__74:i1 
              #                          temp_163__74 = icmp i32 Ne temp_159_ret_of_h_74, 0_0 
              #                    occupy a4 with temp_159_ret_of_h_74
              #                    load from temp_159_ret_of_h_74 in mem


    lw      a4,204(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a5 with temp_163__74
    xor     a5,a4,a1
    snez    a5, a5
              #                    free a4
              #                    free a1
              #                    free a5
              #                          new_var temp_164_logic_74:i1 
              #                          temp_164_logic_74 = Or i1 temp_162_logicnot_74, temp_163__74 
              #                    occupy a3 with temp_162_logicnot_74
              #                    occupy a5 with temp_163__74
              #                    occupy a5 with temp_163__74
              #                    free a3
              #                    free a5
              #                    free a5
              #                          new_var temp_165_ret_of_h_74:i32 
              #                          temp_165_ret_of_h_74 =  Call i32 h_0(1_0) 
              #                    saved register dumping to mem
              #                    store to temp_160_ret_of_h_74 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_160_ret_of_h_74
              #                    store to temp_161_booltrans_74 in mem offset legal
    sb      a2,199(sp)
              #                    release a2 with temp_161_booltrans_74
              #                    store to temp_162_logicnot_74 in mem offset legal
    sb      a3,198(sp)
              #                    release a3 with temp_162_logicnot_74
              #                    store to temp_159_ret_of_h_74 in mem offset legal
    sw      a4,204(sp)
              #                    release a4 with temp_159_ret_of_h_74
              #                    store to temp_163__74 in mem offset legal
    sb      a5,197(sp)
              #                    release a5 with temp_163__74
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    h
              #                    store to temp_165_ret_of_h_74 in mem offset legal
    sw      a0,192(sp)
              #                          new_var temp_166_ret_of_h_74:i32 
              #                          temp_166_ret_of_h_74 =  Call i32 h_0(0_0) 
              #                    saved register dumping to mem
              #                    store to temp_165_ret_of_h_74 in mem offset legal
    sw      a0,192(sp)
              #                    release a0 with temp_165_ret_of_h_74
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    h
              #                    store to temp_166_ret_of_h_74 in mem offset legal
    sw      a0,188(sp)
              #                          new_var temp_167__74:i1 
              #                          temp_167__74 = icmp i32 Ne temp_166_ret_of_h_74, 0_0 
              #                    occupy a0 with temp_166_ret_of_h_74
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_167__74
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_168__74:i1 
              #                          temp_167__74 = icmp i32 Ne temp_165_ret_of_h_74, 0_0 
              #                    occupy a3 with temp_165_ret_of_h_74
              #                    load from temp_165_ret_of_h_74 in mem


    lw      a3,192(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_167__74
              #                    free a3
              #                    free a1
              #                    free a2
              #                          new_var temp_169_logic_74:i1 
              #                          temp_169_logic_74 = And i1 temp_167__74, temp_168__74 
              #                    occupy a2 with temp_167__74
              #                    occupy a4 with temp_168__74
              #                    load from temp_168__74 in mem
    lb      a4,186(sp)
              #                    occupy a5 with temp_169_logic_74
    and     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          new_var temp_170_logic_74:i1 
              #                          temp_170_logic_74 = Or i1 temp_169_logic_74, temp_164_logic_74 
              #                    occupy a5 with temp_169_logic_74
              #                    occupy a6 with temp_164_logic_74
              #                    load from temp_164_logic_74 in mem
    lb      a6,196(sp)
              #                    occupy a6 with temp_164_logic_74
              #                    free a5
              #                    free a6
              #                    free a6
              #                          br i1 temp_170_logic_74, label branch_true_75, label branch_false_75 
              #                    occupy a7 with temp_170_logic_74
              #                    load from temp_170_logic_74 in mem
    lb      a7,184(sp)
              #                    free a7
              #                    occupy a7 with temp_170_logic_74
    bnez    a7, .branch_true_75
              #                    free a7
    j       .branch_false_75
              #                    regtab     a0:Freed { symidx: temp_166_ret_of_h_74, tracked: true } |     a2:Freed { symidx: temp_167__74, tracked: true } |     a3:Freed { symidx: temp_165_ret_of_h_74, tracked: true } |     a4:Freed { symidx: temp_168__74, tracked: true } |     a5:Freed { symidx: temp_169_logic_74, tracked: true } |     a6:Freed { symidx: temp_164_logic_74, tracked: true } |     a7:Freed { symidx: temp_170_logic_74, tracked: true } | 
              #                          label branch_true_75: 
.branch_true_75:
              #                          ans_51 = i32 1_0 
              #                    occupy a1 with ans_51
    li      a1, 1
              #                    free a1
              #                          jump label: branch_false_75 
              #                    store to ans_51 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with ans_51
    j       .branch_false_75
              #                    regtab     a0:Freed { symidx: temp_166_ret_of_h_74, tracked: true } |     a2:Freed { symidx: temp_167__74, tracked: true } |     a3:Freed { symidx: temp_165_ret_of_h_74, tracked: true } |     a4:Freed { symidx: temp_168__74, tracked: true } |     a5:Freed { symidx: temp_169_logic_74, tracked: true } |     a6:Freed { symidx: temp_164_logic_74, tracked: true } |     a7:Freed { symidx: temp_170_logic_74, tracked: true } | 
              #                          label branch_false_75: 
.branch_false_75:
              #                    regtab     a0:Freed { symidx: temp_166_ret_of_h_74, tracked: true } |     a2:Freed { symidx: temp_167__74, tracked: true } |     a3:Freed { symidx: temp_165_ret_of_h_74, tracked: true } |     a4:Freed { symidx: temp_168__74, tracked: true } |     a5:Freed { symidx: temp_169_logic_74, tracked: true } |     a6:Freed { symidx: temp_164_logic_74, tracked: true } |     a7:Freed { symidx: temp_170_logic_74, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_171_ptr2globl_51:i32 
              #                          temp_171_ptr2globl_51 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy s1 with temp_171_ptr2globl_51
    lw      s1,0(a1)
              #                    free s1
              #                    free a1
              #                          new_var temp_172_arithop_51:i32 
              #                          temp_172_arithop_51 = Add i32 temp_171_ptr2globl_51, ans_51 
              #                    occupy s1 with temp_171_ptr2globl_51
              #                    occupy s2 with ans_51
              #                    load from ans_51 in mem


    lw      s2,208(sp)
              #                    occupy s3 with temp_172_arithop_51
    add     s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                          ans_51 = i32 0_0 
              #                    occupy s2 with ans_51
    li      s2, 0
              #                    free s2
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: temp_166_ret_of_h_74, tracked: true } |     a2:Freed { symidx: temp_167__74, tracked: true } |     a3:Freed { symidx: temp_165_ret_of_h_74, tracked: true } |     a4:Freed { symidx: temp_168__74, tracked: true } |     a5:Freed { symidx: temp_169_logic_74, tracked: true } |     a6:Freed { symidx: temp_164_logic_74, tracked: true } |     a7:Freed { symidx: temp_170_logic_74, tracked: true } |     s1:Freed { symidx: temp_171_ptr2globl_51, tracked: true } |     s2:Freed { symidx: ans_51, tracked: true } |     s3:Freed { symidx: temp_172_arithop_51, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_173_ret_of_h_79:i32 
              #                          temp_173_ret_of_h_79 =  Call i32 h_0(8_0) 
              #                    saved register dumping to mem
              #                    store to temp_171_ptr2globl_51 in mem offset legal
    sw      s1,180(sp)
              #                    release s1 with temp_171_ptr2globl_51
              #                    store to ans_51 in mem offset legal
    sw      s2,208(sp)
              #                    release s2 with ans_51
              #                    store to temp_172_arithop_51 in mem offset legal
    sw      s3,176(sp)
              #                    release s3 with temp_172_arithop_51
              #                    store to temp_166_ret_of_h_74 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_166_ret_of_h_74
              #                    store to temp_167__74 in mem offset legal
    sb      a2,187(sp)
              #                    release a2 with temp_167__74
              #                    store to temp_165_ret_of_h_74 in mem offset legal
    sw      a3,192(sp)
              #                    release a3 with temp_165_ret_of_h_74
              #                    store to temp_168__74 in mem offset legal
    sb      a4,186(sp)
              #                    release a4 with temp_168__74
              #                    store to temp_169_logic_74 in mem offset legal
    sb      a5,185(sp)
              #                    release a5 with temp_169_logic_74
              #                    store to temp_164_logic_74 in mem offset legal
    sb      a6,196(sp)
              #                    release a6 with temp_164_logic_74
              #                    store to temp_170_logic_74 in mem offset legal
    sb      a7,184(sp)
              #                    release a7 with temp_170_logic_74
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    arg load ended


    call    h
              #                    store to temp_173_ret_of_h_79 in mem offset legal
    sw      a0,172(sp)
              #                          new_var temp_174_booltrans_79:i1 
              #                          temp_174_booltrans_79 = icmp i1 Ne temp_173_ret_of_h_79, 0_0 
              #                    occupy a0 with temp_173_ret_of_h_79
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_174_booltrans_79
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_175_logicnot_79:i1 
              #                          temp_175_logicnot_79 = xor i1 temp_174_booltrans_79, true 
              #                    occupy a2 with temp_174_booltrans_79
              #                    occupy a3 with temp_175_logicnot_79
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_176_ret_of_h_79:i32 
              #                          temp_176_ret_of_h_79 =  Call i32 h_0(7_0) 
              #                    saved register dumping to mem
              #                    store to temp_173_ret_of_h_79 in mem offset legal
    sw      a0,172(sp)
              #                    release a0 with temp_173_ret_of_h_79
              #                    store to temp_174_booltrans_79 in mem offset legal
    sb      a2,171(sp)
              #                    release a2 with temp_174_booltrans_79
              #                    store to temp_175_logicnot_79 in mem offset legal
    sb      a3,170(sp)
              #                    release a3 with temp_175_logicnot_79
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    arg load ended


    call    h
              #                    store to temp_176_ret_of_h_79 in mem offset legal
    sw      a0,164(sp)
              #                          new_var temp_177_ret_of_h_79:i32 
              #                          temp_177_ret_of_h_79 =  Call i32 h_0(6_0) 
              #                    saved register dumping to mem
              #                    store to temp_176_ret_of_h_79 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_176_ret_of_h_79
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    arg load ended


    call    h
              #                    store to temp_177_ret_of_h_79 in mem offset legal
    sw      a0,160(sp)
              #                          new_var temp_178_booltrans_79:i1 
              #                          temp_178_booltrans_79 = icmp i1 Ne temp_177_ret_of_h_79, 0_0 
              #                    occupy a0 with temp_177_ret_of_h_79
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_178_booltrans_79
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_179_logicnot_79:i1 
              #                          temp_179_logicnot_79 = xor i1 temp_178_booltrans_79, true 
              #                    occupy a2 with temp_178_booltrans_79
              #                    occupy a3 with temp_179_logicnot_79
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_180__79:i1 
              #                          temp_180__79 = icmp i32 Ne temp_176_ret_of_h_79, 0_0 
              #                    occupy a4 with temp_176_ret_of_h_79
              #                    load from temp_176_ret_of_h_79 in mem


    lw      a4,164(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a5 with temp_180__79
    xor     a5,a4,a1
    snez    a5, a5
              #                    free a4
              #                    free a1
              #                    free a5
              #                          new_var temp_181_logic_79:i1 
              #                          temp_181_logic_79 = And i1 temp_179_logicnot_79, temp_180__79 
              #                    occupy a3 with temp_179_logicnot_79
              #                    occupy a5 with temp_180__79
              #                    occupy a6 with temp_181_logic_79
    and     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          new_var temp_182_ret_of_h_79:i32 
              #                          temp_182_ret_of_h_79 =  Call i32 h_0(5_0) 
              #                    saved register dumping to mem
              #                    store to temp_177_ret_of_h_79 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with temp_177_ret_of_h_79
              #                    store to temp_178_booltrans_79 in mem offset legal
    sb      a2,159(sp)
              #                    release a2 with temp_178_booltrans_79
              #                    store to temp_179_logicnot_79 in mem offset legal
    sb      a3,158(sp)
              #                    release a3 with temp_179_logicnot_79
              #                    store to temp_176_ret_of_h_79 in mem offset legal
    sw      a4,164(sp)
              #                    release a4 with temp_176_ret_of_h_79
              #                    store to temp_180__79 in mem offset legal
    sb      a5,157(sp)
              #                    release a5 with temp_180__79
              #                    store to temp_181_logic_79 in mem offset legal
    sb      a6,156(sp)
              #                    release a6 with temp_181_logic_79
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    arg load ended


    call    h
              #                    store to temp_182_ret_of_h_79 in mem offset legal
    sw      a0,152(sp)
              #                          new_var temp_183__79:i1 
              #                          temp_183__79 = icmp i32 Ne temp_182_ret_of_h_79, 0_0 
              #                    occupy a0 with temp_182_ret_of_h_79
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_183__79
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_184_logic_79:i1 
              #                          temp_184_logic_79 = And i1 temp_183__79, temp_181_logic_79 
              #                    occupy a2 with temp_183__79
              #                    occupy a3 with temp_181_logic_79
              #                    load from temp_181_logic_79 in mem
    lb      a3,156(sp)
              #                    occupy a4 with temp_184_logic_79
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_185_logic_79:i1 
              #                          temp_185_logic_79 = Or i1 temp_184_logic_79, temp_175_logicnot_79 
              #                    occupy a4 with temp_184_logic_79
              #                    occupy a5 with temp_175_logicnot_79
              #                    load from temp_175_logicnot_79 in mem
    lb      a5,170(sp)
              #                    occupy a5 with temp_175_logicnot_79
              #                    free a4
              #                    free a5
              #                    free a5
              #                          new_var temp_186_ret_of_h_79:i32 
              #                          temp_186_ret_of_h_79 =  Call i32 h_0(4_0) 
              #                    saved register dumping to mem
              #                    store to temp_182_ret_of_h_79 in mem offset legal
    sw      a0,152(sp)
              #                    release a0 with temp_182_ret_of_h_79
              #                    store to temp_183__79 in mem offset legal
    sb      a2,151(sp)
              #                    release a2 with temp_183__79
              #                    store to temp_181_logic_79 in mem offset legal
    sb      a3,156(sp)
              #                    release a3 with temp_181_logic_79
              #                    store to temp_184_logic_79 in mem offset legal
    sb      a4,150(sp)
              #                    release a4 with temp_184_logic_79
              #                    store to temp_175_logicnot_79 in mem offset legal
    sb      a5,170(sp)
              #                    release a5 with temp_175_logicnot_79
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    arg load ended


    call    h
              #                    store to temp_186_ret_of_h_79 in mem offset legal
    sw      a0,144(sp)
              #                          new_var temp_187_booltrans_79:i1 
              #                          temp_187_booltrans_79 = icmp i1 Ne temp_186_ret_of_h_79, 0_0 
              #                    occupy a0 with temp_186_ret_of_h_79
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_187_booltrans_79
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_188_logicnot_79:i1 
              #                          temp_188_logicnot_79 = xor i1 temp_187_booltrans_79, true 
              #                    occupy a2 with temp_187_booltrans_79
              #                    occupy a3 with temp_188_logicnot_79
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_189_logic_79:i1 
              #                          temp_189_logic_79 = Or i1 temp_188_logicnot_79, temp_185_logic_79 
              #                    occupy a3 with temp_188_logicnot_79
              #                    occupy a4 with temp_185_logic_79
              #                    load from temp_185_logic_79 in mem
    lb      a4,149(sp)
              #                    occupy a4 with temp_185_logic_79
              #                    free a3
              #                    free a4
              #                    free a4
              #                          br i1 temp_189_logic_79, label branch_true_80, label branch_false_80 
              #                    occupy a5 with temp_189_logic_79
              #                    load from temp_189_logic_79 in mem
    lb      a5,141(sp)
              #                    free a5
              #                    occupy a5 with temp_189_logic_79
    bnez    a5, .branch_true_80
              #                    free a5
    j       .branch_false_80
              #                    regtab     a0:Freed { symidx: temp_186_ret_of_h_79, tracked: true } |     a2:Freed { symidx: temp_187_booltrans_79, tracked: true } |     a3:Freed { symidx: temp_188_logicnot_79, tracked: true } |     a4:Freed { symidx: temp_185_logic_79, tracked: true } |     a5:Freed { symidx: temp_189_logic_79, tracked: true } | 
              #                          label branch_true_80: 
.branch_true_80:
              #                          ans_51 = i32 1_0 
              #                    occupy a1 with ans_51
    li      a1, 1
              #                    free a1
              #                          jump label: branch_false_80 
              #                    store to ans_51 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with ans_51
    j       .branch_false_80
              #                    regtab     a0:Freed { symidx: temp_186_ret_of_h_79, tracked: true } |     a2:Freed { symidx: temp_187_booltrans_79, tracked: true } |     a3:Freed { symidx: temp_188_logicnot_79, tracked: true } |     a4:Freed { symidx: temp_185_logic_79, tracked: true } |     a5:Freed { symidx: temp_189_logic_79, tracked: true } | 
              #                          label branch_false_80: 
.branch_false_80:
              #                    regtab     a0:Freed { symidx: temp_186_ret_of_h_79, tracked: true } |     a2:Freed { symidx: temp_187_booltrans_79, tracked: true } |     a3:Freed { symidx: temp_188_logicnot_79, tracked: true } |     a4:Freed { symidx: temp_185_logic_79, tracked: true } |     a5:Freed { symidx: temp_189_logic_79, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_190_ptr2globl_51:i32 
              #                          temp_190_ptr2globl_51 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a6 with temp_190_ptr2globl_51
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          new_var temp_191_arithop_51:i32 
              #                          temp_191_arithop_51 = Mul i32 temp_190_ptr2globl_51, ans_51 
              #                    occupy a6 with temp_190_ptr2globl_51
              #                    occupy a7 with ans_51
              #                    load from ans_51 in mem


    lw      a7,208(sp)
              #                    occupy s1 with temp_191_arithop_51
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          ans_51 = i32 0_0 
              #                    occupy a7 with ans_51
    li      a7, 0
              #                    free a7
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: temp_186_ret_of_h_79, tracked: true } |     a2:Freed { symidx: temp_187_booltrans_79, tracked: true } |     a3:Freed { symidx: temp_188_logicnot_79, tracked: true } |     a4:Freed { symidx: temp_185_logic_79, tracked: true } |     a5:Freed { symidx: temp_189_logic_79, tracked: true } |     a6:Freed { symidx: temp_190_ptr2globl_51, tracked: true } |     a7:Freed { symidx: ans_51, tracked: true } |     s1:Freed { symidx: temp_191_arithop_51, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_192_ret_of_h_84:i32 
              #                          temp_192_ret_of_h_84 =  Call i32 h_0(15_0) 
              #                    saved register dumping to mem
              #                    store to temp_191_arithop_51 in mem offset legal
    sw      s1,132(sp)
              #                    release s1 with temp_191_arithop_51
              #                    store to temp_186_ret_of_h_79 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with temp_186_ret_of_h_79
              #                    store to temp_187_booltrans_79 in mem offset legal
    sb      a2,143(sp)
              #                    release a2 with temp_187_booltrans_79
              #                    store to temp_188_logicnot_79 in mem offset legal
    sb      a3,142(sp)
              #                    release a3 with temp_188_logicnot_79
              #                    store to temp_185_logic_79 in mem offset legal
    sb      a4,149(sp)
              #                    release a4 with temp_185_logic_79
              #                    store to temp_189_logic_79 in mem offset legal
    sb      a5,141(sp)
              #                    release a5 with temp_189_logic_79
              #                    store to temp_190_ptr2globl_51 in mem offset legal
    sw      a6,136(sp)
              #                    release a6 with temp_190_ptr2globl_51
              #                    store to ans_51 in mem offset legal
    sw      a7,208(sp)
              #                    release a7 with ans_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_15_0_0
    li      a0, 15
              #                    arg load ended


    call    h
              #                    store to temp_192_ret_of_h_84 in mem offset legal
    sw      a0,128(sp)
              #                          new_var temp_193_ret_of_h_84:i32 
              #                          temp_193_ret_of_h_84 =  Call i32 h_0(14_0) 
              #                    saved register dumping to mem
              #                    store to temp_192_ret_of_h_84 in mem offset legal
    sw      a0,128(sp)
              #                    release a0 with temp_192_ret_of_h_84
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_14_0_0
    li      a0, 14
              #                    arg load ended


    call    h
              #                    store to temp_193_ret_of_h_84 in mem offset legal
    sw      a0,124(sp)
              #                          new_var temp_194__84:i1 
              #                          temp_194__84 = icmp i32 Ne temp_193_ret_of_h_84, 0_0 
              #                    occupy a0 with temp_193_ret_of_h_84
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_194__84
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_195__84:i1 
              #                          temp_194__84 = icmp i32 Ne temp_192_ret_of_h_84, 0_0 
              #                    occupy a3 with temp_192_ret_of_h_84
              #                    load from temp_192_ret_of_h_84 in mem


    lw      a3,128(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_194__84
              #                    free a3
              #                    free a1
              #                    free a2
              #                          new_var temp_196_logic_84:i1 
              #                          temp_196_logic_84 = And i1 temp_194__84, temp_195__84 
              #                    occupy a2 with temp_194__84
              #                    occupy a4 with temp_195__84
              #                    load from temp_195__84 in mem
    lb      a4,122(sp)
              #                    occupy a5 with temp_196_logic_84
    and     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          new_var temp_197_ret_of_h_84:i32 
              #                          temp_197_ret_of_h_84 =  Call i32 h_0(13_0) 
              #                    saved register dumping to mem
              #                    store to temp_193_ret_of_h_84 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_193_ret_of_h_84
              #                    store to temp_194__84 in mem offset legal
    sb      a2,123(sp)
              #                    release a2 with temp_194__84
              #                    store to temp_192_ret_of_h_84 in mem offset legal
    sw      a3,128(sp)
              #                    release a3 with temp_192_ret_of_h_84
              #                    store to temp_195__84 in mem offset legal
    sb      a4,122(sp)
              #                    release a4 with temp_195__84
              #                    store to temp_196_logic_84 in mem offset legal
    sb      a5,121(sp)
              #                    release a5 with temp_196_logic_84
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_13_0_0
    li      a0, 13
              #                    arg load ended


    call    h
              #                    store to temp_197_ret_of_h_84 in mem offset legal
    sw      a0,116(sp)
              #                          new_var temp_198_booltrans_84:i1 
              #                          temp_198_booltrans_84 = icmp i1 Ne temp_197_ret_of_h_84, 0_0 
              #                    occupy a0 with temp_197_ret_of_h_84
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_198_booltrans_84
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_199_logicnot_84:i1 
              #                          temp_199_logicnot_84 = xor i1 temp_198_booltrans_84, true 
              #                    occupy a2 with temp_198_booltrans_84
              #                    occupy a3 with temp_199_logicnot_84
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_200_logic_84:i1 
              #                          temp_200_logic_84 = Or i1 temp_199_logicnot_84, temp_196_logic_84 
              #                    occupy a3 with temp_199_logicnot_84
              #                    occupy a4 with temp_196_logic_84
              #                    load from temp_196_logic_84 in mem
    lb      a4,121(sp)
              #                    occupy a4 with temp_196_logic_84
              #                    free a3
              #                    free a4
              #                    free a4
              #                          new_var temp_201_ret_of_h_84:i32 
              #                          temp_201_ret_of_h_84 =  Call i32 h_0(12_0) 
              #                    saved register dumping to mem
              #                    store to temp_197_ret_of_h_84 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_197_ret_of_h_84
              #                    store to temp_198_booltrans_84 in mem offset legal
    sb      a2,115(sp)
              #                    release a2 with temp_198_booltrans_84
              #                    store to temp_199_logicnot_84 in mem offset legal
    sb      a3,114(sp)
              #                    release a3 with temp_199_logicnot_84
              #                    store to temp_196_logic_84 in mem offset legal
    sb      a4,121(sp)
              #                    release a4 with temp_196_logic_84
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_12_0_0
    li      a0, 12
              #                    arg load ended


    call    h
              #                    store to temp_201_ret_of_h_84 in mem offset legal
    sw      a0,108(sp)
              #                          new_var temp_202_booltrans_84:i1 
              #                          temp_202_booltrans_84 = icmp i1 Ne temp_201_ret_of_h_84, 0_0 
              #                    occupy a0 with temp_201_ret_of_h_84
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_202_booltrans_84
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_203_logicnot_84:i1 
              #                          temp_203_logicnot_84 = xor i1 temp_202_booltrans_84, true 
              #                    occupy a2 with temp_202_booltrans_84
              #                    occupy a3 with temp_203_logicnot_84
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_204_logic_84:i1 
              #                          temp_204_logic_84 = Or i1 temp_203_logicnot_84, temp_200_logic_84 
              #                    occupy a3 with temp_203_logicnot_84
              #                    occupy a4 with temp_200_logic_84
              #                    load from temp_200_logic_84 in mem
    lb      a4,113(sp)
              #                    occupy a4 with temp_200_logic_84
              #                    free a3
              #                    free a4
              #                    free a4
              #                          new_var temp_205_ret_of_h_84:i32 
              #                          temp_205_ret_of_h_84 =  Call i32 h_0(11_0) 
              #                    saved register dumping to mem
              #                    store to temp_201_ret_of_h_84 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_201_ret_of_h_84
              #                    store to temp_202_booltrans_84 in mem offset legal
    sb      a2,107(sp)
              #                    release a2 with temp_202_booltrans_84
              #                    store to temp_203_logicnot_84 in mem offset legal
    sb      a3,106(sp)
              #                    release a3 with temp_203_logicnot_84
              #                    store to temp_200_logic_84 in mem offset legal
    sb      a4,113(sp)
              #                    release a4 with temp_200_logic_84
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_11_0_0
    li      a0, 11
              #                    arg load ended


    call    h
              #                    store to temp_205_ret_of_h_84 in mem offset legal
    sw      a0,100(sp)
              #                          new_var temp_206_booltrans_84:i1 
              #                          temp_206_booltrans_84 = icmp i1 Ne temp_205_ret_of_h_84, 0_0 
              #                    occupy a0 with temp_205_ret_of_h_84
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_206_booltrans_84
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_207_logicnot_84:i1 
              #                          temp_207_logicnot_84 = xor i1 temp_206_booltrans_84, true 
              #                    occupy a2 with temp_206_booltrans_84
              #                    occupy a3 with temp_207_logicnot_84
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_208_logic_84:i1 
              #                          temp_208_logic_84 = Or i1 temp_207_logicnot_84, temp_204_logic_84 
              #                    occupy a3 with temp_207_logicnot_84
              #                    occupy a4 with temp_204_logic_84
              #                    load from temp_204_logic_84 in mem
    lb      a4,105(sp)
              #                    occupy a4 with temp_204_logic_84
              #                    free a3
              #                    free a4
              #                    free a4
              #                          new_var temp_209_ret_of_h_84:i32 
              #                          temp_209_ret_of_h_84 =  Call i32 h_0(10_0) 
              #                    saved register dumping to mem
              #                    store to temp_205_ret_of_h_84 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_205_ret_of_h_84
              #                    store to temp_206_booltrans_84 in mem offset legal
    sb      a2,99(sp)
              #                    release a2 with temp_206_booltrans_84
              #                    store to temp_207_logicnot_84 in mem offset legal
    sb      a3,98(sp)
              #                    release a3 with temp_207_logicnot_84
              #                    store to temp_204_logic_84 in mem offset legal
    sb      a4,105(sp)
              #                    release a4 with temp_204_logic_84
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    h
              #                    store to temp_209_ret_of_h_84 in mem offset legal
    sw      a0,92(sp)
              #                          new_var temp_210_booltrans_84:i1 
              #                          temp_210_booltrans_84 = icmp i1 Ne temp_209_ret_of_h_84, 0_0 
              #                    occupy a0 with temp_209_ret_of_h_84
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_210_booltrans_84
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_211_logicnot_84:i1 
              #                          temp_211_logicnot_84 = xor i1 temp_210_booltrans_84, true 
              #                    occupy a2 with temp_210_booltrans_84
              #                    occupy a3 with temp_211_logicnot_84
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_212_ret_of_h_84:i32 
              #                          temp_212_ret_of_h_84 =  Call i32 h_0(9_0) 
              #                    saved register dumping to mem
              #                    store to temp_209_ret_of_h_84 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_209_ret_of_h_84
              #                    store to temp_210_booltrans_84 in mem offset legal
    sb      a2,91(sp)
              #                    release a2 with temp_210_booltrans_84
              #                    store to temp_211_logicnot_84 in mem offset legal
    sb      a3,90(sp)
              #                    release a3 with temp_211_logicnot_84
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_9_0_0
    li      a0, 9
              #                    arg load ended


    call    h
              #                    store to temp_212_ret_of_h_84 in mem offset legal
    sw      a0,84(sp)
              #                          new_var temp_213__84:i1 
              #                          temp_213__84 = icmp i32 Ne temp_212_ret_of_h_84, 0_0 
              #                    occupy a0 with temp_212_ret_of_h_84
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_213__84
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_214_logic_84:i1 
              #                          temp_214_logic_84 = And i1 temp_213__84, temp_211_logicnot_84 
              #                    occupy a2 with temp_213__84
              #                    occupy a3 with temp_211_logicnot_84
              #                    load from temp_211_logicnot_84 in mem
    lb      a3,90(sp)
              #                    occupy a4 with temp_214_logic_84
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_215_logic_84:i1 
              #                          temp_215_logic_84 = Or i1 temp_214_logic_84, temp_208_logic_84 
              #                    occupy a4 with temp_214_logic_84
              #                    occupy a5 with temp_208_logic_84
              #                    load from temp_208_logic_84 in mem
    lb      a5,97(sp)
              #                    occupy a5 with temp_208_logic_84
              #                    free a4
              #                    free a5
              #                    free a5
              #                          br i1 temp_215_logic_84, label branch_true_85, label branch_false_85 
              #                    occupy a6 with temp_215_logic_84
              #                    load from temp_215_logic_84 in mem
    lb      a6,81(sp)
              #                    free a6
              #                    occupy a6 with temp_215_logic_84
    bnez    a6, .branch_true_85
              #                    free a6
    j       .branch_false_85
              #                    regtab     a0:Freed { symidx: temp_212_ret_of_h_84, tracked: true } |     a2:Freed { symidx: temp_213__84, tracked: true } |     a3:Freed { symidx: temp_211_logicnot_84, tracked: true } |     a4:Freed { symidx: temp_214_logic_84, tracked: true } |     a5:Freed { symidx: temp_208_logic_84, tracked: true } |     a6:Freed { symidx: temp_215_logic_84, tracked: true } | 
              #                          label branch_true_85: 
.branch_true_85:
              #                          ans_51 = i32 1_0 
              #                    occupy a1 with ans_51
    li      a1, 1
              #                    free a1
              #                          jump label: branch_false_85 
              #                    store to ans_51 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with ans_51
    j       .branch_false_85
              #                    regtab     a0:Freed { symidx: temp_212_ret_of_h_84, tracked: true } |     a2:Freed { symidx: temp_213__84, tracked: true } |     a3:Freed { symidx: temp_211_logicnot_84, tracked: true } |     a4:Freed { symidx: temp_214_logic_84, tracked: true } |     a5:Freed { symidx: temp_208_logic_84, tracked: true } |     a6:Freed { symidx: temp_215_logic_84, tracked: true } | 
              #                          label branch_false_85: 
.branch_false_85:
              #                    regtab     a0:Freed { symidx: temp_212_ret_of_h_84, tracked: true } |     a2:Freed { symidx: temp_213__84, tracked: true } |     a3:Freed { symidx: temp_211_logicnot_84, tracked: true } |     a4:Freed { symidx: temp_214_logic_84, tracked: true } |     a5:Freed { symidx: temp_208_logic_84, tracked: true } |     a6:Freed { symidx: temp_215_logic_84, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_216_ptr2globl_51:i32 
              #                          temp_216_ptr2globl_51 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a7 with temp_216_ptr2globl_51
    lw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                          new_var temp_217_arithop_51:i32 
              #                          temp_217_arithop_51 = Sub i32 temp_216_ptr2globl_51, ans_51 
              #                    occupy a7 with temp_216_ptr2globl_51
              #                    occupy s1 with ans_51
              #                    load from ans_51 in mem


    lw      s1,208(sp)
              #                    occupy s2 with temp_217_arithop_51
              #                    regtab:    a0:Freed { symidx: temp_212_ret_of_h_84, tracked: true } |     a1:Freed { symidx: *sum_0, tracked: false } |     a2:Freed { symidx: temp_213__84, tracked: true } |     a3:Freed { symidx: temp_211_logicnot_84, tracked: true } |     a4:Freed { symidx: temp_214_logic_84, tracked: true } |     a5:Freed { symidx: temp_208_logic_84, tracked: true } |     a6:Freed { symidx: temp_215_logic_84, tracked: true } |     a7:Occupied { symidx: temp_216_ptr2globl_51, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: ans_51, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: temp_217_arithop_51, tracked: true, occupy_count: 1 } | 


    sub     s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                          ans_51 = i32 0_0 
              #                    occupy s1 with ans_51
    li      s1, 0
              #                    free s1
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: temp_212_ret_of_h_84, tracked: true } |     a2:Freed { symidx: temp_213__84, tracked: true } |     a3:Freed { symidx: temp_211_logicnot_84, tracked: true } |     a4:Freed { symidx: temp_214_logic_84, tracked: true } |     a5:Freed { symidx: temp_208_logic_84, tracked: true } |     a6:Freed { symidx: temp_215_logic_84, tracked: true } |     a7:Freed { symidx: temp_216_ptr2globl_51, tracked: true } |     s1:Freed { symidx: ans_51, tracked: true } |     s2:Freed { symidx: temp_217_arithop_51, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_218_ret_of_h_89:i32 
              #                          temp_218_ret_of_h_89 =  Call i32 h_0(8_0) 
              #                    saved register dumping to mem
              #                    store to ans_51 in mem offset legal
    sw      s1,208(sp)
              #                    release s1 with ans_51
              #                    store to temp_217_arithop_51 in mem offset legal
    sw      s2,72(sp)
              #                    release s2 with temp_217_arithop_51
              #                    store to temp_212_ret_of_h_84 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_212_ret_of_h_84
              #                    store to temp_213__84 in mem offset legal
    sb      a2,83(sp)
              #                    release a2 with temp_213__84
              #                    store to temp_211_logicnot_84 in mem offset legal
    sb      a3,90(sp)
              #                    release a3 with temp_211_logicnot_84
              #                    store to temp_214_logic_84 in mem offset legal
    sb      a4,82(sp)
              #                    release a4 with temp_214_logic_84
              #                    store to temp_208_logic_84 in mem offset legal
    sb      a5,97(sp)
              #                    release a5 with temp_208_logic_84
              #                    store to temp_215_logic_84 in mem offset legal
    sb      a6,81(sp)
              #                    release a6 with temp_215_logic_84
              #                    store to temp_216_ptr2globl_51 in mem offset legal
    sw      a7,76(sp)
              #                    release a7 with temp_216_ptr2globl_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    arg load ended


    call    h
              #                    store to temp_218_ret_of_h_89 in mem offset legal
    sw      a0,68(sp)
              #                          new_var temp_219_ret_of_h_89:i32 
              #                          temp_219_ret_of_h_89 =  Call i32 h_0(7_0) 
              #                    saved register dumping to mem
              #                    store to temp_218_ret_of_h_89 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_218_ret_of_h_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    arg load ended


    call    h
              #                    store to temp_219_ret_of_h_89 in mem offset legal
    sw      a0,64(sp)
              #                          new_var temp_220_booltrans_89:i1 
              #                          temp_220_booltrans_89 = icmp i1 Ne temp_219_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_219_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_220_booltrans_89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_221_logicnot_89:i1 
              #                          temp_221_logicnot_89 = xor i1 temp_220_booltrans_89, true 
              #                    occupy a2 with temp_220_booltrans_89
              #                    occupy a3 with temp_221_logicnot_89
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_222_ret_of_h_89:i32 
              #                          temp_222_ret_of_h_89 =  Call i32 h_0(6_0) 
              #                    saved register dumping to mem
              #                    store to temp_219_ret_of_h_89 in mem offset legal
    sw      a0,64(sp)
              #                    release a0 with temp_219_ret_of_h_89
              #                    store to temp_220_booltrans_89 in mem offset legal
    sb      a2,63(sp)
              #                    release a2 with temp_220_booltrans_89
              #                    store to temp_221_logicnot_89 in mem offset legal
    sb      a3,62(sp)
              #                    release a3 with temp_221_logicnot_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    arg load ended


    call    h
              #                    store to temp_222_ret_of_h_89 in mem offset legal
    sw      a0,56(sp)
              #                          new_var temp_223__89:i1 
              #                          temp_223__89 = icmp i32 Ne temp_222_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_222_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_223__89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_224_logic_89:i1 
              #                          temp_224_logic_89 = And i1 temp_223__89, temp_221_logicnot_89 
              #                    occupy a2 with temp_223__89
              #                    occupy a3 with temp_221_logicnot_89
              #                    load from temp_221_logicnot_89 in mem
    lb      a3,62(sp)
              #                    occupy a4 with temp_224_logic_89
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_225__89:i1 
              #                          temp_225__89 = icmp i32 Ne temp_218_ret_of_h_89, 0_0 
              #                    occupy a5 with temp_218_ret_of_h_89
              #                    load from temp_218_ret_of_h_89 in mem


    lw      a5,68(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a6 with temp_225__89
    xor     a6,a5,a1
    snez    a6, a6
              #                    free a5
              #                    free a1
              #                    free a6
              #                          new_var temp_226_logic_89:i1 
              #                          temp_226_logic_89 = Or i1 temp_224_logic_89, temp_225__89 
              #                    occupy a4 with temp_224_logic_89
              #                    occupy a6 with temp_225__89
              #                    occupy a6 with temp_225__89
              #                    free a4
              #                    free a6
              #                    free a6
              #                          new_var temp_227_ret_of_h_89:i32 
              #                          temp_227_ret_of_h_89 =  Call i32 h_0(5_0) 
              #                    saved register dumping to mem
              #                    store to temp_222_ret_of_h_89 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_222_ret_of_h_89
              #                    store to temp_223__89 in mem offset legal
    sb      a2,55(sp)
              #                    release a2 with temp_223__89
              #                    store to temp_221_logicnot_89 in mem offset legal
    sb      a3,62(sp)
              #                    release a3 with temp_221_logicnot_89
              #                    store to temp_224_logic_89 in mem offset legal
    sb      a4,54(sp)
              #                    release a4 with temp_224_logic_89
              #                    store to temp_218_ret_of_h_89 in mem offset legal
    sw      a5,68(sp)
              #                    release a5 with temp_218_ret_of_h_89
              #                    store to temp_225__89 in mem offset legal
    sb      a6,53(sp)
              #                    release a6 with temp_225__89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    arg load ended


    call    h
              #                    store to temp_227_ret_of_h_89 in mem offset legal
    sw      a0,48(sp)
              #                          new_var temp_228__89:i1 
              #                          temp_228__89 = icmp i32 Ne temp_227_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_227_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_228__89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_229_logic_89:i1 
              #                          temp_229_logic_89 = Or i1 temp_228__89, temp_226_logic_89 
              #                    occupy a2 with temp_228__89
              #                    occupy a3 with temp_226_logic_89
              #                    load from temp_226_logic_89 in mem
    lb      a3,52(sp)
              #                    occupy a3 with temp_226_logic_89
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_230_ret_of_h_89:i32 
              #                          temp_230_ret_of_h_89 =  Call i32 h_0(4_0) 
              #                    saved register dumping to mem
              #                    store to temp_227_ret_of_h_89 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_227_ret_of_h_89
              #                    store to temp_228__89 in mem offset legal
    sb      a2,47(sp)
              #                    release a2 with temp_228__89
              #                    store to temp_226_logic_89 in mem offset legal
    sb      a3,52(sp)
              #                    release a3 with temp_226_logic_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    arg load ended


    call    h
              #                    store to temp_230_ret_of_h_89 in mem offset legal
    sw      a0,40(sp)
              #                          new_var temp_231_booltrans_89:i1 
              #                          temp_231_booltrans_89 = icmp i1 Ne temp_230_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_230_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_231_booltrans_89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_232_logicnot_89:i1 
              #                          temp_232_logicnot_89 = xor i1 temp_231_booltrans_89, true 
              #                    occupy a2 with temp_231_booltrans_89
              #                    occupy a3 with temp_232_logicnot_89
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_233_ret_of_h_89:i32 
              #                          temp_233_ret_of_h_89 =  Call i32 h_0(3_0) 
              #                    saved register dumping to mem
              #                    store to temp_230_ret_of_h_89 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_230_ret_of_h_89
              #                    store to temp_231_booltrans_89 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_231_booltrans_89
              #                    store to temp_232_logicnot_89 in mem offset legal
    sb      a3,38(sp)
              #                    release a3 with temp_232_logicnot_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    arg load ended


    call    h
              #                    store to temp_233_ret_of_h_89 in mem offset legal
    sw      a0,32(sp)
              #                          new_var temp_234_booltrans_89:i1 
              #                          temp_234_booltrans_89 = icmp i1 Ne temp_233_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_233_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_234_booltrans_89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_235_logicnot_89:i1 
              #                          temp_235_logicnot_89 = xor i1 temp_234_booltrans_89, true 
              #                    occupy a2 with temp_234_booltrans_89
              #                    occupy a3 with temp_235_logicnot_89
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_236_logic_89:i1 
              #                          temp_236_logic_89 = And i1 temp_235_logicnot_89, temp_232_logicnot_89 
              #                    occupy a3 with temp_235_logicnot_89
              #                    occupy a4 with temp_232_logicnot_89
              #                    load from temp_232_logicnot_89 in mem
    lb      a4,38(sp)
              #                    occupy a5 with temp_236_logic_89
    and     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          new_var temp_237_ret_of_h_89:i32 
              #                          temp_237_ret_of_h_89 =  Call i32 h_0(2_0) 
              #                    saved register dumping to mem
              #                    store to temp_233_ret_of_h_89 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_233_ret_of_h_89
              #                    store to temp_234_booltrans_89 in mem offset legal
    sb      a2,31(sp)
              #                    release a2 with temp_234_booltrans_89
              #                    store to temp_235_logicnot_89 in mem offset legal
    sb      a3,30(sp)
              #                    release a3 with temp_235_logicnot_89
              #                    store to temp_232_logicnot_89 in mem offset legal
    sb      a4,38(sp)
              #                    release a4 with temp_232_logicnot_89
              #                    store to temp_236_logic_89 in mem offset legal
    sb      a5,29(sp)
              #                    release a5 with temp_236_logic_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    arg load ended


    call    h
              #                    store to temp_237_ret_of_h_89 in mem offset legal
    sw      a0,24(sp)
              #                          new_var temp_238__89:i1 
              #                          temp_238__89 = icmp i32 Ne temp_237_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_237_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_238__89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_239_logic_89:i1 
              #                          temp_239_logic_89 = And i1 temp_238__89, temp_236_logic_89 
              #                    occupy a2 with temp_238__89
              #                    occupy a3 with temp_236_logic_89
              #                    load from temp_236_logic_89 in mem
    lb      a3,29(sp)
              #                    occupy a4 with temp_239_logic_89
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_240_ret_of_h_89:i32 
              #                          temp_240_ret_of_h_89 =  Call i32 h_0(0_0) 
              #                    saved register dumping to mem
              #                    store to temp_237_ret_of_h_89 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_237_ret_of_h_89
              #                    store to temp_238__89 in mem offset legal
    sb      a2,23(sp)
              #                    release a2 with temp_238__89
              #                    store to temp_236_logic_89 in mem offset legal
    sb      a3,29(sp)
              #                    release a3 with temp_236_logic_89
              #                    store to temp_239_logic_89 in mem offset legal
    sb      a4,22(sp)
              #                    release a4 with temp_239_logic_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    h
              #                    store to temp_240_ret_of_h_89 in mem offset legal
    sw      a0,16(sp)
              #                          new_var temp_241__89:i1 
              #                          temp_241__89 = icmp i32 Ne temp_240_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_240_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_241__89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_242_logic_89:i1 
              #                          temp_242_logic_89 = And i1 temp_241__89, temp_239_logic_89 
              #                    occupy a2 with temp_241__89
              #                    occupy a3 with temp_239_logic_89
              #                    load from temp_239_logic_89 in mem
    lb      a3,22(sp)
              #                    occupy a4 with temp_242_logic_89
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_243_logic_89:i1 
              #                          temp_243_logic_89 = Or i1 temp_242_logic_89, temp_229_logic_89 
              #                    occupy a4 with temp_242_logic_89
              #                    occupy a5 with temp_229_logic_89
              #                    load from temp_229_logic_89 in mem
    lb      a5,46(sp)
              #                    occupy a5 with temp_229_logic_89
              #                    free a4
              #                    free a5
              #                    free a5
              #                          br i1 temp_243_logic_89, label branch_true_90, label branch_false_90 
              #                    occupy a6 with temp_243_logic_89
              #                    load from temp_243_logic_89 in mem
    lb      a6,13(sp)
              #                    free a6
              #                    occupy a6 with temp_243_logic_89
    bnez    a6, .branch_true_90
              #                    free a6
    j       .branch_false_90
              #                    regtab     a0:Freed { symidx: temp_240_ret_of_h_89, tracked: true } |     a2:Freed { symidx: temp_241__89, tracked: true } |     a3:Freed { symidx: temp_239_logic_89, tracked: true } |     a4:Freed { symidx: temp_242_logic_89, tracked: true } |     a5:Freed { symidx: temp_229_logic_89, tracked: true } |     a6:Freed { symidx: temp_243_logic_89, tracked: true } | 
              #                          label branch_true_90: 
.branch_true_90:
              #                          ans_51 = i32 1_0 
              #                    occupy a1 with ans_51
    li      a1, 1
              #                    free a1
              #                          jump label: branch_false_90 
              #                    store to ans_51 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with ans_51
    j       .branch_false_90
              #                    regtab     a0:Freed { symidx: temp_240_ret_of_h_89, tracked: true } |     a2:Freed { symidx: temp_241__89, tracked: true } |     a3:Freed { symidx: temp_239_logic_89, tracked: true } |     a4:Freed { symidx: temp_242_logic_89, tracked: true } |     a5:Freed { symidx: temp_229_logic_89, tracked: true } |     a6:Freed { symidx: temp_243_logic_89, tracked: true } | 
              #                          label branch_false_90: 
.branch_false_90:
              #                    regtab     a0:Freed { symidx: temp_240_ret_of_h_89, tracked: true } |     a2:Freed { symidx: temp_241__89, tracked: true } |     a3:Freed { symidx: temp_239_logic_89, tracked: true } |     a4:Freed { symidx: temp_242_logic_89, tracked: true } |     a5:Freed { symidx: temp_229_logic_89, tracked: true } |     a6:Freed { symidx: temp_243_logic_89, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_244_ptr2globl_51:i32 
              #                          temp_244_ptr2globl_51 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a7 with temp_244_ptr2globl_51
    lw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                          new_var temp_245_arithop_51:i32 
              #                          temp_245_arithop_51 = Add i32 temp_244_ptr2globl_51, ans_51 
              #                    occupy a7 with temp_244_ptr2globl_51
              #                    occupy s1 with ans_51
              #                    load from ans_51 in mem


    lw      s1,208(sp)
              #                    occupy s2 with temp_245_arithop_51
    add     s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                           Call void putint_0(temp_245_arithop_51) 
              #                    saved register dumping to mem
              #                    store to ans_51 in mem offset legal
    sw      s1,208(sp)
              #                    release s1 with ans_51
              #                    store to temp_245_arithop_51 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_245_arithop_51
              #                    store to temp_240_ret_of_h_89 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_240_ret_of_h_89
              #                    store to temp_241__89 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_241__89
              #                    store to temp_239_logic_89 in mem offset legal
    sb      a3,22(sp)
              #                    release a3 with temp_239_logic_89
              #                    store to temp_242_logic_89 in mem offset legal
    sb      a4,14(sp)
              #                    release a4 with temp_242_logic_89
              #                    store to temp_229_logic_89 in mem offset legal
    sb      a5,46(sp)
              #                    release a5 with temp_229_logic_89
              #                    store to temp_243_logic_89 in mem offset legal
    sb      a6,13(sp)
              #                    release a6 with temp_243_logic_89
              #                    store to temp_244_ptr2globl_51 in mem offset legal
    sw      a7,8(sp)
              #                    release a7 with temp_244_ptr2globl_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_245_arithop_51_0
              #                    load from temp_245_arithop_51 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,568(sp)
              #                    load from s0_main_0 in mem
    ld      s0,560(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,576
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl array
              #                          global Array:i32:[Some(20_0)] array_0 
    .type array,@object
array:
    .zero 80
    .align 4
    .globl sum
              #                          global i32 sum_0 
    .type sum,@object
sum:
    .word 0
