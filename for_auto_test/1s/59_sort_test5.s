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
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     18   Define swap_0 "array_17,i_17_0,j_17_0," -> swap_ret_0 
    .globl swap
    .type swap,@function
swap:
              #                    mem layout:|ra_swap:8 at 104|s0_swap:8 at 96|array:8 at 88|array:8 at 80|array:8 at 72|array:8 at 64|i _s17 _i0:4 at 60|j _s17 _i0:4 at 56|temp _s19 _i0:4 at 52|none:4 at 48|temp_0_ptr_of_array_17:8 at 40|temp_1_ele_of_array_17 _s19 _i0:4 at 36|none:4 at 32|temp_2_ptr_of_array_17:8 at 24|temp_3_ptr_of_array_17:8 at 16|temp_4_ele_of_array_17 _s19 _i0:4 at 12|none:4 at 8|temp_5_ptr_of_array_17:8 at 0
    addi    sp,sp,-112
              #                    store to ra_swap_0 in mem offset legal
    sd      ra,104(sp)
              #                    store to s0_swap_0 in mem offset legal
    sd      s0,96(sp)
    addi    s0,sp,112
              #                     24   alloc i32 [temp_19] 
              #                     26   alloc ptr->i32 [temp_0_ptr_of_array_17_19] 
              #                     28   alloc i32 [temp_1_ele_of_array_17_19] 
              #                     32   alloc ptr->i32 [temp_2_ptr_of_array_17_19] 
              #                     34   alloc ptr->i32 [temp_3_ptr_of_array_17_19] 
              #                     36   alloc i32 [temp_4_ele_of_array_17_19] 
              #                     41   alloc ptr->i32 [temp_5_ptr_of_array_17_19] 
              #                    regtab     a0:Freed { symidx: array_17, tracked: true } |     a1:Freed { symidx: i_17_0, tracked: true } |     a2:Freed { symidx: j_17_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     17    
              #                     25    
              #                     27   temp_0_ptr_of_array_17_19 = GEP array_17:Array:i32:[None] [Some(i_17_0)] 
              #                    occupy a3 with temp_0_ptr_of_array_17_19
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_17_0
    mv      a4, a1
              #                    free a1
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a0 with array_17
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     287  untrack i_17_0 
              #                    occupy a1 with i_17_0
              #                    release a1 with i_17_0
              #                     29   temp_1_ele_of_array_17_19_0 = load temp_0_ptr_of_array_17_19:ptr->i32 
              #                    occupy a3 with temp_0_ptr_of_array_17_19
              #                    occupy a1 with temp_1_ele_of_array_17_19_0
    lw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                     30   mu array_17:29 
              #                     31   (nop) 
              #                     33   (nop) 
              #                     35   temp_3_ptr_of_array_17_19 = GEP array_17:Array:i32:[None] [Some(j_17_0)] 
              #                    occupy a5 with temp_3_ptr_of_array_17_19
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with j_17_0
    mv      a6, a2
              #                    free a2
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a0 with array_17
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                     37   temp_4_ele_of_array_17_19_0 = load temp_3_ptr_of_array_17_19:ptr->i32 
              #                    occupy a5 with temp_3_ptr_of_array_17_19
              #                    occupy a7 with temp_4_ele_of_array_17_19_0
    lw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                     286  untrack temp_3_ptr_of_array_17_19 
              #                    occupy a5 with temp_3_ptr_of_array_17_19
              #                    release a5 with temp_3_ptr_of_array_17_19
              #                     38   mu array_17:37 
              #                     39   store temp_4_ele_of_array_17_19_0:i32 temp_0_ptr_of_array_17_19:ptr->i32 
              #                    occupy a3 with temp_0_ptr_of_array_17_19
              #                    occupy a7 with temp_4_ele_of_array_17_19_0
    sw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                     288  untrack temp_4_ele_of_array_17_19_0 
              #                    occupy a7 with temp_4_ele_of_array_17_19_0
              #                    release a7 with temp_4_ele_of_array_17_19_0
              #                     285  untrack temp_0_ptr_of_array_17_19 
              #                    occupy a3 with temp_0_ptr_of_array_17_19
              #                    release a3 with temp_0_ptr_of_array_17_19
              #                     40   array_17 = chi array_17:39 
              #                     42   temp_5_ptr_of_array_17_19 = GEP array_17:ptr->i32 [Some(j_17_0)] 
              #                    occupy a3 with temp_5_ptr_of_array_17_19
    li      a3, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with j_17_0
    mv      a5, a2
              #                    free a2
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a0 with array_17
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     292  untrack j_17_0 
              #                    occupy a2 with j_17_0
              #                    release a2 with j_17_0
              #                     43   store temp_1_ele_of_array_17_19_0:i32 temp_5_ptr_of_array_17_19:ptr->i32 
              #                    occupy a3 with temp_5_ptr_of_array_17_19
              #                    occupy a1 with temp_1_ele_of_array_17_19_0
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                     291  untrack temp_1_ele_of_array_17_19_0 
              #                    occupy a1 with temp_1_ele_of_array_17_19_0
              #                    release a1 with temp_1_ele_of_array_17_19_0
              #                     290  untrack temp_5_ptr_of_array_17_19 
              #                    occupy a3 with temp_5_ptr_of_array_17_19
              #                    release a3 with temp_5_ptr_of_array_17_19
              #                     44   array_17 = chi array_17:43 
              #                     257  mu array_17:46 
              #                     289  untrack array_17 
              #                    occupy a0 with array_17
              #                    release a0 with array_17
              #                     46   ret 0_0 
              #                    load from ra_swap_0 in mem
    ld      ra,104(sp)
              #                    load from s0_swap_0 in mem
    ld      s0,96(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,112
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define heap_ajust_0 "arr_25,start_25_0,end_25_0," -> heap_ajust_ret_0 
    .globl heap_ajust
    .type heap_ajust,@function
heap_ajust:
              #                    mem layout:|ra_heap_ajust:8 at 160|s0_heap_ajust:8 at 152|arr:8 at 144|arr:8 at 136|start _s25 _i0:4 at 132|end _s25 _i0:4 at 128|dad _s27 _i0:4 at 124|dad _s27 _i1:4 at 120|dad _s27 _i2:4 at 116|dad _s27 _i4:4 at 112|son _s27 _i0:4 at 108|son _s27 _i2:4 at 104|son _s27 _i3:4 at 100|temp_6_arithop _s27 _i0:4 at 96|temp_7_arithop _s27 _i0:4 at 92|temp_8_ret_of_swap _s41 _i0:4 at 88|temp_9_arithop _s41 _i0:4 at 84|temp_10_arithop _s41 _i0:4 at 80|temp_12_arithop _s32 _i0:4 at 76|temp_13_cmp _s32 _i0:1 at 75|temp_14_cmp _s35 _i0:1 at 74|none:2 at 72|temp_15_arithop _s35 _i0:4 at 68|none:4 at 64|temp_16_ptr_of_arr_25:8 at 56|temp_17_ele_of_arr_25 _s35 _i0:4 at 52|none:4 at 48|temp_18_ptr_of_arr_25:8 at 40|temp_19_ele_of_arr_25 _s35 _i0:4 at 36|temp_20_cmp _s35 _i0:1 at 35|none:3 at 32|temp_21_ptr_of_arr_25:8 at 24|temp_22_ele_of_arr_25 _s38 _i0:4 at 20|none:4 at 16|temp_23_ptr_of_arr_25:8 at 8|temp_24_ele_of_arr_25 _s38 _i0:4 at 4|temp_25_cmp _s38 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-168
              #                    store to ra_heap_ajust_0 in mem offset legal
    sd      ra,160(sp)
              #                    store to s0_heap_ajust_0 in mem offset legal
    sd      s0,152(sp)
    addi    s0,sp,168
              #                     49   alloc i32 [dad_27] 
              #                     52   alloc i32 [son_27] 
              #                     54   alloc i32 [temp_6_arithop_27] 
              #                     56   alloc i32 [temp_7_arithop_27] 
              #                     61   alloc i32 [temp_8_ret_of_swap_41] 
              #                     65   alloc i32 [temp_9_arithop_41] 
              #                     67   alloc i32 [temp_10_arithop_41] 
              #                     72   alloc i32 [temp_11_arithop_35] 
              #                     75   alloc i32 [temp_12_arithop_32] 
              #                     77   alloc i1 [temp_13_cmp_32] 
              #                     85   alloc i1 [temp_14_cmp_35] 
              #                     87   alloc i32 [temp_15_arithop_35] 
              #                     89   alloc ptr->i32 [temp_16_ptr_of_arr_25_35] 
              #                     91   alloc i32 [temp_17_ele_of_arr_25_35] 
              #                     94   alloc ptr->i32 [temp_18_ptr_of_arr_25_35] 
              #                     96   alloc i32 [temp_19_ele_of_arr_25_35] 
              #                     99   alloc i1 [temp_20_cmp_35] 
              #                     107  alloc ptr->i32 [temp_21_ptr_of_arr_25_38] 
              #                     109  alloc i32 [temp_22_ele_of_arr_25_38] 
              #                     112  alloc ptr->i32 [temp_23_ptr_of_arr_25_38] 
              #                     114  alloc i32 [temp_24_ele_of_arr_25_38] 
              #                     117  alloc i1 [temp_25_cmp_38] 
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: start_25_0, tracked: true } |     a2:Freed { symidx: end_25_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     19    
              #                     50    
              #                     51   dad_27_1 = i32 start_25_0 
              #                    occupy a1 with start_25_0
              #                    occupy a3 with dad_27_1
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                     294  untrack start_25_0 
              #                    occupy a1 with start_25_0
              #                    release a1 with start_25_0
              #                     53    
              #                     55   temp_6_arithop_27_0 = Mul i32 dad_27_1, 2_0 
              #                    occupy a1 with temp_6_arithop_27_0
              #                    occupy a3 with dad_27_1
    slliw a1,a3,1
              #                    free a3
              #                    free a1
              #                     57   temp_7_arithop_27_0 = Add i32 temp_6_arithop_27_0, 1_0 
              #                    occupy a1 with temp_6_arithop_27_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_7_arithop_27_0
    ADDW    a5,a1,a4
              #                    free a1
              #                    free a4
              #                    free a5
              #                     293  untrack temp_6_arithop_27_0 
              #                    occupy a1 with temp_6_arithop_27_0
              #                    release a1 with temp_6_arithop_27_0
              #                     58   (nop) 
              #                     76   temp_12_arithop_32_0 = Add i32 end_25_0, 1_0 
              #                    occupy a2 with end_25_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a1 with temp_12_arithop_32_0
    ADDW    a1,a2,a4
              #                    free a2
              #                    free a4
              #                    free a1
              #                     272  dad_27_2 = i32 dad_27_1 
              #                    occupy a3 with dad_27_1
              #                    occupy a6 with dad_27_2
    mv      a6, a3
              #                    free a3
              #                    free a6
              #                     296  untrack dad_27_1 
              #                    occupy a3 with dad_27_1
              #                    release a3 with dad_27_1
              #                     273  son_27_2 = i32 temp_7_arithop_27_0 
              #                    occupy a5 with temp_7_arithop_27_0
              #                    occupy a3 with son_27_2
    mv      a3, a5
              #                    free a5
              #                    free a3
              #                     295  untrack temp_7_arithop_27_0 
              #                    occupy a5 with temp_7_arithop_27_0
              #                    release a5 with temp_7_arithop_27_0
              #                          jump label: while.head_33 
    j       .while.head_33
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: temp_12_arithop_32_0, tracked: true } |     a2:Freed { symidx: end_25_0, tracked: true } |     a3:Freed { symidx: son_27_2, tracked: true } |     a6:Freed { symidx: dad_27_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     79   label while.head_33: 
.while.head_33:
              #                     78   temp_13_cmp_32_0 = icmp i32 Slt son_27_2, temp_12_arithop_32_0 
              #                    occupy a3 with son_27_2
              #                    occupy a1 with temp_12_arithop_32_0
              #                    occupy a4 with temp_13_cmp_32_0
    slt     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                     82   br i1 temp_13_cmp_32_0, label while.body_33, label while.exit_33 
              #                    occupy a4 with temp_13_cmp_32_0
              #                    free a4
              #                    occupy a4 with temp_13_cmp_32_0
    bnez    a4, .while.body_33
              #                    free a4
    j       .while.exit_33
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: temp_12_arithop_32_0, tracked: true } |     a2:Freed { symidx: end_25_0, tracked: true } |     a3:Freed { symidx: son_27_2, tracked: true } |     a4:Freed { symidx: temp_13_cmp_32_0, tracked: true } |     a6:Freed { symidx: dad_27_2, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     80   label while.body_33: 
.while.body_33:
              #                     86   temp_14_cmp_35_0 = icmp i32 Slt son_27_2, end_25_0 
              #                    occupy a3 with son_27_2
              #                    occupy a2 with end_25_0
              #                    occupy a5 with temp_14_cmp_35_0
    slt     a5,a3,a2
              #                    free a3
              #                    free a2
              #                    free a5
              #                     106  br i1 temp_14_cmp_35_0, label branch_short_circuit_p_true_198, label UP_26_0 
              #                    occupy a5 with temp_14_cmp_35_0
              #                    free a5
              #                    occupy a5 with temp_14_cmp_35_0
    bnez    a5, .branch_short_circuit_p_true_198
              #                    free a5
    j       .UP_26_0
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: temp_12_arithop_32_0, tracked: true } |     a2:Freed { symidx: end_25_0, tracked: true } |     a3:Freed { symidx: son_27_2, tracked: true } |     a4:Freed { symidx: temp_13_cmp_32_0, tracked: true } |     a5:Freed { symidx: temp_14_cmp_35_0, tracked: true } |     a6:Freed { symidx: dad_27_2, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     103  label branch_short_circuit_p_true_198: 
.branch_short_circuit_p_true_198:
              #                     303  untrack temp_14_cmp_35_0 
              #                    occupy a5 with temp_14_cmp_35_0
              #                    release a5 with temp_14_cmp_35_0
              #                     302  untrack temp_13_cmp_32_0 
              #                    occupy a4 with temp_13_cmp_32_0
              #                    release a4 with temp_13_cmp_32_0
              #                     88   temp_15_arithop_35_0 = Add i32 son_27_2, 1_0 
              #                    occupy a3 with son_27_2
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_15_arithop_35_0
    ADDW    a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     90   temp_16_ptr_of_arr_25_35 = GEP arr_25:Array:i32:[None] [Some(temp_15_arithop_35_0)] 
              #                    occupy a7 with temp_16_ptr_of_arr_25_35
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_15_arithop_35_0
    mv      s1, a5
              #                    free a5
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy a0 with arr_25
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                     92   temp_17_ele_of_arr_25_35_0 = load temp_16_ptr_of_arr_25_35:ptr->i32 
              #                    occupy a7 with temp_16_ptr_of_arr_25_35
              #                    occupy s2 with temp_17_ele_of_arr_25_35_0
    lw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                     307  untrack temp_16_ptr_of_arr_25_35 
              #                    occupy a7 with temp_16_ptr_of_arr_25_35
              #                    release a7 with temp_16_ptr_of_arr_25_35
              #                     93   mu arr_25:92 
              #                     95   temp_18_ptr_of_arr_25_35 = GEP arr_25:Array:i32:[None] [Some(son_27_2)] 
              #                    occupy a7 with temp_18_ptr_of_arr_25_35
    li      a7, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with son_27_2
    mv      s3, a3
              #                    free a3
    add     a7,a7,s3
              #                    free s3
    slli a7,a7,2
              #                    occupy a0 with arr_25
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                     97   temp_19_ele_of_arr_25_35_0 = load temp_18_ptr_of_arr_25_35:ptr->i32 
              #                    occupy a7 with temp_18_ptr_of_arr_25_35
              #                    occupy s4 with temp_19_ele_of_arr_25_35_0
    lw      s4,0(a7)
              #                    free s4
              #                    free a7
              #                     306  untrack temp_18_ptr_of_arr_25_35 
              #                    occupy a7 with temp_18_ptr_of_arr_25_35
              #                    release a7 with temp_18_ptr_of_arr_25_35
              #                     98   mu arr_25:97 
              #                     100  temp_20_cmp_35_0 = icmp i32 Slt temp_19_ele_of_arr_25_35_0, temp_17_ele_of_arr_25_35_0 
              #                    occupy s4 with temp_19_ele_of_arr_25_35_0
              #                    occupy s2 with temp_17_ele_of_arr_25_35_0
              #                    occupy a7 with temp_20_cmp_35_0
    slt     a7,s4,s2
              #                    free s4
              #                    free s2
              #                    free a7
              #                     305  untrack temp_17_ele_of_arr_25_35_0 
              #                    occupy s2 with temp_17_ele_of_arr_25_35_0
              #                    release s2 with temp_17_ele_of_arr_25_35_0
              #                     304  untrack temp_19_ele_of_arr_25_35_0 
              #                    occupy s4 with temp_19_ele_of_arr_25_35_0
              #                    release s4 with temp_19_ele_of_arr_25_35_0
              #                     105  br i1 temp_20_cmp_35_0, label branch_short_circuit_c_true_198, label UP_17_0 
              #                    occupy a7 with temp_20_cmp_35_0
              #                    free a7
              #                    occupy a7 with temp_20_cmp_35_0
    bnez    a7, .branch_short_circuit_c_true_198
              #                    free a7
    j       .UP_17_0
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: temp_12_arithop_32_0, tracked: true } |     a2:Freed { symidx: end_25_0, tracked: true } |     a3:Freed { symidx: son_27_2, tracked: true } |     a5:Freed { symidx: temp_15_arithop_35_0, tracked: true } |     a6:Freed { symidx: dad_27_2, tracked: true } |     a7:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     101  label branch_short_circuit_c_true_198: 
.branch_short_circuit_c_true_198:
              #                     308  untrack temp_20_cmp_35_0 
              #                    occupy a7 with temp_20_cmp_35_0
              #                    release a7 with temp_20_cmp_35_0
              #                     73   (nop) 
              #                     74   (nop) 
              #                     274  son_27_3 = i32 temp_15_arithop_35_0 
              #                    occupy a5 with temp_15_arithop_35_0
              #                    occupy a4 with son_27_3
    mv      a4, a5
              #                    free a5
              #                    free a4
              #                     311  untrack temp_15_arithop_35_0 
              #                    occupy a5 with temp_15_arithop_35_0
              #                    release a5 with temp_15_arithop_35_0
              #                          jump label: branch_short_circuit_c_false_198 
    j       .branch_short_circuit_c_false_198
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: temp_12_arithop_32_0, tracked: true } |     a2:Freed { symidx: end_25_0, tracked: true } |     a3:Freed { symidx: son_27_2, tracked: true } |     a4:Freed { symidx: son_27_3, tracked: true } |     a6:Freed { symidx: dad_27_2, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     102  label branch_short_circuit_c_false_198: 
.branch_short_circuit_c_false_198:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: temp_12_arithop_32_0, tracked: true } |     a2:Freed { symidx: end_25_0, tracked: true } |     a3:Freed { symidx: son_27_2, tracked: true } |     a4:Freed { symidx: son_27_3, tracked: true } |     a6:Freed { symidx: dad_27_2, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     108  temp_21_ptr_of_arr_25_38 = GEP arr_25:Array:i32:[None] [Some(son_27_3)] 
              #                    occupy a5 with temp_21_ptr_of_arr_25_38
    li      a5, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with son_27_3
    mv      a7, a4
              #                    free a4
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy a0 with arr_25
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                     110  temp_22_ele_of_arr_25_38_0 = load temp_21_ptr_of_arr_25_38:ptr->i32 
              #                    occupy a5 with temp_21_ptr_of_arr_25_38
              #                    occupy s1 with temp_22_ele_of_arr_25_38_0
    lw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                     111  mu arr_25:110 
              #                     113  temp_23_ptr_of_arr_25_38 = GEP arr_25:Array:i32:[None] [Some(dad_27_2)] 
              #                    occupy s2 with temp_23_ptr_of_arr_25_38
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with dad_27_2
    mv      s3, a6
              #                    free a6
              #                    occupy a6 with dad_27_2
              #                    store to dad_27_2 in mem offset legal
    sw      a6,116(sp)
              #                    release a6 with dad_27_2
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy a0 with arr_25
    add     s2,s2,a0
              #                    free a0
              #                    free s2
              #                     115  temp_24_ele_of_arr_25_38_0 = load temp_23_ptr_of_arr_25_38:ptr->i32 
              #                    occupy s2 with temp_23_ptr_of_arr_25_38
              #                    occupy a6 with temp_24_ele_of_arr_25_38_0
    lw      a6,0(s2)
              #                    free a6
              #                    occupy a6 with temp_24_ele_of_arr_25_38_0
              #                    store to temp_24_ele_of_arr_25_38_0 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_24_ele_of_arr_25_38_0
              #                    free s2
              #                     116  mu arr_25:115 
              #                     118  temp_25_cmp_38_0 = icmp i32 Sgt temp_24_ele_of_arr_25_38_0, temp_22_ele_of_arr_25_38_0 
              #                    occupy a6 with temp_24_ele_of_arr_25_38_0
              #                    load from temp_24_ele_of_arr_25_38_0 in mem


    lw      a6,4(sp)
              #                    occupy s1 with temp_22_ele_of_arr_25_38_0
              #                    occupy s4 with temp_25_cmp_38_0
    slt     s4,s1,a6
              #                    free a6
              #                    occupy a6 with temp_24_ele_of_arr_25_38_0
              #                    store to temp_24_ele_of_arr_25_38_0 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_24_ele_of_arr_25_38_0
              #                    free s1
              #                    occupy s1 with temp_22_ele_of_arr_25_38_0
              #                    store to temp_22_ele_of_arr_25_38_0 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with temp_22_ele_of_arr_25_38_0
              #                    free s4
              #                     121  br i1 temp_25_cmp_38_0, label branch_true_39, label branch_false_39 
              #                    occupy s4 with temp_25_cmp_38_0
              #                    free s4
              #                    occupy s4 with temp_25_cmp_38_0
    bnez    s4, .branch_true_39
              #                    free s4
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: temp_12_arithop_32_0, tracked: true } |     a2:Freed { symidx: end_25_0, tracked: true } |     a3:Freed { symidx: son_27_2, tracked: true } |     a4:Freed { symidx: son_27_3, tracked: true } |     a5:Freed { symidx: temp_21_ptr_of_arr_25_38, tracked: true } |     s2:Freed { symidx: temp_23_ptr_of_arr_25_38, tracked: true } |     s4:Freed { symidx: temp_25_cmp_38_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     119  label branch_true_39: 
.branch_true_39:
              #                     328  untrack temp_18_ptr_of_arr_25_35 
              #                     327  untrack temp_10_arithop_41_0 
              #                     326  untrack dad_27_4 
              #                     325  untrack temp_15_arithop_35_0 
              #                     324  untrack temp_25_cmp_38_0 
              #                    occupy s4 with temp_25_cmp_38_0
              #                    release s4 with temp_25_cmp_38_0
              #                     323  untrack temp_9_arithop_41_0 
              #                     322  untrack temp_19_ele_of_arr_25_35_0 
              #                     321  untrack temp_17_ele_of_arr_25_35_0 
              #                     320  untrack temp_16_ptr_of_arr_25_35 
              #                     319  untrack temp_13_cmp_32_0 
              #                     318  untrack temp_21_ptr_of_arr_25_38 
              #                    occupy a5 with temp_21_ptr_of_arr_25_38
              #                    release a5 with temp_21_ptr_of_arr_25_38
              #                     317  untrack temp_20_cmp_35_0 
              #                     316  untrack son_27_3 
              #                    occupy a4 with son_27_3
              #                    release a4 with son_27_3
              #                     315  untrack temp_14_cmp_35_0 
              #                     314  untrack temp_24_ele_of_arr_25_38_0 
              #                     313  untrack temp_23_ptr_of_arr_25_38 
              #                    occupy s2 with temp_23_ptr_of_arr_25_38
              #                    release s2 with temp_23_ptr_of_arr_25_38
              #                     312  untrack temp_22_ele_of_arr_25_38_0 
              #                     71   ret 0_0 
              #                    load from ra_heap_ajust_0 in mem
    ld      ra,160(sp)
              #                    load from s0_heap_ajust_0 in mem
    ld      s0,152(sp)
              #                    occupy a0 with arr_25
              #                    store to arr_25 in mem offset legal
    sd      a0,136(sp)
              #                    release a0 with arr_25
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,168
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: temp_12_arithop_32_0, tracked: true } |     a2:Freed { symidx: end_25_0, tracked: true } |     a3:Freed { symidx: son_27_2, tracked: true } |     a4:Freed { symidx: son_27_3, tracked: true } |     a5:Freed { symidx: temp_21_ptr_of_arr_25_38, tracked: true } |     s2:Freed { symidx: temp_23_ptr_of_arr_25_38, tracked: true } |     s4:Freed { symidx: temp_25_cmp_38_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     120  label branch_false_39: 
.branch_false_39:
              #                     62   temp_8_ret_of_swap_41_0 =  Call i32 swap_0(arr_25, dad_27_2, son_27_3) 
              #                    saved register dumping to mem
              #                    occupy s2 with temp_23_ptr_of_arr_25_38
              #                    store to temp_23_ptr_of_arr_25_38 in mem offset legal
    sd      s2,8(sp)
              #                    release s2 with temp_23_ptr_of_arr_25_38
              #                    occupy s4 with temp_25_cmp_38_0
              #                    store to temp_25_cmp_38_0 in mem offset legal
    sb      s4,3(sp)
              #                    release s4 with temp_25_cmp_38_0
              #                    occupy a0 with arr_25
              #                    store to arr_25 in mem offset legal
    sd      a0,136(sp)
              #                    release a0 with arr_25
              #                    occupy a1 with temp_12_arithop_32_0
              #                    store to temp_12_arithop_32_0 in mem offset legal
    sw      a1,76(sp)
              #                    release a1 with temp_12_arithop_32_0
              #                    occupy a2 with end_25_0
              #                    store to end_25_0 in mem offset legal
    sw      a2,128(sp)
              #                    release a2 with end_25_0
              #                    occupy a3 with son_27_2
              #                    store to son_27_2 in mem offset legal
    sw      a3,104(sp)
              #                    release a3 with son_27_2
              #                    occupy a4 with son_27_3
              #                    store to son_27_3 in mem offset legal
    sw      a4,100(sp)
              #                    release a4 with son_27_3
              #                    occupy a5 with temp_21_ptr_of_arr_25_38
              #                    store to temp_21_ptr_of_arr_25_38 in mem offset legal
    sd      a5,24(sp)
              #                    release a5 with temp_21_ptr_of_arr_25_38
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_25_0
              #                    load from arr_25 in mem
    ld      a0,136(sp)
              #                    occupy a1 with _anonymous_of_dad_27_2_0
              #                    load from dad_27_2 in mem


    lw      a1,116(sp)
              #                    occupy a2 with _anonymous_of_son_27_3_0
              #                    load from son_27_3 in mem


    lw      a2,100(sp)
              #                    arg load ended


    call    swap
              #                     63   (nop) 
              #                     64   dad_27_4 = i32 son_27_3 
              #                    occupy a1 with son_27_3
              #                    load from son_27_3 in mem


    lw      a1,100(sp)
              #                    occupy a2 with dad_27_4
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     66   temp_9_arithop_41_0 = Mul i32 dad_27_4, 2_0 
              #                    occupy a3 with temp_9_arithop_41_0
              #                    occupy a2 with dad_27_4
    slliw a3,a2,1
              #                    free a2
              #                    free a3
              #                     68   temp_10_arithop_41_0 = Add i32 temp_9_arithop_41_0, 1_0 
              #                    occupy a3 with temp_9_arithop_41_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_10_arithop_41_0
    ADDW    a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     69   (nop) 
              #                          jump label: gather_13 
    j       .gather_13
              #                    regtab     a0:Freed { symidx: temp_8_ret_of_swap_41_0, tracked: true } |     a1:Freed { symidx: son_27_3, tracked: true } |     a2:Freed { symidx: dad_27_4, tracked: true } |     a3:Freed { symidx: temp_9_arithop_41_0, tracked: true } |     a5:Freed { symidx: temp_10_arithop_41_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     122  label gather_13: 
.gather_13:
              #                     275  son_27_2 = i32 temp_10_arithop_41_0 
              #                    occupy a5 with temp_10_arithop_41_0
              #                    occupy a4 with son_27_2
    mv      a4, a5
              #                    free a5
              #                    free a4
              #                     276  dad_27_2 = i32 dad_27_4 
              #                    occupy a2 with dad_27_4
              #                    occupy a6 with dad_27_2
    mv      a6, a2
              #                    free a2
              #                    free a6
              #                          jump label: while.head_33 
              #                    occupy a5 with temp_10_arithop_41_0
              #                    store to temp_10_arithop_41_0 in mem offset legal
    sw      a5,80(sp)
              #                    release a5 with temp_10_arithop_41_0
              #                    occupy a1 with son_27_3
              #                    store to son_27_3 in mem offset legal
    sw      a1,100(sp)
              #                    release a1 with son_27_3
              #                    occupy a1 with temp_12_arithop_32_0
              #                    load from temp_12_arithop_32_0 in mem


    lw      a1,76(sp)
              #                    occupy a0 with temp_8_ret_of_swap_41_0
              #                    store to temp_8_ret_of_swap_41_0 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_8_ret_of_swap_41_0
              #                    occupy a0 with arr_25
              #                    load from arr_25 in mem
    ld      a0,136(sp)
              #                    occupy a4 with son_27_2
              #                    store to son_27_2 in mem offset legal
    sw      a4,104(sp)
              #                    release a4 with son_27_2
              #                    occupy a3 with temp_9_arithop_41_0
              #                    store to temp_9_arithop_41_0 in mem offset legal
    sw      a3,84(sp)
              #                    release a3 with temp_9_arithop_41_0
              #                    occupy a3 with son_27_2
              #                    load from son_27_2 in mem


    lw      a3,104(sp)
              #                    occupy a2 with dad_27_4
              #                    store to dad_27_4 in mem offset legal
    sw      a2,112(sp)
              #                    release a2 with dad_27_4
              #                    occupy a2 with end_25_0
              #                    load from end_25_0 in mem


    lw      a2,128(sp)
    j       .while.head_33
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: temp_12_arithop_32_0, tracked: true } |     a2:Freed { symidx: end_25_0, tracked: true } |     a3:Freed { symidx: son_27_2, tracked: true } |     a5:Freed { symidx: temp_15_arithop_35_0, tracked: true } |     a6:Freed { symidx: dad_27_2, tracked: true } |     a7:Freed { symidx: temp_20_cmp_35_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     271  label UP_17_0: 
.UP_17_0:
              #                     310  untrack temp_20_cmp_35_0 
              #                    occupy a7 with temp_20_cmp_35_0
              #                    release a7 with temp_20_cmp_35_0
              #                     309  untrack temp_15_arithop_35_0 
              #                    occupy a5 with temp_15_arithop_35_0
              #                    release a5 with temp_15_arithop_35_0
              #                     277  son_27_3 = i32 son_27_2 
              #                    occupy a3 with son_27_2
              #                    occupy a4 with son_27_3
    mv      a4, a3
              #                    free a3
              #                    free a4
              #                          jump label: branch_short_circuit_c_false_198 
    j       .branch_short_circuit_c_false_198
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: temp_12_arithop_32_0, tracked: true } |     a2:Freed { symidx: end_25_0, tracked: true } |     a3:Freed { symidx: son_27_2, tracked: true } |     a4:Freed { symidx: temp_13_cmp_32_0, tracked: true } |     a5:Freed { symidx: temp_14_cmp_35_0, tracked: true } |     a6:Freed { symidx: dad_27_2, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     270  label UP_26_0: 
.UP_26_0:
              #                     278  son_27_3 = i32 son_27_2 
              #                    occupy a3 with son_27_2
              #                    occupy a7 with son_27_3
    mv      a7, a3
              #                    free a3
              #                    free a7
              #                          jump label: branch_short_circuit_c_false_198 
              #                    occupy a5 with temp_14_cmp_35_0
              #                    store to temp_14_cmp_35_0 in mem offset legal
    sb      a5,74(sp)
              #                    release a5 with temp_14_cmp_35_0
              #                    occupy a4 with temp_13_cmp_32_0
              #                    store to temp_13_cmp_32_0 in mem offset legal
    sb      a4,75(sp)
              #                    release a4 with temp_13_cmp_32_0
              #                    occupy a7 with son_27_3
              #                    store to son_27_3 in mem offset legal
    sw      a7,100(sp)
              #                    release a7 with son_27_3
              #                    occupy a4 with son_27_3
              #                    load from son_27_3 in mem


    lw      a4,100(sp)
    j       .branch_short_circuit_c_false_198
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: temp_12_arithop_32_0, tracked: true } |     a2:Freed { symidx: end_25_0, tracked: true } |     a3:Freed { symidx: son_27_2, tracked: true } |     a4:Freed { symidx: temp_13_cmp_32_0, tracked: true } |     a6:Freed { symidx: dad_27_2, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     81   label while.exit_33: 
.while.exit_33:
              #                     301  untrack arr_25 
              #                    occupy a0 with arr_25
              #                    release a0 with arr_25
              #                     300  untrack son_27_2 
              #                    occupy a3 with son_27_2
              #                    release a3 with son_27_2
              #                     299  untrack temp_12_arithop_32_0 
              #                    occupy a1 with temp_12_arithop_32_0
              #                    release a1 with temp_12_arithop_32_0
              #                     298  untrack end_25_0 
              #                    occupy a2 with end_25_0
              #                    release a2 with end_25_0
              #                     297  untrack dad_27_2 
              #                    occupy a6 with dad_27_2
              #                    release a6 with dad_27_2
              #                     60   ret 0_0 
              #                    load from ra_heap_ajust_0 in mem
    ld      ra,160(sp)
              #                    load from s0_heap_ajust_0 in mem
    ld      s0,152(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,168
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     22   Define heap_sort_0 "arr_46,len_46_0," -> heap_sort_ret_0 
    .globl heap_sort
    .type heap_sort,@function
heap_sort:
              #                    mem layout:|ra_heap_sort:8 at 96|s0_heap_sort:8 at 88|arr:8 at 80|arr:8 at 72|len _s46 _i0:4 at 68|i _s48 _i0:4 at 64|i _s48 _i2:4 at 60|i _s48 _i5:4 at 56|tmp _s48 _i0:4 at 52|tmp _s48 _i1:4 at 48|tmp _s48 _i4:4 at 44|temp_26_arithop _s48 _i0:4 at 40|temp_27_arithop _s48 _i0:4 at 36|tmp0 _s61 _i0:4 at 32|temp_29_ret_of_swap _s61 _i0:4 at 28|temp_30_arithop _s61 _i0:4 at 24|temp_31_ret_of_heap_ajust _s61 _i0:4 at 20|temp_33_arithop _s54 _i0:4 at 16|temp_34_ret_of_heap_ajust _s54 _i0:4 at 12|temp_35_arithop _s54 _i0:4 at 8|temp_36_cmp _s52 _i0:1 at 7|temp_37_cmp _s59 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-104
              #                    store to ra_heap_sort_0 in mem offset legal
    sd      ra,96(sp)
              #                    store to s0_heap_sort_0 in mem offset legal
    sd      s0,88(sp)
    addi    s0,sp,104
              #                     123  alloc i32 [i_48] 
              #                     125  alloc i32 [tmp_48] 
              #                     127  alloc i32 [temp_26_arithop_48] 
              #                     129  alloc i32 [temp_27_arithop_48] 
              #                     132  alloc i32 [temp_28_arithop_48] 
              #                     137  alloc i32 [tmp0_61] 
              #                     140  alloc i32 [temp_29_ret_of_swap_61] 
              #                     143  alloc i32 [temp_30_arithop_61] 
              #                     146  alloc i32 [temp_31_ret_of_heap_ajust_61] 
              #                     149  alloc i32 [temp_32_arithop_61] 
              #                     152  alloc i32 [temp_33_arithop_54] 
              #                     155  alloc i32 [temp_34_ret_of_heap_ajust_54] 
              #                     158  alloc i32 [temp_35_arithop_54] 
              #                     161  alloc i1 [temp_36_cmp_52] 
              #                     167  alloc i1 [temp_37_cmp_59] 
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: len_46_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     21    
              #                     124   
              #                     126   
              #                     128  temp_26_arithop_48_0 = Div i32 len_46_0, 2_0 
              #                    occupy a1 with len_46_0
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with temp_26_arithop_48_0
    divw    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     130  temp_27_arithop_48_0 = Sub i32 temp_26_arithop_48_0, 1_0 
              #                    occupy a3 with temp_26_arithop_48_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_27_arithop_48_0
              #                    regtab:    a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: len_46_0, tracked: true } |     a2:Freed { symidx: 2_0, tracked: false } |     a3:Occupied { symidx: temp_26_arithop_48_0, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Occupied { symidx: temp_27_arithop_48_0, tracked: true, occupy_count: 1 } |  released_gpr_count:13,released_fpr_count:24


    subw    a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     331  untrack temp_26_arithop_48_0 
              #                    occupy a3 with temp_26_arithop_48_0
              #                    release a3 with temp_26_arithop_48_0
              #                     131  (nop) 
              #                     153  temp_33_arithop_54_0 = Sub i32 len_46_0, 1_0 
              #                    occupy a1 with len_46_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a3 with temp_33_arithop_54_0
              #                    regtab:    a0:Freed { symidx: arr_46, tracked: true } |     a1:Occupied { symidx: len_46_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: 2_0, tracked: false } |     a3:Occupied { symidx: temp_33_arithop_54_0, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_27_arithop_48_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24


    subw    a3,a1,a4
              #                    free a1
              #                    free a4
              #                    free a3
              #                     330  untrack len_46_0 
              #                    occupy a1 with len_46_0
              #                    release a1 with len_46_0
              #                     279  i_48_2 = i32 temp_27_arithop_48_0 
              #                    occupy a5 with temp_27_arithop_48_0
              #                    occupy a1 with i_48_2
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                     329  untrack temp_27_arithop_48_0 
              #                    occupy a5 with temp_27_arithop_48_0
              #                    release a5 with temp_27_arithop_48_0
              #                          jump label: while.head_53 
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: i_48_2, tracked: true } |     a3:Freed { symidx: temp_33_arithop_54_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     163  label while.head_53: 
.while.head_53:
              #                     162  temp_36_cmp_52_0 = icmp i32 Sgt i_48_2, -1_0 
              #                    occupy a1 with i_48_2
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    occupy a4 with temp_36_cmp_52_0
    slt     a4,a2,a1
              #                    free a1
              #                    free a2
              #                    free a4
              #                     166  br i1 temp_36_cmp_52_0, label while.body_53, label while.exit_53 
              #                    occupy a4 with temp_36_cmp_52_0
              #                    free a4
              #                    occupy a4 with temp_36_cmp_52_0
    bnez    a4, .while.body_53
              #                    free a4
    j       .while.exit_53
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: i_48_2, tracked: true } |     a3:Freed { symidx: temp_33_arithop_54_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_52_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     164  label while.body_53: 
.while.body_53:
              #                     154  (nop) 
              #                     156  temp_34_ret_of_heap_ajust_54_0 =  Call i32 heap_ajust_0(arr_46, i_48_2, temp_33_arithop_54_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with arr_46
              #                    store to arr_46 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with arr_46
              #                    occupy a1 with i_48_2
              #                    store to i_48_2 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with i_48_2
              #                    occupy a3 with temp_33_arithop_54_0
              #                    store to temp_33_arithop_54_0 in mem offset legal
    sw      a3,16(sp)
              #                    release a3 with temp_33_arithop_54_0
              #                    occupy a4 with temp_36_cmp_52_0
              #                    store to temp_36_cmp_52_0 in mem offset legal
    sb      a4,7(sp)
              #                    release a4 with temp_36_cmp_52_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_46_0
              #                    load from arr_46 in mem
    ld      a0,72(sp)
              #                    occupy a1 with _anonymous_of_i_48_2_0
              #                    load from i_48_2 in mem


    lw      a1,60(sp)
              #                    occupy a2 with _anonymous_of_temp_33_arithop_54_0_0
              #                    load from temp_33_arithop_54_0 in mem


    lw      a2,16(sp)
              #                    arg load ended


    call    heap_ajust
              #                     157  (nop) 
              #                     159  temp_35_arithop_54_0 = Sub i32 i_48_2, 1_0 
              #                    occupy a1 with i_48_2
              #                    load from i_48_2 in mem


    lw      a1,60(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_35_arithop_54_0
              #                    regtab:    a0:Freed { symidx: temp_34_ret_of_heap_ajust_54_0, tracked: true } |     a1:Occupied { symidx: i_48_2, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_35_arithop_54_0, tracked: true, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    subw    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     160  (nop) 
              #                     280  i_48_2 = i32 temp_35_arithop_54_0 
              #                    occupy a3 with temp_35_arithop_54_0
              #                    occupy a1 with i_48_2
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_53 
              #                    occupy a3 with temp_35_arithop_54_0
              #                    store to temp_35_arithop_54_0 in mem offset legal
    sw      a3,8(sp)
              #                    release a3 with temp_35_arithop_54_0
              #                    occupy a3 with temp_33_arithop_54_0
              #                    load from temp_33_arithop_54_0 in mem


    lw      a3,16(sp)
              #                    occupy a0 with temp_34_ret_of_heap_ajust_54_0
              #                    store to temp_34_ret_of_heap_ajust_54_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_34_ret_of_heap_ajust_54_0
              #                    occupy a0 with arr_46
              #                    load from arr_46 in mem
    ld      a0,72(sp)
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: i_48_2, tracked: true } |     a3:Freed { symidx: temp_33_arithop_54_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_52_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     165  label while.exit_53: 
.while.exit_53:
              #                     332  untrack i_48_2 
              #                    occupy a1 with i_48_2
              #                    release a1 with i_48_2
              #                     133  (nop) 
              #                     134  (nop) 
              #                     281  i_48_5 = i32 temp_33_arithop_54_0 
              #                    occupy a3 with temp_33_arithop_54_0
              #                    occupy a1 with i_48_5
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                     333  untrack temp_33_arithop_54_0 
              #                    occupy a3 with temp_33_arithop_54_0
              #                    release a3 with temp_33_arithop_54_0
              #                          jump label: while.head_60 
    j       .while.head_60
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: i_48_5, tracked: true } |     a4:Freed { symidx: temp_36_cmp_52_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     169  label while.head_60: 
.while.head_60:
              #                     168  temp_37_cmp_59_0 = icmp i32 Sgt i_48_5, 0_0 
              #                    occupy a1 with i_48_5
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_37_cmp_59_0
    slt     a3,a2,a1
              #                    free a1
              #                    free a2
              #                    free a3
              #                     172  br i1 temp_37_cmp_59_0, label while.body_60, label while.exit_60 
              #                    occupy a3 with temp_37_cmp_59_0
              #                    free a3
              #                    occupy a3 with temp_37_cmp_59_0
    bnez    a3, .while.body_60
              #                    free a3
    j       .while.exit_60
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: i_48_5, tracked: true } |     a3:Freed { symidx: temp_37_cmp_59_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_52_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     170  label while.body_60: 
.while.body_60:
              #                     138   
              #                     139  (nop) 
              #                     141  temp_29_ret_of_swap_61_0 =  Call i32 swap_0(arr_46, 0_0, i_48_5) 
              #                    saved register dumping to mem
              #                    occupy a0 with arr_46
              #                    store to arr_46 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with arr_46
              #                    occupy a1 with i_48_5
              #                    store to i_48_5 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with i_48_5
              #                    occupy a3 with temp_37_cmp_59_0
              #                    store to temp_37_cmp_59_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_37_cmp_59_0
              #                    occupy a4 with temp_36_cmp_52_0
              #                    store to temp_36_cmp_52_0 in mem offset legal
    sb      a4,7(sp)
              #                    release a4 with temp_36_cmp_52_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_46_0
              #                    load from arr_46 in mem
    ld      a0,72(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_i_48_5_0
              #                    load from i_48_5 in mem


    lw      a2,56(sp)
              #                    arg load ended


    call    swap
              #                     142  (nop) 
              #                     144  temp_30_arithop_61_0 = Sub i32 i_48_5, 1_0 
              #                    occupy a1 with i_48_5
              #                    load from i_48_5 in mem


    lw      a1,56(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_30_arithop_61_0
              #                    regtab:    a0:Freed { symidx: temp_29_ret_of_swap_61_0, tracked: true } |     a1:Occupied { symidx: i_48_5, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_30_arithop_61_0, tracked: true, occupy_count: 1 } |  released_gpr_count:11,released_fpr_count:24


    subw    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     145  (nop) 
              #                     147  temp_31_ret_of_heap_ajust_61_0 =  Call i32 heap_ajust_0(arr_46, 0_0, temp_30_arithop_61_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_29_ret_of_swap_61_0
              #                    store to temp_29_ret_of_swap_61_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_29_ret_of_swap_61_0
              #                    occupy a1 with i_48_5
              #                    store to i_48_5 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with i_48_5
              #                    occupy a3 with temp_30_arithop_61_0
              #                    store to temp_30_arithop_61_0 in mem offset legal
    sw      a3,24(sp)
              #                    release a3 with temp_30_arithop_61_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_46_0
              #                    load from arr_46 in mem
    ld      a0,72(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_30_arithop_61_0_0
              #                    load from temp_30_arithop_61_0 in mem


    lw      a2,24(sp)
              #                    arg load ended


    call    heap_ajust
              #                     148  (nop) 
              #                     150  (nop) 
              #                     151  (nop) 
              #                     282  i_48_5 = i32 temp_30_arithop_61_0 
              #                    occupy a1 with temp_30_arithop_61_0
              #                    load from temp_30_arithop_61_0 in mem


    lw      a1,24(sp)
              #                    occupy a2 with i_48_5
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          jump label: while.head_60 
              #                    occupy a1 with temp_30_arithop_61_0
              #                    store to temp_30_arithop_61_0 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with temp_30_arithop_61_0
              #                    occupy a2 with i_48_5
              #                    store to i_48_5 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with i_48_5
              #                    occupy a1 with i_48_5
              #                    load from i_48_5 in mem


    lw      a1,56(sp)
              #                    occupy a0 with temp_31_ret_of_heap_ajust_61_0
              #                    store to temp_31_ret_of_heap_ajust_61_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_31_ret_of_heap_ajust_61_0
              #                    occupy a0 with arr_46
              #                    load from arr_46 in mem
    ld      a0,72(sp)
              #                    occupy a4 with temp_36_cmp_52_0
              #                    load from temp_36_cmp_52_0 in mem


    lb      a4,7(sp)
    j       .while.head_60
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: i_48_5, tracked: true } |     a3:Freed { symidx: temp_37_cmp_59_0, tracked: true } |     a4:Freed { symidx: temp_36_cmp_52_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     171  label while.exit_60: 
.while.exit_60:
              #                     335  untrack arr_46 
              #                    occupy a0 with arr_46
              #                    release a0 with arr_46
              #                     334  untrack i_48_5 
              #                    occupy a1 with i_48_5
              #                    release a1 with i_48_5
              #                     136  ret 0_0 
              #                    load from ra_heap_sort_0 in mem
    ld      ra,96(sp)
              #                    load from s0_heap_sort_0 in mem
    ld      s0,88(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,104
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     23   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 184|s0_main:8 at 176|a:40 at 136|temp_38_ptr_of_a_70:8 at 128|temp_39_ptr_of_a_70:8 at 120|temp_40_ptr_of_a_70:8 at 112|temp_41_ptr_of_a_70:8 at 104|temp_42_ptr_of_a_70:8 at 96|temp_43_ptr_of_a_70:8 at 88|temp_44_ptr_of_a_70:8 at 80|temp_45_ptr_of_a_70:8 at 72|temp_46_ptr_of_a_70:8 at 64|temp_47_ptr_of_a_70:8 at 56|i _s70 _i0:4 at 52|i _s70 _i3:4 at 48|temp_48_ele_ptr_of_a_70:8 at 40|temp_49_value_from_ptr _s70 _i0:4 at 36|temp_50_ret_of_heap_sort _s70 _i0:4 at 32|tmp _s88 _i0:4 at 28|none:4 at 24|temp_51_ptr_of_a_70:8 at 16|temp_52_ele_of_a_70 _s88 _i0:4 at 12|temp_53_arithop _s88 _i0:4 at 8|temp_55_cmp _s86 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-192
              #                    store to ra_main_0 in mem offset legal
    sd      ra,184(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,176(sp)
    addi    s0,sp,192
              #                     258  n_0_1 = chi n_0_0:23 
              #                     178  alloc Array:i32:[Some(10_0)] [a_70] 
              #                     179  alloc ptr->i32 [temp_38_ptr_of_a_70_70] 
              #                     183  alloc ptr->i32 [temp_39_ptr_of_a_70_70] 
              #                     187  alloc ptr->i32 [temp_40_ptr_of_a_70_70] 
              #                     191  alloc ptr->i32 [temp_41_ptr_of_a_70_70] 
              #                     195  alloc ptr->i32 [temp_42_ptr_of_a_70_70] 
              #                     199  alloc ptr->i32 [temp_43_ptr_of_a_70_70] 
              #                     203  alloc ptr->i32 [temp_44_ptr_of_a_70_70] 
              #                     207  alloc ptr->i32 [temp_45_ptr_of_a_70_70] 
              #                     211  alloc ptr->i32 [temp_46_ptr_of_a_70_70] 
              #                     215  alloc ptr->i32 [temp_47_ptr_of_a_70_70] 
              #                     219  alloc i32 [i_70] 
              #                     222  alloc ptr->i32 [temp_48_ele_ptr_of_a_70_70] 
              #                     224  alloc i32 [temp_49_value_from_ptr_70] 
              #                     227  alloc i32 [temp_50_ret_of_heap_sort_70] 
              #                     232  alloc i32 [tmp_88] 
              #                     234  alloc ptr->i32 [temp_51_ptr_of_a_70_88] 
              #                     236  alloc i32 [temp_52_ele_of_a_70_88] 
              #                     243  alloc i32 [temp_53_arithop_88] 
              #                     246  alloc i32 [temp_54_value_from_ptr_86] 
              #                     249  alloc i1 [temp_55_cmp_86] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     175  store 10_0:i32 *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with 10_0
    li      a1, 10
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     176  n_0_2 = chi n_0_1:175 
              #                     177   
              #                     180  temp_38_ptr_of_a_70_70 = GEP a_70_0:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a2 with temp_38_ptr_of_a_70_70
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     181  store 4_0:i32 temp_38_ptr_of_a_70_70:ptr->i32 
              #                    occupy a2 with temp_38_ptr_of_a_70_70
              #                    occupy a4 with 4_0
    li      a4, 4
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     340  untrack temp_38_ptr_of_a_70_70 
              #                    occupy a2 with temp_38_ptr_of_a_70_70
              #                    release a2 with temp_38_ptr_of_a_70_70
              #                     182  a_70_1 = chi a_70_0:181 
              #                     184  temp_39_ptr_of_a_70_70 = GEP a_70_1:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a2 with temp_39_ptr_of_a_70_70
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     185  store 3_0:i32 temp_39_ptr_of_a_70_70:ptr->i32 
              #                    occupy a2 with temp_39_ptr_of_a_70_70
              #                    occupy a6 with 3_0
    li      a6, 3
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     344  untrack temp_39_ptr_of_a_70_70 
              #                    occupy a2 with temp_39_ptr_of_a_70_70
              #                    release a2 with temp_39_ptr_of_a_70_70
              #                     186  a_70_2 = chi a_70_1:185 
              #                     188  temp_40_ptr_of_a_70_70 = GEP a_70_2:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy a2 with temp_40_ptr_of_a_70_70
    li      a2, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 2
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     189  store 9_0:i32 temp_40_ptr_of_a_70_70:ptr->i32 
              #                    occupy a2 with temp_40_ptr_of_a_70_70
              #                    occupy s1 with 9_0
    li      s1, 9
    sw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                     337  untrack temp_40_ptr_of_a_70_70 
              #                    occupy a2 with temp_40_ptr_of_a_70_70
              #                    release a2 with temp_40_ptr_of_a_70_70
              #                     190  a_70_3 = chi a_70_2:189 
              #                     192  temp_41_ptr_of_a_70_70 = GEP a_70_3:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy a2 with temp_41_ptr_of_a_70_70
    li      a2, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 3
    add     a2,a2,s2
              #                    free s2
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     193  store 2_0:i32 temp_41_ptr_of_a_70_70:ptr->i32 
              #                    occupy a2 with temp_41_ptr_of_a_70_70
              #                    occupy s3 with 2_0
    li      s3, 2
    sw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                     338  untrack temp_41_ptr_of_a_70_70 
              #                    occupy a2 with temp_41_ptr_of_a_70_70
              #                    release a2 with temp_41_ptr_of_a_70_70
              #                     194  a_70_4 = chi a_70_3:193 
              #                     196  temp_42_ptr_of_a_70_70 = GEP a_70_4:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy a2 with temp_42_ptr_of_a_70_70
    li      a2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 4
    add     a2,a2,s4
              #                    free s4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     197  store 0_0:i32 temp_42_ptr_of_a_70_70:ptr->i32 
              #                    occupy a2 with temp_42_ptr_of_a_70_70
              #                    occupy s5 with 0_0
    li      s5, 0
    sw      s5,0(a2)
              #                    free s5
              #                    free a2
              #                     336  untrack temp_42_ptr_of_a_70_70 
              #                    occupy a2 with temp_42_ptr_of_a_70_70
              #                    release a2 with temp_42_ptr_of_a_70_70
              #                     198  a_70_5 = chi a_70_4:197 
              #                     200  temp_43_ptr_of_a_70_70 = GEP a_70_5:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a2 with temp_43_ptr_of_a_70_70
    li      a2, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 5
    add     a2,a2,s6
              #                    free s6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     201  store 1_0:i32 temp_43_ptr_of_a_70_70:ptr->i32 
              #                    occupy a2 with temp_43_ptr_of_a_70_70
              #                    occupy s7 with 1_0
    li      s7, 1
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     339  untrack temp_43_ptr_of_a_70_70 
              #                    occupy a2 with temp_43_ptr_of_a_70_70
              #                    release a2 with temp_43_ptr_of_a_70_70
              #                     202  a_70_6 = chi a_70_5:201 
              #                     204  temp_44_ptr_of_a_70_70 = GEP a_70_6:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a2 with temp_44_ptr_of_a_70_70
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     205  store 6_0:i32 temp_44_ptr_of_a_70_70:ptr->i32 
              #                    occupy a2 with temp_44_ptr_of_a_70_70
              #                    occupy s7 with 6_0
    li      s7, 6
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     341  untrack temp_44_ptr_of_a_70_70 
              #                    occupy a2 with temp_44_ptr_of_a_70_70
              #                    release a2 with temp_44_ptr_of_a_70_70
              #                     206  a_70_7 = chi a_70_6:205 
              #                     208  temp_45_ptr_of_a_70_70 = GEP a_70_7:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a2 with temp_45_ptr_of_a_70_70
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 7
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     209  store 5_0:i32 temp_45_ptr_of_a_70_70:ptr->i32 
              #                    occupy a2 with temp_45_ptr_of_a_70_70
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     347  untrack temp_45_ptr_of_a_70_70 
              #                    occupy a2 with temp_45_ptr_of_a_70_70
              #                    release a2 with temp_45_ptr_of_a_70_70
              #                     210  a_70_8 = chi a_70_7:209 
              #                     212  temp_46_ptr_of_a_70_70 = GEP a_70_8:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a2 with temp_46_ptr_of_a_70_70
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 8
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     213  store 7_0:i32 temp_46_ptr_of_a_70_70:ptr->i32 
              #                    occupy a2 with temp_46_ptr_of_a_70_70
              #                    occupy s7 with 7_0
    li      s7, 7
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     346  untrack temp_46_ptr_of_a_70_70 
              #                    occupy a2 with temp_46_ptr_of_a_70_70
              #                    release a2 with temp_46_ptr_of_a_70_70
              #                     214  a_70_9 = chi a_70_8:213 
              #                     216  temp_47_ptr_of_a_70_70 = GEP a_70_9:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a2 with temp_47_ptr_of_a_70_70
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 9
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     217  store 8_0:i32 temp_47_ptr_of_a_70_70:ptr->i32 
              #                    occupy a2 with temp_47_ptr_of_a_70_70
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     343  untrack temp_47_ptr_of_a_70_70 
              #                    occupy a2 with temp_47_ptr_of_a_70_70
              #                    release a2 with temp_47_ptr_of_a_70_70
              #                     218  a_70_10 = chi a_70_9:217 
              #                     220   
              #                     221  (nop) 
              #                     223  temp_48_ele_ptr_of_a_70_70 = GEP a_70_10:Array:i32:[Some(10_0)] [] 
              #                    occupy a2 with temp_48_ele_ptr_of_a_70_70
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     225  temp_49_value_from_ptr_70_0 = load *n_0:ptr->i32 
              #                    occupy s7 with *n_0
              #                       load label n as ptr to reg
    la      s7, n
              #                    occupy reg s7 with *n_0
              #                    occupy s8 with temp_49_value_from_ptr_70_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_49_value_from_ptr_70_0
              #                    store to temp_49_value_from_ptr_70_0 in mem offset legal
    sw      s8,36(sp)
              #                    release s8 with temp_49_value_from_ptr_70_0
              #                    free s7
              #                     226  mu n_0_2:225 
              #                     228  temp_50_ret_of_heap_sort_70_0 =  Call i32 heap_sort_0(temp_48_ele_ptr_of_a_70_70, temp_49_value_from_ptr_70_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_48_ele_ptr_of_a_70_70
              #                    store to temp_48_ele_ptr_of_a_70_70 in mem offset legal
    sd      a2,40(sp)
              #                    release a2 with temp_48_ele_ptr_of_a_70_70
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_48_ele_ptr_of_a_70_70_0
              #                    load from temp_48_ele_ptr_of_a_70_70 in mem
    ld      a0,40(sp)
              #                    occupy a1 with _anonymous_of_temp_49_value_from_ptr_70_0_0
              #                    load from temp_49_value_from_ptr_70_0 in mem


    lw      a1,36(sp)
              #                    arg load ended


    call    heap_sort
              #                     342  untrack temp_48_ele_ptr_of_a_70_70 
              #                     259  mu a_70_10:228 
              #                     260  a_70_11 = chi a_70_10:228 
              #                     229  (nop) 
              #                     283  i_70_3 = i32 temp_50_ret_of_heap_sort_70_0 
              #                    occupy a0 with temp_50_ret_of_heap_sort_70_0
              #                    occupy a1 with i_70_3
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     345  untrack temp_50_ret_of_heap_sort_70_0 
              #                    occupy a0 with temp_50_ret_of_heap_sort_70_0
              #                    release a0 with temp_50_ret_of_heap_sort_70_0
              #                          jump label: while.head_87 
    j       .while.head_87
              #                    regtab     a1:Freed { symidx: i_70_3, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     251  label while.head_87: 
.while.head_87:
              #                     247  (nop) 
              #                     248  mu n_0_2:247 
              #                     250  temp_55_cmp_86_0 = icmp i32 Slt i_70_3, temp_49_value_from_ptr_70_0 
              #                    occupy a1 with i_70_3
              #                    occupy a0 with temp_49_value_from_ptr_70_0
              #                    load from temp_49_value_from_ptr_70_0 in mem


    lw      a0,36(sp)
              #                    occupy a2 with temp_55_cmp_86_0
    slt     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     254  br i1 temp_55_cmp_86_0, label while.body_87, label while.exit_87 
              #                    occupy a2 with temp_55_cmp_86_0
              #                    free a2
              #                    occupy a2 with temp_55_cmp_86_0
    bnez    a2, .while.body_87
              #                    free a2
    j       .while.exit_87
              #                    regtab     a0:Freed { symidx: temp_49_value_from_ptr_70_0, tracked: true } |     a1:Freed { symidx: i_70_3, tracked: true } |     a2:Freed { symidx: temp_55_cmp_86_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     252  label while.body_87: 
.while.body_87:
              #                     233   
              #                     235  temp_51_ptr_of_a_70_88 = GEP a_70_11:Array:i32:[Some(10_0)] [Some(i_70_3)] 
              #                    occupy a3 with temp_51_ptr_of_a_70_88
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_70_3
    mv      a4, a1
              #                    free a1
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,136
              #                    free a3
              #                     237  temp_52_ele_of_a_70_88_0 = load temp_51_ptr_of_a_70_88:ptr->i32 
              #                    occupy a3 with temp_51_ptr_of_a_70_88
              #                    occupy a5 with temp_52_ele_of_a_70_88_0
    lw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     238  mu a_70_11:237 
              #                     239  (nop) 
              #                     240   Call void putint_0(temp_52_ele_of_a_70_88_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_49_value_from_ptr_70_0
              #                    store to temp_49_value_from_ptr_70_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_49_value_from_ptr_70_0
              #                    occupy a1 with i_70_3
              #                    store to i_70_3 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with i_70_3
              #                    occupy a2 with temp_55_cmp_86_0
              #                    store to temp_55_cmp_86_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_55_cmp_86_0
              #                    occupy a3 with temp_51_ptr_of_a_70_88
              #                    store to temp_51_ptr_of_a_70_88 in mem offset legal
    sd      a3,16(sp)
              #                    release a3 with temp_51_ptr_of_a_70_88
              #                    occupy a5 with temp_52_ele_of_a_70_88_0
              #                    store to temp_52_ele_of_a_70_88_0 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_52_ele_of_a_70_88_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_52_ele_of_a_70_88_0_0
              #                    load from temp_52_ele_of_a_70_88_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     241  (nop) 
              #                     242   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     244  temp_53_arithop_88_0 = Add i32 i_70_3, 1_0 
              #                    occupy a0 with i_70_3
              #                    load from i_70_3 in mem


    lw      a0,48(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_53_arithop_88_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     245  (nop) 
              #                     284  i_70_3 = i32 temp_53_arithop_88_0 
              #                    occupy a2 with temp_53_arithop_88_0
              #                    occupy a0 with i_70_3
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_87 
              #                    occupy a0 with i_70_3
              #                    store to i_70_3 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with i_70_3
              #                    occupy a1 with i_70_3
              #                    load from i_70_3 in mem


    lw      a1,48(sp)
              #                    occupy a2 with temp_53_arithop_88_0
              #                    store to temp_53_arithop_88_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_53_arithop_88_0
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: temp_49_value_from_ptr_70_0, tracked: true } |     a1:Freed { symidx: i_70_3, tracked: true } |     a2:Freed { symidx: temp_55_cmp_86_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     253  label while.exit_87: 
.while.exit_87:
              #                     349  untrack temp_49_value_from_ptr_70_0 
              #                    occupy a0 with temp_49_value_from_ptr_70_0
              #                    release a0 with temp_49_value_from_ptr_70_0
              #                     348  untrack i_70_3 
              #                    occupy a1 with i_70_3
              #                    release a1 with i_70_3
              #                     261  mu n_0_2:231 
              #                     231  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,184(sp)
              #                    load from s0_main_0 in mem
    ld      s0,176(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,192
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl n
              #                     15   global i32 n_0 
    .type n,@object
n:
    .word 0
