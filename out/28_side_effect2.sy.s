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
              #                    mem layout:|ra_f:8 at 240|s0_f:8 at 232|i:4 at 228|j:4 at 224|temp_0_ptr2globl:4 at 220|temp_1_arithop:4 at 216|temp_2_cmp:1 at 215|temp_3_cmp:1 at 214|temp_4_logic:1 at 213|none:5 at 208|temp_5_index_ptr:8 at 200|temp_6_cmp:1 at 199|none:3 at 196|temp_7_ptr2globl:80 at 116|none:4 at 112|temp_8_array_ptr:8 at 104|temp_9_array_ele:4 at 100|temp_10_arithop:4 at 96|temp_11_ptr2globl:80 at 16|temp_12_array_ptr:8 at 8|temp_13_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-248
              #                    store to ra_f_0 in mem offset legal
    sd      ra,240(sp)
              #                    store to s0_f_0 in mem offset legal
    sd      s0,232(sp)
    addi    s0,sp,248
              #                          alloc i32 temp_0_ptr2globl_20 
              #                          alloc i32 temp_1_arithop_20 
              #                          alloc i1 temp_2_cmp_22 
              #                          alloc i1 temp_3_cmp_22 
              #                          alloc i1 temp_4_logic_22 
              #                          alloc ptr->i32 temp_5_index_ptr_20 
              #                          alloc i1 temp_6_cmp_26 
              #                          alloc Array:i32:[Some(20_0)] temp_7_ptr2globl_26 
              #                          alloc ptr->i32 temp_8_array_ptr_26 
              #                          alloc i32 temp_9_array_ele_26 
              #                          alloc i32 temp_10_arithop_26 
              #                          alloc Array:i32:[Some(20_0)] temp_11_ptr2globl_26 
              #                          alloc ptr->i32 temp_12_array_ptr_26 
              #                          alloc i32 temp_13_array_ele_26 
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
    lb      a7,213(sp)
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
    ld      ra,240(sp)
              #                    load from s0_f_0 in mem
    ld      s0,232(sp)
              #                    store to i_18 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with i_18
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,248
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } | 
              #                          label branch_false_23: 
.branch_false_23:
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } | 
              #                          label L21_0: 
.L21_0:
              #                          new_var temp_5_index_ptr_20:ptr->i32 
              #                          temp_5_index_ptr_20 = getelementptr array_0:Array:i32:[Some(20_0)] [Some(i_18)] 
              #                    occupy a2 with temp_5_index_ptr_20
    li      a2, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a0 with i_18
              #                    occupy s2 with _anonymous_of_array_0_0
    mul     s2,s1,a0
              #                    free s1
              #                    free a0
    add     a2,a2,s2
              #                    free s2
    slli a2,a2,2
              #                    occupy s3 with _anonymous_of_array_0_0
    la      s3, array
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
              #                          mu array_0:47 
              #                          array_0 = chi array_0:47 
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
              #                          new_var temp_7_ptr2globl_26:Array:i32:[Some(20_0)] 
              #                          temp_7_ptr2globl_26 = load *array_0:ptr->i32 
              #                    occupy s1 with *array_0
              #                       load label array as ptr to reg
    la      s1, array
              #                    occupy reg s1 with *array_0
              #                    occupy s3 with temp_7_ptr2globl_26
    lw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          new_var temp_8_array_ptr_26:ptr->i32 
              #                          temp_8_array_ptr_26 = getelementptr temp_7_ptr2globl_26:Array:i32:[Some(20_0)] [Some(0_0)] 
              #                    occupy s4 with temp_8_array_ptr_26
    li      s4, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with 0_0
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_7_ptr2globl_26_0
    mul     s7,s5,s6
              #                    free s5
              #                    free s6
    add     s4,s4,s7
              #                    free s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,116
              #                    free s4
              #                          new_var temp_9_array_ele_26:i32 
              #                          temp_9_array_ele_26 = load temp_8_array_ptr_26:ptr->i32 
              #                    occupy s4 with temp_8_array_ptr_26
              #                    occupy s8 with temp_9_array_ele_26
    lw      s8,0(s4)
              #                    free s8
              #                    free s4
              #                          ret temp_9_array_ele_26 
              #                    load from ra_f_0 in mem
    ld      ra,240(sp)
              #                    load from s0_f_0 in mem
    ld      s0,232(sp)
              #                    store to temp_9_array_ele_26 in mem offset legal
    sw      s8,100(sp)
              #                    release s8 with temp_9_array_ele_26
              #                    store to i_18 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with i_18
              #                    occupy a0 with temp_9_array_ele_26
              #                    load from temp_9_array_ele_26 in mem


    lw      a0,100(sp)
    addi    sp,sp,248
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_18, tracked: true } |     a1:Freed { symidx: j_18, tracked: true } |     a2:Freed { symidx: temp_5_index_ptr_20, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } |     s2:Freed { symidx: temp_6_cmp_26, tracked: true } | 
              #                          label branch_false_27: 
.branch_false_27:
              #                          new_var temp_10_arithop_26:i32 
              #                          temp_10_arithop_26 = Sub i32 i_18, 1_0 
              #                    occupy a0 with i_18
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with temp_10_arithop_26
              #                    regtab:    a0:Occupied { symidx: i_18, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: j_18, tracked: true } |     a2:Freed { symidx: temp_5_index_ptr_20, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_6_cmp_26, tracked: true } |     s3:Occupied { symidx: temp_10_arithop_26, tracked: true, occupy_count: 1 } | 


    sub     s3,a0,s1
              #                    free a0
              #                    free s1
              #                    free s3
              #                          new_var temp_11_ptr2globl_26:Array:i32:[Some(20_0)] 
              #                          temp_11_ptr2globl_26 = load *array_0:ptr->i32 
              #                    occupy s4 with *array_0
              #                       load label array as ptr to reg
    la      s4, array
              #                    occupy reg s4 with *array_0
              #                    occupy s5 with temp_11_ptr2globl_26
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_12_array_ptr_26:ptr->i32 
              #                          temp_12_array_ptr_26 = getelementptr temp_11_ptr2globl_26:Array:i32:[Some(20_0)] [Some(temp_10_arithop_26)] 
              #                    occupy s6 with temp_12_array_ptr_26
    li      s6, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s3 with temp_10_arithop_26
              #                    occupy s7 with _anonymous_of_temp_11_ptr2globl_26_0
    mul     s7,s1,s3
              #                    free s1
              #                    free s3
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,16
              #                    free s6
              #                          new_var temp_13_array_ele_26:i32 
              #                          temp_13_array_ele_26 = load temp_12_array_ptr_26:ptr->i32 
              #                    occupy s6 with temp_12_array_ptr_26
              #                    occupy s8 with temp_13_array_ele_26
    lw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                          ret temp_13_array_ele_26 
              #                    load from ra_f_0 in mem
    ld      ra,240(sp)
              #                    load from s0_f_0 in mem
    ld      s0,232(sp)
              #                    store to temp_13_array_ele_26 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_13_array_ele_26
              #                    store to i_18 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with i_18
              #                    occupy a0 with temp_13_array_ele_26
              #                    load from temp_13_array_ele_26 in mem


    lw      a0,4(sp)
    addi    sp,sp,248
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: j_18, tracked: true } |     a2:Freed { symidx: temp_5_index_ptr_20, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } |     s2:Freed { symidx: temp_6_cmp_26, tracked: true } |     s3:Freed { symidx: temp_10_arithop_26, tracked: true } |     s5:Freed { symidx: temp_11_ptr2globl_26, tracked: true } |     s6:Freed { symidx: temp_12_array_ptr_26, tracked: true } | 
              #                          label L23_0: 
.L23_0:
              #                    regtab     a1:Freed { symidx: j_18, tracked: true } |     a2:Freed { symidx: temp_5_index_ptr_20, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a4:Freed { symidx: temp_2_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_arithop_20, tracked: true } |     a6:Freed { symidx: temp_3_cmp_22, tracked: true } |     a7:Freed { symidx: temp_4_logic_22, tracked: true } |     s2:Freed { symidx: temp_6_cmp_26, tracked: true } |     s3:Freed { symidx: temp_10_arithop_26, tracked: true } |     s5:Freed { symidx: temp_11_ptr2globl_26, tracked: true } |     s6:Freed { symidx: temp_12_array_ptr_26, tracked: true } | 
              #                    regtab 
              #                          Define g_0 [i_30, j_30] -> g_ret_0 
    .globl g
    .type g,@function
g:
              #                    mem layout:|ra_g:8 at 240|s0_g:8 at 232|i:4 at 228|j:4 at 224|temp_14_ptr2globl:4 at 220|temp_15_arithop:4 at 216|temp_16_cmp:1 at 215|temp_17_cmp:1 at 214|temp_18_logic:1 at 213|none:5 at 208|temp_19_index_ptr:8 at 200|temp_20_cmp:1 at 199|none:3 at 196|temp_21_ptr2globl:80 at 116|none:4 at 112|temp_22_array_ptr:8 at 104|temp_23_array_ele:4 at 100|temp_24_arithop:4 at 96|temp_25_ptr2globl:80 at 16|temp_26_array_ptr:8 at 8|temp_27_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-248
              #                    store to ra_g_0 in mem offset legal
    sd      ra,240(sp)
              #                    store to s0_g_0 in mem offset legal
    sd      s0,232(sp)
    addi    s0,sp,248
              #                          alloc i32 temp_14_ptr2globl_32 
              #                          alloc i32 temp_15_arithop_32 
              #                          alloc i1 temp_16_cmp_34 
              #                          alloc i1 temp_17_cmp_34 
              #                          alloc i1 temp_18_logic_34 
              #                          alloc ptr->i32 temp_19_index_ptr_32 
              #                          alloc i1 temp_20_cmp_38 
              #                          alloc Array:i32:[Some(20_0)] temp_21_ptr2globl_38 
              #                          alloc ptr->i32 temp_22_array_ptr_38 
              #                          alloc i32 temp_23_array_ele_38 
              #                          alloc i32 temp_24_arithop_38 
              #                          alloc Array:i32:[Some(20_0)] temp_25_ptr2globl_38 
              #                          alloc ptr->i32 temp_26_array_ptr_38 
              #                          alloc i32 temp_27_array_ele_38 
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          new_var temp_14_ptr2globl_32:i32 
              #                          temp_14_ptr2globl_32 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_14_ptr2globl_32
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_15_arithop_32:i32 
              #                          temp_15_arithop_32 = Add i32 temp_14_ptr2globl_32, 2_0 
              #                    occupy a3 with temp_14_ptr2globl_32
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    occupy a5 with temp_15_arithop_32
    add     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          store temp_15_arithop_32:i32 *sum_0:ptr->i32 
              #                    occupy a6 with *sum_0
              #                       load label sum as ptr to reg
    la      a6, sum
              #                    occupy reg a6 with *sum_0
              #                    occupy a5 with temp_15_arithop_32
    sw      a5,0(a6)
              #                    free a5
              #                    free a6
              #                          jump label: L15_0 
    j       .L15_0
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a3:Freed { symidx: temp_14_ptr2globl_32, tracked: true } |     a5:Freed { symidx: temp_15_arithop_32, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                          new_var temp_16_cmp_34:i1 
              #                          temp_16_cmp_34 = icmp i32 Sge i_30, 20_0 
              #                    occupy a0 with i_30
              #                    occupy a2 with 20_0
    li      a2, 20
              #                    occupy a4 with temp_16_cmp_34
    slt     a4,a0,a2
    xori    a4,a4,1
              #                    free a0
              #                    free a2
              #                    free a4
              #                          new_var temp_17_cmp_34:i1 
              #                          temp_17_cmp_34 = icmp i32 Sge i_30, j_30 
              #                    occupy a0 with i_30
              #                    occupy a1 with j_30
              #                    occupy a6 with temp_17_cmp_34
    slt     a6,a0,a1
    xori    a6,a6,1
              #                    free a0
              #                    free a1
              #                    free a6
              #                          new_var temp_18_logic_34:i1 
              #                          temp_18_logic_34 = Or i1 temp_17_cmp_34, temp_16_cmp_34 
              #                    occupy a6 with temp_17_cmp_34
              #                    occupy a4 with temp_16_cmp_34
              #                    occupy a4 with temp_16_cmp_34
              #                    free a6
              #                    free a4
              #                    free a4
              #                          br i1 temp_18_logic_34, label branch_true_35, label branch_false_35 
              #                    occupy a7 with temp_18_logic_34
              #                    load from temp_18_logic_34 in mem
    lb      a7,213(sp)
              #                    free a7
              #                    occupy a7 with temp_18_logic_34
    bnez    a7, .branch_true_35
              #                    free a7
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a3:Freed { symidx: temp_14_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_16_cmp_34, tracked: true } |     a5:Freed { symidx: temp_15_arithop_32, tracked: true } |     a6:Freed { symidx: temp_17_cmp_34, tracked: true } |     a7:Freed { symidx: temp_18_logic_34, tracked: true } | 
              #                          label branch_true_35: 
.branch_true_35:
              #                          ret 1_0 
              #                    load from ra_g_0 in mem
    ld      ra,240(sp)
              #                    load from s0_g_0 in mem
    ld      s0,232(sp)
              #                    store to i_30 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with i_30
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,248
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a3:Freed { symidx: temp_14_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_16_cmp_34, tracked: true } |     a5:Freed { symidx: temp_15_arithop_32, tracked: true } |     a6:Freed { symidx: temp_17_cmp_34, tracked: true } |     a7:Freed { symidx: temp_18_logic_34, tracked: true } | 
              #                          label branch_false_35: 
.branch_false_35:
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a3:Freed { symidx: temp_14_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_16_cmp_34, tracked: true } |     a5:Freed { symidx: temp_15_arithop_32, tracked: true } |     a6:Freed { symidx: temp_17_cmp_34, tracked: true } |     a7:Freed { symidx: temp_18_logic_34, tracked: true } | 
              #                          label L16_0: 
.L16_0:
              #                          new_var temp_19_index_ptr_32:ptr->i32 
              #                          temp_19_index_ptr_32 = getelementptr array_0:Array:i32:[Some(20_0)] [Some(i_30)] 
              #                    occupy a2 with temp_19_index_ptr_32
    li      a2, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a0 with i_30
              #                    occupy s2 with _anonymous_of_array_0_0
    mul     s2,s1,a0
              #                    free s1
              #                    free a0
    add     a2,a2,s2
              #                    free s2
    slli a2,a2,2
              #                    occupy s3 with _anonymous_of_array_0_0
    la      s3, array
    add     a2,a2,s3
              #                    free s3
              #                    free a2
              #                          store 0_0:i32 temp_19_index_ptr_32:ptr->i32 
              #                    occupy a2 with temp_19_index_ptr_32
              #                    occupy s4 with 0_0
    li      s4, 0
    sw      s4,0(a2)
              #                    free s4
              #                    free a2
              #                          mu array_0:105 
              #                          array_0 = chi array_0:105 
              #                          jump label: L17_0 
    j       .L17_0
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a2:Freed { symidx: temp_19_index_ptr_32, tracked: true } |     a3:Freed { symidx: temp_14_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_16_cmp_34, tracked: true } |     a5:Freed { symidx: temp_15_arithop_32, tracked: true } |     a6:Freed { symidx: temp_17_cmp_34, tracked: true } |     a7:Freed { symidx: temp_18_logic_34, tracked: true } | 
              #                          label L17_0: 
.L17_0:
              #                          new_var temp_20_cmp_38:i1 
              #                          temp_20_cmp_38 = icmp i32 Eq i_30, 0_0 
              #                    occupy a0 with i_30
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s2 with temp_20_cmp_38
    xor     s2,a0,s1
    seqz    s2, s2
              #                    free a0
              #                    free s1
              #                    free s2
              #                          br i1 temp_20_cmp_38, label branch_true_39, label branch_false_39 
              #                    occupy s2 with temp_20_cmp_38
              #                    free s2
              #                    occupy s2 with temp_20_cmp_38
    bnez    s2, .branch_true_39
              #                    free s2
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a2:Freed { symidx: temp_19_index_ptr_32, tracked: true } |     a3:Freed { symidx: temp_14_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_16_cmp_34, tracked: true } |     a5:Freed { symidx: temp_15_arithop_32, tracked: true } |     a6:Freed { symidx: temp_17_cmp_34, tracked: true } |     a7:Freed { symidx: temp_18_logic_34, tracked: true } |     s2:Freed { symidx: temp_20_cmp_38, tracked: true } | 
              #                          label branch_true_39: 
.branch_true_39:
              #                          new_var temp_21_ptr2globl_38:Array:i32:[Some(20_0)] 
              #                          temp_21_ptr2globl_38 = load *array_0:ptr->i32 
              #                    occupy s1 with *array_0
              #                       load label array as ptr to reg
    la      s1, array
              #                    occupy reg s1 with *array_0
              #                    occupy s3 with temp_21_ptr2globl_38
    lw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          new_var temp_22_array_ptr_38:ptr->i32 
              #                          temp_22_array_ptr_38 = getelementptr temp_21_ptr2globl_38:Array:i32:[Some(20_0)] [Some(0_0)] 
              #                    occupy s4 with temp_22_array_ptr_38
    li      s4, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with 0_0
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_21_ptr2globl_38_0
    mul     s7,s5,s6
              #                    free s5
              #                    free s6
    add     s4,s4,s7
              #                    free s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,116
              #                    free s4
              #                          new_var temp_23_array_ele_38:i32 
              #                          temp_23_array_ele_38 = load temp_22_array_ptr_38:ptr->i32 
              #                    occupy s4 with temp_22_array_ptr_38
              #                    occupy s8 with temp_23_array_ele_38
    lw      s8,0(s4)
              #                    free s8
              #                    free s4
              #                          ret temp_23_array_ele_38 
              #                    load from ra_g_0 in mem
    ld      ra,240(sp)
              #                    load from s0_g_0 in mem
    ld      s0,232(sp)
              #                    store to temp_23_array_ele_38 in mem offset legal
    sw      s8,100(sp)
              #                    release s8 with temp_23_array_ele_38
              #                    store to i_30 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with i_30
              #                    occupy a0 with temp_23_array_ele_38
              #                    load from temp_23_array_ele_38 in mem


    lw      a0,100(sp)
    addi    sp,sp,248
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_30, tracked: true } |     a1:Freed { symidx: j_30, tracked: true } |     a2:Freed { symidx: temp_19_index_ptr_32, tracked: true } |     a3:Freed { symidx: temp_14_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_16_cmp_34, tracked: true } |     a5:Freed { symidx: temp_15_arithop_32, tracked: true } |     a6:Freed { symidx: temp_17_cmp_34, tracked: true } |     a7:Freed { symidx: temp_18_logic_34, tracked: true } |     s2:Freed { symidx: temp_20_cmp_38, tracked: true } | 
              #                          label branch_false_39: 
