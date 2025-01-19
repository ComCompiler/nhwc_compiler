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
              #                     32   Define search_0 "root_23_0,x_23_0," -> search_ret_0 
    .globl search
    .type search,@function
search:
              #                    mem layout:|ra_search:8 at 88|s0_search:8 at 80|root _s23 _i0:4 at 76|x _s23 _i0:4 at 72|temp_0_ptr_of_*left_child_0:8 at 64|temp_1_ele_of_*left_child_0 _s29 _i0:4 at 60|temp_2_ret_of_search _s29 _i0:4 at 56|temp_3_ptr_of_*right_child_0:8 at 48|temp_4_ele_of_*right_child_0 _s29 _i0:4 at 44|temp_5_ret_of_search _s29 _i0:4 at 40|temp_6_cmp _s26 _i0:1 at 39|none:7 at 32|temp_7_ptr_of_*value_0:8 at 24|temp_8_ele_of_*value_0 _s26 _i0:4 at 20|temp_9_cmp _s26 _i0:1 at 19|none:3 at 16|temp_10_ptr_of_*value_0:8 at 8|temp_12_cmp _s29 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-96
              #                    store to ra_search_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_search_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                     40   alloc ptr->i32 [temp_0_ptr_of_*left_child_0_29] 
              #                     42   alloc i32 [temp_1_ele_of_*left_child_0_29] 
              #                     45   alloc i32 [temp_2_ret_of_search_29] 
              #                     49   alloc ptr->i32 [temp_3_ptr_of_*right_child_0_29] 
              #                     51   alloc i32 [temp_4_ele_of_*right_child_0_29] 
              #                     54   alloc i32 [temp_5_ret_of_search_29] 
              #                     59   alloc i1 [temp_6_cmp_26] 
              #                     61   alloc ptr->i32 [temp_7_ptr_of_*value_0_26] 
              #                     63   alloc i32 [temp_8_ele_of_*value_0_26] 
              #                     66   alloc i1 [temp_9_cmp_26] 
              #                     74   alloc ptr->i32 [temp_10_ptr_of_*value_0_29] 
              #                     76   alloc i32 [temp_11_ele_of_*value_0_29] 
              #                     79   alloc i1 [temp_12_cmp_29] 
              #                    regtab     a0:Freed { symidx: root_23_0, tracked: true } |     a1:Freed { symidx: x_23_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L12_0: 
.L12_0:
              #                     60   temp_6_cmp_26_0 = icmp i32 Eq root_23_0, -1_0 
              #                    occupy a0 with root_23_0
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    occupy a3 with temp_6_cmp_26_0
    xor     a3,a0,a2
    seqz    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                     73   br i1 temp_6_cmp_26_0, label branch_short_circuit_c_true_193, label branch_short_circuit_p_false_193 
              #                    occupy a3 with temp_6_cmp_26_0
              #                    free a3
              #                    occupy a3 with temp_6_cmp_26_0
    bnez    a3, .branch_short_circuit_c_true_193
              #                    free a3
    j       .branch_short_circuit_p_false_193
              #                    regtab     a0:Freed { symidx: root_23_0, tracked: true } |     a1:Freed { symidx: x_23_0, tracked: true } |     a3:Freed { symidx: temp_6_cmp_26_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     68   label branch_short_circuit_c_true_193: 
