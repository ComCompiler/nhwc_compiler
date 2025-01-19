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
              #                     21   Define f_0 "i_18_0,j_18_0," -> f_ret_0 
    .globl f
    .type f,@function
f:
              #                    mem layout:|ra_f:8 at 72|s0_f:8 at 64|i _s18 _i0:4 at 60|j _s18 _i0:4 at 56|temp_0_value_from_ptr _s20 _i0:4 at 52|temp_1_arithop _s20 _i0:4 at 48|temp_2_ptr_of_*array_0:8 at 40|temp_3_arithop _s26 _i0:4 at 36|none:4 at 32|temp_4_ptr_of_*array_0:8 at 24|temp_5_ele_of_*array_0 _s26 _i0:4 at 20|none:4 at 16|temp_6_ptr_of_*array_0:8 at 8|temp_7_ele_of_*array_0 _s26 _i0:4 at 4|temp_8_cmp _s22 _i0:1 at 3|temp_9_cmp _s22 _i0:1 at 2|temp_10_cmp _s26 _i0:1 at 1|none:1 at 0
    addi    sp,sp,-80
              #                    store to ra_f_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_f_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                     692  array_0_1 = chi array_0_0:21 
              #                     693  sum_0_1 = chi sum_0_0:21 
              #                     25   alloc i32 [temp_0_value_from_ptr_20] 
              #                     28   alloc i32 [temp_1_arithop_20] 
              #                     32   alloc ptr->i32 [temp_2_ptr_of_*array_0_20] 
              #                     37   alloc i32 [temp_3_arithop_26] 
              #                     39   alloc ptr->i32 [temp_4_ptr_of_*array_0_26] 
              #                     41   alloc i32 [temp_5_ele_of_*array_0_26] 
              #                     46   alloc ptr->i32 [temp_6_ptr_of_*array_0_26] 
              #                     48   alloc i32 [temp_7_ele_of_*array_0_26] 
              #                     54   alloc i1 [temp_8_cmp_22] 
              #                     56   alloc i1 [temp_9_cmp_22] 
              #                     64   alloc i1 [temp_10_cmp_26] 
              #                    regtab     a0:Freed { symidx: i_18_0, tracked: true } |     a1:Freed { symidx: j_18_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L18_0: 
.L18_0:
              #                     26   temp_0_value_from_ptr_20_0 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_0_value_from_ptr_20_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     27   mu sum_0_1:26 
              #                     29   temp_1_arithop_20_0 = Add i32 temp_0_value_from_ptr_20_0, 1_0 
              #                    occupy a3 with temp_0_value_from_ptr_20_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_1_arithop_20_0
    ADDW    a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     995  untrack temp_0_value_from_ptr_20_0 
              #                    occupy a3 with temp_0_value_from_ptr_20_0
              #                    release a3 with temp_0_value_from_ptr_20_0
              #                     30   store temp_1_arithop_20_0:i32 *sum_0:ptr->i32 
              #                    occupy a3 with *sum_0
              #                       load label sum as ptr to reg
    la      a3, sum
              #                    occupy reg a3 with *sum_0
              #                    occupy a5 with temp_1_arithop_20_0
    sw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     994  untrack temp_1_arithop_20_0 
              #                    occupy a5 with temp_1_arithop_20_0
              #                    release a5 with temp_1_arithop_20_0
              #                     31   sum_0_2 = chi sum_0_1:30 
              #                          jump label: L19_0 
    j       .L19_0
              #                    regtab     a0:Freed { symidx: i_18_0, tracked: true } |     a1:Freed { symidx: j_18_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L19_0: 
.L19_0:
              #                     55   temp_8_cmp_22_0 = icmp i32 Sge i_18_0, j_18_0 
              #                    occupy a0 with i_18_0
              #                    occupy a1 with j_18_0
              #                    occupy a2 with temp_8_cmp_22_0
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     996  untrack j_18_0 
              #                    occupy a1 with j_18_0
              #                    release a1 with j_18_0
              #                     63   br i1 temp_8_cmp_22_0, label branch_short_circuit_c_true_163, label branch_short_circuit_p_false_163 
              #                    occupy a2 with temp_8_cmp_22_0
              #                    free a2
              #                    occupy a2 with temp_8_cmp_22_0
    bnez    a2, .branch_short_circuit_c_true_163
              #                    free a2
    j       .branch_short_circuit_p_false_163
              #                    regtab     a0:Freed { symidx: i_18_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_22_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     58   label branch_short_circuit_c_true_163: 