.branch_false_39:
              #                          new_var temp_24_arithop_38:i32 
              #                          temp_24_arithop_38 = Sub i32 i_30, 1_0 
              #                    occupy a0 with i_30
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with temp_24_arithop_38
              #                    regtab:    a0:Occupied { symidx: i_30, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: j_30, tracked: true } |     a2:Freed { symidx: temp_19_index_ptr_32, tracked: true } |     a3:Freed { symidx: temp_14_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_16_cmp_34, tracked: true } |     a5:Freed { symidx: temp_15_arithop_32, tracked: true } |     a6:Freed { symidx: temp_17_cmp_34, tracked: true } |     a7:Freed { symidx: temp_18_logic_34, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_20_cmp_38, tracked: true } |     s3:Occupied { symidx: temp_24_arithop_38, tracked: true, occupy_count: 1 } | 


    sub     s3,a0,s1
              #                    free a0
              #                    free s1
              #                    free s3
              #                          new_var temp_25_ptr2globl_38:Array:i32:[Some(20_0)] 
              #                          temp_25_ptr2globl_38 = load *array_0:ptr->i32 
              #                    occupy s4 with *array_0
              #                       load label array as ptr to reg
    la      s4, array
              #                    occupy reg s4 with *array_0
              #                    occupy s5 with temp_25_ptr2globl_38
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_26_array_ptr_38:ptr->i32 
              #                          temp_26_array_ptr_38 = getelementptr temp_25_ptr2globl_38:Array:i32:[Some(20_0)] [Some(temp_24_arithop_38)] 
              #                    occupy s6 with temp_26_array_ptr_38
    li      s6, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s3 with temp_24_arithop_38
              #                    occupy s7 with _anonymous_of_temp_25_ptr2globl_38_0
    mul     s7,s1,s3
              #                    free s1
              #                    free s3
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,16
              #                    free s6
              #                          new_var temp_27_array_ele_38:i32 
              #                          temp_27_array_ele_38 = load temp_26_array_ptr_38:ptr->i32 
              #                    occupy s6 with temp_26_array_ptr_38
              #                    occupy s8 with temp_27_array_ele_38
    lw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                          ret temp_27_array_ele_38 
              #                    load from ra_g_0 in mem
    ld      ra,240(sp)
              #                    load from s0_g_0 in mem
    ld      s0,232(sp)
              #                    store to temp_27_array_ele_38 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_27_array_ele_38
              #                    store to i_30 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with i_30
              #                    occupy a0 with temp_27_array_ele_38
              #                    load from temp_27_array_ele_38 in mem


    lw      a0,4(sp)
    addi    sp,sp,248
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: j_30, tracked: true } |     a2:Freed { symidx: temp_19_index_ptr_32, tracked: true } |     a3:Freed { symidx: temp_14_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_16_cmp_34, tracked: true } |     a5:Freed { symidx: temp_15_arithop_32, tracked: true } |     a6:Freed { symidx: temp_17_cmp_34, tracked: true } |     a7:Freed { symidx: temp_18_logic_34, tracked: true } |     s2:Freed { symidx: temp_20_cmp_38, tracked: true } |     s3:Freed { symidx: temp_24_arithop_38, tracked: true } |     s5:Freed { symidx: temp_25_ptr2globl_38, tracked: true } |     s6:Freed { symidx: temp_26_array_ptr_38, tracked: true } | 
              #                          label L18_0: 
.L18_0:
              #                    regtab     a1:Freed { symidx: j_30, tracked: true } |     a2:Freed { symidx: temp_19_index_ptr_32, tracked: true } |     a3:Freed { symidx: temp_14_ptr2globl_32, tracked: true } |     a4:Freed { symidx: temp_16_cmp_34, tracked: true } |     a5:Freed { symidx: temp_15_arithop_32, tracked: true } |     a6:Freed { symidx: temp_17_cmp_34, tracked: true } |     a7:Freed { symidx: temp_18_logic_34, tracked: true } |     s2:Freed { symidx: temp_20_cmp_38, tracked: true } |     s3:Freed { symidx: temp_24_arithop_38, tracked: true } |     s5:Freed { symidx: temp_25_ptr2globl_38, tracked: true } |     s6:Freed { symidx: temp_26_array_ptr_38, tracked: true } | 
              #                    regtab 
              #                          Define h_0 [i_42] -> h_ret_0 
    .globl h
    .type h,@function
h:
              #                    mem layout:|ra_h:8 at 120|s0_h:8 at 112|i:4 at 108|temp_28_ptr2globl:4 at 104|temp_29_arithop:4 at 100|temp_30_cmp:1 at 99|temp_31_cmp:1 at 98|temp_32_logic:1 at 97|none:1 at 96|temp_33_ptr2globl:80 at 16|temp_34_array_ptr:8 at 8|temp_35_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-128
              #                    store to ra_h_0 in mem offset legal
    sd      ra,120(sp)
              #                    store to s0_h_0 in mem offset legal
    sd      s0,112(sp)
    addi    s0,sp,128
              #                          alloc i32 temp_28_ptr2globl_44 
              #                          alloc i32 temp_29_arithop_44 
              #                          alloc i1 temp_30_cmp_46 
              #                          alloc i1 temp_31_cmp_46 
              #                          alloc i1 temp_32_logic_46 
              #                          alloc Array:i32:[Some(20_0)] temp_33_ptr2globl_44 
              #                          alloc ptr->i32 temp_34_array_ptr_44 
              #                          alloc i32 temp_35_array_ele_44 
              #                    regtab     a0:Freed { symidx: i_42, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_28_ptr2globl_44:i32 
              #                          temp_28_ptr2globl_44 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a2 with temp_28_ptr2globl_44
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_29_arithop_44:i32 
              #                          temp_29_arithop_44 = Add i32 temp_28_ptr2globl_44, 3_0 
              #                    occupy a2 with temp_28_ptr2globl_44
              #                    occupy a3 with 3_0
    li      a3, 3
              #                    occupy a4 with temp_29_arithop_44
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          store temp_29_arithop_44:i32 *sum_0:ptr->i32 
              #                    occupy a5 with *sum_0
              #                       load label sum as ptr to reg
    la      a5, sum
              #                    occupy reg a5 with *sum_0
              #                    occupy a4 with temp_29_arithop_44
    sw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab     a0:Freed { symidx: i_42, tracked: true } |     a2:Freed { symidx: temp_28_ptr2globl_44, tracked: true } |     a4:Freed { symidx: temp_29_arithop_44, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_30_cmp_46:i1 
              #                          temp_30_cmp_46 = icmp i32 Sge i_42, 20_0 
              #                    occupy a0 with i_42
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a3 with temp_30_cmp_46
    slt     a3,a0,a1
    xori    a3,a3,1
              #                    free a0
              #                    free a1
              #                    free a3
              #                          new_var temp_31_cmp_46:i1 
              #                          temp_31_cmp_46 = icmp i32 Slt i_42, 0_0 
              #                    occupy a0 with i_42
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_31_cmp_46
    slt     a6,a0,a5
              #                    free a0
              #                    free a5
              #                    free a6
              #                          new_var temp_32_logic_46:i1 
              #                          temp_32_logic_46 = Or i1 temp_31_cmp_46, temp_30_cmp_46 
              #                    occupy a6 with temp_31_cmp_46
              #                    occupy a3 with temp_30_cmp_46
              #                    occupy a3 with temp_30_cmp_46
              #                    free a6
              #                    free a3
              #                    free a3
              #                          br i1 temp_32_logic_46, label branch_true_47, label branch_false_47 
              #                    occupy a7 with temp_32_logic_46
              #                    load from temp_32_logic_46 in mem
    lb      a7,97(sp)
              #                    free a7
              #                    occupy a7 with temp_32_logic_46
    bnez    a7, .branch_true_47
              #                    free a7
    j       .branch_false_47
              #                    regtab     a0:Freed { symidx: i_42, tracked: true } |     a2:Freed { symidx: temp_28_ptr2globl_44, tracked: true } |     a3:Freed { symidx: temp_30_cmp_46, tracked: true } |     a4:Freed { symidx: temp_29_arithop_44, tracked: true } |     a6:Freed { symidx: temp_31_cmp_46, tracked: true } |     a7:Freed { symidx: temp_32_logic_46, tracked: true } | 
              #                          label branch_true_47: 
.branch_true_47:
              #                          ret 0_0 
              #                    load from ra_h_0 in mem
    ld      ra,120(sp)
              #                    load from s0_h_0 in mem
    ld      s0,112(sp)
              #                    store to i_42 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with i_42
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,128
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_42, tracked: true } |     a2:Freed { symidx: temp_28_ptr2globl_44, tracked: true } |     a3:Freed { symidx: temp_30_cmp_46, tracked: true } |     a4:Freed { symidx: temp_29_arithop_44, tracked: true } |     a6:Freed { symidx: temp_31_cmp_46, tracked: true } |     a7:Freed { symidx: temp_32_logic_46, tracked: true } | 
              #                          label branch_false_47: 
