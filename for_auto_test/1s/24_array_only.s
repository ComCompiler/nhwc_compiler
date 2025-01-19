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
              #                     21   Define inc_impl_0 "x_17,rec_17_0," -> inc_impl_ret_0 
    .globl inc_impl
    .type inc_impl,@function
inc_impl:
              #                    mem layout:|ra_inc_impl:8 at 120|s0_inc_impl:8 at 112|x:8 at 104|x:8 at 96|x:8 at 88|x:8 at 80|x:8 at 72|rec _s17 _i0:4 at 68|none:4 at 64|temp_0_ptr_of_x_17:8 at 56|temp_1_ptr_of_x_17:8 at 48|temp_2_ele_of_x_17 _s24 _i0:4 at 44|temp_3_arithop _s24 _i0:4 at 40|temp_4_arithop _s24 _i0:4 at 36|none:4 at 32|temp_5_ptr_of_x_17:8 at 24|temp_6_ptr_of_x_17:8 at 16|temp_7_ele_of_x_17 _s22 _i0:4 at 12|temp_8_arithop _s22 _i0:4 at 8|temp_9_cmp _s20 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-128
              #                    store to ra_inc_impl_0 in mem offset legal
    sd      ra,120(sp)
              #                    store to s0_inc_impl_0 in mem offset legal
    sd      s0,112(sp)
    addi    s0,sp,128
              #                     37   alloc ptr->i32 [temp_0_ptr_of_x_17_24] 
              #                     39   alloc ptr->i32 [temp_1_ptr_of_x_17_24] 
              #                     41   alloc i32 [temp_2_ele_of_x_17_24] 
              #                     44   alloc i32 [temp_3_arithop_24] 
              #                     48   alloc i32 [temp_4_arithop_24] 
              #                     51   alloc ptr->i32 [temp_5_ptr_of_x_17_22] 
              #                     53   alloc ptr->i32 [temp_6_ptr_of_x_17_22] 
              #                     55   alloc i32 [temp_7_ele_of_x_17_22] 
              #                     58   alloc i32 [temp_8_arithop_22] 
              #                     62   alloc i1 [temp_9_cmp_20] 
              #                    regtab     a0:Freed { symidx: x_17, tracked: true } |     a1:Freed { symidx: rec_17_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     20    
              #                     63   temp_9_cmp_20_0 = icmp i32 Eq rec_17_0, 0_0 
              #                    occupy a1 with rec_17_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_9_cmp_20_0
    xor     a3,a1,a2
    seqz    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     66   br i1 temp_9_cmp_20_0, label branch_true_21, label branch_false_21 
              #                    occupy a3 with temp_9_cmp_20_0
              #                    free a3
              #                    occupy a3 with temp_9_cmp_20_0
    bnez    a3, .branch_true_21
              #                    free a3
    j       .branch_false_21
              #                    regtab     a0:Freed { symidx: x_17, tracked: true } |     a1:Freed { symidx: rec_17_0, tracked: true } |     a3:Freed { symidx: temp_9_cmp_20_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     64   label branch_true_21: 
.branch_true_21:
              #                     339  untrack temp_3_arithop_24_0 
              #                     338  untrack rec_17_0 
              #                    occupy a1 with rec_17_0
              #                    release a1 with rec_17_0
              #                     337  untrack temp_0_ptr_of_x_17_24 
              #                     336  untrack temp_4_arithop_24_0 
              #                     335  untrack temp_9_cmp_20_0 
              #                    occupy a3 with temp_9_cmp_20_0
              #                    release a3 with temp_9_cmp_20_0
              #                     334  untrack temp_2_ele_of_x_17_24_0 
              #                     52   temp_5_ptr_of_x_17_22 = GEP x_17:ptr->i32 [Some(0_0)] 
              #                    occupy a1 with temp_5_ptr_of_x_17_22
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a0 with x_17
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                     54   (nop) 
              #                     56   temp_7_ele_of_x_17_22_0 = load temp_5_ptr_of_x_17_22:ptr->i32 
              #                    occupy a1 with temp_5_ptr_of_x_17_22
              #                    occupy a3 with temp_7_ele_of_x_17_22_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     57   mu x_17:56 
              #                     59   temp_8_arithop_22_0 = Add i32 temp_7_ele_of_x_17_22_0, 1_0 
              #                    occupy a3 with temp_7_ele_of_x_17_22_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_8_arithop_22_0
    ADDW    a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     345  untrack temp_7_ele_of_x_17_22_0 
              #                    occupy a3 with temp_7_ele_of_x_17_22_0
              #                    release a3 with temp_7_ele_of_x_17_22_0
              #                     60   store temp_8_arithop_22_0:i32 temp_5_ptr_of_x_17_22:ptr->i32 
              #                    occupy a1 with temp_5_ptr_of_x_17_22
              #                    occupy a5 with temp_8_arithop_22_0
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     346  untrack temp_5_ptr_of_x_17_22 
              #                    occupy a1 with temp_5_ptr_of_x_17_22
              #                    release a1 with temp_5_ptr_of_x_17_22
              #                     344  untrack temp_8_arithop_22_0 
              #                    occupy a5 with temp_8_arithop_22_0
              #                    release a5 with temp_8_arithop_22_0
              #                     61   x_17 = chi x_17:60 
              #                          jump label: gather_6 
    j       .gather_6
              #                    regtab     a0:Freed { symidx: x_17, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     67   label gather_6: 
.gather_6:
              #                          jump label: exit_2 
    j       .exit_2
              #                    regtab     a0:Freed { symidx: x_17, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     69   label exit_2: 
.exit_2:
              #                     293  mu x_17:68 
              #                     347  untrack x_17 
              #                    occupy a0 with x_17
              #                    release a0 with x_17
              #                     68   ret 
              #                    load from ra_inc_impl_0 in mem
    ld      ra,120(sp)
              #                    load from s0_inc_impl_0 in mem
    ld      s0,112(sp)
    addi    sp,sp,128
    ret
              #                    regtab     a0:Freed { symidx: x_17, tracked: true } |     a1:Freed { symidx: rec_17_0, tracked: true } |     a3:Freed { symidx: temp_9_cmp_20_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     65   label branch_false_21: 
.branch_false_21:
              #                     343  untrack temp_7_ele_of_x_17_22_0 
              #                     342  untrack temp_9_cmp_20_0 
              #                    occupy a3 with temp_9_cmp_20_0
              #                    release a3 with temp_9_cmp_20_0
              #                     341  untrack temp_8_arithop_22_0 
              #                     340  untrack temp_5_ptr_of_x_17_22 
              #                     38   temp_0_ptr_of_x_17_24 = GEP x_17:ptr->i32 [Some(0_0)] 
              #                    occupy a2 with temp_0_ptr_of_x_17_24
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with x_17
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     40   (nop) 
              #                     42   temp_2_ele_of_x_17_24_0 = load temp_0_ptr_of_x_17_24:ptr->i32 
              #                    occupy a2 with temp_0_ptr_of_x_17_24
              #                    occupy a4 with temp_2_ele_of_x_17_24_0
    lw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     43   mu x_17:42 
              #                     45   temp_3_arithop_24_0 = Mul i32 temp_2_ele_of_x_17_24_0, 2_0 
              #                    occupy a5 with temp_3_arithop_24_0
              #                    occupy a4 with temp_2_ele_of_x_17_24_0
    slliw a5,a4,1
              #                    free a4
              #                    free a5
              #                     352  untrack temp_2_ele_of_x_17_24_0 
              #                    occupy a4 with temp_2_ele_of_x_17_24_0
              #                    release a4 with temp_2_ele_of_x_17_24_0
              #                     46   store temp_3_arithop_24_0:i32 temp_0_ptr_of_x_17_24:ptr->i32 
              #                    occupy a2 with temp_0_ptr_of_x_17_24
              #                    occupy a5 with temp_3_arithop_24_0
    sw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     351  untrack temp_0_ptr_of_x_17_24 
              #                    occupy a2 with temp_0_ptr_of_x_17_24
              #                    release a2 with temp_0_ptr_of_x_17_24
              #                     350  untrack temp_3_arithop_24_0 
              #                    occupy a5 with temp_3_arithop_24_0
              #                    release a5 with temp_3_arithop_24_0
              #                     47   x_17 = chi x_17:46 
              #                     49   temp_4_arithop_24_0 = Sub i32 rec_17_0, 1_0 
              #                    occupy a1 with rec_17_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_4_arithop_24_0
              #                    regtab:    a0:Freed { symidx: x_17, tracked: true } |     a1:Occupied { symidx: rec_17_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a4:Occupied { symidx: temp_4_arithop_24_0, tracked: true, occupy_count: 1 } |  released_gpr_count:13,released_fpr_count:24


    subw    a4,a1,a2
              #                    free a1
              #                    free a2
              #                    free a4
              #                     349  untrack rec_17_0 
              #                    occupy a1 with rec_17_0
              #                    release a1 with rec_17_0
              #                     50    Call void inc_impl_0(x_17, temp_4_arithop_24_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with x_17
              #                    store to x_17 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with x_17
              #                    occupy a4 with temp_4_arithop_24_0
              #                    store to temp_4_arithop_24_0 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with temp_4_arithop_24_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_17_0
              #                    load from x_17 in mem
    ld      a0,72(sp)
              #                    occupy a1 with _anonymous_of_temp_4_arithop_24_0_0
              #                    load from temp_4_arithop_24_0 in mem


    lw      a1,36(sp)
              #                    arg load ended


    call    inc_impl
              #                     348  untrack temp_4_arithop_24_0 
              #                          jump label: gather_6 
              #                    occupy a0 with x_17
              #                    load from x_17 in mem
    ld      a0,72(sp)
    j       .gather_6
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     23   Define inc_0 "x_27," -> inc_ret_0 
    .globl inc
    .type inc,@function