.branch_short_circuit_c_true_193:
              #                     620  untrack temp_12_cmp_29_0 
              #                     619  untrack temp_4_ele_of_*right_child_0_29_0 
              #                     618  untrack temp_5_ret_of_search_29_0 
              #                     617  untrack temp_0_ptr_of_*left_child_0_29 
              #                     616  untrack x_23_0 
              #                    occupy a1 with x_23_0
              #                    release a1 with x_23_0
              #                     615  untrack temp_3_ptr_of_*right_child_0_29 
              #                     614  untrack temp_9_cmp_26_0 
              #                     613  untrack temp_8_ele_of_*value_0_26_0 
              #                     612  untrack temp_1_ele_of_*left_child_0_29_0 
              #                     611  untrack temp_2_ret_of_search_29_0 
              #                     608  untrack temp_3_ptr_of_*right_child_0_29 
              #                     607  untrack x_23_0 
              #                     606  untrack temp_2_ret_of_search_29_0 
              #                     605  untrack temp_9_cmp_26_0 
              #                     604  untrack temp_8_ele_of_*value_0_26_0 
              #                     603  untrack temp_5_ret_of_search_29_0 
              #                     602  untrack temp_0_ptr_of_*left_child_0_29 
              #                     601  untrack temp_1_ele_of_*left_child_0_29_0 
              #                     600  untrack temp_7_ptr_of_*value_0_26 
              #                     599  untrack temp_12_cmp_29_0 
              #                     598  untrack temp_4_ele_of_*right_child_0_29_0 
              #                     597  untrack temp_6_cmp_26_0 
              #                    occupy a3 with temp_6_cmp_26_0
              #                    release a3 with temp_6_cmp_26_0
              #                     58   ret root_23_0 
              #                    load from ra_search_0 in mem
    ld      ra,88(sp)
              #                    load from s0_search_0 in mem
    ld      s0,80(sp)
              #                    occupy a0 with root_23_0
              #                    store to root_23_0 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with root_23_0
              #                    occupy a0 with root_23_0
              #                    load from root_23_0 in mem


    lw      a0,76(sp)
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_23_0, tracked: true } |     a1:Freed { symidx: x_23_0, tracked: true } |     a3:Freed { symidx: temp_6_cmp_26_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     70   label branch_short_circuit_p_false_193: 
.branch_short_circuit_p_false_193:
              #                     609  untrack temp_6_cmp_26_0 
              #                    occupy a3 with temp_6_cmp_26_0
              #                    release a3 with temp_6_cmp_26_0
              #                     62   temp_7_ptr_of_*value_0_26 = GEP *value_0:Array:i32:[None] [Some(root_23_0)] 
              #                    occupy a2 with temp_7_ptr_of_*value_0_26
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_23_0
    mv      a3, a0
              #                    free a0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *value_0
              #                       load label value as ptr to reg
    la      a4, value
              #                    occupy reg a4 with *value_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     64   temp_8_ele_of_*value_0_26_0 = load temp_7_ptr_of_*value_0_26:ptr->i32 
              #                    occupy a2 with temp_7_ptr_of_*value_0_26
              #                    occupy a5 with temp_8_ele_of_*value_0_26_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     610  untrack temp_7_ptr_of_*value_0_26 
              #                    occupy a2 with temp_7_ptr_of_*value_0_26
              #                    release a2 with temp_7_ptr_of_*value_0_26
              #                     65   mu value_0_0:64 
              #                     67   temp_9_cmp_26_0 = icmp i32 Eq temp_8_ele_of_*value_0_26_0, x_23_0 
              #                    occupy a5 with temp_8_ele_of_*value_0_26_0
              #                    occupy a1 with x_23_0
              #                    occupy a2 with temp_9_cmp_26_0
    xor     a2,a5,a1
    seqz    a2, a2
              #                    free a5
              #                    free a1
              #                    free a2
              #                     72   br i1 temp_9_cmp_26_0, label branch_short_circuit_c_true_193, label branch_short_circuit_c_false_193 
              #                    occupy a2 with temp_9_cmp_26_0
              #                    free a2
              #                    occupy a2 with temp_9_cmp_26_0
              #                    store to temp_9_cmp_26_0 in mem offset legal
    sb      a2,19(sp)
              #                    release a2 with temp_9_cmp_26_0
              #                    occupy a3 with temp_6_cmp_26_0
              #                    load from temp_6_cmp_26_0 in mem


    lb      a3,39(sp)
              #                    occupy a5 with temp_8_ele_of_*value_0_26_0
              #                    store to temp_8_ele_of_*value_0_26_0 in mem offset legal
    sw      a5,20(sp)
              #                    release a5 with temp_8_ele_of_*value_0_26_0
              #                    occupy a2 with temp_9_cmp_26_0
              #                    load from temp_9_cmp_26_0 in mem


    lb      a2,19(sp)
    bnez    a2, .branch_short_circuit_c_true_193
              #                    free a2
    j       .branch_short_circuit_c_false_193
              #                    regtab     a0:Freed { symidx: root_23_0, tracked: true } |     a1:Freed { symidx: x_23_0, tracked: true } |     a2:Freed { symidx: temp_9_cmp_26_0, tracked: true } |     a3:Freed { symidx: temp_6_cmp_26_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     69   label branch_short_circuit_c_false_193: 
.branch_short_circuit_c_false_193:
              #                     621  untrack temp_9_cmp_26_0 
              #                    occupy a2 with temp_9_cmp_26_0
              #                    release a2 with temp_9_cmp_26_0
              #                     75   (nop) 
              #                     77   (nop) 
              #                     78   mu value_0_0:77 
              #                     80   temp_12_cmp_29_0 = icmp i32 Sgt x_23_0, temp_8_ele_of_*value_0_26_0 
              #                    occupy a1 with x_23_0
              #                    occupy a2 with temp_8_ele_of_*value_0_26_0
              #                    load from temp_8_ele_of_*value_0_26_0 in mem


    lw      a2,20(sp)
              #                    occupy a4 with temp_12_cmp_29_0
    slt     a4,a2,a1
              #                    free a1
              #                    free a2
              #                    free a4
              #                     622  untrack temp_8_ele_of_*value_0_26_0 
              #                    occupy a2 with temp_8_ele_of_*value_0_26_0
              #                    release a2 with temp_8_ele_of_*value_0_26_0
              #                     83   br i1 temp_12_cmp_29_0, label branch_true_30, label branch_false_30 
              #                    occupy a4 with temp_12_cmp_29_0
              #                    free a4
              #                    occupy a4 with temp_12_cmp_29_0
    bnez    a4, .branch_true_30
              #                    free a4
    j       .branch_false_30
              #                    regtab     a0:Freed { symidx: root_23_0, tracked: true } |     a1:Freed { symidx: x_23_0, tracked: true } |     a3:Freed { symidx: temp_6_cmp_26_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_29_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     81   label branch_true_30: 
.branch_true_30:
              #                     626  untrack temp_0_ptr_of_*left_child_0_29 
              #                     625  untrack temp_2_ret_of_search_29_0 
              #                     624  untrack temp_1_ele_of_*left_child_0_29_0 
              #                     623  untrack temp_12_cmp_29_0 
              #                    occupy a4 with temp_12_cmp_29_0
              #                    release a4 with temp_12_cmp_29_0
              #                     50   temp_3_ptr_of_*right_child_0_29 = GEP *right_child_0:Array:i32:[None] [Some(root_23_0)] 
              #                    occupy a2 with temp_3_ptr_of_*right_child_0_29
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_23_0
    mv      a4, a0
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a5, right_child
              #                    occupy reg a5 with *right_child_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                     631  untrack root_23_0 
              #                    occupy a0 with root_23_0
              #                    release a0 with root_23_0
              #                     52   temp_4_ele_of_*right_child_0_29_0 = load temp_3_ptr_of_*right_child_0_29:ptr->i32 
              #                    occupy a2 with temp_3_ptr_of_*right_child_0_29
              #                    occupy a0 with temp_4_ele_of_*right_child_0_29_0
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                     634  untrack temp_3_ptr_of_*right_child_0_29 
              #                    occupy a2 with temp_3_ptr_of_*right_child_0_29
              #                    release a2 with temp_3_ptr_of_*right_child_0_29
              #                     53   mu right_child_0_0:52 
              #                     55   temp_5_ret_of_search_29_0 =  Call i32 search_0(temp_4_ele_of_*right_child_0_29_0, x_23_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_4_ele_of_*right_child_0_29_0
              #                    store to temp_4_ele_of_*right_child_0_29_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_4_ele_of_*right_child_0_29_0
              #                    occupy a1 with x_23_0
              #                    store to x_23_0 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with x_23_0
              #                    occupy a3 with temp_6_cmp_26_0
              #                    store to temp_6_cmp_26_0 in mem offset legal
    sb      a3,39(sp)
              #                    release a3 with temp_6_cmp_26_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_4_ele_of_*right_child_0_29_0_0
              #                    load from temp_4_ele_of_*right_child_0_29_0 in mem


    lw      a0,44(sp)
              #                    occupy a1 with _anonymous_of_x_23_0_0
              #                    load from x_23_0 in mem


    lw      a1,72(sp)
              #                    arg load ended


    call    search
              #                     633  untrack x_23_0 
              #                     632  untrack temp_4_ele_of_*right_child_0_29_0 
              #                     449  mu value_0_0:55 
              #                     450  mu right_child_0_0:55 
              #                     451  mu left_child_0_0:55 
              #                     56   ret temp_5_ret_of_search_29_0 
              #                    load from ra_search_0 in mem
    ld      ra,88(sp)
              #                    load from s0_search_0 in mem
    ld      s0,80(sp)
              #                    occupy a0 with temp_5_ret_of_search_29_0
              #                    store to temp_5_ret_of_search_29_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_5_ret_of_search_29_0
              #                    occupy a0 with temp_5_ret_of_search_29_0
              #                    load from temp_5_ret_of_search_29_0 in mem


    lw      a0,40(sp)
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_23_0, tracked: true } |     a1:Freed { symidx: x_23_0, tracked: true } |     a3:Freed { symidx: temp_6_cmp_26_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_29_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     82   label branch_false_30: 
.branch_false_30:
              #                     630  untrack temp_3_ptr_of_*right_child_0_29 
              #                     629  untrack temp_5_ret_of_search_29_0 
              #                     628  untrack temp_12_cmp_29_0 
              #                    occupy a4 with temp_12_cmp_29_0
              #                    release a4 with temp_12_cmp_29_0
              #                     627  untrack temp_4_ele_of_*right_child_0_29_0 
              #                     41   temp_0_ptr_of_*left_child_0_29 = GEP *left_child_0:Array:i32:[None] [Some(root_23_0)] 
              #                    occupy a2 with temp_0_ptr_of_*left_child_0_29
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_23_0
    mv      a4, a0
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a5, left_child
              #                    occupy reg a5 with *left_child_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                     636  untrack root_23_0 
              #                    occupy a0 with root_23_0
              #                    release a0 with root_23_0
              #                     43   temp_1_ele_of_*left_child_0_29_0 = load temp_0_ptr_of_*left_child_0_29:ptr->i32 
              #                    occupy a2 with temp_0_ptr_of_*left_child_0_29
              #                    occupy a0 with temp_1_ele_of_*left_child_0_29_0
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                     638  untrack temp_0_ptr_of_*left_child_0_29 
              #                    occupy a2 with temp_0_ptr_of_*left_child_0_29
              #                    release a2 with temp_0_ptr_of_*left_child_0_29
              #                     44   mu left_child_0_0:43 
              #                     46   temp_2_ret_of_search_29_0 =  Call i32 search_0(temp_1_ele_of_*left_child_0_29_0, x_23_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_1_ele_of_*left_child_0_29_0
              #                    store to temp_1_ele_of_*left_child_0_29_0 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_1_ele_of_*left_child_0_29_0
              #                    occupy a1 with x_23_0
              #                    store to x_23_0 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with x_23_0
              #                    occupy a3 with temp_6_cmp_26_0
              #                    store to temp_6_cmp_26_0 in mem offset legal
    sb      a3,39(sp)
              #                    release a3 with temp_6_cmp_26_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_1_ele_of_*left_child_0_29_0_0
              #                    load from temp_1_ele_of_*left_child_0_29_0 in mem


    lw      a0,60(sp)
              #                    occupy a1 with _anonymous_of_x_23_0_0
              #                    load from x_23_0 in mem


    lw      a1,72(sp)
              #                    arg load ended


    call    search
              #                     637  untrack temp_1_ele_of_*left_child_0_29_0 
              #                     635  untrack x_23_0 
              #                     452  mu value_0_0:46 
              #                     453  mu right_child_0_0:46 
              #                     454  mu left_child_0_0:46 
              #                     47   ret temp_2_ret_of_search_29_0 
              #                    load from ra_search_0 in mem
    ld      ra,88(sp)
              #                    load from s0_search_0 in mem
    ld      s0,80(sp)
              #                    occupy a0 with temp_2_ret_of_search_29_0
              #                    store to temp_2_ret_of_search_29_0 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_2_ret_of_search_29_0
              #                    occupy a0 with temp_2_ret_of_search_29_0
              #                    load from temp_2_ret_of_search_29_0 in mem


    lw      a0,56(sp)
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     33   Define find_minimum_0 "root_33_0," -> find_minimum_ret_0 
    .globl find_minimum
    .type find_minimum,@function
find_minimum:
              #                    mem layout:|ra_find_minimum:8 at 48|s0_find_minimum:8 at 40|root _s33 _i0:4 at 36|none:4 at 32|temp_13_ptr_of_*left_child_0:8 at 24|temp_15_ret_of_find_minimum _s42 _i0:4 at 20|temp_16_cmp _s36 _i0:1 at 19|none:3 at 16|temp_17_ptr_of_*left_child_0:8 at 8|temp_18_ele_of_*left_child_0 _s40 _i0:4 at 4|temp_19_cmp _s40 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-56
              #                    store to ra_find_minimum_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_find_minimum_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     91   alloc ptr->i32 [temp_13_ptr_of_*left_child_0_42] 
              #                     93   alloc i32 [temp_14_ele_of_*left_child_0_42] 
              #                     96   alloc i32 [temp_15_ret_of_find_minimum_42] 
              #                     101  alloc i1 [temp_16_cmp_36] 
              #                     106  alloc ptr->i32 [temp_17_ptr_of_*left_child_0_40] 
              #                     108  alloc i32 [temp_18_ele_of_*left_child_0_40] 
              #                     111  alloc i1 [temp_19_cmp_40] 
              #                    regtab     a0:Freed { symidx: root_33_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     102  temp_16_cmp_36_0 = icmp i32 Eq root_33_0, -1_0 
              #                    occupy a0 with root_33_0
              #                    occupy a1 with -1_0
    li      a1, -1
              #                    occupy a2 with temp_16_cmp_36_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     105  br i1 temp_16_cmp_36_0, label branch_true_37, label branch_false_37 
              #                    occupy a2 with temp_16_cmp_36_0
              #                    free a2
              #                    occupy a2 with temp_16_cmp_36_0
    bnez    a2, .branch_true_37
              #                    free a2
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: root_33_0, tracked: true } |     a2:Freed { symidx: temp_16_cmp_36_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     103  label branch_true_37: 
.branch_true_37:
              #                     644  untrack temp_17_ptr_of_*left_child_0_40 
              #                     643  untrack temp_16_cmp_36_0 
              #                    occupy a2 with temp_16_cmp_36_0
              #                    release a2 with temp_16_cmp_36_0
              #                     642  untrack temp_15_ret_of_find_minimum_42_0 
              #                     641  untrack temp_19_cmp_40_0 
              #                     640  untrack temp_18_ele_of_*left_child_0_40_0 
              #                     639  untrack root_33_0 
              #                    occupy a0 with root_33_0
              #                    release a0 with root_33_0
              #                     100  ret -1_0 
              #                    load from ra_find_minimum_0 in mem
    ld      ra,48(sp)
              #                    load from s0_find_minimum_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with -1_0
    li      a0, -1
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_33_0, tracked: true } |     a2:Freed { symidx: temp_16_cmp_36_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     104  label branch_false_37: 
.branch_false_37:
              #                     645  untrack temp_16_cmp_36_0 
              #                    occupy a2 with temp_16_cmp_36_0
              #                    release a2 with temp_16_cmp_36_0
              #                     107  temp_17_ptr_of_*left_child_0_40 = GEP *left_child_0:Array:i32:[None] [Some(root_33_0)] 
              #                    occupy a1 with temp_17_ptr_of_*left_child_0_40
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_33_0
    mv      a2, a0
              #                    free a0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a3, left_child
              #                    occupy reg a3 with *left_child_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     109  temp_18_ele_of_*left_child_0_40_0 = load temp_17_ptr_of_*left_child_0_40:ptr->i32 
              #                    occupy a1 with temp_17_ptr_of_*left_child_0_40
              #                    occupy a4 with temp_18_ele_of_*left_child_0_40_0
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     646  untrack temp_17_ptr_of_*left_child_0_40 
              #                    occupy a1 with temp_17_ptr_of_*left_child_0_40
              #                    release a1 with temp_17_ptr_of_*left_child_0_40
              #                     110  mu left_child_0_0:109 
              #                     112  temp_19_cmp_40_0 = icmp i32 Ne temp_18_ele_of_*left_child_0_40_0, -1_0 
              #                    occupy a4 with temp_18_ele_of_*left_child_0_40_0
              #                    occupy a1 with -1_0
    li      a1, -1
              #                    occupy a5 with temp_19_cmp_40_0
    xor     a5,a4,a1
    snez    a5, a5
              #                    free a4
              #                    free a1
              #                    free a5
              #                     115  br i1 temp_19_cmp_40_0, label branch_true_41, label branch_false_41 
              #                    occupy a5 with temp_19_cmp_40_0
              #                    free a5
              #                    occupy a5 with temp_19_cmp_40_0
    bnez    a5, .branch_true_41
              #                    free a5
    j       .branch_false_41
              #                    regtab     a0:Freed { symidx: root_33_0, tracked: true } |     a4:Freed { symidx: temp_18_ele_of_*left_child_0_40_0, tracked: true } |     a5:Freed { symidx: temp_19_cmp_40_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     113  label branch_true_41: 
.branch_true_41:
              #                     648  untrack root_33_0 
              #                    occupy a0 with root_33_0
              #                    release a0 with root_33_0
              #                     647  untrack temp_19_cmp_40_0 
              #                    occupy a5 with temp_19_cmp_40_0
              #                    release a5 with temp_19_cmp_40_0
              #                     92   (nop) 
              #                     94   (nop) 
              #                     95   mu left_child_0_0:94 
              #                     97   temp_15_ret_of_find_minimum_42_0 =  Call i32 find_minimum_0(temp_18_ele_of_*left_child_0_40_0) 
              #                    saved register dumping to mem
              #                    occupy a4 with temp_18_ele_of_*left_child_0_40_0
              #                    store to temp_18_ele_of_*left_child_0_40_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_18_ele_of_*left_child_0_40_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_18_ele_of_*left_child_0_40_0_0
              #                    load from temp_18_ele_of_*left_child_0_40_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    find_minimum
              #                     652  untrack temp_18_ele_of_*left_child_0_40_0 
              #                     455  mu left_child_0_0:97 
              #                     98   ret temp_15_ret_of_find_minimum_42_0 
              #                    load from ra_find_minimum_0 in mem
    ld      ra,48(sp)
              #                    load from s0_find_minimum_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with temp_15_ret_of_find_minimum_42_0
              #                    store to temp_15_ret_of_find_minimum_42_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_15_ret_of_find_minimum_42_0
              #                    occupy a0 with temp_15_ret_of_find_minimum_42_0
              #                    load from temp_15_ret_of_find_minimum_42_0 in mem


    lw      a0,20(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_33_0, tracked: true } |     a4:Freed { symidx: temp_18_ele_of_*left_child_0_40_0, tracked: true } |     a5:Freed { symidx: temp_19_cmp_40_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     114  label branch_false_41: 
.branch_false_41:
              #                     651  untrack temp_19_cmp_40_0 
              #                    occupy a5 with temp_19_cmp_40_0
              #                    release a5 with temp_19_cmp_40_0
              #                     650  untrack temp_18_ele_of_*left_child_0_40_0 
              #                    occupy a4 with temp_18_ele_of_*left_child_0_40_0
              #                    release a4 with temp_18_ele_of_*left_child_0_40_0
              #                     649  untrack temp_15_ret_of_find_minimum_42_0 
              #                          jump label: gather_17 
    j       .gather_17
              #                    regtab     a0:Freed { symidx: root_33_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     116  label gather_17: 
.gather_17:
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: root_33_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     89   ret root_33_0 
              #                    load from ra_find_minimum_0 in mem
    ld      ra,48(sp)
              #                    load from s0_find_minimum_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with root_33_0
              #                    store to root_33_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with root_33_0
              #                    occupy a0 with root_33_0
              #                    load from root_33_0 in mem


    lw      a0,36(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     34   Define new_node_0 "x_45_0," -> new_node_ret_0 
    .globl new_node
    .type new_node,@function
new_node:
              #                    mem layout:|ra_new_node:8 at 56|s0_new_node:8 at 48|x _s45 _i0:4 at 44|temp_20_value_from_ptr _s47 _i0:4 at 40|temp_21_ptr_of_*value_0:8 at 32|temp_23_ptr_of_*left_child_0:8 at 24|temp_25_ptr_of_*right_child_0:8 at 16|temp_27_arithop _s47 _i0:4 at 12|temp_28_value_from_ptr _s47 _i0:4 at 8|temp_29_arithop _s47 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-64
              #                    store to ra_new_node_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_new_node_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     456  right_child_0_1 = chi right_child_0_0:34 
              #                     457  now_0_1 = chi now_0_0:34 
              #                     458  value_0_1 = chi value_0_0:34 
              #                     459  left_child_0_1 = chi left_child_0_0:34 
              #                     119  alloc i32 [temp_20_value_from_ptr_47] 
              #                     122  alloc ptr->i32 [temp_21_ptr_of_*value_0_47] 
              #                     126  alloc i32 [temp_22_value_from_ptr_47] 
              #                     129  alloc ptr->i32 [temp_23_ptr_of_*left_child_0_47] 
              #                     133  alloc i32 [temp_24_value_from_ptr_47] 
              #                     136  alloc ptr->i32 [temp_25_ptr_of_*right_child_0_47] 
              #                     140  alloc i32 [temp_26_value_from_ptr_47] 
              #                     143  alloc i32 [temp_27_arithop_47] 
              #                     148  alloc i32 [temp_28_value_from_ptr_47] 
              #                     151  alloc i32 [temp_29_arithop_47] 
              #                    regtab     a0:Freed { symidx: x_45_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     120  temp_20_value_from_ptr_47_0 = load *now_0:ptr->i32 
              #                    occupy a1 with *now_0
              #                       load label now as ptr to reg
    la      a1, now
              #                    occupy reg a1 with *now_0
              #                    occupy a2 with temp_20_value_from_ptr_47_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     121  mu now_0_1:120 
              #                     123  temp_21_ptr_of_*value_0_47 = GEP *value_0:ptr->i32 [Some(temp_20_value_from_ptr_47_0)] 
              #                    occupy a3 with temp_21_ptr_of_*value_0_47
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_20_value_from_ptr_47_0
    mv      a4, a2
              #                    free a2
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *value_0
              #                       load label value as ptr to reg
    la      a5, value
              #                    occupy reg a5 with *value_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     124  store x_45_0:i32 temp_21_ptr_of_*value_0_47:ptr->i32 
              #                    occupy a3 with temp_21_ptr_of_*value_0_47
              #                    occupy a0 with x_45_0
    sw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                     656  untrack temp_21_ptr_of_*value_0_47 
              #                    occupy a3 with temp_21_ptr_of_*value_0_47
              #                    release a3 with temp_21_ptr_of_*value_0_47
              #                     654  untrack x_45_0 
              #                    occupy a0 with x_45_0
              #                    release a0 with x_45_0
              #                     125  value_0_2 = chi value_0_1:124 
              #                     127  (nop) 
              #                     128  mu now_0_1:127 
              #                     130  temp_23_ptr_of_*left_child_0_47 = GEP *left_child_0:ptr->i32 [Some(temp_20_value_from_ptr_47_0)] 
              #                    occupy a0 with temp_23_ptr_of_*left_child_0_47
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_20_value_from_ptr_47_0
    mv      a3, a2
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a6 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a6, left_child
              #                    occupy reg a6 with *left_child_0
    add     a0,a0,a6
              #                    free a6
              #                    free a0
              #                     131  store -1_0:i32 temp_23_ptr_of_*left_child_0_47:ptr->i32 
              #                    occupy a0 with temp_23_ptr_of_*left_child_0_47
              #                    occupy a7 with -1_0
    li      a7, -1
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                     658  untrack temp_23_ptr_of_*left_child_0_47 
              #                    occupy a0 with temp_23_ptr_of_*left_child_0_47
              #                    release a0 with temp_23_ptr_of_*left_child_0_47
              #                     132  left_child_0_2 = chi left_child_0_1:131 
              #                     134  (nop) 
              #                     135  mu now_0_1:134 
              #                     137  temp_25_ptr_of_*right_child_0_47 = GEP *right_child_0:ptr->i32 [Some(temp_20_value_from_ptr_47_0)] 
              #                    occupy a0 with temp_25_ptr_of_*right_child_0_47
    li      a0, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_20_value_from_ptr_47_0
    mv      s1, a2
              #                    free a2
    add     a0,a0,s1
              #                    free s1
    slli a0,a0,2
              #                    occupy s2 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s2, right_child
              #                    occupy reg s2 with *right_child_0
    add     a0,a0,s2
              #                    free s2
              #                    free a0
              #                     138  store -1_0:i32 temp_25_ptr_of_*right_child_0_47:ptr->i32 
              #                    occupy a0 with temp_25_ptr_of_*right_child_0_47
              #                    found literal reg Some(a7) already exist with -1_0
              #                    occupy a7 with -1_0
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                     657  untrack temp_25_ptr_of_*right_child_0_47 
              #                    occupy a0 with temp_25_ptr_of_*right_child_0_47
              #                    release a0 with temp_25_ptr_of_*right_child_0_47
              #                     139  right_child_0_2 = chi right_child_0_1:138 
              #                     141  (nop) 
              #                     142  mu now_0_1:141 
              #                     144  temp_27_arithop_47_0 = Add i32 temp_20_value_from_ptr_47_0, 1_0 
              #                    occupy a2 with temp_20_value_from_ptr_47_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s3 with temp_27_arithop_47_0
    ADDW    s3,a2,a0
              #                    free a2
              #                    free a0
              #                    free s3
              #                     659  untrack temp_20_value_from_ptr_47_0 
              #                    occupy a2 with temp_20_value_from_ptr_47_0
              #                    release a2 with temp_20_value_from_ptr_47_0
              #                     145  store temp_27_arithop_47_0:i32 *now_0:ptr->i32 
              #                    occupy a2 with *now_0
              #                       load label now as ptr to reg
    la      a2, now
              #                    occupy reg a2 with *now_0
              #                    occupy s3 with temp_27_arithop_47_0
    sw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                     655  untrack temp_27_arithop_47_0 
              #                    occupy s3 with temp_27_arithop_47_0
              #                    release s3 with temp_27_arithop_47_0
              #                     146  now_0_2 = chi now_0_1:145 
              #                     149  temp_28_value_from_ptr_47_0 = load *now_0:ptr->i32 
              #                    occupy s3 with *now_0
              #                       load label now as ptr to reg
    la      s3, now
              #                    occupy reg s3 with *now_0
              #                    occupy s4 with temp_28_value_from_ptr_47_0
    lw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                     150  mu now_0_2:149 
              #                     152  temp_29_arithop_47_0 = Sub i32 temp_28_value_from_ptr_47_0, 1_0 
              #                    occupy s4 with temp_28_value_from_ptr_47_0
              #                    found literal reg Some(a0) already exist with 1_0
              #                    occupy a0 with 1_0
              #                    occupy s5 with temp_29_arithop_47_0
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Freed { symidx: *now_0, tracked: false } |     a2:Freed { symidx: *now_0, tracked: false } |     a3:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a5:Freed { symidx: *value_0, tracked: false } |     a6:Freed { symidx: *left_child_0, tracked: false } |     a7:Freed { symidx: -1_0, tracked: false } |     s1:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s2:Freed { symidx: *right_child_0, tracked: false } |     s3:Freed { symidx: *now_0, tracked: false } |     s4:Occupied { symidx: temp_28_value_from_ptr_47_0, tracked: true, occupy_count: 1 } |     s5:Occupied { symidx: temp_29_arithop_47_0, tracked: true, occupy_count: 1 } |  released_gpr_count:6,released_fpr_count:24


    subw    s5,s4,a0
              #                    free s4
              #                    free a0
              #                    free s5
              #                     653  untrack temp_28_value_from_ptr_47_0 
              #                    occupy s4 with temp_28_value_from_ptr_47_0
              #                    release s4 with temp_28_value_from_ptr_47_0
              #                     460  mu right_child_0_2:153 
              #                     461  mu now_0_2:153 
              #                     462  mu value_0_2:153 
              #                     463  mu left_child_0_2:153 
              #                     153  ret temp_29_arithop_47_0 
              #                    load from ra_new_node_0 in mem
    ld      ra,56(sp)
              #                    load from s0_new_node_0 in mem
    ld      s0,48(sp)
              #                    occupy s5 with temp_29_arithop_47_0
              #                    store to temp_29_arithop_47_0 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_29_arithop_47_0
              #                    occupy a0 with temp_29_arithop_47_0
              #                    load from temp_29_arithop_47_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     35   Define insert_0 "root_53_0,x_53_0," -> insert_ret_0 
    .globl insert
    .type insert,@function
insert:
              #                    mem layout:|ra_insert:8 at 88|s0_insert:8 at 80|root _s53 _i0:4 at 76|x _s53 _i0:4 at 72|temp_30_ptr_of_*left_child_0:8 at 64|temp_31_ptr_of_*left_child_0:8 at 56|temp_32_ele_of_*left_child_0 _s63 _i0:4 at 52|temp_33_ret_of_insert _s63 _i0:4 at 48|temp_34_ptr_of_*right_child_0:8 at 40|temp_35_ptr_of_*right_child_0:8 at 32|temp_36_ele_of_*right_child_0 _s60 _i0:4 at 28|temp_37_ret_of_insert _s60 _i0:4 at 24|temp_38_ret_of_new_node _s58 _i0:4 at 20|temp_39_cmp _s56 _i0:1 at 19|none:3 at 16|temp_40_ptr_of_*value_0:8 at 8|temp_41_ele_of_*value_0 _s60 _i0:4 at 4|temp_42_cmp _s60 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-96
              #                    store to ra_insert_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_insert_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                     464  right_child_0_3 = chi right_child_0_0:35 
              #                     465  value_0_3 = chi value_0_0:35 
              #                     466  left_child_0_3 = chi left_child_0_0:35 
              #                     467  now_0_3 = chi now_0_0:35 
              #                     156  alloc ptr->i32 [temp_30_ptr_of_*left_child_0_63] 
              #                     158  alloc ptr->i32 [temp_31_ptr_of_*left_child_0_63] 
              #                     160  alloc i32 [temp_32_ele_of_*left_child_0_63] 
              #                     163  alloc i32 [temp_33_ret_of_insert_63] 
              #                     169  alloc ptr->i32 [temp_34_ptr_of_*right_child_0_60] 
              #                     171  alloc ptr->i32 [temp_35_ptr_of_*right_child_0_60] 
              #                     173  alloc i32 [temp_36_ele_of_*right_child_0_60] 
              #                     176  alloc i32 [temp_37_ret_of_insert_60] 
              #                     181  alloc i32 [temp_38_ret_of_new_node_58] 
              #                     184  alloc i1 [temp_39_cmp_56] 
              #                     189  alloc ptr->i32 [temp_40_ptr_of_*value_0_60] 
              #                     191  alloc i32 [temp_41_ele_of_*value_0_60] 
              #                     194  alloc i1 [temp_42_cmp_60] 
              #                    regtab     a0:Freed { symidx: root_53_0, tracked: true } |     a1:Freed { symidx: x_53_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     185  temp_39_cmp_56_0 = icmp i32 Eq root_53_0, -1_0 
              #                    occupy a0 with root_53_0
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    occupy a3 with temp_39_cmp_56_0
    xor     a3,a0,a2
    seqz    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                     188  br i1 temp_39_cmp_56_0, label branch_true_57, label branch_false_57 
              #                    occupy a3 with temp_39_cmp_56_0
              #                    free a3
              #                    occupy a3 with temp_39_cmp_56_0
    bnez    a3, .branch_true_57
              #                    free a3
    j       .branch_false_57
              #                    regtab     a0:Freed { symidx: root_53_0, tracked: true } |     a1:Freed { symidx: x_53_0, tracked: true } |     a3:Freed { symidx: temp_39_cmp_56_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     186  label branch_true_57: 
.branch_true_57:
              #                     670  untrack temp_41_ele_of_*value_0_60_0 
              #                     669  untrack temp_37_ret_of_insert_60_0 
              #                     668  untrack temp_33_ret_of_insert_63_0 
              #                     667  untrack temp_30_ptr_of_*left_child_0_63 
              #                     666  untrack temp_40_ptr_of_*value_0_60 
              #                     665  untrack temp_39_cmp_56_0 
              #                    occupy a3 with temp_39_cmp_56_0
              #                    release a3 with temp_39_cmp_56_0
              #                     664  untrack temp_32_ele_of_*left_child_0_63_0 
              #                     663  untrack temp_36_ele_of_*right_child_0_60_0 
              #                     662  untrack root_53_0 
              #                    occupy a0 with root_53_0
              #                    release a0 with root_53_0
              #                     661  untrack temp_34_ptr_of_*right_child_0_60 
              #                     660  untrack temp_42_cmp_60_0 
              #                     182  temp_38_ret_of_new_node_58_0 =  Call i32 new_node_0(x_53_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with x_53_0
              #                    store to x_53_0 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with x_53_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_53_0_0
              #                    load from x_53_0 in mem


    lw      a0,72(sp)
              #                    arg load ended


    call    new_node
              #                     673  untrack x_53_0 
              #                     468  mu left_child_0_3:182 
              #                     469  mu now_0_3:182 
              #                     470  mu value_0_3:182 
              #                     471  mu right_child_0_3:182 
              #                     472  right_child_0_4 = chi right_child_0_3:182 
              #                     473  now_0_4 = chi now_0_3:182 
              #                     474  value_0_4 = chi value_0_3:182 
              #                     475  left_child_0_4 = chi left_child_0_3:182 
              #                     476  mu right_child_0_4:183 
              #                     477  mu value_0_4:183 
              #                     478  mu left_child_0_4:183 
              #                     479  mu now_0_4:183 
              #                     183  ret temp_38_ret_of_new_node_58_0 
              #                    load from ra_insert_0 in mem
    ld      ra,88(sp)
              #                    load from s0_insert_0 in mem
    ld      s0,80(sp)
              #                    occupy a0 with temp_38_ret_of_new_node_58_0
              #                    store to temp_38_ret_of_new_node_58_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_38_ret_of_new_node_58_0
              #                    occupy a0 with temp_38_ret_of_new_node_58_0
              #                    load from temp_38_ret_of_new_node_58_0 in mem


    lw      a0,20(sp)
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_53_0, tracked: true } |     a1:Freed { symidx: x_53_0, tracked: true } |     a3:Freed { symidx: temp_39_cmp_56_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     187  label branch_false_57: 
.branch_false_57:
              #                     672  untrack temp_39_cmp_56_0 
              #                    occupy a3 with temp_39_cmp_56_0
              #                    release a3 with temp_39_cmp_56_0
              #                     671  untrack temp_38_ret_of_new_node_58_0 
              #                     190  temp_40_ptr_of_*value_0_60 = GEP *value_0:Array:i32:[None] [Some(root_53_0)] 
              #                    occupy a2 with temp_40_ptr_of_*value_0_60
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_53_0
    mv      a3, a0
              #                    free a0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *value_0
              #                       load label value as ptr to reg
    la      a4, value
              #                    occupy reg a4 with *value_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     192  temp_41_ele_of_*value_0_60_0 = load temp_40_ptr_of_*value_0_60:ptr->i32 
              #                    occupy a2 with temp_40_ptr_of_*value_0_60
              #                    occupy a5 with temp_41_ele_of_*value_0_60_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     675  untrack temp_40_ptr_of_*value_0_60 
              #                    occupy a2 with temp_40_ptr_of_*value_0_60
              #                    release a2 with temp_40_ptr_of_*value_0_60
              #                     193  mu value_0_3:192 
              #                     195  temp_42_cmp_60_0 = icmp i32 Sgt x_53_0, temp_41_ele_of_*value_0_60_0 
              #                    occupy a1 with x_53_0
              #                    occupy a5 with temp_41_ele_of_*value_0_60_0
              #                    occupy a2 with temp_42_cmp_60_0
    slt     a2,a5,a1
              #                    free a1
              #                    free a5
              #                    free a2
              #                     674  untrack temp_41_ele_of_*value_0_60_0 
              #                    occupy a5 with temp_41_ele_of_*value_0_60_0
              #                    release a5 with temp_41_ele_of_*value_0_60_0
              #                     198  br i1 temp_42_cmp_60_0, label branch_true_61, label branch_false_61 
              #                    occupy a2 with temp_42_cmp_60_0
              #                    free a2
              #                    occupy a2 with temp_42_cmp_60_0
    bnez    a2, .branch_true_61
              #                    free a2
    j       .branch_false_61
              #                    regtab     a0:Freed { symidx: root_53_0, tracked: true } |     a1:Freed { symidx: x_53_0, tracked: true } |     a2:Freed { symidx: temp_42_cmp_60_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     196  label branch_true_61: 
.branch_true_61:
              #                     679  untrack temp_32_ele_of_*left_child_0_63_0 
              #                     678  untrack temp_30_ptr_of_*left_child_0_63 
              #                     677  untrack temp_42_cmp_60_0 
              #                    occupy a2 with temp_42_cmp_60_0
              #                    release a2 with temp_42_cmp_60_0
              #                     676  untrack temp_33_ret_of_insert_63_0 
              #                     170  temp_34_ptr_of_*right_child_0_60 = GEP *right_child_0:ptr->i32 [Some(root_53_0)] 
              #                    occupy a2 with temp_34_ptr_of_*right_child_0_60
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_53_0
    mv      a3, a0
              #                    free a0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a4, right_child
              #                    occupy reg a4 with *right_child_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     172  (nop) 
              #                     174  temp_36_ele_of_*right_child_0_60_0 = load temp_34_ptr_of_*right_child_0_60:ptr->i32 
              #                    occupy a2 with temp_34_ptr_of_*right_child_0_60
              #                    occupy a5 with temp_36_ele_of_*right_child_0_60_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     175  mu right_child_0_3:174 
              #                     177  temp_37_ret_of_insert_60_0 =  Call i32 insert_0(temp_36_ele_of_*right_child_0_60_0, x_53_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with root_53_0
              #                    store to root_53_0 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with root_53_0
              #                    occupy a1 with x_53_0
              #                    store to x_53_0 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with x_53_0
              #                    occupy a2 with temp_34_ptr_of_*right_child_0_60
              #                    store to temp_34_ptr_of_*right_child_0_60 in mem offset legal
    sd      a2,40(sp)
              #                    release a2 with temp_34_ptr_of_*right_child_0_60
              #                    occupy a5 with temp_36_ele_of_*right_child_0_60_0
              #                    store to temp_36_ele_of_*right_child_0_60_0 in mem offset legal
    sw      a5,28(sp)
              #                    release a5 with temp_36_ele_of_*right_child_0_60_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_36_ele_of_*right_child_0_60_0_0
              #                    load from temp_36_ele_of_*right_child_0_60_0 in mem


    lw      a0,28(sp)
              #                    occupy a1 with _anonymous_of_x_53_0_0
              #                    load from x_53_0 in mem


    lw      a1,72(sp)
              #                    arg load ended


    call    insert
              #                     687  untrack x_53_0 
              #                     685  untrack temp_36_ele_of_*right_child_0_60_0 
              #                     480  mu right_child_0_3:177 
              #                     481  mu left_child_0_3:177 
              #                     482  mu now_0_3:177 
              #                     483  mu value_0_3:177 
              #                     484  right_child_0_5 = chi right_child_0_3:177 
              #                     485  value_0_5 = chi value_0_3:177 
              #                     486  left_child_0_5 = chi left_child_0_3:177 
              #                     487  now_0_5 = chi now_0_3:177 
              #                     178  store temp_37_ret_of_insert_60_0:i32 temp_34_ptr_of_*right_child_0_60:ptr->i32 
              #                    occupy a1 with temp_34_ptr_of_*right_child_0_60
              #                    load from temp_34_ptr_of_*right_child_0_60 in mem
    ld      a1,40(sp)
              #                    occupy a0 with temp_37_ret_of_insert_60_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     686  untrack temp_34_ptr_of_*right_child_0_60 
              #                    occupy a1 with temp_34_ptr_of_*right_child_0_60
              #                    release a1 with temp_34_ptr_of_*right_child_0_60
              #                     684  untrack temp_37_ret_of_insert_60_0 
              #                    occupy a0 with temp_37_ret_of_insert_60_0
              #                    release a0 with temp_37_ret_of_insert_60_0
              #                     179  right_child_0_6 = chi right_child_0_5:178 
              #                          jump label: gather_28 
    j       .gather_28
              #                    regtab  released_gpr_count:16,released_fpr_count:24
              #                     199  label gather_28: 
.gather_28:
              #                          jump label: gather_30 
    j       .gather_30
              #                    regtab  released_gpr_count:16,released_fpr_count:24
              #                     200  label gather_30: 
.gather_30:
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab  released_gpr_count:16,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     488  mu right_child_0_7:168 
              #                     489  mu value_0_6:168 
              #                     490  mu left_child_0_6:168 
              #                     491  mu now_0_6:168 
              #                     168  ret root_53_0 
              #                    load from ra_insert_0 in mem
    ld      ra,88(sp)
              #                    load from s0_insert_0 in mem
    ld      s0,80(sp)
              #                    occupy a0 with root_53_0
              #                    load from root_53_0 in mem


    lw      a0,76(sp)
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_53_0, tracked: true } |     a1:Freed { symidx: x_53_0, tracked: true } |     a2:Freed { symidx: temp_42_cmp_60_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     197  label branch_false_61: 
.branch_false_61:
              #                     683  untrack temp_37_ret_of_insert_60_0 
              #                     682  untrack temp_36_ele_of_*right_child_0_60_0 
              #                     681  untrack temp_34_ptr_of_*right_child_0_60 
              #                     680  untrack temp_42_cmp_60_0 
              #                    occupy a2 with temp_42_cmp_60_0
              #                    release a2 with temp_42_cmp_60_0
              #                     157  temp_30_ptr_of_*left_child_0_63 = GEP *left_child_0:ptr->i32 [Some(root_53_0)] 
              #                    occupy a2 with temp_30_ptr_of_*left_child_0_63
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_53_0
    mv      a3, a0
              #                    free a0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a4, left_child
              #                    occupy reg a4 with *left_child_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     159  (nop) 
              #                     161  temp_32_ele_of_*left_child_0_63_0 = load temp_30_ptr_of_*left_child_0_63:ptr->i32 
              #                    occupy a2 with temp_30_ptr_of_*left_child_0_63
              #                    occupy a5 with temp_32_ele_of_*left_child_0_63_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     162  mu left_child_0_3:161 
              #                     164  temp_33_ret_of_insert_63_0 =  Call i32 insert_0(temp_32_ele_of_*left_child_0_63_0, x_53_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with root_53_0
              #                    store to root_53_0 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with root_53_0
              #                    occupy a1 with x_53_0
              #                    store to x_53_0 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with x_53_0
              #                    occupy a2 with temp_30_ptr_of_*left_child_0_63
              #                    store to temp_30_ptr_of_*left_child_0_63 in mem offset legal
    sd      a2,64(sp)
              #                    release a2 with temp_30_ptr_of_*left_child_0_63
              #                    occupy a5 with temp_32_ele_of_*left_child_0_63_0
              #                    store to temp_32_ele_of_*left_child_0_63_0 in mem offset legal
    sw      a5,52(sp)
              #                    release a5 with temp_32_ele_of_*left_child_0_63_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_32_ele_of_*left_child_0_63_0_0
              #                    load from temp_32_ele_of_*left_child_0_63_0 in mem


    lw      a0,52(sp)
              #                    occupy a1 with _anonymous_of_x_53_0_0
              #                    load from x_53_0 in mem


    lw      a1,72(sp)
              #                    arg load ended


    call    insert
              #                     690  untrack temp_32_ele_of_*left_child_0_63_0 
              #                     688  untrack x_53_0 
              #                     492  mu right_child_0_3:164 
              #                     493  mu left_child_0_3:164 
              #                     494  mu now_0_3:164 
              #                     495  mu value_0_3:164 
              #                     496  right_child_0_8 = chi right_child_0_3:164 
              #                     497  value_0_7 = chi value_0_3:164 
              #                     498  left_child_0_7 = chi left_child_0_3:164 
              #                     499  now_0_7 = chi now_0_3:164 
              #                     165  store temp_33_ret_of_insert_63_0:i32 temp_30_ptr_of_*left_child_0_63:ptr->i32 
              #                    occupy a1 with temp_30_ptr_of_*left_child_0_63
              #                    load from temp_30_ptr_of_*left_child_0_63 in mem
    ld      a1,64(sp)
              #                    occupy a0 with temp_33_ret_of_insert_63_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     691  untrack temp_30_ptr_of_*left_child_0_63 
              #                    occupy a1 with temp_30_ptr_of_*left_child_0_63
              #                    release a1 with temp_30_ptr_of_*left_child_0_63
              #                     689  untrack temp_33_ret_of_insert_63_0 
              #                    occupy a0 with temp_33_ret_of_insert_63_0
              #                    release a0 with temp_33_ret_of_insert_63_0
              #                     166  left_child_0_8 = chi left_child_0_7:165 
              #                          jump label: gather_28 
    j       .gather_28
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     36   Define delete_0 "root_66_0,x_66_0," -> delete_ret_0 
    .globl delete
    .type delete,@function
delete:
              #                    mem layout:|ra_delete:8 at 264|s0_delete:8 at 256|root _s66 _i0:4 at 252|x _s66 _i0:4 at 248|temp_43_ptr_of_*right_child_0:8 at 240|temp_45_ret_of_find_minimum _s87 _i0:4 at 236|none:4 at 232|temp_46_ptr_of_*value_0:8 at 224|temp_47_ptr_of_*value_0:8 at 216|temp_48_ele_of_*value_0 _s87 _i0:4 at 212|none:4 at 208|temp_49_ptr_of_*right_child_0:8 at 200|temp_50_ptr_of_*right_child_0:8 at 192|temp_52_ptr_of_*value_0:8 at 184|temp_53_ele_of_*value_0 _s87 _i0:4 at 180|temp_54_ret_of_delete _s87 _i0:4 at 176|temp_55_ptr_of_*left_child_0:8 at 168|temp_57_ptr_of_*right_child_0:8 at 160|temp_58_ele_of_*right_child_0 _s83 _i0:4 at 156|none:4 at 152|temp_59_ptr_of_*left_child_0:8 at 144|temp_60_ptr_of_*left_child_0:8 at 136|temp_61_ele_of_*left_child_0 _s75 _i0:4 at 132|temp_62_ret_of_delete _s75 _i0:4 at 128|temp_63_ptr_of_*right_child_0:8 at 120|temp_64_ptr_of_*right_child_0:8 at 112|temp_65_ele_of_*right_child_0 _s72 _i0:4 at 108|temp_66_ret_of_delete _s72 _i0:4 at 104|temp_67_cmp _s69 _i0:1 at 103|none:7 at 96|temp_68_ptr_of_*value_0:8 at 88|temp_69_ele_of_*value_0 _s72 _i0:4 at 84|temp_70_cmp _s72 _i0:1 at 83|none:3 at 80|temp_71_ptr_of_*value_0:8 at 72|temp_73_cmp _s75 _i0:1 at 71|none:7 at 64|temp_74_ptr_of_*left_child_0:8 at 56|temp_75_ele_of_*left_child_0 _s78 _i0:4 at 52|temp_76_cmp _s78 _i0:1 at 51|none:3 at 48|temp_77_ptr_of_*right_child_0:8 at 40|temp_78_ele_of_*right_child_0 _s78 _i0:4 at 36|temp_79_cmp _s78 _i0:1 at 35|none:3 at 32|temp_80_ptr_of_*left_child_0:8 at 24|temp_83_ptr_of_*right_child_0:8 at 16|temp_84_ele_of_*right_child_0 _s81 _i0:4 at 12|temp_85_cmp _s81 _i0:1 at 11|none:3 at 8|temp_86_ptr_of_*left_child_0:8 at 0
    addi    sp,sp,-272
              #                    store to ra_delete_0 in mem offset legal
    sd      ra,264(sp)
              #                    store to s0_delete_0 in mem offset legal
    sd      s0,256(sp)
    addi    s0,sp,272
              #                     500  left_child_0_9 = chi left_child_0_0:36 
              #                     501  right_child_0_9 = chi right_child_0_0:36 
              #                     502  value_0_8 = chi value_0_0:36 
              #                     203  alloc ptr->i32 [temp_43_ptr_of_*right_child_0_87] 
              #                     205  alloc i32 [temp_44_ele_of_*right_child_0_87] 
              #                     208  alloc i32 [temp_45_ret_of_find_minimum_87] 
              #                     211  alloc i32 [tmp_87] 
              #                     212  alloc ptr->i32 [temp_46_ptr_of_*value_0_87] 
              #                     214  alloc ptr->i32 [temp_47_ptr_of_*value_0_87] 
              #                     216  alloc i32 [temp_48_ele_of_*value_0_87] 
              #                     221  alloc ptr->i32 [temp_49_ptr_of_*right_child_0_87] 
              #                     223  alloc ptr->i32 [temp_50_ptr_of_*right_child_0_87] 
              #                     225  alloc i32 [temp_51_ele_of_*right_child_0_87] 
              #                     228  alloc ptr->i32 [temp_52_ptr_of_*value_0_87] 
              #                     230  alloc i32 [temp_53_ele_of_*value_0_87] 
              #                     233  alloc i32 [temp_54_ret_of_delete_87] 
              #                     240  alloc ptr->i32 [temp_55_ptr_of_*left_child_0_83] 
              #                     242  alloc i32 [temp_56_ele_of_*left_child_0_83] 
              #                     247  alloc ptr->i32 [temp_57_ptr_of_*right_child_0_83] 
              #                     249  alloc i32 [temp_58_ele_of_*right_child_0_83] 
              #                     255  alloc ptr->i32 [temp_59_ptr_of_*left_child_0_75] 
              #                     257  alloc ptr->i32 [temp_60_ptr_of_*left_child_0_75] 
              #                     259  alloc i32 [temp_61_ele_of_*left_child_0_75] 
              #                     262  alloc i32 [temp_62_ret_of_delete_75] 
              #                     266  alloc ptr->i32 [temp_63_ptr_of_*right_child_0_72] 
              #                     268  alloc ptr->i32 [temp_64_ptr_of_*right_child_0_72] 
              #                     270  alloc i32 [temp_65_ele_of_*right_child_0_72] 
              #                     273  alloc i32 [temp_66_ret_of_delete_72] 
              #                     279  alloc i1 [temp_67_cmp_69] 
              #                     284  alloc ptr->i32 [temp_68_ptr_of_*value_0_72] 
              #                     286  alloc i32 [temp_69_ele_of_*value_0_72] 
              #                     289  alloc i1 [temp_70_cmp_72] 
              #                     294  alloc ptr->i32 [temp_71_ptr_of_*value_0_75] 
              #                     296  alloc i32 [temp_72_ele_of_*value_0_75] 
              #                     299  alloc i1 [temp_73_cmp_75] 
              #                     304  alloc ptr->i32 [temp_74_ptr_of_*left_child_0_78] 
              #                     306  alloc i32 [temp_75_ele_of_*left_child_0_78] 
              #                     309  alloc i1 [temp_76_cmp_78] 
              #                     311  alloc ptr->i32 [temp_77_ptr_of_*right_child_0_78] 
              #                     313  alloc i32 [temp_78_ele_of_*right_child_0_78] 
              #                     316  alloc i1 [temp_79_cmp_78] 
              #                     324  alloc ptr->i32 [temp_80_ptr_of_*left_child_0_81] 
              #                     326  alloc i32 [temp_81_ele_of_*left_child_0_81] 
              #                     329  alloc i1 [temp_82_cmp_81] 
              #                     331  alloc ptr->i32 [temp_83_ptr_of_*right_child_0_81] 
              #                     333  alloc i32 [temp_84_ele_of_*right_child_0_81] 
              #                     336  alloc i1 [temp_85_cmp_81] 
              #                     350  alloc ptr->i32 [temp_86_ptr_of_*left_child_0_83] 
              #                     352  alloc i32 [temp_87_ele_of_*left_child_0_83] 
              #                     355  alloc i1 [temp_88_cmp_83] 
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a1:Freed { symidx: x_66_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     280  temp_67_cmp_69_0 = icmp i32 Eq root_66_0, -1_0 
              #                    occupy a0 with root_66_0
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    occupy a3 with temp_67_cmp_69_0
    xor     a3,a0,a2
    seqz    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                     283  br i1 temp_67_cmp_69_0, label branch_true_70, label branch_false_70 
              #                    occupy a3 with temp_67_cmp_69_0
              #                    free a3
              #                    occupy a3 with temp_67_cmp_69_0
    bnez    a3, .branch_true_70
              #                    free a3
    j       .branch_false_70
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a1:Freed { symidx: x_66_0, tracked: true } |     a3:Freed { symidx: temp_67_cmp_69_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     281  label branch_true_70: 
.branch_true_70:
              #                     720  untrack temp_84_ele_of_*right_child_0_81_0 
              #                     719  untrack x_66_0 
              #                    occupy a1 with x_66_0
              #                    release a1 with x_66_0
              #                     718  untrack temp_58_ele_of_*right_child_0_83_0 
              #                     717  untrack temp_73_cmp_75_0 
              #                     716  untrack temp_61_ele_of_*left_child_0_75_0 
              #                     715  untrack temp_67_cmp_69_0 
              #                    occupy a3 with temp_67_cmp_69_0
              #                    release a3 with temp_67_cmp_69_0
              #                     714  untrack temp_75_ele_of_*left_child_0_78_0 
              #                     713  untrack temp_62_ret_of_delete_75_0 
              #                     712  untrack temp_59_ptr_of_*left_child_0_75 
              #                     711  untrack temp_70_cmp_72_0 
              #                     710  untrack temp_69_ele_of_*value_0_72_0 
              #                     709  untrack temp_48_ele_of_*value_0_87_0 
              #                     708  untrack temp_74_ptr_of_*left_child_0_78 
              #                     707  untrack temp_47_ptr_of_*value_0_87 
              #                     706  untrack temp_54_ret_of_delete_87_0 
              #                     705  untrack temp_78_ele_of_*right_child_0_78_0 
              #                     704  untrack temp_76_cmp_78_0 
              #                     703  untrack temp_45_ret_of_find_minimum_87_0 
              #                     702  untrack temp_85_cmp_81_0 
              #                     701  untrack temp_79_cmp_78_0 
              #                     700  untrack temp_68_ptr_of_*value_0_72 
              #                     699  untrack temp_57_ptr_of_*right_child_0_83 
              #                     698  untrack temp_83_ptr_of_*right_child_0_81 
              #                     697  untrack temp_66_ret_of_delete_72_0 
              #                     696  untrack root_66_0 
              #                    occupy a0 with root_66_0
              #                    release a0 with root_66_0
              #                     695  untrack temp_65_ele_of_*right_child_0_72_0 
              #                     694  untrack temp_63_ptr_of_*right_child_0_72 
              #                     693  untrack temp_77_ptr_of_*right_child_0_78 
              #                     692  untrack temp_53_ele_of_*value_0_87_0 
              #                     503  mu left_child_0_9:278 
              #                     504  mu right_child_0_9:278 
              #                     505  mu value_0_8:278 
              #                     278  ret -1_0 
              #                    load from ra_delete_0 in mem
    ld      ra,264(sp)
              #                    load from s0_delete_0 in mem
    ld      s0,256(sp)
              #                    occupy a0 with -1_0
    li      a0, -1
    addi    sp,sp,272
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a1:Freed { symidx: x_66_0, tracked: true } |     a3:Freed { symidx: temp_67_cmp_69_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     282  label branch_false_70: 
.branch_false_70:
              #                     721  untrack temp_67_cmp_69_0 
              #                    occupy a3 with temp_67_cmp_69_0
              #                    release a3 with temp_67_cmp_69_0
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a1:Freed { symidx: x_66_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     285  temp_68_ptr_of_*value_0_72 = GEP *value_0:Array:i32:[None] [Some(root_66_0)] 
              #                    occupy a2 with temp_68_ptr_of_*value_0_72
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_66_0
    mv      a3, a0
              #                    free a0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *value_0
              #                       load label value as ptr to reg
    la      a4, value
              #                    occupy reg a4 with *value_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     287  temp_69_ele_of_*value_0_72_0 = load temp_68_ptr_of_*value_0_72:ptr->i32 
              #                    occupy a2 with temp_68_ptr_of_*value_0_72
              #                    occupy a5 with temp_69_ele_of_*value_0_72_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     288  mu value_0_8:287 
              #                     290  temp_70_cmp_72_0 = icmp i32 Sgt x_66_0, temp_69_ele_of_*value_0_72_0 
              #                    occupy a1 with x_66_0
              #                    occupy a5 with temp_69_ele_of_*value_0_72_0
              #                    occupy a6 with temp_70_cmp_72_0
    slt     a6,a5,a1
              #                    free a1
              #                    free a5
              #                    free a6
              #                     293  br i1 temp_70_cmp_72_0, label branch_true_73, label branch_false_73 
              #                    occupy a6 with temp_70_cmp_72_0
              #                    free a6
              #                    occupy a6 with temp_70_cmp_72_0
    bnez    a6, .branch_true_73
              #                    free a6
    j       .branch_false_73
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a1:Freed { symidx: x_66_0, tracked: true } |     a2:Freed { symidx: temp_68_ptr_of_*value_0_72, tracked: true } |     a5:Freed { symidx: temp_69_ele_of_*value_0_72_0, tracked: true } |     a6:Freed { symidx: temp_70_cmp_72_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     291  label branch_true_73: 
.branch_true_73:
              #                     744  untrack temp_74_ptr_of_*left_child_0_78 
              #                     743  untrack temp_83_ptr_of_*right_child_0_81 
              #                     742  untrack temp_48_ele_of_*value_0_87_0 
              #                     741  untrack temp_84_ele_of_*right_child_0_81_0 
              #                     740  untrack temp_47_ptr_of_*value_0_87 
              #                     739  untrack temp_62_ret_of_delete_75_0 
              #                     738  untrack temp_78_ele_of_*right_child_0_78_0 
              #                     737  untrack temp_77_ptr_of_*right_child_0_78 
              #                     736  untrack temp_58_ele_of_*right_child_0_83_0 
              #                     735  untrack temp_70_cmp_72_0 
              #                    occupy a6 with temp_70_cmp_72_0
              #                    release a6 with temp_70_cmp_72_0
              #                     734  untrack temp_79_cmp_78_0 
              #                     733  untrack temp_85_cmp_81_0 
              #                     732  untrack temp_54_ret_of_delete_87_0 
              #                     731  untrack temp_59_ptr_of_*left_child_0_75 
              #                     730  untrack temp_53_ele_of_*value_0_87_0 
              #                     729  untrack temp_75_ele_of_*left_child_0_78_0 
              #                     728  untrack temp_61_ele_of_*left_child_0_75_0 
              #                     727  untrack temp_57_ptr_of_*right_child_0_83 
              #                     726  untrack temp_69_ele_of_*value_0_72_0 
              #                    occupy a5 with temp_69_ele_of_*value_0_72_0
              #                    release a5 with temp_69_ele_of_*value_0_72_0
              #                     725  untrack temp_76_cmp_78_0 
              #                     724  untrack temp_73_cmp_75_0 
              #                     723  untrack temp_45_ret_of_find_minimum_87_0 
              #                     722  untrack temp_68_ptr_of_*value_0_72 
              #                    occupy a2 with temp_68_ptr_of_*value_0_72
              #                    release a2 with temp_68_ptr_of_*value_0_72
              #                     267  temp_63_ptr_of_*right_child_0_72 = GEP *right_child_0:ptr->i32 [Some(root_66_0)] 
              #                    occupy a2 with temp_63_ptr_of_*right_child_0_72
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_66_0
    mv      a3, a0
              #                    free a0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a4, right_child
              #                    occupy reg a4 with *right_child_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     269  (nop) 
              #                     271  temp_65_ele_of_*right_child_0_72_0 = load temp_63_ptr_of_*right_child_0_72:ptr->i32 
              #                    occupy a2 with temp_63_ptr_of_*right_child_0_72
              #                    occupy a5 with temp_65_ele_of_*right_child_0_72_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     272  mu right_child_0_9:271 
              #                     274  temp_66_ret_of_delete_72_0 =  Call i32 delete_0(temp_65_ele_of_*right_child_0_72_0, x_66_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with root_66_0
              #                    store to root_66_0 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with root_66_0
              #                    occupy a1 with x_66_0
              #                    store to x_66_0 in mem offset legal
    sw      a1,248(sp)
              #                    release a1 with x_66_0
              #                    occupy a2 with temp_63_ptr_of_*right_child_0_72
              #                    store to temp_63_ptr_of_*right_child_0_72 in mem offset legal
    sd      a2,120(sp)
              #                    release a2 with temp_63_ptr_of_*right_child_0_72
              #                    occupy a5 with temp_65_ele_of_*right_child_0_72_0
              #                    store to temp_65_ele_of_*right_child_0_72_0 in mem offset legal
    sw      a5,108(sp)
              #                    release a5 with temp_65_ele_of_*right_child_0_72_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_65_ele_of_*right_child_0_72_0_0
              #                    load from temp_65_ele_of_*right_child_0_72_0 in mem


    lw      a0,108(sp)
              #                    occupy a1 with _anonymous_of_x_66_0_0
              #                    load from x_66_0 in mem


    lw      a1,248(sp)
              #                    arg load ended


    call    delete
              #                     751  untrack x_66_0 
              #                     750  untrack temp_65_ele_of_*right_child_0_72_0 
              #                     506  mu left_child_0_9:274 
              #                     507  mu right_child_0_9:274 
              #                     508  mu value_0_8:274 
              #                     509  left_child_0_10 = chi left_child_0_9:274 
              #                     510  right_child_0_10 = chi right_child_0_9:274 
              #                     511  value_0_9 = chi value_0_8:274 
              #                     275  store temp_66_ret_of_delete_72_0:i32 temp_63_ptr_of_*right_child_0_72:ptr->i32 
              #                    occupy a1 with temp_63_ptr_of_*right_child_0_72
              #                    load from temp_63_ptr_of_*right_child_0_72 in mem
    ld      a1,120(sp)
              #                    occupy a0 with temp_66_ret_of_delete_72_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     752  untrack temp_66_ret_of_delete_72_0 
              #                    occupy a0 with temp_66_ret_of_delete_72_0
              #                    release a0 with temp_66_ret_of_delete_72_0
              #                     749  untrack temp_63_ptr_of_*right_child_0_72 
              #                    occupy a1 with temp_63_ptr_of_*right_child_0_72
              #                    release a1 with temp_63_ptr_of_*right_child_0_72
              #                     276  right_child_0_11 = chi right_child_0_10:275 
              #                          jump label: gather_52 
    j       .gather_52
              #                    regtab  released_gpr_count:16,released_fpr_count:24
              #                     347  label gather_52: 
.gather_52:
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab  released_gpr_count:16,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     512  mu left_child_0_11:238 
              #                     513  mu right_child_0_12:238 
              #                     514  mu value_0_10:238 
              #                     238  ret root_66_0 
              #                    load from ra_delete_0 in mem
    ld      ra,264(sp)
              #                    load from s0_delete_0 in mem
    ld      s0,256(sp)
              #                    occupy a0 with root_66_0
              #                    load from root_66_0 in mem


    lw      a0,252(sp)
    addi    sp,sp,272
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a1:Freed { symidx: x_66_0, tracked: true } |     a2:Freed { symidx: temp_68_ptr_of_*value_0_72, tracked: true } |     a5:Freed { symidx: temp_69_ele_of_*value_0_72_0, tracked: true } |     a6:Freed { symidx: temp_70_cmp_72_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     292  label branch_false_73: 
.branch_false_73:
              #                     748  untrack temp_66_ret_of_delete_72_0 
              #                     747  untrack temp_70_cmp_72_0 
              #                    occupy a6 with temp_70_cmp_72_0
              #                    release a6 with temp_70_cmp_72_0
              #                     746  untrack temp_65_ele_of_*right_child_0_72_0 
              #                     745  untrack temp_63_ptr_of_*right_child_0_72 
              #                     295  (nop) 
              #                     297  (nop) 
              #                     298  mu value_0_8:297 
              #                     300  temp_73_cmp_75_0 = icmp i32 Slt x_66_0, temp_69_ele_of_*value_0_72_0 
              #                    occupy a1 with x_66_0
              #                    occupy a5 with temp_69_ele_of_*value_0_72_0
              #                    occupy a3 with temp_73_cmp_75_0
    slt     a3,a1,a5
              #                    free a1
              #                    free a5
              #                    free a3
              #                     753  untrack temp_69_ele_of_*value_0_72_0 
              #                    occupy a5 with temp_69_ele_of_*value_0_72_0
              #                    release a5 with temp_69_ele_of_*value_0_72_0
              #                     303  br i1 temp_73_cmp_75_0, label branch_true_76, label branch_false_76 
              #                    occupy a3 with temp_73_cmp_75_0
              #                    free a3
              #                    occupy a3 with temp_73_cmp_75_0
    bnez    a3, .branch_true_76
              #                    free a3
    j       .branch_false_76
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a1:Freed { symidx: x_66_0, tracked: true } |     a2:Freed { symidx: temp_68_ptr_of_*value_0_72, tracked: true } |     a3:Freed { symidx: temp_73_cmp_75_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     301  label branch_true_76: 
.branch_true_76:
              #                     771  untrack temp_76_cmp_78_0 
              #                     770  untrack temp_83_ptr_of_*right_child_0_81 
              #                     769  untrack temp_58_ele_of_*right_child_0_83_0 
              #                     768  untrack temp_47_ptr_of_*value_0_87 
              #                     767  untrack temp_45_ret_of_find_minimum_87_0 
              #                     766  untrack temp_78_ele_of_*right_child_0_78_0 
              #                     765  untrack temp_85_cmp_81_0 
              #                     764  untrack temp_75_ele_of_*left_child_0_78_0 
              #                     763  untrack temp_48_ele_of_*value_0_87_0 
              #                     762  untrack temp_84_ele_of_*right_child_0_81_0 
              #                     761  untrack temp_68_ptr_of_*value_0_72 
              #                    occupy a2 with temp_68_ptr_of_*value_0_72
              #                    release a2 with temp_68_ptr_of_*value_0_72
              #                     760  untrack temp_79_cmp_78_0 
              #                     759  untrack temp_54_ret_of_delete_87_0 
              #                     758  untrack temp_73_cmp_75_0 
              #                    occupy a3 with temp_73_cmp_75_0
              #                    release a3 with temp_73_cmp_75_0
              #                     757  untrack temp_74_ptr_of_*left_child_0_78 
              #                     756  untrack temp_77_ptr_of_*right_child_0_78 
              #                     755  untrack temp_53_ele_of_*value_0_87_0 
              #                     754  untrack temp_57_ptr_of_*right_child_0_83 
              #                     256  temp_59_ptr_of_*left_child_0_75 = GEP *left_child_0:ptr->i32 [Some(root_66_0)] 
              #                    occupy a2 with temp_59_ptr_of_*left_child_0_75
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_66_0
    mv      a3, a0
              #                    free a0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a4, left_child
              #                    occupy reg a4 with *left_child_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     258  (nop) 
              #                     260  temp_61_ele_of_*left_child_0_75_0 = load temp_59_ptr_of_*left_child_0_75:ptr->i32 
              #                    occupy a2 with temp_59_ptr_of_*left_child_0_75
              #                    occupy a5 with temp_61_ele_of_*left_child_0_75_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     261  mu left_child_0_9:260 
              #                     263  temp_62_ret_of_delete_75_0 =  Call i32 delete_0(temp_61_ele_of_*left_child_0_75_0, x_66_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with root_66_0
              #                    store to root_66_0 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with root_66_0
              #                    occupy a1 with x_66_0
              #                    store to x_66_0 in mem offset legal
    sw      a1,248(sp)
              #                    release a1 with x_66_0
              #                    occupy a2 with temp_59_ptr_of_*left_child_0_75
              #                    store to temp_59_ptr_of_*left_child_0_75 in mem offset legal
    sd      a2,144(sp)
              #                    release a2 with temp_59_ptr_of_*left_child_0_75
              #                    occupy a5 with temp_61_ele_of_*left_child_0_75_0
              #                    store to temp_61_ele_of_*left_child_0_75_0 in mem offset legal
    sw      a5,132(sp)
              #                    release a5 with temp_61_ele_of_*left_child_0_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_61_ele_of_*left_child_0_75_0_0
              #                    load from temp_61_ele_of_*left_child_0_75_0 in mem


    lw      a0,132(sp)
              #                    occupy a1 with _anonymous_of_x_66_0_0
              #                    load from x_66_0 in mem


    lw      a1,248(sp)
              #                    arg load ended


    call    delete
              #                     778  untrack x_66_0 
              #                     777  untrack temp_61_ele_of_*left_child_0_75_0 
              #                     515  mu left_child_0_9:263 
              #                     516  mu right_child_0_9:263 
              #                     517  mu value_0_8:263 
              #                     518  left_child_0_12 = chi left_child_0_9:263 
              #                     519  right_child_0_13 = chi right_child_0_9:263 
              #                     520  value_0_11 = chi value_0_8:263 
              #                     264  store temp_62_ret_of_delete_75_0:i32 temp_59_ptr_of_*left_child_0_75:ptr->i32 
              #                    occupy a1 with temp_59_ptr_of_*left_child_0_75
              #                    load from temp_59_ptr_of_*left_child_0_75 in mem
    ld      a1,144(sp)
              #                    occupy a0 with temp_62_ret_of_delete_75_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     780  untrack temp_62_ret_of_delete_75_0 
              #                    occupy a0 with temp_62_ret_of_delete_75_0
              #                    release a0 with temp_62_ret_of_delete_75_0
              #                     779  untrack temp_59_ptr_of_*left_child_0_75 
              #                    occupy a1 with temp_59_ptr_of_*left_child_0_75
              #                    release a1 with temp_59_ptr_of_*left_child_0_75
              #                     265  left_child_0_13 = chi left_child_0_12:264 
              #                          jump label: gather_50 
    j       .gather_50
              #                    regtab  released_gpr_count:16,released_fpr_count:24
              #                     346  label gather_50: 
.gather_50:
              #                          jump label: gather_52 
    j       .gather_52
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a1:Freed { symidx: x_66_0, tracked: true } |     a2:Freed { symidx: temp_68_ptr_of_*value_0_72, tracked: true } |     a3:Freed { symidx: temp_73_cmp_75_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     302  label branch_false_76: 
.branch_false_76:
              #                     776  untrack temp_62_ret_of_delete_75_0 
              #                     775  untrack temp_59_ptr_of_*left_child_0_75 
              #                     774  untrack temp_61_ele_of_*left_child_0_75_0 
              #                     773  untrack x_66_0 
              #                    occupy a1 with x_66_0
              #                    release a1 with x_66_0
              #                     772  untrack temp_73_cmp_75_0 
              #                    occupy a3 with temp_73_cmp_75_0
              #                    release a3 with temp_73_cmp_75_0
              #                     305  temp_74_ptr_of_*left_child_0_78 = GEP *left_child_0:Array:i32:[None] [Some(root_66_0)] 
              #                    occupy a1 with temp_74_ptr_of_*left_child_0_78
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_66_0
    mv      a3, a0
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a4, left_child
              #                    occupy reg a4 with *left_child_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                     307  temp_75_ele_of_*left_child_0_78_0 = load temp_74_ptr_of_*left_child_0_78:ptr->i32 
              #                    occupy a1 with temp_74_ptr_of_*left_child_0_78
              #                    occupy a5 with temp_75_ele_of_*left_child_0_78_0
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     781  untrack temp_74_ptr_of_*left_child_0_78 
              #                    occupy a1 with temp_74_ptr_of_*left_child_0_78
              #                    release a1 with temp_74_ptr_of_*left_child_0_78
              #                     308  mu left_child_0_9:307 
              #                     310  temp_76_cmp_78_0 = icmp i32 Eq temp_75_ele_of_*left_child_0_78_0, -1_0 
              #                    occupy a5 with temp_75_ele_of_*left_child_0_78_0
              #                    occupy a1 with -1_0
    li      a1, -1
              #                    occupy a6 with temp_76_cmp_78_0
    xor     a6,a5,a1
    seqz    a6, a6
              #                    free a5
              #                    free a1
              #                    free a6
              #                     323  br i1 temp_76_cmp_78_0, label branch_short_circuit_p_true_439, label branch_short_circuit_c_false_439 
              #                    occupy a6 with temp_76_cmp_78_0
              #                    free a6
              #                    occupy a6 with temp_76_cmp_78_0
    bnez    a6, .branch_short_circuit_p_true_439
              #                    free a6
    j       .branch_short_circuit_c_false_439
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a2:Freed { symidx: temp_68_ptr_of_*value_0_72, tracked: true } |     a5:Freed { symidx: temp_75_ele_of_*left_child_0_78_0, tracked: true } |     a6:Freed { symidx: temp_76_cmp_78_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     320  label branch_short_circuit_p_true_439: 
.branch_short_circuit_p_true_439:
              #                     312  temp_77_ptr_of_*right_child_0_78 = GEP *right_child_0:Array:i32:[None] [Some(root_66_0)] 
              #                    occupy a1 with temp_77_ptr_of_*right_child_0_78
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_66_0
    mv      a3, a0
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a4, right_child
              #                    occupy reg a4 with *right_child_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                     314  temp_78_ele_of_*right_child_0_78_0 = load temp_77_ptr_of_*right_child_0_78:ptr->i32 
              #                    occupy a1 with temp_77_ptr_of_*right_child_0_78
              #                    occupy a7 with temp_78_ele_of_*right_child_0_78_0
    lw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                     825  untrack temp_77_ptr_of_*right_child_0_78 
              #                    occupy a1 with temp_77_ptr_of_*right_child_0_78
              #                    release a1 with temp_77_ptr_of_*right_child_0_78
              #                     315  mu right_child_0_9:314 
              #                     317  temp_79_cmp_78_0 = icmp i32 Eq temp_78_ele_of_*right_child_0_78_0, -1_0 
              #                    occupy a7 with temp_78_ele_of_*right_child_0_78_0
              #                    occupy a1 with -1_0
    li      a1, -1
              #                    occupy s1 with temp_79_cmp_78_0
    xor     s1,a7,a1
    seqz    s1, s1
              #                    free a7
              #                    occupy a7 with temp_78_ele_of_*right_child_0_78_0
              #                    store to temp_78_ele_of_*right_child_0_78_0 in mem offset legal
    sw      a7,36(sp)
              #                    release a7 with temp_78_ele_of_*right_child_0_78_0
              #                    free a1
              #                    free s1
              #                     824  untrack temp_78_ele_of_*right_child_0_78_0 
              #                     322  br i1 temp_79_cmp_78_0, label branch_short_circuit_c_true_439, label branch_short_circuit_c_false_439 
              #                    occupy s1 with temp_79_cmp_78_0
              #                    free s1
              #                    occupy s1 with temp_79_cmp_78_0
    bnez    s1, .branch_short_circuit_c_true_439
              #                    free s1
              #                    occupy s1 with temp_79_cmp_78_0
              #                    store to temp_79_cmp_78_0 in mem offset legal
    sb      s1,35(sp)
              #                    release s1 with temp_79_cmp_78_0
    j       .branch_short_circuit_c_false_439
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a2:Freed { symidx: temp_68_ptr_of_*value_0_72, tracked: true } |     a5:Freed { symidx: temp_75_ele_of_*left_child_0_78_0, tracked: true } |     a6:Freed { symidx: temp_76_cmp_78_0, tracked: true } |     s1:Freed { symidx: temp_79_cmp_78_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     318  label branch_short_circuit_c_true_439: 
.branch_short_circuit_c_true_439:
              #                     840  untrack temp_84_ele_of_*right_child_0_81_0 
              #                     839  untrack temp_85_cmp_81_0 
              #                     838  untrack temp_48_ele_of_*value_0_87_0 
              #                     837  untrack temp_79_cmp_78_0 
              #                    occupy s1 with temp_79_cmp_78_0
              #                    release s1 with temp_79_cmp_78_0
              #                     836  untrack temp_58_ele_of_*right_child_0_83_0 
              #                     835  untrack temp_83_ptr_of_*right_child_0_81 
              #                     834  untrack root_66_0 
              #                    occupy a0 with root_66_0
              #                    release a0 with root_66_0
              #                     833  untrack temp_68_ptr_of_*value_0_72 
              #                    occupy a2 with temp_68_ptr_of_*value_0_72
              #                    release a2 with temp_68_ptr_of_*value_0_72
              #                     832  untrack temp_76_cmp_78_0 
              #                    occupy a6 with temp_76_cmp_78_0
              #                    release a6 with temp_76_cmp_78_0
              #                     831  untrack temp_53_ele_of_*value_0_87_0 
              #                     830  untrack temp_47_ptr_of_*value_0_87 
              #                     829  untrack temp_54_ret_of_delete_87_0 
              #                     828  untrack temp_45_ret_of_find_minimum_87_0 
              #                     827  untrack temp_57_ptr_of_*right_child_0_83 
              #                     826  untrack temp_75_ele_of_*left_child_0_78_0 
              #                    occupy a5 with temp_75_ele_of_*left_child_0_78_0
              #                    release a5 with temp_75_ele_of_*left_child_0_78_0
              #                     534  mu left_child_0_9:254 
              #                     535  mu right_child_0_9:254 
              #                     536  mu value_0_8:254 
              #                     254  ret -1_0 
              #                    load from ra_delete_0 in mem
    ld      ra,264(sp)
              #                    load from s0_delete_0 in mem
    ld      s0,256(sp)
              #                    occupy a0 with -1_0
    li      a0, -1
    addi    sp,sp,272
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a2:Freed { symidx: temp_68_ptr_of_*value_0_72, tracked: true } |     a5:Freed { symidx: temp_75_ele_of_*left_child_0_78_0, tracked: true } |     a6:Freed { symidx: temp_76_cmp_78_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     319  label branch_short_circuit_c_false_439: 
.branch_short_circuit_c_false_439:
              #                     841  untrack temp_79_cmp_78_0 
              #                     784  untrack temp_79_cmp_78_0 
              #                     783  untrack temp_77_ptr_of_*right_child_0_78 
              #                     782  untrack temp_78_ele_of_*right_child_0_78_0 
              #                     325  (nop) 
              #                     327  (nop) 
              #                     328  mu left_child_0_9:327 
              #                     330  (nop) 
              #                     343  br i1 temp_76_cmp_78_0, label branch_short_circuit_c_true_457, label branch_short_circuit_p_false_457 
              #                    occupy a6 with temp_76_cmp_78_0
              #                    free a6
              #                    occupy a6 with temp_76_cmp_78_0
    bnez    a6, .branch_short_circuit_c_true_457
              #                    free a6
    j       .branch_short_circuit_p_false_457
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a2:Freed { symidx: temp_68_ptr_of_*value_0_72, tracked: true } |     a5:Freed { symidx: temp_75_ele_of_*left_child_0_78_0, tracked: true } |     a6:Freed { symidx: temp_76_cmp_78_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     338  label branch_short_circuit_c_true_457: 
.branch_short_circuit_c_true_457:
              #                     810  untrack temp_68_ptr_of_*value_0_72 
              #                    occupy a2 with temp_68_ptr_of_*value_0_72
              #                    release a2 with temp_68_ptr_of_*value_0_72
              #                     809  untrack temp_48_ele_of_*value_0_87_0 
              #                     808  untrack temp_47_ptr_of_*value_0_87 
              #                     807  untrack temp_54_ret_of_delete_87_0 
              #                     806  untrack temp_53_ele_of_*value_0_87_0 
              #                     805  untrack temp_83_ptr_of_*right_child_0_81 
              #                     804  untrack temp_84_ele_of_*right_child_0_81_0 
              #                     803  untrack temp_45_ret_of_find_minimum_87_0 
              #                     802  untrack temp_85_cmp_81_0 
              #                     793  untrack temp_47_ptr_of_*value_0_87 
              #                     792  untrack temp_84_ele_of_*right_child_0_81_0 
              #                     791  untrack temp_83_ptr_of_*right_child_0_81 
              #                     790  untrack temp_53_ele_of_*value_0_87_0 
              #                     789  untrack temp_68_ptr_of_*value_0_72 
              #                     788  untrack temp_45_ret_of_find_minimum_87_0 
              #                     787  untrack temp_48_ele_of_*value_0_87_0 
              #                     786  untrack temp_54_ret_of_delete_87_0 
              #                     785  untrack temp_85_cmp_81_0 
              #                     351  (nop) 
              #                     353  (nop) 
              #                     354  mu left_child_0_9:353 
              #                     356  (nop) 
              #                     359  br i1 temp_76_cmp_78_0, label branch_true_84, label branch_false_84 
              #                    occupy a6 with temp_76_cmp_78_0
              #                    free a6
              #                    occupy a6 with temp_76_cmp_78_0
    bnez    a6, .branch_true_84
              #                    free a6
    j       .branch_false_84
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a5:Freed { symidx: temp_75_ele_of_*left_child_0_78_0, tracked: true } |     a6:Freed { symidx: temp_76_cmp_78_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     357  label branch_true_84: 
.branch_true_84:
              #                     795  untrack temp_75_ele_of_*left_child_0_78_0 
              #                    occupy a5 with temp_75_ele_of_*left_child_0_78_0
              #                    release a5 with temp_75_ele_of_*left_child_0_78_0
              #                     794  untrack temp_76_cmp_78_0 
              #                    occupy a6 with temp_76_cmp_78_0
              #                    release a6 with temp_76_cmp_78_0
              #                     248  temp_57_ptr_of_*right_child_0_83 = GEP *right_child_0:Array:i32:[None] [Some(root_66_0)] 
              #                    occupy a1 with temp_57_ptr_of_*right_child_0_83
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_66_0
    mv      a2, a0
              #                    free a0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a3, right_child
              #                    occupy reg a3 with *right_child_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     800  untrack root_66_0 
              #                    occupy a0 with root_66_0
              #                    release a0 with root_66_0
              #                     250  temp_58_ele_of_*right_child_0_83_0 = load temp_57_ptr_of_*right_child_0_83:ptr->i32 
              #                    occupy a1 with temp_57_ptr_of_*right_child_0_83
              #                    occupy a0 with temp_58_ele_of_*right_child_0_83_0
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     801  untrack temp_57_ptr_of_*right_child_0_83 
              #                    occupy a1 with temp_57_ptr_of_*right_child_0_83
              #                    release a1 with temp_57_ptr_of_*right_child_0_83
              #                     251  mu right_child_0_9:250 
              #                     521  mu left_child_0_9:252 
              #                     522  mu right_child_0_9:252 
              #                     523  mu value_0_8:252 
              #                     252  ret temp_58_ele_of_*right_child_0_83_0 
              #                    load from ra_delete_0 in mem
    ld      ra,264(sp)
              #                    load from s0_delete_0 in mem
    ld      s0,256(sp)
              #                    occupy a0 with temp_58_ele_of_*right_child_0_83_0
              #                    store to temp_58_ele_of_*right_child_0_83_0 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with temp_58_ele_of_*right_child_0_83_0
              #                    occupy a0 with temp_58_ele_of_*right_child_0_83_0
              #                    load from temp_58_ele_of_*right_child_0_83_0 in mem


    lw      a0,156(sp)
    addi    sp,sp,272
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a5:Freed { symidx: temp_75_ele_of_*left_child_0_78_0, tracked: true } |     a6:Freed { symidx: temp_76_cmp_78_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     358  label branch_false_84: 
.branch_false_84:
              #                     799  untrack temp_76_cmp_78_0 
              #                    occupy a6 with temp_76_cmp_78_0
              #                    release a6 with temp_76_cmp_78_0
              #                     798  untrack temp_58_ele_of_*right_child_0_83_0 
              #                     797  untrack root_66_0 
              #                    occupy a0 with root_66_0
              #                    release a0 with root_66_0
              #                     796  untrack temp_57_ptr_of_*right_child_0_83 
              #                     241  (nop) 
              #                     243  (nop) 
              #                     244  mu left_child_0_9:243 
              #                     524  mu left_child_0_9:245 
              #                     525  mu right_child_0_9:245 
              #                     526  mu value_0_8:245 
              #                     245  ret temp_75_ele_of_*left_child_0_78_0 
              #                    load from ra_delete_0 in mem
    ld      ra,264(sp)
              #                    load from s0_delete_0 in mem
    ld      s0,256(sp)
              #                    occupy a5 with temp_75_ele_of_*left_child_0_78_0
              #                    store to temp_75_ele_of_*left_child_0_78_0 in mem offset legal
    sw      a5,52(sp)
              #                    release a5 with temp_75_ele_of_*left_child_0_78_0
              #                    occupy a0 with temp_75_ele_of_*left_child_0_78_0
              #                    load from temp_75_ele_of_*left_child_0_78_0 in mem


    lw      a0,52(sp)
    addi    sp,sp,272
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a2:Freed { symidx: temp_68_ptr_of_*value_0_72, tracked: true } |     a5:Freed { symidx: temp_75_ele_of_*left_child_0_78_0, tracked: true } |     a6:Freed { symidx: temp_76_cmp_78_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     340  label branch_short_circuit_p_false_457: 
.branch_short_circuit_p_false_457:
              #                     332  temp_83_ptr_of_*right_child_0_81 = GEP *right_child_0:Array:i32:[None] [Some(root_66_0)] 
              #                    occupy a1 with temp_83_ptr_of_*right_child_0_81
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_66_0
    mv      a3, a0
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a4, right_child
              #                    occupy reg a4 with *right_child_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                     334  temp_84_ele_of_*right_child_0_81_0 = load temp_83_ptr_of_*right_child_0_81:ptr->i32 
              #                    occupy a1 with temp_83_ptr_of_*right_child_0_81
              #                    occupy a7 with temp_84_ele_of_*right_child_0_81_0
    lw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                     335  mu right_child_0_9:334 
              #                     337  temp_85_cmp_81_0 = icmp i32 Eq temp_84_ele_of_*right_child_0_81_0, -1_0 
              #                    occupy a7 with temp_84_ele_of_*right_child_0_81_0
              #                    occupy s1 with -1_0
    li      s1, -1
              #                    occupy s2 with temp_85_cmp_81_0
    xor     s2,a7,s1
    seqz    s2, s2
              #                    free a7
              #                    occupy a7 with temp_84_ele_of_*right_child_0_81_0
              #                    store to temp_84_ele_of_*right_child_0_81_0 in mem offset legal
    sw      a7,12(sp)
              #                    release a7 with temp_84_ele_of_*right_child_0_81_0
              #                    free s1
              #                    free s2
              #                     342  br i1 temp_85_cmp_81_0, label branch_short_circuit_c_true_457, label branch_short_circuit_c_false_457 
              #                    occupy s2 with temp_85_cmp_81_0
              #                    free s2
              #                    occupy a1 with temp_83_ptr_of_*right_child_0_81
              #                    store to temp_83_ptr_of_*right_child_0_81 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_83_ptr_of_*right_child_0_81
              #                    occupy s2 with temp_85_cmp_81_0
              #                    store to temp_85_cmp_81_0 in mem offset legal
    sb      s2,11(sp)
              #                    release s2 with temp_85_cmp_81_0
              #                    occupy a1 with temp_85_cmp_81_0
              #                    load from temp_85_cmp_81_0 in mem


    lb      a1,11(sp)
    bnez    a1, .branch_short_circuit_c_true_457
              #                    free a1
    j       .branch_short_circuit_c_false_457
              #                    regtab     a0:Freed { symidx: root_66_0, tracked: true } |     a1:Freed { symidx: temp_85_cmp_81_0, tracked: true } |     a2:Freed { symidx: temp_68_ptr_of_*value_0_72, tracked: true } |     a5:Freed { symidx: temp_75_ele_of_*left_child_0_78_0, tracked: true } |     a6:Freed { symidx: temp_76_cmp_78_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     339  label branch_short_circuit_c_false_457: 
.branch_short_circuit_c_false_457:
              #                     815  untrack temp_76_cmp_78_0 
              #                    occupy a6 with temp_76_cmp_78_0
              #                    release a6 with temp_76_cmp_78_0
              #                     814  untrack temp_75_ele_of_*left_child_0_78_0 
              #                    occupy a5 with temp_75_ele_of_*left_child_0_78_0
              #                    release a5 with temp_75_ele_of_*left_child_0_78_0
              #                     813  untrack temp_58_ele_of_*right_child_0_83_0 
              #                     812  untrack temp_57_ptr_of_*right_child_0_83 
              #                     811  untrack temp_85_cmp_81_0 
              #                    occupy a1 with temp_85_cmp_81_0
              #                    release a1 with temp_85_cmp_81_0
              #                     204  (nop) 
              #                     206  (nop) 
              #                     207  mu right_child_0_9:206 
              #                     209  temp_45_ret_of_find_minimum_87_0 =  Call i32 find_minimum_0(temp_84_ele_of_*right_child_0_81_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with root_66_0
              #                    store to root_66_0 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with root_66_0
              #                    occupy a2 with temp_68_ptr_of_*value_0_72
              #                    store to temp_68_ptr_of_*value_0_72 in mem offset legal
    sd      a2,88(sp)
              #                    release a2 with temp_68_ptr_of_*value_0_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_84_ele_of_*right_child_0_81_0_0
              #                    load from temp_84_ele_of_*right_child_0_81_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    find_minimum
              #                     527  mu left_child_0_9:209 
              #                     210  (nop) 
              #                     213  (nop) 
              #                     215  temp_47_ptr_of_*value_0_87 = GEP *value_0:Array:i32:[None] [Some(temp_45_ret_of_find_minimum_87_0)] 
              #                    occupy a1 with temp_47_ptr_of_*value_0_87
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with temp_45_ret_of_find_minimum_87_0
    mv      a2, a0
              #                    free a0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *value_0
              #                       load label value as ptr to reg
    la      a3, value
              #                    occupy reg a3 with *value_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     816  untrack temp_45_ret_of_find_minimum_87_0 
              #                    occupy a0 with temp_45_ret_of_find_minimum_87_0
              #                    release a0 with temp_45_ret_of_find_minimum_87_0
              #                     217  temp_48_ele_of_*value_0_87_0 = load temp_47_ptr_of_*value_0_87:ptr->i32 
              #                    occupy a1 with temp_47_ptr_of_*value_0_87
              #                    occupy a0 with temp_48_ele_of_*value_0_87_0
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     218  mu value_0_8:217 
              #                     219  store temp_48_ele_of_*value_0_87_0:i32 temp_68_ptr_of_*value_0_72:ptr->i32 
              #                    occupy a4 with temp_68_ptr_of_*value_0_72
              #                    load from temp_68_ptr_of_*value_0_72 in mem
    ld      a4,88(sp)
              #                    occupy a0 with temp_48_ele_of_*value_0_87_0
    sw      a0,0(a4)
              #                    free a0
              #                    free a4
              #                     822  untrack temp_48_ele_of_*value_0_87_0 
              #                    occupy a0 with temp_48_ele_of_*value_0_87_0
              #                    release a0 with temp_48_ele_of_*value_0_87_0
              #                     818  untrack temp_68_ptr_of_*value_0_72 
              #                    occupy a4 with temp_68_ptr_of_*value_0_72
              #                    release a4 with temp_68_ptr_of_*value_0_72
              #                     220  value_0_13 = chi value_0_8:219 
              #                     222  (nop) 
              #                     224  (nop) 
              #                     226  (nop) 
              #                     227  mu right_child_0_9:226 
              #                     229  (nop) 
              #                     231  temp_53_ele_of_*value_0_87_0 = load temp_47_ptr_of_*value_0_87:ptr->i32 
              #                    occupy a1 with temp_47_ptr_of_*value_0_87
              #                    occupy a0 with temp_53_ele_of_*value_0_87_0
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     821  untrack temp_47_ptr_of_*value_0_87 
              #                    occupy a1 with temp_47_ptr_of_*value_0_87
              #                    release a1 with temp_47_ptr_of_*value_0_87
              #                     232  mu value_0_13:231 
              #                     234  temp_54_ret_of_delete_87_0 =  Call i32 delete_0(temp_84_ele_of_*right_child_0_81_0, temp_53_ele_of_*value_0_87_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_53_ele_of_*value_0_87_0
              #                    store to temp_53_ele_of_*value_0_87_0 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with temp_53_ele_of_*value_0_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_84_ele_of_*right_child_0_81_0_0
              #                    load from temp_84_ele_of_*right_child_0_81_0 in mem


    lw      a0,12(sp)
              #                    occupy a1 with _anonymous_of_temp_53_ele_of_*value_0_87_0_0
              #                    load from temp_53_ele_of_*value_0_87_0 in mem


    lw      a1,180(sp)
              #                    arg load ended


    call    delete
              #                     823  untrack temp_84_ele_of_*right_child_0_81_0 
              #                     819  untrack temp_53_ele_of_*value_0_87_0 
              #                     528  mu left_child_0_9:234 
              #                     529  mu right_child_0_9:234 
              #                     530  mu value_0_13:234 
              #                     531  left_child_0_15 = chi left_child_0_9:234 
              #                     532  right_child_0_15 = chi right_child_0_9:234 
              #                     533  value_0_14 = chi value_0_13:234 
              #                     235  store temp_54_ret_of_delete_87_0:i32 temp_83_ptr_of_*right_child_0_81:ptr->i32 
              #                    occupy a1 with temp_83_ptr_of_*right_child_0_81
              #                    load from temp_83_ptr_of_*right_child_0_81 in mem
    ld      a1,16(sp)
              #                    occupy a0 with temp_54_ret_of_delete_87_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     820  untrack temp_54_ret_of_delete_87_0 
              #                    occupy a0 with temp_54_ret_of_delete_87_0
              #                    release a0 with temp_54_ret_of_delete_87_0
              #                     817  untrack temp_83_ptr_of_*right_child_0_81 
              #                    occupy a1 with temp_83_ptr_of_*right_child_0_81
              #                    release a1 with temp_83_ptr_of_*right_child_0_81
              #                     236  right_child_0_16 = chi right_child_0_15:235 
              #                          jump label: gather_46 
    j       .gather_46
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                     344  label gather_46: 
.gather_46:
              #                          jump label: gather_48 
    j       .gather_48
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                     345  label gather_48: 
.gather_48:
              #                          jump label: gather_50 
    j       .gather_50
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     37   Define inorder_0 "root_92_0," -> inorder_ret_0 
    .globl inorder
    .type inorder,@function
inorder:
              #                    mem layout:|ra_inorder:8 at 64|s0_inorder:8 at 56|root _s92 _i0:4 at 52|none:4 at 48|temp_89_ptr_of_*left_child_0:8 at 40|temp_90_ele_of_*left_child_0 _s97 _i0:4 at 36|none:4 at 32|temp_91_ptr_of_*value_0:8 at 24|temp_92_ele_of_*value_0 _s97 _i0:4 at 20|none:4 at 16|temp_93_ptr_of_*right_child_0:8 at 8|temp_94_ele_of_*right_child_0 _s97 _i0:4 at 4|temp_95_cmp _s95 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-72
              #                    store to ra_inorder_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_inorder_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     361  alloc ptr->i32 [temp_89_ptr_of_*left_child_0_97] 
              #                     363  alloc i32 [temp_90_ele_of_*left_child_0_97] 
              #                     367  alloc ptr->i32 [temp_91_ptr_of_*value_0_97] 
              #                     369  alloc i32 [temp_92_ele_of_*value_0_97] 
              #                     374  alloc ptr->i32 [temp_93_ptr_of_*right_child_0_97] 
              #                     376  alloc i32 [temp_94_ele_of_*right_child_0_97] 
              #                     380  alloc i1 [temp_95_cmp_95] 
              #                    regtab     a0:Freed { symidx: root_92_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     381  temp_95_cmp_95_0 = icmp i32 Ne root_92_0, -1_0 
              #                    occupy a0 with root_92_0
              #                    occupy a1 with -1_0
    li      a1, -1
              #                    occupy a2 with temp_95_cmp_95_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     384  br i1 temp_95_cmp_95_0, label branch_true_96, label branch_false_96 
              #                    occupy a2 with temp_95_cmp_95_0
              #                    free a2
              #                    occupy a2 with temp_95_cmp_95_0
    bnez    a2, .branch_true_96
              #                    free a2
    j       .branch_false_96
              #                    regtab     a0:Freed { symidx: root_92_0, tracked: true } |     a2:Freed { symidx: temp_95_cmp_95_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     382  label branch_true_96: 
.branch_true_96:
              #                     842  untrack temp_95_cmp_95_0 
              #                    occupy a2 with temp_95_cmp_95_0
              #                    release a2 with temp_95_cmp_95_0
              #                     362  temp_89_ptr_of_*left_child_0_97 = GEP *left_child_0:Array:i32:[None] [Some(root_92_0)] 
              #                    occupy a1 with temp_89_ptr_of_*left_child_0_97
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with root_92_0
    mv      a2, a0
              #                    free a0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a3, left_child
              #                    occupy reg a3 with *left_child_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     364  temp_90_ele_of_*left_child_0_97_0 = load temp_89_ptr_of_*left_child_0_97:ptr->i32 
              #                    occupy a1 with temp_89_ptr_of_*left_child_0_97
              #                    occupy a4 with temp_90_ele_of_*left_child_0_97_0
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     856  untrack temp_89_ptr_of_*left_child_0_97 
              #                    occupy a1 with temp_89_ptr_of_*left_child_0_97
              #                    release a1 with temp_89_ptr_of_*left_child_0_97
              #                     365  mu left_child_0_0:364 
              #                     366   Call void inorder_0(temp_90_ele_of_*left_child_0_97_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with root_92_0
              #                    store to root_92_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with root_92_0
              #                    occupy a4 with temp_90_ele_of_*left_child_0_97_0
              #                    store to temp_90_ele_of_*left_child_0_97_0 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with temp_90_ele_of_*left_child_0_97_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_90_ele_of_*left_child_0_97_0_0
              #                    load from temp_90_ele_of_*left_child_0_97_0 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    inorder
              #                     855  untrack temp_90_ele_of_*left_child_0_97_0 
              #                     368  temp_91_ptr_of_*value_0_97 = GEP *value_0:Array:i32:[None] [Some(root_92_0)] 
              #                    occupy a0 with temp_91_ptr_of_*value_0_97
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with root_92_0
              #                    load from root_92_0 in mem


    lw      a2,52(sp)
    mv      a1, a2
              #                    free a2
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a3 with *value_0
              #                       load label value as ptr to reg
    la      a3, value
              #                    occupy reg a3 with *value_0
    add     a0,a0,a3
              #                    free a3
              #                    free a0
              #                     370  temp_92_ele_of_*value_0_97_0 = load temp_91_ptr_of_*value_0_97:ptr->i32 
              #                    occupy a0 with temp_91_ptr_of_*value_0_97
              #                    occupy a4 with temp_92_ele_of_*value_0_97_0
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     854  untrack temp_91_ptr_of_*value_0_97 
              #                    occupy a0 with temp_91_ptr_of_*value_0_97
              #                    release a0 with temp_91_ptr_of_*value_0_97
              #                     371  mu value_0_0:370 
              #                     372   Call void putint_0(temp_92_ele_of_*value_0_97_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with root_92_0
              #                    store to root_92_0 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with root_92_0
              #                    occupy a4 with temp_92_ele_of_*value_0_97_0
              #                    store to temp_92_ele_of_*value_0_97_0 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_92_ele_of_*value_0_97_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_92_ele_of_*value_0_97_0_0
              #                    load from temp_92_ele_of_*value_0_97_0 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    putint
              #                     853  untrack temp_92_ele_of_*value_0_97_0 
              #                     373   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     375  temp_93_ptr_of_*right_child_0_97 = GEP *right_child_0:Array:i32:[None] [Some(root_92_0)] 
              #                    occupy a0 with temp_93_ptr_of_*right_child_0_97
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with root_92_0
              #                    load from root_92_0 in mem


    lw      a2,52(sp)
    mv      a1, a2
              #                    free a2
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a3 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a3, right_child
              #                    occupy reg a3 with *right_child_0
    add     a0,a0,a3
              #                    free a3
              #                    free a0
              #                     857  untrack root_92_0 
              #                    occupy a2 with root_92_0
              #                    release a2 with root_92_0
              #                     377  temp_94_ele_of_*right_child_0_97_0 = load temp_93_ptr_of_*right_child_0_97:ptr->i32 
              #                    occupy a0 with temp_93_ptr_of_*right_child_0_97
              #                    occupy a2 with temp_94_ele_of_*right_child_0_97_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     851  untrack temp_93_ptr_of_*right_child_0_97 
              #                    occupy a0 with temp_93_ptr_of_*right_child_0_97
              #                    release a0 with temp_93_ptr_of_*right_child_0_97
              #                     378  mu right_child_0_0:377 
              #                     379   Call void inorder_0(temp_94_ele_of_*right_child_0_97_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_94_ele_of_*right_child_0_97_0
              #                    store to temp_94_ele_of_*right_child_0_97_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_94_ele_of_*right_child_0_97_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_94_ele_of_*right_child_0_97_0_0
              #                    load from temp_94_ele_of_*right_child_0_97_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    inorder
              #                     852  untrack temp_94_ele_of_*right_child_0_97_0 
              #                          jump label: branch_false_96 
              #                    occupy a0 with root_92_0
              #                    load from root_92_0 in mem


    lw      a0,52(sp)
              #                    occupy a2 with temp_95_cmp_95_0
              #                    load from temp_95_cmp_95_0 in mem


    lb      a2,3(sp)
    j       .branch_false_96
              #                    regtab     a0:Freed { symidx: root_92_0, tracked: true } |     a2:Freed { symidx: temp_95_cmp_95_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     383  label branch_false_96: 
.branch_false_96:
              #                     850  untrack temp_94_ele_of_*right_child_0_97_0 
              #                     849  untrack root_92_0 
              #                    occupy a0 with root_92_0
              #                    release a0 with root_92_0
              #                     848  untrack temp_90_ele_of_*left_child_0_97_0 
              #                     847  untrack temp_95_cmp_95_0 
              #                    occupy a2 with temp_95_cmp_95_0
              #                    release a2 with temp_95_cmp_95_0
              #                     846  untrack temp_89_ptr_of_*left_child_0_97 
              #                     845  untrack temp_92_ele_of_*value_0_97_0 
              #                     844  untrack temp_93_ptr_of_*right_child_0_97 
              #                     843  untrack temp_91_ptr_of_*value_0_97 
              #                          jump label: exit_55 
    j       .exit_55
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     386  label exit_55: 
.exit_55:
              #                     385  ret 
              #                    load from ra_inorder_0 in mem
    ld      ra,64(sp)
              #                    load from s0_inorder_0 in mem
    ld      s0,56(sp)
    addi    sp,sp,72
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     38   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 64|s0_main:8 at 56|temp_96_ret_of_getint _s103 _i0:4 at 52|temp_97_ret_of_getint _s103 _i0:4 at 48|temp_98_ret_of_new_node _s103 _i0:4 at 44|root _s103 _i1:4 at 40|i _s103 _i1:4 at 36|i _s103 _i4:4 at 32|temp_99_ret_of_getint _s103 _i0:4 at 28|temp_100_ret_of_getint _s121 _i0:4 at 24|temp_101_ret_of_delete _s121 _i0:4 at 20|temp_102_arithop _s121 _i0:4 at 16|temp_103_ret_of_getint _s112 _i0:4 at 12|temp_104_ret_of_insert _s112 _i0:4 at 8|temp_105_arithop _s112 _i0:4 at 4|temp_106_booltrans _s106 _i0:1 at 3|temp_107_logicnot _s106 _i0:1 at 2|temp_108_cmp _s110 _i0:1 at 1|temp_109_cmp _s119 _i0:1 at 0
    addi    sp,sp,-72
              #                    store to ra_main_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     537  right_child_0_17 = chi right_child_0_0:38 
              #                     538  now_0_8 = chi now_0_0:38 
              #                     539  left_child_0_16 = chi left_child_0_0:38 
              #                     540  value_0_15 = chi value_0_0:38 
              #                     389  alloc i32 [temp_96_ret_of_getint_103] 
              #                     392  alloc i32 [n_103] 
              #                     393  alloc i32 [temp_97_ret_of_getint_103] 
              #                     395  alloc i32 [temp_98_ret_of_new_node_103] 
              #                     398  alloc i32 [root_103] 
              #                     400  alloc i32 [i_103] 
              #                     403  alloc i32 [temp_99_ret_of_getint_103] 
              #                     411  alloc i32 [temp_100_ret_of_getint_121] 
              #                     413  alloc i32 [temp_101_ret_of_delete_121] 
              #                     416  alloc i32 [temp_102_arithop_121] 
              #                     419  alloc i32 [temp_103_ret_of_getint_112] 
              #                     421  alloc i32 [temp_104_ret_of_insert_112] 
              #                     423  alloc i32 [temp_105_arithop_112] 
              #                     428  alloc i1 [temp_106_booltrans_106] 
              #                     430  alloc i1 [temp_107_logicnot_106] 
              #                     435  alloc i1 [temp_108_cmp_110] 
              #                     441  alloc i1 [temp_109_cmp_119] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     387  store 0_0:i32 *now_0:ptr->i32 
              #                    occupy a0 with *now_0
              #                       load label now as ptr to reg
    la      a0, now
              #                    occupy reg a0 with *now_0
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     388  now_0_9 = chi now_0_8:387 
              #                     390  temp_96_ret_of_getint_103_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     391  (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_96_ret_of_getint_103_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     429  temp_106_booltrans_106_0 = icmp i32 Ne temp_96_ret_of_getint_103_0, 0_0 
              #                    occupy a0 with temp_96_ret_of_getint_103_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_106_booltrans_106_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     431  temp_107_logicnot_106_0 = xor i1 temp_106_booltrans_106_0, true 
              #                    occupy a2 with temp_106_booltrans_106_0
              #                    occupy a3 with temp_107_logicnot_106_0
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                     858  untrack temp_106_booltrans_106_0 
              #                    occupy a2 with temp_106_booltrans_106_0
              #                    release a2 with temp_106_booltrans_106_0
              #                     434  br i1 temp_107_logicnot_106_0, label branch_true_107, label branch_false_107 
              #                    occupy a3 with temp_107_logicnot_106_0
              #                    free a3
              #                    occupy a3 with temp_107_logicnot_106_0
    bnez    a3, .branch_true_107
              #                    free a3
    j       .branch_false_107
              #                    regtab     a0:Freed { symidx: temp_96_ret_of_getint_103_0, tracked: true } |     a3:Freed { symidx: temp_107_logicnot_106_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     432  label branch_true_107: 
.branch_true_107:
              #                     866  untrack temp_99_ret_of_getint_103_0 
              #                     865  untrack temp_97_ret_of_getint_103_0 
              #                     864  untrack root_103_1 
              #                     863  untrack i_103_4 
              #                     862  untrack i_103_1 
              #                     861  untrack temp_107_logicnot_106_0 
              #                    occupy a3 with temp_107_logicnot_106_0
              #                    release a3 with temp_107_logicnot_106_0
              #                     860  untrack temp_98_ret_of_new_node_103_0 
              #                     859  untrack temp_96_ret_of_getint_103_0 
              #                    occupy a0 with temp_96_ret_of_getint_103_0
              #                    release a0 with temp_96_ret_of_getint_103_0
              #                     541  mu right_child_0_17:427 
              #                     542  mu now_0_9:427 
              #                     543  mu left_child_0_16:427 
              #                     544  mu value_0_15:427 
              #                     427  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,64(sp)
              #                    load from s0_main_0 in mem
    ld      s0,56(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_96_ret_of_getint_103_0, tracked: true } |     a3:Freed { symidx: temp_107_logicnot_106_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     433  label branch_false_107: 
.branch_false_107:
              #                     867  untrack temp_107_logicnot_106_0 
              #                    occupy a3 with temp_107_logicnot_106_0
              #                    release a3 with temp_107_logicnot_106_0
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_96_ret_of_getint_103_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     394  temp_97_ret_of_getint_103_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_96_ret_of_getint_103_0
              #                    store to temp_96_ret_of_getint_103_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_96_ret_of_getint_103_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     396  temp_98_ret_of_new_node_103_0 =  Call i32 new_node_0(temp_97_ret_of_getint_103_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_97_ret_of_getint_103_0
              #                    store to temp_97_ret_of_getint_103_0 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_97_ret_of_getint_103_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_97_ret_of_getint_103_0_0
              #                    load from temp_97_ret_of_getint_103_0 in mem


    lw      a0,48(sp)
              #                    arg load ended


    call    new_node
              #                     868  untrack temp_97_ret_of_getint_103_0 
              #                     545  mu left_child_0_16:396 
              #                     546  mu now_0_9:396 
              #                     547  mu value_0_15:396 
              #                     548  mu right_child_0_17:396 
              #                     549  right_child_0_18 = chi right_child_0_17:396 
              #                     550  now_0_10 = chi now_0_9:396 
              #                     551  value_0_16 = chi value_0_15:396 
              #                     552  left_child_0_17 = chi left_child_0_16:396 
              #                     397  (nop) 
              #                     399  (nop) 
              #                     591  i_103_1 = i32 1_0 
              #                    occupy a1 with i_103_1
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_111 
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: temp_98_ret_of_new_node_103_0, tracked: true } |     a1:Freed { symidx: i_103_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     437  label while.head_111: 
.while.head_111:
              #                     436  temp_108_cmp_110_0 = icmp i32 Slt i_103_1, temp_96_ret_of_getint_103_0 
              #                    occupy a1 with i_103_1
              #                    occupy a2 with temp_96_ret_of_getint_103_0
              #                    load from temp_96_ret_of_getint_103_0 in mem


    lw      a2,52(sp)
              #                    occupy a3 with temp_108_cmp_110_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     440  br i1 temp_108_cmp_110_0, label while.body_111, label while.exit_111 
              #                    occupy a3 with temp_108_cmp_110_0
              #                    free a3
              #                    occupy a3 with temp_108_cmp_110_0
    bnez    a3, .while.body_111
              #                    free a3
    j       .while.exit_111
              #                    regtab     a0:Freed { symidx: temp_98_ret_of_new_node_103_0, tracked: true } |     a1:Freed { symidx: i_103_1, tracked: true } |     a2:Freed { symidx: temp_96_ret_of_getint_103_0, tracked: true } |     a3:Freed { symidx: temp_108_cmp_110_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     438  label while.body_111: 
.while.body_111:
              #                     420  temp_103_ret_of_getint_112_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_98_ret_of_new_node_103_0
              #                    store to temp_98_ret_of_new_node_103_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_98_ret_of_new_node_103_0
              #                    occupy a1 with i_103_1
              #                    store to i_103_1 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with i_103_1
              #                    occupy a2 with temp_96_ret_of_getint_103_0
              #                    store to temp_96_ret_of_getint_103_0 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_96_ret_of_getint_103_0
              #                    occupy a3 with temp_108_cmp_110_0
              #                    store to temp_108_cmp_110_0 in mem offset legal
    sb      a3,1(sp)
              #                    release a3 with temp_108_cmp_110_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     422  temp_104_ret_of_insert_112_0 =  Call i32 insert_0(temp_98_ret_of_new_node_103_0, temp_103_ret_of_getint_112_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_103_ret_of_getint_112_0
              #                    store to temp_103_ret_of_getint_112_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_103_ret_of_getint_112_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_98_ret_of_new_node_103_0_0
              #                    load from temp_98_ret_of_new_node_103_0 in mem


    lw      a0,44(sp)
              #                    occupy a1 with _anonymous_of_temp_103_ret_of_getint_112_0_0
              #                    load from temp_103_ret_of_getint_112_0 in mem


    lw      a1,12(sp)
              #                    arg load ended


    call    insert
              #                     553  mu right_child_0_19:422 
              #                     554  mu left_child_0_18:422 
              #                     555  mu now_0_11:422 
              #                     556  mu value_0_17:422 
              #                     557  right_child_0_20 = chi right_child_0_19:422 
              #                     558  value_0_18 = chi value_0_17:422 
              #                     559  left_child_0_19 = chi left_child_0_18:422 
              #                     560  now_0_12 = chi now_0_11:422 
              #                     424  temp_105_arithop_112_0 = Add i32 i_103_1, 1_0 
              #                    occupy a1 with i_103_1
              #                    load from i_103_1 in mem


    lw      a1,36(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_105_arithop_112_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     425  (nop) 
              #                     592  i_103_1 = i32 temp_105_arithop_112_0 
              #                    occupy a3 with temp_105_arithop_112_0
              #                    occupy a1 with i_103_1
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_111 
              #                    occupy a0 with temp_104_ret_of_insert_112_0
              #                    store to temp_104_ret_of_insert_112_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_104_ret_of_insert_112_0
              #                    occupy a0 with temp_98_ret_of_new_node_103_0
              #                    load from temp_98_ret_of_new_node_103_0 in mem


    lw      a0,44(sp)
              #                    occupy a3 with temp_105_arithop_112_0
              #                    store to temp_105_arithop_112_0 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_105_arithop_112_0
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: temp_98_ret_of_new_node_103_0, tracked: true } |     a1:Freed { symidx: i_103_1, tracked: true } |     a2:Freed { symidx: temp_96_ret_of_getint_103_0, tracked: true } |     a3:Freed { symidx: temp_108_cmp_110_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     439  label while.exit_111: 
.while.exit_111:
              #                     870  untrack i_103_1 
              #                    occupy a1 with i_103_1
              #                    release a1 with i_103_1
              #                     869  untrack temp_96_ret_of_getint_103_0 
              #                    occupy a2 with temp_96_ret_of_getint_103_0
              #                    release a2 with temp_96_ret_of_getint_103_0
              #                     401   Call void inorder_0(temp_98_ret_of_new_node_103_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_98_ret_of_new_node_103_0
              #                    store to temp_98_ret_of_new_node_103_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_98_ret_of_new_node_103_0
              #                    occupy a3 with temp_108_cmp_110_0
              #                    store to temp_108_cmp_110_0 in mem offset legal
    sb      a3,1(sp)
              #                    release a3 with temp_108_cmp_110_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_98_ret_of_new_node_103_0_0
              #                    load from temp_98_ret_of_new_node_103_0 in mem


    lw      a0,44(sp)
              #                    arg load ended


    call    inorder
              #                     402   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     404  temp_99_ret_of_getint_103_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     405  (nop) 
              #                     406  (nop) 
              #                     593  root_103_1 = i32 temp_98_ret_of_new_node_103_0 
              #                    occupy a1 with temp_98_ret_of_new_node_103_0
              #                    load from temp_98_ret_of_new_node_103_0 in mem


    lw      a1,44(sp)
              #                    occupy a2 with root_103_1
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     871  untrack temp_98_ret_of_new_node_103_0 
              #                    occupy a1 with temp_98_ret_of_new_node_103_0
              #                    release a1 with temp_98_ret_of_new_node_103_0
              #                     594  i_103_4 = i32 0_0 
              #                    occupy a1 with i_103_4
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_120 
    j       .while.head_120
              #                    regtab     a0:Freed { symidx: temp_99_ret_of_getint_103_0, tracked: true } |     a1:Freed { symidx: i_103_4, tracked: true } |     a2:Freed { symidx: root_103_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     443  label while.head_120: 
.while.head_120:
              #                     442  temp_109_cmp_119_0 = icmp i32 Slt i_103_4, temp_99_ret_of_getint_103_0 
              #                    occupy a1 with i_103_4
              #                    occupy a0 with temp_99_ret_of_getint_103_0
              #                    occupy a3 with temp_109_cmp_119_0
    slt     a3,a1,a0
              #                    free a1
              #                    free a0
              #                    free a3
              #                     446  br i1 temp_109_cmp_119_0, label while.body_120, label while.exit_120 
              #                    occupy a3 with temp_109_cmp_119_0
              #                    free a3
              #                    occupy a3 with temp_109_cmp_119_0
    bnez    a3, .while.body_120
              #                    free a3
    j       .while.exit_120
              #                    regtab     a0:Freed { symidx: temp_99_ret_of_getint_103_0, tracked: true } |     a1:Freed { symidx: i_103_4, tracked: true } |     a2:Freed { symidx: root_103_1, tracked: true } |     a3:Freed { symidx: temp_109_cmp_119_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     444  label while.body_120: 
.while.body_120:
              #                     412  temp_100_ret_of_getint_121_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_99_ret_of_getint_103_0
              #                    store to temp_99_ret_of_getint_103_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_99_ret_of_getint_103_0
              #                    occupy a1 with i_103_4
              #                    store to i_103_4 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with i_103_4
              #                    occupy a2 with root_103_1
              #                    store to root_103_1 in mem offset legal
    sw      a2,40(sp)
              #                    release a2 with root_103_1
              #                    occupy a3 with temp_109_cmp_119_0
              #                    store to temp_109_cmp_119_0 in mem offset legal
    sb      a3,0(sp)
              #                    release a3 with temp_109_cmp_119_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     414  temp_101_ret_of_delete_121_0 =  Call i32 delete_0(root_103_1, temp_100_ret_of_getint_121_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_100_ret_of_getint_121_0
              #                    store to temp_100_ret_of_getint_121_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_100_ret_of_getint_121_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_root_103_1_0
              #                    load from root_103_1 in mem


    lw      a0,40(sp)
              #                    occupy a1 with _anonymous_of_temp_100_ret_of_getint_121_0_0
              #                    load from temp_100_ret_of_getint_121_0 in mem


    lw      a1,24(sp)
              #                    arg load ended


    call    delete
              #                     561  mu left_child_0_20:414 
              #                     562  mu right_child_0_21:414 
              #                     563  mu value_0_19:414 
              #                     564  left_child_0_21 = chi left_child_0_20:414 
              #                     565  right_child_0_22 = chi right_child_0_21:414 
              #                     566  value_0_20 = chi value_0_19:414 
              #                     415  (nop) 
              #                     417  temp_102_arithop_121_0 = Add i32 i_103_4, 1_0 
              #                    occupy a1 with i_103_4
              #                    load from i_103_4 in mem


    lw      a1,32(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_102_arithop_121_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     418  (nop) 
              #                     595  root_103_1 = i32 temp_101_ret_of_delete_121_0 
              #                    occupy a0 with temp_101_ret_of_delete_121_0
              #                    occupy a4 with root_103_1
    mv      a4, a0
              #                    free a0
              #                    free a4
              #                     596  i_103_4 = i32 temp_102_arithop_121_0 
              #                    occupy a3 with temp_102_arithop_121_0
              #                    occupy a1 with i_103_4
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_120 
              #                    occupy a4 with root_103_1
              #                    store to root_103_1 in mem offset legal
    sw      a4,40(sp)
              #                    release a4 with root_103_1
              #                    occupy a0 with temp_101_ret_of_delete_121_0
              #                    store to temp_101_ret_of_delete_121_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_101_ret_of_delete_121_0
              #                    occupy a0 with temp_99_ret_of_getint_103_0
              #                    load from temp_99_ret_of_getint_103_0 in mem


    lw      a0,28(sp)
              #                    occupy a3 with temp_102_arithop_121_0
              #                    store to temp_102_arithop_121_0 in mem offset legal
    sw      a3,16(sp)
              #                    release a3 with temp_102_arithop_121_0
              #                    occupy a2 with root_103_1
              #                    load from root_103_1 in mem


    lw      a2,40(sp)
    j       .while.head_120
              #                    regtab     a0:Freed { symidx: temp_99_ret_of_getint_103_0, tracked: true } |     a1:Freed { symidx: i_103_4, tracked: true } |     a2:Freed { symidx: root_103_1, tracked: true } |     a3:Freed { symidx: temp_109_cmp_119_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     445  label while.exit_120: 
.while.exit_120:
              #                     873  untrack temp_99_ret_of_getint_103_0 
              #                    occupy a0 with temp_99_ret_of_getint_103_0
              #                    release a0 with temp_99_ret_of_getint_103_0
              #                     872  untrack i_103_4 
              #                    occupy a1 with i_103_4
              #                    release a1 with i_103_4
              #                     407   Call void inorder_0(root_103_1) 
              #                    saved register dumping to mem
              #                    occupy a2 with root_103_1
              #                    store to root_103_1 in mem offset legal
    sw      a2,40(sp)
              #                    release a2 with root_103_1
              #                    occupy a3 with temp_109_cmp_119_0
              #                    store to temp_109_cmp_119_0 in mem offset legal
    sb      a3,0(sp)
              #                    release a3 with temp_109_cmp_119_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_root_103_1_0
              #                    load from root_103_1 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    inorder
              #                     874  untrack root_103_1 
              #                     408   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     567  mu right_child_0_21:410 
              #                     568  mu now_0_11:410 
              #                     569  mu left_child_0_20:410 
              #                     570  mu value_0_19:410 
              #                     410  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,64(sp)
              #                    load from s0_main_0 in mem
    ld      s0,56(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl now
              #                     30   global i32 now_0 
    .type now,@object
now:
    .word 0
    .align 4
    .globl right_child
              #                     29   global Array:i32:[Some(10000_0)] right_child_0 
    .type right_child,@object
right_child:
    .zero 40000
    .align 4
    .globl left_child
              #                     27   global Array:i32:[Some(10000_0)] left_child_0 
    .type left_child,@object
left_child:
    .zero 40000
    .align 4
    .globl value
              #                     25   global Array:i32:[Some(10000_0)] value_0 
    .type value,@object
value:
    .zero 40000
    .align 4
    .globl maxNode
              #                     23   global i32 maxNode_0 
    .type maxNode,@object
maxNode:
    .word 10000
    .align 4
    .globl LF
              #                     20   global i32 LF_0 
    .type LF,@object
LF:
    .word 10
    .align 4
    .globl space
              #                     17   global i32 space_0 
    .type space,@object
space:
    .word 32