.branch_false_47:
              #                    regtab     a0:Freed { symidx: i_42, tracked: true } |     a2:Freed { symidx: temp_28_ptr2globl_44, tracked: true } |     a3:Freed { symidx: temp_30_cmp_46, tracked: true } |     a4:Freed { symidx: temp_29_arithop_44, tracked: true } |     a6:Freed { symidx: temp_31_cmp_46, tracked: true } |     a7:Freed { symidx: temp_32_logic_46, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                          new_var temp_33_ptr2globl_44:Array:i32:[Some(20_0)] 
              #                          temp_33_ptr2globl_44 = load *array_0:ptr->i32 
              #                    occupy a1 with *array_0
              #                       load label array as ptr to reg
    la      a1, array
              #                    occupy reg a1 with *array_0
              #                    occupy a5 with temp_33_ptr2globl_44
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_34_array_ptr_44:ptr->i32 
              #                          temp_34_array_ptr_44 = getelementptr temp_33_ptr2globl_44:Array:i32:[Some(20_0)] [Some(i_42)] 
              #                    occupy s1 with temp_34_array_ptr_44
    li      s1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a0 with i_42
              #                    occupy s3 with _anonymous_of_temp_33_ptr2globl_44_0
    mul     s3,s2,a0
              #                    free s2
              #                    free a0
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,16
              #                    free s1
              #                          new_var temp_35_array_ele_44:i32 
              #                          temp_35_array_ele_44 = load temp_34_array_ptr_44:ptr->i32 
              #                    occupy s1 with temp_34_array_ptr_44
              #                    occupy s4 with temp_35_array_ele_44
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          ret temp_35_array_ele_44 
              #                    load from ra_h_0 in mem
    ld      ra,120(sp)
              #                    load from s0_h_0 in mem
    ld      s0,112(sp)
              #                    store to temp_35_array_ele_44 in mem offset legal
    sw      s4,4(sp)
              #                    release s4 with temp_35_array_ele_44
              #                    store to i_42 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with i_42
              #                    occupy a0 with temp_35_array_ele_44
              #                    load from temp_35_array_ele_44 in mem


    lw      a0,4(sp)
    addi    sp,sp,128
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_28_ptr2globl_44, tracked: true } |     a3:Freed { symidx: temp_30_cmp_46, tracked: true } |     a4:Freed { symidx: temp_29_arithop_44, tracked: true } |     a5:Freed { symidx: temp_33_ptr2globl_44, tracked: true } |     a6:Freed { symidx: temp_31_cmp_46, tracked: true } |     a7:Freed { symidx: temp_32_logic_46, tracked: true } |     s1:Freed { symidx: temp_34_array_ptr_44, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 568|s0_main:8 at 560|i:4 at 556|temp_36_cmp:1 at 555|none:3 at 552|temp_37_ret_of_f:4 at 548|temp_38_ret_of_f:4 at 544|temp_39_:1 at 543|temp_40_:1 at 542|temp_41_logic:1 at 541|none:1 at 540|temp_42_ret_of_f:4 at 536|temp_43_:1 at 535|temp_44_logic:1 at 534|none:2 at 532|temp_45_ret_of_f:4 at 528|temp_46_:1 at 527|temp_47_logic:1 at 526|none:2 at 524|temp_48_ret_of_f:4 at 520|temp_49_:1 at 519|temp_50_logic:1 at 518|none:2 at 516|temp_51_ret_of_f:4 at 512|temp_52_:1 at 511|temp_53_logic:1 at 510|none:2 at 508|temp_54_ret_of_f:4 at 504|temp_55_:1 at 503|temp_56_logic:1 at 502|none:2 at 500|temp_57_ret_of_f:4 at 496|temp_58_:1 at 495|temp_59_logic:1 at 494|none:2 at 492|temp_60_ret_of_f:4 at 488|temp_61_:1 at 487|temp_62_logic:1 at 486|none:2 at 484|temp_63_ret_of_f:4 at 480|temp_64_:1 at 479|temp_65_logic:1 at 478|none:2 at 476|temp_66_ret_of_f:4 at 472|temp_67_:1 at 471|temp_68_logic:1 at 470|none:2 at 468|temp_69_ret_of_f:4 at 464|temp_70_:1 at 463|temp_71_logic:1 at 462|none:2 at 460|temp_72_ret_of_f:4 at 456|temp_73_:1 at 455|temp_74_logic:1 at 454|none:2 at 452|temp_75_ret_of_f:4 at 448|temp_76_:1 at 447|temp_77_logic:1 at 446|none:2 at 444|temp_78_ret_of_f:4 at 440|temp_79_:1 at 439|temp_80_logic:1 at 438|none:2 at 436|temp_81_ret_of_f:4 at 432|temp_82_:1 at 431|temp_83_logic:1 at 430|none:2 at 428|temp_84_ret_of_f:4 at 424|temp_85_:1 at 423|temp_86_logic:1 at 422|none:2 at 420|temp_87_ret_of_f:4 at 416|temp_88_:1 at 415|temp_89_logic:1 at 414|none:2 at 412|temp_90_ret_of_f:4 at 408|temp_91_:1 at 407|temp_92_logic:1 at 406|none:2 at 404|temp_93_ret_of_f:4 at 400|temp_94_:1 at 399|temp_95_logic:1 at 398|none:2 at 396|temp_96_arithop:4 at 392|temp_97_cmp:1 at 391|none:3 at 388|temp_98_ret_of_g:4 at 384|temp_99_ret_of_g:4 at 380|temp_100_:1 at 379|temp_101_:1 at 378|temp_102_logic:1 at 377|none:1 at 376|temp_103_ret_of_g:4 at 372|temp_104_:1 at 371|temp_105_logic:1 at 370|none:2 at 368|temp_106_ret_of_g:4 at 364|temp_107_:1 at 363|temp_108_logic:1 at 362|none:2 at 360|temp_109_ret_of_g:4 at 356|temp_110_:1 at 355|temp_111_logic:1 at 354|none:2 at 352|temp_112_ret_of_g:4 at 348|temp_113_:1 at 347|temp_114_logic:1 at 346|none:2 at 344|temp_115_ret_of_g:4 at 340|temp_116_:1 at 339|temp_117_logic:1 at 338|none:2 at 336|temp_118_ret_of_g:4 at 332|temp_119_:1 at 331|temp_120_logic:1 at 330|none:2 at 328|temp_121_ret_of_g:4 at 324|temp_122_:1 at 323|temp_123_logic:1 at 322|none:2 at 320|temp_124_ret_of_g:4 at 316|temp_125_:1 at 315|temp_126_logic:1 at 314|none:2 at 312|temp_127_ret_of_g:4 at 308|temp_128_:1 at 307|temp_129_logic:1 at 306|none:2 at 304|temp_130_ret_of_g:4 at 300|temp_131_:1 at 299|temp_132_logic:1 at 298|none:2 at 296|temp_133_ret_of_g:4 at 292|temp_134_:1 at 291|temp_135_logic:1 at 290|none:2 at 288|temp_136_ret_of_g:4 at 284|temp_137_:1 at 283|temp_138_logic:1 at 282|none:2 at 280|temp_139_ret_of_g:4 at 276|temp_140_:1 at 275|temp_141_logic:1 at 274|none:2 at 272|temp_142_ret_of_g:4 at 268|temp_143_:1 at 267|temp_144_logic:1 at 266|none:2 at 264|temp_145_ret_of_g:4 at 260|temp_146_:1 at 259|temp_147_logic:1 at 258|none:2 at 256|temp_148_ret_of_g:4 at 252|temp_149_:1 at 251|temp_150_logic:1 at 250|none:2 at 248|temp_151_ret_of_g:4 at 244|temp_152_:1 at 243|temp_153_logic:1 at 242|none:2 at 240|temp_154_ret_of_g:4 at 236|temp_155_:1 at 235|temp_156_logic:1 at 234|none:2 at 232|temp_157_arithop:4 at 228|temp_158_arithop:4 at 224|temp_159_ret_of_f:4 at 220|temp_160_cmp:1 at 219|temp_161_:1 at 218|temp_162_logic:1 at 217|none:1 at 216|temp_163_arithop:4 at 212|ans:4 at 208|temp_164_ret_of_h:4 at 204|temp_165_ret_of_h:4 at 200|temp_166_booltrans:1 at 199|temp_167_logicnot:1 at 198|temp_168_:1 at 197|temp_169_logic:1 at 196|temp_170_ret_of_h:4 at 192|temp_171_ret_of_h:4 at 188|temp_172_:1 at 187|temp_173_:1 at 186|temp_174_logic:1 at 185|temp_175_logic:1 at 184|temp_176_ptr2globl:4 at 180|temp_177_arithop:4 at 176|temp_178_ret_of_h:4 at 172|temp_179_booltrans:1 at 171|temp_180_logicnot:1 at 170|none:2 at 168|temp_181_ret_of_h:4 at 164|temp_182_ret_of_h:4 at 160|temp_183_booltrans:1 at 159|temp_184_logicnot:1 at 158|temp_185_:1 at 157|temp_186_logic:1 at 156|temp_187_ret_of_h:4 at 152|temp_188_:1 at 151|temp_189_logic:1 at 150|temp_190_logic:1 at 149|none:1 at 148|temp_191_ret_of_h:4 at 144|temp_192_booltrans:1 at 143|temp_193_logicnot:1 at 142|temp_194_logic:1 at 141|none:1 at 140|temp_195_ptr2globl:4 at 136|temp_196_arithop:4 at 132|temp_197_ret_of_h:4 at 128|temp_198_ret_of_h:4 at 124|temp_199_:1 at 123|temp_200_:1 at 122|temp_201_logic:1 at 121|none:1 at 120|temp_202_ret_of_h:4 at 116|temp_203_booltrans:1 at 115|temp_204_logicnot:1 at 114|temp_205_logic:1 at 113|none:1 at 112|temp_206_ret_of_h:4 at 108|temp_207_booltrans:1 at 107|temp_208_logicnot:1 at 106|temp_209_logic:1 at 105|none:1 at 104|temp_210_ret_of_h:4 at 100|temp_211_booltrans:1 at 99|temp_212_logicnot:1 at 98|temp_213_logic:1 at 97|none:1 at 96|temp_214_ret_of_h:4 at 92|temp_215_booltrans:1 at 91|temp_216_logicnot:1 at 90|none:2 at 88|temp_217_ret_of_h:4 at 84|temp_218_:1 at 83|temp_219_logic:1 at 82|temp_220_logic:1 at 81|none:1 at 80|temp_221_ptr2globl:4 at 76|temp_222_arithop:4 at 72|temp_223_ret_of_h:4 at 68|temp_224_ret_of_h:4 at 64|temp_225_booltrans:1 at 63|temp_226_logicnot:1 at 62|none:2 at 60|temp_227_ret_of_h:4 at 56|temp_228_:1 at 55|temp_229_logic:1 at 54|temp_230_:1 at 53|temp_231_logic:1 at 52|temp_232_ret_of_h:4 at 48|temp_233_:1 at 47|temp_234_logic:1 at 46|none:2 at 44|temp_235_ret_of_h:4 at 40|temp_236_booltrans:1 at 39|temp_237_logicnot:1 at 38|none:2 at 36|temp_238_ret_of_h:4 at 32|temp_239_booltrans:1 at 31|temp_240_logicnot:1 at 30|temp_241_logic:1 at 29|none:1 at 28|temp_242_ret_of_h:4 at 24|temp_243_:1 at 23|temp_244_logic:1 at 22|none:2 at 20|temp_245_ret_of_h:4 at 16|temp_246_:1 at 15|temp_247_logic:1 at 14|temp_248_logic:1 at 13|none:1 at 12|temp_249_ptr2globl:4 at 8|temp_250_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-576
              #                    store to ra_main_0 in mem offset legal
    sd      ra,568(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,560(sp)
    addi    s0,sp,576
              #                          alloc i32 i_51 
              #                          alloc i1 temp_36_cmp_53 
              #                          alloc i32 temp_37_ret_of_f_56 
              #                          alloc i32 temp_38_ret_of_f_56 
              #                          alloc i1 temp_39__56 
              #                          alloc i1 temp_40__56 
              #                          alloc i1 temp_41_logic_56 
              #                          alloc i32 temp_42_ret_of_f_56 
              #                          alloc i1 temp_43__56 
              #                          alloc i1 temp_44_logic_56 
              #                          alloc i32 temp_45_ret_of_f_56 
              #                          alloc i1 temp_46__56 
              #                          alloc i1 temp_47_logic_56 
              #                          alloc i32 temp_48_ret_of_f_56 
              #                          alloc i1 temp_49__56 
              #                          alloc i1 temp_50_logic_56 
              #                          alloc i32 temp_51_ret_of_f_56 
              #                          alloc i1 temp_52__56 
              #                          alloc i1 temp_53_logic_56 
              #                          alloc i32 temp_54_ret_of_f_56 
              #                          alloc i1 temp_55__56 
              #                          alloc i1 temp_56_logic_56 
              #                          alloc i32 temp_57_ret_of_f_56 
              #                          alloc i1 temp_58__56 
              #                          alloc i1 temp_59_logic_56 
              #                          alloc i32 temp_60_ret_of_f_56 
              #                          alloc i1 temp_61__56 
              #                          alloc i1 temp_62_logic_56 
              #                          alloc i32 temp_63_ret_of_f_56 
              #                          alloc i1 temp_64__56 
              #                          alloc i1 temp_65_logic_56 
              #                          alloc i32 temp_66_ret_of_f_56 
              #                          alloc i1 temp_67__56 
              #                          alloc i1 temp_68_logic_56 
              #                          alloc i32 temp_69_ret_of_f_56 
              #                          alloc i1 temp_70__56 
              #                          alloc i1 temp_71_logic_56 
              #                          alloc i32 temp_72_ret_of_f_56 
              #                          alloc i1 temp_73__56 
              #                          alloc i1 temp_74_logic_56 
              #                          alloc i32 temp_75_ret_of_f_56 
              #                          alloc i1 temp_76__56 
              #                          alloc i1 temp_77_logic_56 
              #                          alloc i32 temp_78_ret_of_f_56 
              #                          alloc i1 temp_79__56 
              #                          alloc i1 temp_80_logic_56 
              #                          alloc i32 temp_81_ret_of_f_56 
              #                          alloc i1 temp_82__56 
              #                          alloc i1 temp_83_logic_56 
              #                          alloc i32 temp_84_ret_of_f_56 
              #                          alloc i1 temp_85__56 
              #                          alloc i1 temp_86_logic_56 
              #                          alloc i32 temp_87_ret_of_f_56 
              #                          alloc i1 temp_88__56 
              #                          alloc i1 temp_89_logic_56 
              #                          alloc i32 temp_90_ret_of_f_56 
              #                          alloc i1 temp_91__56 
              #                          alloc i1 temp_92_logic_56 
              #                          alloc i32 temp_93_ret_of_f_56 
              #                          alloc i1 temp_94__56 
              #                          alloc i1 temp_95_logic_56 
              #                          alloc i32 temp_96_arithop_55 
              #                          alloc i1 temp_97_cmp_61 
              #                          alloc i32 temp_98_ret_of_g_64 
              #                          alloc i32 temp_99_ret_of_g_64 
              #                          alloc i1 temp_100__64 
              #                          alloc i1 temp_101__64 
              #                          alloc i1 temp_102_logic_64 
              #                          alloc i32 temp_103_ret_of_g_64 
              #                          alloc i1 temp_104__64 
              #                          alloc i1 temp_105_logic_64 
              #                          alloc i32 temp_106_ret_of_g_64 
              #                          alloc i1 temp_107__64 
              #                          alloc i1 temp_108_logic_64 
              #                          alloc i32 temp_109_ret_of_g_64 
              #                          alloc i1 temp_110__64 
              #                          alloc i1 temp_111_logic_64 
              #                          alloc i32 temp_112_ret_of_g_64 
              #                          alloc i1 temp_113__64 
              #                          alloc i1 temp_114_logic_64 
              #                          alloc i32 temp_115_ret_of_g_64 
              #                          alloc i1 temp_116__64 
              #                          alloc i1 temp_117_logic_64 
              #                          alloc i32 temp_118_ret_of_g_64 
              #                          alloc i1 temp_119__64 
              #                          alloc i1 temp_120_logic_64 
              #                          alloc i32 temp_121_ret_of_g_64 
              #                          alloc i1 temp_122__64 
              #                          alloc i1 temp_123_logic_64 
              #                          alloc i32 temp_124_ret_of_g_64 
              #                          alloc i1 temp_125__64 
              #                          alloc i1 temp_126_logic_64 
              #                          alloc i32 temp_127_ret_of_g_64 
              #                          alloc i1 temp_128__64 
              #                          alloc i1 temp_129_logic_64 
              #                          alloc i32 temp_130_ret_of_g_64 
              #                          alloc i1 temp_131__64 
              #                          alloc i1 temp_132_logic_64 
              #                          alloc i32 temp_133_ret_of_g_64 
              #                          alloc i1 temp_134__64 
              #                          alloc i1 temp_135_logic_64 
              #                          alloc i32 temp_136_ret_of_g_64 
              #                          alloc i1 temp_137__64 
              #                          alloc i1 temp_138_logic_64 
              #                          alloc i32 temp_139_ret_of_g_64 
              #                          alloc i1 temp_140__64 
              #                          alloc i1 temp_141_logic_64 
              #                          alloc i32 temp_142_ret_of_g_64 
              #                          alloc i1 temp_143__64 
              #                          alloc i1 temp_144_logic_64 
              #                          alloc i32 temp_145_ret_of_g_64 
              #                          alloc i1 temp_146__64 
              #                          alloc i1 temp_147_logic_64 
              #                          alloc i32 temp_148_ret_of_g_64 
              #                          alloc i1 temp_149__64 
              #                          alloc i1 temp_150_logic_64 
              #                          alloc i32 temp_151_ret_of_g_64 
              #                          alloc i1 temp_152__64 
              #                          alloc i1 temp_153_logic_64 
              #                          alloc i32 temp_154_ret_of_g_64 
              #                          alloc i1 temp_155__64 
              #                          alloc i1 temp_156_logic_64 
              #                          alloc i32 temp_157_arithop_63 
              #                          alloc i32 temp_158_arithop_69 
              #                          alloc i32 temp_159_ret_of_f_69 
              #                          alloc i1 temp_160_cmp_69 
              #                          alloc i1 temp_161__69 
              #                          alloc i1 temp_162_logic_69 
              #                          alloc i32 temp_163_arithop_51 
              #                          alloc i32 ans_51 
              #                          alloc i32 temp_164_ret_of_h_74 
              #                          alloc i32 temp_165_ret_of_h_74 
              #                          alloc i1 temp_166_booltrans_74 
              #                          alloc i1 temp_167_logicnot_74 
              #                          alloc i1 temp_168__74 
              #                          alloc i1 temp_169_logic_74 
              #                          alloc i32 temp_170_ret_of_h_74 
              #                          alloc i32 temp_171_ret_of_h_74 
              #                          alloc i1 temp_172__74 
              #                          alloc i1 temp_173__74 
              #                          alloc i1 temp_174_logic_74 
              #                          alloc i1 temp_175_logic_74 
              #                          alloc i32 temp_176_ptr2globl_51 
              #                          alloc i32 temp_177_arithop_51 
              #                          alloc i32 temp_178_ret_of_h_79 
              #                          alloc i1 temp_179_booltrans_79 
              #                          alloc i1 temp_180_logicnot_79 
              #                          alloc i32 temp_181_ret_of_h_79 
              #                          alloc i32 temp_182_ret_of_h_79 
              #                          alloc i1 temp_183_booltrans_79 
              #                          alloc i1 temp_184_logicnot_79 
              #                          alloc i1 temp_185__79 
              #                          alloc i1 temp_186_logic_79 
              #                          alloc i32 temp_187_ret_of_h_79 
              #                          alloc i1 temp_188__79 
              #                          alloc i1 temp_189_logic_79 
              #                          alloc i1 temp_190_logic_79 
              #                          alloc i32 temp_191_ret_of_h_79 
              #                          alloc i1 temp_192_booltrans_79 
              #                          alloc i1 temp_193_logicnot_79 
              #                          alloc i1 temp_194_logic_79 
              #                          alloc i32 temp_195_ptr2globl_51 
              #                          alloc i32 temp_196_arithop_51 
              #                          alloc i32 temp_197_ret_of_h_84 
              #                          alloc i32 temp_198_ret_of_h_84 
              #                          alloc i1 temp_199__84 
              #                          alloc i1 temp_200__84 
              #                          alloc i1 temp_201_logic_84 
              #                          alloc i32 temp_202_ret_of_h_84 
              #                          alloc i1 temp_203_booltrans_84 
              #                          alloc i1 temp_204_logicnot_84 
              #                          alloc i1 temp_205_logic_84 
              #                          alloc i32 temp_206_ret_of_h_84 
              #                          alloc i1 temp_207_booltrans_84 
              #                          alloc i1 temp_208_logicnot_84 
              #                          alloc i1 temp_209_logic_84 
              #                          alloc i32 temp_210_ret_of_h_84 
              #                          alloc i1 temp_211_booltrans_84 
              #                          alloc i1 temp_212_logicnot_84 
              #                          alloc i1 temp_213_logic_84 
              #                          alloc i32 temp_214_ret_of_h_84 
              #                          alloc i1 temp_215_booltrans_84 
              #                          alloc i1 temp_216_logicnot_84 
              #                          alloc i32 temp_217_ret_of_h_84 
              #                          alloc i1 temp_218__84 
              #                          alloc i1 temp_219_logic_84 
              #                          alloc i1 temp_220_logic_84 
              #                          alloc i32 temp_221_ptr2globl_51 
              #                          alloc i32 temp_222_arithop_51 
              #                          alloc i32 temp_223_ret_of_h_89 
              #                          alloc i32 temp_224_ret_of_h_89 
              #                          alloc i1 temp_225_booltrans_89 
              #                          alloc i1 temp_226_logicnot_89 
              #                          alloc i32 temp_227_ret_of_h_89 
              #                          alloc i1 temp_228__89 
              #                          alloc i1 temp_229_logic_89 
              #                          alloc i1 temp_230__89 
              #                          alloc i1 temp_231_logic_89 
              #                          alloc i32 temp_232_ret_of_h_89 
              #                          alloc i1 temp_233__89 
              #                          alloc i1 temp_234_logic_89 
              #                          alloc i32 temp_235_ret_of_h_89 
              #                          alloc i1 temp_236_booltrans_89 
              #                          alloc i1 temp_237_logicnot_89 
              #                          alloc i32 temp_238_ret_of_h_89 
              #                          alloc i1 temp_239_booltrans_89 
              #                          alloc i1 temp_240_logicnot_89 
              #                          alloc i1 temp_241_logic_89 
              #                          alloc i32 temp_242_ret_of_h_89 
              #                          alloc i1 temp_243__89 
              #                          alloc i1 temp_244_logic_89 
              #                          alloc i32 temp_245_ret_of_h_89 
              #                          alloc i1 temp_246__89 
              #                          alloc i1 temp_247_logic_89 
              #                          alloc i1 temp_248_logic_89 
              #                          alloc i32 temp_249_ptr2globl_51 
              #                          alloc i32 temp_250_arithop_51 
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
              #                          new_var temp_36_cmp_53:i1 
              #                          temp_36_cmp_53 = icmp i32 Slt i_51, 20_0 
              #                    occupy a0 with i_51
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a2 with temp_36_cmp_53
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_36_cmp_53, label while.body_54, label while.exit_54 
              #                    occupy a2 with temp_36_cmp_53
              #                    free a2
              #                    occupy a2 with temp_36_cmp_53
    bnez    a2, .while.body_54
              #                    free a2
    j       .while.exit_54
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: temp_36_cmp_53, tracked: true } | 
              #                          label while.body_54: 
.while.body_54:
              #                          new_var temp_37_ret_of_f_56:i32 
              #                          temp_37_ret_of_f_56 =  Call i32 f_0(19_0, i_51) 
              #                    saved register dumping to mem
              #                    store to i_51 in mem offset legal
    sw      a0,556(sp)
              #                    release a0 with i_51
              #                    store to temp_36_cmp_53 in mem offset legal
    sb      a2,555(sp)
              #                    release a2 with temp_36_cmp_53
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_19_0_0
    li      a0, 19
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_37_ret_of_f_56 in mem offset legal
    sw      a0,548(sp)
              #                          new_var temp_38_ret_of_f_56:i32 
              #                          temp_38_ret_of_f_56 =  Call i32 f_0(18_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_37_ret_of_f_56 in mem offset legal
    sw      a0,548(sp)
              #                    release a0 with temp_37_ret_of_f_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_18_0_0
    li      a0, 18
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_38_ret_of_f_56 in mem offset legal
    sw      a0,544(sp)
              #                          new_var temp_39__56:i1 
              #                          temp_39__56 = icmp i32 Ne temp_38_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_38_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_39__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_40__56:i1 
              #                          temp_39__56 = icmp i32 Ne temp_37_ret_of_f_56, 0_0 
              #                    occupy a3 with temp_37_ret_of_f_56
              #                    load from temp_37_ret_of_f_56 in mem


    lw      a3,548(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_39__56
              #                    free a3
              #                    free a1
              #                    free a2
              #                          new_var temp_41_logic_56:i1 
              #                          temp_41_logic_56 = And i1 temp_39__56, temp_40__56 
              #                    occupy a2 with temp_39__56
              #                    occupy a4 with temp_40__56
              #                    load from temp_40__56 in mem
    lb      a4,542(sp)
              #                    occupy a5 with temp_41_logic_56
    and     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          new_var temp_42_ret_of_f_56:i32 
              #                          temp_42_ret_of_f_56 =  Call i32 f_0(17_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_38_ret_of_f_56 in mem offset legal
    sw      a0,544(sp)
              #                    release a0 with temp_38_ret_of_f_56
              #                    store to temp_39__56 in mem offset legal
    sb      a2,543(sp)
              #                    release a2 with temp_39__56
              #                    store to temp_37_ret_of_f_56 in mem offset legal
    sw      a3,548(sp)
              #                    release a3 with temp_37_ret_of_f_56
              #                    store to temp_40__56 in mem offset legal
    sb      a4,542(sp)
              #                    release a4 with temp_40__56
              #                    store to temp_41_logic_56 in mem offset legal
    sb      a5,541(sp)
              #                    release a5 with temp_41_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_17_0_0
    li      a0, 17
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_42_ret_of_f_56 in mem offset legal
    sw      a0,536(sp)
              #                          new_var temp_43__56:i1 
              #                          temp_43__56 = icmp i32 Ne temp_42_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_42_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_43__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_44_logic_56:i1 
              #                          temp_44_logic_56 = And i1 temp_43__56, temp_41_logic_56 
              #                    occupy a2 with temp_43__56
              #                    occupy a3 with temp_41_logic_56
              #                    load from temp_41_logic_56 in mem
    lb      a3,541(sp)
              #                    occupy a4 with temp_44_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_45_ret_of_f_56:i32 
              #                          temp_45_ret_of_f_56 =  Call i32 f_0(16_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_42_ret_of_f_56 in mem offset legal
    sw      a0,536(sp)
              #                    release a0 with temp_42_ret_of_f_56
              #                    store to temp_43__56 in mem offset legal
    sb      a2,535(sp)
              #                    release a2 with temp_43__56
              #                    store to temp_41_logic_56 in mem offset legal
    sb      a3,541(sp)
              #                    release a3 with temp_41_logic_56
              #                    store to temp_44_logic_56 in mem offset legal
    sb      a4,534(sp)
              #                    release a4 with temp_44_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_16_0_0
    li      a0, 16
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_45_ret_of_f_56 in mem offset legal
    sw      a0,528(sp)
              #                          new_var temp_46__56:i1 
              #                          temp_46__56 = icmp i32 Ne temp_45_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_45_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_46__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_47_logic_56:i1 
              #                          temp_47_logic_56 = And i1 temp_46__56, temp_44_logic_56 
              #                    occupy a2 with temp_46__56
              #                    occupy a3 with temp_44_logic_56
              #                    load from temp_44_logic_56 in mem
    lb      a3,534(sp)
              #                    occupy a4 with temp_47_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_48_ret_of_f_56:i32 
              #                          temp_48_ret_of_f_56 =  Call i32 f_0(15_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_45_ret_of_f_56 in mem offset legal
    sw      a0,528(sp)
              #                    release a0 with temp_45_ret_of_f_56
              #                    store to temp_46__56 in mem offset legal
    sb      a2,527(sp)
              #                    release a2 with temp_46__56
              #                    store to temp_44_logic_56 in mem offset legal
    sb      a3,534(sp)
              #                    release a3 with temp_44_logic_56
              #                    store to temp_47_logic_56 in mem offset legal
    sb      a4,526(sp)
              #                    release a4 with temp_47_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_15_0_0
    li      a0, 15
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_48_ret_of_f_56 in mem offset legal
    sw      a0,520(sp)
              #                          new_var temp_49__56:i1 
              #                          temp_49__56 = icmp i32 Ne temp_48_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_48_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_49__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_50_logic_56:i1 
              #                          temp_50_logic_56 = And i1 temp_49__56, temp_47_logic_56 
              #                    occupy a2 with temp_49__56
              #                    occupy a3 with temp_47_logic_56
              #                    load from temp_47_logic_56 in mem
    lb      a3,526(sp)
              #                    occupy a4 with temp_50_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_51_ret_of_f_56:i32 
              #                          temp_51_ret_of_f_56 =  Call i32 f_0(14_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_48_ret_of_f_56 in mem offset legal
    sw      a0,520(sp)
              #                    release a0 with temp_48_ret_of_f_56
              #                    store to temp_49__56 in mem offset legal
    sb      a2,519(sp)
              #                    release a2 with temp_49__56
              #                    store to temp_47_logic_56 in mem offset legal
    sb      a3,526(sp)
              #                    release a3 with temp_47_logic_56
              #                    store to temp_50_logic_56 in mem offset legal
    sb      a4,518(sp)
              #                    release a4 with temp_50_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_14_0_0
    li      a0, 14
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_51_ret_of_f_56 in mem offset legal
    sw      a0,512(sp)
              #                          new_var temp_52__56:i1 
              #                          temp_52__56 = icmp i32 Ne temp_51_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_51_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_52__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_53_logic_56:i1 
              #                          temp_53_logic_56 = And i1 temp_52__56, temp_50_logic_56 
              #                    occupy a2 with temp_52__56
              #                    occupy a3 with temp_50_logic_56
              #                    load from temp_50_logic_56 in mem
    lb      a3,518(sp)
              #                    occupy a4 with temp_53_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_54_ret_of_f_56:i32 
              #                          temp_54_ret_of_f_56 =  Call i32 f_0(13_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_51_ret_of_f_56 in mem offset legal
    sw      a0,512(sp)
              #                    release a0 with temp_51_ret_of_f_56
              #                    store to temp_52__56 in mem offset legal
    sb      a2,511(sp)
              #                    release a2 with temp_52__56
              #                    store to temp_50_logic_56 in mem offset legal
    sb      a3,518(sp)
              #                    release a3 with temp_50_logic_56
              #                    store to temp_53_logic_56 in mem offset legal
    sb      a4,510(sp)
              #                    release a4 with temp_53_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_13_0_0
    li      a0, 13
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_54_ret_of_f_56 in mem offset legal
    sw      a0,504(sp)
              #                          new_var temp_55__56:i1 
              #                          temp_55__56 = icmp i32 Ne temp_54_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_54_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_55__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_56_logic_56:i1 
              #                          temp_56_logic_56 = And i1 temp_55__56, temp_53_logic_56 
              #                    occupy a2 with temp_55__56
              #                    occupy a3 with temp_53_logic_56
              #                    load from temp_53_logic_56 in mem
    lb      a3,510(sp)
              #                    occupy a4 with temp_56_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_57_ret_of_f_56:i32 
              #                          temp_57_ret_of_f_56 =  Call i32 f_0(12_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_54_ret_of_f_56 in mem offset legal
    sw      a0,504(sp)
              #                    release a0 with temp_54_ret_of_f_56
              #                    store to temp_55__56 in mem offset legal
    sb      a2,503(sp)
              #                    release a2 with temp_55__56
              #                    store to temp_53_logic_56 in mem offset legal
    sb      a3,510(sp)
              #                    release a3 with temp_53_logic_56
              #                    store to temp_56_logic_56 in mem offset legal
    sb      a4,502(sp)
              #                    release a4 with temp_56_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_12_0_0
    li      a0, 12
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_57_ret_of_f_56 in mem offset legal
    sw      a0,496(sp)
              #                          new_var temp_58__56:i1 
              #                          temp_58__56 = icmp i32 Ne temp_57_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_57_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_58__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_59_logic_56:i1 
              #                          temp_59_logic_56 = And i1 temp_58__56, temp_56_logic_56 
              #                    occupy a2 with temp_58__56
              #                    occupy a3 with temp_56_logic_56
              #                    load from temp_56_logic_56 in mem
    lb      a3,502(sp)
              #                    occupy a4 with temp_59_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_60_ret_of_f_56:i32 
              #                          temp_60_ret_of_f_56 =  Call i32 f_0(11_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_57_ret_of_f_56 in mem offset legal
    sw      a0,496(sp)
              #                    release a0 with temp_57_ret_of_f_56
              #                    store to temp_58__56 in mem offset legal
    sb      a2,495(sp)
              #                    release a2 with temp_58__56
              #                    store to temp_56_logic_56 in mem offset legal
    sb      a3,502(sp)
              #                    release a3 with temp_56_logic_56
              #                    store to temp_59_logic_56 in mem offset legal
    sb      a4,494(sp)
              #                    release a4 with temp_59_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_11_0_0
    li      a0, 11
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_60_ret_of_f_56 in mem offset legal
    sw      a0,488(sp)
              #                          new_var temp_61__56:i1 
              #                          temp_61__56 = icmp i32 Ne temp_60_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_60_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_61__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_62_logic_56:i1 
              #                          temp_62_logic_56 = And i1 temp_61__56, temp_59_logic_56 
              #                    occupy a2 with temp_61__56
              #                    occupy a3 with temp_59_logic_56
              #                    load from temp_59_logic_56 in mem
    lb      a3,494(sp)
              #                    occupy a4 with temp_62_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_63_ret_of_f_56:i32 
              #                          temp_63_ret_of_f_56 =  Call i32 f_0(10_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_60_ret_of_f_56 in mem offset legal
    sw      a0,488(sp)
              #                    release a0 with temp_60_ret_of_f_56
              #                    store to temp_61__56 in mem offset legal
    sb      a2,487(sp)
              #                    release a2 with temp_61__56
              #                    store to temp_59_logic_56 in mem offset legal
    sb      a3,494(sp)
              #                    release a3 with temp_59_logic_56
              #                    store to temp_62_logic_56 in mem offset legal
    sb      a4,486(sp)
              #                    release a4 with temp_62_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_63_ret_of_f_56 in mem offset legal
    sw      a0,480(sp)
              #                          new_var temp_64__56:i1 
              #                          temp_64__56 = icmp i32 Ne temp_63_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_63_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_64__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_65_logic_56:i1 
              #                          temp_65_logic_56 = And i1 temp_64__56, temp_62_logic_56 
              #                    occupy a2 with temp_64__56
              #                    occupy a3 with temp_62_logic_56
              #                    load from temp_62_logic_56 in mem
    lb      a3,486(sp)
              #                    occupy a4 with temp_65_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_66_ret_of_f_56:i32 
              #                          temp_66_ret_of_f_56 =  Call i32 f_0(9_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_63_ret_of_f_56 in mem offset legal
    sw      a0,480(sp)
              #                    release a0 with temp_63_ret_of_f_56
              #                    store to temp_64__56 in mem offset legal
    sb      a2,479(sp)
              #                    release a2 with temp_64__56
              #                    store to temp_62_logic_56 in mem offset legal
    sb      a3,486(sp)
              #                    release a3 with temp_62_logic_56
              #                    store to temp_65_logic_56 in mem offset legal
    sb      a4,478(sp)
              #                    release a4 with temp_65_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_9_0_0
    li      a0, 9
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_66_ret_of_f_56 in mem offset legal
    sw      a0,472(sp)
              #                          new_var temp_67__56:i1 
              #                          temp_67__56 = icmp i32 Ne temp_66_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_66_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_67__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_68_logic_56:i1 
              #                          temp_68_logic_56 = And i1 temp_67__56, temp_65_logic_56 
              #                    occupy a2 with temp_67__56
              #                    occupy a3 with temp_65_logic_56
              #                    load from temp_65_logic_56 in mem
    lb      a3,478(sp)
              #                    occupy a4 with temp_68_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_69_ret_of_f_56:i32 
              #                          temp_69_ret_of_f_56 =  Call i32 f_0(8_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_66_ret_of_f_56 in mem offset legal
    sw      a0,472(sp)
              #                    release a0 with temp_66_ret_of_f_56
              #                    store to temp_67__56 in mem offset legal
    sb      a2,471(sp)
              #                    release a2 with temp_67__56
              #                    store to temp_65_logic_56 in mem offset legal
    sb      a3,478(sp)
              #                    release a3 with temp_65_logic_56
              #                    store to temp_68_logic_56 in mem offset legal
    sb      a4,470(sp)
              #                    release a4 with temp_68_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_69_ret_of_f_56 in mem offset legal
    sw      a0,464(sp)
              #                          new_var temp_70__56:i1 
              #                          temp_70__56 = icmp i32 Ne temp_69_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_69_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_70__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_71_logic_56:i1 
              #                          temp_71_logic_56 = And i1 temp_70__56, temp_68_logic_56 
              #                    occupy a2 with temp_70__56
              #                    occupy a3 with temp_68_logic_56
              #                    load from temp_68_logic_56 in mem
    lb      a3,470(sp)
              #                    occupy a4 with temp_71_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_72_ret_of_f_56:i32 
              #                          temp_72_ret_of_f_56 =  Call i32 f_0(7_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_69_ret_of_f_56 in mem offset legal
    sw      a0,464(sp)
              #                    release a0 with temp_69_ret_of_f_56
              #                    store to temp_70__56 in mem offset legal
    sb      a2,463(sp)
              #                    release a2 with temp_70__56
              #                    store to temp_68_logic_56 in mem offset legal
    sb      a3,470(sp)
              #                    release a3 with temp_68_logic_56
              #                    store to temp_71_logic_56 in mem offset legal
    sb      a4,462(sp)
              #                    release a4 with temp_71_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_72_ret_of_f_56 in mem offset legal
    sw      a0,456(sp)
              #                          new_var temp_73__56:i1 
              #                          temp_73__56 = icmp i32 Ne temp_72_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_72_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_73__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_74_logic_56:i1 
              #                          temp_74_logic_56 = And i1 temp_73__56, temp_71_logic_56 
              #                    occupy a2 with temp_73__56
              #                    occupy a3 with temp_71_logic_56
              #                    load from temp_71_logic_56 in mem
    lb      a3,462(sp)
              #                    occupy a4 with temp_74_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_75_ret_of_f_56:i32 
              #                          temp_75_ret_of_f_56 =  Call i32 f_0(6_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_72_ret_of_f_56 in mem offset legal
    sw      a0,456(sp)
              #                    release a0 with temp_72_ret_of_f_56
              #                    store to temp_73__56 in mem offset legal
    sb      a2,455(sp)
              #                    release a2 with temp_73__56
              #                    store to temp_71_logic_56 in mem offset legal
    sb      a3,462(sp)
              #                    release a3 with temp_71_logic_56
              #                    store to temp_74_logic_56 in mem offset legal
    sb      a4,454(sp)
              #                    release a4 with temp_74_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_75_ret_of_f_56 in mem offset legal
    sw      a0,448(sp)
              #                          new_var temp_76__56:i1 
              #                          temp_76__56 = icmp i32 Ne temp_75_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_75_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_76__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_77_logic_56:i1 
              #                          temp_77_logic_56 = And i1 temp_76__56, temp_74_logic_56 
              #                    occupy a2 with temp_76__56
              #                    occupy a3 with temp_74_logic_56
              #                    load from temp_74_logic_56 in mem
    lb      a3,454(sp)
              #                    occupy a4 with temp_77_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_78_ret_of_f_56:i32 
              #                          temp_78_ret_of_f_56 =  Call i32 f_0(5_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_75_ret_of_f_56 in mem offset legal
    sw      a0,448(sp)
              #                    release a0 with temp_75_ret_of_f_56
              #                    store to temp_76__56 in mem offset legal
    sb      a2,447(sp)
              #                    release a2 with temp_76__56
              #                    store to temp_74_logic_56 in mem offset legal
    sb      a3,454(sp)
              #                    release a3 with temp_74_logic_56
              #                    store to temp_77_logic_56 in mem offset legal
    sb      a4,446(sp)
              #                    release a4 with temp_77_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_78_ret_of_f_56 in mem offset legal
    sw      a0,440(sp)
              #                          new_var temp_79__56:i1 
              #                          temp_79__56 = icmp i32 Ne temp_78_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_78_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_79__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_80_logic_56:i1 
              #                          temp_80_logic_56 = And i1 temp_79__56, temp_77_logic_56 
              #                    occupy a2 with temp_79__56
              #                    occupy a3 with temp_77_logic_56
              #                    load from temp_77_logic_56 in mem
    lb      a3,446(sp)
              #                    occupy a4 with temp_80_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_81_ret_of_f_56:i32 
              #                          temp_81_ret_of_f_56 =  Call i32 f_0(4_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_78_ret_of_f_56 in mem offset legal
    sw      a0,440(sp)
              #                    release a0 with temp_78_ret_of_f_56
              #                    store to temp_79__56 in mem offset legal
    sb      a2,439(sp)
              #                    release a2 with temp_79__56
              #                    store to temp_77_logic_56 in mem offset legal
    sb      a3,446(sp)
              #                    release a3 with temp_77_logic_56
              #                    store to temp_80_logic_56 in mem offset legal
    sb      a4,438(sp)
              #                    release a4 with temp_80_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_81_ret_of_f_56 in mem offset legal
    sw      a0,432(sp)
              #                          new_var temp_82__56:i1 
              #                          temp_82__56 = icmp i32 Ne temp_81_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_81_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_82__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_83_logic_56:i1 
              #                          temp_83_logic_56 = And i1 temp_82__56, temp_80_logic_56 
              #                    occupy a2 with temp_82__56
              #                    occupy a3 with temp_80_logic_56
              #                    load from temp_80_logic_56 in mem
    lb      a3,438(sp)
              #                    occupy a4 with temp_83_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_84_ret_of_f_56:i32 
              #                          temp_84_ret_of_f_56 =  Call i32 f_0(3_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_81_ret_of_f_56 in mem offset legal
    sw      a0,432(sp)
              #                    release a0 with temp_81_ret_of_f_56
              #                    store to temp_82__56 in mem offset legal
    sb      a2,431(sp)
              #                    release a2 with temp_82__56
              #                    store to temp_80_logic_56 in mem offset legal
    sb      a3,438(sp)
              #                    release a3 with temp_80_logic_56
              #                    store to temp_83_logic_56 in mem offset legal
    sb      a4,430(sp)
              #                    release a4 with temp_83_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_84_ret_of_f_56 in mem offset legal
    sw      a0,424(sp)
              #                          new_var temp_85__56:i1 
              #                          temp_85__56 = icmp i32 Ne temp_84_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_84_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_85__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_86_logic_56:i1 
              #                          temp_86_logic_56 = And i1 temp_85__56, temp_83_logic_56 
              #                    occupy a2 with temp_85__56
              #                    occupy a3 with temp_83_logic_56
              #                    load from temp_83_logic_56 in mem
    lb      a3,430(sp)
              #                    occupy a4 with temp_86_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_87_ret_of_f_56:i32 
              #                          temp_87_ret_of_f_56 =  Call i32 f_0(2_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_84_ret_of_f_56 in mem offset legal
    sw      a0,424(sp)
              #                    release a0 with temp_84_ret_of_f_56
              #                    store to temp_85__56 in mem offset legal
    sb      a2,423(sp)
              #                    release a2 with temp_85__56
              #                    store to temp_83_logic_56 in mem offset legal
    sb      a3,430(sp)
              #                    release a3 with temp_83_logic_56
              #                    store to temp_86_logic_56 in mem offset legal
    sb      a4,422(sp)
              #                    release a4 with temp_86_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_87_ret_of_f_56 in mem offset legal
    sw      a0,416(sp)
              #                          new_var temp_88__56:i1 
              #                          temp_88__56 = icmp i32 Ne temp_87_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_87_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_88__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_89_logic_56:i1 
              #                          temp_89_logic_56 = And i1 temp_88__56, temp_86_logic_56 
              #                    occupy a2 with temp_88__56
              #                    occupy a3 with temp_86_logic_56
              #                    load from temp_86_logic_56 in mem
    lb      a3,422(sp)
              #                    occupy a4 with temp_89_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_90_ret_of_f_56:i32 
              #                          temp_90_ret_of_f_56 =  Call i32 f_0(1_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_87_ret_of_f_56 in mem offset legal
    sw      a0,416(sp)
              #                    release a0 with temp_87_ret_of_f_56
              #                    store to temp_88__56 in mem offset legal
    sb      a2,415(sp)
              #                    release a2 with temp_88__56
              #                    store to temp_86_logic_56 in mem offset legal
    sb      a3,422(sp)
              #                    release a3 with temp_86_logic_56
              #                    store to temp_89_logic_56 in mem offset legal
    sb      a4,414(sp)
              #                    release a4 with temp_89_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_90_ret_of_f_56 in mem offset legal
    sw      a0,408(sp)
              #                          new_var temp_91__56:i1 
              #                          temp_91__56 = icmp i32 Ne temp_90_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_90_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_91__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_92_logic_56:i1 
              #                          temp_92_logic_56 = And i1 temp_91__56, temp_89_logic_56 
              #                    occupy a2 with temp_91__56
              #                    occupy a3 with temp_89_logic_56
              #                    load from temp_89_logic_56 in mem
    lb      a3,414(sp)
              #                    occupy a4 with temp_92_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_93_ret_of_f_56:i32 
              #                          temp_93_ret_of_f_56 =  Call i32 f_0(0_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_90_ret_of_f_56 in mem offset legal
    sw      a0,408(sp)
              #                    release a0 with temp_90_ret_of_f_56
              #                    store to temp_91__56 in mem offset legal
    sb      a2,407(sp)
              #                    release a2 with temp_91__56
              #                    store to temp_89_logic_56 in mem offset legal
    sb      a3,414(sp)
              #                    release a3 with temp_89_logic_56
              #                    store to temp_92_logic_56 in mem offset legal
    sb      a4,406(sp)
              #                    release a4 with temp_92_logic_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_93_ret_of_f_56 in mem offset legal
    sw      a0,400(sp)
              #                          new_var temp_94__56:i1 
              #                          temp_94__56 = icmp i32 Ne temp_93_ret_of_f_56, 0_0 
              #                    occupy a0 with temp_93_ret_of_f_56
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_94__56
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_95_logic_56:i1 
              #                          temp_95_logic_56 = And i1 temp_94__56, temp_92_logic_56 
              #                    occupy a2 with temp_94__56
              #                    occupy a3 with temp_92_logic_56
              #                    load from temp_92_logic_56 in mem
    lb      a3,406(sp)
              #                    occupy a4 with temp_95_logic_56
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_95_logic_56, label branch_true_57, label branch_false_57 
              #                    occupy a4 with temp_95_logic_56
              #                    free a4
              #                    occupy a4 with temp_95_logic_56
    bnez    a4, .branch_true_57
              #                    free a4
    j       .branch_false_57
              #                    regtab     a0:Freed { symidx: temp_93_ret_of_f_56, tracked: true } |     a2:Freed { symidx: temp_94__56, tracked: true } |     a3:Freed { symidx: temp_92_logic_56, tracked: true } |     a4:Freed { symidx: temp_95_logic_56, tracked: true } | 
              #                          label branch_true_57: 
.branch_true_57:
              #                          jump label: branch_false_57 
    j       .branch_false_57
              #                    regtab     a0:Freed { symidx: temp_93_ret_of_f_56, tracked: true } |     a2:Freed { symidx: temp_94__56, tracked: true } |     a3:Freed { symidx: temp_92_logic_56, tracked: true } |     a4:Freed { symidx: temp_95_logic_56, tracked: true } | 
              #                          label branch_false_57: 
.branch_false_57:
              #                    regtab     a0:Freed { symidx: temp_93_ret_of_f_56, tracked: true } |     a2:Freed { symidx: temp_94__56, tracked: true } |     a3:Freed { symidx: temp_92_logic_56, tracked: true } |     a4:Freed { symidx: temp_95_logic_56, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_96_arithop_55:i32 
              #                          temp_96_arithop_55 = Add i32 i_51, 1_0 
              #                    occupy a1 with i_51
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_96_arithop_55
    add     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                          i_51 = i32 temp_96_arithop_55 
              #                    occupy a6 with temp_96_arithop_55
              #                    occupy a1 with i_51
    mv      a1, a6
              #                    free a6
              #                    free a1
              #                          jump label: while.head_54 
              #                    store to temp_93_ret_of_f_56 in mem offset legal
    sw      a0,400(sp)
              #                    release a0 with temp_93_ret_of_f_56
              #                    store to temp_96_arithop_55 in mem offset legal
    sw      a6,392(sp)
              #                    release a6 with temp_96_arithop_55
              #                    store to temp_94__56 in mem offset legal
    sb      a2,399(sp)
              #                    release a2 with temp_94__56
              #                    store to temp_95_logic_56 in mem offset legal
    sb      a4,398(sp)
              #                    release a4 with temp_95_logic_56
              #                    store to i_51 in mem offset legal
    sw      a1,556(sp)
              #                    release a1 with i_51
              #                    store to temp_92_logic_56 in mem offset legal
    sb      a3,406(sp)
              #                    release a3 with temp_92_logic_56
              #                    occupy a0 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a0,556(sp)
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: temp_36_cmp_53, tracked: true } | 
              #                          label while.exit_54: 
.while.exit_54:
              #                          i_51 = i32 0_0 
              #                    occupy a0 with i_51
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: temp_36_cmp_53, tracked: true } | 
              #                          label while.head_62: 