inc:
              #                    mem layout:|ra_inc:8 at 40|s0_inc:8 at 32|x:8 at 24|x:8 at 16|temp_10_ptr_of_*k_0:8 at 8|temp_11_ele_of_*k_0 _s29 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_inc_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_inc_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     70   alloc ptr->i32 [temp_10_ptr_of_*k_0_29] 
              #                     72   alloc i32 [temp_11_ele_of_*k_0_29] 
              #                    regtab     a0:Freed { symidx: x_27, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     22    
              #                     71   temp_10_ptr_of_*k_0_29 = GEP *k_0:Array:i32:[None] [Some(0_0)] 
              #                    occupy a1 with temp_10_ptr_of_*k_0_29
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *k_0
              #                       load label k as ptr to reg
    la      a3, k
              #                    occupy reg a3 with *k_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     73   temp_11_ele_of_*k_0_29_0 = load temp_10_ptr_of_*k_0_29:ptr->i32 
              #                    occupy a1 with temp_10_ptr_of_*k_0_29
              #                    occupy a4 with temp_11_ele_of_*k_0_29_0
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     354  untrack temp_10_ptr_of_*k_0_29 
              #                    occupy a1 with temp_10_ptr_of_*k_0_29
              #                    release a1 with temp_10_ptr_of_*k_0_29
              #                     74   mu k_0_0:73 
              #                     75    Call void inc_impl_0(x_27, temp_11_ele_of_*k_0_29_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with x_27
              #                    store to x_27 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with x_27
              #                    occupy a4 with temp_11_ele_of_*k_0_29_0
              #                    store to temp_11_ele_of_*k_0_29_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_11_ele_of_*k_0_29_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_27_0
              #                    load from x_27 in mem
    ld      a0,16(sp)
              #                    occupy a1 with _anonymous_of_temp_11_ele_of_*k_0_29_0_0
              #                    load from temp_11_ele_of_*k_0_29_0 in mem


    lw      a1,4(sp)
              #                    arg load ended


    call    inc_impl
              #                     355  untrack x_27 
              #                     353  untrack temp_11_ele_of_*k_0_29_0 
              #                          jump label: exit_8 
    j       .exit_8
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     77   label exit_8: 
.exit_8:
              #                     76   ret 
              #                    load from ra_inc_0 in mem
    ld      ra,40(sp)
              #                    load from s0_inc_0 in mem
    ld      s0,32(sp)
    addi    sp,sp,48
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     26   Define add_impl_0 "x_31,y_31,rec_31_0," -> add_impl_ret_0 
    .globl add_impl
    .type add_impl,@function