.branch_short_circuit_c_true_163:
              #                     1016 untrack temp_10_cmp_26_0 
              #                     1015 untrack temp_6_ptr_of_*array_0_26 
              #                     1014 untrack temp_2_ptr_of_*array_0_20 
              #                     1013 untrack temp_4_ptr_of_*array_0_26 
              #                     1012 untrack temp_7_ele_of_*array_0_26_0 
              #                     1011 untrack i_18_0 
              #                    occupy a0 with i_18_0
              #                    release a0 with i_18_0
              #                     1010 untrack temp_5_ele_of_*array_0_26_0 
              #                     1009 untrack temp_9_cmp_22_0 
              #                     1008 untrack temp_3_arithop_26_0 
              #                     1006 untrack temp_5_ele_of_*array_0_26_0 
              #                     1005 untrack temp_2_ptr_of_*array_0_20 
              #                     1004 untrack temp_3_arithop_26_0 
              #                     1003 untrack i_18_0 
              #                     1002 untrack temp_9_cmp_22_0 
              #                     1001 untrack temp_4_ptr_of_*array_0_26 
              #                     1000 untrack temp_10_cmp_26_0 
              #                     999  untrack temp_6_ptr_of_*array_0_26 
              #                     998  untrack temp_7_ele_of_*array_0_26_0 
              #                     997  untrack temp_8_cmp_22_0 
              #                    occupy a2 with temp_8_cmp_22_0
              #                    release a2 with temp_8_cmp_22_0
              #                     694  mu array_0_1:53 
              #                     695  mu sum_0_2:53 
              #                     53   ret 0_0 
              #                    load from ra_f_0 in mem
    ld      ra,72(sp)
              #                    load from s0_f_0 in mem
    ld      s0,64(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_18_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_22_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     60   label branch_short_circuit_p_false_163: 
.branch_short_circuit_p_false_163:
              #                     1007 untrack temp_8_cmp_22_0 
              #                    occupy a2 with temp_8_cmp_22_0
              #                    release a2 with temp_8_cmp_22_0
              #                     57   temp_9_cmp_22_0 = icmp i32 Sge i_18_0, 20_0 
              #                    occupy a0 with i_18_0
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a2 with temp_9_cmp_22_0
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     62   br i1 temp_9_cmp_22_0, label branch_short_circuit_c_true_163, label branch_short_circuit_c_false_163 
              #                    occupy a2 with temp_9_cmp_22_0
              #                    free a2
              #                    occupy a2 with temp_9_cmp_22_0
              #                    store to temp_9_cmp_22_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_9_cmp_22_0
              #                    occupy a2 with temp_8_cmp_22_0
              #                    load from temp_8_cmp_22_0 in mem


    lb      a2,3(sp)
              #                    occupy a1 with temp_9_cmp_22_0
              #                    load from temp_9_cmp_22_0 in mem


    lb      a1,2(sp)
    bnez    a1, .branch_short_circuit_c_true_163
              #                    free a1
    j       .branch_short_circuit_c_false_163
              #                    regtab     a0:Freed { symidx: i_18_0, tracked: true } |     a1:Freed { symidx: temp_9_cmp_22_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_22_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     59   label branch_short_circuit_c_false_163: 
.branch_short_circuit_c_false_163:
              #                     1017 untrack temp_9_cmp_22_0 
              #                    occupy a1 with temp_9_cmp_22_0
              #                    release a1 with temp_9_cmp_22_0
              #                          jump label: L20_0 
    j       .L20_0
              #                    regtab     a0:Freed { symidx: i_18_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_22_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L20_0: 
.L20_0:
              #                     33   temp_2_ptr_of_*array_0_20 = GEP *array_0:ptr->i32 [Some(i_18_0)] 
              #                    occupy a1 with temp_2_ptr_of_*array_0_20
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_18_0
    mv      a3, a0
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *array_0
              #                       load label array as ptr to reg
    la      a4, array
              #                    occupy reg a4 with *array_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                     34   store 1_0:i32 temp_2_ptr_of_*array_0_20:ptr->i32 
              #                    occupy a1 with temp_2_ptr_of_*array_0_20
              #                    occupy a5 with 1_0
    li      a5, 1
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     1018 untrack temp_2_ptr_of_*array_0_20 
              #                    occupy a1 with temp_2_ptr_of_*array_0_20
              #                    release a1 with temp_2_ptr_of_*array_0_20
              #                     35   array_0_2 = chi array_0_1:34 
              #                          jump label: L21_0 
    j       .L21_0
              #                    regtab     a0:Freed { symidx: i_18_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_22_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L21_0: 
.L21_0:
              #                     65   temp_10_cmp_26_0 = icmp i32 Eq i_18_0, 0_0 
              #                    occupy a0 with i_18_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a3 with temp_10_cmp_26_0
    xor     a3,a0,a1
    seqz    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                     68   br i1 temp_10_cmp_26_0, label branch_true_27, label branch_false_27 
              #                    occupy a3 with temp_10_cmp_26_0
              #                    free a3
              #                    occupy a3 with temp_10_cmp_26_0
    bnez    a3, .branch_true_27
              #                    free a3
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: i_18_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_22_0, tracked: true } |     a3:Freed { symidx: temp_10_cmp_26_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     66   label branch_true_27: 
.branch_true_27:
              #                     1023 untrack temp_10_cmp_26_0 
              #                    occupy a3 with temp_10_cmp_26_0
              #                    release a3 with temp_10_cmp_26_0
              #                     1022 untrack temp_3_arithop_26_0 
              #                     1021 untrack temp_5_ele_of_*array_0_26_0 
              #                     1020 untrack temp_4_ptr_of_*array_0_26 
              #                     1019 untrack i_18_0 
              #                    occupy a0 with i_18_0
              #                    release a0 with i_18_0
              #                     47   temp_6_ptr_of_*array_0_26 = GEP *array_0:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_6_ptr_of_*array_0_26
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a3 with *array_0
              #                       load label array as ptr to reg
    la      a3, array
              #                    occupy reg a3 with *array_0
    add     a0,a0,a3
              #                    free a3
              #                    free a0
              #                     49   temp_7_ele_of_*array_0_26_0 = load temp_6_ptr_of_*array_0_26:ptr->i32 
              #                    occupy a0 with temp_6_ptr_of_*array_0_26
              #                    occupy a4 with temp_7_ele_of_*array_0_26_0
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     1027 untrack temp_6_ptr_of_*array_0_26 
              #                    occupy a0 with temp_6_ptr_of_*array_0_26
              #                    release a0 with temp_6_ptr_of_*array_0_26
              #                     50   mu array_0_2:49 
              #                     696  mu array_0_2:51 
              #                     697  mu sum_0_2:51 
              #                     51   ret temp_7_ele_of_*array_0_26_0 
              #                    load from ra_f_0 in mem
    ld      ra,72(sp)
              #                    load from s0_f_0 in mem
    ld      s0,64(sp)
              #                    occupy a4 with temp_7_ele_of_*array_0_26_0
              #                    store to temp_7_ele_of_*array_0_26_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_7_ele_of_*array_0_26_0
              #                    occupy a0 with temp_7_ele_of_*array_0_26_0
              #                    load from temp_7_ele_of_*array_0_26_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_18_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_22_0, tracked: true } |     a3:Freed { symidx: temp_10_cmp_26_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     67   label branch_false_27: 
.branch_false_27:
              #                     1026 untrack temp_10_cmp_26_0 
              #                    occupy a3 with temp_10_cmp_26_0
              #                    release a3 with temp_10_cmp_26_0
              #                     1025 untrack temp_6_ptr_of_*array_0_26 
              #                     1024 untrack temp_7_ele_of_*array_0_26_0 
              #                     38   temp_3_arithop_26_0 = Sub i32 i_18_0, 1_0 
              #                    occupy a0 with i_18_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_3_arithop_26_0
              #                    regtab:    a0:Occupied { symidx: i_18_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_8_cmp_22_0, tracked: true } |     a3:Occupied { symidx: temp_3_arithop_26_0, tracked: true, occupy_count: 1 } |  released_gpr_count:8,released_fpr_count:24


    subw    a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     1029 untrack i_18_0 
              #                    occupy a0 with i_18_0
              #                    release a0 with i_18_0
              #                     40   temp_4_ptr_of_*array_0_26 = GEP *array_0:Array:i32:[None] [Some(temp_3_arithop_26_0)] 
              #                    occupy a0 with temp_4_ptr_of_*array_0_26
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_3_arithop_26_0
    mv      a4, a3
              #                    free a3
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     1030 untrack temp_3_arithop_26_0 
              #                    occupy a3 with temp_3_arithop_26_0
              #                    release a3 with temp_3_arithop_26_0
              #                     42   temp_5_ele_of_*array_0_26_0 = load temp_4_ptr_of_*array_0_26:ptr->i32 
              #                    occupy a0 with temp_4_ptr_of_*array_0_26
              #                    occupy a3 with temp_5_ele_of_*array_0_26_0
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     1028 untrack temp_4_ptr_of_*array_0_26 
              #                    occupy a0 with temp_4_ptr_of_*array_0_26
              #                    release a0 with temp_4_ptr_of_*array_0_26
              #                     43   mu array_0_2:42 
              #                     698  mu array_0_2:44 
              #                     699  mu sum_0_2:44 
              #                     44   ret temp_5_ele_of_*array_0_26_0 
              #                    load from ra_f_0 in mem
    ld      ra,72(sp)
              #                    load from s0_f_0 in mem
    ld      s0,64(sp)
              #                    occupy a3 with temp_5_ele_of_*array_0_26_0
              #                    store to temp_5_ele_of_*array_0_26_0 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_5_ele_of_*array_0_26_0
              #                    occupy a0 with temp_5_ele_of_*array_0_26_0
              #                    load from temp_5_ele_of_*array_0_26_0 in mem


    lw      a0,20(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     22   Define g_0 "i_30_0,j_30_0," -> g_ret_0 
    .globl g
    .type g,@function
g:
              #                    mem layout:|ra_g:8 at 72|s0_g:8 at 64|i _s30 _i0:4 at 60|j _s30 _i0:4 at 56|temp_11_value_from_ptr _s32 _i0:4 at 52|temp_12_arithop _s32 _i0:4 at 48|temp_13_ptr_of_*array_0:8 at 40|temp_14_arithop _s38 _i0:4 at 36|none:4 at 32|temp_15_ptr_of_*array_0:8 at 24|temp_16_ele_of_*array_0 _s38 _i0:4 at 20|none:4 at 16|temp_17_ptr_of_*array_0:8 at 8|temp_18_ele_of_*array_0 _s38 _i0:4 at 4|temp_19_cmp _s34 _i0:1 at 3|temp_20_cmp _s34 _i0:1 at 2|temp_21_cmp _s38 _i0:1 at 1|none:1 at 0
    addi    sp,sp,-80
              #                    store to ra_g_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_g_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                     700  array_0_3 = chi array_0_0:22 
              #                     701  sum_0_3 = chi sum_0_0:22 
              #                     72   alloc i32 [temp_11_value_from_ptr_32] 
              #                     75   alloc i32 [temp_12_arithop_32] 
              #                     79   alloc ptr->i32 [temp_13_ptr_of_*array_0_32] 
              #                     84   alloc i32 [temp_14_arithop_38] 
              #                     86   alloc ptr->i32 [temp_15_ptr_of_*array_0_38] 
              #                     88   alloc i32 [temp_16_ele_of_*array_0_38] 
              #                     93   alloc ptr->i32 [temp_17_ptr_of_*array_0_38] 
              #                     95   alloc i32 [temp_18_ele_of_*array_0_38] 
              #                     101  alloc i1 [temp_19_cmp_34] 
              #                     103  alloc i1 [temp_20_cmp_34] 
              #                     111  alloc i1 [temp_21_cmp_38] 
              #                    regtab     a0:Freed { symidx: i_30_0, tracked: true } |     a1:Freed { symidx: j_30_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L14_0: 
.L14_0:
              #                     73   temp_11_value_from_ptr_32_0 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_11_value_from_ptr_32_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     74   mu sum_0_3:73 
              #                     76   temp_12_arithop_32_0 = Add i32 temp_11_value_from_ptr_32_0, 2_0 
              #                    occupy a3 with temp_11_value_from_ptr_32_0
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    occupy a5 with temp_12_arithop_32_0
    ADDW    a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     1032 untrack temp_11_value_from_ptr_32_0 
              #                    occupy a3 with temp_11_value_from_ptr_32_0
              #                    release a3 with temp_11_value_from_ptr_32_0
              #                     77   store temp_12_arithop_32_0:i32 *sum_0:ptr->i32 
              #                    occupy a3 with *sum_0
              #                       load label sum as ptr to reg
    la      a3, sum
              #                    occupy reg a3 with *sum_0
              #                    occupy a5 with temp_12_arithop_32_0
    sw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     1031 untrack temp_12_arithop_32_0 
              #                    occupy a5 with temp_12_arithop_32_0
              #                    release a5 with temp_12_arithop_32_0
              #                     78   sum_0_4 = chi sum_0_3:77 
              #                          jump label: L15_0 
    j       .L15_0
              #                    regtab     a0:Freed { symidx: i_30_0, tracked: true } |     a1:Freed { symidx: j_30_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L15_0: 
.L15_0:
              #                     102  temp_19_cmp_34_0 = icmp i32 Sge i_30_0, j_30_0 
              #                    occupy a0 with i_30_0
              #                    occupy a1 with j_30_0
              #                    occupy a2 with temp_19_cmp_34_0
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1033 untrack j_30_0 
              #                    occupy a1 with j_30_0
              #                    release a1 with j_30_0
              #                     110  br i1 temp_19_cmp_34_0, label branch_short_circuit_c_true_212, label branch_short_circuit_p_false_212 
              #                    occupy a2 with temp_19_cmp_34_0
              #                    free a2
              #                    occupy a2 with temp_19_cmp_34_0
    bnez    a2, .branch_short_circuit_c_true_212
              #                    free a2
    j       .branch_short_circuit_p_false_212
              #                    regtab     a0:Freed { symidx: i_30_0, tracked: true } |     a2:Freed { symidx: temp_19_cmp_34_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     105  label branch_short_circuit_c_true_212: 
.branch_short_circuit_c_true_212:
              #                     1053 untrack temp_21_cmp_38_0 
              #                     1052 untrack temp_17_ptr_of_*array_0_38 
              #                     1051 untrack temp_15_ptr_of_*array_0_38 
              #                     1050 untrack temp_16_ele_of_*array_0_38_0 
              #                     1049 untrack temp_20_cmp_34_0 
              #                     1048 untrack i_30_0 
              #                    occupy a0 with i_30_0
              #                    release a0 with i_30_0
              #                     1047 untrack temp_13_ptr_of_*array_0_32 
              #                     1046 untrack temp_14_arithop_38_0 
              #                     1045 untrack temp_18_ele_of_*array_0_38_0 
              #                     1043 untrack temp_13_ptr_of_*array_0_32 
              #                     1042 untrack temp_19_cmp_34_0 
              #                    occupy a2 with temp_19_cmp_34_0
              #                    release a2 with temp_19_cmp_34_0
              #                     1041 untrack temp_16_ele_of_*array_0_38_0 
              #                     1040 untrack temp_18_ele_of_*array_0_38_0 
              #                     1039 untrack temp_17_ptr_of_*array_0_38 
              #                     1038 untrack temp_14_arithop_38_0 
              #                     1037 untrack temp_21_cmp_38_0 
              #                     1036 untrack i_30_0 
              #                     1035 untrack temp_20_cmp_34_0 
              #                     1034 untrack temp_15_ptr_of_*array_0_38 
              #                     702  mu array_0_3:100 
              #                     703  mu sum_0_4:100 
              #                     100  ret 1_0 
              #                    load from ra_g_0 in mem
    ld      ra,72(sp)
              #                    load from s0_g_0 in mem
    ld      s0,64(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_30_0, tracked: true } |     a2:Freed { symidx: temp_19_cmp_34_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     107  label branch_short_circuit_p_false_212: 
.branch_short_circuit_p_false_212:
              #                     1044 untrack temp_19_cmp_34_0 
              #                    occupy a2 with temp_19_cmp_34_0
              #                    release a2 with temp_19_cmp_34_0
              #                     104  temp_20_cmp_34_0 = icmp i32 Sge i_30_0, 20_0 
              #                    occupy a0 with i_30_0
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a2 with temp_20_cmp_34_0
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     109  br i1 temp_20_cmp_34_0, label branch_short_circuit_c_true_212, label branch_short_circuit_c_false_212 
              #                    occupy a2 with temp_20_cmp_34_0
              #                    free a2
              #                    occupy a2 with temp_20_cmp_34_0
              #                    store to temp_20_cmp_34_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_20_cmp_34_0
              #                    occupy a2 with temp_19_cmp_34_0
              #                    load from temp_19_cmp_34_0 in mem


    lb      a2,3(sp)
              #                    occupy a1 with temp_20_cmp_34_0
              #                    load from temp_20_cmp_34_0 in mem


    lb      a1,2(sp)
    bnez    a1, .branch_short_circuit_c_true_212
              #                    free a1
    j       .branch_short_circuit_c_false_212
              #                    regtab     a0:Freed { symidx: i_30_0, tracked: true } |     a1:Freed { symidx: temp_20_cmp_34_0, tracked: true } |     a2:Freed { symidx: temp_19_cmp_34_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     106  label branch_short_circuit_c_false_212: 
.branch_short_circuit_c_false_212:
              #                     1054 untrack temp_20_cmp_34_0 
              #                    occupy a1 with temp_20_cmp_34_0
              #                    release a1 with temp_20_cmp_34_0
              #                          jump label: L16_0 
    j       .L16_0
              #                    regtab     a0:Freed { symidx: i_30_0, tracked: true } |     a2:Freed { symidx: temp_19_cmp_34_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L16_0: 
.L16_0:
              #                     80   temp_13_ptr_of_*array_0_32 = GEP *array_0:ptr->i32 [Some(i_30_0)] 
              #                    occupy a1 with temp_13_ptr_of_*array_0_32
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_30_0
    mv      a3, a0
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *array_0
              #                       load label array as ptr to reg
    la      a4, array
              #                    occupy reg a4 with *array_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                     81   store 0_0:i32 temp_13_ptr_of_*array_0_32:ptr->i32 
              #                    occupy a1 with temp_13_ptr_of_*array_0_32
              #                    occupy a5 with 0_0
    li      a5, 0
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     1055 untrack temp_13_ptr_of_*array_0_32 
              #                    occupy a1 with temp_13_ptr_of_*array_0_32
              #                    release a1 with temp_13_ptr_of_*array_0_32
              #                     82   array_0_4 = chi array_0_3:81 
              #                          jump label: L17_0 
    j       .L17_0
              #                    regtab     a0:Freed { symidx: i_30_0, tracked: true } |     a2:Freed { symidx: temp_19_cmp_34_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L17_0: 
.L17_0:
              #                     112  temp_21_cmp_38_0 = icmp i32 Eq i_30_0, 0_0 
              #                    occupy a0 with i_30_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a3 with temp_21_cmp_38_0
    xor     a3,a0,a1
    seqz    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                     115  br i1 temp_21_cmp_38_0, label branch_true_39, label branch_false_39 
              #                    occupy a3 with temp_21_cmp_38_0
              #                    free a3
              #                    occupy a3 with temp_21_cmp_38_0
    bnez    a3, .branch_true_39
              #                    free a3
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: i_30_0, tracked: true } |     a2:Freed { symidx: temp_19_cmp_34_0, tracked: true } |     a3:Freed { symidx: temp_21_cmp_38_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     113  label branch_true_39: 
.branch_true_39:
              #                     1060 untrack temp_16_ele_of_*array_0_38_0 
              #                     1059 untrack temp_21_cmp_38_0 
              #                    occupy a3 with temp_21_cmp_38_0
              #                    release a3 with temp_21_cmp_38_0
              #                     1058 untrack i_30_0 
              #                    occupy a0 with i_30_0
              #                    release a0 with i_30_0
              #                     1057 untrack temp_14_arithop_38_0 
              #                     1056 untrack temp_15_ptr_of_*array_0_38 
              #                     94   temp_17_ptr_of_*array_0_38 = GEP *array_0:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_17_ptr_of_*array_0_38
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a3 with *array_0
              #                       load label array as ptr to reg
    la      a3, array
              #                    occupy reg a3 with *array_0
    add     a0,a0,a3
              #                    free a3
              #                    free a0
              #                     96   temp_18_ele_of_*array_0_38_0 = load temp_17_ptr_of_*array_0_38:ptr->i32 
              #                    occupy a0 with temp_17_ptr_of_*array_0_38
              #                    occupy a4 with temp_18_ele_of_*array_0_38_0
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     1064 untrack temp_17_ptr_of_*array_0_38 
              #                    occupy a0 with temp_17_ptr_of_*array_0_38
              #                    release a0 with temp_17_ptr_of_*array_0_38
              #                     97   mu array_0_4:96 
              #                     704  mu array_0_4:98 
              #                     705  mu sum_0_4:98 
              #                     98   ret temp_18_ele_of_*array_0_38_0 
              #                    load from ra_g_0 in mem
    ld      ra,72(sp)
              #                    load from s0_g_0 in mem
    ld      s0,64(sp)
              #                    occupy a4 with temp_18_ele_of_*array_0_38_0
              #                    store to temp_18_ele_of_*array_0_38_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_18_ele_of_*array_0_38_0
              #                    occupy a0 with temp_18_ele_of_*array_0_38_0
              #                    load from temp_18_ele_of_*array_0_38_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_30_0, tracked: true } |     a2:Freed { symidx: temp_19_cmp_34_0, tracked: true } |     a3:Freed { symidx: temp_21_cmp_38_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     114  label branch_false_39: 
.branch_false_39:
              #                     1063 untrack temp_17_ptr_of_*array_0_38 
              #                     1062 untrack temp_18_ele_of_*array_0_38_0 
              #                     1061 untrack temp_21_cmp_38_0 
              #                    occupy a3 with temp_21_cmp_38_0
              #                    release a3 with temp_21_cmp_38_0
              #                     85   temp_14_arithop_38_0 = Sub i32 i_30_0, 1_0 
              #                    occupy a0 with i_30_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_14_arithop_38_0
              #                    regtab:    a0:Occupied { symidx: i_30_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_19_cmp_34_0, tracked: true } |     a3:Occupied { symidx: temp_14_arithop_38_0, tracked: true, occupy_count: 1 } |  released_gpr_count:8,released_fpr_count:24


    subw    a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     1067 untrack i_30_0 
              #                    occupy a0 with i_30_0
              #                    release a0 with i_30_0
              #                     87   temp_15_ptr_of_*array_0_38 = GEP *array_0:Array:i32:[None] [Some(temp_14_arithop_38_0)] 
              #                    occupy a0 with temp_15_ptr_of_*array_0_38
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_14_arithop_38_0
    mv      a4, a3
              #                    free a3
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     1066 untrack temp_14_arithop_38_0 
              #                    occupy a3 with temp_14_arithop_38_0
              #                    release a3 with temp_14_arithop_38_0
              #                     89   temp_16_ele_of_*array_0_38_0 = load temp_15_ptr_of_*array_0_38:ptr->i32 
              #                    occupy a0 with temp_15_ptr_of_*array_0_38
              #                    occupy a3 with temp_16_ele_of_*array_0_38_0
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     1065 untrack temp_15_ptr_of_*array_0_38 
              #                    occupy a0 with temp_15_ptr_of_*array_0_38
              #                    release a0 with temp_15_ptr_of_*array_0_38
              #                     90   mu array_0_4:89 
              #                     706  mu array_0_4:91 
              #                     707  mu sum_0_4:91 
              #                     91   ret temp_16_ele_of_*array_0_38_0 
              #                    load from ra_g_0 in mem
    ld      ra,72(sp)
              #                    load from s0_g_0 in mem
    ld      s0,64(sp)
              #                    occupy a3 with temp_16_ele_of_*array_0_38_0
              #                    store to temp_16_ele_of_*array_0_38_0 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_16_ele_of_*array_0_38_0
              #                    occupy a0 with temp_16_ele_of_*array_0_38_0
              #                    load from temp_16_ele_of_*array_0_38_0 in mem


    lw      a0,20(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     23   Define h_0 "i_42_0," -> h_ret_0 
    .globl h
    .type h,@function
h:
              #                    mem layout:|ra_h:8 at 40|s0_h:8 at 32|i _s42 _i0:4 at 28|temp_22_value_from_ptr _s44 _i0:4 at 24|temp_23_arithop _s44 _i0:4 at 20|none:4 at 16|temp_24_ptr_of_*array_0:8 at 8|temp_25_ele_of_*array_0 _s44 _i0:4 at 4|temp_26_cmp _s46 _i0:1 at 3|temp_27_cmp _s46 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-48
              #                    store to ra_h_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_h_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     708  sum_0_5 = chi sum_0_0:23 
              #                     119  alloc i32 [temp_22_value_from_ptr_44] 
              #                     122  alloc i32 [temp_23_arithop_44] 
              #                     127  alloc ptr->i32 [temp_24_ptr_of_*array_0_44] 
              #                     129  alloc i32 [temp_25_ele_of_*array_0_44] 
              #                     135  alloc i1 [temp_26_cmp_46] 
              #                     137  alloc i1 [temp_27_cmp_46] 
              #                    regtab     a0:Freed { symidx: i_42_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     120  temp_22_value_from_ptr_44_0 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a2 with temp_22_value_from_ptr_44_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     121  mu sum_0_5:120 
              #                     123  temp_23_arithop_44_0 = Add i32 temp_22_value_from_ptr_44_0, 3_0 
              #                    occupy a2 with temp_22_value_from_ptr_44_0
              #                    occupy a3 with 3_0
    li      a3, 3
              #                    occupy a4 with temp_23_arithop_44_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     1068 untrack temp_22_value_from_ptr_44_0 
              #                    occupy a2 with temp_22_value_from_ptr_44_0
              #                    release a2 with temp_22_value_from_ptr_44_0
              #                     124  store temp_23_arithop_44_0:i32 *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a4 with temp_23_arithop_44_0
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     1069 untrack temp_23_arithop_44_0 
              #                    occupy a4 with temp_23_arithop_44_0
              #                    release a4 with temp_23_arithop_44_0
              #                     125  sum_0_6 = chi sum_0_5:124 
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab     a0:Freed { symidx: i_42_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L12_0: 
.L12_0:
              #                     136  temp_26_cmp_46_0 = icmp i32 Slt i_42_0, 0_0 
              #                    occupy a0 with i_42_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_26_cmp_46_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     144  br i1 temp_26_cmp_46_0, label branch_short_circuit_c_true_249, label branch_short_circuit_p_false_249 
              #                    occupy a2 with temp_26_cmp_46_0
              #                    free a2
              #                    occupy a2 with temp_26_cmp_46_0
    bnez    a2, .branch_short_circuit_c_true_249
              #                    free a2
    j       .branch_short_circuit_p_false_249
              #                    regtab     a0:Freed { symidx: i_42_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_46_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     139  label branch_short_circuit_c_true_249: 
.branch_short_circuit_c_true_249:
              #                     1079 untrack i_42_0 
              #                    occupy a0 with i_42_0
              #                    release a0 with i_42_0
              #                     1078 untrack temp_24_ptr_of_*array_0_44 
              #                     1077 untrack temp_27_cmp_46_0 
              #                     1076 untrack temp_25_ele_of_*array_0_44_0 
              #                     1074 untrack temp_26_cmp_46_0 
              #                    occupy a2 with temp_26_cmp_46_0
              #                    release a2 with temp_26_cmp_46_0
              #                     1073 untrack temp_27_cmp_46_0 
              #                     1072 untrack i_42_0 
              #                     1071 untrack temp_25_ele_of_*array_0_44_0 
              #                     1070 untrack temp_24_ptr_of_*array_0_44 
              #                     709  mu sum_0_6:134 
              #                     134  ret 0_0 
              #                    load from ra_h_0 in mem
    ld      ra,40(sp)
              #                    load from s0_h_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_42_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_46_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     141  label branch_short_circuit_p_false_249: 
.branch_short_circuit_p_false_249:
              #                     1075 untrack temp_26_cmp_46_0 
              #                    occupy a2 with temp_26_cmp_46_0
              #                    release a2 with temp_26_cmp_46_0
              #                     138  temp_27_cmp_46_0 = icmp i32 Sge i_42_0, 20_0 
              #                    occupy a0 with i_42_0
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a2 with temp_27_cmp_46_0
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     143  br i1 temp_27_cmp_46_0, label branch_short_circuit_c_true_249, label branch_short_circuit_c_false_249 
              #                    occupy a2 with temp_27_cmp_46_0
              #                    free a2
              #                    occupy a2 with temp_27_cmp_46_0
              #                    store to temp_27_cmp_46_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_27_cmp_46_0
              #                    occupy a2 with temp_26_cmp_46_0
              #                    load from temp_26_cmp_46_0 in mem


    lb      a2,3(sp)
              #                    occupy a1 with temp_27_cmp_46_0
              #                    load from temp_27_cmp_46_0 in mem


    lb      a1,2(sp)
    bnez    a1, .branch_short_circuit_c_true_249
              #                    free a1
    j       .branch_short_circuit_c_false_249
              #                    regtab     a0:Freed { symidx: i_42_0, tracked: true } |     a1:Freed { symidx: temp_27_cmp_46_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_46_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     140  label branch_short_circuit_c_false_249: 
.branch_short_circuit_c_false_249:
              #                     1080 untrack temp_27_cmp_46_0 
              #                    occupy a1 with temp_27_cmp_46_0
              #                    release a1 with temp_27_cmp_46_0
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     a0:Freed { symidx: i_42_0, tracked: true } |     a2:Freed { symidx: temp_26_cmp_46_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L13_0: 
.L13_0:
              #                     128  temp_24_ptr_of_*array_0_44 = GEP *array_0:Array:i32:[None] [Some(i_42_0)] 
              #                    occupy a1 with temp_24_ptr_of_*array_0_44
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_42_0
    mv      a3, a0
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *array_0
              #                       load label array as ptr to reg
    la      a4, array
              #                    occupy reg a4 with *array_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                     1082 untrack i_42_0 
              #                    occupy a0 with i_42_0
              #                    release a0 with i_42_0
              #                     130  temp_25_ele_of_*array_0_44_0 = load temp_24_ptr_of_*array_0_44:ptr->i32 
              #                    occupy a1 with temp_24_ptr_of_*array_0_44
              #                    occupy a0 with temp_25_ele_of_*array_0_44_0
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     1081 untrack temp_24_ptr_of_*array_0_44 
              #                    occupy a1 with temp_24_ptr_of_*array_0_44
              #                    release a1 with temp_24_ptr_of_*array_0_44
              #                     131  mu array_0_0:130 
              #                     710  mu sum_0_6:132 
              #                     132  ret temp_25_ele_of_*array_0_44_0 
              #                    load from ra_h_0 in mem
    ld      ra,40(sp)
              #                    load from s0_h_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with temp_25_ele_of_*array_0_44_0
              #                    store to temp_25_ele_of_*array_0_44_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_25_ele_of_*array_0_44_0
              #                    occupy a0 with temp_25_ele_of_*array_0_44_0
              #                    load from temp_25_ele_of_*array_0_44_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     24   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 464|s0_main:8 at 456|i _s51 _i1:4 at 452|i _s51 _i4:4 at 448|i _s51 _i7:4 at 444|ans _s51 _i0:4 at 440|ans _s51 _i3:4 at 436|ans _s51 _i6:4 at 432|ans _s51 _i9:4 at 428|ans _s51 _i12:4 at 424|temp_28_value_from_ptr _s51 _i0:4 at 420|temp_29_arithop _s51 _i0:4 at 416|temp_30_value_from_ptr _s51 _i0:4 at 412|temp_31_arithop _s51 _i0:4 at 408|temp_32_value_from_ptr _s51 _i0:4 at 404|temp_33_arithop _s51 _i0:4 at 400|temp_34_value_from_ptr _s51 _i0:4 at 396|temp_35_arithop _s51 _i0:4 at 392|temp_36_arithop _s69 _i0:4 at 388|temp_37_arithop _s63 _i0:4 at 384|temp_38_arithop _s55 _i0:4 at 380|temp_39_cmp _s53 _i0:1 at 379|temp_40_cmp _s61 _i0:1 at 378|temp_41_cmp _s69 _i0:1 at 377|none:1 at 376|temp_42_arithop _s69 _i0:4 at 372|temp_43_ret_of_f _s69 _i0:4 at 368|temp_44_i32_to_bool _s69 _i0:1 at 367|none:3 at 364|temp_45_ret_of_h _s74 _i0:4 at 360|temp_46_ret_of_h _s74 _i0:4 at 356|temp_47_i32_to_bool _s74 _i0:1 at 355|temp_48_i32_to_bool _s74 _i0:1 at 354|none:2 at 352|temp_49_ret_of_h _s74 _i0:4 at 348|temp_50_booltrans _s74 _i0:1 at 347|temp_51_logicnot _s74 _i0:1 at 346|none:2 at 344|temp_52_ret_of_h _s74 _i0:4 at 340|temp_53_i32_to_bool _s74 _i0:1 at 339|none:3 at 336|temp_54_ret_of_h _s79 _i0:4 at 332|temp_55_booltrans _s79 _i0:1 at 331|temp_56_logicnot _s79 _i0:1 at 330|none:2 at 328|temp_57_ret_of_h _s79 _i0:4 at 324|temp_58_ret_of_h _s79 _i0:4 at 320|temp_59_booltrans _s79 _i0:1 at 319|temp_60_logicnot _s79 _i0:1 at 318|none:2 at 316|temp_61_ret_of_h _s79 _i0:4 at 312|temp_62_i32_to_bool _s79 _i0:1 at 311|temp_63_i32_to_bool _s79 _i0:1 at 310|none:2 at 308|temp_64_ret_of_h _s79 _i0:4 at 304|temp_65_booltrans _s79 _i0:1 at 303|temp_66_logicnot _s79 _i0:1 at 302|none:2 at 300|temp_67_ret_of_h _s84 _i0:4 at 296|temp_68_ret_of_h _s84 _i0:4 at 292|temp_69_booltrans _s84 _i0:1 at 291|temp_70_logicnot _s84 _i0:1 at 290|temp_71_i32_to_bool _s84 _i0:1 at 289|none:1 at 288|temp_72_ret_of_h _s84 _i0:4 at 284|temp_73_booltrans _s84 _i0:1 at 283|temp_74_logicnot _s84 _i0:1 at 282|none:2 at 280|temp_75_ret_of_h _s84 _i0:4 at 276|temp_76_booltrans _s84 _i0:1 at 275|temp_77_logicnot _s84 _i0:1 at 274|none:2 at 272|temp_78_ret_of_h _s84 _i0:4 at 268|temp_79_booltrans _s84 _i0:1 at 267|temp_80_logicnot _s84 _i0:1 at 266|none:2 at 264|temp_81_ret_of_h _s84 _i0:4 at 260|temp_82_ret_of_h _s84 _i0:4 at 256|temp_83_i32_to_bool _s84 _i0:1 at 255|temp_84_i32_to_bool _s84 _i0:1 at 254|none:2 at 252|temp_85_ret_of_h _s89 _i0:4 at 248|temp_86_ret_of_h _s89 _i0:4 at 244|temp_87_ret_of_h _s89 _i0:4 at 240|temp_88_booltrans _s89 _i0:1 at 239|temp_89_logicnot _s89 _i0:1 at 238|none:2 at 236|temp_90_ret_of_h _s89 _i0:4 at 232|temp_91_booltrans _s89 _i0:1 at 231|temp_92_logicnot _s89 _i0:1 at 230|temp_93_i32_to_bool _s89 _i0:1 at 229|temp_94_i32_to_bool _s89 _i0:1 at 228|temp_95_ret_of_h _s89 _i0:4 at 224|temp_96_ret_of_h _s89 _i0:4 at 220|temp_97_ret_of_h _s89 _i0:4 at 216|temp_98_booltrans _s89 _i0:1 at 215|temp_99_logicnot _s89 _i0:1 at 214|temp_100_i32_to_bool _s89 _i0:1 at 213|none:1 at 212|temp_101_ret_of_h _s89 _i0:4 at 208|temp_102_i32_to_bool _s89 _i0:1 at 207|temp_103_i32_to_bool _s89 _i0:1 at 206|none:2 at 204|temp_104_ret_of_g _s64 _i0:4 at 200|temp_105_ret_of_g _s64 _i0:4 at 196|temp_106_ret_of_g _s64 _i0:4 at 192|temp_107_ret_of_g _s64 _i0:4 at 188|temp_108_ret_of_g _s64 _i0:4 at 184|temp_109_ret_of_g _s64 _i0:4 at 180|temp_110_ret_of_g _s64 _i0:4 at 176|temp_111_ret_of_g _s64 _i0:4 at 172|temp_112_ret_of_g _s64 _i0:4 at 168|temp_113_ret_of_g _s64 _i0:4 at 164|temp_114_ret_of_g _s64 _i0:4 at 160|temp_115_ret_of_g _s64 _i0:4 at 156|temp_116_ret_of_g _s64 _i0:4 at 152|temp_117_ret_of_g _s64 _i0:4 at 148|temp_118_ret_of_g _s64 _i0:4 at 144|temp_119_ret_of_g _s64 _i0:4 at 140|temp_120_ret_of_g _s64 _i0:4 at 136|temp_121_ret_of_g _s64 _i0:4 at 132|temp_122_ret_of_g _s64 _i0:4 at 128|temp_123_ret_of_g _s64 _i0:4 at 124|temp_124_i32_to_bool _s64 _i0:1 at 123|temp_125_i32_to_bool _s64 _i0:1 at 122|temp_126_i32_to_bool _s64 _i0:1 at 121|temp_127_i32_to_bool _s64 _i0:1 at 120|temp_128_i32_to_bool _s64 _i0:1 at 119|temp_129_i32_to_bool _s64 _i0:1 at 118|temp_130_i32_to_bool _s64 _i0:1 at 117|temp_131_i32_to_bool _s64 _i0:1 at 116|temp_132_i32_to_bool _s64 _i0:1 at 115|temp_133_i32_to_bool _s64 _i0:1 at 114|temp_134_i32_to_bool _s64 _i0:1 at 113|temp_135_i32_to_bool _s64 _i0:1 at 112|temp_136_i32_to_bool _s64 _i0:1 at 111|temp_137_i32_to_bool _s64 _i0:1 at 110|temp_138_i32_to_bool _s64 _i0:1 at 109|temp_139_i32_to_bool _s64 _i0:1 at 108|temp_140_i32_to_bool _s64 _i0:1 at 107|temp_141_i32_to_bool _s64 _i0:1 at 106|temp_142_i32_to_bool _s64 _i0:1 at 105|temp_143_i32_to_bool _s64 _i0:1 at 104|temp_144_ret_of_f _s56 _i0:4 at 100|temp_145_ret_of_f _s56 _i0:4 at 96|temp_146_ret_of_f _s56 _i0:4 at 92|temp_147_ret_of_f _s56 _i0:4 at 88|temp_148_ret_of_f _s56 _i0:4 at 84|temp_149_ret_of_f _s56 _i0:4 at 80|temp_150_ret_of_f _s56 _i0:4 at 76|temp_151_ret_of_f _s56 _i0:4 at 72|temp_152_ret_of_f _s56 _i0:4 at 68|temp_153_ret_of_f _s56 _i0:4 at 64|temp_154_ret_of_f _s56 _i0:4 at 60|temp_155_ret_of_f _s56 _i0:4 at 56|temp_156_ret_of_f _s56 _i0:4 at 52|temp_157_ret_of_f _s56 _i0:4 at 48|temp_158_ret_of_f _s56 _i0:4 at 44|temp_159_ret_of_f _s56 _i0:4 at 40|temp_160_ret_of_f _s56 _i0:4 at 36|temp_161_ret_of_f _s56 _i0:4 at 32|temp_162_ret_of_f _s56 _i0:4 at 28|temp_163_ret_of_f _s56 _i0:4 at 24|temp_164_i32_to_bool _s56 _i0:1 at 23|temp_165_i32_to_bool _s56 _i0:1 at 22|temp_166_i32_to_bool _s56 _i0:1 at 21|temp_167_i32_to_bool _s56 _i0:1 at 20|temp_168_i32_to_bool _s56 _i0:1 at 19|temp_169_i32_to_bool _s56 _i0:1 at 18|temp_170_i32_to_bool _s56 _i0:1 at 17|temp_171_i32_to_bool _s56 _i0:1 at 16|temp_172_i32_to_bool _s56 _i0:1 at 15|temp_173_i32_to_bool _s56 _i0:1 at 14|temp_174_i32_to_bool _s56 _i0:1 at 13|temp_175_i32_to_bool _s56 _i0:1 at 12|temp_176_i32_to_bool _s56 _i0:1 at 11|temp_177_i32_to_bool _s56 _i0:1 at 10|temp_178_i32_to_bool _s56 _i0:1 at 9|temp_179_i32_to_bool _s56 _i0:1 at 8|temp_180_i32_to_bool _s56 _i0:1 at 7|temp_181_i32_to_bool _s56 _i0:1 at 6|temp_182_i32_to_bool _s56 _i0:1 at 5|temp_183_i32_to_bool _s56 _i0:1 at 4|none:4 at 0
    addi    sp,sp,-472
              #                    store to ra_main_0 in mem offset legal
    sd      ra,464(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,456(sp)
    addi    s0,sp,472
              #                     711  array_0_5 = chi array_0_0:24 
              #                     712  sum_0_7 = chi sum_0_0:24 
              #                     148  alloc i32 [i_51] 
              #                     151  alloc i32 [ans_51] 
              #                     154  alloc i32 [temp_28_value_from_ptr_51] 
              #                     157  alloc i32 [temp_29_arithop_51] 
              #                     160  alloc i32 [temp_30_value_from_ptr_51] 
              #                     163  alloc i32 [temp_31_arithop_51] 
              #                     166  alloc i32 [temp_32_value_from_ptr_51] 
              #                     169  alloc i32 [temp_33_arithop_51] 
              #                     172  alloc i32 [temp_34_value_from_ptr_51] 
              #                     175  alloc i32 [temp_35_arithop_51] 
              #                     184  alloc i32 [temp_36_arithop_69] 
              #                     187  alloc i32 [temp_37_arithop_63] 
              #                     190  alloc i32 [temp_38_arithop_55] 
              #                     193  alloc i1 [temp_39_cmp_53] 
              #                     199  alloc i1 [temp_40_cmp_61] 
              #                     205  alloc i1 [temp_41_cmp_69] 
              #                     207  alloc i32 [temp_42_arithop_69] 
              #                     209  alloc i32 [temp_43_ret_of_f_69] 
              #                     211  alloc i1 [temp_44_i32_to_bool_69] 
              #                     220  alloc i32 [temp_45_ret_of_h_74] 
              #                     222  alloc i32 [temp_46_ret_of_h_74] 
              #                     224  alloc i1 [temp_47_i32_to_bool_74] 
              #                     226  alloc i1 [temp_48_i32_to_bool_74] 
              #                     233  alloc i32 [temp_49_ret_of_h_74] 
              #                     235  alloc i1 [temp_50_booltrans_74] 
              #                     237  alloc i1 [temp_51_logicnot_74] 
              #                     239  alloc i32 [temp_52_ret_of_h_74] 
              #                     241  alloc i1 [temp_53_i32_to_bool_74] 
              #                     250  alloc i32 [temp_54_ret_of_h_79] 
              #                     252  alloc i1 [temp_55_booltrans_79] 
              #                     254  alloc i1 [temp_56_logicnot_79] 
              #                     256  alloc i32 [temp_57_ret_of_h_79] 
              #                     258  alloc i32 [temp_58_ret_of_h_79] 
              #                     260  alloc i1 [temp_59_booltrans_79] 
              #                     262  alloc i1 [temp_60_logicnot_79] 
              #                     264  alloc i32 [temp_61_ret_of_h_79] 
              #                     266  alloc i1 [temp_62_i32_to_bool_79] 
              #                     273  alloc i1 [temp_63_i32_to_bool_79] 
              #                     278  alloc i32 [temp_64_ret_of_h_79] 
              #                     280  alloc i1 [temp_65_booltrans_79] 
              #                     282  alloc i1 [temp_66_logicnot_79] 
              #                     291  alloc i32 [temp_67_ret_of_h_84] 
              #                     293  alloc i32 [temp_68_ret_of_h_84] 
              #                     295  alloc i1 [temp_69_booltrans_84] 
              #                     297  alloc i1 [temp_70_logicnot_84] 
              #                     299  alloc i1 [temp_71_i32_to_bool_84] 
              #                     306  alloc i32 [temp_72_ret_of_h_84] 
              #                     308  alloc i1 [temp_73_booltrans_84] 
              #                     310  alloc i1 [temp_74_logicnot_84] 
              #                     312  alloc i32 [temp_75_ret_of_h_84] 
              #                     314  alloc i1 [temp_76_booltrans_84] 
              #                     316  alloc i1 [temp_77_logicnot_84] 
              #                     318  alloc i32 [temp_78_ret_of_h_84] 
              #                     320  alloc i1 [temp_79_booltrans_84] 
              #                     322  alloc i1 [temp_80_logicnot_84] 
              #                     324  alloc i32 [temp_81_ret_of_h_84] 
              #                     326  alloc i32 [temp_82_ret_of_h_84] 
              #                     328  alloc i1 [temp_83_i32_to_bool_84] 
              #                     330  alloc i1 [temp_84_i32_to_bool_84] 
              #                     348  alloc i32 [temp_85_ret_of_h_89] 
              #                     350  alloc i32 [temp_86_ret_of_h_89] 
              #                     352  alloc i32 [temp_87_ret_of_h_89] 
              #                     354  alloc i1 [temp_88_booltrans_89] 
              #                     356  alloc i1 [temp_89_logicnot_89] 
              #                     358  alloc i32 [temp_90_ret_of_h_89] 
              #                     360  alloc i1 [temp_91_booltrans_89] 
              #                     362  alloc i1 [temp_92_logicnot_89] 
              #                     369  alloc i1 [temp_93_i32_to_bool_89] 
              #                     374  alloc i1 [temp_94_i32_to_bool_89] 
              #                     379  alloc i32 [temp_95_ret_of_h_89] 
              #                     381  alloc i32 [temp_96_ret_of_h_89] 
              #                     383  alloc i32 [temp_97_ret_of_h_89] 
              #                     385  alloc i1 [temp_98_booltrans_89] 
              #                     387  alloc i1 [temp_99_logicnot_89] 
              #                     389  alloc i1 [temp_100_i32_to_bool_89] 
              #                     395  alloc i32 [temp_101_ret_of_h_89] 
              #                     397  alloc i1 [temp_102_i32_to_bool_89] 
              #                     402  alloc i1 [temp_103_i32_to_bool_89] 
              #                     412  alloc i32 [temp_104_ret_of_g_64] 
              #                     414  alloc i32 [temp_105_ret_of_g_64] 
              #                     416  alloc i32 [temp_106_ret_of_g_64] 
              #                     418  alloc i32 [temp_107_ret_of_g_64] 
              #                     420  alloc i32 [temp_108_ret_of_g_64] 
              #                     422  alloc i32 [temp_109_ret_of_g_64] 
              #                     424  alloc i32 [temp_110_ret_of_g_64] 
              #                     426  alloc i32 [temp_111_ret_of_g_64] 
              #                     428  alloc i32 [temp_112_ret_of_g_64] 
              #                     430  alloc i32 [temp_113_ret_of_g_64] 
              #                     432  alloc i32 [temp_114_ret_of_g_64] 
              #                     434  alloc i32 [temp_115_ret_of_g_64] 
              #                     436  alloc i32 [temp_116_ret_of_g_64] 
              #                     438  alloc i32 [temp_117_ret_of_g_64] 
              #                     440  alloc i32 [temp_118_ret_of_g_64] 
              #                     442  alloc i32 [temp_119_ret_of_g_64] 
              #                     444  alloc i32 [temp_120_ret_of_g_64] 
              #                     446  alloc i32 [temp_121_ret_of_g_64] 
              #                     448  alloc i32 [temp_122_ret_of_g_64] 
              #                     450  alloc i32 [temp_123_ret_of_g_64] 
              #                     452  alloc i1 [temp_124_i32_to_bool_64] 
              #                     454  alloc i1 [temp_125_i32_to_bool_64] 
              #                     461  alloc i1 [temp_126_i32_to_bool_64] 
              #                     466  alloc i1 [temp_127_i32_to_bool_64] 
              #                     471  alloc i1 [temp_128_i32_to_bool_64] 
              #                     476  alloc i1 [temp_129_i32_to_bool_64] 
              #                     481  alloc i1 [temp_130_i32_to_bool_64] 
              #                     486  alloc i1 [temp_131_i32_to_bool_64] 
              #                     491  alloc i1 [temp_132_i32_to_bool_64] 
              #                     496  alloc i1 [temp_133_i32_to_bool_64] 
              #                     501  alloc i1 [temp_134_i32_to_bool_64] 
              #                     506  alloc i1 [temp_135_i32_to_bool_64] 
              #                     511  alloc i1 [temp_136_i32_to_bool_64] 
              #                     516  alloc i1 [temp_137_i32_to_bool_64] 
              #                     521  alloc i1 [temp_138_i32_to_bool_64] 
              #                     526  alloc i1 [temp_139_i32_to_bool_64] 
              #                     531  alloc i1 [temp_140_i32_to_bool_64] 
              #                     536  alloc i1 [temp_141_i32_to_bool_64] 
              #                     541  alloc i1 [temp_142_i32_to_bool_64] 
              #                     546  alloc i1 [temp_143_i32_to_bool_64] 
              #                     552  alloc i32 [temp_144_ret_of_f_56] 
              #                     554  alloc i32 [temp_145_ret_of_f_56] 
              #                     556  alloc i32 [temp_146_ret_of_f_56] 
              #                     558  alloc i32 [temp_147_ret_of_f_56] 
              #                     560  alloc i32 [temp_148_ret_of_f_56] 
              #                     562  alloc i32 [temp_149_ret_of_f_56] 
              #                     564  alloc i32 [temp_150_ret_of_f_56] 
              #                     566  alloc i32 [temp_151_ret_of_f_56] 
              #                     568  alloc i32 [temp_152_ret_of_f_56] 
              #                     570  alloc i32 [temp_153_ret_of_f_56] 
              #                     572  alloc i32 [temp_154_ret_of_f_56] 
              #                     574  alloc i32 [temp_155_ret_of_f_56] 
              #                     576  alloc i32 [temp_156_ret_of_f_56] 
              #                     578  alloc i32 [temp_157_ret_of_f_56] 
              #                     580  alloc i32 [temp_158_ret_of_f_56] 
              #                     582  alloc i32 [temp_159_ret_of_f_56] 
              #                     584  alloc i32 [temp_160_ret_of_f_56] 
              #                     586  alloc i32 [temp_161_ret_of_f_56] 
              #                     588  alloc i32 [temp_162_ret_of_f_56] 
              #                     590  alloc i32 [temp_163_ret_of_f_56] 
              #                     592  alloc i1 [temp_164_i32_to_bool_56] 
              #                     594  alloc i1 [temp_165_i32_to_bool_56] 
              #                     601  alloc i1 [temp_166_i32_to_bool_56] 
              #                     606  alloc i1 [temp_167_i32_to_bool_56] 
              #                     611  alloc i1 [temp_168_i32_to_bool_56] 
              #                     616  alloc i1 [temp_169_i32_to_bool_56] 
              #                     621  alloc i1 [temp_170_i32_to_bool_56] 
              #                     626  alloc i1 [temp_171_i32_to_bool_56] 
              #                     631  alloc i1 [temp_172_i32_to_bool_56] 
              #                     636  alloc i1 [temp_173_i32_to_bool_56] 
              #                     641  alloc i1 [temp_174_i32_to_bool_56] 
              #                     646  alloc i1 [temp_175_i32_to_bool_56] 
              #                     651  alloc i1 [temp_176_i32_to_bool_56] 
              #                     656  alloc i1 [temp_177_i32_to_bool_56] 
              #                     661  alloc i1 [temp_178_i32_to_bool_56] 
              #                     666  alloc i1 [temp_179_i32_to_bool_56] 
              #                     671  alloc i1 [temp_180_i32_to_bool_56] 
              #                     676  alloc i1 [temp_181_i32_to_bool_56] 
              #                     681  alloc i1 [temp_182_i32_to_bool_56] 
              #                     686  alloc i1 [temp_183_i32_to_bool_56] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     147  (nop) 
              #                     986  i_51_1 = i32 0_0 
              #                    occupy a0 with i_51_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_54 
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: i_51_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     195  label while.head_54: 
.while.head_54:
              #                     194  temp_39_cmp_53_0 = icmp i32 Slt i_51_1, 20_0 
              #                    occupy a0 with i_51_1
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a2 with temp_39_cmp_53_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     198  br i1 temp_39_cmp_53_0, label while.body_54, label while.exit_54 
              #                    occupy a2 with temp_39_cmp_53_0
              #                    free a2
              #                    occupy a2 with temp_39_cmp_53_0
    bnez    a2, .while.body_54
              #                    free a2
    j       .while.exit_54
              #                    regtab     a0:Freed { symidx: i_51_1, tracked: true } |     a2:Freed { symidx: temp_39_cmp_53_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     196  label while.body_54: 
.while.body_54:
              #                     553  temp_144_ret_of_f_56_0 =  Call i32 f_0(0_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_51_1
              #                    store to i_51_1 in mem offset legal
    sw      a0,452(sp)
              #                    release a0 with i_51_1
              #                    occupy a2 with temp_39_cmp_53_0
              #                    store to temp_39_cmp_53_0 in mem offset legal
    sb      a2,379(sp)
              #                    release a2 with temp_39_cmp_53_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     713  mu array_0_6:553 
              #                     714  mu sum_0_8:553 
              #                     715  array_0_7 = chi array_0_6:553 
              #                     716  sum_0_9 = chi sum_0_8:553 
              #                     687  temp_183_i32_to_bool_56_0 = icmp i32 Ne temp_144_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     691  br i1 temp_183_i32_to_bool_56_0, label branch_short_circuit_p_true_620, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_183_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_620
              #                    free a2
    j       .branch_short_circuit_c_false_728
              #                    regtab     a0:Freed { symidx: temp_144_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_183_i32_to_bool_56_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     688  label branch_short_circuit_p_true_620: 
.branch_short_circuit_p_true_620:
              #                     555  temp_145_ret_of_f_56_0 =  Call i32 f_0(1_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    store to temp_144_ret_of_f_56_0 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_144_ret_of_f_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    store to temp_183_i32_to_bool_56_0 in mem offset legal
    sb      a2,4(sp)
              #                    release a2 with temp_183_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     717  mu array_0_7:555 
              #                     718  mu sum_0_9:555 
              #                     719  array_0_9 = chi array_0_7:555 
              #                     720  sum_0_11 = chi sum_0_9:555 
              #                     682  temp_182_i32_to_bool_56_0 = icmp i32 Ne temp_145_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_145_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_182_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     690  br i1 temp_182_i32_to_bool_56_0, label branch_short_circuit_p_true_626, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_182_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_182_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_626
              #                    free a2
              #                    occupy a0 with temp_145_ret_of_f_56_0
              #                    store to temp_145_ret_of_f_56_0 in mem offset legal
    sw      a0,96(sp)
              #                    release a0 with temp_145_ret_of_f_56_0
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_182_i32_to_bool_56_0
              #                    store to temp_182_i32_to_bool_56_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_182_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a0:Freed { symidx: temp_145_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_182_i32_to_bool_56_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     683  label branch_short_circuit_p_true_626: 
.branch_short_circuit_p_true_626:
              #                     557  temp_146_ret_of_f_56_0 =  Call i32 f_0(2_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_145_ret_of_f_56_0
              #                    store to temp_145_ret_of_f_56_0 in mem offset legal
    sw      a0,96(sp)
              #                    release a0 with temp_145_ret_of_f_56_0
              #                    occupy a2 with temp_182_i32_to_bool_56_0
              #                    store to temp_182_i32_to_bool_56_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_182_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     721  mu array_0_9:557 
              #                     722  mu sum_0_11:557 
              #                     723  array_0_10 = chi array_0_9:557 
              #                     724  sum_0_12 = chi sum_0_11:557 
              #                     677  temp_181_i32_to_bool_56_0 = icmp i32 Ne temp_146_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_146_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_181_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     685  br i1 temp_181_i32_to_bool_56_0, label branch_short_circuit_p_true_632, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_181_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_181_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_632
              #                    free a2
              #                    occupy a0 with temp_146_ret_of_f_56_0
              #                    store to temp_146_ret_of_f_56_0 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_146_ret_of_f_56_0
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_181_i32_to_bool_56_0
              #                    store to temp_181_i32_to_bool_56_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_181_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a0:Freed { symidx: temp_146_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_181_i32_to_bool_56_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     678  label branch_short_circuit_p_true_632: 
.branch_short_circuit_p_true_632:
              #                     559  temp_147_ret_of_f_56_0 =  Call i32 f_0(3_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_146_ret_of_f_56_0
              #                    store to temp_146_ret_of_f_56_0 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_146_ret_of_f_56_0
              #                    occupy a2 with temp_181_i32_to_bool_56_0
              #                    store to temp_181_i32_to_bool_56_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_181_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     725  mu array_0_10:559 
              #                     726  mu sum_0_12:559 
              #                     727  array_0_11 = chi array_0_10:559 
              #                     728  sum_0_13 = chi sum_0_12:559 
              #                     672  temp_180_i32_to_bool_56_0 = icmp i32 Ne temp_147_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_147_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_180_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     680  br i1 temp_180_i32_to_bool_56_0, label branch_short_circuit_p_true_638, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_180_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_180_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_638
              #                    free a2
              #                    occupy a0 with temp_147_ret_of_f_56_0
              #                    store to temp_147_ret_of_f_56_0 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_147_ret_of_f_56_0
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_180_i32_to_bool_56_0
              #                    store to temp_180_i32_to_bool_56_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_180_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a0:Freed { symidx: temp_147_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_180_i32_to_bool_56_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     673  label branch_short_circuit_p_true_638: 
.branch_short_circuit_p_true_638:
              #                     561  temp_148_ret_of_f_56_0 =  Call i32 f_0(4_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_147_ret_of_f_56_0
              #                    store to temp_147_ret_of_f_56_0 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_147_ret_of_f_56_0
              #                    occupy a2 with temp_180_i32_to_bool_56_0
              #                    store to temp_180_i32_to_bool_56_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_180_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     729  mu array_0_11:561 
              #                     730  mu sum_0_13:561 
              #                     731  array_0_12 = chi array_0_11:561 
              #                     732  sum_0_14 = chi sum_0_13:561 
              #                     667  temp_179_i32_to_bool_56_0 = icmp i32 Ne temp_148_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_148_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_179_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     675  br i1 temp_179_i32_to_bool_56_0, label branch_short_circuit_p_true_644, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_179_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_179_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_644
              #                    free a2
              #                    occupy a0 with temp_148_ret_of_f_56_0
              #                    store to temp_148_ret_of_f_56_0 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_148_ret_of_f_56_0
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_179_i32_to_bool_56_0
              #                    store to temp_179_i32_to_bool_56_0 in mem offset legal
    sb      a2,8(sp)
              #                    release a2 with temp_179_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a0:Freed { symidx: temp_148_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_179_i32_to_bool_56_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     668  label branch_short_circuit_p_true_644: 
.branch_short_circuit_p_true_644:
              #                     563  temp_149_ret_of_f_56_0 =  Call i32 f_0(5_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_148_ret_of_f_56_0
              #                    store to temp_148_ret_of_f_56_0 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_148_ret_of_f_56_0
              #                    occupy a2 with temp_179_i32_to_bool_56_0
              #                    store to temp_179_i32_to_bool_56_0 in mem offset legal
    sb      a2,8(sp)
              #                    release a2 with temp_179_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     733  mu array_0_12:563 
              #                     734  mu sum_0_14:563 
              #                     735  array_0_13 = chi array_0_12:563 
              #                     736  sum_0_15 = chi sum_0_14:563 
              #                     662  temp_178_i32_to_bool_56_0 = icmp i32 Ne temp_149_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_149_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_178_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     670  br i1 temp_178_i32_to_bool_56_0, label branch_short_circuit_p_true_650, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_178_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_178_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_650
              #                    free a2
              #                    occupy a0 with temp_149_ret_of_f_56_0
              #                    store to temp_149_ret_of_f_56_0 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with temp_149_ret_of_f_56_0
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_178_i32_to_bool_56_0
              #                    store to temp_178_i32_to_bool_56_0 in mem offset legal
    sb      a2,9(sp)
              #                    release a2 with temp_178_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_178_i32_to_bool_56_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     663  label branch_short_circuit_p_true_650: 
.branch_short_circuit_p_true_650:
              #                     565  temp_150_ret_of_f_56_0 =  Call i32 f_0(6_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_149_ret_of_f_56_0
              #                    store to temp_149_ret_of_f_56_0 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with temp_149_ret_of_f_56_0
              #                    occupy a2 with temp_178_i32_to_bool_56_0
              #                    store to temp_178_i32_to_bool_56_0 in mem offset legal
    sb      a2,9(sp)
              #                    release a2 with temp_178_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     737  mu array_0_13:565 
              #                     738  mu sum_0_15:565 
              #                     739  array_0_14 = chi array_0_13:565 
              #                     740  sum_0_16 = chi sum_0_15:565 
              #                     657  temp_177_i32_to_bool_56_0 = icmp i32 Ne temp_150_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_150_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_177_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     665  br i1 temp_177_i32_to_bool_56_0, label branch_short_circuit_p_true_656, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_177_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_177_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_656
              #                    free a2
              #                    occupy a0 with temp_150_ret_of_f_56_0
              #                    store to temp_150_ret_of_f_56_0 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_150_ret_of_f_56_0
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_177_i32_to_bool_56_0
              #                    store to temp_177_i32_to_bool_56_0 in mem offset legal
    sb      a2,10(sp)
              #                    release a2 with temp_177_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a0:Freed { symidx: temp_150_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_177_i32_to_bool_56_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     658  label branch_short_circuit_p_true_656: 
.branch_short_circuit_p_true_656:
              #                     567  temp_151_ret_of_f_56_0 =  Call i32 f_0(7_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_150_ret_of_f_56_0
              #                    store to temp_150_ret_of_f_56_0 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_150_ret_of_f_56_0
              #                    occupy a2 with temp_177_i32_to_bool_56_0
              #                    store to temp_177_i32_to_bool_56_0 in mem offset legal
    sb      a2,10(sp)
              #                    release a2 with temp_177_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     741  mu array_0_14:567 
              #                     742  mu sum_0_16:567 
              #                     743  array_0_15 = chi array_0_14:567 
              #                     744  sum_0_17 = chi sum_0_16:567 
              #                     652  temp_176_i32_to_bool_56_0 = icmp i32 Ne temp_151_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_151_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_176_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     660  br i1 temp_176_i32_to_bool_56_0, label branch_short_circuit_p_true_662, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_176_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_176_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_662
              #                    free a2
              #                    occupy a0 with temp_151_ret_of_f_56_0
              #                    store to temp_151_ret_of_f_56_0 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_151_ret_of_f_56_0
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_176_i32_to_bool_56_0
              #                    store to temp_176_i32_to_bool_56_0 in mem offset legal
    sb      a2,11(sp)
              #                    release a2 with temp_176_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a0:Freed { symidx: temp_151_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_176_i32_to_bool_56_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     653  label branch_short_circuit_p_true_662: 
.branch_short_circuit_p_true_662:
              #                     569  temp_152_ret_of_f_56_0 =  Call i32 f_0(8_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_151_ret_of_f_56_0
              #                    store to temp_151_ret_of_f_56_0 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_151_ret_of_f_56_0
              #                    occupy a2 with temp_176_i32_to_bool_56_0
              #                    store to temp_176_i32_to_bool_56_0 in mem offset legal
    sb      a2,11(sp)
              #                    release a2 with temp_176_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     745  mu array_0_15:569 
              #                     746  mu sum_0_17:569 
              #                     747  array_0_16 = chi array_0_15:569 
              #                     748  sum_0_18 = chi sum_0_17:569 
              #                     647  temp_175_i32_to_bool_56_0 = icmp i32 Ne temp_152_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_152_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_175_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     655  br i1 temp_175_i32_to_bool_56_0, label branch_short_circuit_p_true_668, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_175_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_175_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_668
              #                    free a2
              #                    occupy a0 with temp_152_ret_of_f_56_0
              #                    store to temp_152_ret_of_f_56_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_152_ret_of_f_56_0
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_175_i32_to_bool_56_0
              #                    store to temp_175_i32_to_bool_56_0 in mem offset legal
    sb      a2,12(sp)
              #                    release a2 with temp_175_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a0:Freed { symidx: temp_152_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_175_i32_to_bool_56_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     648  label branch_short_circuit_p_true_668: 
.branch_short_circuit_p_true_668:
              #                     571  temp_153_ret_of_f_56_0 =  Call i32 f_0(9_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_152_ret_of_f_56_0
              #                    store to temp_152_ret_of_f_56_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_152_ret_of_f_56_0
              #                    occupy a2 with temp_175_i32_to_bool_56_0
              #                    store to temp_175_i32_to_bool_56_0 in mem offset legal
    sb      a2,12(sp)
              #                    release a2 with temp_175_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_9_0_0
    li      a0, 9
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     749  mu array_0_16:571 
              #                     750  mu sum_0_18:571 
              #                     751  array_0_17 = chi array_0_16:571 
              #                     752  sum_0_19 = chi sum_0_18:571 
              #                     642  temp_174_i32_to_bool_56_0 = icmp i32 Ne temp_153_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_153_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_174_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     650  br i1 temp_174_i32_to_bool_56_0, label branch_short_circuit_p_true_674, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_174_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_174_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_674
              #                    free a2
              #                    occupy a0 with temp_153_ret_of_f_56_0
              #                    store to temp_153_ret_of_f_56_0 in mem offset legal
    sw      a0,64(sp)
              #                    release a0 with temp_153_ret_of_f_56_0
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_174_i32_to_bool_56_0
              #                    store to temp_174_i32_to_bool_56_0 in mem offset legal
    sb      a2,13(sp)
              #                    release a2 with temp_174_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a0:Freed { symidx: temp_153_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_174_i32_to_bool_56_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     643  label branch_short_circuit_p_true_674: 
.branch_short_circuit_p_true_674:
              #                     573  temp_154_ret_of_f_56_0 =  Call i32 f_0(10_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_153_ret_of_f_56_0
              #                    store to temp_153_ret_of_f_56_0 in mem offset legal
    sw      a0,64(sp)
              #                    release a0 with temp_153_ret_of_f_56_0
              #                    occupy a2 with temp_174_i32_to_bool_56_0
              #                    store to temp_174_i32_to_bool_56_0 in mem offset legal
    sb      a2,13(sp)
              #                    release a2 with temp_174_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     753  mu array_0_17:573 
              #                     754  mu sum_0_19:573 
              #                     755  array_0_18 = chi array_0_17:573 
              #                     756  sum_0_20 = chi sum_0_19:573 
              #                     637  temp_173_i32_to_bool_56_0 = icmp i32 Ne temp_154_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_154_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_173_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     645  br i1 temp_173_i32_to_bool_56_0, label branch_short_circuit_p_true_680, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_173_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_173_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_680
              #                    free a2
              #                    occupy a0 with temp_154_ret_of_f_56_0
              #                    store to temp_154_ret_of_f_56_0 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_154_ret_of_f_56_0
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_173_i32_to_bool_56_0
              #                    store to temp_173_i32_to_bool_56_0 in mem offset legal
    sb      a2,14(sp)
              #                    release a2 with temp_173_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a0:Freed { symidx: temp_154_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_173_i32_to_bool_56_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     638  label branch_short_circuit_p_true_680: 
.branch_short_circuit_p_true_680:
              #                     575  temp_155_ret_of_f_56_0 =  Call i32 f_0(11_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_154_ret_of_f_56_0
              #                    store to temp_154_ret_of_f_56_0 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_154_ret_of_f_56_0
              #                    occupy a2 with temp_173_i32_to_bool_56_0
              #                    store to temp_173_i32_to_bool_56_0 in mem offset legal
    sb      a2,14(sp)
              #                    release a2 with temp_173_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_11_0_0
    li      a0, 11
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     757  mu array_0_18:575 
              #                     758  mu sum_0_20:575 
              #                     759  array_0_19 = chi array_0_18:575 
              #                     760  sum_0_21 = chi sum_0_20:575 
              #                     632  temp_172_i32_to_bool_56_0 = icmp i32 Ne temp_155_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_155_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_172_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_155_ret_of_f_56_0
              #                    store to temp_155_ret_of_f_56_0 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_155_ret_of_f_56_0
              #                    free a1
              #                    free a2
              #                     640  br i1 temp_172_i32_to_bool_56_0, label branch_short_circuit_p_true_686, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_172_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_172_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_686
              #                    free a2
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_172_i32_to_bool_56_0
              #                    store to temp_172_i32_to_bool_56_0 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_172_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a2:Freed { symidx: temp_172_i32_to_bool_56_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     633  label branch_short_circuit_p_true_686: 
.branch_short_circuit_p_true_686:
              #                     577  temp_156_ret_of_f_56_0 =  Call i32 f_0(12_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_172_i32_to_bool_56_0
              #                    store to temp_172_i32_to_bool_56_0 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_172_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_12_0_0
    li      a0, 12
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     761  mu array_0_19:577 
              #                     762  mu sum_0_21:577 
              #                     763  array_0_20 = chi array_0_19:577 
              #                     764  sum_0_22 = chi sum_0_21:577 
              #                     627  temp_171_i32_to_bool_56_0 = icmp i32 Ne temp_156_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_156_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_171_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_156_ret_of_f_56_0
              #                    store to temp_156_ret_of_f_56_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_156_ret_of_f_56_0
              #                    free a1
              #                    free a2
              #                     635  br i1 temp_171_i32_to_bool_56_0, label branch_short_circuit_p_true_692, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_171_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_171_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_692
              #                    free a2
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_171_i32_to_bool_56_0
              #                    store to temp_171_i32_to_bool_56_0 in mem offset legal
    sb      a2,16(sp)
              #                    release a2 with temp_171_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a2:Freed { symidx: temp_171_i32_to_bool_56_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     628  label branch_short_circuit_p_true_692: 
.branch_short_circuit_p_true_692:
              #                     579  temp_157_ret_of_f_56_0 =  Call i32 f_0(13_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_171_i32_to_bool_56_0
              #                    store to temp_171_i32_to_bool_56_0 in mem offset legal
    sb      a2,16(sp)
              #                    release a2 with temp_171_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_13_0_0
    li      a0, 13
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     765  mu array_0_20:579 
              #                     766  mu sum_0_22:579 
              #                     767  array_0_21 = chi array_0_20:579 
              #                     768  sum_0_23 = chi sum_0_22:579 
              #                     622  temp_170_i32_to_bool_56_0 = icmp i32 Ne temp_157_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_157_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_170_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_157_ret_of_f_56_0
              #                    store to temp_157_ret_of_f_56_0 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_157_ret_of_f_56_0
              #                    free a1
              #                    free a2
              #                     630  br i1 temp_170_i32_to_bool_56_0, label branch_short_circuit_p_true_698, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_170_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_170_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_698
              #                    free a2
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_170_i32_to_bool_56_0
              #                    store to temp_170_i32_to_bool_56_0 in mem offset legal
    sb      a2,17(sp)
              #                    release a2 with temp_170_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a2:Freed { symidx: temp_170_i32_to_bool_56_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     623  label branch_short_circuit_p_true_698: 
.branch_short_circuit_p_true_698:
              #                     581  temp_158_ret_of_f_56_0 =  Call i32 f_0(14_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_170_i32_to_bool_56_0
              #                    store to temp_170_i32_to_bool_56_0 in mem offset legal
    sb      a2,17(sp)
              #                    release a2 with temp_170_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_14_0_0
    li      a0, 14
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     769  mu array_0_21:581 
              #                     770  mu sum_0_23:581 
              #                     771  array_0_22 = chi array_0_21:581 
              #                     772  sum_0_24 = chi sum_0_23:581 
              #                     617  temp_169_i32_to_bool_56_0 = icmp i32 Ne temp_158_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_158_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_169_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_158_ret_of_f_56_0
              #                    store to temp_158_ret_of_f_56_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_158_ret_of_f_56_0
              #                    free a1
              #                    free a2
              #                     625  br i1 temp_169_i32_to_bool_56_0, label branch_short_circuit_p_true_704, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_169_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_169_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_704
              #                    free a2
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_169_i32_to_bool_56_0
              #                    store to temp_169_i32_to_bool_56_0 in mem offset legal
    sb      a2,18(sp)
              #                    release a2 with temp_169_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a2:Freed { symidx: temp_169_i32_to_bool_56_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     618  label branch_short_circuit_p_true_704: 
.branch_short_circuit_p_true_704:
              #                     583  temp_159_ret_of_f_56_0 =  Call i32 f_0(15_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_169_i32_to_bool_56_0
              #                    store to temp_169_i32_to_bool_56_0 in mem offset legal
    sb      a2,18(sp)
              #                    release a2 with temp_169_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_15_0_0
    li      a0, 15
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     773  mu array_0_22:583 
              #                     774  mu sum_0_24:583 
              #                     775  array_0_23 = chi array_0_22:583 
              #                     776  sum_0_25 = chi sum_0_24:583 
              #                     612  temp_168_i32_to_bool_56_0 = icmp i32 Ne temp_159_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_159_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_168_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_159_ret_of_f_56_0
              #                    store to temp_159_ret_of_f_56_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_159_ret_of_f_56_0
              #                    free a1
              #                    free a2
              #                     620  br i1 temp_168_i32_to_bool_56_0, label branch_short_circuit_p_true_710, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_168_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_168_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_710
              #                    free a2
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_168_i32_to_bool_56_0
              #                    store to temp_168_i32_to_bool_56_0 in mem offset legal
    sb      a2,19(sp)
              #                    release a2 with temp_168_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a2:Freed { symidx: temp_168_i32_to_bool_56_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     613  label branch_short_circuit_p_true_710: 
.branch_short_circuit_p_true_710:
              #                     585  temp_160_ret_of_f_56_0 =  Call i32 f_0(16_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_168_i32_to_bool_56_0
              #                    store to temp_168_i32_to_bool_56_0 in mem offset legal
    sb      a2,19(sp)
              #                    release a2 with temp_168_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_16_0_0
    li      a0, 16
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     777  mu array_0_23:585 
              #                     778  mu sum_0_25:585 
              #                     779  array_0_24 = chi array_0_23:585 
              #                     780  sum_0_26 = chi sum_0_25:585 
              #                     607  temp_167_i32_to_bool_56_0 = icmp i32 Ne temp_160_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_160_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_167_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_160_ret_of_f_56_0
              #                    store to temp_160_ret_of_f_56_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_160_ret_of_f_56_0
              #                    free a1
              #                    free a2
              #                     615  br i1 temp_167_i32_to_bool_56_0, label branch_short_circuit_p_true_716, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_167_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_167_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_716
              #                    free a2
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_167_i32_to_bool_56_0
              #                    store to temp_167_i32_to_bool_56_0 in mem offset legal
    sb      a2,20(sp)
              #                    release a2 with temp_167_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a2:Freed { symidx: temp_167_i32_to_bool_56_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     608  label branch_short_circuit_p_true_716: 
.branch_short_circuit_p_true_716:
              #                     587  temp_161_ret_of_f_56_0 =  Call i32 f_0(17_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_167_i32_to_bool_56_0
              #                    store to temp_167_i32_to_bool_56_0 in mem offset legal
    sb      a2,20(sp)
              #                    release a2 with temp_167_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_17_0_0
    li      a0, 17
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     781  mu array_0_24:587 
              #                     782  mu sum_0_26:587 
              #                     783  array_0_25 = chi array_0_24:587 
              #                     784  sum_0_27 = chi sum_0_26:587 
              #                     602  temp_166_i32_to_bool_56_0 = icmp i32 Ne temp_161_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_161_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_166_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_161_ret_of_f_56_0
              #                    store to temp_161_ret_of_f_56_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_161_ret_of_f_56_0
              #                    free a1
              #                    free a2
              #                     610  br i1 temp_166_i32_to_bool_56_0, label branch_short_circuit_p_true_722, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_166_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_166_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_722
              #                    free a2
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_166_i32_to_bool_56_0
              #                    store to temp_166_i32_to_bool_56_0 in mem offset legal
    sb      a2,21(sp)
              #                    release a2 with temp_166_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a2:Freed { symidx: temp_166_i32_to_bool_56_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     603  label branch_short_circuit_p_true_722: 
.branch_short_circuit_p_true_722:
              #                     589  temp_162_ret_of_f_56_0 =  Call i32 f_0(18_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_166_i32_to_bool_56_0
              #                    store to temp_166_i32_to_bool_56_0 in mem offset legal
    sb      a2,21(sp)
              #                    release a2 with temp_166_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_18_0_0
    li      a0, 18
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     785  mu array_0_25:589 
              #                     786  mu sum_0_27:589 
              #                     787  array_0_26 = chi array_0_25:589 
              #                     788  sum_0_28 = chi sum_0_27:589 
              #                     593  temp_164_i32_to_bool_56_0 = icmp i32 Ne temp_162_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_162_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_164_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_162_ret_of_f_56_0
              #                    store to temp_162_ret_of_f_56_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_162_ret_of_f_56_0
              #                    free a1
              #                    free a2
              #                     605  br i1 temp_164_i32_to_bool_56_0, label branch_short_circuit_p_true_728, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_164_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_164_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_p_true_728
              #                    free a2
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_164_i32_to_bool_56_0
              #                    store to temp_164_i32_to_bool_56_0 in mem offset legal
    sb      a2,23(sp)
              #                    release a2 with temp_164_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a2:Freed { symidx: temp_164_i32_to_bool_56_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     598  label branch_short_circuit_p_true_728: 
.branch_short_circuit_p_true_728:
              #                     591  temp_163_ret_of_f_56_0 =  Call i32 f_0(19_0, i_51_1) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_164_i32_to_bool_56_0
              #                    store to temp_164_i32_to_bool_56_0 in mem offset legal
    sb      a2,23(sp)
              #                    release a2 with temp_164_i32_to_bool_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_19_0_0
    li      a0, 19
              #                    occupy a1 with _anonymous_of_i_51_1_0
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    f
              #                     789  mu array_0_26:591 
              #                     790  mu sum_0_28:591 
              #                     791  array_0_27 = chi array_0_26:591 
              #                     792  sum_0_29 = chi sum_0_28:591 
              #                     595  temp_165_i32_to_bool_56_0 = icmp i32 Ne temp_163_ret_of_f_56_0, 0_0 
              #                    occupy a0 with temp_163_ret_of_f_56_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_165_i32_to_bool_56_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_163_ret_of_f_56_0
              #                    store to temp_163_ret_of_f_56_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_163_ret_of_f_56_0
              #                    free a1
              #                    free a2
              #                     600  br i1 temp_165_i32_to_bool_56_0, label branch_short_circuit_c_true_728, label branch_short_circuit_c_false_728 
              #                    occupy a2 with temp_165_i32_to_bool_56_0
              #                    free a2
              #                    occupy a2 with temp_165_i32_to_bool_56_0
    bnez    a2, .branch_short_circuit_c_true_728
              #                    free a2
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_165_i32_to_bool_56_0
              #                    store to temp_165_i32_to_bool_56_0 in mem offset legal
    sb      a2,22(sp)
              #                    release a2 with temp_165_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a2:Freed { symidx: temp_165_i32_to_bool_56_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     596  label branch_short_circuit_c_true_728: 
.branch_short_circuit_c_true_728:
              #                          jump label: branch_short_circuit_c_false_728 
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    load from temp_144_ret_of_f_56_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_165_i32_to_bool_56_0
              #                    store to temp_165_i32_to_bool_56_0 in mem offset legal
    sb      a2,22(sp)
              #                    release a2 with temp_165_i32_to_bool_56_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    load from temp_183_i32_to_bool_56_0 in mem


    lb      a2,4(sp)
    j       .branch_short_circuit_c_false_728
              #                    regtab     a0:Freed { symidx: temp_144_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_183_i32_to_bool_56_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     597  label branch_short_circuit_c_false_728: 
.branch_short_circuit_c_false_728:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_144_ret_of_f_56_0, tracked: true } |     a2:Freed { symidx: temp_183_i32_to_bool_56_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     191  temp_38_arithop_55_0 = Add i32 i_51_1, 1_0 
              #                    occupy a1 with i_51_1
              #                    load from i_51_1 in mem


    lw      a1,452(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_38_arithop_55_0
    ADDW    a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                     192  (nop) 
              #                     987  i_51_1 = i32 temp_38_arithop_55_0 
              #                    occupy a4 with temp_38_arithop_55_0
              #                    occupy a1 with i_51_1
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: while.head_54 
              #                    occupy a0 with temp_144_ret_of_f_56_0
              #                    store to temp_144_ret_of_f_56_0 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_144_ret_of_f_56_0
              #                    occupy a1 with i_51_1
              #                    store to i_51_1 in mem offset legal
    sw      a1,452(sp)
              #                    release a1 with i_51_1
              #                    occupy a0 with i_51_1
              #                    load from i_51_1 in mem


    lw      a0,452(sp)
              #                    occupy a4 with temp_38_arithop_55_0
              #                    store to temp_38_arithop_55_0 in mem offset legal
    sw      a4,380(sp)
              #                    release a4 with temp_38_arithop_55_0
              #                    occupy a2 with temp_183_i32_to_bool_56_0
              #                    store to temp_183_i32_to_bool_56_0 in mem offset legal
    sb      a2,4(sp)
              #                    release a2 with temp_183_i32_to_bool_56_0
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: i_51_1, tracked: true } |     a2:Freed { symidx: temp_39_cmp_53_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     197  label while.exit_54: 
.while.exit_54:
              #                     1083 untrack i_51_1 
              #                    occupy a0 with i_51_1
              #                    release a0 with i_51_1
              #                     149  (nop) 
              #                     988  i_51_4 = i32 0_0 
              #                    occupy a0 with i_51_4
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_51_4, tracked: true } |     a2:Freed { symidx: temp_39_cmp_53_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     201  label while.head_62: 
.while.head_62:
              #                     200  temp_40_cmp_61_0 = icmp i32 Slt i_51_4, 20_0 
              #                    occupy a0 with i_51_4
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a3 with temp_40_cmp_61_0
    slt     a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     204  br i1 temp_40_cmp_61_0, label while.body_62, label while.exit_62 
              #                    occupy a3 with temp_40_cmp_61_0
              #                    free a3
              #                    occupy a3 with temp_40_cmp_61_0
    bnez    a3, .while.body_62
              #                    free a3
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: i_51_4, tracked: true } |     a2:Freed { symidx: temp_39_cmp_53_0, tracked: true } |     a3:Freed { symidx: temp_40_cmp_61_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     202  label while.body_62: 
.while.body_62:
              #                     413  temp_104_ret_of_g_64_0 =  Call i32 g_0(0_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_51_4
              #                    store to i_51_4 in mem offset legal
    sw      a0,448(sp)
              #                    release a0 with i_51_4
              #                    occupy a2 with temp_39_cmp_53_0
              #                    store to temp_39_cmp_53_0 in mem offset legal
    sb      a2,379(sp)
              #                    release a2 with temp_39_cmp_53_0
              #                    occupy a3 with temp_40_cmp_61_0
              #                    store to temp_40_cmp_61_0 in mem offset legal
    sb      a3,378(sp)
              #                    release a3 with temp_40_cmp_61_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     793  mu array_0_28:413 
              #                     794  mu sum_0_30:413 
              #                     795  array_0_29 = chi array_0_28:413 
              #                     796  sum_0_31 = chi sum_0_30:413 
              #                     547  temp_143_i32_to_bool_64_0 = icmp i32 Ne temp_104_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     551  br i1 temp_143_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_509 
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    free a2
              #                    occupy a2 with temp_143_i32_to_bool_64_0
    bnez    a2, .branch_short_circuit_c_true_617
              #                    free a2
    j       .branch_short_circuit_p_false_509
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     456  label branch_short_circuit_c_true_617: 
.branch_short_circuit_c_true_617:
              #                     2004 untrack temp_122_ret_of_g_64_0 
              #                     2003 untrack temp_120_ret_of_g_64_0 
              #                     2002 untrack temp_119_ret_of_g_64_0 
              #                     2001 untrack temp_138_i32_to_bool_64_0 
              #                     2000 untrack temp_104_ret_of_g_64_0 
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    release a0 with temp_104_ret_of_g_64_0
              #                     1999 untrack temp_117_ret_of_g_64_0 
              #                     1998 untrack temp_110_ret_of_g_64_0 
              #                     1997 untrack temp_127_i32_to_bool_64_0 
              #                     1996 untrack temp_140_i32_to_bool_64_0 
              #                     1995 untrack temp_129_i32_to_bool_64_0 
              #                     1994 untrack temp_124_i32_to_bool_64_0 
              #                     1993 untrack temp_118_ret_of_g_64_0 
              #                     1992 untrack temp_42_arithop_69_0 
              #                     1991 untrack temp_139_i32_to_bool_64_0 
              #                     1990 untrack temp_128_i32_to_bool_64_0 
              #                     1989 untrack temp_112_ret_of_g_64_0 
              #                     1988 untrack temp_41_cmp_69_0 
              #                     1987 untrack temp_142_i32_to_bool_64_0 
              #                     1986 untrack temp_105_ret_of_g_64_0 
              #                     1985 untrack temp_36_arithop_69_0 
              #                     1984 untrack temp_135_i32_to_bool_64_0 
              #                     1983 untrack temp_123_ret_of_g_64_0 
              #                     1982 untrack temp_143_i32_to_bool_64_0 
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                     1981 untrack temp_137_i32_to_bool_64_0 
              #                     1980 untrack temp_43_ret_of_f_69_0 
              #                     1979 untrack temp_121_ret_of_g_64_0 
              #                     1978 untrack temp_116_ret_of_g_64_0 
              #                     1977 untrack temp_111_ret_of_g_64_0 
              #                     1976 untrack temp_136_i32_to_bool_64_0 
              #                     1975 untrack temp_132_i32_to_bool_64_0 
              #                     1974 untrack temp_114_ret_of_g_64_0 
              #                     1973 untrack temp_44_i32_to_bool_69_0 
              #                     1972 untrack temp_126_i32_to_bool_64_0 
              #                     1971 untrack temp_40_cmp_61_0 
              #                     1970 untrack temp_107_ret_of_g_64_0 
              #                     1969 untrack temp_109_ret_of_g_64_0 
              #                     1968 untrack temp_141_i32_to_bool_64_0 
              #                     1967 untrack temp_125_i32_to_bool_64_0 
              #                     1966 untrack temp_108_ret_of_g_64_0 
              #                     1965 untrack temp_113_ret_of_g_64_0 
              #                     1964 untrack temp_134_i32_to_bool_64_0 
              #                     1963 untrack temp_130_i32_to_bool_64_0 
              #                     1962 untrack temp_115_ret_of_g_64_0 
              #                     1961 untrack temp_131_i32_to_bool_64_0 
              #                     1960 untrack temp_106_ret_of_g_64_0 
              #                     1959 untrack temp_133_i32_to_bool_64_0 
              #                     1958 untrack temp_124_i32_to_bool_64_0 
              #                     1957 untrack temp_117_ret_of_g_64_0 
              #                     1956 untrack temp_141_i32_to_bool_64_0 
              #                     1955 untrack temp_132_i32_to_bool_64_0 
              #                     1954 untrack temp_120_ret_of_g_64_0 
              #                     1953 untrack temp_136_i32_to_bool_64_0 
              #                     1952 untrack temp_105_ret_of_g_64_0 
              #                     1951 untrack temp_116_ret_of_g_64_0 
              #                     1950 untrack temp_128_i32_to_bool_64_0 
              #                     1949 untrack temp_104_ret_of_g_64_0 
              #                     1948 untrack temp_138_i32_to_bool_64_0 
              #                     1947 untrack temp_131_i32_to_bool_64_0 
              #                     1946 untrack temp_36_arithop_69_0 
              #                     1945 untrack temp_40_cmp_61_0 
              #                     1944 untrack temp_119_ret_of_g_64_0 
              #                     1943 untrack temp_41_cmp_69_0 
              #                     1942 untrack temp_137_i32_to_bool_64_0 
              #                     1941 untrack temp_139_i32_to_bool_64_0 
              #                     1940 untrack temp_107_ret_of_g_64_0 
              #                     1939 untrack temp_108_ret_of_g_64_0 
              #                     1938 untrack temp_143_i32_to_bool_64_0 
              #                     1937 untrack temp_134_i32_to_bool_64_0 
              #                     1936 untrack temp_135_i32_to_bool_64_0 
              #                     1935 untrack temp_140_i32_to_bool_64_0 
              #                     1934 untrack temp_42_arithop_69_0 
              #                     1933 untrack temp_111_ret_of_g_64_0 
              #                     1932 untrack temp_109_ret_of_g_64_0 
              #                     1931 untrack temp_133_i32_to_bool_64_0 
              #                     1930 untrack temp_129_i32_to_bool_64_0 
              #                     1929 untrack temp_110_ret_of_g_64_0 
              #                     1928 untrack temp_125_i32_to_bool_64_0 
              #                     1927 untrack temp_123_ret_of_g_64_0 
              #                     1926 untrack temp_115_ret_of_g_64_0 
              #                     1925 untrack temp_114_ret_of_g_64_0 
              #                     1924 untrack temp_113_ret_of_g_64_0 
              #                     1923 untrack temp_44_i32_to_bool_69_0 
              #                     1922 untrack temp_122_ret_of_g_64_0 
              #                     1921 untrack temp_126_i32_to_bool_64_0 
              #                     1920 untrack temp_112_ret_of_g_64_0 
              #                     1919 untrack temp_142_i32_to_bool_64_0 
              #                     1918 untrack temp_118_ret_of_g_64_0 
              #                     1917 untrack temp_121_ret_of_g_64_0 
              #                     1916 untrack temp_130_i32_to_bool_64_0 
              #                     1915 untrack temp_106_ret_of_g_64_0 
              #                     1914 untrack temp_43_ret_of_f_69_0 
              #                     1913 untrack temp_127_i32_to_bool_64_0 
              #                     1912 untrack temp_42_arithop_69_0 
              #                     1911 untrack temp_133_i32_to_bool_64_0 
              #                     1910 untrack temp_108_ret_of_g_64_0 
              #                     1909 untrack temp_111_ret_of_g_64_0 
              #                     1908 untrack temp_140_i32_to_bool_64_0 
              #                     1907 untrack temp_139_i32_to_bool_64_0 
              #                     1906 untrack temp_122_ret_of_g_64_0 
              #                     1905 untrack temp_43_ret_of_f_69_0 
              #                     1904 untrack temp_113_ret_of_g_64_0 
              #                     1903 untrack temp_40_cmp_61_0 
              #                     1902 untrack temp_44_i32_to_bool_69_0 
              #                     1901 untrack temp_127_i32_to_bool_64_0 
              #                     1900 untrack temp_41_cmp_69_0 
              #                     1899 untrack temp_142_i32_to_bool_64_0 
              #                     1898 untrack temp_114_ret_of_g_64_0 
              #                     1897 untrack temp_131_i32_to_bool_64_0 
              #                     1896 untrack temp_135_i32_to_bool_64_0 
              #                     1895 untrack temp_141_i32_to_bool_64_0 
              #                     1894 untrack temp_119_ret_of_g_64_0 
              #                     1893 untrack temp_115_ret_of_g_64_0 
              #                     1892 untrack temp_125_i32_to_bool_64_0 
              #                     1891 untrack temp_138_i32_to_bool_64_0 
              #                     1890 untrack temp_109_ret_of_g_64_0 
              #                     1889 untrack temp_123_ret_of_g_64_0 
              #                     1888 untrack temp_143_i32_to_bool_64_0 
              #                     1887 untrack temp_117_ret_of_g_64_0 
              #                     1886 untrack temp_126_i32_to_bool_64_0 
              #                     1885 untrack temp_116_ret_of_g_64_0 
              #                     1884 untrack temp_104_ret_of_g_64_0 
              #                     1883 untrack temp_130_i32_to_bool_64_0 
              #                     1882 untrack temp_128_i32_to_bool_64_0 
              #                     1881 untrack temp_137_i32_to_bool_64_0 
              #                     1880 untrack temp_105_ret_of_g_64_0 
              #                     1879 untrack temp_132_i32_to_bool_64_0 
              #                     1878 untrack temp_121_ret_of_g_64_0 
              #                     1877 untrack temp_112_ret_of_g_64_0 
              #                     1876 untrack temp_134_i32_to_bool_64_0 
              #                     1875 untrack temp_124_i32_to_bool_64_0 
              #                     1874 untrack temp_110_ret_of_g_64_0 
              #                     1873 untrack temp_107_ret_of_g_64_0 
              #                     1872 untrack temp_120_ret_of_g_64_0 
              #                     1871 untrack temp_129_i32_to_bool_64_0 
              #                     1870 untrack temp_136_i32_to_bool_64_0 
              #                     1869 untrack temp_118_ret_of_g_64_0 
              #                     1868 untrack temp_106_ret_of_g_64_0 
              #                     1867 untrack temp_36_arithop_69_0 
              #                     1866 untrack temp_40_cmp_61_0 
              #                     1865 untrack temp_43_ret_of_f_69_0 
              #                     1864 untrack temp_138_i32_to_bool_64_0 
              #                     1863 untrack temp_134_i32_to_bool_64_0 
              #                     1862 untrack temp_133_i32_to_bool_64_0 
              #                     1861 untrack temp_110_ret_of_g_64_0 
              #                     1860 untrack temp_42_arithop_69_0 
              #                     1859 untrack temp_141_i32_to_bool_64_0 
              #                     1858 untrack temp_125_i32_to_bool_64_0 
              #                     1857 untrack temp_122_ret_of_g_64_0 
              #                     1856 untrack temp_131_i32_to_bool_64_0 
              #                     1855 untrack temp_135_i32_to_bool_64_0 
              #                     1854 untrack temp_137_i32_to_bool_64_0 
              #                     1853 untrack temp_104_ret_of_g_64_0 
              #                     1852 untrack temp_143_i32_to_bool_64_0 
              #                     1851 untrack temp_117_ret_of_g_64_0 
              #                     1850 untrack temp_106_ret_of_g_64_0 
              #                     1849 untrack temp_124_i32_to_bool_64_0 
              #                     1848 untrack temp_111_ret_of_g_64_0 
              #                     1847 untrack temp_136_i32_to_bool_64_0 
              #                     1846 untrack temp_109_ret_of_g_64_0 
              #                     1845 untrack temp_114_ret_of_g_64_0 
              #                     1844 untrack temp_41_cmp_69_0 
              #                     1843 untrack temp_113_ret_of_g_64_0 
              #                     1842 untrack temp_108_ret_of_g_64_0 
              #                     1841 untrack temp_44_i32_to_bool_69_0 
              #                     1840 untrack temp_128_i32_to_bool_64_0 
              #                     1839 untrack temp_142_i32_to_bool_64_0 
              #                     1838 untrack temp_140_i32_to_bool_64_0 
              #                     1837 untrack temp_123_ret_of_g_64_0 
              #                     1836 untrack temp_129_i32_to_bool_64_0 
              #                     1835 untrack temp_120_ret_of_g_64_0 
              #                     1834 untrack temp_116_ret_of_g_64_0 
              #                     1833 untrack temp_139_i32_to_bool_64_0 
              #                     1832 untrack temp_130_i32_to_bool_64_0 
              #                     1831 untrack temp_118_ret_of_g_64_0 
              #                     1830 untrack temp_132_i32_to_bool_64_0 
              #                     1829 untrack temp_107_ret_of_g_64_0 
              #                     1828 untrack temp_36_arithop_69_0 
              #                     1827 untrack temp_126_i32_to_bool_64_0 
              #                     1826 untrack temp_119_ret_of_g_64_0 
              #                     1825 untrack temp_127_i32_to_bool_64_0 
              #                     1824 untrack temp_112_ret_of_g_64_0 
              #                     1823 untrack temp_121_ret_of_g_64_0 
              #                     1822 untrack temp_115_ret_of_g_64_0 
              #                     1821 untrack temp_105_ret_of_g_64_0 
              #                     1820 untrack temp_143_i32_to_bool_64_0 
              #                     1819 untrack temp_134_i32_to_bool_64_0 
              #                     1818 untrack temp_104_ret_of_g_64_0 
              #                     1817 untrack temp_126_i32_to_bool_64_0 
              #                     1816 untrack temp_40_cmp_61_0 
              #                     1815 untrack temp_125_i32_to_bool_64_0 
              #                     1814 untrack temp_137_i32_to_bool_64_0 
              #                     1813 untrack temp_111_ret_of_g_64_0 
              #                     1812 untrack temp_139_i32_to_bool_64_0 
              #                     1811 untrack temp_106_ret_of_g_64_0 
              #                     1810 untrack temp_109_ret_of_g_64_0 
              #                     1809 untrack temp_115_ret_of_g_64_0 
              #                     1808 untrack temp_129_i32_to_bool_64_0 
              #                     1807 untrack temp_140_i32_to_bool_64_0 
              #                     1806 untrack temp_116_ret_of_g_64_0 
              #                     1805 untrack temp_133_i32_to_bool_64_0 
              #                     1804 untrack temp_120_ret_of_g_64_0 
              #                     1803 untrack temp_44_i32_to_bool_69_0 
              #                     1802 untrack temp_110_ret_of_g_64_0 
              #                     1801 untrack temp_113_ret_of_g_64_0 
              #                     1800 untrack temp_43_ret_of_f_69_0 
              #                     1799 untrack temp_128_i32_to_bool_64_0 
              #                     1798 untrack temp_107_ret_of_g_64_0 
              #                     1797 untrack temp_36_arithop_69_0 
              #                     1796 untrack temp_105_ret_of_g_64_0 
              #                     1795 untrack temp_141_i32_to_bool_64_0 
              #                     1794 untrack temp_41_cmp_69_0 
              #                     1793 untrack temp_136_i32_to_bool_64_0 
              #                     1792 untrack temp_131_i32_to_bool_64_0 
              #                     1791 untrack temp_127_i32_to_bool_64_0 
              #                     1790 untrack temp_130_i32_to_bool_64_0 
              #                     1789 untrack temp_138_i32_to_bool_64_0 
              #                     1788 untrack temp_119_ret_of_g_64_0 
              #                     1787 untrack temp_135_i32_to_bool_64_0 
              #                     1786 untrack temp_118_ret_of_g_64_0 
              #                     1785 untrack temp_122_ret_of_g_64_0 
              #                     1784 untrack temp_117_ret_of_g_64_0 
              #                     1783 untrack temp_142_i32_to_bool_64_0 
              #                     1782 untrack temp_124_i32_to_bool_64_0 
              #                     1781 untrack temp_108_ret_of_g_64_0 
              #                     1780 untrack temp_132_i32_to_bool_64_0 
              #                     1779 untrack temp_123_ret_of_g_64_0 
              #                     1778 untrack temp_121_ret_of_g_64_0 
              #                     1777 untrack temp_112_ret_of_g_64_0 
              #                     1776 untrack temp_42_arithop_69_0 
              #                     1775 untrack temp_114_ret_of_g_64_0 
              #                     1774 untrack temp_135_i32_to_bool_64_0 
              #                     1773 untrack temp_125_i32_to_bool_64_0 
              #                     1772 untrack temp_127_i32_to_bool_64_0 
              #                     1771 untrack temp_143_i32_to_bool_64_0 
              #                     1770 untrack temp_111_ret_of_g_64_0 
              #                     1769 untrack temp_117_ret_of_g_64_0 
              #                     1768 untrack temp_131_i32_to_bool_64_0 
              #                     1767 untrack temp_36_arithop_69_0 
              #                     1766 untrack temp_109_ret_of_g_64_0 
              #                     1765 untrack temp_128_i32_to_bool_64_0 
              #                     1764 untrack temp_104_ret_of_g_64_0 
              #                     1763 untrack temp_41_cmp_69_0 
              #                     1762 untrack temp_105_ret_of_g_64_0 
              #                     1761 untrack temp_123_ret_of_g_64_0 
              #                     1760 untrack temp_126_i32_to_bool_64_0 
              #                     1759 untrack temp_130_i32_to_bool_64_0 
              #                     1758 untrack temp_122_ret_of_g_64_0 
              #                     1757 untrack temp_141_i32_to_bool_64_0 
              #                     1756 untrack temp_142_i32_to_bool_64_0 
              #                     1755 untrack temp_106_ret_of_g_64_0 
              #                     1754 untrack temp_114_ret_of_g_64_0 
              #                     1753 untrack temp_110_ret_of_g_64_0 
              #                     1752 untrack temp_139_i32_to_bool_64_0 
              #                     1751 untrack temp_119_ret_of_g_64_0 
              #                     1750 untrack temp_115_ret_of_g_64_0 
              #                     1749 untrack temp_40_cmp_61_0 
              #                     1748 untrack temp_113_ret_of_g_64_0 
              #                     1747 untrack temp_43_ret_of_f_69_0 
              #                     1746 untrack temp_140_i32_to_bool_64_0 
              #                     1745 untrack temp_121_ret_of_g_64_0 
              #                     1744 untrack temp_138_i32_to_bool_64_0 
              #                     1743 untrack temp_42_arithop_69_0 
              #                     1742 untrack temp_129_i32_to_bool_64_0 
              #                     1741 untrack temp_44_i32_to_bool_69_0 
              #                     1740 untrack temp_108_ret_of_g_64_0 
              #                     1739 untrack temp_133_i32_to_bool_64_0 
              #                     1738 untrack temp_116_ret_of_g_64_0 
              #                     1737 untrack temp_134_i32_to_bool_64_0 
              #                     1736 untrack temp_112_ret_of_g_64_0 
              #                     1735 untrack temp_120_ret_of_g_64_0 
              #                     1734 untrack temp_132_i32_to_bool_64_0 
              #                     1733 untrack temp_107_ret_of_g_64_0 
              #                     1732 untrack temp_137_i32_to_bool_64_0 
              #                     1731 untrack temp_136_i32_to_bool_64_0 
              #                     1730 untrack temp_124_i32_to_bool_64_0 
              #                     1729 untrack temp_118_ret_of_g_64_0 
              #                     1728 untrack temp_125_i32_to_bool_64_0 
              #                     1727 untrack temp_41_cmp_69_0 
              #                     1726 untrack temp_129_i32_to_bool_64_0 
              #                     1725 untrack temp_117_ret_of_g_64_0 
              #                     1724 untrack temp_107_ret_of_g_64_0 
              #                     1723 untrack temp_113_ret_of_g_64_0 
              #                     1722 untrack temp_137_i32_to_bool_64_0 
              #                     1721 untrack temp_122_ret_of_g_64_0 
              #                     1720 untrack temp_133_i32_to_bool_64_0 
              #                     1719 untrack temp_44_i32_to_bool_69_0 
              #                     1718 untrack temp_116_ret_of_g_64_0 
              #                     1717 untrack temp_43_ret_of_f_69_0 
              #                     1716 untrack temp_120_ret_of_g_64_0 
              #                     1715 untrack temp_104_ret_of_g_64_0 
              #                     1714 untrack temp_123_ret_of_g_64_0 
              #                     1713 untrack temp_108_ret_of_g_64_0 
              #                     1712 untrack temp_40_cmp_61_0 
              #                     1711 untrack temp_109_ret_of_g_64_0 
              #                     1710 untrack temp_111_ret_of_g_64_0 
              #                     1709 untrack temp_132_i32_to_bool_64_0 
              #                     1708 untrack temp_134_i32_to_bool_64_0 
              #                     1707 untrack temp_112_ret_of_g_64_0 
              #                     1706 untrack temp_141_i32_to_bool_64_0 
              #                     1705 untrack temp_143_i32_to_bool_64_0 
              #                     1704 untrack temp_114_ret_of_g_64_0 
              #                     1703 untrack temp_136_i32_to_bool_64_0 
              #                     1702 untrack temp_121_ret_of_g_64_0 
              #                     1701 untrack temp_42_arithop_69_0 
              #                     1700 untrack temp_36_arithop_69_0 
              #                     1699 untrack temp_128_i32_to_bool_64_0 
              #                     1698 untrack temp_118_ret_of_g_64_0 
              #                     1697 untrack temp_139_i32_to_bool_64_0 
              #                     1696 untrack temp_106_ret_of_g_64_0 
              #                     1695 untrack temp_135_i32_to_bool_64_0 
              #                     1694 untrack temp_110_ret_of_g_64_0 
              #                     1693 untrack temp_131_i32_to_bool_64_0 
              #                     1692 untrack temp_140_i32_to_bool_64_0 
              #                     1691 untrack temp_105_ret_of_g_64_0 
              #                     1690 untrack temp_126_i32_to_bool_64_0 
              #                     1689 untrack temp_142_i32_to_bool_64_0 
              #                     1688 untrack temp_127_i32_to_bool_64_0 
              #                     1687 untrack temp_138_i32_to_bool_64_0 
              #                     1686 untrack temp_115_ret_of_g_64_0 
              #                     1685 untrack temp_130_i32_to_bool_64_0 
              #                     1684 untrack temp_124_i32_to_bool_64_0 
              #                     1683 untrack temp_119_ret_of_g_64_0 
              #                     1682 untrack temp_137_i32_to_bool_64_0 
              #                     1681 untrack temp_44_i32_to_bool_69_0 
              #                     1680 untrack temp_114_ret_of_g_64_0 
              #                     1679 untrack temp_116_ret_of_g_64_0 
              #                     1678 untrack temp_113_ret_of_g_64_0 
              #                     1677 untrack temp_104_ret_of_g_64_0 
              #                     1676 untrack temp_123_ret_of_g_64_0 
              #                     1675 untrack temp_140_i32_to_bool_64_0 
              #                     1674 untrack temp_136_i32_to_bool_64_0 
              #                     1673 untrack temp_106_ret_of_g_64_0 
              #                     1672 untrack temp_130_i32_to_bool_64_0 
              #                     1671 untrack temp_115_ret_of_g_64_0 
              #                     1670 untrack temp_135_i32_to_bool_64_0 
              #                     1669 untrack temp_142_i32_to_bool_64_0 
              #                     1668 untrack temp_129_i32_to_bool_64_0 
              #                     1667 untrack temp_109_ret_of_g_64_0 
              #                     1666 untrack temp_40_cmp_61_0 
              #                     1665 untrack temp_108_ret_of_g_64_0 
              #                     1664 untrack temp_120_ret_of_g_64_0 
              #                     1663 untrack temp_134_i32_to_bool_64_0 
              #                     1662 untrack temp_119_ret_of_g_64_0 
              #                     1661 untrack temp_110_ret_of_g_64_0 
              #                     1660 untrack temp_117_ret_of_g_64_0 
              #                     1659 untrack temp_41_cmp_69_0 
              #                     1658 untrack temp_111_ret_of_g_64_0 
              #                     1657 untrack temp_139_i32_to_bool_64_0 
              #                     1656 untrack temp_133_i32_to_bool_64_0 
              #                     1655 untrack temp_141_i32_to_bool_64_0 
              #                     1654 untrack temp_121_ret_of_g_64_0 
              #                     1653 untrack temp_131_i32_to_bool_64_0 
              #                     1652 untrack temp_132_i32_to_bool_64_0 
              #                     1651 untrack temp_127_i32_to_bool_64_0 
              #                     1650 untrack temp_112_ret_of_g_64_0 
              #                     1649 untrack temp_143_i32_to_bool_64_0 
              #                     1648 untrack temp_138_i32_to_bool_64_0 
              #                     1647 untrack temp_36_arithop_69_0 
              #                     1646 untrack temp_43_ret_of_f_69_0 
              #                     1645 untrack temp_126_i32_to_bool_64_0 
              #                     1644 untrack temp_128_i32_to_bool_64_0 
              #                     1643 untrack temp_118_ret_of_g_64_0 
              #                     1642 untrack temp_42_arithop_69_0 
              #                     1641 untrack temp_124_i32_to_bool_64_0 
              #                     1640 untrack temp_105_ret_of_g_64_0 
              #                     1639 untrack temp_125_i32_to_bool_64_0 
              #                     1638 untrack temp_107_ret_of_g_64_0 
              #                     1637 untrack temp_122_ret_of_g_64_0 
              #                     1636 untrack temp_113_ret_of_g_64_0 
              #                     1635 untrack temp_129_i32_to_bool_64_0 
              #                     1634 untrack temp_36_arithop_69_0 
              #                     1633 untrack temp_139_i32_to_bool_64_0 
              #                     1632 untrack temp_134_i32_to_bool_64_0 
              #                     1631 untrack temp_118_ret_of_g_64_0 
              #                     1630 untrack temp_121_ret_of_g_64_0 
              #                     1629 untrack temp_131_i32_to_bool_64_0 
              #                     1628 untrack temp_112_ret_of_g_64_0 
              #                     1627 untrack temp_119_ret_of_g_64_0 
              #                     1626 untrack temp_137_i32_to_bool_64_0 
              #                     1625 untrack temp_110_ret_of_g_64_0 
              #                     1624 untrack temp_106_ret_of_g_64_0 
              #                     1623 untrack temp_141_i32_to_bool_64_0 
              #                     1622 untrack temp_40_cmp_61_0 
              #                     1621 untrack temp_125_i32_to_bool_64_0 
              #                     1620 untrack temp_132_i32_to_bool_64_0 
              #                     1619 untrack temp_122_ret_of_g_64_0 
              #                     1618 untrack temp_108_ret_of_g_64_0 
              #                     1617 untrack temp_105_ret_of_g_64_0 
              #                     1616 untrack temp_111_ret_of_g_64_0 
              #                     1615 untrack temp_107_ret_of_g_64_0 
              #                     1614 untrack temp_117_ret_of_g_64_0 
              #                     1613 untrack temp_42_arithop_69_0 
              #                     1612 untrack temp_115_ret_of_g_64_0 
              #                     1611 untrack temp_114_ret_of_g_64_0 
              #                     1610 untrack temp_136_i32_to_bool_64_0 
              #                     1609 untrack temp_109_ret_of_g_64_0 
              #                     1608 untrack temp_124_i32_to_bool_64_0 
              #                     1607 untrack temp_41_cmp_69_0 
              #                     1606 untrack temp_135_i32_to_bool_64_0 
              #                     1605 untrack temp_128_i32_to_bool_64_0 
              #                     1604 untrack temp_123_ret_of_g_64_0 
              #                     1603 untrack temp_142_i32_to_bool_64_0 
              #                     1602 untrack temp_140_i32_to_bool_64_0 
              #                     1601 untrack temp_44_i32_to_bool_69_0 
              #                     1600 untrack temp_138_i32_to_bool_64_0 
              #                     1599 untrack temp_143_i32_to_bool_64_0 
              #                     1598 untrack temp_126_i32_to_bool_64_0 
              #                     1597 untrack temp_43_ret_of_f_69_0 
              #                     1596 untrack temp_120_ret_of_g_64_0 
              #                     1595 untrack temp_127_i32_to_bool_64_0 
              #                     1594 untrack temp_104_ret_of_g_64_0 
              #                     1593 untrack temp_130_i32_to_bool_64_0 
              #                     1592 untrack temp_116_ret_of_g_64_0 
              #                     1591 untrack temp_133_i32_to_bool_64_0 
              #                     1590 untrack temp_135_i32_to_bool_64_0 
              #                     1589 untrack temp_141_i32_to_bool_64_0 
              #                     1588 untrack temp_42_arithop_69_0 
              #                     1587 untrack temp_137_i32_to_bool_64_0 
              #                     1586 untrack temp_44_i32_to_bool_69_0 
              #                     1585 untrack temp_114_ret_of_g_64_0 
              #                     1584 untrack temp_133_i32_to_bool_64_0 
              #                     1583 untrack temp_109_ret_of_g_64_0 
              #                     1582 untrack temp_36_arithop_69_0 
              #                     1581 untrack temp_130_i32_to_bool_64_0 
              #                     1580 untrack temp_127_i32_to_bool_64_0 
              #                     1579 untrack temp_142_i32_to_bool_64_0 
              #                     1578 untrack temp_119_ret_of_g_64_0 
              #                     1577 untrack temp_120_ret_of_g_64_0 
              #                     1576 untrack temp_105_ret_of_g_64_0 
              #                     1575 untrack temp_112_ret_of_g_64_0 
              #                     1574 untrack temp_131_i32_to_bool_64_0 
              #                     1573 untrack temp_124_i32_to_bool_64_0 
              #                     1572 untrack temp_126_i32_to_bool_64_0 
              #                     1571 untrack temp_134_i32_to_bool_64_0 
              #                     1570 untrack temp_41_cmp_69_0 
              #                     1569 untrack temp_117_ret_of_g_64_0 
              #                     1568 untrack temp_43_ret_of_f_69_0 
              #                     1567 untrack temp_125_i32_to_bool_64_0 
              #                     1566 untrack temp_132_i32_to_bool_64_0 
              #                     1565 untrack temp_40_cmp_61_0 
              #                     1564 untrack temp_111_ret_of_g_64_0 
              #                     1563 untrack temp_116_ret_of_g_64_0 
              #                     1562 untrack temp_118_ret_of_g_64_0 
              #                     1561 untrack temp_123_ret_of_g_64_0 
              #                     1560 untrack temp_139_i32_to_bool_64_0 
              #                     1559 untrack temp_140_i32_to_bool_64_0 
              #                     1558 untrack temp_129_i32_to_bool_64_0 
              #                     1557 untrack temp_115_ret_of_g_64_0 
              #                     1556 untrack temp_121_ret_of_g_64_0 
              #                     1555 untrack temp_106_ret_of_g_64_0 
              #                     1554 untrack temp_122_ret_of_g_64_0 
              #                     1553 untrack temp_138_i32_to_bool_64_0 
              #                     1552 untrack temp_113_ret_of_g_64_0 
              #                     1551 untrack temp_108_ret_of_g_64_0 
              #                     1550 untrack temp_128_i32_to_bool_64_0 
              #                     1549 untrack temp_110_ret_of_g_64_0 
              #                     1548 untrack temp_107_ret_of_g_64_0 
              #                     1547 untrack temp_136_i32_to_bool_64_0 
              #                     1546 untrack temp_104_ret_of_g_64_0 
              #                     1545 untrack temp_143_i32_to_bool_64_0 
              #                     1544 untrack temp_136_i32_to_bool_64_0 
              #                     1543 untrack temp_44_i32_to_bool_69_0 
              #                     1542 untrack temp_124_i32_to_bool_64_0 
              #                     1541 untrack temp_111_ret_of_g_64_0 
              #                     1540 untrack temp_127_i32_to_bool_64_0 
              #                     1539 untrack temp_116_ret_of_g_64_0 
              #                     1538 untrack temp_125_i32_to_bool_64_0 
              #                     1537 untrack temp_114_ret_of_g_64_0 
              #                     1536 untrack temp_137_i32_to_bool_64_0 
              #                     1535 untrack temp_119_ret_of_g_64_0 
              #                     1534 untrack temp_118_ret_of_g_64_0 
              #                     1533 untrack temp_143_i32_to_bool_64_0 
              #                     1532 untrack temp_112_ret_of_g_64_0 
              #                     1531 untrack temp_110_ret_of_g_64_0 
              #                     1530 untrack temp_41_cmp_69_0 
              #                     1529 untrack temp_120_ret_of_g_64_0 
              #                     1528 untrack temp_133_i32_to_bool_64_0 
              #                     1527 untrack temp_140_i32_to_bool_64_0 
              #                     1526 untrack temp_105_ret_of_g_64_0 
              #                     1525 untrack temp_121_ret_of_g_64_0 
              #                     1524 untrack temp_106_ret_of_g_64_0 
              #                     1523 untrack temp_40_cmp_61_0 
              #                     1522 untrack temp_141_i32_to_bool_64_0 
              #                     1521 untrack temp_113_ret_of_g_64_0 
              #                     1520 untrack temp_126_i32_to_bool_64_0 
              #                     1519 untrack temp_123_ret_of_g_64_0 
              #                     1518 untrack temp_135_i32_to_bool_64_0 
              #                     1517 untrack temp_122_ret_of_g_64_0 
              #                     1516 untrack temp_42_arithop_69_0 
              #                     1515 untrack temp_104_ret_of_g_64_0 
              #                     1514 untrack temp_109_ret_of_g_64_0 
              #                     1513 untrack temp_117_ret_of_g_64_0 
              #                     1512 untrack temp_131_i32_to_bool_64_0 
              #                     1511 untrack temp_132_i32_to_bool_64_0 
              #                     1510 untrack temp_134_i32_to_bool_64_0 
              #                     1509 untrack temp_115_ret_of_g_64_0 
              #                     1508 untrack temp_142_i32_to_bool_64_0 
              #                     1507 untrack temp_139_i32_to_bool_64_0 
              #                     1506 untrack temp_129_i32_to_bool_64_0 
              #                     1505 untrack temp_128_i32_to_bool_64_0 
              #                     1504 untrack temp_108_ret_of_g_64_0 
              #                     1503 untrack temp_107_ret_of_g_64_0 
              #                     1502 untrack temp_130_i32_to_bool_64_0 
              #                     1501 untrack temp_138_i32_to_bool_64_0 
              #                     1500 untrack temp_43_ret_of_f_69_0 
              #                     1499 untrack temp_36_arithop_69_0 
              #                     1498 untrack temp_123_ret_of_g_64_0 
              #                     1497 untrack temp_135_i32_to_bool_64_0 
              #                     1496 untrack temp_139_i32_to_bool_64_0 
              #                     1495 untrack temp_119_ret_of_g_64_0 
              #                     1494 untrack temp_110_ret_of_g_64_0 
              #                     1493 untrack temp_132_i32_to_bool_64_0 
              #                     1492 untrack temp_137_i32_to_bool_64_0 
              #                     1491 untrack temp_122_ret_of_g_64_0 
              #                     1490 untrack temp_120_ret_of_g_64_0 
              #                     1489 untrack temp_43_ret_of_f_69_0 
              #                     1488 untrack temp_104_ret_of_g_64_0 
              #                     1487 untrack temp_125_i32_to_bool_64_0 
              #                     1486 untrack temp_134_i32_to_bool_64_0 
              #                     1485 untrack temp_138_i32_to_bool_64_0 
              #                     1484 untrack temp_41_cmp_69_0 
              #                     1483 untrack temp_114_ret_of_g_64_0 
              #                     1482 untrack temp_118_ret_of_g_64_0 
              #                     1481 untrack temp_106_ret_of_g_64_0 
              #                     1480 untrack temp_44_i32_to_bool_69_0 
              #                     1479 untrack temp_124_i32_to_bool_64_0 
              #                     1478 untrack temp_109_ret_of_g_64_0 
              #                     1477 untrack temp_133_i32_to_bool_64_0 
              #                     1476 untrack temp_127_i32_to_bool_64_0 
              #                     1475 untrack temp_111_ret_of_g_64_0 
              #                     1474 untrack temp_107_ret_of_g_64_0 
              #                     1473 untrack temp_130_i32_to_bool_64_0 
              #                     1472 untrack temp_105_ret_of_g_64_0 
              #                     1471 untrack temp_142_i32_to_bool_64_0 
              #                     1470 untrack temp_112_ret_of_g_64_0 
              #                     1469 untrack temp_140_i32_to_bool_64_0 
              #                     1468 untrack temp_115_ret_of_g_64_0 
              #                     1467 untrack temp_117_ret_of_g_64_0 
              #                     1466 untrack temp_131_i32_to_bool_64_0 
              #                     1465 untrack temp_36_arithop_69_0 
              #                     1464 untrack temp_136_i32_to_bool_64_0 
              #                     1463 untrack temp_129_i32_to_bool_64_0 
              #                     1462 untrack temp_141_i32_to_bool_64_0 
              #                     1461 untrack temp_42_arithop_69_0 
              #                     1460 untrack temp_126_i32_to_bool_64_0 
              #                     1459 untrack temp_40_cmp_61_0 
              #                     1458 untrack temp_116_ret_of_g_64_0 
              #                     1457 untrack temp_143_i32_to_bool_64_0 
              #                     1456 untrack temp_108_ret_of_g_64_0 
              #                     1455 untrack temp_121_ret_of_g_64_0 
              #                     1454 untrack temp_128_i32_to_bool_64_0 
              #                     1453 untrack temp_113_ret_of_g_64_0 
              #                     1452 untrack temp_115_ret_of_g_64_0 
              #                     1451 untrack temp_134_i32_to_bool_64_0 
              #                     1450 untrack temp_40_cmp_61_0 
              #                     1449 untrack temp_138_i32_to_bool_64_0 
              #                     1448 untrack temp_124_i32_to_bool_64_0 
              #                     1447 untrack temp_42_arithop_69_0 
              #                     1446 untrack temp_111_ret_of_g_64_0 
              #                     1445 untrack temp_41_cmp_69_0 
              #                     1444 untrack temp_36_arithop_69_0 
              #                     1443 untrack temp_44_i32_to_bool_69_0 
              #                     1442 untrack temp_135_i32_to_bool_64_0 
              #                     1441 untrack temp_116_ret_of_g_64_0 
              #                     1440 untrack temp_136_i32_to_bool_64_0 
              #                     1439 untrack temp_137_i32_to_bool_64_0 
              #                     1438 untrack temp_130_i32_to_bool_64_0 
              #                     1437 untrack temp_128_i32_to_bool_64_0 
              #                     1436 untrack temp_120_ret_of_g_64_0 
              #                     1435 untrack temp_132_i32_to_bool_64_0 
              #                     1434 untrack temp_108_ret_of_g_64_0 
              #                     1433 untrack temp_119_ret_of_g_64_0 
              #                     1432 untrack temp_125_i32_to_bool_64_0 
              #                     1431 untrack temp_113_ret_of_g_64_0 
              #                     1430 untrack temp_118_ret_of_g_64_0 
              #                     1429 untrack temp_126_i32_to_bool_64_0 
              #                     1428 untrack temp_112_ret_of_g_64_0 
              #                     1427 untrack temp_114_ret_of_g_64_0 
              #                     1426 untrack temp_117_ret_of_g_64_0 
              #                     1425 untrack temp_140_i32_to_bool_64_0 
              #                     1424 untrack temp_43_ret_of_f_69_0 
              #                     1423 untrack temp_133_i32_to_bool_64_0 
              #                     1422 untrack temp_141_i32_to_bool_64_0 
              #                     1421 untrack temp_127_i32_to_bool_64_0 
              #                     1420 untrack temp_143_i32_to_bool_64_0 
              #                     1419 untrack temp_122_ret_of_g_64_0 
              #                     1418 untrack temp_104_ret_of_g_64_0 
              #                     1417 untrack temp_129_i32_to_bool_64_0 
              #                     1416 untrack temp_142_i32_to_bool_64_0 
              #                     1415 untrack temp_139_i32_to_bool_64_0 
              #                     1414 untrack temp_105_ret_of_g_64_0 
              #                     1413 untrack temp_110_ret_of_g_64_0 
              #                     1412 untrack temp_123_ret_of_g_64_0 
              #                     1411 untrack temp_106_ret_of_g_64_0 
              #                     1410 untrack temp_131_i32_to_bool_64_0 
              #                     1409 untrack temp_109_ret_of_g_64_0 
              #                     1408 untrack temp_107_ret_of_g_64_0 
              #                     1407 untrack temp_121_ret_of_g_64_0 
              #                     1406 untrack temp_113_ret_of_g_64_0 
              #                     1405 untrack temp_44_i32_to_bool_69_0 
              #                     1404 untrack temp_115_ret_of_g_64_0 
              #                     1403 untrack temp_129_i32_to_bool_64_0 
              #                     1402 untrack temp_40_cmp_61_0 
              #                     1401 untrack temp_130_i32_to_bool_64_0 
              #                     1400 untrack temp_121_ret_of_g_64_0 
              #                     1399 untrack temp_138_i32_to_bool_64_0 
              #                     1398 untrack temp_42_arithop_69_0 
              #                     1397 untrack temp_105_ret_of_g_64_0 
              #                     1396 untrack temp_132_i32_to_bool_64_0 
              #                     1395 untrack temp_133_i32_to_bool_64_0 
              #                     1394 untrack temp_142_i32_to_bool_64_0 
              #                     1393 untrack temp_120_ret_of_g_64_0 
              #                     1392 untrack temp_139_i32_to_bool_64_0 
              #                     1391 untrack temp_123_ret_of_g_64_0 
              #                     1390 untrack temp_41_cmp_69_0 
              #                     1389 untrack temp_122_ret_of_g_64_0 
              #                     1388 untrack temp_116_ret_of_g_64_0 
              #                     1387 untrack temp_131_i32_to_bool_64_0 
              #                     1386 untrack temp_127_i32_to_bool_64_0 
              #                     1385 untrack temp_143_i32_to_bool_64_0 
              #                     1384 untrack temp_135_i32_to_bool_64_0 
              #                     1383 untrack temp_140_i32_to_bool_64_0 
              #                     1382 untrack temp_119_ret_of_g_64_0 
              #                     1381 untrack temp_137_i32_to_bool_64_0 
              #                     1380 untrack temp_109_ret_of_g_64_0 
              #                     1379 untrack temp_43_ret_of_f_69_0 
              #                     1378 untrack temp_128_i32_to_bool_64_0 
              #                     1377 untrack temp_114_ret_of_g_64_0 
              #                     1376 untrack temp_124_i32_to_bool_64_0 
              #                     1375 untrack temp_106_ret_of_g_64_0 
              #                     1374 untrack temp_112_ret_of_g_64_0 
              #                     1373 untrack temp_117_ret_of_g_64_0 
              #                     1372 untrack temp_107_ret_of_g_64_0 
              #                     1371 untrack temp_134_i32_to_bool_64_0 
              #                     1370 untrack temp_118_ret_of_g_64_0 
              #                     1369 untrack temp_136_i32_to_bool_64_0 
              #                     1368 untrack temp_104_ret_of_g_64_0 
              #                     1367 untrack temp_108_ret_of_g_64_0 
              #                     1366 untrack temp_111_ret_of_g_64_0 
              #                     1365 untrack temp_110_ret_of_g_64_0 
              #                     1364 untrack temp_125_i32_to_bool_64_0 
              #                     1363 untrack temp_141_i32_to_bool_64_0 
              #                     1362 untrack temp_36_arithop_69_0 
              #                     1361 untrack temp_126_i32_to_bool_64_0 
              #                     1360 untrack temp_140_i32_to_bool_64_0 
              #                     1359 untrack temp_119_ret_of_g_64_0 
              #                     1358 untrack temp_125_i32_to_bool_64_0 
              #                     1357 untrack temp_111_ret_of_g_64_0 
              #                     1356 untrack temp_136_i32_to_bool_64_0 
              #                     1355 untrack temp_107_ret_of_g_64_0 
              #                     1354 untrack temp_128_i32_to_bool_64_0 
              #                     1353 untrack temp_134_i32_to_bool_64_0 
              #                     1352 untrack temp_139_i32_to_bool_64_0 
              #                     1351 untrack temp_118_ret_of_g_64_0 
              #                     1350 untrack temp_122_ret_of_g_64_0 
              #                     1349 untrack temp_132_i32_to_bool_64_0 
              #                     1348 untrack temp_117_ret_of_g_64_0 
              #                     1347 untrack temp_127_i32_to_bool_64_0 
              #                     1346 untrack temp_114_ret_of_g_64_0 
              #                     1345 untrack temp_143_i32_to_bool_64_0 
              #                     1344 untrack temp_131_i32_to_bool_64_0 
              #                     1343 untrack temp_105_ret_of_g_64_0 
              #                     1342 untrack temp_109_ret_of_g_64_0 
              #                     1341 untrack temp_42_arithop_69_0 
              #                     1340 untrack temp_104_ret_of_g_64_0 
              #                     1339 untrack temp_133_i32_to_bool_64_0 
              #                     1338 untrack temp_44_i32_to_bool_69_0 
              #                     1337 untrack temp_124_i32_to_bool_64_0 
              #                     1336 untrack temp_113_ret_of_g_64_0 
              #                     1335 untrack temp_112_ret_of_g_64_0 
              #                     1334 untrack temp_141_i32_to_bool_64_0 
              #                     1333 untrack temp_138_i32_to_bool_64_0 
              #                     1332 untrack temp_120_ret_of_g_64_0 
              #                     1331 untrack temp_135_i32_to_bool_64_0 
              #                     1330 untrack temp_137_i32_to_bool_64_0 
              #                     1329 untrack temp_129_i32_to_bool_64_0 
              #                     1328 untrack temp_43_ret_of_f_69_0 
              #                     1327 untrack temp_126_i32_to_bool_64_0 
              #                     1326 untrack temp_108_ret_of_g_64_0 
              #                     1325 untrack temp_121_ret_of_g_64_0 
              #                     1324 untrack temp_40_cmp_61_0 
              #                     1323 untrack temp_115_ret_of_g_64_0 
              #                     1322 untrack temp_106_ret_of_g_64_0 
              #                     1321 untrack temp_110_ret_of_g_64_0 
              #                     1320 untrack temp_116_ret_of_g_64_0 
              #                     1319 untrack temp_130_i32_to_bool_64_0 
              #                     1318 untrack temp_36_arithop_69_0 
              #                     1317 untrack temp_123_ret_of_g_64_0 
              #                     1316 untrack temp_142_i32_to_bool_64_0 
              #                     1315 untrack temp_41_cmp_69_0 
              #                     1314 untrack temp_138_i32_to_bool_64_0 
              #                     1313 untrack temp_133_i32_to_bool_64_0 
              #                     1312 untrack temp_113_ret_of_g_64_0 
              #                     1311 untrack temp_123_ret_of_g_64_0 
              #                     1310 untrack temp_120_ret_of_g_64_0 
              #                     1309 untrack temp_109_ret_of_g_64_0 
              #                     1308 untrack temp_36_arithop_69_0 
              #                     1307 untrack temp_115_ret_of_g_64_0 
              #                     1306 untrack temp_116_ret_of_g_64_0 
              #                     1305 untrack temp_44_i32_to_bool_69_0 
              #                     1304 untrack temp_132_i32_to_bool_64_0 
              #                     1303 untrack temp_107_ret_of_g_64_0 
              #                     1302 untrack temp_43_ret_of_f_69_0 
              #                     1301 untrack temp_135_i32_to_bool_64_0 
              #                     1300 untrack temp_141_i32_to_bool_64_0 
              #                     1299 untrack temp_125_i32_to_bool_64_0 
              #                     1298 untrack temp_106_ret_of_g_64_0 
              #                     1297 untrack temp_118_ret_of_g_64_0 
              #                     1296 untrack temp_110_ret_of_g_64_0 
              #                     1295 untrack temp_111_ret_of_g_64_0 
              #                     1294 untrack temp_131_i32_to_bool_64_0 
              #                     1293 untrack temp_41_cmp_69_0 
              #                     1292 untrack temp_42_arithop_69_0 
              #                     1291 untrack temp_40_cmp_61_0 
              #                     1290 untrack temp_127_i32_to_bool_64_0 
              #                     1289 untrack temp_112_ret_of_g_64_0 
              #                     1288 untrack temp_122_ret_of_g_64_0 
              #                     1287 untrack temp_108_ret_of_g_64_0 
              #                     1286 untrack temp_136_i32_to_bool_64_0 
              #                     1285 untrack temp_137_i32_to_bool_64_0 
              #                     1284 untrack temp_143_i32_to_bool_64_0 
              #                     1283 untrack temp_119_ret_of_g_64_0 
              #                     1282 untrack temp_105_ret_of_g_64_0 
              #                     1281 untrack temp_114_ret_of_g_64_0 
              #                     1280 untrack temp_140_i32_to_bool_64_0 
              #                     1279 untrack temp_129_i32_to_bool_64_0 
              #                     1278 untrack temp_130_i32_to_bool_64_0 
              #                     1277 untrack temp_124_i32_to_bool_64_0 
              #                     1276 untrack temp_104_ret_of_g_64_0 
              #                     1275 untrack temp_126_i32_to_bool_64_0 
              #                     1274 untrack temp_117_ret_of_g_64_0 
              #                     1273 untrack temp_142_i32_to_bool_64_0 
              #                     1272 untrack temp_139_i32_to_bool_64_0 
              #                     1271 untrack temp_121_ret_of_g_64_0 
              #                     1270 untrack temp_128_i32_to_bool_64_0 
              #                     1269 untrack temp_134_i32_to_bool_64_0 
              #                     1268 untrack temp_111_ret_of_g_64_0 
              #                     1267 untrack temp_138_i32_to_bool_64_0 
              #                     1266 untrack temp_44_i32_to_bool_69_0 
              #                     1265 untrack temp_135_i32_to_bool_64_0 
              #                     1264 untrack temp_42_arithop_69_0 
              #                     1263 untrack temp_105_ret_of_g_64_0 
              #                     1262 untrack temp_119_ret_of_g_64_0 
              #                     1261 untrack temp_131_i32_to_bool_64_0 
              #                     1260 untrack temp_126_i32_to_bool_64_0 
              #                     1259 untrack temp_116_ret_of_g_64_0 
              #                     1258 untrack temp_140_i32_to_bool_64_0 
              #                     1257 untrack temp_143_i32_to_bool_64_0 
              #                     1256 untrack temp_121_ret_of_g_64_0 
              #                     1255 untrack temp_142_i32_to_bool_64_0 
              #                     1254 untrack temp_43_ret_of_f_69_0 
              #                     1253 untrack temp_122_ret_of_g_64_0 
              #                     1252 untrack temp_110_ret_of_g_64_0 
              #                     1251 untrack temp_36_arithop_69_0 
              #                     1250 untrack temp_104_ret_of_g_64_0 
              #                     1249 untrack temp_141_i32_to_bool_64_0 
              #                     1248 untrack temp_132_i32_to_bool_64_0 
              #                     1247 untrack temp_128_i32_to_bool_64_0 
              #                     1246 untrack temp_41_cmp_69_0 
              #                     1245 untrack temp_113_ret_of_g_64_0 
              #                     1244 untrack temp_117_ret_of_g_64_0 
              #                     1243 untrack temp_109_ret_of_g_64_0 
              #                     1242 untrack temp_127_i32_to_bool_64_0 
              #                     1241 untrack temp_118_ret_of_g_64_0 
              #                     1240 untrack temp_130_i32_to_bool_64_0 
              #                     1239 untrack temp_133_i32_to_bool_64_0 
              #                     1238 untrack temp_139_i32_to_bool_64_0 
              #                     1237 untrack temp_112_ret_of_g_64_0 
              #                     1236 untrack temp_124_i32_to_bool_64_0 
              #                     1235 untrack temp_137_i32_to_bool_64_0 
              #                     1234 untrack temp_108_ret_of_g_64_0 
              #                     1233 untrack temp_136_i32_to_bool_64_0 
              #                     1232 untrack temp_40_cmp_61_0 
              #                     1231 untrack temp_134_i32_to_bool_64_0 
              #                     1230 untrack temp_125_i32_to_bool_64_0 
              #                     1229 untrack temp_107_ret_of_g_64_0 
              #                     1228 untrack temp_114_ret_of_g_64_0 
              #                     1227 untrack temp_120_ret_of_g_64_0 
              #                     1226 untrack temp_115_ret_of_g_64_0 
              #                     1225 untrack temp_106_ret_of_g_64_0 
              #                     1224 untrack temp_129_i32_to_bool_64_0 
              #                     1223 untrack temp_123_ret_of_g_64_0 
              #                     1222 untrack temp_40_cmp_61_0 
              #                     1221 untrack temp_119_ret_of_g_64_0 
              #                     1220 untrack temp_124_i32_to_bool_64_0 
              #                     1219 untrack temp_123_ret_of_g_64_0 
              #                     1218 untrack temp_43_ret_of_f_69_0 
              #                     1217 untrack temp_121_ret_of_g_64_0 
              #                     1216 untrack temp_125_i32_to_bool_64_0 
              #                     1215 untrack temp_36_arithop_69_0 
              #                     1214 untrack temp_107_ret_of_g_64_0 
              #                     1213 untrack temp_133_i32_to_bool_64_0 
              #                     1212 untrack temp_122_ret_of_g_64_0 
              #                     1211 untrack temp_130_i32_to_bool_64_0 
              #                     1210 untrack temp_140_i32_to_bool_64_0 
              #                     1209 untrack temp_108_ret_of_g_64_0 
              #                     1208 untrack temp_142_i32_to_bool_64_0 
              #                     1207 untrack temp_132_i32_to_bool_64_0 
              #                     1206 untrack temp_105_ret_of_g_64_0 
              #                     1205 untrack temp_116_ret_of_g_64_0 
              #                     1204 untrack temp_109_ret_of_g_64_0 
              #                     1203 untrack temp_139_i32_to_bool_64_0 
              #                     1202 untrack temp_41_cmp_69_0 
              #                     1201 untrack temp_104_ret_of_g_64_0 
              #                     1200 untrack temp_129_i32_to_bool_64_0 
              #                     1199 untrack temp_118_ret_of_g_64_0 
              #                     1198 untrack temp_131_i32_to_bool_64_0 
              #                     1197 untrack temp_42_arithop_69_0 
              #                     1196 untrack temp_134_i32_to_bool_64_0 
              #                     1195 untrack temp_113_ret_of_g_64_0 
              #                     1194 untrack temp_120_ret_of_g_64_0 
              #                     1193 untrack temp_126_i32_to_bool_64_0 
              #                     1192 untrack temp_114_ret_of_g_64_0 
              #                     1191 untrack temp_117_ret_of_g_64_0 
              #                     1190 untrack temp_135_i32_to_bool_64_0 
              #                     1189 untrack temp_143_i32_to_bool_64_0 
              #                     1188 untrack temp_141_i32_to_bool_64_0 
              #                     1187 untrack temp_106_ret_of_g_64_0 
              #                     1186 untrack temp_137_i32_to_bool_64_0 
              #                     1185 untrack temp_44_i32_to_bool_69_0 
              #                     1184 untrack temp_110_ret_of_g_64_0 
              #                     1183 untrack temp_127_i32_to_bool_64_0 
              #                     1182 untrack temp_111_ret_of_g_64_0 
              #                     1181 untrack temp_115_ret_of_g_64_0 
              #                     1180 untrack temp_112_ret_of_g_64_0 
              #                     1179 untrack temp_128_i32_to_bool_64_0 
              #                     1178 untrack temp_136_i32_to_bool_64_0 
              #                     1177 untrack temp_138_i32_to_bool_64_0 
              #                     1176 untrack temp_133_i32_to_bool_64_0 
              #                     1175 untrack temp_104_ret_of_g_64_0 
              #                     1174 untrack temp_116_ret_of_g_64_0 
              #                     1173 untrack temp_121_ret_of_g_64_0 
              #                     1172 untrack temp_136_i32_to_bool_64_0 
              #                     1171 untrack temp_111_ret_of_g_64_0 
              #                     1170 untrack temp_132_i32_to_bool_64_0 
              #                     1169 untrack temp_117_ret_of_g_64_0 
              #                     1168 untrack temp_124_i32_to_bool_64_0 
              #                     1167 untrack temp_143_i32_to_bool_64_0 
              #                     1166 untrack temp_107_ret_of_g_64_0 
              #                     1165 untrack temp_126_i32_to_bool_64_0 
              #                     1164 untrack temp_44_i32_to_bool_69_0 
              #                     1163 untrack temp_128_i32_to_bool_64_0 
              #                     1162 untrack temp_123_ret_of_g_64_0 
              #                     1161 untrack temp_115_ret_of_g_64_0 
              #                     1160 untrack temp_120_ret_of_g_64_0 
              #                     1159 untrack temp_105_ret_of_g_64_0 
              #                     1158 untrack temp_131_i32_to_bool_64_0 
              #                     1157 untrack temp_130_i32_to_bool_64_0 
              #                     1156 untrack temp_141_i32_to_bool_64_0 
              #                     1155 untrack temp_122_ret_of_g_64_0 
              #                     1154 untrack temp_134_i32_to_bool_64_0 
              #                     1153 untrack temp_140_i32_to_bool_64_0 
              #                     1152 untrack temp_110_ret_of_g_64_0 
              #                     1151 untrack temp_108_ret_of_g_64_0 
              #                     1150 untrack temp_135_i32_to_bool_64_0 
              #                     1149 untrack temp_129_i32_to_bool_64_0 
              #                     1148 untrack temp_106_ret_of_g_64_0 
              #                     1147 untrack temp_42_arithop_69_0 
              #                     1146 untrack temp_137_i32_to_bool_64_0 
              #                     1145 untrack temp_36_arithop_69_0 
              #                     1144 untrack temp_142_i32_to_bool_64_0 
              #                     1143 untrack temp_127_i32_to_bool_64_0 
              #                     1142 untrack temp_41_cmp_69_0 
              #                     1141 untrack temp_112_ret_of_g_64_0 
              #                     1140 untrack temp_118_ret_of_g_64_0 
              #                     1139 untrack temp_40_cmp_61_0 
              #                     1138 untrack temp_125_i32_to_bool_64_0 
              #                     1137 untrack temp_109_ret_of_g_64_0 
              #                     1136 untrack temp_119_ret_of_g_64_0 
              #                     1135 untrack temp_43_ret_of_f_69_0 
              #                     1134 untrack temp_113_ret_of_g_64_0 
              #                     1133 untrack temp_139_i32_to_bool_64_0 
              #                     1132 untrack temp_114_ret_of_g_64_0 
              #                     1131 untrack temp_138_i32_to_bool_64_0 
              #                     1130 untrack temp_44_i32_to_bool_69_0 
              #                     1129 untrack temp_139_i32_to_bool_64_0 
              #                     1128 untrack temp_117_ret_of_g_64_0 
              #                     1127 untrack temp_134_i32_to_bool_64_0 
              #                     1126 untrack temp_123_ret_of_g_64_0 
              #                     1125 untrack temp_36_arithop_69_0 
              #                     1124 untrack temp_133_i32_to_bool_64_0 
              #                     1123 untrack temp_132_i32_to_bool_64_0 
              #                     1122 untrack temp_120_ret_of_g_64_0 
              #                     1121 untrack temp_143_i32_to_bool_64_0 
              #                     1120 untrack temp_107_ret_of_g_64_0 
              #                     1119 untrack temp_105_ret_of_g_64_0 
              #                     1118 untrack temp_104_ret_of_g_64_0 
              #                     1117 untrack temp_106_ret_of_g_64_0 
              #                     1116 untrack temp_113_ret_of_g_64_0 
              #                     1115 untrack temp_42_arithop_69_0 
              #                     1114 untrack temp_40_cmp_61_0 
              #                     1113 untrack temp_118_ret_of_g_64_0 
              #                     1112 untrack temp_43_ret_of_f_69_0 
              #                     1111 untrack temp_121_ret_of_g_64_0 
              #                     1110 untrack temp_135_i32_to_bool_64_0 
              #                     1109 untrack temp_126_i32_to_bool_64_0 
              #                     1108 untrack temp_125_i32_to_bool_64_0 
              #                     1107 untrack temp_137_i32_to_bool_64_0 
              #                     1106 untrack temp_112_ret_of_g_64_0 
              #                     1105 untrack temp_124_i32_to_bool_64_0 
              #                     1104 untrack temp_138_i32_to_bool_64_0 
              #                     1103 untrack temp_114_ret_of_g_64_0 
              #                     1102 untrack temp_131_i32_to_bool_64_0 
              #                     1101 untrack temp_41_cmp_69_0 
              #                     1100 untrack temp_140_i32_to_bool_64_0 
              #                     1099 untrack temp_127_i32_to_bool_64_0 
              #                     1098 untrack temp_122_ret_of_g_64_0 
              #                     1097 untrack temp_130_i32_to_bool_64_0 
              #                     1096 untrack temp_110_ret_of_g_64_0 
              #                     1095 untrack temp_111_ret_of_g_64_0 
              #                     1094 untrack temp_136_i32_to_bool_64_0 
              #                     1093 untrack temp_109_ret_of_g_64_0 
              #                     1092 untrack temp_119_ret_of_g_64_0 
              #                     1091 untrack temp_128_i32_to_bool_64_0 
              #                     1090 untrack temp_108_ret_of_g_64_0 
              #                     1089 untrack temp_116_ret_of_g_64_0 
              #                     1088 untrack temp_129_i32_to_bool_64_0 
              #                     1087 untrack temp_141_i32_to_bool_64_0 
              #                     1086 untrack temp_115_ret_of_g_64_0 
              #                     1085 untrack temp_142_i32_to_bool_64_0 
              #                          jump label: branch_short_circuit_c_false_617 
    j       .branch_short_circuit_c_false_617
              #                    regtab  released_gpr_count:16,released_fpr_count:24
              #                     457  label branch_short_circuit_c_false_617: 
.branch_short_circuit_c_false_617:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:16,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     188  temp_37_arithop_63_0 = Add i32 i_51_4, 1_0 
              #                    occupy a0 with i_51_4
              #                    load from i_51_4 in mem


    lw      a0,448(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_37_arithop_63_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     189  (nop) 
              #                     989  i_51_4 = i32 temp_37_arithop_63_0 
              #                    occupy a2 with temp_37_arithop_63_0
              #                    occupy a0 with i_51_4
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_62 
              #                    occupy a2 with temp_37_arithop_63_0
              #                    store to temp_37_arithop_63_0 in mem offset legal
    sw      a2,384(sp)
              #                    release a2 with temp_37_arithop_63_0
              #                    occupy a2 with temp_39_cmp_53_0
              #                    load from temp_39_cmp_53_0 in mem


    lb      a2,379(sp)
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     548  label branch_short_circuit_p_false_509: 
.branch_short_circuit_p_false_509:
              #                     415  temp_105_ret_of_g_64_0 =  Call i32 g_0(1_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     797  mu array_0_29:415 
              #                     798  mu sum_0_31:415 
              #                     799  array_0_32 = chi array_0_29:415 
              #                     800  sum_0_34 = chi sum_0_31:415 
              #                     542  temp_142_i32_to_bool_64_0 = icmp i32 Ne temp_105_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_105_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_142_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     550  br i1 temp_142_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_515 
              #                    occupy a2 with temp_142_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_105_ret_of_g_64_0
              #                    store to temp_105_ret_of_g_64_0 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with temp_105_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_142_i32_to_bool_64_0
              #                    store to temp_142_i32_to_bool_64_0 in mem offset legal
    sb      a2,105(sp)
              #                    release a2 with temp_142_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_142_i32_to_bool_64_0
              #                    load from temp_142_i32_to_bool_64_0 in mem


    lb      a1,105(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_515
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_142_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     543  label branch_short_circuit_p_false_515: 
.branch_short_circuit_p_false_515:
              #                     417  temp_106_ret_of_g_64_0 =  Call i32 g_0(2_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_142_i32_to_bool_64_0
              #                    store to temp_142_i32_to_bool_64_0 in mem offset legal
    sb      a1,105(sp)
              #                    release a1 with temp_142_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     801  mu array_0_32:417 
              #                     802  mu sum_0_34:417 
              #                     803  array_0_33 = chi array_0_32:417 
              #                     804  sum_0_35 = chi sum_0_34:417 
              #                     537  temp_141_i32_to_bool_64_0 = icmp i32 Ne temp_106_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_106_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_141_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     545  br i1 temp_141_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_521 
              #                    occupy a2 with temp_141_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_106_ret_of_g_64_0
              #                    store to temp_106_ret_of_g_64_0 in mem offset legal
    sw      a0,192(sp)
              #                    release a0 with temp_106_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_141_i32_to_bool_64_0
              #                    store to temp_141_i32_to_bool_64_0 in mem offset legal
    sb      a2,106(sp)
              #                    release a2 with temp_141_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_141_i32_to_bool_64_0
              #                    load from temp_141_i32_to_bool_64_0 in mem


    lb      a1,106(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_521
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_141_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     538  label branch_short_circuit_p_false_521: 
.branch_short_circuit_p_false_521:
              #                     419  temp_107_ret_of_g_64_0 =  Call i32 g_0(3_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_141_i32_to_bool_64_0
              #                    store to temp_141_i32_to_bool_64_0 in mem offset legal
    sb      a1,106(sp)
              #                    release a1 with temp_141_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     805  mu array_0_33:419 
              #                     806  mu sum_0_35:419 
              #                     807  array_0_34 = chi array_0_33:419 
              #                     808  sum_0_36 = chi sum_0_35:419 
              #                     532  temp_140_i32_to_bool_64_0 = icmp i32 Ne temp_107_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_107_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_140_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     540  br i1 temp_140_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_527 
              #                    occupy a2 with temp_140_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_107_ret_of_g_64_0
              #                    store to temp_107_ret_of_g_64_0 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_107_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_140_i32_to_bool_64_0
              #                    store to temp_140_i32_to_bool_64_0 in mem offset legal
    sb      a2,107(sp)
              #                    release a2 with temp_140_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_140_i32_to_bool_64_0
              #                    load from temp_140_i32_to_bool_64_0 in mem


    lb      a1,107(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_527
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_140_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     533  label branch_short_circuit_p_false_527: 
.branch_short_circuit_p_false_527:
              #                     421  temp_108_ret_of_g_64_0 =  Call i32 g_0(4_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_140_i32_to_bool_64_0
              #                    store to temp_140_i32_to_bool_64_0 in mem offset legal
    sb      a1,107(sp)
              #                    release a1 with temp_140_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     809  mu array_0_34:421 
              #                     810  mu sum_0_36:421 
              #                     811  array_0_35 = chi array_0_34:421 
              #                     812  sum_0_37 = chi sum_0_36:421 
              #                     527  temp_139_i32_to_bool_64_0 = icmp i32 Ne temp_108_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_108_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_139_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     535  br i1 temp_139_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_533 
              #                    occupy a2 with temp_139_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_108_ret_of_g_64_0
              #                    store to temp_108_ret_of_g_64_0 in mem offset legal
    sw      a0,184(sp)
              #                    release a0 with temp_108_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_139_i32_to_bool_64_0
              #                    store to temp_139_i32_to_bool_64_0 in mem offset legal
    sb      a2,108(sp)
              #                    release a2 with temp_139_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_139_i32_to_bool_64_0
              #                    load from temp_139_i32_to_bool_64_0 in mem


    lb      a1,108(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_533
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_139_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     528  label branch_short_circuit_p_false_533: 
.branch_short_circuit_p_false_533:
              #                     423  temp_109_ret_of_g_64_0 =  Call i32 g_0(5_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_139_i32_to_bool_64_0
              #                    store to temp_139_i32_to_bool_64_0 in mem offset legal
    sb      a1,108(sp)
              #                    release a1 with temp_139_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     813  mu array_0_35:423 
              #                     814  mu sum_0_37:423 
              #                     815  array_0_36 = chi array_0_35:423 
              #                     816  sum_0_38 = chi sum_0_37:423 
              #                     522  temp_138_i32_to_bool_64_0 = icmp i32 Ne temp_109_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_109_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_138_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     530  br i1 temp_138_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_539 
              #                    occupy a2 with temp_138_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_109_ret_of_g_64_0
              #                    store to temp_109_ret_of_g_64_0 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with temp_109_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_138_i32_to_bool_64_0
              #                    store to temp_138_i32_to_bool_64_0 in mem offset legal
    sb      a2,109(sp)
              #                    release a2 with temp_138_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_138_i32_to_bool_64_0
              #                    load from temp_138_i32_to_bool_64_0 in mem


    lb      a1,109(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_539
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_138_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     523  label branch_short_circuit_p_false_539: 
.branch_short_circuit_p_false_539:
              #                     425  temp_110_ret_of_g_64_0 =  Call i32 g_0(6_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_138_i32_to_bool_64_0
              #                    store to temp_138_i32_to_bool_64_0 in mem offset legal
    sb      a1,109(sp)
              #                    release a1 with temp_138_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     817  mu array_0_36:425 
              #                     818  mu sum_0_38:425 
              #                     819  array_0_37 = chi array_0_36:425 
              #                     820  sum_0_39 = chi sum_0_38:425 
              #                     517  temp_137_i32_to_bool_64_0 = icmp i32 Ne temp_110_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_110_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_137_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     525  br i1 temp_137_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_545 
              #                    occupy a2 with temp_137_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_110_ret_of_g_64_0
              #                    store to temp_110_ret_of_g_64_0 in mem offset legal
    sw      a0,176(sp)
              #                    release a0 with temp_110_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_137_i32_to_bool_64_0
              #                    store to temp_137_i32_to_bool_64_0 in mem offset legal
    sb      a2,110(sp)
              #                    release a2 with temp_137_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_137_i32_to_bool_64_0
              #                    load from temp_137_i32_to_bool_64_0 in mem


    lb      a1,110(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_545
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_137_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     518  label branch_short_circuit_p_false_545: 
.branch_short_circuit_p_false_545:
              #                     427  temp_111_ret_of_g_64_0 =  Call i32 g_0(7_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_137_i32_to_bool_64_0
              #                    store to temp_137_i32_to_bool_64_0 in mem offset legal
    sb      a1,110(sp)
              #                    release a1 with temp_137_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     821  mu array_0_37:427 
              #                     822  mu sum_0_39:427 
              #                     823  array_0_38 = chi array_0_37:427 
              #                     824  sum_0_40 = chi sum_0_39:427 
              #                     512  temp_136_i32_to_bool_64_0 = icmp i32 Ne temp_111_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_111_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_136_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     520  br i1 temp_136_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_551 
              #                    occupy a2 with temp_136_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_111_ret_of_g_64_0
              #                    store to temp_111_ret_of_g_64_0 in mem offset legal
    sw      a0,172(sp)
              #                    release a0 with temp_111_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_136_i32_to_bool_64_0
              #                    store to temp_136_i32_to_bool_64_0 in mem offset legal
    sb      a2,111(sp)
              #                    release a2 with temp_136_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_136_i32_to_bool_64_0
              #                    load from temp_136_i32_to_bool_64_0 in mem


    lb      a1,111(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_551
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_136_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     513  label branch_short_circuit_p_false_551: 
.branch_short_circuit_p_false_551:
              #                     429  temp_112_ret_of_g_64_0 =  Call i32 g_0(8_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_136_i32_to_bool_64_0
              #                    store to temp_136_i32_to_bool_64_0 in mem offset legal
    sb      a1,111(sp)
              #                    release a1 with temp_136_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     825  mu array_0_38:429 
              #                     826  mu sum_0_40:429 
              #                     827  array_0_39 = chi array_0_38:429 
              #                     828  sum_0_41 = chi sum_0_40:429 
              #                     507  temp_135_i32_to_bool_64_0 = icmp i32 Ne temp_112_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_112_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_135_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     515  br i1 temp_135_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_557 
              #                    occupy a2 with temp_135_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_112_ret_of_g_64_0
              #                    store to temp_112_ret_of_g_64_0 in mem offset legal
    sw      a0,168(sp)
              #                    release a0 with temp_112_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_135_i32_to_bool_64_0
              #                    store to temp_135_i32_to_bool_64_0 in mem offset legal
    sb      a2,112(sp)
              #                    release a2 with temp_135_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_135_i32_to_bool_64_0
              #                    load from temp_135_i32_to_bool_64_0 in mem


    lb      a1,112(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_557
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_135_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     508  label branch_short_circuit_p_false_557: 
.branch_short_circuit_p_false_557:
              #                     431  temp_113_ret_of_g_64_0 =  Call i32 g_0(9_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_135_i32_to_bool_64_0
              #                    store to temp_135_i32_to_bool_64_0 in mem offset legal
    sb      a1,112(sp)
              #                    release a1 with temp_135_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_9_0_0
    li      a0, 9
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     829  mu array_0_39:431 
              #                     830  mu sum_0_41:431 
              #                     831  array_0_40 = chi array_0_39:431 
              #                     832  sum_0_42 = chi sum_0_41:431 
              #                     502  temp_134_i32_to_bool_64_0 = icmp i32 Ne temp_113_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_113_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_134_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     510  br i1 temp_134_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_563 
              #                    occupy a2 with temp_134_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_113_ret_of_g_64_0
              #                    store to temp_113_ret_of_g_64_0 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_113_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_134_i32_to_bool_64_0
              #                    store to temp_134_i32_to_bool_64_0 in mem offset legal
    sb      a2,113(sp)
              #                    release a2 with temp_134_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_134_i32_to_bool_64_0
              #                    load from temp_134_i32_to_bool_64_0 in mem


    lb      a1,113(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_563
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_134_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     503  label branch_short_circuit_p_false_563: 
.branch_short_circuit_p_false_563:
              #                     433  temp_114_ret_of_g_64_0 =  Call i32 g_0(10_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_134_i32_to_bool_64_0
              #                    store to temp_134_i32_to_bool_64_0 in mem offset legal
    sb      a1,113(sp)
              #                    release a1 with temp_134_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     833  mu array_0_40:433 
              #                     834  mu sum_0_42:433 
              #                     835  array_0_41 = chi array_0_40:433 
              #                     836  sum_0_43 = chi sum_0_42:433 
              #                     497  temp_133_i32_to_bool_64_0 = icmp i32 Ne temp_114_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_114_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_133_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     505  br i1 temp_133_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_569 
              #                    occupy a2 with temp_133_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_114_ret_of_g_64_0
              #                    store to temp_114_ret_of_g_64_0 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with temp_114_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_133_i32_to_bool_64_0
              #                    store to temp_133_i32_to_bool_64_0 in mem offset legal
    sb      a2,114(sp)
              #                    release a2 with temp_133_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_133_i32_to_bool_64_0
              #                    load from temp_133_i32_to_bool_64_0 in mem


    lb      a1,114(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_569
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_133_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     498  label branch_short_circuit_p_false_569: 
.branch_short_circuit_p_false_569:
              #                     435  temp_115_ret_of_g_64_0 =  Call i32 g_0(11_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_133_i32_to_bool_64_0
              #                    store to temp_133_i32_to_bool_64_0 in mem offset legal
    sb      a1,114(sp)
              #                    release a1 with temp_133_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_11_0_0
    li      a0, 11
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     837  mu array_0_41:435 
              #                     838  mu sum_0_43:435 
              #                     839  array_0_42 = chi array_0_41:435 
              #                     840  sum_0_44 = chi sum_0_43:435 
              #                     492  temp_132_i32_to_bool_64_0 = icmp i32 Ne temp_115_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_115_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_132_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     500  br i1 temp_132_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_575 
              #                    occupy a2 with temp_132_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_115_ret_of_g_64_0
              #                    store to temp_115_ret_of_g_64_0 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with temp_115_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_132_i32_to_bool_64_0
              #                    store to temp_132_i32_to_bool_64_0 in mem offset legal
    sb      a2,115(sp)
              #                    release a2 with temp_132_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_132_i32_to_bool_64_0
              #                    load from temp_132_i32_to_bool_64_0 in mem


    lb      a1,115(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_575
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_132_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     493  label branch_short_circuit_p_false_575: 
.branch_short_circuit_p_false_575:
              #                     437  temp_116_ret_of_g_64_0 =  Call i32 g_0(12_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_132_i32_to_bool_64_0
              #                    store to temp_132_i32_to_bool_64_0 in mem offset legal
    sb      a1,115(sp)
              #                    release a1 with temp_132_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_12_0_0
    li      a0, 12
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     841  mu array_0_42:437 
              #                     842  mu sum_0_44:437 
              #                     843  array_0_43 = chi array_0_42:437 
              #                     844  sum_0_45 = chi sum_0_44:437 
              #                     487  temp_131_i32_to_bool_64_0 = icmp i32 Ne temp_116_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_116_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_131_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     495  br i1 temp_131_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_581 
              #                    occupy a2 with temp_131_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_116_ret_of_g_64_0
              #                    store to temp_116_ret_of_g_64_0 in mem offset legal
    sw      a0,152(sp)
              #                    release a0 with temp_116_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_131_i32_to_bool_64_0
              #                    store to temp_131_i32_to_bool_64_0 in mem offset legal
    sb      a2,116(sp)
              #                    release a2 with temp_131_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_131_i32_to_bool_64_0
              #                    load from temp_131_i32_to_bool_64_0 in mem


    lb      a1,116(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_581
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_131_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     488  label branch_short_circuit_p_false_581: 
.branch_short_circuit_p_false_581:
              #                     439  temp_117_ret_of_g_64_0 =  Call i32 g_0(13_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_131_i32_to_bool_64_0
              #                    store to temp_131_i32_to_bool_64_0 in mem offset legal
    sb      a1,116(sp)
              #                    release a1 with temp_131_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_13_0_0
    li      a0, 13
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     845  mu array_0_43:439 
              #                     846  mu sum_0_45:439 
              #                     847  array_0_44 = chi array_0_43:439 
              #                     848  sum_0_46 = chi sum_0_45:439 
              #                     482  temp_130_i32_to_bool_64_0 = icmp i32 Ne temp_117_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_117_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_130_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     490  br i1 temp_130_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_587 
              #                    occupy a2 with temp_130_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_117_ret_of_g_64_0
              #                    store to temp_117_ret_of_g_64_0 in mem offset legal
    sw      a0,148(sp)
              #                    release a0 with temp_117_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_130_i32_to_bool_64_0
              #                    store to temp_130_i32_to_bool_64_0 in mem offset legal
    sb      a2,117(sp)
              #                    release a2 with temp_130_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_130_i32_to_bool_64_0
              #                    load from temp_130_i32_to_bool_64_0 in mem


    lb      a1,117(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_587
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_130_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     483  label branch_short_circuit_p_false_587: 
.branch_short_circuit_p_false_587:
              #                     441  temp_118_ret_of_g_64_0 =  Call i32 g_0(14_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_130_i32_to_bool_64_0
              #                    store to temp_130_i32_to_bool_64_0 in mem offset legal
    sb      a1,117(sp)
              #                    release a1 with temp_130_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_14_0_0
    li      a0, 14
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     849  mu array_0_44:441 
              #                     850  mu sum_0_46:441 
              #                     851  array_0_45 = chi array_0_44:441 
              #                     852  sum_0_47 = chi sum_0_46:441 
              #                     477  temp_129_i32_to_bool_64_0 = icmp i32 Ne temp_118_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_118_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_129_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     485  br i1 temp_129_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_593 
              #                    occupy a2 with temp_129_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_118_ret_of_g_64_0
              #                    store to temp_118_ret_of_g_64_0 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with temp_118_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_129_i32_to_bool_64_0
              #                    store to temp_129_i32_to_bool_64_0 in mem offset legal
    sb      a2,118(sp)
              #                    release a2 with temp_129_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_129_i32_to_bool_64_0
              #                    load from temp_129_i32_to_bool_64_0 in mem


    lb      a1,118(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_593
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_129_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     478  label branch_short_circuit_p_false_593: 
.branch_short_circuit_p_false_593:
              #                     443  temp_119_ret_of_g_64_0 =  Call i32 g_0(15_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_129_i32_to_bool_64_0
              #                    store to temp_129_i32_to_bool_64_0 in mem offset legal
    sb      a1,118(sp)
              #                    release a1 with temp_129_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_15_0_0
    li      a0, 15
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     853  mu array_0_45:443 
              #                     854  mu sum_0_47:443 
              #                     855  array_0_46 = chi array_0_45:443 
              #                     856  sum_0_48 = chi sum_0_47:443 
              #                     472  temp_128_i32_to_bool_64_0 = icmp i32 Ne temp_119_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_119_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_128_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     480  br i1 temp_128_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_599 
              #                    occupy a2 with temp_128_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_119_ret_of_g_64_0
              #                    store to temp_119_ret_of_g_64_0 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_119_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_128_i32_to_bool_64_0
              #                    store to temp_128_i32_to_bool_64_0 in mem offset legal
    sb      a2,119(sp)
              #                    release a2 with temp_128_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_128_i32_to_bool_64_0
              #                    load from temp_128_i32_to_bool_64_0 in mem


    lb      a1,119(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_599
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_128_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     473  label branch_short_circuit_p_false_599: 
.branch_short_circuit_p_false_599:
              #                     445  temp_120_ret_of_g_64_0 =  Call i32 g_0(16_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_128_i32_to_bool_64_0
              #                    store to temp_128_i32_to_bool_64_0 in mem offset legal
    sb      a1,119(sp)
              #                    release a1 with temp_128_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_16_0_0
    li      a0, 16
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     857  mu array_0_46:445 
              #                     858  mu sum_0_48:445 
              #                     859  array_0_47 = chi array_0_46:445 
              #                     860  sum_0_49 = chi sum_0_48:445 
              #                     467  temp_127_i32_to_bool_64_0 = icmp i32 Ne temp_120_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_120_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_127_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     475  br i1 temp_127_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_605 
              #                    occupy a2 with temp_127_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_120_ret_of_g_64_0
              #                    store to temp_120_ret_of_g_64_0 in mem offset legal
    sw      a0,136(sp)
              #                    release a0 with temp_120_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_127_i32_to_bool_64_0
              #                    store to temp_127_i32_to_bool_64_0 in mem offset legal
    sb      a2,120(sp)
              #                    release a2 with temp_127_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_127_i32_to_bool_64_0
              #                    load from temp_127_i32_to_bool_64_0 in mem


    lb      a1,120(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_605
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_127_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     468  label branch_short_circuit_p_false_605: 
.branch_short_circuit_p_false_605:
              #                     447  temp_121_ret_of_g_64_0 =  Call i32 g_0(17_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_127_i32_to_bool_64_0
              #                    store to temp_127_i32_to_bool_64_0 in mem offset legal
    sb      a1,120(sp)
              #                    release a1 with temp_127_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_17_0_0
    li      a0, 17
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     861  mu array_0_47:447 
              #                     862  mu sum_0_49:447 
              #                     863  array_0_48 = chi array_0_47:447 
              #                     864  sum_0_50 = chi sum_0_49:447 
              #                     462  temp_126_i32_to_bool_64_0 = icmp i32 Ne temp_121_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_121_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_126_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     470  br i1 temp_126_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_611 
              #                    occupy a2 with temp_126_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_121_ret_of_g_64_0
              #                    store to temp_121_ret_of_g_64_0 in mem offset legal
    sw      a0,132(sp)
              #                    release a0 with temp_121_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_126_i32_to_bool_64_0
              #                    store to temp_126_i32_to_bool_64_0 in mem offset legal
    sb      a2,121(sp)
              #                    release a2 with temp_126_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_126_i32_to_bool_64_0
              #                    load from temp_126_i32_to_bool_64_0 in mem


    lb      a1,121(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_611
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_126_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     463  label branch_short_circuit_p_false_611: 
.branch_short_circuit_p_false_611:
              #                     449  temp_122_ret_of_g_64_0 =  Call i32 g_0(18_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_126_i32_to_bool_64_0
              #                    store to temp_126_i32_to_bool_64_0 in mem offset legal
    sb      a1,121(sp)
              #                    release a1 with temp_126_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_18_0_0
    li      a0, 18
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     865  mu array_0_48:449 
              #                     866  mu sum_0_50:449 
              #                     867  array_0_49 = chi array_0_48:449 
              #                     868  sum_0_51 = chi sum_0_50:449 
              #                     453  temp_124_i32_to_bool_64_0 = icmp i32 Ne temp_122_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_122_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_124_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     465  br i1 temp_124_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_p_false_617 
              #                    occupy a2 with temp_124_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_122_ret_of_g_64_0
              #                    store to temp_122_ret_of_g_64_0 in mem offset legal
    sw      a0,128(sp)
              #                    release a0 with temp_122_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_124_i32_to_bool_64_0
              #                    store to temp_124_i32_to_bool_64_0 in mem offset legal
    sb      a2,123(sp)
              #                    release a2 with temp_124_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_124_i32_to_bool_64_0
              #                    load from temp_124_i32_to_bool_64_0 in mem


    lb      a1,123(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
    j       .branch_short_circuit_p_false_617
              #                    regtab     a0:Freed { symidx: temp_104_ret_of_g_64_0, tracked: true } |     a1:Freed { symidx: temp_124_i32_to_bool_64_0, tracked: true } |     a2:Freed { symidx: temp_143_i32_to_bool_64_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     458  label branch_short_circuit_p_false_617: 
.branch_short_circuit_p_false_617:
              #                     451  temp_123_ret_of_g_64_0 =  Call i32 g_0(19_0, i_51_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_124_i32_to_bool_64_0
              #                    store to temp_124_i32_to_bool_64_0 in mem offset legal
    sb      a1,123(sp)
              #                    release a1 with temp_124_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_19_0_0
    li      a0, 19
              #                    occupy a1 with _anonymous_of_i_51_4_0
              #                    load from i_51_4 in mem


    lw      a1,448(sp)
              #                    arg load ended


    call    g
              #                     869  mu array_0_49:451 
              #                     870  mu sum_0_51:451 
              #                     871  array_0_50 = chi array_0_49:451 
              #                     872  sum_0_52 = chi sum_0_51:451 
              #                     455  temp_125_i32_to_bool_64_0 = icmp i32 Ne temp_123_ret_of_g_64_0, 0_0 
              #                    occupy a0 with temp_123_ret_of_g_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_125_i32_to_bool_64_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     460  br i1 temp_125_i32_to_bool_64_0, label branch_short_circuit_c_true_617, label branch_short_circuit_c_false_617 
              #                    occupy a2 with temp_125_i32_to_bool_64_0
              #                    free a2
              #                    occupy a0 with temp_123_ret_of_g_64_0
              #                    store to temp_123_ret_of_g_64_0 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_123_ret_of_g_64_0
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    load from temp_104_ret_of_g_64_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_125_i32_to_bool_64_0
              #                    store to temp_125_i32_to_bool_64_0 in mem offset legal
    sb      a2,122(sp)
              #                    release a2 with temp_125_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    load from temp_143_i32_to_bool_64_0 in mem


    lb      a2,104(sp)
              #                    occupy a1 with temp_125_i32_to_bool_64_0
              #                    load from temp_125_i32_to_bool_64_0 in mem


    lb      a1,122(sp)
    bnez    a1, .branch_short_circuit_c_true_617
              #                    free a1
              #                    occupy a0 with temp_104_ret_of_g_64_0
              #                    store to temp_104_ret_of_g_64_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_104_ret_of_g_64_0
              #                    occupy a1 with temp_125_i32_to_bool_64_0
              #                    store to temp_125_i32_to_bool_64_0 in mem offset legal
    sb      a1,122(sp)
              #                    release a1 with temp_125_i32_to_bool_64_0
              #                    occupy a2 with temp_143_i32_to_bool_64_0
              #                    store to temp_143_i32_to_bool_64_0 in mem offset legal
    sb      a2,104(sp)
              #                    release a2 with temp_143_i32_to_bool_64_0
    j       .branch_short_circuit_c_false_617
              #                    regtab     a0:Freed { symidx: i_51_4, tracked: true } |     a2:Freed { symidx: temp_39_cmp_53_0, tracked: true } |     a3:Freed { symidx: temp_40_cmp_61_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     203  label while.exit_62: 
.while.exit_62:
              #                     1084 untrack i_51_4 
              #                    occupy a0 with i_51_4
              #                    release a0 with i_51_4
              #                     150  (nop) 
              #                     990  i_51_7 = i32 1_0 
              #                    occupy a0 with i_51_7
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: i_51_7, tracked: true } |     a2:Freed { symidx: temp_39_cmp_53_0, tracked: true } |     a3:Freed { symidx: temp_40_cmp_61_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     218  label while.head_70: 
.while.head_70:
              #                     206  temp_41_cmp_69_0 = icmp i32 Slt i_51_7, 20_0 
              #                    occupy a0 with i_51_7
              #                    occupy a1 with 20_0
    li      a1, 20
              #                    occupy a4 with temp_41_cmp_69_0
    slt     a4,a0,a1
              #                    free a0
              #                    free a1
              #                    free a4
              #                     219  br i1 temp_41_cmp_69_0, label branch_short_circuit_p_true_375, label branch_short_circuit_c_false_375 
              #                    occupy a4 with temp_41_cmp_69_0
              #                    free a4
              #                    occupy a4 with temp_41_cmp_69_0
    bnez    a4, .branch_short_circuit_p_true_375
              #                    free a4
    j       .branch_short_circuit_c_false_375
              #                    regtab     a0:Freed { symidx: i_51_7, tracked: true } |     a2:Freed { symidx: temp_39_cmp_53_0, tracked: true } |     a3:Freed { symidx: temp_40_cmp_61_0, tracked: true } |     a4:Freed { symidx: temp_41_cmp_69_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     215  label branch_short_circuit_p_true_375: 
.branch_short_circuit_p_true_375:
              #                     208  temp_42_arithop_69_0 = Sub i32 i_51_7, 1_0 
              #                    occupy a0 with i_51_7
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a5 with temp_42_arithop_69_0
              #                    regtab:    a0:Occupied { symidx: i_51_7, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_39_cmp_53_0, tracked: true } |     a3:Freed { symidx: temp_40_cmp_61_0, tracked: true } |     a4:Freed { symidx: temp_41_cmp_69_0, tracked: true } |     a5:Occupied { symidx: temp_42_arithop_69_0, tracked: true, occupy_count: 1 } |  released_gpr_count:10,released_fpr_count:24


    subw    a5,a0,a1
              #                    free a0
              #                    free a1
              #                    free a5
              #                     210  temp_43_ret_of_f_69_0 =  Call i32 f_0(temp_42_arithop_69_0, i_51_7) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_51_7
              #                    store to i_51_7 in mem offset legal
    sw      a0,444(sp)
              #                    release a0 with i_51_7
              #                    occupy a2 with temp_39_cmp_53_0
              #                    store to temp_39_cmp_53_0 in mem offset legal
    sb      a2,379(sp)
              #                    release a2 with temp_39_cmp_53_0
              #                    occupy a3 with temp_40_cmp_61_0
              #                    store to temp_40_cmp_61_0 in mem offset legal
    sb      a3,378(sp)
              #                    release a3 with temp_40_cmp_61_0
              #                    occupy a4 with temp_41_cmp_69_0
              #                    store to temp_41_cmp_69_0 in mem offset legal
    sb      a4,377(sp)
              #                    release a4 with temp_41_cmp_69_0
              #                    occupy a5 with temp_42_arithop_69_0
              #                    store to temp_42_arithop_69_0 in mem offset legal
    sw      a5,372(sp)
              #                    release a5 with temp_42_arithop_69_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_42_arithop_69_0_0
              #                    load from temp_42_arithop_69_0 in mem


    lw      a0,372(sp)
              #                    occupy a1 with _anonymous_of_i_51_7_0
              #                    load from i_51_7 in mem


    lw      a1,444(sp)
              #                    arg load ended


    call    f
              #                     947  mu array_0_51:210 
              #                     948  mu sum_0_53:210 
              #                     949  array_0_53 = chi array_0_51:210 
              #                     950  sum_0_92 = chi sum_0_53:210 
              #                     212  temp_44_i32_to_bool_69_0 = icmp i32 Ne temp_43_ret_of_f_69_0, 0_0 
              #                    occupy a0 with temp_43_ret_of_f_69_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_44_i32_to_bool_69_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     217  br i1 temp_44_i32_to_bool_69_0, label branch_short_circuit_c_true_375, label branch_short_circuit_c_false_375 
              #                    occupy a2 with temp_44_i32_to_bool_69_0
              #                    free a2
              #                    occupy a2 with temp_44_i32_to_bool_69_0
    bnez    a2, .branch_short_circuit_c_true_375
              #                    free a2
              #                    occupy a0 with temp_43_ret_of_f_69_0
              #                    store to temp_43_ret_of_f_69_0 in mem offset legal
    sw      a0,368(sp)
              #                    release a0 with temp_43_ret_of_f_69_0
              #                    occupy a0 with i_51_7
              #                    load from i_51_7 in mem


    lw      a0,444(sp)
              #                    occupy a3 with temp_40_cmp_61_0
              #                    load from temp_40_cmp_61_0 in mem


    lb      a3,378(sp)
              #                    occupy a4 with temp_41_cmp_69_0
              #                    load from temp_41_cmp_69_0 in mem


    lb      a4,377(sp)
              #                    occupy a2 with temp_44_i32_to_bool_69_0
              #                    store to temp_44_i32_to_bool_69_0 in mem offset legal
    sb      a2,367(sp)
              #                    release a2 with temp_44_i32_to_bool_69_0
              #                    occupy a2 with temp_39_cmp_53_0
              #                    load from temp_39_cmp_53_0 in mem


    lb      a2,379(sp)
    j       .branch_short_circuit_c_false_375
              #                    regtab     a0:Freed { symidx: temp_43_ret_of_f_69_0, tracked: true } |     a2:Freed { symidx: temp_44_i32_to_bool_69_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     213  label branch_short_circuit_c_true_375: 
.branch_short_circuit_c_true_375:
              #                     185  temp_36_arithop_69_0 = Add i32 i_51_7, 1_0 
              #                    occupy a1 with i_51_7
              #                    load from i_51_7 in mem


    lw      a1,444(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_36_arithop_69_0
    ADDW    a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                     186  (nop) 
              #                     993  i_51_7 = i32 temp_36_arithop_69_0 
              #                    occupy a4 with temp_36_arithop_69_0
              #                    occupy a1 with i_51_7
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: while.head_70 
              #                    occupy a0 with temp_43_ret_of_f_69_0
              #                    store to temp_43_ret_of_f_69_0 in mem offset legal
    sw      a0,368(sp)
              #                    release a0 with temp_43_ret_of_f_69_0
              #                    occupy a1 with i_51_7
              #                    store to i_51_7 in mem offset legal
    sw      a1,444(sp)
              #                    release a1 with i_51_7
              #                    occupy a0 with i_51_7
              #                    load from i_51_7 in mem


    lw      a0,444(sp)
              #                    occupy a3 with temp_40_cmp_61_0
              #                    load from temp_40_cmp_61_0 in mem


    lb      a3,378(sp)
              #                    occupy a4 with temp_36_arithop_69_0
              #                    store to temp_36_arithop_69_0 in mem offset legal
    sw      a4,388(sp)
              #                    release a4 with temp_36_arithop_69_0
              #                    occupy a2 with temp_44_i32_to_bool_69_0
              #                    store to temp_44_i32_to_bool_69_0 in mem offset legal
    sb      a2,367(sp)
              #                    release a2 with temp_44_i32_to_bool_69_0
              #                    occupy a2 with temp_39_cmp_53_0
              #                    load from temp_39_cmp_53_0 in mem


    lb      a2,379(sp)
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: i_51_7, tracked: true } |     a2:Freed { symidx: temp_39_cmp_53_0, tracked: true } |     a3:Freed { symidx: temp_40_cmp_61_0, tracked: true } |     a4:Freed { symidx: temp_41_cmp_69_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     214  label branch_short_circuit_c_false_375: 
.branch_short_circuit_c_false_375:
              #                     2198 untrack i_51_7 
              #                    occupy a0 with i_51_7
              #                    release a0 with i_51_7
              #                     2005 untrack i_51_7 
              #                     152   
              #                     153  (nop) 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a2:Freed { symidx: temp_39_cmp_53_0, tracked: true } |     a3:Freed { symidx: temp_40_cmp_61_0, tracked: true } |     a4:Freed { symidx: temp_41_cmp_69_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     221  temp_45_ret_of_h_74_0 =  Call i32 h_0(0_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_39_cmp_53_0
              #                    store to temp_39_cmp_53_0 in mem offset legal
    sb      a2,379(sp)
              #                    release a2 with temp_39_cmp_53_0
              #                    occupy a3 with temp_40_cmp_61_0
              #                    store to temp_40_cmp_61_0 in mem offset legal
    sb      a3,378(sp)
              #                    release a3 with temp_40_cmp_61_0
              #                    occupy a4 with temp_41_cmp_69_0
              #                    store to temp_41_cmp_69_0 in mem offset legal
    sb      a4,377(sp)
              #                    release a4 with temp_41_cmp_69_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    h
              #                     873  mu array_0_52:221 
              #                     874  mu sum_0_54:221 
              #                     875  sum_0_55 = chi sum_0_54:221 
              #                     225  temp_47_i32_to_bool_74_0 = icmp i32 Ne temp_45_ret_of_h_74_0, 0_0 
              #                    occupy a0 with temp_45_ret_of_h_74_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_47_i32_to_bool_74_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2006 untrack temp_45_ret_of_h_74_0 
              #                    occupy a0 with temp_45_ret_of_h_74_0
              #                    release a0 with temp_45_ret_of_h_74_0
              #                     249  br i1 temp_47_i32_to_bool_74_0, label branch_short_circuit_p_true_394, label branch_short_circuit_c_false_394 
              #                    occupy a2 with temp_47_i32_to_bool_74_0
              #                    free a2
              #                    occupy a2 with temp_47_i32_to_bool_74_0
    bnez    a2, .branch_short_circuit_p_true_394
              #                    free a2
    j       .branch_short_circuit_c_false_394
              #                    regtab     a2:Freed { symidx: temp_47_i32_to_bool_74_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     230  label branch_short_circuit_p_true_394: 
.branch_short_circuit_p_true_394:
              #                     2010 untrack temp_47_i32_to_bool_74_0 
              #                    occupy a2 with temp_47_i32_to_bool_74_0
              #                    release a2 with temp_47_i32_to_bool_74_0
              #                     223  temp_46_ret_of_h_74_0 =  Call i32 h_0(1_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    h
              #                     944  mu array_0_52:223 
              #                     945  mu sum_0_55:223 
              #                     946  sum_0_91 = chi sum_0_55:223 
              #                     227  temp_48_i32_to_bool_74_0 = icmp i32 Ne temp_46_ret_of_h_74_0, 0_0 
              #                    occupy a0 with temp_46_ret_of_h_74_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_48_i32_to_bool_74_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2190 untrack temp_46_ret_of_h_74_0 
              #                    occupy a0 with temp_46_ret_of_h_74_0
              #                    release a0 with temp_46_ret_of_h_74_0
              #                     232  br i1 temp_48_i32_to_bool_74_0, label branch_short_circuit_c_true_394, label branch_short_circuit_c_false_394 
              #                    occupy a2 with temp_48_i32_to_bool_74_0
              #                    free a2
              #                    occupy a2 with temp_48_i32_to_bool_74_0
    bnez    a2, .branch_short_circuit_c_true_394
              #                    free a2
              #                    occupy a2 with temp_48_i32_to_bool_74_0
              #                    store to temp_48_i32_to_bool_74_0 in mem offset legal
    sb      a2,354(sp)
              #                    release a2 with temp_48_i32_to_bool_74_0
              #                    occupy a2 with temp_47_i32_to_bool_74_0
              #                    load from temp_47_i32_to_bool_74_0 in mem


    lb      a2,355(sp)
    j       .branch_short_circuit_c_false_394
              #                    regtab     a2:Freed { symidx: temp_48_i32_to_bool_74_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     228  label branch_short_circuit_c_true_394: 
.branch_short_circuit_c_true_394:
              #                     2196 untrack temp_51_logicnot_74_0 
              #                     2195 untrack temp_52_ret_of_h_74_0 
              #                     2194 untrack temp_48_i32_to_bool_74_0 
              #                    occupy a2 with temp_48_i32_to_bool_74_0
              #                    release a2 with temp_48_i32_to_bool_74_0
              #                     2193 untrack temp_49_ret_of_h_74_0 
              #                     2192 untrack temp_50_booltrans_74_0 
              #                     2191 untrack temp_53_i32_to_bool_74_0 
              #                     2188 untrack temp_53_i32_to_bool_74_0 
              #                     2015 untrack temp_51_logicnot_74_0 
              #                     2014 untrack temp_52_ret_of_h_74_0 
              #                     2013 untrack temp_53_i32_to_bool_74_0 
              #                     183  (nop) 
              #                          jump label: branch_short_circuit_c_false_402 
    j       .branch_short_circuit_c_false_402
              #                    regtab  released_gpr_count:14,released_fpr_count:24
              #                     243  label branch_short_circuit_c_false_402: 
.branch_short_circuit_c_false_402:
              #                     2189 untrack temp_53_i32_to_bool_74_0 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab  released_gpr_count:14,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     155  (nop) 
              #                     156  mu sum_0_60:155 
              #                     158  (nop) 
              #                     159  (nop) 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab  released_gpr_count:14,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     251  temp_54_ret_of_h_79_0 =  Call i32 h_0(4_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    arg load ended


    call    h
              #                     879  mu array_0_52:251 
              #                     880  mu sum_0_60:251 
              #                     881  sum_0_61 = chi sum_0_60:251 
              #                     253  temp_55_booltrans_79_0 = icmp i32 Ne temp_54_ret_of_h_79_0, 0_0 
              #                    occupy a0 with temp_54_ret_of_h_79_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_55_booltrans_79_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2018 untrack temp_54_ret_of_h_79_0 
              #                    occupy a0 with temp_54_ret_of_h_79_0
              #                    release a0 with temp_54_ret_of_h_79_0
              #                     255  temp_56_logicnot_79_0 = xor i1 temp_55_booltrans_79_0, true 
              #                    occupy a2 with temp_55_booltrans_79_0
              #                    occupy a0 with temp_56_logicnot_79_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     2017 untrack temp_55_booltrans_79_0 
              #                    occupy a2 with temp_55_booltrans_79_0
              #                    release a2 with temp_55_booltrans_79_0
              #                     290  br i1 temp_56_logicnot_79_0, label branch_short_circuit_c_true_430, label branch_short_circuit_p_false_417 
              #                    occupy a0 with temp_56_logicnot_79_0
              #                    free a0
              #                    occupy a0 with temp_56_logicnot_79_0
    bnez    a0, .branch_short_circuit_c_true_430
              #                    free a0
    j       .branch_short_circuit_p_false_417
              #                    regtab     a0:Freed { symidx: temp_56_logicnot_79_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     268  label branch_short_circuit_c_true_430: 
.branch_short_circuit_c_true_430:
              #                     2185 untrack temp_64_ret_of_h_79_0 
              #                     2184 untrack temp_65_booltrans_79_0 
              #                     2183 untrack temp_62_i32_to_bool_79_0 
              #                     2182 untrack temp_66_logicnot_79_0 
              #                     2173 untrack temp_66_logicnot_79_0 
              #                     2029 untrack temp_63_i32_to_bool_79_0 
              #                     2028 untrack temp_57_ret_of_h_79_0 
              #                     2027 untrack temp_65_booltrans_79_0 
              #                     2026 untrack temp_66_logicnot_79_0 
              #                     2025 untrack temp_59_booltrans_79_0 
              #                     2024 untrack temp_64_ret_of_h_79_0 
              #                     2023 untrack temp_56_logicnot_79_0 
              #                    occupy a0 with temp_56_logicnot_79_0
              #                    release a0 with temp_56_logicnot_79_0
              #                     2022 untrack temp_62_i32_to_bool_79_0 
              #                     2021 untrack temp_60_logicnot_79_0 
              #                     2020 untrack temp_61_ret_of_h_79_0 
              #                     2019 untrack temp_58_ret_of_h_79_0 
              #                     182  (nop) 
              #                          jump label: branch_short_circuit_c_false_423 
    j       .branch_short_circuit_c_false_423
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                     284  label branch_short_circuit_c_false_423: 
.branch_short_circuit_c_false_423:
              #                     2174 untrack temp_66_logicnot_79_0 
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     161  (nop) 
              #                     162  mu sum_0_63:161 
              #                     164  (nop) 
              #                     165  (nop) 
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     292  temp_67_ret_of_h_84_0 =  Call i32 h_0(9_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_9_0_0
    li      a0, 9
              #                    arg load ended


    call    h
              #                     882  mu array_0_52:292 
              #                     883  mu sum_0_63:292 
              #                     884  sum_0_64 = chi sum_0_63:292 
              #                     300  temp_71_i32_to_bool_84_0 = icmp i32 Ne temp_67_ret_of_h_84_0, 0_0 
              #                    occupy a0 with temp_67_ret_of_h_84_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_71_i32_to_bool_84_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2031 untrack temp_67_ret_of_h_84_0 
              #                    occupy a0 with temp_67_ret_of_h_84_0
              #                    release a0 with temp_67_ret_of_h_84_0
              #                     347  br i1 temp_71_i32_to_bool_84_0, label branch_short_circuit_p_true_451, label branch_short_circuit_c_false_451 
              #                    occupy a2 with temp_71_i32_to_bool_84_0
              #                    free a2
              #                    occupy a2 with temp_71_i32_to_bool_84_0
    bnez    a2, .branch_short_circuit_p_true_451
              #                    free a2
    j       .branch_short_circuit_c_false_451
              #                    regtab     a2:Freed { symidx: temp_71_i32_to_bool_84_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     303  label branch_short_circuit_p_true_451: 
.branch_short_circuit_p_true_451:
              #                     2036 untrack temp_71_i32_to_bool_84_0 
              #                    occupy a2 with temp_71_i32_to_bool_84_0
              #                    release a2 with temp_71_i32_to_bool_84_0
              #                     294  temp_68_ret_of_h_84_0 =  Call i32 h_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    h
              #                     926  mu array_0_52:294 
              #                     927  mu sum_0_64:294 
              #                     928  sum_0_85 = chi sum_0_64:294 
              #                     296  temp_69_booltrans_84_0 = icmp i32 Ne temp_68_ret_of_h_84_0, 0_0 
              #                    occupy a0 with temp_68_ret_of_h_84_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_69_booltrans_84_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2147 untrack temp_68_ret_of_h_84_0 
              #                    occupy a0 with temp_68_ret_of_h_84_0
              #                    release a0 with temp_68_ret_of_h_84_0
              #                     298  temp_70_logicnot_84_0 = xor i1 temp_69_booltrans_84_0, true 
              #                    occupy a2 with temp_69_booltrans_84_0
              #                    occupy a0 with temp_70_logicnot_84_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     2146 untrack temp_69_booltrans_84_0 
              #                    occupy a2 with temp_69_booltrans_84_0
              #                    release a2 with temp_69_booltrans_84_0
              #                     305  br i1 temp_70_logicnot_84_0, label branch_short_circuit_c_true_451, label branch_short_circuit_c_false_451 
              #                    occupy a0 with temp_70_logicnot_84_0
              #                    free a0
              #                    occupy a0 with temp_70_logicnot_84_0
    bnez    a0, .branch_short_circuit_c_true_451
              #                    free a0
              #                    occupy a0 with temp_70_logicnot_84_0
              #                    store to temp_70_logicnot_84_0 in mem offset legal
    sb      a0,290(sp)
              #                    release a0 with temp_70_logicnot_84_0
              #                    occupy a2 with temp_71_i32_to_bool_84_0
              #                    load from temp_71_i32_to_bool_84_0 in mem


    lb      a2,289(sp)
    j       .branch_short_circuit_c_false_451
              #                    regtab     a0:Freed { symidx: temp_70_logicnot_84_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     301  label branch_short_circuit_c_true_451: 
.branch_short_circuit_c_true_451:
              #                     2161 untrack temp_73_booltrans_84_0 
              #                     2160 untrack temp_79_booltrans_84_0 
              #                     2159 untrack temp_70_logicnot_84_0 
              #                    occupy a0 with temp_70_logicnot_84_0
              #                    release a0 with temp_70_logicnot_84_0
              #                     2158 untrack temp_80_logicnot_84_0 
              #                     2157 untrack temp_83_i32_to_bool_84_0 
              #                     2156 untrack temp_72_ret_of_h_84_0 
              #                     2155 untrack temp_81_ret_of_h_84_0 
              #                     2154 untrack temp_75_ret_of_h_84_0 
              #                     2153 untrack temp_82_ret_of_h_84_0 
              #                     2152 untrack temp_76_booltrans_84_0 
              #                     2151 untrack temp_84_i32_to_bool_84_0 
              #                     2150 untrack temp_74_logicnot_84_0 
              #                     2149 untrack temp_77_logicnot_84_0 
              #                     2148 untrack temp_78_ret_of_h_84_0 
              #                     2144 untrack temp_84_i32_to_bool_84_0 
              #                     2136 untrack temp_80_logicnot_84_0 
              #                     2135 untrack temp_83_i32_to_bool_84_0 
              #                     2134 untrack temp_84_i32_to_bool_84_0 
              #                     2133 untrack temp_81_ret_of_h_84_0 
              #                     2132 untrack temp_82_ret_of_h_84_0 
              #                     2128 untrack temp_78_ret_of_h_84_0 
              #                     2127 untrack temp_80_logicnot_84_0 
              #                     2126 untrack temp_84_i32_to_bool_84_0 
              #                     2125 untrack temp_82_ret_of_h_84_0 
              #                     2124 untrack temp_83_i32_to_bool_84_0 
              #                     2123 untrack temp_77_logicnot_84_0 
              #                     2122 untrack temp_81_ret_of_h_84_0 
              #                     2121 untrack temp_79_booltrans_84_0 
              #                     2049 untrack temp_78_ret_of_h_84_0 
              #                     2048 untrack temp_81_ret_of_h_84_0 
              #                     2047 untrack temp_79_booltrans_84_0 
              #                     2046 untrack temp_76_booltrans_84_0 
              #                     2045 untrack temp_75_ret_of_h_84_0 
              #                     2044 untrack temp_77_logicnot_84_0 
              #                     2043 untrack temp_80_logicnot_84_0 
              #                     2042 untrack temp_82_ret_of_h_84_0 
              #                     2041 untrack temp_83_i32_to_bool_84_0 
              #                     2040 untrack temp_74_logicnot_84_0 
              #                     2039 untrack temp_84_i32_to_bool_84_0 
              #                     181  (nop) 
              #                          jump label: branch_short_circuit_c_false_478 
    j       .branch_short_circuit_c_false_478
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                     332  label branch_short_circuit_c_false_478: 
.branch_short_circuit_c_false_478:
              #                     2145 untrack temp_84_i32_to_bool_84_0 
              #                     2141 untrack temp_82_ret_of_h_84_0 
              #                     2140 untrack temp_84_i32_to_bool_84_0 
              #                     2139 untrack temp_83_i32_to_bool_84_0 
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     167  (nop) 
              #                     168  mu sum_0_72:167 
              #                     170  (nop) 
              #                     171  (nop) 
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     349  temp_85_ret_of_h_89_0 =  Call i32 h_0(0_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    h
              #                     888  mu array_0_52:349 
              #                     889  mu sum_0_72:349 
              #                     890  sum_0_73 = chi sum_0_72:349 
              #                     375  temp_94_i32_to_bool_89_0 = icmp i32 Ne temp_85_ret_of_h_89_0, 0_0 
              #                    occupy a0 with temp_85_ret_of_h_89_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_94_i32_to_bool_89_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2051 untrack temp_85_ret_of_h_89_0 
              #                    occupy a0 with temp_85_ret_of_h_89_0
              #                    release a0 with temp_85_ret_of_h_89_0
              #                     409  br i1 temp_94_i32_to_bool_89_0, label branch_short_circuit_p_true_494, label branch_short_circuit_c_false_504 
              #                    occupy a2 with temp_94_i32_to_bool_89_0
              #                    free a2
              #                    occupy a2 with temp_94_i32_to_bool_89_0
    bnez    a2, .branch_short_circuit_p_true_494
              #                    free a2
    j       .branch_short_circuit_c_false_504
              #                    regtab     a2:Freed { symidx: temp_94_i32_to_bool_89_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     376  label branch_short_circuit_p_true_494: 
.branch_short_circuit_p_true_494:
              #                     2061 untrack temp_94_i32_to_bool_89_0 
              #                    occupy a2 with temp_94_i32_to_bool_89_0
              #                    release a2 with temp_94_i32_to_bool_89_0
              #                     351  temp_86_ret_of_h_89_0 =  Call i32 h_0(2_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    arg load ended


    call    h
              #                     905  mu array_0_52:351 
              #                     906  mu sum_0_73:351 
              #                     907  sum_0_82 = chi sum_0_73:351 
              #                     370  temp_93_i32_to_bool_89_0 = icmp i32 Ne temp_86_ret_of_h_89_0, 0_0 
              #                    occupy a0 with temp_86_ret_of_h_89_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_93_i32_to_bool_89_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2090 untrack temp_86_ret_of_h_89_0 
              #                    occupy a0 with temp_86_ret_of_h_89_0
              #                    release a0 with temp_86_ret_of_h_89_0
              #                     378  br i1 temp_93_i32_to_bool_89_0, label branch_short_circuit_p_true_499, label branch_short_circuit_c_false_504 
              #                    occupy a2 with temp_93_i32_to_bool_89_0
              #                    free a2
              #                    occupy a2 with temp_93_i32_to_bool_89_0
    bnez    a2, .branch_short_circuit_p_true_499
              #                    free a2
              #                    occupy a2 with temp_93_i32_to_bool_89_0
              #                    store to temp_93_i32_to_bool_89_0 in mem offset legal
    sb      a2,229(sp)
              #                    release a2 with temp_93_i32_to_bool_89_0
              #                    occupy a2 with temp_94_i32_to_bool_89_0
              #                    load from temp_94_i32_to_bool_89_0 in mem


    lb      a2,228(sp)
    j       .branch_short_circuit_c_false_504
              #                    regtab     a2:Freed { symidx: temp_93_i32_to_bool_89_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     371  label branch_short_circuit_p_true_499: 
.branch_short_circuit_p_true_499:
              #                     2098 untrack temp_93_i32_to_bool_89_0 
              #                    occupy a2 with temp_93_i32_to_bool_89_0
              #                    release a2 with temp_93_i32_to_bool_89_0
              #                     353  temp_87_ret_of_h_89_0 =  Call i32 h_0(3_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    arg load ended


    call    h
              #                     908  mu array_0_52:353 
              #                     909  mu sum_0_82:353 
              #                     910  sum_0_83 = chi sum_0_82:353 
              #                     355  temp_88_booltrans_89_0 = icmp i32 Ne temp_87_ret_of_h_89_0, 0_0 
              #                    occupy a0 with temp_87_ret_of_h_89_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_88_booltrans_89_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2099 untrack temp_87_ret_of_h_89_0 
              #                    occupy a0 with temp_87_ret_of_h_89_0
              #                    release a0 with temp_87_ret_of_h_89_0
              #                     357  temp_89_logicnot_89_0 = xor i1 temp_88_booltrans_89_0, true 
              #                    occupy a2 with temp_88_booltrans_89_0
              #                    occupy a0 with temp_89_logicnot_89_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     2100 untrack temp_88_booltrans_89_0 
              #                    occupy a2 with temp_88_booltrans_89_0
              #                    release a2 with temp_88_booltrans_89_0
              #                     373  br i1 temp_89_logicnot_89_0, label branch_short_circuit_p_true_504, label branch_short_circuit_c_false_504 
              #                    occupy a0 with temp_89_logicnot_89_0
              #                    free a0
              #                    occupy a0 with temp_89_logicnot_89_0
    bnez    a0, .branch_short_circuit_p_true_504
              #                    free a0
              #                    occupy a0 with temp_89_logicnot_89_0
              #                    store to temp_89_logicnot_89_0 in mem offset legal
    sb      a0,238(sp)
              #                    release a0 with temp_89_logicnot_89_0
              #                    occupy a2 with temp_94_i32_to_bool_89_0
              #                    load from temp_94_i32_to_bool_89_0 in mem


    lb      a2,228(sp)
    j       .branch_short_circuit_c_false_504
              #                    regtab     a0:Freed { symidx: temp_89_logicnot_89_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     366  label branch_short_circuit_p_true_504: 
.branch_short_circuit_p_true_504:
              #                     2105 untrack temp_89_logicnot_89_0 
              #                    occupy a0 with temp_89_logicnot_89_0
              #                    release a0 with temp_89_logicnot_89_0
              #                     359  temp_90_ret_of_h_89_0 =  Call i32 h_0(4_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    arg load ended


    call    h
              #                     911  mu array_0_52:359 
              #                     912  mu sum_0_83:359 
              #                     913  sum_0_84 = chi sum_0_83:359 
              #                     361  temp_91_booltrans_89_0 = icmp i32 Ne temp_90_ret_of_h_89_0, 0_0 
              #                    occupy a0 with temp_90_ret_of_h_89_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_91_booltrans_89_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2107 untrack temp_90_ret_of_h_89_0 
              #                    occupy a0 with temp_90_ret_of_h_89_0
              #                    release a0 with temp_90_ret_of_h_89_0
              #                     363  temp_92_logicnot_89_0 = xor i1 temp_91_booltrans_89_0, true 
              #                    occupy a2 with temp_91_booltrans_89_0
              #                    occupy a0 with temp_92_logicnot_89_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     2106 untrack temp_91_booltrans_89_0 
              #                    occupy a2 with temp_91_booltrans_89_0
              #                    release a2 with temp_91_booltrans_89_0
              #                     368  br i1 temp_92_logicnot_89_0, label branch_short_circuit_c_true_504, label branch_short_circuit_c_false_504 
              #                    occupy a0 with temp_92_logicnot_89_0
              #                    free a0
              #                    occupy a0 with temp_92_logicnot_89_0
    bnez    a0, .branch_short_circuit_c_true_504
              #                    free a0
              #                    occupy a0 with temp_92_logicnot_89_0
              #                    store to temp_92_logicnot_89_0 in mem offset legal
    sb      a0,230(sp)
              #                    release a0 with temp_92_logicnot_89_0
              #                    occupy a2 with temp_94_i32_to_bool_89_0
              #                    load from temp_94_i32_to_bool_89_0 in mem


    lb      a2,228(sp)
    j       .branch_short_circuit_c_false_504
              #                    regtab     a0:Freed { symidx: temp_92_logicnot_89_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     364  label branch_short_circuit_c_true_504: 
.branch_short_circuit_c_true_504:
              #                     2117 untrack temp_100_i32_to_bool_89_0 
              #                     2116 untrack temp_99_logicnot_89_0 
              #                     2115 untrack temp_101_ret_of_h_89_0 
              #                     2114 untrack temp_97_ret_of_h_89_0 
              #                     2113 untrack temp_102_i32_to_bool_89_0 
              #                     2112 untrack temp_92_logicnot_89_0 
              #                    occupy a0 with temp_92_logicnot_89_0
              #                    release a0 with temp_92_logicnot_89_0
              #                     2111 untrack temp_96_ret_of_h_89_0 
              #                     2110 untrack temp_95_ret_of_h_89_0 
              #                     2109 untrack temp_103_i32_to_bool_89_0 
              #                     2108 untrack temp_98_booltrans_89_0 
              #                     2088 untrack temp_102_i32_to_bool_89_0 
              #                     2087 untrack temp_99_logicnot_89_0 
              #                     2086 untrack temp_101_ret_of_h_89_0 
              #                     2082 untrack temp_102_i32_to_bool_89_0 
              #                     2070 untrack temp_101_ret_of_h_89_0 
              #                     2069 untrack temp_103_i32_to_bool_89_0 
              #                     2068 untrack temp_98_booltrans_89_0 
              #                     2067 untrack temp_99_logicnot_89_0 
              #                     2066 untrack temp_100_i32_to_bool_89_0 
              #                     2065 untrack temp_97_ret_of_h_89_0 
              #                     2064 untrack temp_102_i32_to_bool_89_0 
              #                     2063 untrack temp_96_ret_of_h_89_0 
              #                     180  (nop) 
              #                     991  ans_51_12 = i32 1_0 
              #                    occupy a0 with ans_51_12
    li      a0, 1
              #                    free a0
              #                          jump label: branch_short_circuit_c_false_519 
    j       .branch_short_circuit_c_false_519
              #                    regtab     a0:Freed { symidx: ans_51_12, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     399  label branch_short_circuit_c_false_519: 
.branch_short_circuit_c_false_519:
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: ans_51_12, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     173  temp_34_value_from_ptr_51_0 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a2 with temp_34_value_from_ptr_51_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_34_value_from_ptr_51_0
              #                    store to temp_34_value_from_ptr_51_0 in mem offset legal
    sw      a2,396(sp)
              #                    release a2 with temp_34_value_from_ptr_51_0
              #                    free a1
              #                     174  mu sum_0_81:173 
              #                     176  temp_35_arithop_51_0 = Add i32 temp_34_value_from_ptr_51_0, ans_51_12 
              #                    occupy a2 with temp_34_value_from_ptr_51_0
              #                    load from temp_34_value_from_ptr_51_0 in mem


    lw      a2,396(sp)
              #                    occupy a0 with ans_51_12
              #                    occupy a3 with temp_35_arithop_51_0
    ADDW    a3,a2,a0
              #                    free a2
              #                    occupy a2 with temp_34_value_from_ptr_51_0
              #                    store to temp_34_value_from_ptr_51_0 in mem offset legal
    sw      a2,396(sp)
              #                    release a2 with temp_34_value_from_ptr_51_0
              #                    free a0
              #                    occupy a0 with ans_51_12
              #                    store to ans_51_12 in mem offset legal
    sw      a0,424(sp)
              #                    release a0 with ans_51_12
              #                    free a3
              #                     2073 untrack temp_34_value_from_ptr_51_0 
              #                     2072 untrack ans_51_12 
              #                     177   Call void putint_0(temp_35_arithop_51_0) 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_35_arithop_51_0
              #                    store to temp_35_arithop_51_0 in mem offset legal
    sw      a3,392(sp)
              #                    release a3 with temp_35_arithop_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_35_arithop_51_0_0
              #                    load from temp_35_arithop_51_0 in mem


    lw      a0,392(sp)
              #                    arg load ended


    call    putint
              #                     2074 untrack temp_35_arithop_51_0 
              #                     894  mu array_0_52:179 
              #                     895  mu sum_0_81:179 
              #                     179  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,464(sp)
              #                    load from s0_main_0 in mem
    ld      s0,456(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,472
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_94_i32_to_bool_89_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     365  label branch_short_circuit_c_false_504: 
.branch_short_circuit_c_false_504:
              #                     2118 untrack temp_92_logicnot_89_0 
              #                     2104 untrack temp_91_booltrans_89_0 
              #                     2103 untrack temp_92_logicnot_89_0 
              #                     2102 untrack temp_90_ret_of_h_89_0 
              #                     2101 untrack temp_89_logicnot_89_0 
              #                     2097 untrack temp_88_booltrans_89_0 
              #                     2096 untrack temp_89_logicnot_89_0 
              #                     2095 untrack temp_91_booltrans_89_0 
              #                     2094 untrack temp_87_ret_of_h_89_0 
              #                     2093 untrack temp_93_i32_to_bool_89_0 
              #                     2092 untrack temp_90_ret_of_h_89_0 
              #                     2091 untrack temp_92_logicnot_89_0 
              #                     2060 untrack temp_93_i32_to_bool_89_0 
              #                     2059 untrack temp_89_logicnot_89_0 
              #                     2058 untrack temp_92_logicnot_89_0 
              #                     2057 untrack temp_86_ret_of_h_89_0 
              #                     2056 untrack temp_94_i32_to_bool_89_0 
              #                    occupy a2 with temp_94_i32_to_bool_89_0
              #                    release a2 with temp_94_i32_to_bool_89_0
              #                     2055 untrack temp_90_ret_of_h_89_0 
              #                     2054 untrack temp_88_booltrans_89_0 
              #                     2053 untrack temp_91_booltrans_89_0 
              #                     2052 untrack temp_87_ret_of_h_89_0 
              #                     380  temp_95_ret_of_h_89_0 =  Call i32 h_0(5_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    arg load ended


    call    h
              #                     891  mu array_0_52:380 
              #                     892  mu sum_0_74:380 
              #                     893  sum_0_75 = chi sum_0_74:380 
              #                     403  temp_103_i32_to_bool_89_0 = icmp i32 Ne temp_95_ret_of_h_89_0, 0_0 
              #                    occupy a0 with temp_95_ret_of_h_89_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_103_i32_to_bool_89_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2062 untrack temp_95_ret_of_h_89_0 
              #                    occupy a0 with temp_95_ret_of_h_89_0
              #                    release a0 with temp_95_ret_of_h_89_0
              #                     408  br i1 temp_103_i32_to_bool_89_0, label branch_short_circuit_c_true_504, label branch_short_circuit_p_false_514 
              #                    occupy a2 with temp_103_i32_to_bool_89_0
              #                    free a2
              #                    occupy a0 with temp_92_logicnot_89_0
              #                    load from temp_92_logicnot_89_0 in mem


    lb      a0,230(sp)
              #                    occupy a2 with temp_103_i32_to_bool_89_0
              #                    store to temp_103_i32_to_bool_89_0 in mem offset legal
    sb      a2,206(sp)
              #                    release a2 with temp_103_i32_to_bool_89_0
              #                    occupy a1 with temp_103_i32_to_bool_89_0
              #                    load from temp_103_i32_to_bool_89_0 in mem


    lb      a1,206(sp)
    bnez    a1, .branch_short_circuit_c_true_504
              #                    free a1
    j       .branch_short_circuit_p_false_514
              #                    regtab     a0:Freed { symidx: temp_92_logicnot_89_0, tracked: true } |     a1:Freed { symidx: temp_103_i32_to_bool_89_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     404  label branch_short_circuit_p_false_514: 
.branch_short_circuit_p_false_514:
              #                     2071 untrack temp_103_i32_to_bool_89_0 
              #                    occupy a1 with temp_103_i32_to_bool_89_0
              #                    release a1 with temp_103_i32_to_bool_89_0
              #                     382  temp_96_ret_of_h_89_0 =  Call i32 h_0(6_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_92_logicnot_89_0
              #                    store to temp_92_logicnot_89_0 in mem offset legal
    sb      a0,230(sp)
              #                    release a0 with temp_92_logicnot_89_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    arg load ended


    call    h
              #                     896  mu array_0_52:382 
              #                     897  mu sum_0_75:382 
              #                     898  sum_0_76 = chi sum_0_75:382 
              #                     390  temp_100_i32_to_bool_89_0 = icmp i32 Ne temp_96_ret_of_h_89_0, 0_0 
              #                    occupy a0 with temp_96_ret_of_h_89_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_100_i32_to_bool_89_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_96_ret_of_h_89_0
              #                    store to temp_96_ret_of_h_89_0 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with temp_96_ret_of_h_89_0
              #                    free a1
              #                    free a2
              #                     2075 untrack temp_96_ret_of_h_89_0 
              #                     406  br i1 temp_100_i32_to_bool_89_0, label branch_short_circuit_p_true_521, label branch_short_circuit_c_false_521 
              #                    occupy a2 with temp_100_i32_to_bool_89_0
              #                    free a2
              #                    occupy a2 with temp_100_i32_to_bool_89_0
    bnez    a2, .branch_short_circuit_p_true_521
              #                    free a2
    j       .branch_short_circuit_c_false_521
              #                    regtab     a2:Freed { symidx: temp_100_i32_to_bool_89_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     392  label branch_short_circuit_p_true_521: 
.branch_short_circuit_p_true_521:
              #                     2080 untrack temp_100_i32_to_bool_89_0 
              #                    occupy a2 with temp_100_i32_to_bool_89_0
              #                    release a2 with temp_100_i32_to_bool_89_0
              #                     384  temp_97_ret_of_h_89_0 =  Call i32 h_0(7_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    arg load ended


    call    h
              #                     902  mu array_0_52:384 
              #                     903  mu sum_0_76:384 
              #                     904  sum_0_79 = chi sum_0_76:384 
              #                     386  temp_98_booltrans_89_0 = icmp i32 Ne temp_97_ret_of_h_89_0, 0_0 
              #                    occupy a0 with temp_97_ret_of_h_89_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_98_booltrans_89_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_97_ret_of_h_89_0
              #                    store to temp_97_ret_of_h_89_0 in mem offset legal
    sw      a0,216(sp)
              #                    release a0 with temp_97_ret_of_h_89_0
              #                    free a1
              #                    free a2
              #                     2085 untrack temp_97_ret_of_h_89_0 
              #                     388  temp_99_logicnot_89_0 = xor i1 temp_98_booltrans_89_0, true 
              #                    occupy a2 with temp_98_booltrans_89_0
              #                    occupy a0 with temp_99_logicnot_89_0
    seqz    a0, a2
              #                    free a2
              #                    occupy a2 with temp_98_booltrans_89_0
              #                    store to temp_98_booltrans_89_0 in mem offset legal
    sb      a2,215(sp)
              #                    release a2 with temp_98_booltrans_89_0
              #                    free a0
              #                     2084 untrack temp_98_booltrans_89_0 
              #                     394  br i1 temp_99_logicnot_89_0, label branch_short_circuit_c_true_504, label branch_short_circuit_c_false_521 
              #                    occupy a0 with temp_99_logicnot_89_0
              #                    free a0
              #                    occupy a0 with temp_99_logicnot_89_0
              #                    store to temp_99_logicnot_89_0 in mem offset legal
    sb      a0,214(sp)
              #                    release a0 with temp_99_logicnot_89_0
              #                    occupy a0 with temp_92_logicnot_89_0
              #                    load from temp_92_logicnot_89_0 in mem


    lb      a0,230(sp)
              #                    occupy a1 with temp_99_logicnot_89_0
              #                    load from temp_99_logicnot_89_0 in mem


    lb      a1,214(sp)
    bnez    a1, .branch_short_circuit_c_true_504
              #                    free a1
              #                    occupy a0 with temp_92_logicnot_89_0
              #                    store to temp_92_logicnot_89_0 in mem offset legal
    sb      a0,230(sp)
              #                    release a0 with temp_92_logicnot_89_0
              #                    occupy a1 with temp_99_logicnot_89_0
              #                    store to temp_99_logicnot_89_0 in mem offset legal
    sb      a1,214(sp)
              #                    release a1 with temp_99_logicnot_89_0
              #                    occupy a2 with temp_100_i32_to_bool_89_0
              #                    load from temp_100_i32_to_bool_89_0 in mem


    lb      a2,213(sp)
    j       .branch_short_circuit_c_false_521
              #                    regtab     a2:Freed { symidx: temp_100_i32_to_bool_89_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     391  label branch_short_circuit_c_false_521: 
.branch_short_circuit_c_false_521:
              #                     2089 untrack temp_99_logicnot_89_0 
              #                     2079 untrack temp_99_logicnot_89_0 
              #                     2078 untrack temp_98_booltrans_89_0 
              #                     2077 untrack temp_97_ret_of_h_89_0 
              #                     2076 untrack temp_100_i32_to_bool_89_0 
              #                    occupy a2 with temp_100_i32_to_bool_89_0
              #                    release a2 with temp_100_i32_to_bool_89_0
              #                     396  temp_101_ret_of_h_89_0 =  Call i32 h_0(8_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    arg load ended


    call    h
              #                     899  mu array_0_52:396 
              #                     900  mu sum_0_77:396 
              #                     901  sum_0_78 = chi sum_0_77:396 
              #                     398  temp_102_i32_to_bool_89_0 = icmp i32 Ne temp_101_ret_of_h_89_0, 0_0 
              #                    occupy a0 with temp_101_ret_of_h_89_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_102_i32_to_bool_89_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_101_ret_of_h_89_0
              #                    store to temp_101_ret_of_h_89_0 in mem offset legal
    sw      a0,208(sp)
              #                    release a0 with temp_101_ret_of_h_89_0
              #                    free a1
              #                    free a2
              #                     2081 untrack temp_101_ret_of_h_89_0 
              #                     401  br i1 temp_102_i32_to_bool_89_0, label branch_short_circuit_c_true_504, label UP_31_0 
              #                    occupy a2 with temp_102_i32_to_bool_89_0
              #                    free a2
              #                    occupy a0 with temp_92_logicnot_89_0
              #                    load from temp_92_logicnot_89_0 in mem


    lb      a0,230(sp)
              #                    occupy a2 with temp_102_i32_to_bool_89_0
              #                    store to temp_102_i32_to_bool_89_0 in mem offset legal
    sb      a2,207(sp)
              #                    release a2 with temp_102_i32_to_bool_89_0
              #                    occupy a1 with temp_102_i32_to_bool_89_0
              #                    load from temp_102_i32_to_bool_89_0 in mem


    lb      a1,207(sp)
    bnez    a1, .branch_short_circuit_c_true_504
              #                    free a1
    j       .UP_31_0
              #                    regtab     a0:Freed { symidx: temp_92_logicnot_89_0, tracked: true } |     a1:Freed { symidx: temp_102_i32_to_bool_89_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     985  label UP_31_0: 
.UP_31_0:
              #                     2083 untrack temp_102_i32_to_bool_89_0 
              #                    occupy a1 with temp_102_i32_to_bool_89_0
              #                    release a1 with temp_102_i32_to_bool_89_0
              #                     992  ans_51_12 = i32 0_0 
              #                    occupy a1 with ans_51_12
    li      a1, 0
              #                    free a1
              #                          jump label: branch_short_circuit_c_false_519 
              #                    occupy a0 with temp_92_logicnot_89_0
              #                    store to temp_92_logicnot_89_0 in mem offset legal
    sb      a0,230(sp)
              #                    release a0 with temp_92_logicnot_89_0
              #                    occupy a1 with ans_51_12
              #                    store to ans_51_12 in mem offset legal
    sw      a1,424(sp)
              #                    release a1 with ans_51_12
              #                    occupy a0 with ans_51_12
              #                    load from ans_51_12 in mem


    lw      a0,424(sp)
    j       .branch_short_circuit_c_false_519
              #                    regtab     a2:Freed { symidx: temp_71_i32_to_bool_84_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     302  label branch_short_circuit_c_false_451: 
.branch_short_circuit_c_false_451:
              #                     2162 untrack temp_70_logicnot_84_0 
              #                     2035 untrack temp_71_i32_to_bool_84_0 
              #                    occupy a2 with temp_71_i32_to_bool_84_0
              #                    release a2 with temp_71_i32_to_bool_84_0
              #                     2034 untrack temp_70_logicnot_84_0 
              #                     2033 untrack temp_68_ret_of_h_84_0 
              #                     2032 untrack temp_69_booltrans_84_0 
              #                     307  temp_72_ret_of_h_84_0 =  Call i32 h_0(11_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_11_0_0
    li      a0, 11
              #                    arg load ended


    call    h
              #                     885  mu array_0_52:307 
              #                     886  mu sum_0_65:307 
              #                     887  sum_0_66 = chi sum_0_65:307 
              #                     309  temp_73_booltrans_84_0 = icmp i32 Ne temp_72_ret_of_h_84_0, 0_0 
              #                    occupy a0 with temp_72_ret_of_h_84_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_73_booltrans_84_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2037 untrack temp_72_ret_of_h_84_0 
              #                    occupy a0 with temp_72_ret_of_h_84_0
              #                    release a0 with temp_72_ret_of_h_84_0
              #                     311  temp_74_logicnot_84_0 = xor i1 temp_73_booltrans_84_0, true 
              #                    occupy a2 with temp_73_booltrans_84_0
              #                    occupy a0 with temp_74_logicnot_84_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     2038 untrack temp_73_booltrans_84_0 
              #                    occupy a2 with temp_73_booltrans_84_0
              #                    release a2 with temp_73_booltrans_84_0
              #                     346  br i1 temp_74_logicnot_84_0, label branch_short_circuit_c_true_451, label branch_short_circuit_p_false_460 
              #                    occupy a0 with temp_74_logicnot_84_0
              #                    free a0
              #                    occupy a0 with temp_74_logicnot_84_0
              #                    store to temp_74_logicnot_84_0 in mem offset legal
    sb      a0,282(sp)
              #                    release a0 with temp_74_logicnot_84_0
              #                    occupy a0 with temp_70_logicnot_84_0
              #                    load from temp_70_logicnot_84_0 in mem


    lb      a0,290(sp)
              #                    occupy a1 with temp_74_logicnot_84_0
              #                    load from temp_74_logicnot_84_0 in mem


    lb      a1,282(sp)
    bnez    a1, .branch_short_circuit_c_true_451
              #                    free a1
    j       .branch_short_circuit_p_false_460
              #                    regtab     a0:Freed { symidx: temp_70_logicnot_84_0, tracked: true } |     a1:Freed { symidx: temp_74_logicnot_84_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     342  label branch_short_circuit_p_false_460: 
.branch_short_circuit_p_false_460:
              #                     2050 untrack temp_74_logicnot_84_0 
              #                    occupy a1 with temp_74_logicnot_84_0
              #                    release a1 with temp_74_logicnot_84_0
              #                     313  temp_75_ret_of_h_84_0 =  Call i32 h_0(12_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_70_logicnot_84_0
              #                    store to temp_70_logicnot_84_0 in mem offset legal
    sb      a0,290(sp)
              #                    release a0 with temp_70_logicnot_84_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_12_0_0
    li      a0, 12
              #                    arg load ended


    call    h
              #                     914  mu array_0_52:313 
              #                     915  mu sum_0_66:313 
              #                     916  sum_0_67 = chi sum_0_66:313 
              #                     315  temp_76_booltrans_84_0 = icmp i32 Ne temp_75_ret_of_h_84_0, 0_0 
              #                    occupy a0 with temp_75_ret_of_h_84_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_76_booltrans_84_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2119 untrack temp_75_ret_of_h_84_0 
              #                    occupy a0 with temp_75_ret_of_h_84_0
              #                    release a0 with temp_75_ret_of_h_84_0
              #                     317  temp_77_logicnot_84_0 = xor i1 temp_76_booltrans_84_0, true 
              #                    occupy a2 with temp_76_booltrans_84_0
              #                    occupy a0 with temp_77_logicnot_84_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     2120 untrack temp_76_booltrans_84_0 
              #                    occupy a2 with temp_76_booltrans_84_0
              #                    release a2 with temp_76_booltrans_84_0
              #                     344  br i1 temp_77_logicnot_84_0, label branch_short_circuit_c_true_451, label branch_short_circuit_p_false_466 
              #                    occupy a0 with temp_77_logicnot_84_0
              #                    free a0
              #                    occupy a0 with temp_77_logicnot_84_0
              #                    store to temp_77_logicnot_84_0 in mem offset legal
    sb      a0,274(sp)
              #                    release a0 with temp_77_logicnot_84_0
              #                    occupy a0 with temp_70_logicnot_84_0
              #                    load from temp_70_logicnot_84_0 in mem


    lb      a0,290(sp)
              #                    occupy a1 with temp_77_logicnot_84_0
              #                    load from temp_77_logicnot_84_0 in mem


    lb      a1,274(sp)
    bnez    a1, .branch_short_circuit_c_true_451
              #                    free a1
    j       .branch_short_circuit_p_false_466
              #                    regtab     a0:Freed { symidx: temp_70_logicnot_84_0, tracked: true } |     a1:Freed { symidx: temp_77_logicnot_84_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     339  label branch_short_circuit_p_false_466: 
.branch_short_circuit_p_false_466:
              #                     2129 untrack temp_77_logicnot_84_0 
              #                    occupy a1 with temp_77_logicnot_84_0
              #                    release a1 with temp_77_logicnot_84_0
              #                     319  temp_78_ret_of_h_84_0 =  Call i32 h_0(13_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_70_logicnot_84_0
              #                    store to temp_70_logicnot_84_0 in mem offset legal
    sb      a0,290(sp)
              #                    release a0 with temp_70_logicnot_84_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_13_0_0
    li      a0, 13
              #                    arg load ended


    call    h
              #                     917  mu array_0_52:319 
              #                     918  mu sum_0_67:319 
              #                     919  sum_0_68 = chi sum_0_67:319 
              #                     321  temp_79_booltrans_84_0 = icmp i32 Ne temp_78_ret_of_h_84_0, 0_0 
              #                    occupy a0 with temp_78_ret_of_h_84_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_79_booltrans_84_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2131 untrack temp_78_ret_of_h_84_0 
              #                    occupy a0 with temp_78_ret_of_h_84_0
              #                    release a0 with temp_78_ret_of_h_84_0
              #                     323  temp_80_logicnot_84_0 = xor i1 temp_79_booltrans_84_0, true 
              #                    occupy a2 with temp_79_booltrans_84_0
              #                    occupy a0 with temp_80_logicnot_84_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     2130 untrack temp_79_booltrans_84_0 
              #                    occupy a2 with temp_79_booltrans_84_0
              #                    release a2 with temp_79_booltrans_84_0
              #                     341  br i1 temp_80_logicnot_84_0, label branch_short_circuit_c_true_451, label branch_short_circuit_p_false_472 
              #                    occupy a0 with temp_80_logicnot_84_0
              #                    free a0
              #                    occupy a0 with temp_80_logicnot_84_0
              #                    store to temp_80_logicnot_84_0 in mem offset legal
    sb      a0,266(sp)
              #                    release a0 with temp_80_logicnot_84_0
              #                    occupy a0 with temp_70_logicnot_84_0
              #                    load from temp_70_logicnot_84_0 in mem


    lb      a0,290(sp)
              #                    occupy a1 with temp_80_logicnot_84_0
              #                    load from temp_80_logicnot_84_0 in mem


    lb      a1,266(sp)
    bnez    a1, .branch_short_circuit_c_true_451
              #                    free a1
    j       .branch_short_circuit_p_false_472
              #                    regtab     a0:Freed { symidx: temp_70_logicnot_84_0, tracked: true } |     a1:Freed { symidx: temp_80_logicnot_84_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     336  label branch_short_circuit_p_false_472: 
.branch_short_circuit_p_false_472:
              #                     2137 untrack temp_80_logicnot_84_0 
              #                    occupy a1 with temp_80_logicnot_84_0
              #                    release a1 with temp_80_logicnot_84_0
              #                     325  temp_81_ret_of_h_84_0 =  Call i32 h_0(14_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_70_logicnot_84_0
              #                    store to temp_70_logicnot_84_0 in mem offset legal
    sb      a0,290(sp)
              #                    release a0 with temp_70_logicnot_84_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_14_0_0
    li      a0, 14
              #                    arg load ended


    call    h
              #                     920  mu array_0_52:325 
              #                     921  mu sum_0_68:325 
              #                     922  sum_0_69 = chi sum_0_68:325 
              #                     329  temp_83_i32_to_bool_84_0 = icmp i32 Ne temp_81_ret_of_h_84_0, 0_0 
              #                    occupy a0 with temp_81_ret_of_h_84_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_83_i32_to_bool_84_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2138 untrack temp_81_ret_of_h_84_0 
              #                    occupy a0 with temp_81_ret_of_h_84_0
              #                    release a0 with temp_81_ret_of_h_84_0
              #                     338  br i1 temp_83_i32_to_bool_84_0, label branch_short_circuit_p_true_478, label branch_short_circuit_c_false_478 
              #                    occupy a2 with temp_83_i32_to_bool_84_0
              #                    free a2
              #                    occupy a2 with temp_83_i32_to_bool_84_0
    bnez    a2, .branch_short_circuit_p_true_478
              #                    free a2
              #                    occupy a2 with temp_83_i32_to_bool_84_0
              #                    store to temp_83_i32_to_bool_84_0 in mem offset legal
    sb      a2,255(sp)
              #                    release a2 with temp_83_i32_to_bool_84_0
    j       .branch_short_circuit_c_false_478
              #                    regtab     a2:Freed { symidx: temp_83_i32_to_bool_84_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     333  label branch_short_circuit_p_true_478: 
.branch_short_circuit_p_true_478:
              #                     2142 untrack temp_83_i32_to_bool_84_0 
              #                    occupy a2 with temp_83_i32_to_bool_84_0
              #                    release a2 with temp_83_i32_to_bool_84_0
              #                     327  temp_82_ret_of_h_84_0 =  Call i32 h_0(15_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_15_0_0
    li      a0, 15
              #                    arg load ended


    call    h
              #                     923  mu array_0_52:327 
              #                     924  mu sum_0_69:327 
              #                     925  sum_0_70 = chi sum_0_69:327 
              #                     331  temp_84_i32_to_bool_84_0 = icmp i32 Ne temp_82_ret_of_h_84_0, 0_0 
              #                    occupy a0 with temp_82_ret_of_h_84_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_84_i32_to_bool_84_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2143 untrack temp_82_ret_of_h_84_0 
              #                    occupy a0 with temp_82_ret_of_h_84_0
              #                    release a0 with temp_82_ret_of_h_84_0
              #                     335  br i1 temp_84_i32_to_bool_84_0, label branch_short_circuit_c_true_451, label branch_short_circuit_c_false_478 
              #                    occupy a2 with temp_84_i32_to_bool_84_0
              #                    free a2
              #                    occupy a0 with temp_70_logicnot_84_0
              #                    load from temp_70_logicnot_84_0 in mem


    lb      a0,290(sp)
              #                    occupy a2 with temp_84_i32_to_bool_84_0
              #                    store to temp_84_i32_to_bool_84_0 in mem offset legal
    sb      a2,254(sp)
              #                    release a2 with temp_84_i32_to_bool_84_0
              #                    occupy a1 with temp_84_i32_to_bool_84_0
              #                    load from temp_84_i32_to_bool_84_0 in mem


    lb      a1,254(sp)
    bnez    a1, .branch_short_circuit_c_true_451
              #                    free a1
              #                    occupy a0 with temp_70_logicnot_84_0
              #                    store to temp_70_logicnot_84_0 in mem offset legal
    sb      a0,290(sp)
              #                    release a0 with temp_70_logicnot_84_0
              #                    occupy a1 with temp_84_i32_to_bool_84_0
              #                    store to temp_84_i32_to_bool_84_0 in mem offset legal
    sb      a1,254(sp)
              #                    release a1 with temp_84_i32_to_bool_84_0
    j       .branch_short_circuit_c_false_478
              #                    regtab     a0:Freed { symidx: temp_56_logicnot_79_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     287  label branch_short_circuit_p_false_417: 
.branch_short_circuit_p_false_417:
              #                     2030 untrack temp_56_logicnot_79_0 
              #                    occupy a0 with temp_56_logicnot_79_0
              #                    release a0 with temp_56_logicnot_79_0
              #                     257  temp_57_ret_of_h_79_0 =  Call i32 h_0(5_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    arg load ended


    call    h
              #                     929  mu array_0_52:257 
              #                     930  mu sum_0_61:257 
              #                     931  sum_0_86 = chi sum_0_61:257 
              #                     274  temp_63_i32_to_bool_79_0 = icmp i32 Ne temp_57_ret_of_h_79_0, 0_0 
              #                    occupy a0 with temp_57_ret_of_h_79_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_63_i32_to_bool_79_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2163 untrack temp_57_ret_of_h_79_0 
              #                    occupy a0 with temp_57_ret_of_h_79_0
              #                    release a0 with temp_57_ret_of_h_79_0
              #                     289  br i1 temp_63_i32_to_bool_79_0, label branch_short_circuit_p_true_425, label branch_short_circuit_c_false_430 
              #                    occupy a2 with temp_63_i32_to_bool_79_0
              #                    free a2
              #                    occupy a2 with temp_63_i32_to_bool_79_0
    bnez    a2, .branch_short_circuit_p_true_425
              #                    free a2
    j       .branch_short_circuit_c_false_430
              #                    regtab     a2:Freed { symidx: temp_63_i32_to_bool_79_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     275  label branch_short_circuit_p_true_425: 
.branch_short_circuit_p_true_425:
              #                     2170 untrack temp_63_i32_to_bool_79_0 
              #                    occupy a2 with temp_63_i32_to_bool_79_0
              #                    release a2 with temp_63_i32_to_bool_79_0
              #                     259  temp_58_ret_of_h_79_0 =  Call i32 h_0(6_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    arg load ended


    call    h
              #                     935  mu array_0_52:259 
              #                     936  mu sum_0_86:259 
              #                     937  sum_0_89 = chi sum_0_86:259 
              #                     261  temp_59_booltrans_79_0 = icmp i32 Ne temp_58_ret_of_h_79_0, 0_0 
              #                    occupy a0 with temp_58_ret_of_h_79_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_59_booltrans_79_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2176 untrack temp_58_ret_of_h_79_0 
              #                    occupy a0 with temp_58_ret_of_h_79_0
              #                    release a0 with temp_58_ret_of_h_79_0
              #                     263  temp_60_logicnot_79_0 = xor i1 temp_59_booltrans_79_0, true 
              #                    occupy a2 with temp_59_booltrans_79_0
              #                    occupy a0 with temp_60_logicnot_79_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     2175 untrack temp_59_booltrans_79_0 
              #                    occupy a2 with temp_59_booltrans_79_0
              #                    release a2 with temp_59_booltrans_79_0
              #                     277  br i1 temp_60_logicnot_79_0, label branch_short_circuit_p_true_430, label branch_short_circuit_c_false_430 
              #                    occupy a0 with temp_60_logicnot_79_0
              #                    free a0
              #                    occupy a0 with temp_60_logicnot_79_0
    bnez    a0, .branch_short_circuit_p_true_430
              #                    free a0
              #                    occupy a0 with temp_60_logicnot_79_0
              #                    store to temp_60_logicnot_79_0 in mem offset legal
    sb      a0,318(sp)
              #                    release a0 with temp_60_logicnot_79_0
              #                    occupy a2 with temp_63_i32_to_bool_79_0
              #                    load from temp_63_i32_to_bool_79_0 in mem


    lb      a2,310(sp)
    j       .branch_short_circuit_c_false_430
              #                    regtab     a0:Freed { symidx: temp_60_logicnot_79_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     270  label branch_short_circuit_p_true_430: 
.branch_short_circuit_p_true_430:
              #                     2180 untrack temp_60_logicnot_79_0 
              #                    occupy a0 with temp_60_logicnot_79_0
              #                    release a0 with temp_60_logicnot_79_0
              #                     265  temp_61_ret_of_h_79_0 =  Call i32 h_0(7_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    arg load ended


    call    h
              #                     938  mu array_0_52:265 
              #                     939  mu sum_0_89:265 
              #                     940  sum_0_90 = chi sum_0_89:265 
              #                     267  temp_62_i32_to_bool_79_0 = icmp i32 Ne temp_61_ret_of_h_79_0, 0_0 
              #                    occupy a0 with temp_61_ret_of_h_79_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_62_i32_to_bool_79_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2181 untrack temp_61_ret_of_h_79_0 
              #                    occupy a0 with temp_61_ret_of_h_79_0
              #                    release a0 with temp_61_ret_of_h_79_0
              #                     272  br i1 temp_62_i32_to_bool_79_0, label branch_short_circuit_c_true_430, label branch_short_circuit_c_false_430 
              #                    occupy a2 with temp_62_i32_to_bool_79_0
              #                    free a2
              #                    occupy a0 with temp_56_logicnot_79_0
              #                    load from temp_56_logicnot_79_0 in mem


    lb      a0,330(sp)
              #                    occupy a2 with temp_62_i32_to_bool_79_0
              #                    store to temp_62_i32_to_bool_79_0 in mem offset legal
    sb      a2,311(sp)
              #                    release a2 with temp_62_i32_to_bool_79_0
              #                    occupy a1 with temp_62_i32_to_bool_79_0
              #                    load from temp_62_i32_to_bool_79_0 in mem


    lb      a1,311(sp)
    bnez    a1, .branch_short_circuit_c_true_430
              #                    free a1
              #                    occupy a0 with temp_56_logicnot_79_0
              #                    store to temp_56_logicnot_79_0 in mem offset legal
    sb      a0,330(sp)
              #                    release a0 with temp_56_logicnot_79_0
              #                    occupy a1 with temp_62_i32_to_bool_79_0
              #                    store to temp_62_i32_to_bool_79_0 in mem offset legal
    sb      a1,311(sp)
              #                    release a1 with temp_62_i32_to_bool_79_0
              #                    occupy a2 with temp_63_i32_to_bool_79_0
              #                    load from temp_63_i32_to_bool_79_0 in mem


    lb      a2,310(sp)
    j       .branch_short_circuit_c_false_430
              #                    regtab     a2:Freed { symidx: temp_63_i32_to_bool_79_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     269  label branch_short_circuit_c_false_430: 
.branch_short_circuit_c_false_430:
              #                     2186 untrack temp_62_i32_to_bool_79_0 
              #                     2179 untrack temp_61_ret_of_h_79_0 
              #                     2178 untrack temp_62_i32_to_bool_79_0 
              #                     2177 untrack temp_60_logicnot_79_0 
              #                     2169 untrack temp_62_i32_to_bool_79_0 
              #                     2168 untrack temp_63_i32_to_bool_79_0 
              #                    occupy a2 with temp_63_i32_to_bool_79_0
              #                    release a2 with temp_63_i32_to_bool_79_0
              #                     2167 untrack temp_60_logicnot_79_0 
              #                     2166 untrack temp_59_booltrans_79_0 
              #                     2165 untrack temp_61_ret_of_h_79_0 
              #                     2164 untrack temp_58_ret_of_h_79_0 
              #                     279  temp_64_ret_of_h_79_0 =  Call i32 h_0(8_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_8_0_0
    li      a0, 8
              #                    arg load ended


    call    h
              #                     932  mu array_0_52:279 
              #                     933  mu sum_0_87:279 
              #                     934  sum_0_88 = chi sum_0_87:279 
              #                     281  temp_65_booltrans_79_0 = icmp i32 Ne temp_64_ret_of_h_79_0, 0_0 
              #                    occupy a0 with temp_64_ret_of_h_79_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_65_booltrans_79_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2171 untrack temp_64_ret_of_h_79_0 
              #                    occupy a0 with temp_64_ret_of_h_79_0
              #                    release a0 with temp_64_ret_of_h_79_0
              #                     283  temp_66_logicnot_79_0 = xor i1 temp_65_booltrans_79_0, true 
              #                    occupy a2 with temp_65_booltrans_79_0
              #                    occupy a0 with temp_66_logicnot_79_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     2172 untrack temp_65_booltrans_79_0 
              #                    occupy a2 with temp_65_booltrans_79_0
              #                    release a2 with temp_65_booltrans_79_0
              #                     286  br i1 temp_66_logicnot_79_0, label branch_short_circuit_c_true_430, label branch_short_circuit_c_false_423 
              #                    occupy a0 with temp_66_logicnot_79_0
              #                    free a0
              #                    occupy a0 with temp_66_logicnot_79_0
              #                    store to temp_66_logicnot_79_0 in mem offset legal
    sb      a0,302(sp)
              #                    release a0 with temp_66_logicnot_79_0
              #                    occupy a0 with temp_56_logicnot_79_0
              #                    load from temp_56_logicnot_79_0 in mem


    lb      a0,330(sp)
              #                    occupy a1 with temp_66_logicnot_79_0
              #                    load from temp_66_logicnot_79_0 in mem


    lb      a1,302(sp)
    bnez    a1, .branch_short_circuit_c_true_430
              #                    free a1
              #                    occupy a0 with temp_56_logicnot_79_0
              #                    store to temp_56_logicnot_79_0 in mem offset legal
    sb      a0,330(sp)
              #                    release a0 with temp_56_logicnot_79_0
              #                    occupy a1 with temp_66_logicnot_79_0
              #                    store to temp_66_logicnot_79_0 in mem offset legal
    sb      a1,302(sp)
              #                    release a1 with temp_66_logicnot_79_0
    j       .branch_short_circuit_c_false_423
              #                    regtab     a2:Freed { symidx: temp_47_i32_to_bool_74_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     229  label branch_short_circuit_c_false_394: 
.branch_short_circuit_c_false_394:
              #                     2197 untrack temp_48_i32_to_bool_74_0 
              #                     2009 untrack temp_48_i32_to_bool_74_0 
              #                     2008 untrack temp_46_ret_of_h_74_0 
              #                     2007 untrack temp_47_i32_to_bool_74_0 
              #                    occupy a2 with temp_47_i32_to_bool_74_0
              #                    release a2 with temp_47_i32_to_bool_74_0
              #                     234  temp_49_ret_of_h_74_0 =  Call i32 h_0(2_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    arg load ended


    call    h
              #                     876  mu array_0_52:234 
              #                     877  mu sum_0_56:234 
              #                     878  sum_0_57 = chi sum_0_56:234 
              #                     236  temp_50_booltrans_74_0 = icmp i32 Ne temp_49_ret_of_h_74_0, 0_0 
              #                    occupy a0 with temp_49_ret_of_h_74_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_50_booltrans_74_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2012 untrack temp_49_ret_of_h_74_0 
              #                    occupy a0 with temp_49_ret_of_h_74_0
              #                    release a0 with temp_49_ret_of_h_74_0
              #                     238  temp_51_logicnot_74_0 = xor i1 temp_50_booltrans_74_0, true 
              #                    occupy a2 with temp_50_booltrans_74_0
              #                    occupy a0 with temp_51_logicnot_74_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     2011 untrack temp_50_booltrans_74_0 
              #                    occupy a2 with temp_50_booltrans_74_0
              #                    release a2 with temp_50_booltrans_74_0
              #                     248  br i1 temp_51_logicnot_74_0, label branch_short_circuit_c_true_394, label branch_short_circuit_p_false_402 
              #                    occupy a0 with temp_51_logicnot_74_0
              #                    free a0
              #                    occupy a0 with temp_51_logicnot_74_0
              #                    store to temp_51_logicnot_74_0 in mem offset legal
    sb      a0,346(sp)
              #                    release a0 with temp_51_logicnot_74_0
              #                    occupy a2 with temp_48_i32_to_bool_74_0
              #                    load from temp_48_i32_to_bool_74_0 in mem


    lb      a2,354(sp)
              #                    occupy a0 with temp_51_logicnot_74_0
              #                    load from temp_51_logicnot_74_0 in mem


    lb      a0,346(sp)
    bnez    a0, .branch_short_circuit_c_true_394
              #                    free a0
    j       .branch_short_circuit_p_false_402
              #                    regtab     a0:Freed { symidx: temp_51_logicnot_74_0, tracked: true } |     a2:Freed { symidx: temp_48_i32_to_bool_74_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     244  label branch_short_circuit_p_false_402: 
.branch_short_circuit_p_false_402:
              #                     2016 untrack temp_51_logicnot_74_0 
              #                    occupy a0 with temp_51_logicnot_74_0
              #                    release a0 with temp_51_logicnot_74_0
              #                     240  temp_52_ret_of_h_74_0 =  Call i32 h_0(3_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_48_i32_to_bool_74_0
              #                    store to temp_48_i32_to_bool_74_0 in mem offset legal
    sb      a2,354(sp)
              #                    release a2 with temp_48_i32_to_bool_74_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    arg load ended


    call    h
              #                     941  mu array_0_52:240 
              #                     942  mu sum_0_57:240 
              #                     943  sum_0_58 = chi sum_0_57:240 
              #                     242  temp_53_i32_to_bool_74_0 = icmp i32 Ne temp_52_ret_of_h_74_0, 0_0 
              #                    occupy a0 with temp_52_ret_of_h_74_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_53_i32_to_bool_74_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2187 untrack temp_52_ret_of_h_74_0 
              #                    occupy a0 with temp_52_ret_of_h_74_0
              #                    release a0 with temp_52_ret_of_h_74_0
              #                     246  br i1 temp_53_i32_to_bool_74_0, label branch_short_circuit_c_true_394, label branch_short_circuit_c_false_402 
              #                    occupy a2 with temp_53_i32_to_bool_74_0
              #                    free a2
              #                    occupy a2 with temp_53_i32_to_bool_74_0
              #                    store to temp_53_i32_to_bool_74_0 in mem offset legal
    sb      a2,339(sp)
              #                    release a2 with temp_53_i32_to_bool_74_0
              #                    occupy a2 with temp_48_i32_to_bool_74_0
              #                    load from temp_48_i32_to_bool_74_0 in mem


    lb      a2,354(sp)
              #                    occupy a0 with temp_53_i32_to_bool_74_0
              #                    load from temp_53_i32_to_bool_74_0 in mem


    lb      a0,339(sp)
    bnez    a0, .branch_short_circuit_c_true_394
              #                    free a0
              #                    occupy a0 with temp_53_i32_to_bool_74_0
              #                    store to temp_53_i32_to_bool_74_0 in mem offset legal
    sb      a0,339(sp)
              #                    release a0 with temp_53_i32_to_bool_74_0
              #                    occupy a2 with temp_48_i32_to_bool_74_0
              #                    store to temp_48_i32_to_bool_74_0 in mem offset legal
    sb      a2,354(sp)
              #                    release a2 with temp_48_i32_to_bool_74_0
    j       .branch_short_circuit_c_false_402
.section ___var
    .data
    .align 4
    .globl array
              #                     19   global Array:i32:[Some(20_0)] array_0 
    .type array,@object
array:
    .zero 80
    .align 4
    .globl sum
              #                     17   global i32 sum_0 
    .type sum,@object
sum:
    .word 0