.while.head_62:
              #                          new_var temp_97_cmp_61:i1 
              #                          temp_97_cmp_61 = icmp i32 Slt i_51, 20_0 
              #                    occupy a0 with i_51
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a3 with temp_97_cmp_61
    slt     a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                          br i1 temp_97_cmp_61, label while.body_62, label while.exit_62 
              #                    occupy a3 with temp_97_cmp_61
              #                    free a3
              #                    occupy a3 with temp_97_cmp_61
    bnez    a3, .while.body_62
              #                    free a3
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: temp_36_cmp_53, tracked: true } |     a3:Freed { symidx: temp_97_cmp_61, tracked: true } | 
              #                          label while.body_62: 
.while.body_62:
              #                          new_var temp_98_ret_of_g_64:i32 
              #                          temp_98_ret_of_g_64 =  Call i32 g_0(19_0, i_51) 
              #                    saved register dumping to mem
              #                    store to i_51 in mem offset legal
    sw      a0,556(sp)
              #                    release a0 with i_51
              #                    store to temp_36_cmp_53 in mem offset legal
    sb      a2,555(sp)
              #                    release a2 with temp_36_cmp_53
              #                    store to temp_97_cmp_61 in mem offset legal
    sb      a3,391(sp)
              #                    release a3 with temp_97_cmp_61
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_19_0_0
    li      a0, 19
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_98_ret_of_g_64 in mem offset legal
    sw      a0,384(sp)
              #                          new_var temp_99_ret_of_g_64:i32 
              #                          temp_99_ret_of_g_64 =  Call i32 g_0(18_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_98_ret_of_g_64 in mem offset legal
    sw      a0,384(sp)
              #                    release a0 with temp_98_ret_of_g_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_18_0_0
    li      a0, 18
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_99_ret_of_g_64 in mem offset legal
    sw      a0,380(sp)
              #                          new_var temp_100__64:i1 
              #                          temp_100__64 = icmp i32 Ne temp_99_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_99_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_100__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_101__64:i1 
              #                          temp_100__64 = icmp i32 Ne temp_98_ret_of_g_64, 0_0 
              #                    occupy a3 with temp_98_ret_of_g_64
              #                    load from temp_98_ret_of_g_64 in mem


    lw      a3,384(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_100__64
              #                    free a3
              #                    free a1
              #                    free a2
              #                          new_var temp_102_logic_64:i1 
              #                          temp_102_logic_64 = Or i1 temp_100__64, temp_101__64 
              #                    occupy a2 with temp_100__64
              #                    occupy a4 with temp_101__64
              #                    load from temp_101__64 in mem
    lb      a4,378(sp)
              #                    occupy a4 with temp_101__64
              #                    free a2
              #                    free a4
              #                    free a4
              #                          new_var temp_103_ret_of_g_64:i32 
              #                          temp_103_ret_of_g_64 =  Call i32 g_0(17_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_99_ret_of_g_64 in mem offset legal
    sw      a0,380(sp)
              #                    release a0 with temp_99_ret_of_g_64
              #                    store to temp_100__64 in mem offset legal
    sb      a2,379(sp)
              #                    release a2 with temp_100__64
              #                    store to temp_98_ret_of_g_64 in mem offset legal
    sw      a3,384(sp)
              #                    release a3 with temp_98_ret_of_g_64
              #                    store to temp_101__64 in mem offset legal
    sb      a4,378(sp)
              #                    release a4 with temp_101__64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_17_0_0
    li      a0, 17
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_103_ret_of_g_64 in mem offset legal
    sw      a0,372(sp)
              #                          new_var temp_104__64:i1 
              #                          temp_104__64 = icmp i32 Ne temp_103_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_103_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_104__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_105_logic_64:i1 
              #                          temp_105_logic_64 = Or i1 temp_104__64, temp_102_logic_64 
              #                    occupy a2 with temp_104__64
              #                    occupy a3 with temp_102_logic_64
              #                    load from temp_102_logic_64 in mem
    lb      a3,377(sp)
              #                    occupy a3 with temp_102_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_106_ret_of_g_64:i32 
              #                          temp_106_ret_of_g_64 =  Call i32 g_0(16_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_103_ret_of_g_64 in mem offset legal
    sw      a0,372(sp)
              #                    release a0 with temp_103_ret_of_g_64
              #                    store to temp_104__64 in mem offset legal
    sb      a2,371(sp)
              #                    release a2 with temp_104__64
              #                    store to temp_102_logic_64 in mem offset legal
    sb      a3,377(sp)
              #                    release a3 with temp_102_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_16_0_0
    li      a0, 16
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_106_ret_of_g_64 in mem offset legal
    sw      a0,364(sp)
              #                          new_var temp_107__64:i1 
              #                          temp_107__64 = icmp i32 Ne temp_106_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_106_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_107__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_108_logic_64:i1 
              #                          temp_108_logic_64 = Or i1 temp_107__64, temp_105_logic_64 
              #                    occupy a2 with temp_107__64
              #                    occupy a3 with temp_105_logic_64
              #                    load from temp_105_logic_64 in mem
    lb      a3,370(sp)
              #                    occupy a3 with temp_105_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_109_ret_of_g_64:i32 
              #                          temp_109_ret_of_g_64 =  Call i32 g_0(15_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_106_ret_of_g_64 in mem offset legal
    sw      a0,364(sp)
              #                    release a0 with temp_106_ret_of_g_64
              #                    store to temp_107__64 in mem offset legal
    sb      a2,363(sp)
              #                    release a2 with temp_107__64
              #                    store to temp_105_logic_64 in mem offset legal
    sb      a3,370(sp)
              #                    release a3 with temp_105_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_15_0_0
    li      a0, 15
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_109_ret_of_g_64 in mem offset legal
    sw      a0,356(sp)
              #                          new_var temp_110__64:i1 
              #                          temp_110__64 = icmp i32 Ne temp_109_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_109_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_110__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_111_logic_64:i1 
              #                          temp_111_logic_64 = Or i1 temp_110__64, temp_108_logic_64 
              #                    occupy a2 with temp_110__64
              #                    occupy a3 with temp_108_logic_64
              #                    load from temp_108_logic_64 in mem
    lb      a3,362(sp)
              #                    occupy a3 with temp_108_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_112_ret_of_g_64:i32 
              #                          temp_112_ret_of_g_64 =  Call i32 g_0(14_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_109_ret_of_g_64 in mem offset legal
    sw      a0,356(sp)
              #                    release a0 with temp_109_ret_of_g_64
              #                    store to temp_110__64 in mem offset legal
    sb      a2,355(sp)
              #                    release a2 with temp_110__64
              #                    store to temp_108_logic_64 in mem offset legal
    sb      a3,362(sp)
              #                    release a3 with temp_108_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_14_0_0
    li      a0, 14
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_112_ret_of_g_64 in mem offset legal
    sw      a0,348(sp)
              #                          new_var temp_113__64:i1 
              #                          temp_113__64 = icmp i32 Ne temp_112_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_112_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_113__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_114_logic_64:i1 
              #                          temp_114_logic_64 = Or i1 temp_113__64, temp_111_logic_64 
              #                    occupy a2 with temp_113__64
              #                    occupy a3 with temp_111_logic_64
              #                    load from temp_111_logic_64 in mem
    lb      a3,354(sp)
              #                    occupy a3 with temp_111_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_115_ret_of_g_64:i32 
              #                          temp_115_ret_of_g_64 =  Call i32 g_0(13_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_112_ret_of_g_64 in mem offset legal
    sw      a0,348(sp)
              #                    release a0 with temp_112_ret_of_g_64
              #                    store to temp_113__64 in mem offset legal
    sb      a2,347(sp)
              #                    release a2 with temp_113__64
              #                    store to temp_111_logic_64 in mem offset legal
    sb      a3,354(sp)
              #                    release a3 with temp_111_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_13_0_0
    li      a0, 13
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_115_ret_of_g_64 in mem offset legal
    sw      a0,340(sp)
              #                          new_var temp_116__64:i1 
              #                          temp_116__64 = icmp i32 Ne temp_115_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_115_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_116__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_117_logic_64:i1 
              #                          temp_117_logic_64 = Or i1 temp_116__64, temp_114_logic_64 
              #                    occupy a2 with temp_116__64
              #                    occupy a3 with temp_114_logic_64
              #                    load from temp_114_logic_64 in mem
    lb      a3,346(sp)
              #                    occupy a3 with temp_114_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_118_ret_of_g_64:i32 
              #                          temp_118_ret_of_g_64 =  Call i32 g_0(12_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_115_ret_of_g_64 in mem offset legal
    sw      a0,340(sp)
              #                    release a0 with temp_115_ret_of_g_64
              #                    store to temp_116__64 in mem offset legal
    sb      a2,339(sp)
              #                    release a2 with temp_116__64
              #                    store to temp_114_logic_64 in mem offset legal
    sb      a3,346(sp)
              #                    release a3 with temp_114_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_12_0_0
    li      a0, 12
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_118_ret_of_g_64 in mem offset legal
    sw      a0,332(sp)
              #                          new_var temp_119__64:i1 
              #                          temp_119__64 = icmp i32 Ne temp_118_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_118_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_119__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_120_logic_64:i1 
              #                          temp_120_logic_64 = Or i1 temp_119__64, temp_117_logic_64 
              #                    occupy a2 with temp_119__64
              #                    occupy a3 with temp_117_logic_64
              #                    load from temp_117_logic_64 in mem
    lb      a3,338(sp)
              #                    occupy a3 with temp_117_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_121_ret_of_g_64:i32 
              #                          temp_121_ret_of_g_64 =  Call i32 g_0(11_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_118_ret_of_g_64 in mem offset legal
    sw      a0,332(sp)
              #                    release a0 with temp_118_ret_of_g_64
              #                    store to temp_119__64 in mem offset legal
    sb      a2,331(sp)
              #                    release a2 with temp_119__64
              #                    store to temp_117_logic_64 in mem offset legal
    sb      a3,338(sp)
              #                    release a3 with temp_117_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_11_0_0
    li      a0, 11
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_121_ret_of_g_64 in mem offset legal
    sw      a0,324(sp)
              #                          new_var temp_122__64:i1 
              #                          temp_122__64 = icmp i32 Ne temp_121_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_121_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_122__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_123_logic_64:i1 
              #                          temp_123_logic_64 = Or i1 temp_122__64, temp_120_logic_64 
              #                    occupy a2 with temp_122__64
              #                    occupy a3 with temp_120_logic_64
              #                    load from temp_120_logic_64 in mem
    lb      a3,330(sp)
              #                    occupy a3 with temp_120_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_124_ret_of_g_64:i32 
              #                          temp_124_ret_of_g_64 =  Call i32 g_0(10_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_121_ret_of_g_64 in mem offset legal
    sw      a0,324(sp)
              #                    release a0 with temp_121_ret_of_g_64
              #                    store to temp_122__64 in mem offset legal
    sb      a2,323(sp)
              #                    release a2 with temp_122__64
              #                    store to temp_120_logic_64 in mem offset legal
    sb      a3,330(sp)
              #                    release a3 with temp_120_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_124_ret_of_g_64 in mem offset legal
    sw      a0,316(sp)
              #                          new_var temp_125__64:i1 
              #                          temp_125__64 = icmp i32 Ne temp_124_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_124_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_125__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_126_logic_64:i1 
              #                          temp_126_logic_64 = Or i1 temp_125__64, temp_123_logic_64 
              #                    occupy a2 with temp_125__64
              #                    occupy a3 with temp_123_logic_64
              #                    load from temp_123_logic_64 in mem
    lb      a3,322(sp)
              #                    occupy a3 with temp_123_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_127_ret_of_g_64:i32 
              #                          temp_127_ret_of_g_64 =  Call i32 g_0(9_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_124_ret_of_g_64 in mem offset legal
    sw      a0,316(sp)
              #                    release a0 with temp_124_ret_of_g_64
              #                    store to temp_125__64 in mem offset legal
    sb      a2,315(sp)
              #                    release a2 with temp_125__64
              #                    store to temp_123_logic_64 in mem offset legal
    sb      a3,322(sp)
              #                    release a3 with temp_123_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_9_0_0
    li      a0, 9
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_127_ret_of_g_64 in mem offset legal
    sw      a0,308(sp)
              #                          new_var temp_128__64:i1 
              #                          temp_128__64 = icmp i32 Ne temp_127_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_127_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_128__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_129_logic_64:i1 
              #                          temp_129_logic_64 = Or i1 temp_128__64, temp_126_logic_64 
              #                    occupy a2 with temp_128__64
              #                    occupy a3 with temp_126_logic_64
              #                    load from temp_126_logic_64 in mem
    lb      a3,314(sp)
              #                    occupy a3 with temp_126_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_130_ret_of_g_64:i32 
              #                          temp_130_ret_of_g_64 =  Call i32 g_0(8_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_127_ret_of_g_64 in mem offset legal
    sw      a0,308(sp)
              #                    release a0 with temp_127_ret_of_g_64
              #                    store to temp_128__64 in mem offset legal
    sb      a2,307(sp)
              #                    release a2 with temp_128__64
              #                    store to temp_126_logic_64 in mem offset legal
    sb      a3,314(sp)
              #                    release a3 with temp_126_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_130_ret_of_g_64 in mem offset legal
    sw      a0,300(sp)
              #                          new_var temp_131__64:i1 
              #                          temp_131__64 = icmp i32 Ne temp_130_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_130_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_131__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_132_logic_64:i1 
              #                          temp_132_logic_64 = Or i1 temp_131__64, temp_129_logic_64 
              #                    occupy a2 with temp_131__64
              #                    occupy a3 with temp_129_logic_64
              #                    load from temp_129_logic_64 in mem
    lb      a3,306(sp)
              #                    occupy a3 with temp_129_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_133_ret_of_g_64:i32 
              #                          temp_133_ret_of_g_64 =  Call i32 g_0(7_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_130_ret_of_g_64 in mem offset legal
    sw      a0,300(sp)
              #                    release a0 with temp_130_ret_of_g_64
              #                    store to temp_131__64 in mem offset legal
    sb      a2,299(sp)
              #                    release a2 with temp_131__64
              #                    store to temp_129_logic_64 in mem offset legal
    sb      a3,306(sp)
              #                    release a3 with temp_129_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_133_ret_of_g_64 in mem offset legal
    sw      a0,292(sp)
              #                          new_var temp_134__64:i1 
              #                          temp_134__64 = icmp i32 Ne temp_133_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_133_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_134__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_135_logic_64:i1 
              #                          temp_135_logic_64 = Or i1 temp_134__64, temp_132_logic_64 
              #                    occupy a2 with temp_134__64
              #                    occupy a3 with temp_132_logic_64
              #                    load from temp_132_logic_64 in mem
    lb      a3,298(sp)
              #                    occupy a3 with temp_132_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_136_ret_of_g_64:i32 
              #                          temp_136_ret_of_g_64 =  Call i32 g_0(6_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_133_ret_of_g_64 in mem offset legal
    sw      a0,292(sp)
              #                    release a0 with temp_133_ret_of_g_64
              #                    store to temp_134__64 in mem offset legal
    sb      a2,291(sp)
              #                    release a2 with temp_134__64
              #                    store to temp_132_logic_64 in mem offset legal
    sb      a3,298(sp)
              #                    release a3 with temp_132_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_136_ret_of_g_64 in mem offset legal
    sw      a0,284(sp)
              #                          new_var temp_137__64:i1 
              #                          temp_137__64 = icmp i32 Ne temp_136_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_136_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_137__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_138_logic_64:i1 
              #                          temp_138_logic_64 = Or i1 temp_137__64, temp_135_logic_64 
              #                    occupy a2 with temp_137__64
              #                    occupy a3 with temp_135_logic_64
              #                    load from temp_135_logic_64 in mem
    lb      a3,290(sp)
              #                    occupy a3 with temp_135_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_139_ret_of_g_64:i32 
              #                          temp_139_ret_of_g_64 =  Call i32 g_0(5_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_136_ret_of_g_64 in mem offset legal
    sw      a0,284(sp)
              #                    release a0 with temp_136_ret_of_g_64
              #                    store to temp_137__64 in mem offset legal
    sb      a2,283(sp)
              #                    release a2 with temp_137__64
              #                    store to temp_135_logic_64 in mem offset legal
    sb      a3,290(sp)
              #                    release a3 with temp_135_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_139_ret_of_g_64 in mem offset legal
    sw      a0,276(sp)
              #                          new_var temp_140__64:i1 
              #                          temp_140__64 = icmp i32 Ne temp_139_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_139_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_140__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_141_logic_64:i1 
              #                          temp_141_logic_64 = Or i1 temp_140__64, temp_138_logic_64 
              #                    occupy a2 with temp_140__64
              #                    occupy a3 with temp_138_logic_64
              #                    load from temp_138_logic_64 in mem
    lb      a3,282(sp)
              #                    occupy a3 with temp_138_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_142_ret_of_g_64:i32 
              #                          temp_142_ret_of_g_64 =  Call i32 g_0(4_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_139_ret_of_g_64 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with temp_139_ret_of_g_64
              #                    store to temp_140__64 in mem offset legal
    sb      a2,275(sp)
              #                    release a2 with temp_140__64
              #                    store to temp_138_logic_64 in mem offset legal
    sb      a3,282(sp)
              #                    release a3 with temp_138_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_142_ret_of_g_64 in mem offset legal
    sw      a0,268(sp)
              #                          new_var temp_143__64:i1 
              #                          temp_143__64 = icmp i32 Ne temp_142_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_142_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_143__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_144_logic_64:i1 
              #                          temp_144_logic_64 = Or i1 temp_143__64, temp_141_logic_64 
              #                    occupy a2 with temp_143__64
              #                    occupy a3 with temp_141_logic_64
              #                    load from temp_141_logic_64 in mem
    lb      a3,274(sp)
              #                    occupy a3 with temp_141_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_145_ret_of_g_64:i32 
              #                          temp_145_ret_of_g_64 =  Call i32 g_0(3_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_142_ret_of_g_64 in mem offset legal
    sw      a0,268(sp)
              #                    release a0 with temp_142_ret_of_g_64
              #                    store to temp_143__64 in mem offset legal
    sb      a2,267(sp)
              #                    release a2 with temp_143__64
              #                    store to temp_141_logic_64 in mem offset legal
    sb      a3,274(sp)
              #                    release a3 with temp_141_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_145_ret_of_g_64 in mem offset legal
    sw      a0,260(sp)
              #                          new_var temp_146__64:i1 
              #                          temp_146__64 = icmp i32 Ne temp_145_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_145_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_146__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_147_logic_64:i1 
              #                          temp_147_logic_64 = Or i1 temp_146__64, temp_144_logic_64 
              #                    occupy a2 with temp_146__64
              #                    occupy a3 with temp_144_logic_64
              #                    load from temp_144_logic_64 in mem
    lb      a3,266(sp)
              #                    occupy a3 with temp_144_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_148_ret_of_g_64:i32 
              #                          temp_148_ret_of_g_64 =  Call i32 g_0(2_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_145_ret_of_g_64 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with temp_145_ret_of_g_64
              #                    store to temp_146__64 in mem offset legal
    sb      a2,259(sp)
              #                    release a2 with temp_146__64
              #                    store to temp_144_logic_64 in mem offset legal
    sb      a3,266(sp)
              #                    release a3 with temp_144_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_148_ret_of_g_64 in mem offset legal
    sw      a0,252(sp)
              #                          new_var temp_149__64:i1 
              #                          temp_149__64 = icmp i32 Ne temp_148_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_148_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_149__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_150_logic_64:i1 
              #                          temp_150_logic_64 = Or i1 temp_149__64, temp_147_logic_64 
              #                    occupy a2 with temp_149__64
              #                    occupy a3 with temp_147_logic_64
              #                    load from temp_147_logic_64 in mem
    lb      a3,258(sp)
              #                    occupy a3 with temp_147_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_151_ret_of_g_64:i32 
              #                          temp_151_ret_of_g_64 =  Call i32 g_0(1_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_148_ret_of_g_64 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with temp_148_ret_of_g_64
              #                    store to temp_149__64 in mem offset legal
    sb      a2,251(sp)
              #                    release a2 with temp_149__64
              #                    store to temp_147_logic_64 in mem offset legal
    sb      a3,258(sp)
              #                    release a3 with temp_147_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_151_ret_of_g_64 in mem offset legal
    sw      a0,244(sp)
              #                          new_var temp_152__64:i1 
              #                          temp_152__64 = icmp i32 Ne temp_151_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_151_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_152__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_153_logic_64:i1 
              #                          temp_153_logic_64 = Or i1 temp_152__64, temp_150_logic_64 
              #                    occupy a2 with temp_152__64
              #                    occupy a3 with temp_150_logic_64
              #                    load from temp_150_logic_64 in mem
    lb      a3,250(sp)
              #                    occupy a3 with temp_150_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_154_ret_of_g_64:i32 
              #                          temp_154_ret_of_g_64 =  Call i32 g_0(0_0, i_51) 
              #                    saved register dumping to mem
              #                    store to temp_151_ret_of_g_64 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with temp_151_ret_of_g_64
              #                    store to temp_152__64 in mem offset legal
    sb      a2,243(sp)
              #                    release a2 with temp_152__64
              #                    store to temp_150_logic_64 in mem offset legal
    sb      a3,250(sp)
              #                    release a3 with temp_150_logic_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    g
              #                    store to temp_154_ret_of_g_64 in mem offset legal
    sw      a0,236(sp)
              #                          new_var temp_155__64:i1 
              #                          temp_155__64 = icmp i32 Ne temp_154_ret_of_g_64, 0_0 
              #                    occupy a0 with temp_154_ret_of_g_64
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_155__64
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_156_logic_64:i1 
              #                          temp_156_logic_64 = Or i1 temp_155__64, temp_153_logic_64 
              #                    occupy a2 with temp_155__64
              #                    occupy a3 with temp_153_logic_64
              #                    load from temp_153_logic_64 in mem
    lb      a3,242(sp)
              #                    occupy a3 with temp_153_logic_64
              #                    free a2
              #                    free a3
              #                    free a3
              #                          br i1 temp_156_logic_64, label branch_true_65, label branch_false_65 
              #                    occupy a4 with temp_156_logic_64
              #                    load from temp_156_logic_64 in mem
    lb      a4,234(sp)
              #                    free a4
              #                    occupy a4 with temp_156_logic_64
    bnez    a4, .branch_true_65
              #                    free a4
    j       .branch_false_65
              #                    regtab     a0:Freed { symidx: temp_154_ret_of_g_64, tracked: true } |     a2:Freed { symidx: temp_155__64, tracked: true } |     a3:Freed { symidx: temp_153_logic_64, tracked: true } |     a4:Freed { symidx: temp_156_logic_64, tracked: true } | 
              #                          label branch_true_65: 
.branch_true_65:
              #                          jump label: branch_false_65 
    j       .branch_false_65
              #                    regtab     a0:Freed { symidx: temp_154_ret_of_g_64, tracked: true } |     a2:Freed { symidx: temp_155__64, tracked: true } |     a3:Freed { symidx: temp_153_logic_64, tracked: true } |     a4:Freed { symidx: temp_156_logic_64, tracked: true } | 
              #                          label branch_false_65: 
.branch_false_65:
              #                    regtab     a0:Freed { symidx: temp_154_ret_of_g_64, tracked: true } |     a2:Freed { symidx: temp_155__64, tracked: true } |     a3:Freed { symidx: temp_153_logic_64, tracked: true } |     a4:Freed { symidx: temp_156_logic_64, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_157_arithop_63:i32 
              #                          temp_157_arithop_63 = Add i32 i_51, 1_0 
              #                    occupy a1 with i_51
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_157_arithop_63
    add     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                          i_51 = i32 temp_157_arithop_63 
              #                    occupy a6 with temp_157_arithop_63
              #                    occupy a1 with i_51
    mv      a1, a6
              #                    free a6
              #                    free a1
              #                          jump label: while.head_62 
              #                    store to temp_154_ret_of_g_64 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with temp_154_ret_of_g_64
              #                    store to temp_157_arithop_63 in mem offset legal
    sw      a6,228(sp)
              #                    release a6 with temp_157_arithop_63
              #                    store to temp_155__64 in mem offset legal
    sb      a2,235(sp)
              #                    release a2 with temp_155__64
              #                    store to temp_156_logic_64 in mem offset legal
    sb      a4,234(sp)
              #                    release a4 with temp_156_logic_64
              #                    store to i_51 in mem offset legal
    sw      a1,556(sp)
              #                    release a1 with i_51
              #                    store to temp_153_logic_64 in mem offset legal
    sb      a3,242(sp)
              #                    release a3 with temp_153_logic_64
              #                    occupy a0 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a0,556(sp)
              #                    occupy a2 with _anonymous_of_temp_36_cmp_53_0
              #                    load from temp_36_cmp_53 in mem
    lb      a2,555(sp)
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: temp_36_cmp_53, tracked: true } |     a3:Freed { symidx: temp_97_cmp_61, tracked: true } | 
              #                          label while.exit_62: 