add_impl:
              #                    mem layout:|ra_add_impl:8 at 152|s0_add_impl:8 at 144|x:8 at 136|x:8 at 128|x:8 at 120|x:8 at 112|x:8 at 104|y:8 at 96|y:8 at 88|rec _s31 _i0:4 at 84|none:4 at 80|temp_12_ptr_of_x_31:8 at 72|temp_13_ptr_of_x_31:8 at 64|temp_14_ele_of_x_31 _s38 _i0:4 at 60|temp_15_arithop _s38 _i0:4 at 56|temp_16_arithop _s38 _i0:4 at 52|none:4 at 48|temp_17_ptr_of_x_31:8 at 40|temp_18_ptr_of_x_31:8 at 32|temp_19_ele_of_x_31 _s36 _i0:4 at 28|none:4 at 24|temp_20_ptr_of_y_31:8 at 16|temp_21_ele_of_y_31 _s36 _i0:4 at 12|temp_22_arithop _s36 _i0:4 at 8|temp_23_cmp _s34 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-160
              #                    store to ra_add_impl_0 in mem offset legal
    sd      ra,152(sp)
              #                    store to s0_add_impl_0 in mem offset legal
    sd      s0,144(sp)
    addi    s0,sp,160
              #                     78   alloc ptr->i32 [temp_12_ptr_of_x_31_38] 
              #                     80   alloc ptr->i32 [temp_13_ptr_of_x_31_38] 
              #                     82   alloc i32 [temp_14_ele_of_x_31_38] 
              #                     85   alloc i32 [temp_15_arithop_38] 
              #                     89   alloc i32 [temp_16_arithop_38] 
              #                     92   alloc ptr->i32 [temp_17_ptr_of_x_31_36] 
              #                     94   alloc ptr->i32 [temp_18_ptr_of_x_31_36] 
              #                     96   alloc i32 [temp_19_ele_of_x_31_36] 
              #                     99   alloc ptr->i32 [temp_20_ptr_of_y_31_36] 
              #                     101  alloc i32 [temp_21_ele_of_y_31_36] 
              #                     104  alloc i32 [temp_22_arithop_36] 
              #                     108  alloc i1 [temp_23_cmp_34] 
              #                    regtab     a0:Freed { symidx: x_31, tracked: true } |     a1:Freed { symidx: y_31, tracked: true } |     a2:Freed { symidx: rec_31_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     24    
              #                     25    
              #                     109  temp_23_cmp_34_0 = icmp i32 Eq rec_31_0, 0_0 
              #                    occupy a2 with rec_31_0
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_23_cmp_34_0
    xor     a4,a2,a3
    seqz    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                     112  br i1 temp_23_cmp_34_0, label branch_true_35, label branch_false_35 
              #                    occupy a4 with temp_23_cmp_34_0
              #                    free a4
              #                    occupy a4 with temp_23_cmp_34_0
    bnez    a4, .branch_true_35
              #                    free a4
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: x_31, tracked: true } |     a1:Freed { symidx: y_31, tracked: true } |     a2:Freed { symidx: rec_31_0, tracked: true } |     a4:Freed { symidx: temp_23_cmp_34_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     110  label branch_true_35: 
.branch_true_35:
              #                     361  untrack temp_16_arithop_38_0 
              #                     360  untrack temp_23_cmp_34_0 
              #                    occupy a4 with temp_23_cmp_34_0
              #                    release a4 with temp_23_cmp_34_0
              #                     359  untrack temp_14_ele_of_x_31_38_0 
              #                     358  untrack rec_31_0 
              #                    occupy a2 with rec_31_0
              #                    release a2 with rec_31_0
              #                     357  untrack temp_15_arithop_38_0 
              #                     356  untrack temp_12_ptr_of_x_31_38 
              #                     93   temp_17_ptr_of_x_31_36 = GEP x_31:ptr->i32 [Some(0_0)] 
              #                    occupy a2 with temp_17_ptr_of_x_31_36
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with x_31
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     95   (nop) 
              #                     97   temp_19_ele_of_x_31_36_0 = load temp_17_ptr_of_x_31_36:ptr->i32 
              #                    occupy a2 with temp_17_ptr_of_x_31_36
              #                    occupy a4 with temp_19_ele_of_x_31_36_0
    lw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     98   mu x_31:97 
              #                     100  temp_20_ptr_of_y_31_36 = GEP y_31:Array:i32:[None] [Some(0_0)] 
              #                    occupy a5 with temp_20_ptr_of_y_31_36
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 0
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a1 with y_31
    add     a5,a5,a1
              #                    free a1
              #                    free a5
              #                     102  temp_21_ele_of_y_31_36_0 = load temp_20_ptr_of_y_31_36:ptr->i32 
              #                    occupy a5 with temp_20_ptr_of_y_31_36
              #                    occupy a7 with temp_21_ele_of_y_31_36_0
    lw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                     368  untrack temp_20_ptr_of_y_31_36 
              #                    occupy a5 with temp_20_ptr_of_y_31_36
              #                    release a5 with temp_20_ptr_of_y_31_36
              #                     103  mu y_31:102 
              #                     371  untrack y_31 
              #                    occupy a1 with y_31
              #                    release a1 with y_31
              #                     105  temp_22_arithop_36_0 = Add i32 temp_19_ele_of_x_31_36_0, temp_21_ele_of_y_31_36_0 
              #                    occupy a4 with temp_19_ele_of_x_31_36_0
              #                    occupy a7 with temp_21_ele_of_y_31_36_0
              #                    occupy a1 with temp_22_arithop_36_0
    ADDW    a1,a4,a7
              #                    free a4
              #                    free a7
              #                    free a1
              #                     370  untrack temp_21_ele_of_y_31_36_0 
              #                    occupy a7 with temp_21_ele_of_y_31_36_0
              #                    release a7 with temp_21_ele_of_y_31_36_0
              #                     369  untrack temp_19_ele_of_x_31_36_0 
              #                    occupy a4 with temp_19_ele_of_x_31_36_0
              #                    release a4 with temp_19_ele_of_x_31_36_0
              #                     106  store temp_22_arithop_36_0:i32 temp_17_ptr_of_x_31_36:ptr->i32 
              #                    occupy a2 with temp_17_ptr_of_x_31_36
              #                    occupy a1 with temp_22_arithop_36_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     373  untrack temp_22_arithop_36_0 
              #                    occupy a1 with temp_22_arithop_36_0
              #                    release a1 with temp_22_arithop_36_0
              #                     372  untrack temp_17_ptr_of_x_31_36 
              #                    occupy a2 with temp_17_ptr_of_x_31_36
              #                    release a2 with temp_17_ptr_of_x_31_36
              #                     107  x_31 = chi x_31:106 
              #                          jump label: gather_15 
    j       .gather_15
              #                    regtab     a0:Freed { symidx: x_31, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     113  label gather_15: 
.gather_15:
              #                          jump label: exit_11 
    j       .exit_11
              #                    regtab     a0:Freed { symidx: x_31, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     115  label exit_11: 
.exit_11:
              #                     294  mu x_31:114 
              #                     374  untrack x_31 
              #                    occupy a0 with x_31
              #                    release a0 with x_31
              #                     114  ret 
              #                    load from ra_add_impl_0 in mem
    ld      ra,152(sp)
              #                    load from s0_add_impl_0 in mem
    ld      s0,144(sp)
    addi    sp,sp,160
    ret
              #                    regtab     a0:Freed { symidx: x_31, tracked: true } |     a1:Freed { symidx: y_31, tracked: true } |     a2:Freed { symidx: rec_31_0, tracked: true } |     a4:Freed { symidx: temp_23_cmp_34_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     111  label branch_false_35: 
.branch_false_35:
              #                     367  untrack temp_19_ele_of_x_31_36_0 
              #                     366  untrack temp_21_ele_of_y_31_36_0 
              #                     365  untrack temp_23_cmp_34_0 
              #                    occupy a4 with temp_23_cmp_34_0
              #                    release a4 with temp_23_cmp_34_0
              #                     364  untrack temp_17_ptr_of_x_31_36 
              #                     363  untrack temp_20_ptr_of_y_31_36 
              #                     362  untrack temp_22_arithop_36_0 
              #                     79   temp_12_ptr_of_x_31_38 = GEP x_31:ptr->i32 [Some(0_0)] 
              #                    occupy a3 with temp_12_ptr_of_x_31_38
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a0 with x_31
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     81   (nop) 
              #                     83   temp_14_ele_of_x_31_38_0 = load temp_12_ptr_of_x_31_38:ptr->i32 
              #                    occupy a3 with temp_12_ptr_of_x_31_38
              #                    occupy a5 with temp_14_ele_of_x_31_38_0
    lw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     84   mu x_31:83 
              #                     86   temp_15_arithop_38_0 = Mul i32 temp_14_ele_of_x_31_38_0, 2_0 
              #                    occupy a6 with temp_15_arithop_38_0
              #                    occupy a5 with temp_14_ele_of_x_31_38_0
    slliw a6,a5,1
              #                    free a5
              #                    free a6
              #                     378  untrack temp_14_ele_of_x_31_38_0 
              #                    occupy a5 with temp_14_ele_of_x_31_38_0
              #                    release a5 with temp_14_ele_of_x_31_38_0
              #                     87   store temp_15_arithop_38_0:i32 temp_12_ptr_of_x_31_38:ptr->i32 
              #                    occupy a3 with temp_12_ptr_of_x_31_38
              #                    occupy a6 with temp_15_arithop_38_0
    sw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     380  untrack temp_15_arithop_38_0 
              #                    occupy a6 with temp_15_arithop_38_0
              #                    release a6 with temp_15_arithop_38_0
              #                     375  untrack temp_12_ptr_of_x_31_38 
              #                    occupy a3 with temp_12_ptr_of_x_31_38
              #                    release a3 with temp_12_ptr_of_x_31_38
              #                     88   x_31 = chi x_31:87 
              #                     90   temp_16_arithop_38_0 = Sub i32 rec_31_0, 1_0 
              #                    occupy a2 with rec_31_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_16_arithop_38_0
              #                    regtab:    a0:Freed { symidx: x_31, tracked: true } |     a1:Freed { symidx: y_31, tracked: true } |     a2:Occupied { symidx: rec_31_0, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a5:Occupied { symidx: temp_16_arithop_38_0, tracked: true, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    subw    a5,a2,a3
              #                    free a2
              #                    free a3
              #                    free a5
              #                     379  untrack rec_31_0 
              #                    occupy a2 with rec_31_0
              #                    release a2 with rec_31_0
              #                     91    Call void add_impl_0(x_31, y_31, temp_16_arithop_38_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with x_31
              #                    store to x_31 in mem offset legal
    sd      a0,104(sp)
              #                    release a0 with x_31
              #                    occupy a1 with y_31
              #                    store to y_31 in mem offset legal
    sd      a1,88(sp)
              #                    release a1 with y_31
              #                    occupy a5 with temp_16_arithop_38_0
              #                    store to temp_16_arithop_38_0 in mem offset legal
    sw      a5,52(sp)
              #                    release a5 with temp_16_arithop_38_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_31_0
              #                    load from x_31 in mem
    ld      a0,104(sp)
              #                    occupy a1 with _anonymous_of_y_31_0
              #                    load from y_31 in mem
    ld      a1,88(sp)
              #                    occupy a2 with _anonymous_of_temp_16_arithop_38_0_0
              #                    load from temp_16_arithop_38_0 in mem


    lw      a2,52(sp)
              #                    arg load ended


    call    add_impl
              #                     377  untrack y_31 
              #                     376  untrack temp_16_arithop_38_0 
              #                          jump label: gather_15 
              #                    occupy a0 with x_31
              #                    load from x_31 in mem
    ld      a0,104(sp)
    j       .gather_15
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     29   Define add_0 "x_41,y_41," -> add_ret_0 
    .globl add
    .type add,@function
add:
              #                    mem layout:|ra_add:8 at 56|s0_add:8 at 48|x:8 at 40|x:8 at 32|y:8 at 24|y:8 at 16|temp_24_ptr_of_*k_0:8 at 8|temp_25_ele_of_*k_0 _s43 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-64
              #                    store to ra_add_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_add_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     116  alloc ptr->i32 [temp_24_ptr_of_*k_0_43] 
              #                     118  alloc i32 [temp_25_ele_of_*k_0_43] 
              #                    regtab     a0:Freed { symidx: x_41, tracked: true } |     a1:Freed { symidx: y_41, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     27    
              #                     28    
              #                     117  temp_24_ptr_of_*k_0_43 = GEP *k_0:Array:i32:[None] [Some(0_0)] 
              #                    occupy a2 with temp_24_ptr_of_*k_0_43
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *k_0
              #                       load label k as ptr to reg
    la      a4, k
              #                    occupy reg a4 with *k_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     119  temp_25_ele_of_*k_0_43_0 = load temp_24_ptr_of_*k_0_43:ptr->i32 
              #                    occupy a2 with temp_24_ptr_of_*k_0_43
              #                    occupy a5 with temp_25_ele_of_*k_0_43_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     383  untrack temp_24_ptr_of_*k_0_43 
              #                    occupy a2 with temp_24_ptr_of_*k_0_43
              #                    release a2 with temp_24_ptr_of_*k_0_43
              #                     120  mu k_0_0:119 
              #                     121   Call void add_impl_0(x_41, y_41, temp_25_ele_of_*k_0_43_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with x_41
              #                    store to x_41 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with x_41
              #                    occupy a1 with y_41
              #                    store to y_41 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with y_41
              #                    occupy a5 with temp_25_ele_of_*k_0_43_0
              #                    store to temp_25_ele_of_*k_0_43_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_25_ele_of_*k_0_43_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_41_0
              #                    load from x_41 in mem
    ld      a0,32(sp)
              #                    occupy a1 with _anonymous_of_y_41_0
              #                    load from y_41 in mem
    ld      a1,16(sp)
              #                    occupy a2 with _anonymous_of_temp_25_ele_of_*k_0_43_0_0
              #                    load from temp_25_ele_of_*k_0_43_0 in mem


    lw      a2,4(sp)
              #                    arg load ended


    call    add_impl
              #                     384  untrack temp_25_ele_of_*k_0_43_0 
              #                     382  untrack x_41 
              #                     381  untrack y_41 
              #                          jump label: exit_17 
    j       .exit_17
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     123  label exit_17: 
.exit_17:
              #                     122  ret 
              #                    load from ra_add_0 in mem
    ld      ra,56(sp)
              #                    load from s0_add_0 in mem
    ld      s0,48(sp)
    addi    sp,sp,64
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     32   Define sub_impl_0 "x_45,y_45,rec_45_0," -> sub_impl_ret_0 
    .globl sub_impl
    .type sub_impl,@function
sub_impl:
              #                    mem layout:|ra_sub_impl:8 at 152|s0_sub_impl:8 at 144|x:8 at 136|x:8 at 128|x:8 at 120|x:8 at 112|x:8 at 104|y:8 at 96|y:8 at 88|rec _s45 _i0:4 at 84|none:4 at 80|temp_26_ptr_of_x_45:8 at 72|temp_27_ptr_of_x_45:8 at 64|temp_28_ele_of_x_45 _s52 _i0:4 at 60|temp_29_arithop _s52 _i0:4 at 56|temp_30_arithop _s52 _i0:4 at 52|none:4 at 48|temp_31_ptr_of_x_45:8 at 40|temp_32_ptr_of_x_45:8 at 32|temp_33_ele_of_x_45 _s50 _i0:4 at 28|none:4 at 24|temp_34_ptr_of_y_45:8 at 16|temp_35_ele_of_y_45 _s50 _i0:4 at 12|temp_36_arithop _s50 _i0:4 at 8|temp_37_cmp _s48 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-160
              #                    store to ra_sub_impl_0 in mem offset legal
    sd      ra,152(sp)
              #                    store to s0_sub_impl_0 in mem offset legal
    sd      s0,144(sp)
    addi    s0,sp,160
              #                     124  alloc ptr->i32 [temp_26_ptr_of_x_45_52] 
              #                     126  alloc ptr->i32 [temp_27_ptr_of_x_45_52] 
              #                     128  alloc i32 [temp_28_ele_of_x_45_52] 
              #                     131  alloc i32 [temp_29_arithop_52] 
              #                     135  alloc i32 [temp_30_arithop_52] 
              #                     138  alloc ptr->i32 [temp_31_ptr_of_x_45_50] 
              #                     140  alloc ptr->i32 [temp_32_ptr_of_x_45_50] 
              #                     142  alloc i32 [temp_33_ele_of_x_45_50] 
              #                     145  alloc ptr->i32 [temp_34_ptr_of_y_45_50] 
              #                     147  alloc i32 [temp_35_ele_of_y_45_50] 
              #                     150  alloc i32 [temp_36_arithop_50] 
              #                     154  alloc i1 [temp_37_cmp_48] 
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: y_45, tracked: true } |     a2:Freed { symidx: rec_45_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     30    
              #                     31    
              #                     155  temp_37_cmp_48_0 = icmp i32 Eq rec_45_0, 0_0 
              #                    occupy a2 with rec_45_0
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_37_cmp_48_0
    xor     a4,a2,a3
    seqz    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                     158  br i1 temp_37_cmp_48_0, label branch_true_49, label branch_false_49 
              #                    occupy a4 with temp_37_cmp_48_0
              #                    free a4
              #                    occupy a4 with temp_37_cmp_48_0
    bnez    a4, .branch_true_49
              #                    free a4
    j       .branch_false_49
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: y_45, tracked: true } |     a2:Freed { symidx: rec_45_0, tracked: true } |     a4:Freed { symidx: temp_37_cmp_48_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     156  label branch_true_49: 
.branch_true_49:
              #                     390  untrack rec_45_0 
              #                    occupy a2 with rec_45_0
              #                    release a2 with rec_45_0
              #                     389  untrack temp_26_ptr_of_x_45_52 
              #                     388  untrack temp_28_ele_of_x_45_52_0 
              #                     387  untrack temp_30_arithop_52_0 
              #                     386  untrack temp_37_cmp_48_0 
              #                    occupy a4 with temp_37_cmp_48_0
              #                    release a4 with temp_37_cmp_48_0
              #                     385  untrack temp_29_arithop_52_0 
              #                     139  temp_31_ptr_of_x_45_50 = GEP x_45:ptr->i32 [Some(0_0)] 
              #                    occupy a2 with temp_31_ptr_of_x_45_50
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with x_45
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     141  (nop) 
              #                     143  temp_33_ele_of_x_45_50_0 = load temp_31_ptr_of_x_45_50:ptr->i32 
              #                    occupy a2 with temp_31_ptr_of_x_45_50
              #                    occupy a4 with temp_33_ele_of_x_45_50_0
    lw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     144  mu x_45:143 
              #                     146  temp_34_ptr_of_y_45_50 = GEP y_45:Array:i32:[None] [Some(0_0)] 
              #                    occupy a5 with temp_34_ptr_of_y_45_50
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 0
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a1 with y_45
    add     a5,a5,a1
              #                    free a1
              #                    free a5
              #                     148  temp_35_ele_of_y_45_50_0 = load temp_34_ptr_of_y_45_50:ptr->i32 
              #                    occupy a5 with temp_34_ptr_of_y_45_50
              #                    occupy a7 with temp_35_ele_of_y_45_50_0
    lw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                     398  untrack temp_34_ptr_of_y_45_50 
              #                    occupy a5 with temp_34_ptr_of_y_45_50
              #                    release a5 with temp_34_ptr_of_y_45_50
              #                     149  mu y_45:148 
              #                     402  untrack y_45 
              #                    occupy a1 with y_45
              #                    release a1 with y_45
              #                     151  temp_36_arithop_50_0 = Sub i32 temp_33_ele_of_x_45_50_0, temp_35_ele_of_y_45_50_0 
              #                    occupy a4 with temp_33_ele_of_x_45_50_0
              #                    occupy a7 with temp_35_ele_of_y_45_50_0
              #                    occupy a1 with temp_36_arithop_50_0
              #                    regtab:    a0:Freed { symidx: x_45, tracked: true } |     a1:Occupied { symidx: temp_36_arithop_50_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_31_ptr_of_x_45_50, tracked: true } |     a3:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a4:Occupied { symidx: temp_33_ele_of_x_45_50_0, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a7:Occupied { symidx: temp_35_ele_of_y_45_50_0, tracked: true, occupy_count: 1 } |  released_gpr_count:11,released_fpr_count:24


    subw    a1,a4,a7
              #                    free a4
              #                    free a7
              #                    free a1
              #                     401  untrack temp_33_ele_of_x_45_50_0 
              #                    occupy a4 with temp_33_ele_of_x_45_50_0
              #                    release a4 with temp_33_ele_of_x_45_50_0
              #                     397  untrack temp_35_ele_of_y_45_50_0 
              #                    occupy a7 with temp_35_ele_of_y_45_50_0
              #                    release a7 with temp_35_ele_of_y_45_50_0
              #                     152  store temp_36_arithop_50_0:i32 temp_31_ptr_of_x_45_50:ptr->i32 
              #                    occupy a2 with temp_31_ptr_of_x_45_50
              #                    occupy a1 with temp_36_arithop_50_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     400  untrack temp_31_ptr_of_x_45_50 
              #                    occupy a2 with temp_31_ptr_of_x_45_50
              #                    release a2 with temp_31_ptr_of_x_45_50
              #                     399  untrack temp_36_arithop_50_0 
              #                    occupy a1 with temp_36_arithop_50_0
              #                    release a1 with temp_36_arithop_50_0
              #                     153  x_45 = chi x_45:152 
              #                          jump label: gather_24 
    j       .gather_24
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     159  label gather_24: 
.gather_24:
              #                          jump label: exit_20 
    j       .exit_20
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     161  label exit_20: 
.exit_20:
              #                     295  mu x_45:160 
              #                     403  untrack x_45 
              #                    occupy a0 with x_45
              #                    release a0 with x_45
              #                     160  ret 
              #                    load from ra_sub_impl_0 in mem
    ld      ra,152(sp)
              #                    load from s0_sub_impl_0 in mem
    ld      s0,144(sp)
    addi    sp,sp,160
    ret
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: y_45, tracked: true } |     a2:Freed { symidx: rec_45_0, tracked: true } |     a4:Freed { symidx: temp_37_cmp_48_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     157  label branch_false_49: 
.branch_false_49:
              #                     396  untrack temp_35_ele_of_y_45_50_0 
              #                     395  untrack temp_31_ptr_of_x_45_50 
              #                     394  untrack temp_33_ele_of_x_45_50_0 
              #                     393  untrack temp_36_arithop_50_0 
              #                     392  untrack temp_37_cmp_48_0 
              #                    occupy a4 with temp_37_cmp_48_0
              #                    release a4 with temp_37_cmp_48_0
              #                     391  untrack temp_34_ptr_of_y_45_50 
              #                     125  temp_26_ptr_of_x_45_52 = GEP x_45:ptr->i32 [Some(0_0)] 
              #                    occupy a3 with temp_26_ptr_of_x_45_52
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a0 with x_45
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     127  (nop) 
              #                     129  temp_28_ele_of_x_45_52_0 = load temp_26_ptr_of_x_45_52:ptr->i32 
              #                    occupy a3 with temp_26_ptr_of_x_45_52
              #                    occupy a5 with temp_28_ele_of_x_45_52_0
    lw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     130  mu x_45:129 
              #                     132  temp_29_arithop_52_0 = Mul i32 temp_28_ele_of_x_45_52_0, 2_0 
              #                    occupy a6 with temp_29_arithop_52_0
              #                    occupy a5 with temp_28_ele_of_x_45_52_0
    slliw a6,a5,1
              #                    free a5
              #                    free a6
              #                     408  untrack temp_28_ele_of_x_45_52_0 
              #                    occupy a5 with temp_28_ele_of_x_45_52_0
              #                    release a5 with temp_28_ele_of_x_45_52_0
              #                     133  store temp_29_arithop_52_0:i32 temp_26_ptr_of_x_45_52:ptr->i32 
              #                    occupy a3 with temp_26_ptr_of_x_45_52
              #                    occupy a6 with temp_29_arithop_52_0
    sw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     407  untrack temp_26_ptr_of_x_45_52 
              #                    occupy a3 with temp_26_ptr_of_x_45_52
              #                    release a3 with temp_26_ptr_of_x_45_52
              #                     404  untrack temp_29_arithop_52_0 
              #                    occupy a6 with temp_29_arithop_52_0
              #                    release a6 with temp_29_arithop_52_0
              #                     134  x_45 = chi x_45:133 
              #                     136  temp_30_arithop_52_0 = Sub i32 rec_45_0, 1_0 
              #                    occupy a2 with rec_45_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_30_arithop_52_0
              #                    regtab:    a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: y_45, tracked: true } |     a2:Occupied { symidx: rec_45_0, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a5:Occupied { symidx: temp_30_arithop_52_0, tracked: true, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    subw    a5,a2,a3
              #                    free a2
              #                    free a3
              #                    free a5
              #                     406  untrack rec_45_0 
              #                    occupy a2 with rec_45_0
              #                    release a2 with rec_45_0
              #                     137   Call void sub_impl_0(x_45, y_45, temp_30_arithop_52_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with x_45
              #                    store to x_45 in mem offset legal
    sd      a0,104(sp)
              #                    release a0 with x_45
              #                    occupy a1 with y_45
              #                    store to y_45 in mem offset legal
    sd      a1,88(sp)
              #                    release a1 with y_45
              #                    occupy a5 with temp_30_arithop_52_0
              #                    store to temp_30_arithop_52_0 in mem offset legal
    sw      a5,52(sp)
              #                    release a5 with temp_30_arithop_52_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_45_0
              #                    load from x_45 in mem
    ld      a0,104(sp)
              #                    occupy a1 with _anonymous_of_y_45_0
              #                    load from y_45 in mem
    ld      a1,88(sp)
              #                    occupy a2 with _anonymous_of_temp_30_arithop_52_0_0
              #                    load from temp_30_arithop_52_0 in mem


    lw      a2,52(sp)
              #                    arg load ended


    call    sub_impl
              #                     409  untrack y_45 
              #                     405  untrack temp_30_arithop_52_0 
              #                          jump label: gather_24 
              #                    occupy a0 with x_45
              #                    load from x_45 in mem
    ld      a0,104(sp)
    j       .gather_24
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     35   Define sub_0 "x_55,y_55," -> sub_ret_0 
    .globl sub
    .type sub,@function
sub:
              #                    mem layout:|ra_sub:8 at 56|s0_sub:8 at 48|x:8 at 40|x:8 at 32|y:8 at 24|y:8 at 16|temp_38_ptr_of_*k_0:8 at 8|temp_39_ele_of_*k_0 _s57 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-64
              #                    store to ra_sub_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_sub_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     162  alloc ptr->i32 [temp_38_ptr_of_*k_0_57] 
              #                     164  alloc i32 [temp_39_ele_of_*k_0_57] 
              #                    regtab     a0:Freed { symidx: x_55, tracked: true } |     a1:Freed { symidx: y_55, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     33    
              #                     34    
              #                     163  temp_38_ptr_of_*k_0_57 = GEP *k_0:Array:i32:[None] [Some(0_0)] 
              #                    occupy a2 with temp_38_ptr_of_*k_0_57
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *k_0
              #                       load label k as ptr to reg
    la      a4, k
              #                    occupy reg a4 with *k_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     165  temp_39_ele_of_*k_0_57_0 = load temp_38_ptr_of_*k_0_57:ptr->i32 
              #                    occupy a2 with temp_38_ptr_of_*k_0_57
              #                    occupy a5 with temp_39_ele_of_*k_0_57_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     413  untrack temp_38_ptr_of_*k_0_57 
              #                    occupy a2 with temp_38_ptr_of_*k_0_57
              #                    release a2 with temp_38_ptr_of_*k_0_57
              #                     166  mu k_0_0:165 
              #                     167   Call void sub_impl_0(x_55, y_55, temp_39_ele_of_*k_0_57_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with x_55
              #                    store to x_55 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with x_55
              #                    occupy a1 with y_55
              #                    store to y_55 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with y_55
              #                    occupy a5 with temp_39_ele_of_*k_0_57_0
              #                    store to temp_39_ele_of_*k_0_57_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_39_ele_of_*k_0_57_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_55_0
              #                    load from x_55 in mem
    ld      a0,32(sp)
              #                    occupy a1 with _anonymous_of_y_55_0
              #                    load from y_55 in mem
    ld      a1,16(sp)
              #                    occupy a2 with _anonymous_of_temp_39_ele_of_*k_0_57_0_0
              #                    load from temp_39_ele_of_*k_0_57_0 in mem


    lw      a2,4(sp)
              #                    arg load ended


    call    sub_impl
              #                     412  untrack y_55 
              #                     411  untrack x_55 
              #                     410  untrack temp_39_ele_of_*k_0_57_0 
              #                          jump label: exit_26 
    j       .exit_26
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     169  label exit_26: 
.exit_26:
              #                     168  ret 
              #                    load from ra_sub_0 in mem
    ld      ra,56(sp)
              #                    load from s0_sub_0 in mem
    ld      s0,48(sp)
    addi    sp,sp,64
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     36   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 288|s0_main:8 at 280|j:4 at 276|y:4 at 272|temp_40_array_init_ptr:8 at 264|temp_41_array_init_ptr:8 at 256|z:8 at 248|temp_42_ptr_of_*k_0:8 at 240|temp_43_ret_of_getint _s60 _i0:4 at 236|none:4 at 232|temp_44_ptr_of_y_60:8 at 224|temp_45_ret_of_getint _s60 _i0:4 at 220|none:4 at 216|temp_46_ptr_of_z_60:8 at 208|temp_47_ret_of_getarray _s60 _i0:4 at 204|none:4 at 200|temp_48_ptr_of_j_60:8 at 192|temp_49_ptr_of_z_60:8 at 184|temp_50_ele_of_z_60 _s67 _i0:4 at 180|none:4 at 176|temp_51_ptr_of_z_60:8 at 168|temp_52_ptr_of_*i_0:8 at 160|temp_53_ele_of_*i_0 _s71 _i0:4 at 156|none:4 at 152|temp_54_ptr_of_j_60:8 at 144|temp_56_ptr_of_y_60:8 at 136|temp_57_ele_of_y_60 _s71 _i0:4 at 132|none:4 at 128|temp_58_ptr_of_z_60:8 at 120|temp_59_ele_of_z_60 _s71 _i0:4 at 116|none:4 at 112|temp_60_ptr_of_z_60:8 at 104|temp_61_ele_ptr_of_y_60:8 at 96|temp_62_ele_ptr_of_j_60:8 at 88|temp_63_ele_ptr_of_y_60:8 at 80|temp_64_ptr_of_z_60:8 at 72|temp_65_ele_ptr_of_y_60:8 at 64|temp_66_ptr_of_y_60:8 at 56|temp_67_ele_of_y_60 _s65 _i0:4 at 52|temp_68_ _s2184 _i0:1 at 51|none:3 at 48|temp_69_ptr_of_j_60:8 at 40|temp_70_ele_of_j_60 _s69 _i0:4 at 36|temp_71_cmp _s69 _i0:1 at 35|none:3 at 32|temp_72_ptr_of_z_60:8 at 24|temp_73_ele_of_z_60 _s81 _i0:4 at 20|none:4 at 16|temp_74_ptr_of_*i_0:8 at 8|temp_75_ele_of_*i_0 _s81 _i0:4 at 4|temp_76_cmp _s81 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-296
              #                    store to ra_main_0 in mem offset legal
    sd      ra,288(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,280(sp)
    addi    s0,sp,296
              #                     296  k_0_1 = chi k_0_0:36 
              #                     171  alloc Array:i32:[Some(1_0)] [j_60] 
              #                     173  alloc Array:i32:[Some(1_0)] [y_60] 
              #                     175  alloc ptr->i32 [temp_40_array_init_ptr_60] 
              #                     178  alloc ptr->i32 [temp_41_array_init_ptr_60] 
              #                     182  alloc Array:i32:[Some(1_0), Some(2_0)] [z_60] 
              #                     183  alloc ptr->i32 [temp_42_ptr_of_*k_0_60] 
              #                     185  alloc i32 [temp_43_ret_of_getint_60] 
              #                     189  alloc ptr->i32 [temp_44_ptr_of_y_60_60] 
              #                     191  alloc i32 [temp_45_ret_of_getint_60] 
              #                     195  alloc ptr->i32 [temp_46_ptr_of_z_60_60] 
              #                     197  alloc i32 [temp_47_ret_of_getarray_60] 
              #                     202  alloc ptr->i32 [temp_48_ptr_of_j_60_67] 
              #                     204  alloc ptr->i32 [temp_49_ptr_of_z_60_67] 
              #                     206  alloc i32 [temp_50_ele_of_z_60_67] 
              #                     212  alloc ptr->i32 [temp_51_ptr_of_z_60_67] 
              #                     215  alloc ptr->i32 [temp_52_ptr_of_*i_0_71] 
              #                     217  alloc i32 [temp_53_ele_of_*i_0_71] 
              #                     221  alloc ptr->i32 [temp_54_ptr_of_j_60_71] 
              #                     223  alloc i32 [temp_55_ele_of_j_60_71] 
              #                     227  alloc ptr->i32 [temp_56_ptr_of_y_60_71] 
              #                     229  alloc i32 [temp_57_ele_of_y_60_71] 
              #                     233  alloc ptr->i32 [temp_58_ptr_of_z_60_71] 
              #                     235  alloc i32 [temp_59_ele_of_z_60_71] 
              #                     239  alloc ptr->i32 [temp_60_ptr_of_z_60_71] 
              #                     241  alloc ptr->i32 [temp_61_ele_ptr_of_y_60_71] 
              #                     244  alloc ptr->i32 [temp_62_ele_ptr_of_j_60_71] 
              #                     246  alloc ptr->i32 [temp_63_ele_ptr_of_y_60_71] 
              #                     249  alloc ptr->i32 [temp_64_ptr_of_z_60_71] 
              #                     251  alloc ptr->i32 [temp_65_ele_ptr_of_y_60_71] 
              #                     254  alloc ptr->i32 [temp_66_ptr_of_y_60_65] 
              #                     256  alloc i32 [temp_67_ele_of_y_60_65] 
              #                     259  alloc i1 [temp_68__2184] 
              #                     267  alloc ptr->i32 [temp_69_ptr_of_j_60_69] 
              #                     269  alloc i32 [temp_70_ele_of_j_60_69] 
              #                     272  alloc i1 [temp_71_cmp_69] 
              #                     278  alloc ptr->i32 [temp_72_ptr_of_z_60_81] 
              #                     280  alloc i32 [temp_73_ele_of_z_60_81] 
              #                     283  alloc ptr->i32 [temp_74_ptr_of_*i_0_81] 
              #                     285  alloc i32 [temp_75_ele_of_*i_0_81] 
              #                     288  alloc i1 [temp_76_cmp_81] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     170   
              #                     172   
              #                     174   
              #                     176  temp_40_array_init_ptr_60 = GEP z_60_0:Array:i32:[Some(1_0), Some(2_0)] [] 
              #                    occupy a0 with temp_40_array_init_ptr_60
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,248
              #                    free a0
              #                     177   Call void memset_0(temp_40_array_init_ptr_60, 0_0, 8_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_40_array_init_ptr_60
              #                    store to temp_40_array_init_ptr_60 in mem offset legal
    sd      a0,264(sp)
              #                    release a0 with temp_40_array_init_ptr_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_40_array_init_ptr_60_0
              #                    load from temp_40_array_init_ptr_60 in mem
    ld      a0,264(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_8_0_0
    li      a2, 8
              #                    arg load ended


    call    memset
              #                     417  untrack temp_40_array_init_ptr_60 
              #                     297  mu z_60_0:177 
              #                     298  z_60_1 = chi z_60_0:177 
              #                     179  temp_41_array_init_ptr_60 = GEP z_60_1:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_41_array_init_ptr_60
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,248
              #                    free a0
              #                     180  store -1_0:i32 temp_41_array_init_ptr_60:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_41_array_init_ptr_60
              #                    occupy a3 with -1_0
    li      a3, -1
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     181  z_60_2 = chi z_60_1:180 
              #                     184  temp_42_ptr_of_*k_0_60 = GEP *k_0:ptr->i32 [Some(0_0)] 
              #                    occupy a4 with temp_42_ptr_of_*k_0_60
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *k_0
              #                       load label k as ptr to reg
    la      a6, k
              #                    occupy reg a6 with *k_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     186  temp_43_ret_of_getint_60_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_41_array_init_ptr_60
              #                    store to temp_41_array_init_ptr_60 in mem offset legal
    sd      a0,256(sp)
              #                    release a0 with temp_41_array_init_ptr_60
              #                    occupy a4 with temp_42_ptr_of_*k_0_60
              #                    store to temp_42_ptr_of_*k_0_60 in mem offset legal
    sd      a4,240(sp)
              #                    release a4 with temp_42_ptr_of_*k_0_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     187  store temp_43_ret_of_getint_60_0:i32 temp_42_ptr_of_*k_0_60:ptr->i32 
              #                    occupy a1 with temp_42_ptr_of_*k_0_60
              #                    load from temp_42_ptr_of_*k_0_60 in mem
    ld      a1,240(sp)
              #                    occupy a0 with temp_43_ret_of_getint_60_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     416  untrack temp_42_ptr_of_*k_0_60 
              #                    occupy a1 with temp_42_ptr_of_*k_0_60
              #                    release a1 with temp_42_ptr_of_*k_0_60
              #                     415  untrack temp_43_ret_of_getint_60_0 
              #                    occupy a0 with temp_43_ret_of_getint_60_0
              #                    release a0 with temp_43_ret_of_getint_60_0
              #                     188  k_0_2 = chi k_0_1:187 
              #                     190  temp_44_ptr_of_y_60_60 = GEP y_60_0:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a0 with temp_44_ptr_of_y_60_60
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,272
              #                    free a0
              #                     192  temp_45_ret_of_getint_60_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_44_ptr_of_y_60_60
              #                    store to temp_44_ptr_of_y_60_60 in mem offset legal
    sd      a0,224(sp)
              #                    release a0 with temp_44_ptr_of_y_60_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     193  store temp_45_ret_of_getint_60_0:i32 temp_44_ptr_of_y_60_60:ptr->i32 
              #                    occupy a1 with temp_44_ptr_of_y_60_60
              #                    load from temp_44_ptr_of_y_60_60 in mem
    ld      a1,224(sp)
              #                    occupy a0 with temp_45_ret_of_getint_60_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     414  untrack temp_45_ret_of_getint_60_0 
              #                    occupy a0 with temp_45_ret_of_getint_60_0
              #                    release a0 with temp_45_ret_of_getint_60_0
              #                     194  y_60_1 = chi y_60_0:193 
              #                     196  temp_46_ptr_of_z_60_60 = GEP z_60_2:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0)] 
              #                    occupy a0 with temp_46_ptr_of_z_60_60
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,248
              #                    free a0
              #                     198  temp_47_ret_of_getarray_60_0 =  Call i32 getarray_0(temp_46_ptr_of_z_60_60) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_46_ptr_of_z_60_60
              #                    store to temp_46_ptr_of_z_60_60 in mem offset legal
    sd      a0,208(sp)
              #                    release a0 with temp_46_ptr_of_z_60_60
              #                    occupy a1 with temp_44_ptr_of_y_60_60
              #                    store to temp_44_ptr_of_y_60_60 in mem offset legal
    sd      a1,224(sp)
              #                    release a1 with temp_44_ptr_of_y_60_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_46_ptr_of_z_60_60_0
              #                    load from temp_46_ptr_of_z_60_60 in mem
    ld      a0,208(sp)
              #                    arg load ended


    call    getarray
              #                     299  mu z_60_2:198 
              #                     300  z_60_3 = chi z_60_2:198 
              #                          jump label: while.head_66 
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: temp_47_ret_of_getarray_60_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     261  label while.head_66: 
.while.head_66:
              #                     255  (nop) 
              #                     257  temp_67_ele_of_y_60_65_0 = load temp_44_ptr_of_y_60_60:ptr->i32 
              #                    occupy a1 with temp_44_ptr_of_y_60_60
              #                    load from temp_44_ptr_of_y_60_60 in mem
    ld      a1,224(sp)
              #                    occupy a2 with temp_67_ele_of_y_60_65_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     258  mu y_60_2:257 
              #                     260  temp_68__2184_0 = icmp i32 Ne temp_67_ele_of_y_60_65_0, 0_0 
              #                    occupy a2 with temp_67_ele_of_y_60_65_0
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_68__2184_0
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                     264  br i1 temp_68__2184_0, label while.body_66, label while.exit_66 
              #                    occupy a4 with temp_68__2184_0
              #                    free a4
              #                    occupy a4 with temp_68__2184_0
    bnez    a4, .while.body_66
              #                    free a4
    j       .while.exit_66
              #                    regtab     a0:Freed { symidx: temp_47_ret_of_getarray_60_0, tracked: true } |     a1:Freed { symidx: temp_44_ptr_of_y_60_60, tracked: true } |     a2:Freed { symidx: temp_67_ele_of_y_60_65_0, tracked: true } |     a4:Freed { symidx: temp_68__2184_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     262  label while.body_66: 
.while.body_66:
              #                     203  temp_48_ptr_of_j_60_67 = GEP j_60_1:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a3 with temp_48_ptr_of_j_60_67
    li      a3, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,276
              #                    free a3
              #                     205  (nop) 
              #                     207  temp_50_ele_of_z_60_67_0 = load temp_41_array_init_ptr_60:ptr->i32 
              #                    occupy a6 with temp_41_array_init_ptr_60
              #                    load from temp_41_array_init_ptr_60 in mem
    ld      a6,256(sp)
              #                    occupy a7 with temp_50_ele_of_z_60_67_0
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                     208  mu z_60_4:207 
              #                     209  store temp_50_ele_of_z_60_67_0:i32 temp_48_ptr_of_j_60_67:ptr->i32 
              #                    occupy a3 with temp_48_ptr_of_j_60_67
              #                    occupy a7 with temp_50_ele_of_z_60_67_0
    sw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                     210  j_60_2 = chi j_60_1:209 
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_47_ret_of_getarray_60_0, tracked: true } |     a1:Freed { symidx: temp_44_ptr_of_y_60_60, tracked: true } |     a2:Freed { symidx: temp_67_ele_of_y_60_65_0, tracked: true } |     a3:Freed { symidx: temp_48_ptr_of_j_60_67, tracked: true } |     a4:Freed { symidx: temp_68__2184_0, tracked: true } |     a6:Freed { symidx: temp_41_array_init_ptr_60, tracked: true } |     a7:Freed { symidx: temp_50_ele_of_z_60_67_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     274  label while.head_70: 
.while.head_70:
              #                     268  (nop) 
              #                     270  temp_70_ele_of_j_60_69_0 = load temp_48_ptr_of_j_60_67:ptr->i32 
              #                    occupy a3 with temp_48_ptr_of_j_60_67
              #                    occupy a5 with temp_70_ele_of_j_60_69_0
    lw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     271  mu j_60_3:270 
              #                     273  temp_71_cmp_69_0 = icmp i32 Slt temp_70_ele_of_j_60_69_0, 5_0 
              #                    occupy a5 with temp_70_ele_of_j_60_69_0
              #                    occupy s1 with 5_0
    li      s1, 5
              #                    occupy s2 with temp_71_cmp_69_0
    slt     s2,a5,s1
              #                    free a5
              #                    free s1
              #                    free s2
              #                     277  br i1 temp_71_cmp_69_0, label while.body_70, label while.exit_70 
              #                    occupy s2 with temp_71_cmp_69_0
              #                    free s2
              #                    occupy s2 with temp_71_cmp_69_0
    bnez    s2, .while.body_70
              #                    free s2
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: temp_47_ret_of_getarray_60_0, tracked: true } |     a1:Freed { symidx: temp_44_ptr_of_y_60_60, tracked: true } |     a2:Freed { symidx: temp_67_ele_of_y_60_65_0, tracked: true } |     a3:Freed { symidx: temp_48_ptr_of_j_60_67, tracked: true } |     a4:Freed { symidx: temp_68__2184_0, tracked: true } |     a5:Freed { symidx: temp_70_ele_of_j_60_69_0, tracked: true } |     a6:Freed { symidx: temp_41_array_init_ptr_60, tracked: true } |     a7:Freed { symidx: temp_50_ele_of_z_60_67_0, tracked: true } |     s2:Freed { symidx: temp_71_cmp_69_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     275  label while.body_70: 
.while.body_70:
              #                     216  temp_52_ptr_of_*i_0_71 = GEP *i_0:Array:i32:[None] [Some(0_0)] 
              #                    occupy s1 with temp_52_ptr_of_*i_0_71
    li      s1, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 0
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy s4 with *i_0
              #                       load label i as ptr to reg
    la      s4, i
              #                    occupy reg s4 with *i_0
    add     s1,s1,s4
              #                    free s4
              #                    free s1
              #                     218  temp_53_ele_of_*i_0_71_0 = load temp_52_ptr_of_*i_0_71:ptr->i32 
              #                    occupy s1 with temp_52_ptr_of_*i_0_71
              #                    occupy s4 with temp_53_ele_of_*i_0_71_0
    lw      s4,0(s1)
              #                    free s4
              #                    occupy s4 with temp_53_ele_of_*i_0_71_0
              #                    store to temp_53_ele_of_*i_0_71_0 in mem offset legal
    sw      s4,156(sp)
              #                    release s4 with temp_53_ele_of_*i_0_71_0
              #                    free s1
              #                     219  mu i_0_1:218 
              #                     220   Call void putint_0(temp_53_ele_of_*i_0_71_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_52_ptr_of_*i_0_71
              #                    store to temp_52_ptr_of_*i_0_71 in mem offset legal
    sd      s1,160(sp)
              #                    release s1 with temp_52_ptr_of_*i_0_71
              #                    occupy s2 with temp_71_cmp_69_0
              #                    store to temp_71_cmp_69_0 in mem offset legal
    sb      s2,35(sp)
              #                    release s2 with temp_71_cmp_69_0
              #                    occupy a0 with temp_47_ret_of_getarray_60_0
              #                    store to temp_47_ret_of_getarray_60_0 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with temp_47_ret_of_getarray_60_0
              #                    occupy a1 with temp_44_ptr_of_y_60_60
              #                    store to temp_44_ptr_of_y_60_60 in mem offset legal
    sd      a1,224(sp)
              #                    release a1 with temp_44_ptr_of_y_60_60
              #                    occupy a2 with temp_67_ele_of_y_60_65_0
              #                    store to temp_67_ele_of_y_60_65_0 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_67_ele_of_y_60_65_0
              #                    occupy a3 with temp_48_ptr_of_j_60_67
              #                    store to temp_48_ptr_of_j_60_67 in mem offset legal
    sd      a3,192(sp)
              #                    release a3 with temp_48_ptr_of_j_60_67
              #                    occupy a4 with temp_68__2184_0
              #                    store to temp_68__2184_0 in mem offset legal
    sb      a4,51(sp)
              #                    release a4 with temp_68__2184_0
              #                    occupy a5 with temp_70_ele_of_j_60_69_0
              #                    store to temp_70_ele_of_j_60_69_0 in mem offset legal
    sw      a5,36(sp)
              #                    release a5 with temp_70_ele_of_j_60_69_0
              #                    occupy a6 with temp_41_array_init_ptr_60
              #                    store to temp_41_array_init_ptr_60 in mem offset legal
    sd      a6,256(sp)
              #                    release a6 with temp_41_array_init_ptr_60
              #                    occupy a7 with temp_50_ele_of_z_60_67_0
              #                    store to temp_50_ele_of_z_60_67_0 in mem offset legal
    sw      a7,180(sp)
              #                    release a7 with temp_50_ele_of_z_60_67_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_53_ele_of_*i_0_71_0_0
              #                    load from temp_53_ele_of_*i_0_71_0 in mem


    lw      a0,156(sp)
              #                    arg load ended


    call    putint
              #                     222  (nop) 
              #                     224  (nop) 
              #                     225  mu j_60_3:224 
              #                     226   Call void putint_0(temp_70_ele_of_j_60_69_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_70_ele_of_j_60_69_0_0
              #                    load from temp_70_ele_of_j_60_69_0 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    putint
              #                     228  (nop) 
              #                     230  temp_57_ele_of_y_60_71_0 = load temp_44_ptr_of_y_60_60:ptr->i32 
              #                    occupy a0 with temp_44_ptr_of_y_60_60
              #                    load from temp_44_ptr_of_y_60_60 in mem
    ld      a0,224(sp)
              #                    occupy a1 with temp_57_ele_of_y_60_71_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     231  mu y_60_3:230 
              #                     232   Call void putint_0(temp_57_ele_of_y_60_71_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_44_ptr_of_y_60_60
              #                    store to temp_44_ptr_of_y_60_60 in mem offset legal
    sd      a0,224(sp)
              #                    release a0 with temp_44_ptr_of_y_60_60
              #                    occupy a1 with temp_57_ele_of_y_60_71_0
              #                    store to temp_57_ele_of_y_60_71_0 in mem offset legal
    sw      a1,132(sp)
              #                    release a1 with temp_57_ele_of_y_60_71_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_57_ele_of_y_60_71_0_0
              #                    load from temp_57_ele_of_y_60_71_0 in mem


    lw      a0,132(sp)
              #                    arg load ended


    call    putint
              #                     234  (nop) 
              #                     236  temp_59_ele_of_z_60_71_0 = load temp_41_array_init_ptr_60:ptr->i32 
              #                    occupy a0 with temp_41_array_init_ptr_60
              #                    load from temp_41_array_init_ptr_60 in mem
    ld      a0,256(sp)
              #                    occupy a1 with temp_59_ele_of_z_60_71_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     237  mu z_60_5:236 
              #                     238   Call void putint_0(temp_59_ele_of_z_60_71_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_41_array_init_ptr_60
              #                    store to temp_41_array_init_ptr_60 in mem offset legal
    sd      a0,256(sp)
              #                    release a0 with temp_41_array_init_ptr_60
              #                    occupy a1 with temp_59_ele_of_z_60_71_0
              #                    store to temp_59_ele_of_z_60_71_0 in mem offset legal
    sw      a1,116(sp)
              #                    release a1 with temp_59_ele_of_z_60_71_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_59_ele_of_z_60_71_0_0
              #                    load from temp_59_ele_of_z_60_71_0 in mem


    lw      a0,116(sp)
              #                    arg load ended


    call    putint
              #                     240  (nop) 
              #                     242  temp_61_ele_ptr_of_y_60_71 = GEP y_60_3:Array:i32:[Some(1_0)] [] 
              #                    occupy a0 with temp_61_ele_ptr_of_y_60_71
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,272
              #                    free a0
              #                     243   Call void add_0(temp_46_ptr_of_z_60_60, temp_61_ele_ptr_of_y_60_71) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_61_ele_ptr_of_y_60_71
              #                    store to temp_61_ele_ptr_of_y_60_71 in mem offset legal
    sd      a0,96(sp)
              #                    release a0 with temp_61_ele_ptr_of_y_60_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_46_ptr_of_z_60_60_0
              #                    load from temp_46_ptr_of_z_60_60 in mem
    ld      a0,208(sp)
              #                    occupy a1 with _anonymous_of_temp_61_ele_ptr_of_y_60_71_0
              #                    load from temp_61_ele_ptr_of_y_60_71 in mem
    ld      a1,96(sp)
              #                    arg load ended


    call    add
              #                     301  mu y_60_3:243 
              #                     302  mu z_60_5:243 
              #                     303  z_60_6 = chi z_60_5:243 
              #                     304  y_60_4 = chi y_60_3:243 
              #                     245  temp_62_ele_ptr_of_j_60_71 = GEP j_60_3:Array:i32:[Some(1_0)] [] 
              #                    occupy a0 with temp_62_ele_ptr_of_j_60_71
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,276
              #                    free a0
              #                     247  temp_63_ele_ptr_of_y_60_71 = GEP y_60_4:Array:i32:[Some(1_0)] [] 
              #                    occupy a1 with temp_63_ele_ptr_of_y_60_71
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,272
              #                    free a1
              #                     248   Call void add_0(temp_62_ele_ptr_of_j_60_71, temp_63_ele_ptr_of_y_60_71) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_62_ele_ptr_of_j_60_71
              #                    store to temp_62_ele_ptr_of_j_60_71 in mem offset legal
    sd      a0,88(sp)
              #                    release a0 with temp_62_ele_ptr_of_j_60_71
              #                    occupy a1 with temp_63_ele_ptr_of_y_60_71
              #                    store to temp_63_ele_ptr_of_y_60_71 in mem offset legal
    sd      a1,80(sp)
              #                    release a1 with temp_63_ele_ptr_of_y_60_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_62_ele_ptr_of_j_60_71_0
              #                    load from temp_62_ele_ptr_of_j_60_71 in mem
    ld      a0,88(sp)
              #                    occupy a1 with _anonymous_of_temp_63_ele_ptr_of_y_60_71_0
              #                    load from temp_63_ele_ptr_of_y_60_71 in mem
    ld      a1,80(sp)
              #                    arg load ended


    call    add
              #                     305  mu y_60_4:248 
              #                     306  mu j_60_3:248 
              #                     307  y_60_5 = chi y_60_4:248 
              #                     308  j_60_4 = chi j_60_3:248 
              #                     250  (nop) 
              #                     252  temp_65_ele_ptr_of_y_60_71 = GEP y_60_5:Array:i32:[Some(1_0)] [] 
              #                    occupy a0 with temp_65_ele_ptr_of_y_60_71
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,272
              #                    free a0
              #                     253   Call void sub_0(temp_46_ptr_of_z_60_60, temp_65_ele_ptr_of_y_60_71) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_65_ele_ptr_of_y_60_71
              #                    store to temp_65_ele_ptr_of_y_60_71 in mem offset legal
    sd      a0,64(sp)
              #                    release a0 with temp_65_ele_ptr_of_y_60_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_46_ptr_of_z_60_60_0
              #                    load from temp_46_ptr_of_z_60_60 in mem
    ld      a0,208(sp)
              #                    occupy a1 with _anonymous_of_temp_65_ele_ptr_of_y_60_71_0
              #                    load from temp_65_ele_ptr_of_y_60_71 in mem
    ld      a1,64(sp)
              #                    arg load ended


    call    sub
              #                     309  mu y_60_5:253 
              #                     310  mu z_60_6:253 
              #                     311  z_60_7 = chi z_60_6:253 
              #                     312  y_60_6 = chi y_60_5:253 
              #                          jump label: while.head_70 
              #                    occupy a7 with temp_50_ele_of_z_60_67_0
              #                    load from temp_50_ele_of_z_60_67_0 in mem


    lw      a7,180(sp)
              #                    occupy a6 with temp_41_array_init_ptr_60
              #                    load from temp_41_array_init_ptr_60 in mem
    ld      a6,256(sp)
              #                    occupy a2 with temp_67_ele_of_y_60_65_0
              #                    load from temp_67_ele_of_y_60_65_0 in mem


    lw      a2,52(sp)
              #                    occupy a0 with temp_47_ret_of_getarray_60_0
              #                    load from temp_47_ret_of_getarray_60_0 in mem


    lw      a0,204(sp)
              #                    occupy a4 with temp_68__2184_0
              #                    load from temp_68__2184_0 in mem


    lb      a4,51(sp)
              #                    occupy a3 with temp_48_ptr_of_j_60_67
              #                    load from temp_48_ptr_of_j_60_67 in mem
    ld      a3,192(sp)
              #                    occupy a1 with temp_44_ptr_of_y_60_60
              #                    load from temp_44_ptr_of_y_60_60 in mem
    ld      a1,224(sp)
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_47_ret_of_getarray_60_0, tracked: true } |     a1:Freed { symidx: temp_44_ptr_of_y_60_60, tracked: true } |     a2:Freed { symidx: temp_67_ele_of_y_60_65_0, tracked: true } |     a3:Freed { symidx: temp_48_ptr_of_j_60_67, tracked: true } |     a4:Freed { symidx: temp_68__2184_0, tracked: true } |     a5:Freed { symidx: temp_70_ele_of_j_60_69_0, tracked: true } |     a6:Freed { symidx: temp_41_array_init_ptr_60, tracked: true } |     a7:Freed { symidx: temp_50_ele_of_z_60_67_0, tracked: true } |     s2:Freed { symidx: temp_71_cmp_69_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     276  label while.exit_70: 
.while.exit_70:
              #                     211   Call void inc_0(*i_0) 
              #                    saved register dumping to mem
              #                    occupy s2 with temp_71_cmp_69_0
              #                    store to temp_71_cmp_69_0 in mem offset legal
    sb      s2,35(sp)
              #                    release s2 with temp_71_cmp_69_0
              #                    occupy a0 with temp_47_ret_of_getarray_60_0
              #                    store to temp_47_ret_of_getarray_60_0 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with temp_47_ret_of_getarray_60_0
              #                    occupy a1 with temp_44_ptr_of_y_60_60
              #                    store to temp_44_ptr_of_y_60_60 in mem offset legal
    sd      a1,224(sp)
              #                    release a1 with temp_44_ptr_of_y_60_60
              #                    occupy a2 with temp_67_ele_of_y_60_65_0
              #                    store to temp_67_ele_of_y_60_65_0 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_67_ele_of_y_60_65_0
              #                    occupy a3 with temp_48_ptr_of_j_60_67
              #                    store to temp_48_ptr_of_j_60_67 in mem offset legal
    sd      a3,192(sp)
              #                    release a3 with temp_48_ptr_of_j_60_67
              #                    occupy a4 with temp_68__2184_0
              #                    store to temp_68__2184_0 in mem offset legal
    sb      a4,51(sp)
              #                    release a4 with temp_68__2184_0
              #                    occupy a5 with temp_70_ele_of_j_60_69_0
              #                    store to temp_70_ele_of_j_60_69_0 in mem offset legal
    sw      a5,36(sp)
              #                    release a5 with temp_70_ele_of_j_60_69_0
              #                    occupy a6 with temp_41_array_init_ptr_60
              #                    store to temp_41_array_init_ptr_60 in mem offset legal
    sd      a6,256(sp)
              #                    release a6 with temp_41_array_init_ptr_60
              #                    occupy a7 with temp_50_ele_of_z_60_67_0
              #                    store to temp_50_ele_of_z_60_67_0 in mem offset legal
    sw      a7,180(sp)
              #                    release a7 with temp_50_ele_of_z_60_67_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*i_0_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    arg load ended


    call    inc
              #                     313  mu i_0_1:211 
              #                     314  i_0_2 = chi i_0_1:211 
              #                     213  (nop) 
              #                     214   Call void add_0(*i_0, temp_46_ptr_of_z_60_60) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*i_0_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy a1 with _anonymous_of_temp_46_ptr_of_z_60_60_0
              #                    load from temp_46_ptr_of_z_60_60 in mem
    ld      a1,208(sp)
              #                    arg load ended


    call    add
              #                     315  mu z_60_5:214 
              #                     316  mu i_0_2:214 
              #                     317  z_60_8 = chi z_60_5:214 
              #                     318  i_0_3 = chi i_0_2:214 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:16,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     279  temp_72_ptr_of_z_60_81 = GEP z_60_8:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_72_ptr_of_z_60_81
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,248
              #                    free a0
              #                     281  temp_73_ele_of_z_60_81_0 = load temp_72_ptr_of_z_60_81:ptr->i32 
              #                    occupy a0 with temp_72_ptr_of_z_60_81
              #                    occupy a3 with temp_73_ele_of_z_60_81_0
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     282  mu z_60_8:281 
              #                     284  temp_74_ptr_of_*i_0_81 = GEP *i_0:Array:i32:[None] [Some(0_0)] 
              #                    occupy a4 with temp_74_ptr_of_*i_0_81
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *i_0
              #                       load label i as ptr to reg
    la      a6, i
              #                    occupy reg a6 with *i_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     286  temp_75_ele_of_*i_0_81_0 = load temp_74_ptr_of_*i_0_81:ptr->i32 
              #                    occupy a4 with temp_74_ptr_of_*i_0_81
              #                    occupy a7 with temp_75_ele_of_*i_0_81_0
    lw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                     287  mu i_0_3:286 
              #                     289  temp_76_cmp_81_0 = icmp i32 Eq temp_75_ele_of_*i_0_81_0, temp_73_ele_of_z_60_81_0 
              #                    occupy a7 with temp_75_ele_of_*i_0_81_0
              #                    occupy a3 with temp_73_ele_of_z_60_81_0
              #                    occupy s1 with temp_76_cmp_81_0
    xor     s1,a7,a3
    seqz    s1, s1
              #                    free a7
              #                    free a3
              #                    free s1
              #                     292  br i1 temp_76_cmp_81_0, label branch_true_82, label branch_false_82 
              #                    occupy s1 with temp_76_cmp_81_0
              #                    free s1
              #                    occupy s1 with temp_76_cmp_81_0
    bnez    s1, .branch_true_82
              #                    free s1
    j       .branch_false_82
              #                    regtab     a0:Freed { symidx: temp_72_ptr_of_z_60_81, tracked: true } |     a3:Freed { symidx: temp_73_ele_of_z_60_81_0, tracked: true } |     a4:Freed { symidx: temp_74_ptr_of_*i_0_81, tracked: true } |     a7:Freed { symidx: temp_75_ele_of_*i_0_81_0, tracked: true } |     s1:Freed { symidx: temp_76_cmp_81_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     290  label branch_true_82: 
.branch_true_82:
              #                     429  untrack temp_67_ele_of_y_60_65_0 
              #                     428  untrack temp_68__2184_0 
              #                     427  untrack temp_73_ele_of_z_60_81_0 
              #                    occupy a3 with temp_73_ele_of_z_60_81_0
              #                    release a3 with temp_73_ele_of_z_60_81_0
              #                     426  untrack temp_50_ele_of_z_60_67_0 
              #                     425  untrack temp_48_ptr_of_j_60_67 
              #                     424  untrack temp_72_ptr_of_z_60_81 
              #                    occupy a0 with temp_72_ptr_of_z_60_81
              #                    release a0 with temp_72_ptr_of_z_60_81
              #                     423  untrack temp_76_cmp_81_0 
              #                    occupy s1 with temp_76_cmp_81_0
              #                    release s1 with temp_76_cmp_81_0
              #                     422  untrack temp_74_ptr_of_*i_0_81 
              #                    occupy a4 with temp_74_ptr_of_*i_0_81
              #                    release a4 with temp_74_ptr_of_*i_0_81
              #                     421  untrack temp_75_ele_of_*i_0_81_0 
              #                    occupy a7 with temp_75_ele_of_*i_0_81_0
              #                    release a7 with temp_75_ele_of_*i_0_81_0
              #                          jump label: while.exit_66 
              #                    occupy a2 with temp_67_ele_of_y_60_65_0
              #                    load from temp_67_ele_of_y_60_65_0 in mem


    lw      a2,52(sp)
              #                    occupy a0 with temp_47_ret_of_getarray_60_0
              #                    load from temp_47_ret_of_getarray_60_0 in mem


    lw      a0,204(sp)
              #                    occupy a4 with temp_68__2184_0
              #                    load from temp_68__2184_0 in mem


    lb      a4,51(sp)
              #                    occupy a1 with temp_44_ptr_of_y_60_60
              #                    load from temp_44_ptr_of_y_60_60 in mem
    ld      a1,224(sp)
    j       .while.exit_66
              #                    regtab     a0:Freed { symidx: temp_47_ret_of_getarray_60_0, tracked: true } |     a1:Freed { symidx: temp_44_ptr_of_y_60_60, tracked: true } |     a2:Freed { symidx: temp_67_ele_of_y_60_65_0, tracked: true } |     a4:Freed { symidx: temp_68__2184_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     263  label while.exit_66: 
.while.exit_66:
              #                     420  untrack temp_44_ptr_of_y_60_60 
              #                    occupy a1 with temp_44_ptr_of_y_60_60
              #                    release a1 with temp_44_ptr_of_y_60_60
              #                     419  untrack temp_41_array_init_ptr_60 
              #                     418  untrack temp_46_ptr_of_z_60_60 
              #                     199   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_47_ret_of_getarray_60_0
              #                    store to temp_47_ret_of_getarray_60_0 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with temp_47_ret_of_getarray_60_0
              #                    occupy a2 with temp_67_ele_of_y_60_65_0
              #                    store to temp_67_ele_of_y_60_65_0 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_67_ele_of_y_60_65_0
              #                    occupy a4 with temp_68__2184_0
              #                    store to temp_68__2184_0 in mem offset legal
    sb      a4,51(sp)
              #                    release a4 with temp_68__2184_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     319  mu k_0_2:201 
              #                     201  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,288(sp)
              #                    load from s0_main_0 in mem
    ld      s0,280(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,296
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_72_ptr_of_z_60_81, tracked: true } |     a3:Freed { symidx: temp_73_ele_of_z_60_81_0, tracked: true } |     a4:Freed { symidx: temp_74_ptr_of_*i_0_81, tracked: true } |     a7:Freed { symidx: temp_75_ele_of_*i_0_81_0, tracked: true } |     s1:Freed { symidx: temp_76_cmp_81_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     291  label branch_false_82: 
.branch_false_82:
              #                          jump label: while.head_66 
              #                    occupy a7 with temp_75_ele_of_*i_0_81_0
              #                    store to temp_75_ele_of_*i_0_81_0 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_75_ele_of_*i_0_81_0
              #                    occupy a0 with temp_72_ptr_of_z_60_81
              #                    store to temp_72_ptr_of_z_60_81 in mem offset legal
    sd      a0,24(sp)
              #                    release a0 with temp_72_ptr_of_z_60_81
              #                    occupy a0 with temp_47_ret_of_getarray_60_0
              #                    load from temp_47_ret_of_getarray_60_0 in mem


    lw      a0,204(sp)
              #                    occupy a4 with temp_74_ptr_of_*i_0_81
              #                    store to temp_74_ptr_of_*i_0_81 in mem offset legal
    sd      a4,8(sp)
              #                    release a4 with temp_74_ptr_of_*i_0_81
              #                    occupy s1 with temp_76_cmp_81_0
              #                    store to temp_76_cmp_81_0 in mem offset legal
    sb      s1,3(sp)
              #                    release s1 with temp_76_cmp_81_0
              #                    occupy a3 with temp_73_ele_of_z_60_81_0
              #                    store to temp_73_ele_of_z_60_81_0 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_73_ele_of_z_60_81_0
    j       .while.head_66
.section ___var
    .data
    .align 4
    .globl k
              #                     18   global Array:i32:[Some(1_0)] k_0 
    .type k,@object
k:
    .zero 4
    .align 4
    .globl i
              #                     16   global Array:i32:[Some(1_0)] i_0 
    .type i,@object
i:
    .zero 4