.while.exit_62:
              #                          i_51 = i32 1_0 
              #                    occupy a0 with i_51
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: temp_36_cmp_53, tracked: true } |     a3:Freed { symidx: temp_97_cmp_61, tracked: true } | 
              #                          label while.head_70: 
.while.head_70:
              #                          new_var temp_158_arithop_69:i32 
              #                          temp_158_arithop_69 = Sub i32 i_51, 1_0 
              #                    occupy a0 with i_51
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with temp_158_arithop_69
              #                    regtab:    a0:Occupied { symidx: i_51, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_36_cmp_53, tracked: true } |     a3:Freed { symidx: temp_97_cmp_61, tracked: true } |     a4:Occupied { symidx: temp_158_arithop_69, tracked: true, occupy_count: 1 } | 


    sub     a4,a0,a1
              #                    free a0
              #                    free a1
              #                    free a4
              #                          new_var temp_159_ret_of_f_69:i32 
              #                          temp_159_ret_of_f_69 =  Call i32 f_0(temp_158_arithop_69, i_51) 
              #                    saved register dumping to mem
              #                    store to i_51 in mem offset legal
    sw      a0,556(sp)
              #                    release a0 with i_51
              #                    store to temp_36_cmp_53 in mem offset legal
    sb      a2,555(sp)
              #                    release a2 with temp_36_cmp_53
              #                    store to temp_97_cmp_61 in mem offset legal
    sb      a3,391(sp)
              #                    release a3 with temp_97_cmp_61
              #                    store to temp_158_arithop_69 in mem offset legal
    sw      a4,224(sp)
              #                    release a4 with temp_158_arithop_69
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_158_arithop_69_0
              #                    load from temp_158_arithop_69 in mem


    lw      a0,224(sp)
              #                    occupy a1 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    arg load ended


    call    f
              #                    store to temp_159_ret_of_f_69 in mem offset legal
    sw      a0,220(sp)
              #                          new_var temp_160_cmp_69:i1 
              #                          temp_160_cmp_69 = icmp i32 Slt i_51, 20_0 
              #                    occupy a1 with i_51
              #                    load from i_51 in mem


    lw      a1,556(sp)
              #                    occupy a2 with 20_0
    li      a2, 20
              #                    occupy a3 with temp_160_cmp_69
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_161__69:i1 
              #                          temp_161__69 = icmp i32 Ne temp_159_ret_of_f_69, 0_0 
              #                    occupy a0 with temp_159_ret_of_f_69
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_161__69
    xor     a5,a0,a4
    snez    a5, a5
              #                    free a0
              #                    free a4
              #                    free a5
              #                          new_var temp_162_logic_69:i1 
              #                          temp_162_logic_69 = And i1 temp_160_cmp_69, temp_161__69 
              #                    occupy a3 with temp_160_cmp_69
              #                    occupy a5 with temp_161__69
              #                    occupy a6 with temp_162_logic_69
    and     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          br i1 temp_162_logic_69, label while.body_70, label while.exit_70 
              #                    occupy a6 with temp_162_logic_69
              #                    free a6
              #                    occupy a6 with temp_162_logic_69
    bnez    a6, .while.body_70
              #                    free a6
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: temp_159_ret_of_f_69, tracked: true } |     a1:Freed { symidx: i_51, tracked: true } |     a3:Freed { symidx: temp_160_cmp_69, tracked: true } |     a5:Freed { symidx: temp_161__69, tracked: true } |     a6:Freed { symidx: temp_162_logic_69, tracked: true } | 
              #                          label while.body_70: 
.while.body_70:
              #                          new_var temp_163_arithop_51:i32 
              #                          temp_163_arithop_51 = Add i32 i_51, 1_0 
              #                    occupy a1 with i_51
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_163_arithop_51
    add     a4,a1,a2
              #                    free a1
              #                    free a2
              #                    free a4
              #                          i_51 = i32 temp_163_arithop_51 
              #                    occupy a4 with temp_163_arithop_51
              #                    occupy a1 with i_51
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: while.head_70 
              #                    store to temp_159_ret_of_f_69 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with temp_159_ret_of_f_69
              #                    store to temp_162_logic_69 in mem offset legal
    sb      a6,217(sp)
              #                    release a6 with temp_162_logic_69
              #                    store to temp_163_arithop_51 in mem offset legal
    sw      a4,212(sp)
              #                    release a4 with temp_163_arithop_51
              #                    store to i_51 in mem offset legal
    sw      a1,556(sp)
              #                    release a1 with i_51
              #                    store to temp_161__69 in mem offset legal
    sb      a5,218(sp)
              #                    release a5 with temp_161__69
              #                    store to temp_160_cmp_69 in mem offset legal
    sb      a3,219(sp)
              #                    release a3 with temp_160_cmp_69
              #                    occupy a0 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a0,556(sp)
              #                    occupy a2 with _anonymous_of_temp_36_cmp_53_0
              #                    load from temp_36_cmp_53 in mem
    lb      a2,555(sp)
              #                    occupy a3 with _anonymous_of_temp_97_cmp_61_0
              #                    load from temp_97_cmp_61 in mem
    lb      a3,391(sp)
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_159_ret_of_f_69, tracked: true } |     a1:Freed { symidx: i_51, tracked: true } |     a3:Freed { symidx: temp_160_cmp_69, tracked: true } |     a5:Freed { symidx: temp_161__69, tracked: true } |     a6:Freed { symidx: temp_162_logic_69, tracked: true } | 
              #                          label while.exit_70: 
.while.exit_70:
              #                          new_var ans_51:i32 
              #                          ans_51 = i32 0_0 
              #                    occupy a2 with ans_51
    li      a2, 0
              #                    free a2
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_159_ret_of_f_69, tracked: true } |     a1:Freed { symidx: i_51, tracked: true } |     a2:Freed { symidx: ans_51, tracked: true } |     a3:Freed { symidx: temp_160_cmp_69, tracked: true } |     a5:Freed { symidx: temp_161__69, tracked: true } |     a6:Freed { symidx: temp_162_logic_69, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_164_ret_of_h_74:i32 
              #                          temp_164_ret_of_h_74 =  Call i32 h_0(3_0) 
              #                    saved register dumping to mem
              #                    store to temp_159_ret_of_f_69 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with temp_159_ret_of_f_69
              #                    store to i_51 in mem offset legal
    sw      a1,556(sp)
              #                    release a1 with i_51
              #                    store to ans_51 in mem offset legal
    sw      a2,208(sp)
              #                    release a2 with ans_51
              #                    store to temp_160_cmp_69 in mem offset legal
    sb      a3,219(sp)
              #                    release a3 with temp_160_cmp_69
              #                    store to temp_161__69 in mem offset legal
    sb      a5,218(sp)
              #                    release a5 with temp_161__69
              #                    store to temp_162_logic_69 in mem offset legal
    sb      a6,217(sp)
              #                    release a6 with temp_162_logic_69
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    arg load ended


    call    h
              #                    store to temp_164_ret_of_h_74 in mem offset legal
    sw      a0,204(sp)
              #                          new_var temp_165_ret_of_h_74:i32 
              #                          temp_165_ret_of_h_74 =  Call i32 h_0(2_0) 
              #                    saved register dumping to mem
              #                    store to temp_164_ret_of_h_74 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with temp_164_ret_of_h_74
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    arg load ended


    call    h
              #                    store to temp_165_ret_of_h_74 in mem offset legal
    sw      a0,200(sp)
              #                          new_var temp_166_booltrans_74:i1 
              #                          temp_166_booltrans_74 = icmp i1 Ne temp_165_ret_of_h_74, 0_0 
              #                    occupy a0 with temp_165_ret_of_h_74
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_166_booltrans_74
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_167_logicnot_74:i1 
              #                          temp_167_logicnot_74 = xor i1 temp_166_booltrans_74, true 
              #                    occupy a2 with temp_166_booltrans_74
              #                    occupy a3 with temp_167_logicnot_74
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_168__74:i1 
              #                          temp_168__74 = icmp i32 Ne temp_164_ret_of_h_74, 0_0 
              #                    occupy a4 with temp_164_ret_of_h_74
              #                    load from temp_164_ret_of_h_74 in mem


    lw      a4,204(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a5 with temp_168__74
    xor     a5,a4,a1
    snez    a5, a5
              #                    free a4
              #                    free a1
              #                    free a5
              #                          new_var temp_169_logic_74:i1 
              #                          temp_169_logic_74 = Or i1 temp_167_logicnot_74, temp_168__74 
              #                    occupy a3 with temp_167_logicnot_74
              #                    occupy a5 with temp_168__74
              #                    occupy a5 with temp_168__74
              #                    free a3
              #                    free a5
              #                    free a5
              #                          new_var temp_170_ret_of_h_74:i32 
              #                          temp_170_ret_of_h_74 =  Call i32 h_0(1_0) 
              #                    saved register dumping to mem
              #                    store to temp_165_ret_of_h_74 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_165_ret_of_h_74
              #                    store to temp_166_booltrans_74 in mem offset legal
    sb      a2,199(sp)
              #                    release a2 with temp_166_booltrans_74
              #                    store to temp_167_logicnot_74 in mem offset legal
    sb      a3,198(sp)
              #                    release a3 with temp_167_logicnot_74
              #                    store to temp_164_ret_of_h_74 in mem offset legal
    sw      a4,204(sp)
              #                    release a4 with temp_164_ret_of_h_74
              #                    store to temp_168__74 in mem offset legal
    sb      a5,197(sp)
              #                    release a5 with temp_168__74
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    h
              #                    store to temp_170_ret_of_h_74 in mem offset legal
    sw      a0,192(sp)
              #                          new_var temp_171_ret_of_h_74:i32 
              #                          temp_171_ret_of_h_74 =  Call i32 h_0(0_0) 
              #                    saved register dumping to mem
              #                    store to temp_170_ret_of_h_74 in mem offset legal
    sw      a0,192(sp)
              #                    release a0 with temp_170_ret_of_h_74
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    h
              #                    store to temp_171_ret_of_h_74 in mem offset legal
    sw      a0,188(sp)
              #                          new_var temp_172__74:i1 
              #                          temp_172__74 = icmp i32 Ne temp_171_ret_of_h_74, 0_0 
              #                    occupy a0 with temp_171_ret_of_h_74
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_172__74
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_173__74:i1 
              #                          temp_172__74 = icmp i32 Ne temp_170_ret_of_h_74, 0_0 
              #                    occupy a3 with temp_170_ret_of_h_74
              #                    load from temp_170_ret_of_h_74 in mem


    lw      a3,192(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_172__74
              #                    free a3
              #                    free a1
              #                    free a2
              #                          new_var temp_174_logic_74:i1 
              #                          temp_174_logic_74 = And i1 temp_172__74, temp_173__74 
              #                    occupy a2 with temp_172__74
              #                    occupy a4 with temp_173__74
              #                    load from temp_173__74 in mem
    lb      a4,186(sp)
              #                    occupy a5 with temp_174_logic_74
    and     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          new_var temp_175_logic_74:i1 
              #                          temp_175_logic_74 = Or i1 temp_174_logic_74, temp_169_logic_74 
              #                    occupy a5 with temp_174_logic_74
              #                    occupy a6 with temp_169_logic_74
              #                    load from temp_169_logic_74 in mem
    lb      a6,196(sp)
              #                    occupy a6 with temp_169_logic_74
              #                    free a5
              #                    free a6
              #                    free a6
              #                          br i1 temp_175_logic_74, label branch_true_75, label branch_false_75 
              #                    occupy a7 with temp_175_logic_74
              #                    load from temp_175_logic_74 in mem
    lb      a7,184(sp)
              #                    free a7
              #                    occupy a7 with temp_175_logic_74
    bnez    a7, .branch_true_75
              #                    free a7
    j       .branch_false_75
              #                    regtab     a0:Freed { symidx: temp_171_ret_of_h_74, tracked: true } |     a2:Freed { symidx: temp_172__74, tracked: true } |     a3:Freed { symidx: temp_170_ret_of_h_74, tracked: true } |     a4:Freed { symidx: temp_173__74, tracked: true } |     a5:Freed { symidx: temp_174_logic_74, tracked: true } |     a6:Freed { symidx: temp_169_logic_74, tracked: true } |     a7:Freed { symidx: temp_175_logic_74, tracked: true } | 
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
              #                    regtab     a0:Freed { symidx: temp_171_ret_of_h_74, tracked: true } |     a2:Freed { symidx: temp_172__74, tracked: true } |     a3:Freed { symidx: temp_170_ret_of_h_74, tracked: true } |     a4:Freed { symidx: temp_173__74, tracked: true } |     a5:Freed { symidx: temp_174_logic_74, tracked: true } |     a6:Freed { symidx: temp_169_logic_74, tracked: true } |     a7:Freed { symidx: temp_175_logic_74, tracked: true } | 
              #                          label branch_false_75: 
.branch_false_75:
              #                    regtab     a0:Freed { symidx: temp_171_ret_of_h_74, tracked: true } |     a2:Freed { symidx: temp_172__74, tracked: true } |     a3:Freed { symidx: temp_170_ret_of_h_74, tracked: true } |     a4:Freed { symidx: temp_173__74, tracked: true } |     a5:Freed { symidx: temp_174_logic_74, tracked: true } |     a6:Freed { symidx: temp_169_logic_74, tracked: true } |     a7:Freed { symidx: temp_175_logic_74, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_176_ptr2globl_51:i32 
              #                          temp_176_ptr2globl_51 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy s1 with temp_176_ptr2globl_51
    lw      s1,0(a1)
              #                    free s1
              #                    free a1
              #                          new_var temp_177_arithop_51:i32 
              #                          temp_177_arithop_51 = Add i32 temp_176_ptr2globl_51, ans_51 
              #                    occupy s1 with temp_176_ptr2globl_51
              #                    occupy s2 with ans_51
              #                    load from ans_51 in mem


    lw      s2,208(sp)
              #                    occupy s3 with temp_177_arithop_51
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
              #                    regtab     a0:Freed { symidx: temp_171_ret_of_h_74, tracked: true } |     a2:Freed { symidx: temp_172__74, tracked: true } |     a3:Freed { symidx: temp_170_ret_of_h_74, tracked: true } |     a4:Freed { symidx: temp_173__74, tracked: true } |     a5:Freed { symidx: temp_174_logic_74, tracked: true } |     a6:Freed { symidx: temp_169_logic_74, tracked: true } |     a7:Freed { symidx: temp_175_logic_74, tracked: true } |     s1:Freed { symidx: temp_176_ptr2globl_51, tracked: true } |     s2:Freed { symidx: ans_51, tracked: true } |     s3:Freed { symidx: temp_177_arithop_51, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_178_ret_of_h_79:i32 
              #                          temp_178_ret_of_h_79 =  Call i32 h_0(8_0) 
              #                    saved register dumping to mem
              #                    store to temp_176_ptr2globl_51 in mem offset legal
    sw      s1,180(sp)
              #                    release s1 with temp_176_ptr2globl_51
              #                    store to ans_51 in mem offset legal
    sw      s2,208(sp)
              #                    release s2 with ans_51
              #                    store to temp_177_arithop_51 in mem offset legal
    sw      s3,176(sp)
              #                    release s3 with temp_177_arithop_51
              #                    store to temp_171_ret_of_h_74 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_171_ret_of_h_74
              #                    store to temp_172__74 in mem offset legal
    sb      a2,187(sp)
              #                    release a2 with temp_172__74
              #                    store to temp_170_ret_of_h_74 in mem offset legal
    sw      a3,192(sp)
              #                    release a3 with temp_170_ret_of_h_74
              #                    store to temp_173__74 in mem offset legal
    sb      a4,186(sp)
              #                    release a4 with temp_173__74
              #                    store to temp_174_logic_74 in mem offset legal
    sb      a5,185(sp)
              #                    release a5 with temp_174_logic_74
              #                    store to temp_169_logic_74 in mem offset legal
    sb      a6,196(sp)
              #                    release a6 with temp_169_logic_74
              #                    store to temp_175_logic_74 in mem offset legal
    sb      a7,184(sp)
              #                    release a7 with temp_175_logic_74
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    arg load ended


    call    h
              #                    store to temp_178_ret_of_h_79 in mem offset legal
    sw      a0,172(sp)
              #                          new_var temp_179_booltrans_79:i1 
              #                          temp_179_booltrans_79 = icmp i1 Ne temp_178_ret_of_h_79, 0_0 
              #                    occupy a0 with temp_178_ret_of_h_79
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_179_booltrans_79
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_180_logicnot_79:i1 
              #                          temp_180_logicnot_79 = xor i1 temp_179_booltrans_79, true 
              #                    occupy a2 with temp_179_booltrans_79
              #                    occupy a3 with temp_180_logicnot_79
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_181_ret_of_h_79:i32 
              #                          temp_181_ret_of_h_79 =  Call i32 h_0(7_0) 
              #                    saved register dumping to mem
              #                    store to temp_178_ret_of_h_79 in mem offset legal
    sw      a0,172(sp)
              #                    release a0 with temp_178_ret_of_h_79
              #                    store to temp_179_booltrans_79 in mem offset legal
    sb      a2,171(sp)
              #                    release a2 with temp_179_booltrans_79
              #                    store to temp_180_logicnot_79 in mem offset legal
    sb      a3,170(sp)
              #                    release a3 with temp_180_logicnot_79
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    arg load ended


    call    h
              #                    store to temp_181_ret_of_h_79 in mem offset legal
    sw      a0,164(sp)
              #                          new_var temp_182_ret_of_h_79:i32 
              #                          temp_182_ret_of_h_79 =  Call i32 h_0(6_0) 
              #                    saved register dumping to mem
              #                    store to temp_181_ret_of_h_79 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_181_ret_of_h_79
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    arg load ended


    call    h
              #                    store to temp_182_ret_of_h_79 in mem offset legal
    sw      a0,160(sp)
              #                          new_var temp_183_booltrans_79:i1 
              #                          temp_183_booltrans_79 = icmp i1 Ne temp_182_ret_of_h_79, 0_0 
              #                    occupy a0 with temp_182_ret_of_h_79
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_183_booltrans_79
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_184_logicnot_79:i1 
              #                          temp_184_logicnot_79 = xor i1 temp_183_booltrans_79, true 
              #                    occupy a2 with temp_183_booltrans_79
              #                    occupy a3 with temp_184_logicnot_79
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_185__79:i1 
              #                          temp_185__79 = icmp i32 Ne temp_181_ret_of_h_79, 0_0 
              #                    occupy a4 with temp_181_ret_of_h_79
              #                    load from temp_181_ret_of_h_79 in mem


    lw      a4,164(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a5 with temp_185__79
    xor     a5,a4,a1
    snez    a5, a5
              #                    free a4
              #                    free a1
              #                    free a5
              #                          new_var temp_186_logic_79:i1 
              #                          temp_186_logic_79 = And i1 temp_184_logicnot_79, temp_185__79 
              #                    occupy a3 with temp_184_logicnot_79
              #                    occupy a5 with temp_185__79
              #                    occupy a6 with temp_186_logic_79
    and     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          new_var temp_187_ret_of_h_79:i32 
              #                          temp_187_ret_of_h_79 =  Call i32 h_0(5_0) 
              #                    saved register dumping to mem
              #                    store to temp_182_ret_of_h_79 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with temp_182_ret_of_h_79
              #                    store to temp_183_booltrans_79 in mem offset legal
    sb      a2,159(sp)
              #                    release a2 with temp_183_booltrans_79
              #                    store to temp_184_logicnot_79 in mem offset legal
    sb      a3,158(sp)
              #                    release a3 with temp_184_logicnot_79
              #                    store to temp_181_ret_of_h_79 in mem offset legal
    sw      a4,164(sp)
              #                    release a4 with temp_181_ret_of_h_79
              #                    store to temp_185__79 in mem offset legal
    sb      a5,157(sp)
              #                    release a5 with temp_185__79
              #                    store to temp_186_logic_79 in mem offset legal
    sb      a6,156(sp)
              #                    release a6 with temp_186_logic_79
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    arg load ended


    call    h
              #                    store to temp_187_ret_of_h_79 in mem offset legal
    sw      a0,152(sp)
              #                          new_var temp_188__79:i1 
              #                          temp_188__79 = icmp i32 Ne temp_187_ret_of_h_79, 0_0 
              #                    occupy a0 with temp_187_ret_of_h_79
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_188__79
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_189_logic_79:i1 
              #                          temp_189_logic_79 = And i1 temp_188__79, temp_186_logic_79 
              #                    occupy a2 with temp_188__79
              #                    occupy a3 with temp_186_logic_79
              #                    load from temp_186_logic_79 in mem
    lb      a3,156(sp)
              #                    occupy a4 with temp_189_logic_79
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_190_logic_79:i1 
              #                          temp_190_logic_79 = Or i1 temp_189_logic_79, temp_180_logicnot_79 
              #                    occupy a4 with temp_189_logic_79
              #                    occupy a5 with temp_180_logicnot_79
              #                    load from temp_180_logicnot_79 in mem
    lb      a5,170(sp)
              #                    occupy a5 with temp_180_logicnot_79
              #                    free a4
              #                    free a5
              #                    free a5
              #                          new_var temp_191_ret_of_h_79:i32 
              #                          temp_191_ret_of_h_79 =  Call i32 h_0(4_0) 
              #                    saved register dumping to mem
              #                    store to temp_187_ret_of_h_79 in mem offset legal
    sw      a0,152(sp)
              #                    release a0 with temp_187_ret_of_h_79
              #                    store to temp_188__79 in mem offset legal
    sb      a2,151(sp)
              #                    release a2 with temp_188__79
              #                    store to temp_186_logic_79 in mem offset legal
    sb      a3,156(sp)
              #                    release a3 with temp_186_logic_79
              #                    store to temp_189_logic_79 in mem offset legal
    sb      a4,150(sp)
              #                    release a4 with temp_189_logic_79
              #                    store to temp_180_logicnot_79 in mem offset legal
    sb      a5,170(sp)
              #                    release a5 with temp_180_logicnot_79
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    arg load ended


    call    h
              #                    store to temp_191_ret_of_h_79 in mem offset legal
    sw      a0,144(sp)
              #                          new_var temp_192_booltrans_79:i1 
              #                          temp_192_booltrans_79 = icmp i1 Ne temp_191_ret_of_h_79, 0_0 
              #                    occupy a0 with temp_191_ret_of_h_79
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_192_booltrans_79
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_193_logicnot_79:i1 
              #                          temp_193_logicnot_79 = xor i1 temp_192_booltrans_79, true 
              #                    occupy a2 with temp_192_booltrans_79
              #                    occupy a3 with temp_193_logicnot_79
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_194_logic_79:i1 
              #                          temp_194_logic_79 = Or i1 temp_193_logicnot_79, temp_190_logic_79 
              #                    occupy a3 with temp_193_logicnot_79
              #                    occupy a4 with temp_190_logic_79
              #                    load from temp_190_logic_79 in mem
    lb      a4,149(sp)
              #                    occupy a4 with temp_190_logic_79
              #                    free a3
              #                    free a4
              #                    free a4
              #                          br i1 temp_194_logic_79, label branch_true_80, label branch_false_80 
              #                    occupy a5 with temp_194_logic_79
              #                    load from temp_194_logic_79 in mem
    lb      a5,141(sp)
              #                    free a5
              #                    occupy a5 with temp_194_logic_79
    bnez    a5, .branch_true_80
              #                    free a5
    j       .branch_false_80
              #                    regtab     a0:Freed { symidx: temp_191_ret_of_h_79, tracked: true } |     a2:Freed { symidx: temp_192_booltrans_79, tracked: true } |     a3:Freed { symidx: temp_193_logicnot_79, tracked: true } |     a4:Freed { symidx: temp_190_logic_79, tracked: true } |     a5:Freed { symidx: temp_194_logic_79, tracked: true } | 
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
              #                    regtab     a0:Freed { symidx: temp_191_ret_of_h_79, tracked: true } |     a2:Freed { symidx: temp_192_booltrans_79, tracked: true } |     a3:Freed { symidx: temp_193_logicnot_79, tracked: true } |     a4:Freed { symidx: temp_190_logic_79, tracked: true } |     a5:Freed { symidx: temp_194_logic_79, tracked: true } | 
              #                          label branch_false_80: 
.branch_false_80:
              #                    regtab     a0:Freed { symidx: temp_191_ret_of_h_79, tracked: true } |     a2:Freed { symidx: temp_192_booltrans_79, tracked: true } |     a3:Freed { symidx: temp_193_logicnot_79, tracked: true } |     a4:Freed { symidx: temp_190_logic_79, tracked: true } |     a5:Freed { symidx: temp_194_logic_79, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_195_ptr2globl_51:i32 
              #                          temp_195_ptr2globl_51 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a6 with temp_195_ptr2globl_51
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          new_var temp_196_arithop_51:i32 
              #                          temp_196_arithop_51 = Mul i32 temp_195_ptr2globl_51, ans_51 
              #                    occupy a6 with temp_195_ptr2globl_51
              #                    occupy a7 with ans_51
              #                    load from ans_51 in mem


    lw      a7,208(sp)
              #                    occupy s1 with temp_196_arithop_51
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
              #                    regtab     a0:Freed { symidx: temp_191_ret_of_h_79, tracked: true } |     a2:Freed { symidx: temp_192_booltrans_79, tracked: true } |     a3:Freed { symidx: temp_193_logicnot_79, tracked: true } |     a4:Freed { symidx: temp_190_logic_79, tracked: true } |     a5:Freed { symidx: temp_194_logic_79, tracked: true } |     a6:Freed { symidx: temp_195_ptr2globl_51, tracked: true } |     a7:Freed { symidx: ans_51, tracked: true } |     s1:Freed { symidx: temp_196_arithop_51, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_197_ret_of_h_84:i32 
              #                          temp_197_ret_of_h_84 =  Call i32 h_0(15_0) 
              #                    saved register dumping to mem
              #                    store to temp_196_arithop_51 in mem offset legal
    sw      s1,132(sp)
              #                    release s1 with temp_196_arithop_51
              #                    store to temp_191_ret_of_h_79 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with temp_191_ret_of_h_79
              #                    store to temp_192_booltrans_79 in mem offset legal
    sb      a2,143(sp)
              #                    release a2 with temp_192_booltrans_79
              #                    store to temp_193_logicnot_79 in mem offset legal
    sb      a3,142(sp)
              #                    release a3 with temp_193_logicnot_79
              #                    store to temp_190_logic_79 in mem offset legal
    sb      a4,149(sp)
              #                    release a4 with temp_190_logic_79
              #                    store to temp_194_logic_79 in mem offset legal
    sb      a5,141(sp)
              #                    release a5 with temp_194_logic_79
              #                    store to temp_195_ptr2globl_51 in mem offset legal
    sw      a6,136(sp)
              #                    release a6 with temp_195_ptr2globl_51
              #                    store to ans_51 in mem offset legal
    sw      a7,208(sp)
              #                    release a7 with ans_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_15_0_0
    li      a0, 15
              #                    arg load ended


    call    h
              #                    store to temp_197_ret_of_h_84 in mem offset legal
    sw      a0,128(sp)
              #                          new_var temp_198_ret_of_h_84:i32 
              #                          temp_198_ret_of_h_84 =  Call i32 h_0(14_0) 
              #                    saved register dumping to mem
              #                    store to temp_197_ret_of_h_84 in mem offset legal
    sw      a0,128(sp)
              #                    release a0 with temp_197_ret_of_h_84
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_14_0_0
    li      a0, 14
              #                    arg load ended


    call    h
              #                    store to temp_198_ret_of_h_84 in mem offset legal
    sw      a0,124(sp)
              #                          new_var temp_199__84:i1 
              #                          temp_199__84 = icmp i32 Ne temp_198_ret_of_h_84, 0_0 
              #                    occupy a0 with temp_198_ret_of_h_84
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_199__84
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_200__84:i1 
              #                          temp_199__84 = icmp i32 Ne temp_197_ret_of_h_84, 0_0 
              #                    occupy a3 with temp_197_ret_of_h_84
              #                    load from temp_197_ret_of_h_84 in mem


    lw      a3,128(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_199__84
              #                    free a3
              #                    free a1
              #                    free a2
              #                          new_var temp_201_logic_84:i1 
              #                          temp_201_logic_84 = And i1 temp_199__84, temp_200__84 
              #                    occupy a2 with temp_199__84
              #                    occupy a4 with temp_200__84
              #                    load from temp_200__84 in mem
    lb      a4,122(sp)
              #                    occupy a5 with temp_201_logic_84
    and     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          new_var temp_202_ret_of_h_84:i32 
              #                          temp_202_ret_of_h_84 =  Call i32 h_0(13_0) 
              #                    saved register dumping to mem
              #                    store to temp_198_ret_of_h_84 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_198_ret_of_h_84
              #                    store to temp_199__84 in mem offset legal
    sb      a2,123(sp)
              #                    release a2 with temp_199__84
              #                    store to temp_197_ret_of_h_84 in mem offset legal
    sw      a3,128(sp)
              #                    release a3 with temp_197_ret_of_h_84
              #                    store to temp_200__84 in mem offset legal
    sb      a4,122(sp)
              #                    release a4 with temp_200__84
              #                    store to temp_201_logic_84 in mem offset legal
    sb      a5,121(sp)
              #                    release a5 with temp_201_logic_84
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_13_0_0
    li      a0, 13
              #                    arg load ended


    call    h
              #                    store to temp_202_ret_of_h_84 in mem offset legal
    sw      a0,116(sp)
              #                          new_var temp_203_booltrans_84:i1 
              #                          temp_203_booltrans_84 = icmp i1 Ne temp_202_ret_of_h_84, 0_0 
              #                    occupy a0 with temp_202_ret_of_h_84
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_203_booltrans_84
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_204_logicnot_84:i1 
              #                          temp_204_logicnot_84 = xor i1 temp_203_booltrans_84, true 
              #                    occupy a2 with temp_203_booltrans_84
              #                    occupy a3 with temp_204_logicnot_84
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_205_logic_84:i1 
              #                          temp_205_logic_84 = Or i1 temp_204_logicnot_84, temp_201_logic_84 
              #                    occupy a3 with temp_204_logicnot_84
              #                    occupy a4 with temp_201_logic_84
              #                    load from temp_201_logic_84 in mem
    lb      a4,121(sp)
              #                    occupy a4 with temp_201_logic_84
              #                    free a3
              #                    free a4
              #                    free a4
              #                          new_var temp_206_ret_of_h_84:i32 
              #                          temp_206_ret_of_h_84 =  Call i32 h_0(12_0) 
              #                    saved register dumping to mem
              #                    store to temp_202_ret_of_h_84 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_202_ret_of_h_84
              #                    store to temp_203_booltrans_84 in mem offset legal
    sb      a2,115(sp)
              #                    release a2 with temp_203_booltrans_84
              #                    store to temp_204_logicnot_84 in mem offset legal
    sb      a3,114(sp)
              #                    release a3 with temp_204_logicnot_84
              #                    store to temp_201_logic_84 in mem offset legal
    sb      a4,121(sp)
              #                    release a4 with temp_201_logic_84
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_12_0_0
    li      a0, 12
              #                    arg load ended


    call    h
              #                    store to temp_206_ret_of_h_84 in mem offset legal
    sw      a0,108(sp)
              #                          new_var temp_207_booltrans_84:i1 
              #                          temp_207_booltrans_84 = icmp i1 Ne temp_206_ret_of_h_84, 0_0 
              #                    occupy a0 with temp_206_ret_of_h_84
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_207_booltrans_84
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_208_logicnot_84:i1 
              #                          temp_208_logicnot_84 = xor i1 temp_207_booltrans_84, true 
              #                    occupy a2 with temp_207_booltrans_84
              #                    occupy a3 with temp_208_logicnot_84
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_209_logic_84:i1 
              #                          temp_209_logic_84 = Or i1 temp_208_logicnot_84, temp_205_logic_84 
              #                    occupy a3 with temp_208_logicnot_84
              #                    occupy a4 with temp_205_logic_84
              #                    load from temp_205_logic_84 in mem
    lb      a4,113(sp)
              #                    occupy a4 with temp_205_logic_84
              #                    free a3
              #                    free a4
              #                    free a4
              #                          new_var temp_210_ret_of_h_84:i32 
              #                          temp_210_ret_of_h_84 =  Call i32 h_0(11_0) 
              #                    saved register dumping to mem
              #                    store to temp_206_ret_of_h_84 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_206_ret_of_h_84
              #                    store to temp_207_booltrans_84 in mem offset legal
    sb      a2,107(sp)
              #                    release a2 with temp_207_booltrans_84
              #                    store to temp_208_logicnot_84 in mem offset legal
    sb      a3,106(sp)
              #                    release a3 with temp_208_logicnot_84
              #                    store to temp_205_logic_84 in mem offset legal
    sb      a4,113(sp)
              #                    release a4 with temp_205_logic_84
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_11_0_0
    li      a0, 11
              #                    arg load ended


    call    h
              #                    store to temp_210_ret_of_h_84 in mem offset legal
    sw      a0,100(sp)
              #                          new_var temp_211_booltrans_84:i1 
              #                          temp_211_booltrans_84 = icmp i1 Ne temp_210_ret_of_h_84, 0_0 
              #                    occupy a0 with temp_210_ret_of_h_84
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_211_booltrans_84
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_212_logicnot_84:i1 
              #                          temp_212_logicnot_84 = xor i1 temp_211_booltrans_84, true 
              #                    occupy a2 with temp_211_booltrans_84
              #                    occupy a3 with temp_212_logicnot_84
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_213_logic_84:i1 
              #                          temp_213_logic_84 = Or i1 temp_212_logicnot_84, temp_209_logic_84 
              #                    occupy a3 with temp_212_logicnot_84
              #                    occupy a4 with temp_209_logic_84
              #                    load from temp_209_logic_84 in mem
    lb      a4,105(sp)
              #                    occupy a4 with temp_209_logic_84
              #                    free a3
              #                    free a4
              #                    free a4
              #                          new_var temp_214_ret_of_h_84:i32 
              #                          temp_214_ret_of_h_84 =  Call i32 h_0(10_0) 
              #                    saved register dumping to mem
              #                    store to temp_210_ret_of_h_84 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_210_ret_of_h_84
              #                    store to temp_211_booltrans_84 in mem offset legal
    sb      a2,99(sp)
              #                    release a2 with temp_211_booltrans_84
              #                    store to temp_212_logicnot_84 in mem offset legal
    sb      a3,98(sp)
              #                    release a3 with temp_212_logicnot_84
              #                    store to temp_209_logic_84 in mem offset legal
    sb      a4,105(sp)
              #                    release a4 with temp_209_logic_84
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    h
              #                    store to temp_214_ret_of_h_84 in mem offset legal
    sw      a0,92(sp)
              #                          new_var temp_215_booltrans_84:i1 
              #                          temp_215_booltrans_84 = icmp i1 Ne temp_214_ret_of_h_84, 0_0 
              #                    occupy a0 with temp_214_ret_of_h_84
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_215_booltrans_84
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_216_logicnot_84:i1 
              #                          temp_216_logicnot_84 = xor i1 temp_215_booltrans_84, true 
              #                    occupy a2 with temp_215_booltrans_84
              #                    occupy a3 with temp_216_logicnot_84
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_217_ret_of_h_84:i32 
              #                          temp_217_ret_of_h_84 =  Call i32 h_0(9_0) 
              #                    saved register dumping to mem
              #                    store to temp_214_ret_of_h_84 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_214_ret_of_h_84
              #                    store to temp_215_booltrans_84 in mem offset legal
    sb      a2,91(sp)
              #                    release a2 with temp_215_booltrans_84
              #                    store to temp_216_logicnot_84 in mem offset legal
    sb      a3,90(sp)
              #                    release a3 with temp_216_logicnot_84
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_9_0_0
    li      a0, 9
              #                    arg load ended


    call    h
              #                    store to temp_217_ret_of_h_84 in mem offset legal
    sw      a0,84(sp)
              #                          new_var temp_218__84:i1 
              #                          temp_218__84 = icmp i32 Ne temp_217_ret_of_h_84, 0_0 
              #                    occupy a0 with temp_217_ret_of_h_84
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_218__84
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_219_logic_84:i1 
              #                          temp_219_logic_84 = And i1 temp_218__84, temp_216_logicnot_84 
              #                    occupy a2 with temp_218__84
              #                    occupy a3 with temp_216_logicnot_84
              #                    load from temp_216_logicnot_84 in mem
    lb      a3,90(sp)
              #                    occupy a4 with temp_219_logic_84
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_220_logic_84:i1 
              #                          temp_220_logic_84 = Or i1 temp_219_logic_84, temp_213_logic_84 
              #                    occupy a4 with temp_219_logic_84
              #                    occupy a5 with temp_213_logic_84
              #                    load from temp_213_logic_84 in mem
    lb      a5,97(sp)
              #                    occupy a5 with temp_213_logic_84
              #                    free a4
              #                    free a5
              #                    free a5
              #                          br i1 temp_220_logic_84, label branch_true_85, label branch_false_85 
              #                    occupy a6 with temp_220_logic_84
              #                    load from temp_220_logic_84 in mem
    lb      a6,81(sp)
              #                    free a6
              #                    occupy a6 with temp_220_logic_84
    bnez    a6, .branch_true_85
              #                    free a6
    j       .branch_false_85
              #                    regtab     a0:Freed { symidx: temp_217_ret_of_h_84, tracked: true } |     a2:Freed { symidx: temp_218__84, tracked: true } |     a3:Freed { symidx: temp_216_logicnot_84, tracked: true } |     a4:Freed { symidx: temp_219_logic_84, tracked: true } |     a5:Freed { symidx: temp_213_logic_84, tracked: true } |     a6:Freed { symidx: temp_220_logic_84, tracked: true } | 
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
              #                    regtab     a0:Freed { symidx: temp_217_ret_of_h_84, tracked: true } |     a2:Freed { symidx: temp_218__84, tracked: true } |     a3:Freed { symidx: temp_216_logicnot_84, tracked: true } |     a4:Freed { symidx: temp_219_logic_84, tracked: true } |     a5:Freed { symidx: temp_213_logic_84, tracked: true } |     a6:Freed { symidx: temp_220_logic_84, tracked: true } | 
              #                          label branch_false_85: 
.branch_false_85:
              #                    regtab     a0:Freed { symidx: temp_217_ret_of_h_84, tracked: true } |     a2:Freed { symidx: temp_218__84, tracked: true } |     a3:Freed { symidx: temp_216_logicnot_84, tracked: true } |     a4:Freed { symidx: temp_219_logic_84, tracked: true } |     a5:Freed { symidx: temp_213_logic_84, tracked: true } |     a6:Freed { symidx: temp_220_logic_84, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_221_ptr2globl_51:i32 
              #                          temp_221_ptr2globl_51 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a7 with temp_221_ptr2globl_51
    lw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                          new_var temp_222_arithop_51:i32 
              #                          temp_222_arithop_51 = Sub i32 temp_221_ptr2globl_51, ans_51 
              #                    occupy a7 with temp_221_ptr2globl_51
              #                    occupy s1 with ans_51
              #                    load from ans_51 in mem


    lw      s1,208(sp)
              #                    occupy s2 with temp_222_arithop_51
              #                    regtab:    a0:Freed { symidx: temp_217_ret_of_h_84, tracked: true } |     a1:Freed { symidx: *sum_0, tracked: false } |     a2:Freed { symidx: temp_218__84, tracked: true } |     a3:Freed { symidx: temp_216_logicnot_84, tracked: true } |     a4:Freed { symidx: temp_219_logic_84, tracked: true } |     a5:Freed { symidx: temp_213_logic_84, tracked: true } |     a6:Freed { symidx: temp_220_logic_84, tracked: true } |     a7:Occupied { symidx: temp_221_ptr2globl_51, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: ans_51, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: temp_222_arithop_51, tracked: true, occupy_count: 1 } | 


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
              #                    regtab     a0:Freed { symidx: temp_217_ret_of_h_84, tracked: true } |     a2:Freed { symidx: temp_218__84, tracked: true } |     a3:Freed { symidx: temp_216_logicnot_84, tracked: true } |     a4:Freed { symidx: temp_219_logic_84, tracked: true } |     a5:Freed { symidx: temp_213_logic_84, tracked: true } |     a6:Freed { symidx: temp_220_logic_84, tracked: true } |     a7:Freed { symidx: temp_221_ptr2globl_51, tracked: true } |     s1:Freed { symidx: ans_51, tracked: true } |     s2:Freed { symidx: temp_222_arithop_51, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_223_ret_of_h_89:i32 
              #                          temp_223_ret_of_h_89 =  Call i32 h_0(8_0) 
              #                    saved register dumping to mem
              #                    store to ans_51 in mem offset legal
    sw      s1,208(sp)
              #                    release s1 with ans_51
              #                    store to temp_222_arithop_51 in mem offset legal
    sw      s2,72(sp)
              #                    release s2 with temp_222_arithop_51
              #                    store to temp_217_ret_of_h_84 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_217_ret_of_h_84
              #                    store to temp_218__84 in mem offset legal
    sb      a2,83(sp)
              #                    release a2 with temp_218__84
              #                    store to temp_216_logicnot_84 in mem offset legal
    sb      a3,90(sp)
              #                    release a3 with temp_216_logicnot_84
              #                    store to temp_219_logic_84 in mem offset legal
    sb      a4,82(sp)
              #                    release a4 with temp_219_logic_84
              #                    store to temp_213_logic_84 in mem offset legal
    sb      a5,97(sp)
              #                    release a5 with temp_213_logic_84
              #                    store to temp_220_logic_84 in mem offset legal
    sb      a6,81(sp)
              #                    release a6 with temp_220_logic_84
              #                    store to temp_221_ptr2globl_51 in mem offset legal
    sw      a7,76(sp)
              #                    release a7 with temp_221_ptr2globl_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    arg load ended


    call    h
              #                    store to temp_223_ret_of_h_89 in mem offset legal
    sw      a0,68(sp)
              #                          new_var temp_224_ret_of_h_89:i32 
              #                          temp_224_ret_of_h_89 =  Call i32 h_0(7_0) 
              #                    saved register dumping to mem
              #                    store to temp_223_ret_of_h_89 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_223_ret_of_h_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    arg load ended


    call    h
              #                    store to temp_224_ret_of_h_89 in mem offset legal
    sw      a0,64(sp)
              #                          new_var temp_225_booltrans_89:i1 
              #                          temp_225_booltrans_89 = icmp i1 Ne temp_224_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_224_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_225_booltrans_89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_226_logicnot_89:i1 
              #                          temp_226_logicnot_89 = xor i1 temp_225_booltrans_89, true 
              #                    occupy a2 with temp_225_booltrans_89
              #                    occupy a3 with temp_226_logicnot_89
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_227_ret_of_h_89:i32 
              #                          temp_227_ret_of_h_89 =  Call i32 h_0(6_0) 
              #                    saved register dumping to mem
              #                    store to temp_224_ret_of_h_89 in mem offset legal
    sw      a0,64(sp)
              #                    release a0 with temp_224_ret_of_h_89
              #                    store to temp_225_booltrans_89 in mem offset legal
    sb      a2,63(sp)
              #                    release a2 with temp_225_booltrans_89
              #                    store to temp_226_logicnot_89 in mem offset legal
    sb      a3,62(sp)
              #                    release a3 with temp_226_logicnot_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    arg load ended


    call    h
              #                    store to temp_227_ret_of_h_89 in mem offset legal
    sw      a0,56(sp)
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
              #                          temp_229_logic_89 = And i1 temp_228__89, temp_226_logicnot_89 
              #                    occupy a2 with temp_228__89
              #                    occupy a3 with temp_226_logicnot_89
              #                    load from temp_226_logicnot_89 in mem
    lb      a3,62(sp)
              #                    occupy a4 with temp_229_logic_89
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_230__89:i1 
              #                          temp_230__89 = icmp i32 Ne temp_223_ret_of_h_89, 0_0 
              #                    occupy a5 with temp_223_ret_of_h_89
              #                    load from temp_223_ret_of_h_89 in mem


    lw      a5,68(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a6 with temp_230__89
    xor     a6,a5,a1
    snez    a6, a6
              #                    free a5
              #                    free a1
              #                    free a6
              #                          new_var temp_231_logic_89:i1 
              #                          temp_231_logic_89 = Or i1 temp_229_logic_89, temp_230__89 
              #                    occupy a4 with temp_229_logic_89
              #                    occupy a6 with temp_230__89
              #                    occupy a6 with temp_230__89
              #                    free a4
              #                    free a6
              #                    free a6
              #                          new_var temp_232_ret_of_h_89:i32 
              #                          temp_232_ret_of_h_89 =  Call i32 h_0(5_0) 
              #                    saved register dumping to mem
              #                    store to temp_227_ret_of_h_89 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_227_ret_of_h_89
              #                    store to temp_228__89 in mem offset legal
    sb      a2,55(sp)
              #                    release a2 with temp_228__89
              #                    store to temp_226_logicnot_89 in mem offset legal
    sb      a3,62(sp)
              #                    release a3 with temp_226_logicnot_89
              #                    store to temp_229_logic_89 in mem offset legal
    sb      a4,54(sp)
              #                    release a4 with temp_229_logic_89
              #                    store to temp_223_ret_of_h_89 in mem offset legal
    sw      a5,68(sp)
              #                    release a5 with temp_223_ret_of_h_89
              #                    store to temp_230__89 in mem offset legal
    sb      a6,53(sp)
              #                    release a6 with temp_230__89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    arg load ended


    call    h
              #                    store to temp_232_ret_of_h_89 in mem offset legal
    sw      a0,48(sp)
              #                          new_var temp_233__89:i1 
              #                          temp_233__89 = icmp i32 Ne temp_232_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_232_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_233__89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_234_logic_89:i1 
              #                          temp_234_logic_89 = Or i1 temp_233__89, temp_231_logic_89 
              #                    occupy a2 with temp_233__89
              #                    occupy a3 with temp_231_logic_89
              #                    load from temp_231_logic_89 in mem
    lb      a3,52(sp)
              #                    occupy a3 with temp_231_logic_89
              #                    free a2
              #                    free a3
              #                    free a3
              #                          new_var temp_235_ret_of_h_89:i32 
              #                          temp_235_ret_of_h_89 =  Call i32 h_0(4_0) 
              #                    saved register dumping to mem
              #                    store to temp_232_ret_of_h_89 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_232_ret_of_h_89
              #                    store to temp_233__89 in mem offset legal
    sb      a2,47(sp)
              #                    release a2 with temp_233__89
              #                    store to temp_231_logic_89 in mem offset legal
    sb      a3,52(sp)
              #                    release a3 with temp_231_logic_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    arg load ended


    call    h
              #                    store to temp_235_ret_of_h_89 in mem offset legal
    sw      a0,40(sp)
              #                          new_var temp_236_booltrans_89:i1 
              #                          temp_236_booltrans_89 = icmp i1 Ne temp_235_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_235_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_236_booltrans_89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_237_logicnot_89:i1 
              #                          temp_237_logicnot_89 = xor i1 temp_236_booltrans_89, true 
              #                    occupy a2 with temp_236_booltrans_89
              #                    occupy a3 with temp_237_logicnot_89
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_238_ret_of_h_89:i32 
              #                          temp_238_ret_of_h_89 =  Call i32 h_0(3_0) 
              #                    saved register dumping to mem
              #                    store to temp_235_ret_of_h_89 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_235_ret_of_h_89
              #                    store to temp_236_booltrans_89 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_236_booltrans_89
              #                    store to temp_237_logicnot_89 in mem offset legal
    sb      a3,38(sp)
              #                    release a3 with temp_237_logicnot_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    arg load ended


    call    h
              #                    store to temp_238_ret_of_h_89 in mem offset legal
    sw      a0,32(sp)
              #                          new_var temp_239_booltrans_89:i1 
              #                          temp_239_booltrans_89 = icmp i1 Ne temp_238_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_238_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_239_booltrans_89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_240_logicnot_89:i1 
              #                          temp_240_logicnot_89 = xor i1 temp_239_booltrans_89, true 
              #                    occupy a2 with temp_239_booltrans_89
              #                    occupy a3 with temp_240_logicnot_89
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_241_logic_89:i1 
              #                          temp_241_logic_89 = And i1 temp_240_logicnot_89, temp_237_logicnot_89 
              #                    occupy a3 with temp_240_logicnot_89
              #                    occupy a4 with temp_237_logicnot_89
              #                    load from temp_237_logicnot_89 in mem
    lb      a4,38(sp)
              #                    occupy a5 with temp_241_logic_89
    and     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          new_var temp_242_ret_of_h_89:i32 
              #                          temp_242_ret_of_h_89 =  Call i32 h_0(2_0) 
              #                    saved register dumping to mem
              #                    store to temp_238_ret_of_h_89 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_238_ret_of_h_89
              #                    store to temp_239_booltrans_89 in mem offset legal
    sb      a2,31(sp)
              #                    release a2 with temp_239_booltrans_89
              #                    store to temp_240_logicnot_89 in mem offset legal
    sb      a3,30(sp)
              #                    release a3 with temp_240_logicnot_89
              #                    store to temp_237_logicnot_89 in mem offset legal
    sb      a4,38(sp)
              #                    release a4 with temp_237_logicnot_89
              #                    store to temp_241_logic_89 in mem offset legal
    sb      a5,29(sp)
              #                    release a5 with temp_241_logic_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    arg load ended


    call    h
              #                    store to temp_242_ret_of_h_89 in mem offset legal
    sw      a0,24(sp)
              #                          new_var temp_243__89:i1 
              #                          temp_243__89 = icmp i32 Ne temp_242_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_242_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_243__89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_244_logic_89:i1 
              #                          temp_244_logic_89 = And i1 temp_243__89, temp_241_logic_89 
              #                    occupy a2 with temp_243__89
              #                    occupy a3 with temp_241_logic_89
              #                    load from temp_241_logic_89 in mem
    lb      a3,29(sp)
              #                    occupy a4 with temp_244_logic_89
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_245_ret_of_h_89:i32 
              #                          temp_245_ret_of_h_89 =  Call i32 h_0(0_0) 
              #                    saved register dumping to mem
              #                    store to temp_242_ret_of_h_89 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_242_ret_of_h_89
              #                    store to temp_243__89 in mem offset legal
    sb      a2,23(sp)
              #                    release a2 with temp_243__89
              #                    store to temp_241_logic_89 in mem offset legal
    sb      a3,29(sp)
              #                    release a3 with temp_241_logic_89
              #                    store to temp_244_logic_89 in mem offset legal
    sb      a4,22(sp)
              #                    release a4 with temp_244_logic_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    h
              #                    store to temp_245_ret_of_h_89 in mem offset legal
    sw      a0,16(sp)
              #                          new_var temp_246__89:i1 
              #                          temp_246__89 = icmp i32 Ne temp_245_ret_of_h_89, 0_0 
              #                    occupy a0 with temp_245_ret_of_h_89
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_246__89
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_247_logic_89:i1 
              #                          temp_247_logic_89 = And i1 temp_246__89, temp_244_logic_89 
              #                    occupy a2 with temp_246__89
              #                    occupy a3 with temp_244_logic_89
              #                    load from temp_244_logic_89 in mem
    lb      a3,22(sp)
              #                    occupy a4 with temp_247_logic_89
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_248_logic_89:i1 
              #                          temp_248_logic_89 = Or i1 temp_247_logic_89, temp_234_logic_89 
              #                    occupy a4 with temp_247_logic_89
              #                    occupy a5 with temp_234_logic_89
              #                    load from temp_234_logic_89 in mem
    lb      a5,46(sp)
              #                    occupy a5 with temp_234_logic_89
              #                    free a4
              #                    free a5
              #                    free a5
              #                          br i1 temp_248_logic_89, label branch_true_90, label branch_false_90 
              #                    occupy a6 with temp_248_logic_89
              #                    load from temp_248_logic_89 in mem
    lb      a6,13(sp)
              #                    free a6
              #                    occupy a6 with temp_248_logic_89
    bnez    a6, .branch_true_90
              #                    free a6
    j       .branch_false_90
              #                    regtab     a0:Freed { symidx: temp_245_ret_of_h_89, tracked: true } |     a2:Freed { symidx: temp_246__89, tracked: true } |     a3:Freed { symidx: temp_244_logic_89, tracked: true } |     a4:Freed { symidx: temp_247_logic_89, tracked: true } |     a5:Freed { symidx: temp_234_logic_89, tracked: true } |     a6:Freed { symidx: temp_248_logic_89, tracked: true } | 
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
              #                    regtab     a0:Freed { symidx: temp_245_ret_of_h_89, tracked: true } |     a2:Freed { symidx: temp_246__89, tracked: true } |     a3:Freed { symidx: temp_244_logic_89, tracked: true } |     a4:Freed { symidx: temp_247_logic_89, tracked: true } |     a5:Freed { symidx: temp_234_logic_89, tracked: true } |     a6:Freed { symidx: temp_248_logic_89, tracked: true } | 
              #                          label branch_false_90: 
.branch_false_90:
              #                    regtab     a0:Freed { symidx: temp_245_ret_of_h_89, tracked: true } |     a2:Freed { symidx: temp_246__89, tracked: true } |     a3:Freed { symidx: temp_244_logic_89, tracked: true } |     a4:Freed { symidx: temp_247_logic_89, tracked: true } |     a5:Freed { symidx: temp_234_logic_89, tracked: true } |     a6:Freed { symidx: temp_248_logic_89, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_249_ptr2globl_51:i32 
              #                          temp_249_ptr2globl_51 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a7 with temp_249_ptr2globl_51
    lw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                          new_var temp_250_arithop_51:i32 
              #                          temp_250_arithop_51 = Add i32 temp_249_ptr2globl_51, ans_51 
              #                    occupy a7 with temp_249_ptr2globl_51
              #                    occupy s1 with ans_51
              #                    load from ans_51 in mem


    lw      s1,208(sp)
              #                    occupy s2 with temp_250_arithop_51
    add     s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                           Call void putint_0(temp_250_arithop_51) 
              #                    saved register dumping to mem
              #                    store to ans_51 in mem offset legal
    sw      s1,208(sp)
              #                    release s1 with ans_51
              #                    store to temp_250_arithop_51 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_250_arithop_51
              #                    store to temp_245_ret_of_h_89 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_245_ret_of_h_89
              #                    store to temp_246__89 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_246__89
              #                    store to temp_244_logic_89 in mem offset legal
    sb      a3,22(sp)
              #                    release a3 with temp_244_logic_89
              #                    store to temp_247_logic_89 in mem offset legal
    sb      a4,14(sp)
              #                    release a4 with temp_247_logic_89
              #                    store to temp_234_logic_89 in mem offset legal
    sb      a5,46(sp)
              #                    release a5 with temp_234_logic_89
              #                    store to temp_248_logic_89 in mem offset legal
    sb      a6,13(sp)
              #                    release a6 with temp_248_logic_89
              #                    store to temp_249_ptr2globl_51 in mem offset legal
    sw      a7,8(sp)
              #                    release a7 with temp_249_ptr2globl_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_250_arithop_51_0
              #                    load from temp_250_arithop_51 in mem


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
