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
              #                     18   Define get_next_0 "str_16,next_16," -> get_next_ret_0 
    .globl get_next
    .type get_next,@function
get_next:
              #                    mem layout:|ra_get_next:8 at 176|s0_get_next:8 at 168|str:8 at 160|str:8 at 152|next:8 at 144|next:8 at 136|next:8 at 128|next:8 at 120|next:8 at 112|next _s16 _i5:8 at 104|temp_0_ptr_of_next_16:8 at 96|i _s18 _i1:4 at 92|i _s18 _i3:4 at 88|j _s18 _i1:4 at 84|j _s18 _i3:4 at 80|temp_1_ptr_of_next_16:8 at 72|temp_2_ele_of_next_16 _s24 _i0:4 at 68|temp_3_arithop _s26 _i0:4 at 64|temp_4_arithop _s26 _i0:4 at 60|none:4 at 56|temp_5_ptr_of_next_16:8 at 48|temp_6_ptr_of_str_16:8 at 40|temp_7_ele_of_str_16 _s21 _i0:4 at 36|temp_8_ _s548 _i0:1 at 35|temp_9_cmp _s24 _i0:1 at 34|none:2 at 32|temp_10_ptr_of_str_16:8 at 24|temp_11_ele_of_str_16 _s24 _i0:4 at 20|none:4 at 16|temp_12_ptr_of_str_16:8 at 8|temp_14_cmp _s24 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-184
              #                    store to ra_get_next_0 in mem offset legal
    sd      ra,176(sp)
              #                    store to s0_get_next_0 in mem offset legal
    sd      s0,168(sp)
    addi    s0,sp,184
              #                     25   alloc ptr->i32 [temp_0_ptr_of_next_16_18] 
              #                     30   alloc i32 [i_18] 
              #                     32   alloc i32 [j_18] 
              #                     33   alloc ptr->i32 [temp_1_ptr_of_next_16_24] 
              #                     35   alloc i32 [temp_2_ele_of_next_16_24] 
              #                     39   alloc i32 [temp_3_arithop_26] 
              #                     42   alloc i32 [temp_4_arithop_26] 
              #                     45   alloc ptr->i32 [temp_5_ptr_of_next_16_26] 
              #                     49   alloc ptr->i32 [temp_6_ptr_of_str_16_21] 
              #                     51   alloc i32 [temp_7_ele_of_str_16_21] 
              #                     54   alloc i1 [temp_8__548] 
              #                     61   alloc i1 [temp_9_cmp_24] 
              #                     63   alloc ptr->i32 [temp_10_ptr_of_str_16_24] 
              #                     65   alloc i32 [temp_11_ele_of_str_16_24] 
              #                     68   alloc ptr->i32 [temp_12_ptr_of_str_16_24] 
              #                     70   alloc i32 [temp_13_ele_of_str_16_24] 
              #                     73   alloc i1 [temp_14_cmp_24] 
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     16    
              #                     17    
              #                     26   temp_0_ptr_of_next_16_18 = GEP next_16:ptr->i32 [Some(0_0)] 
              #                    occupy a2 with temp_0_ptr_of_next_16_18
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a1 with next_16
    add     a2,a2,a1
              #                    free a1
              #                    free a2
              #                     27   store -1_0:i32 temp_0_ptr_of_next_16_18:ptr->i32 
              #                    occupy a2 with temp_0_ptr_of_next_16_18
              #                    occupy a4 with -1_0
    li      a4, -1
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     268  untrack temp_0_ptr_of_next_16_18 
              #                    occupy a2 with temp_0_ptr_of_next_16_18
              #                    release a2 with temp_0_ptr_of_next_16_18
              #                     28   next_16 = chi next_16:27 
              #                     29   (nop) 
              #                     31   (nop) 
              #                     245  i_18_1 = i32 0_0 
              #                    occupy a2 with i_18_1
    li      a2, 0
              #                    free a2
              #                     246  j_18_1 = i32 -1_0 
              #                    occupy a5 with j_18_1
    li      a5, -1
              #                    free a5
              #                          jump label: while.head_22 
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: i_18_1, tracked: true } |     a5:Freed { symidx: j_18_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     56   label while.head_22: 
.while.head_22:
              #                     50   temp_6_ptr_of_str_16_21 = GEP str_16:Array:i32:[None] [Some(i_18_1)] 
              #                    occupy a3 with temp_6_ptr_of_str_16_21
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_18_1
    mv      a4, a2
              #                    free a2
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a0 with str_16
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     52   temp_7_ele_of_str_16_21_0 = load temp_6_ptr_of_str_16_21:ptr->i32 
              #                    occupy a3 with temp_6_ptr_of_str_16_21
              #                    occupy a6 with temp_7_ele_of_str_16_21_0
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     53   mu str_16:52 
              #                     55   temp_8__548_0 = icmp i32 Ne temp_7_ele_of_str_16_21_0, 0_0 
              #                    occupy a6 with temp_7_ele_of_str_16_21_0
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s1 with temp_8__548_0
    xor     s1,a6,a7
    snez    s1, s1
              #                    free a6
              #                    free a7
              #                    free s1
              #                     59   br i1 temp_8__548_0, label while.body_22, label while.exit_22 
              #                    occupy s1 with temp_8__548_0
              #                    free s1
              #                    occupy s1 with temp_8__548_0
    bnez    s1, .while.body_22
              #                    free s1
    j       .while.exit_22
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: i_18_1, tracked: true } |     a3:Freed { symidx: temp_6_ptr_of_str_16_21, tracked: true } |     a5:Freed { symidx: j_18_1, tracked: true } |     a6:Freed { symidx: temp_7_ele_of_str_16_21_0, tracked: true } |     s1:Freed { symidx: temp_8__548_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     57   label while.body_22: 
.while.body_22:
              #                     62   temp_9_cmp_24_0 = icmp i32 Eq j_18_1, -1_0 
              #                    occupy a5 with j_18_1
              #                    occupy a4 with -1_0
    li      a4, -1
              #                    occupy a7 with temp_9_cmp_24_0
    xor     a7,a5,a4
    seqz    a7, a7
              #                    free a5
              #                    free a4
              #                    free a7
              #                     80   br i1 temp_9_cmp_24_0, label branch_short_circuit_c_true_154, label branch_short_circuit_p_false_154 
              #                    occupy a7 with temp_9_cmp_24_0
              #                    free a7
              #                    occupy a7 with temp_9_cmp_24_0
    bnez    a7, .branch_short_circuit_c_true_154
              #                    free a7
    j       .branch_short_circuit_p_false_154
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: i_18_1, tracked: true } |     a3:Freed { symidx: temp_6_ptr_of_str_16_21, tracked: true } |     a5:Freed { symidx: j_18_1, tracked: true } |     a6:Freed { symidx: temp_7_ele_of_str_16_21_0, tracked: true } |     a7:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     s1:Freed { symidx: temp_8__548_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     75   label branch_short_circuit_c_true_154: 
.branch_short_circuit_c_true_154:
              #                     40   temp_3_arithop_26_0 = Add i32 j_18_1, 1_0 
              #                    occupy a5 with j_18_1
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s2 with temp_3_arithop_26_0
    ADDW    s2,a5,a4
              #                    free a5
              #                    occupy a5 with j_18_1
              #                    store to j_18_1 in mem offset legal
    sw      a5,84(sp)
              #                    release a5 with j_18_1
              #                    free a4
              #                    free s2
              #                     41   (nop) 
              #                     43   temp_4_arithop_26_0 = Add i32 i_18_1, 1_0 
              #                    occupy a2 with i_18_1
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a5 with temp_4_arithop_26_0
    ADDW    a5,a2,a4
              #                    free a2
              #                    occupy a2 with i_18_1
              #                    store to i_18_1 in mem offset legal
    sw      a2,92(sp)
              #                    release a2 with i_18_1
              #                    free a4
              #                    free a5
              #                     44   (nop) 
              #                     46   temp_5_ptr_of_next_16_26 = GEP next_16:ptr->i32 [Some(temp_4_arithop_26_0)] 
              #                    occupy a2 with temp_5_ptr_of_next_16_26
    li      a2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_4_arithop_26_0
    mv      s3, a5
              #                    free a5
              #                    occupy a5 with temp_4_arithop_26_0
              #                    store to temp_4_arithop_26_0 in mem offset legal
    sw      a5,60(sp)
              #                    release a5 with temp_4_arithop_26_0
    add     a2,a2,s3
              #                    free s3
    slli a2,a2,2
              #                    occupy a1 with next_16
    add     a2,a2,a1
              #                    free a1
              #                    free a2
              #                     47   store temp_3_arithop_26_0:i32 temp_5_ptr_of_next_16_26:ptr->i32 
              #                    occupy a2 with temp_5_ptr_of_next_16_26
              #                    occupy s2 with temp_3_arithop_26_0
    sw      s2,0(a2)
              #                    free s2
              #                    free a2
              #                     48   next_16 = chi next_16:47 
              #                     247  i_18_3 = i32 temp_4_arithop_26_0 
              #                    occupy a5 with temp_4_arithop_26_0
              #                    load from temp_4_arithop_26_0 in mem


    lw      a5,60(sp)
              #                    occupy s3 with i_18_3
    mv      s3, a5
              #                    free a5
              #                    occupy a5 with temp_4_arithop_26_0
              #                    store to temp_4_arithop_26_0 in mem offset legal
    sw      a5,60(sp)
              #                    release a5 with temp_4_arithop_26_0
              #                    free s3
              #                    occupy s3 with i_18_3
              #                    store to i_18_3 in mem offset legal
    sw      s3,88(sp)
              #                    release s3 with i_18_3
              #                     248  j_18_3 = i32 temp_3_arithop_26_0 
              #                    occupy s2 with temp_3_arithop_26_0
              #                    occupy a5 with j_18_3
    mv      a5, s2
              #                    free s2
              #                    occupy s2 with temp_3_arithop_26_0
              #                    store to temp_3_arithop_26_0 in mem offset legal
    sw      s2,64(sp)
              #                    release s2 with temp_3_arithop_26_0
              #                    free a5
              #                          jump label: gather_7 
    j       .gather_7
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: temp_5_ptr_of_next_16_26, tracked: true } |     a3:Freed { symidx: temp_6_ptr_of_str_16_21, tracked: true } |     a5:Freed { symidx: j_18_3, tracked: true } |     a6:Freed { symidx: temp_7_ele_of_str_16_21_0, tracked: true } |     a7:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     s1:Freed { symidx: temp_8__548_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     81   label gather_7: 
.gather_7:
              #                     249  j_18_1 = i32 j_18_3 
              #                    occupy a5 with j_18_3
              #                    occupy a4 with j_18_1
    mv      a4, a5
              #                    free a5
              #                    occupy a5 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      a5,80(sp)
              #                    release a5 with j_18_3
              #                    free a4
              #                     250  i_18_1 = i32 i_18_3 
              #                    occupy a5 with i_18_3
              #                    load from i_18_3 in mem


    lw      a5,88(sp)
              #                    occupy s2 with i_18_1
    mv      s2, a5
              #                    free a5
              #                    occupy a5 with i_18_3
              #                    store to i_18_3 in mem offset legal
    sw      a5,88(sp)
              #                    release a5 with i_18_3
              #                    free s2
              #                    occupy s2 with i_18_1
              #                    store to i_18_1 in mem offset legal
    sw      s2,92(sp)
              #                    release s2 with i_18_1
              #                          jump label: while.head_22 
              #                    occupy a6 with temp_7_ele_of_str_16_21_0
              #                    store to temp_7_ele_of_str_16_21_0 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with temp_7_ele_of_str_16_21_0
              #                    occupy s1 with temp_8__548_0
              #                    store to temp_8__548_0 in mem offset legal
    sb      s1,35(sp)
              #                    release s1 with temp_8__548_0
              #                    occupy a4 with j_18_1
              #                    store to j_18_1 in mem offset legal
    sw      a4,84(sp)
              #                    release a4 with j_18_1
              #                    occupy a5 with j_18_1
              #                    load from j_18_1 in mem


    lw      a5,84(sp)
              #                    occupy a2 with temp_5_ptr_of_next_16_26
              #                    store to temp_5_ptr_of_next_16_26 in mem offset legal
    sd      a2,48(sp)
              #                    release a2 with temp_5_ptr_of_next_16_26
              #                    occupy a2 with i_18_1
              #                    load from i_18_1 in mem


    lw      a2,92(sp)
              #                    occupy a3 with temp_6_ptr_of_str_16_21
              #                    store to temp_6_ptr_of_str_16_21 in mem offset legal
    sd      a3,40(sp)
              #                    release a3 with temp_6_ptr_of_str_16_21
              #                    occupy a7 with temp_9_cmp_24_0
              #                    store to temp_9_cmp_24_0 in mem offset legal
    sb      a7,34(sp)
              #                    release a7 with temp_9_cmp_24_0
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: i_18_1, tracked: true } |     a3:Freed { symidx: temp_6_ptr_of_str_16_21, tracked: true } |     a5:Freed { symidx: j_18_1, tracked: true } |     a6:Freed { symidx: temp_7_ele_of_str_16_21_0, tracked: true } |     a7:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     s1:Freed { symidx: temp_8__548_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     77   label branch_short_circuit_p_false_154: 
.branch_short_circuit_p_false_154:
              #                     64   temp_10_ptr_of_str_16_24 = GEP str_16:Array:i32:[None] [Some(j_18_1)] 
              #                    occupy a4 with temp_10_ptr_of_str_16_24
    li      a4, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with j_18_1
    mv      s2, a5
              #                    free a5
              #                    occupy a5 with j_18_1
              #                    store to j_18_1 in mem offset legal
    sw      a5,84(sp)
              #                    release a5 with j_18_1
    add     a4,a4,s2
              #                    free s2
    slli a4,a4,2
              #                    occupy a0 with str_16
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                     66   temp_11_ele_of_str_16_24_0 = load temp_10_ptr_of_str_16_24:ptr->i32 
              #                    occupy a4 with temp_10_ptr_of_str_16_24
              #                    occupy a5 with temp_11_ele_of_str_16_24_0
    lw      a5,0(a4)
              #                    free a5
              #                    occupy a5 with temp_11_ele_of_str_16_24_0
              #                    store to temp_11_ele_of_str_16_24_0 in mem offset legal
    sw      a5,20(sp)
              #                    release a5 with temp_11_ele_of_str_16_24_0
              #                    free a4
              #                     67   mu str_16:66 
              #                     69   (nop) 
              #                     71   (nop) 
              #                     72   mu str_16:71 
              #                     74   temp_14_cmp_24_0 = icmp i32 Eq temp_7_ele_of_str_16_21_0, temp_11_ele_of_str_16_24_0 
              #                    occupy a6 with temp_7_ele_of_str_16_21_0
              #                    occupy a5 with temp_11_ele_of_str_16_24_0
              #                    load from temp_11_ele_of_str_16_24_0 in mem


    lw      a5,20(sp)
              #                    occupy s3 with temp_14_cmp_24_0
    xor     s3,a6,a5
    seqz    s3, s3
              #                    free a6
              #                    occupy a6 with temp_7_ele_of_str_16_21_0
              #                    store to temp_7_ele_of_str_16_21_0 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with temp_7_ele_of_str_16_21_0
              #                    free a5
              #                    occupy a5 with temp_11_ele_of_str_16_24_0
              #                    store to temp_11_ele_of_str_16_24_0 in mem offset legal
    sw      a5,20(sp)
              #                    release a5 with temp_11_ele_of_str_16_24_0
              #                    free s3
              #                     79   br i1 temp_14_cmp_24_0, label branch_short_circuit_c_true_154, label branch_short_circuit_c_false_154 
              #                    occupy s3 with temp_14_cmp_24_0
              #                    free s3
              #                    occupy a6 with temp_7_ele_of_str_16_21_0
              #                    load from temp_7_ele_of_str_16_21_0 in mem


    lw      a6,36(sp)
              #                    occupy s3 with temp_14_cmp_24_0
              #                    store to temp_14_cmp_24_0 in mem offset legal
    sb      s3,7(sp)
              #                    release s3 with temp_14_cmp_24_0
              #                    occupy a5 with j_18_1
              #                    load from j_18_1 in mem


    lw      a5,84(sp)
              #                    occupy a4 with temp_10_ptr_of_str_16_24
              #                    store to temp_10_ptr_of_str_16_24 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_10_ptr_of_str_16_24
              #                    occupy a4 with temp_14_cmp_24_0
              #                    load from temp_14_cmp_24_0 in mem


    lb      a4,7(sp)
    bnez    a4, .branch_short_circuit_c_true_154
              #                    free a4
    j       .branch_short_circuit_c_false_154
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: i_18_1, tracked: true } |     a3:Freed { symidx: temp_6_ptr_of_str_16_21, tracked: true } |     a4:Freed { symidx: temp_14_cmp_24_0, tracked: true } |     a5:Freed { symidx: j_18_1, tracked: true } |     a6:Freed { symidx: temp_7_ele_of_str_16_21_0, tracked: true } |     a7:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     s1:Freed { symidx: temp_8__548_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     76   label branch_short_circuit_c_false_154: 
.branch_short_circuit_c_false_154:
              #                     34   temp_1_ptr_of_next_16_24 = GEP next_16:Array:i32:[None] [Some(j_18_1)] 
              #                    occupy s2 with temp_1_ptr_of_next_16_24
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with j_18_1
    mv      s3, a5
              #                    free a5
              #                    occupy a5 with j_18_1
              #                    store to j_18_1 in mem offset legal
    sw      a5,84(sp)
              #                    release a5 with j_18_1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy a1 with next_16
    add     s2,s2,a1
              #                    free a1
              #                    free s2
              #                     36   temp_2_ele_of_next_16_24_0 = load temp_1_ptr_of_next_16_24:ptr->i32 
              #                    occupy s2 with temp_1_ptr_of_next_16_24
              #                    occupy a5 with temp_2_ele_of_next_16_24_0
    lw      a5,0(s2)
              #                    free a5
              #                    occupy a5 with temp_2_ele_of_next_16_24_0
              #                    store to temp_2_ele_of_next_16_24_0 in mem offset legal
    sw      a5,68(sp)
              #                    release a5 with temp_2_ele_of_next_16_24_0
              #                    free s2
              #                     37   mu next_16:36 
              #                     38   (nop) 
              #                     251  j_18_3 = i32 temp_2_ele_of_next_16_24_0 
              #                    occupy a5 with temp_2_ele_of_next_16_24_0
              #                    load from temp_2_ele_of_next_16_24_0 in mem


    lw      a5,68(sp)
              #                    occupy s3 with j_18_3
    mv      s3, a5
              #                    free a5
              #                    occupy a5 with temp_2_ele_of_next_16_24_0
              #                    store to temp_2_ele_of_next_16_24_0 in mem offset legal
    sw      a5,68(sp)
              #                    release a5 with temp_2_ele_of_next_16_24_0
              #                    free s3
              #                    occupy s3 with j_18_3
              #                    store to j_18_3 in mem offset legal
    sw      s3,80(sp)
              #                    release s3 with j_18_3
              #                     252  i_18_3 = i32 i_18_1 
              #                    occupy a2 with i_18_1
              #                    occupy a5 with i_18_3
    mv      a5, a2
              #                    free a2
              #                    occupy a2 with i_18_1
              #                    store to i_18_1 in mem offset legal
    sw      a2,92(sp)
              #                    release a2 with i_18_1
              #                    free a5
              #                          jump label: gather_7 
              #                    occupy s2 with temp_1_ptr_of_next_16_24
              #                    store to temp_1_ptr_of_next_16_24 in mem offset legal
    sd      s2,72(sp)
              #                    release s2 with temp_1_ptr_of_next_16_24
              #                    occupy a5 with i_18_3
              #                    store to i_18_3 in mem offset legal
    sw      a5,88(sp)
              #                    release a5 with i_18_3
              #                    occupy a5 with j_18_3
              #                    load from j_18_3 in mem


    lw      a5,80(sp)
              #                    occupy a2 with temp_5_ptr_of_next_16_26
              #                    load from temp_5_ptr_of_next_16_26 in mem
    ld      a2,48(sp)
              #                    occupy a4 with temp_14_cmp_24_0
              #                    store to temp_14_cmp_24_0 in mem offset legal
    sb      a4,7(sp)
              #                    release a4 with temp_14_cmp_24_0
    j       .gather_7
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: i_18_1, tracked: true } |     a3:Freed { symidx: temp_6_ptr_of_str_16_21, tracked: true } |     a5:Freed { symidx: j_18_1, tracked: true } |     a6:Freed { symidx: temp_7_ele_of_str_16_21_0, tracked: true } |     s1:Freed { symidx: temp_8__548_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     58   label while.exit_22: 
.while.exit_22:
              #                     271  untrack str_16 
              #                    occupy a0 with str_16
              #                    release a0 with str_16
              #                     270  untrack i_18_1 
              #                    occupy a2 with i_18_1
              #                    release a2 with i_18_1
              #                     269  untrack j_18_1 
              #                    occupy a5 with j_18_1
              #                    release a5 with j_18_1
              #                     218  mu next_16:60 
              #                     272  untrack next_16 
              #                    occupy a1 with next_16
              #                    release a1 with next_16
              #                     60   ret 
              #                    load from ra_get_next_0 in mem
    ld      ra,176(sp)
              #                    load from s0_get_next_0 in mem
    ld      s0,168(sp)
    addi    sp,sp,184
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     21   Define KMP_0 "dst_31,src_31," -> KMP_ret_0 
    .globl KMP
    .type KMP,@function
KMP:
              #                    mem layout:|ra_KMP:8 at 16544|s0_KMP:8 at 16536|dst:8 at 16528|dst:8 at 16520|src:8 at 16512|src:8 at 16504|next:16384 at 120|temp_15_ele_ptr_of_next_33:8 at 112|i _s33 _i1:4 at 108|i _s33 _i3:4 at 104|i _s33 _i6:4 at 100|j _s33 _i1:4 at 96|j _s33 _i3:4 at 92|j _s33 _i5:4 at 88|temp_16_ptr_of_next_33:8 at 80|temp_17_ele_of_next_33 _s49 _i0:4 at 76|temp_18_arithop _s53 _i0:4 at 72|temp_19_arithop _s53 _i0:4 at 68|temp_20_arithop _s42 _i0:4 at 64|temp_21_arithop _s42 _i0:4 at 60|none:4 at 56|temp_22_ptr_of_src_31:8 at 48|temp_23_ele_of_src_31 _s37 _i0:4 at 44|temp_24_ _s1071 _i0:1 at 43|none:3 at 40|temp_25_ptr_of_src_31:8 at 32|temp_27_ptr_of_dst_31:8 at 24|temp_28_ele_of_dst_31 _s40 _i0:4 at 20|temp_29_cmp _s40 _i0:1 at 19|temp_30_cmp _s51 _i0:1 at 18|none:2 at 16|temp_31_ptr_of_dst_31:8 at 8|temp_32_ele_of_dst_31 _s45 _i0:4 at 4|temp_33_booltrans _s45 _i0:1 at 3|temp_34_logicnot _s45 _i0:1 at 2|none:2 at 0
              #                    occupy a2 with -16552_0
    li      a2, -16552
    li      a2, -16552
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_KMP_0 in mem offset_illegal
              #                    occupy a3 with _anonymous_of_16544_0_0
    li      a3, 16544
    li      a3, 16544
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_KMP_0 in mem offset_illegal
              #                    occupy a4 with _anonymous_of_16536_0_0
    li      a4, 16536
    li      a4, 16536
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 16552_0
    li      a5, 16552
    li      a5, 16552
    add     s0,a5,sp
              #                    free a5
              #                     83   alloc Array:i32:[Some(4096_0)] [next_33] 
              #                     84   alloc ptr->i32 [temp_15_ele_ptr_of_next_33_33] 
              #                     88   alloc i32 [i_33] 
              #                     90   alloc i32 [j_33] 
              #                     93   alloc ptr->i32 [temp_16_ptr_of_next_33_49] 
              #                     95   alloc i32 [temp_17_ele_of_next_33_49] 
              #                     99   alloc i32 [temp_18_arithop_53] 
              #                     102  alloc i32 [temp_19_arithop_53] 
              #                     105  alloc i32 [temp_20_arithop_42] 
              #                     108  alloc i32 [temp_21_arithop_42] 
              #                     113  alloc ptr->i32 [temp_22_ptr_of_src_31_37] 
              #                     115  alloc i32 [temp_23_ele_of_src_31_37] 
              #                     118  alloc i1 [temp_24__1071] 
              #                     126  alloc ptr->i32 [temp_25_ptr_of_src_31_40] 
              #                     128  alloc i32 [temp_26_ele_of_src_31_40] 
              #                     131  alloc ptr->i32 [temp_27_ptr_of_dst_31_40] 
              #                     133  alloc i32 [temp_28_ele_of_dst_31_40] 
              #                     136  alloc i1 [temp_29_cmp_40] 
              #                     141  alloc i1 [temp_30_cmp_51] 
              #                     147  alloc ptr->i32 [temp_31_ptr_of_dst_31_45] 
              #                     149  alloc i32 [temp_32_ele_of_dst_31_45] 
              #                     152  alloc i1 [temp_33_booltrans_45] 
              #                     154  alloc i1 [temp_34_logicnot_45] 
              #                    regtab     a0:Freed { symidx: dst_31, tracked: true } |     a1:Freed { symidx: src_31, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     19    
              #                     20    
              #                     82    
              #                     85   temp_15_ele_ptr_of_next_33_33 = GEP next_33_0:Array:i32:[Some(4096_0)] [] 
              #                    occupy a2 with temp_15_ele_ptr_of_next_33_33
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,120
              #                    free a2
              #                     86    Call void get_next_0(dst_31, temp_15_ele_ptr_of_next_33_33) 
              #                    saved register dumping to mem
              #                    occupy a0 with dst_31
              #                    store to dst_31 in mem offset_illegal
              #                    occupy a3 with _anonymous_of_16520_0_0
    li      a3, 16520
    li      a3, 16520
    add     a3,sp,a3
    sd      a0,0(a3)
              #                    free a3
              #                    release a0 with dst_31
              #                    occupy a1 with src_31
              #                    store to src_31 in mem offset_illegal
              #                    occupy a0 with _anonymous_of_16504_0_0
    li      a0, 16504
    li      a0, 16504
    add     a0,sp,a0
    sd      a1,0(a0)
              #                    free a0
              #                    release a1 with src_31
              #                    occupy a2 with temp_15_ele_ptr_of_next_33_33
              #                    store to temp_15_ele_ptr_of_next_33_33 in mem offset legal
    sd      a2,112(sp)
              #                    release a2 with temp_15_ele_ptr_of_next_33_33
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_dst_31_0
              #                    load from dst_31 in mem
              #                    occupy a1 with _anonymous_of_16520_0_0
    li      a1, 16520
    add     a1,sp,a1
    ld      a0,0(a1)
              #                    free a1
              #                    occupy a1 with _anonymous_of_temp_15_ele_ptr_of_next_33_33_0
              #                    load from temp_15_ele_ptr_of_next_33_33 in mem
    ld      a1,112(sp)
              #                    arg load ended


    call    get_next
              #                     273  untrack temp_15_ele_ptr_of_next_33_33 
              #                     219  mu next_33_0:86 
              #                     220  next_33_1 = chi next_33_0:86 
              #                     87   (nop) 
              #                     89   (nop) 
              #                     254  i_33_1 = i32 0_0 
              #                    occupy a0 with i_33_1
    li      a0, 0
              #                    free a0
              #                     255  j_33_1 = i32 0_0 
              #                    occupy a1 with j_33_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_38 
    j       .while.head_38
              #                    regtab     a0:Freed { symidx: i_33_1, tracked: true } |     a1:Freed { symidx: j_33_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     120  label while.head_38: 
.while.head_38:
              #                     114  temp_22_ptr_of_src_31_37 = GEP src_31:Array:i32:[None] [Some(j_33_1)] 
              #                    occupy a2 with temp_22_ptr_of_src_31_37
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with j_33_1
    mv      a3, a1
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with src_31
              #                    load from src_31 in mem
              #                    occupy a5 with _anonymous_of_16504_0_0
    li      a5, 16504
    add     a5,sp,a5
    ld      a4,0(a5)
              #                    free a5
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     116  temp_23_ele_of_src_31_37_0 = load temp_22_ptr_of_src_31_37:ptr->i32 
              #                    occupy a2 with temp_22_ptr_of_src_31_37
              #                    occupy a6 with temp_23_ele_of_src_31_37_0
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     117  mu src_31:116 
              #                     119  temp_24__1071_0 = icmp i32 Ne temp_23_ele_of_src_31_37_0, 0_0 
              #                    occupy a6 with temp_23_ele_of_src_31_37_0
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s1 with temp_24__1071_0
    xor     s1,a6,a7
    snez    s1, s1
              #                    free a6
              #                    free a7
              #                    free s1
              #                     123  br i1 temp_24__1071_0, label while.body_38, label while.exit_38 
              #                    occupy s1 with temp_24__1071_0
              #                    free s1
              #                    occupy s1 with temp_24__1071_0
    bnez    s1, .while.body_38
              #                    free s1
    j       .while.exit_38
              #                    regtab     a0:Freed { symidx: i_33_1, tracked: true } |     a1:Freed { symidx: j_33_1, tracked: true } |     a2:Freed { symidx: temp_22_ptr_of_src_31_37, tracked: true } |     a4:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_23_ele_of_src_31_37_0, tracked: true } |     s1:Freed { symidx: temp_24__1071_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     121  label while.body_38: 
.while.body_38:
              #                     127  (nop) 
              #                     129  (nop) 
              #                     130  mu src_31:129 
              #                     132  temp_27_ptr_of_dst_31_40 = GEP dst_31:Array:i32:[None] [Some(i_33_1)] 
              #                    occupy a3 with temp_27_ptr_of_dst_31_40
    li      a3, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_33_1
    mv      a5, a0
              #                    free a0
              #                    occupy a0 with i_33_1
              #                    store to i_33_1 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with i_33_1
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a0 with dst_31
              #                    load from dst_31 in mem
              #                    occupy a7 with _anonymous_of_16520_0_0
    li      a7, 16520
    add     a7,sp,a7
    ld      a0,0(a7)
              #                    free a7
    add     a3,a3,a0
              #                    free a0
              #                    occupy a0 with dst_31
              #                    store to dst_31 in mem offset_illegal
              #                    occupy a7 with _anonymous_of_16520_0_0
    li      a7, 16520
    li      a7, 16520
    add     a7,sp,a7
    sd      a0,0(a7)
              #                    free a7
              #                    release a0 with dst_31
              #                    free a3
              #                     134  temp_28_ele_of_dst_31_40_0 = load temp_27_ptr_of_dst_31_40:ptr->i32 
              #                    occupy a3 with temp_27_ptr_of_dst_31_40
              #                    occupy a0 with temp_28_ele_of_dst_31_40_0
    lw      a0,0(a3)
              #                    free a0
              #                    occupy a0 with temp_28_ele_of_dst_31_40_0
              #                    store to temp_28_ele_of_dst_31_40_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_28_ele_of_dst_31_40_0
              #                    free a3
              #                     135  mu dst_31:134 
              #                     137  temp_29_cmp_40_0 = icmp i32 Eq temp_28_ele_of_dst_31_40_0, temp_23_ele_of_src_31_37_0 
              #                    occupy a0 with temp_28_ele_of_dst_31_40_0
              #                    load from temp_28_ele_of_dst_31_40_0 in mem


    lw      a0,20(sp)
              #                    occupy a6 with temp_23_ele_of_src_31_37_0
              #                    occupy a7 with temp_29_cmp_40_0
    xor     a7,a0,a6
    seqz    a7, a7
              #                    free a0
              #                    occupy a0 with temp_28_ele_of_dst_31_40_0
              #                    store to temp_28_ele_of_dst_31_40_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_28_ele_of_dst_31_40_0
              #                    free a6
              #                    occupy a6 with temp_23_ele_of_src_31_37_0
              #                    store to temp_23_ele_of_src_31_37_0 in mem offset legal
    sw      a6,44(sp)
              #                    release a6 with temp_23_ele_of_src_31_37_0
              #                    free a7
              #                     140  br i1 temp_29_cmp_40_0, label branch_true_41, label branch_false_41 
              #                    occupy a7 with temp_29_cmp_40_0
              #                    free a7
              #                    occupy a7 with temp_29_cmp_40_0
    bnez    a7, .branch_true_41
              #                    free a7
    j       .branch_false_41
              #                    regtab     a1:Freed { symidx: j_33_1, tracked: true } |     a2:Freed { symidx: temp_22_ptr_of_src_31_37, tracked: true } |     a3:Freed { symidx: temp_27_ptr_of_dst_31_40, tracked: true } |     a4:Freed { symidx: src_31, tracked: true } |     a7:Freed { symidx: temp_29_cmp_40_0, tracked: true } |     s1:Freed { symidx: temp_24__1071_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     138  label branch_true_41: 
.branch_true_41:
              #                     106  temp_20_arithop_42_0 = Add i32 i_33_1, 1_0 
              #                    occupy a0 with i_33_1
              #                    load from i_33_1 in mem


    lw      a0,108(sp)
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_20_arithop_42_0
    ADDW    a6,a0,a5
              #                    free a0
              #                    occupy a0 with i_33_1
              #                    store to i_33_1 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with i_33_1
              #                    free a5
              #                    free a6
              #                    occupy a6 with temp_20_arithop_42_0
              #                    store to temp_20_arithop_42_0 in mem offset legal
    sw      a6,64(sp)
              #                    release a6 with temp_20_arithop_42_0
              #                     107  (nop) 
              #                     109  temp_21_arithop_42_0 = Add i32 j_33_1, 1_0 
              #                    occupy a1 with j_33_1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a5 with temp_21_arithop_42_0
    ADDW    a5,a1,a0
              #                    free a1
              #                    occupy a1 with j_33_1
              #                    store to j_33_1 in mem offset legal
    sw      a1,96(sp)
              #                    release a1 with j_33_1
              #                    free a0
              #                    free a5
              #                     110  (nop) 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a2:Freed { symidx: temp_22_ptr_of_src_31_37, tracked: true } |     a3:Freed { symidx: temp_27_ptr_of_dst_31_40, tracked: true } |     a4:Freed { symidx: src_31, tracked: true } |     a5:Freed { symidx: temp_21_arithop_42_0, tracked: true } |     a7:Freed { symidx: temp_29_cmp_40_0, tracked: true } |     s1:Freed { symidx: temp_24__1071_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     148  temp_31_ptr_of_dst_31_45 = GEP dst_31:Array:i32:[None] [Some(temp_20_arithop_42_0)] 
              #                    occupy a0 with temp_31_ptr_of_dst_31_45
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with temp_20_arithop_42_0
              #                    load from temp_20_arithop_42_0 in mem


    lw      a6,64(sp)
    mv      a1, a6
              #                    free a6
              #                    occupy a6 with temp_20_arithop_42_0
              #                    store to temp_20_arithop_42_0 in mem offset legal
    sw      a6,64(sp)
              #                    release a6 with temp_20_arithop_42_0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a1 with dst_31
              #                    load from dst_31 in mem
              #                    occupy a6 with _anonymous_of_16520_0_0
    li      a6, 16520
    add     a6,sp,a6
    ld      a1,0(a6)
              #                    free a6
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with dst_31
              #                    store to dst_31 in mem offset_illegal
              #                    occupy a6 with _anonymous_of_16520_0_0
    li      a6, 16520
    li      a6, 16520
    add     a6,sp,a6
    sd      a1,0(a6)
              #                    free a6
              #                    release a1 with dst_31
              #                    free a0
              #                    occupy a0 with temp_31_ptr_of_dst_31_45
              #                    store to temp_31_ptr_of_dst_31_45 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_31_ptr_of_dst_31_45
              #                     150  temp_32_ele_of_dst_31_45_0 = load temp_31_ptr_of_dst_31_45:ptr->i32 
              #                    occupy a0 with temp_31_ptr_of_dst_31_45
              #                    load from temp_31_ptr_of_dst_31_45 in mem
    ld      a0,8(sp)
              #                    occupy a1 with temp_32_ele_of_dst_31_45_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_32_ele_of_dst_31_45_0
              #                    store to temp_32_ele_of_dst_31_45_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_32_ele_of_dst_31_45_0
              #                    free a0
              #                    occupy a0 with temp_31_ptr_of_dst_31_45
              #                    store to temp_31_ptr_of_dst_31_45 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_31_ptr_of_dst_31_45
              #                     151  mu dst_31:150 
              #                     153  temp_33_booltrans_45_0 = icmp i32 Ne temp_32_ele_of_dst_31_45_0, 0_0 
              #                    occupy a0 with temp_32_ele_of_dst_31_45_0
              #                    load from temp_32_ele_of_dst_31_45_0 in mem


    lw      a0,4(sp)
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a6 with temp_33_booltrans_45_0
    xor     a6,a0,a1
    snez    a6, a6
              #                    free a0
              #                    occupy a0 with temp_32_ele_of_dst_31_45_0
              #                    store to temp_32_ele_of_dst_31_45_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_32_ele_of_dst_31_45_0
              #                    free a1
              #                    free a6
              #                    occupy a6 with temp_33_booltrans_45_0
              #                    store to temp_33_booltrans_45_0 in mem offset legal
    sb      a6,3(sp)
              #                    release a6 with temp_33_booltrans_45_0
              #                     155  temp_34_logicnot_45_0 = xor i1 temp_33_booltrans_45_0, true 
              #                    occupy a0 with temp_33_booltrans_45_0
              #                    load from temp_33_booltrans_45_0 in mem


    lb      a0,3(sp)
              #                    occupy a1 with temp_34_logicnot_45_0
    seqz    a1, a0
              #                    free a0
              #                    occupy a0 with temp_33_booltrans_45_0
              #                    store to temp_33_booltrans_45_0 in mem offset legal
    sb      a0,3(sp)
              #                    release a0 with temp_33_booltrans_45_0
              #                    free a1
              #                    occupy a1 with temp_34_logicnot_45_0
              #                    store to temp_34_logicnot_45_0 in mem offset legal
    sb      a1,2(sp)
              #                    release a1 with temp_34_logicnot_45_0
              #                     158  br i1 temp_34_logicnot_45_0, label branch_true_46, label branch_false_46 
              #                    occupy a0 with temp_34_logicnot_45_0
              #                    load from temp_34_logicnot_45_0 in mem


    lb      a0,2(sp)
              #                    free a0
              #                    occupy a0 with temp_34_logicnot_45_0
              #                    store to temp_34_logicnot_45_0 in mem offset legal
    sb      a0,2(sp)
              #                    release a0 with temp_34_logicnot_45_0
              #                    occupy a0 with temp_34_logicnot_45_0
              #                    load from temp_34_logicnot_45_0 in mem


    lb      a0,2(sp)
    bnez    a0, .branch_true_46
              #                    free a0
              #                    occupy a0 with temp_34_logicnot_45_0
              #                    store to temp_34_logicnot_45_0 in mem offset legal
    sb      a0,2(sp)
              #                    release a0 with temp_34_logicnot_45_0
    j       .branch_false_46
              #                    regtab     a2:Freed { symidx: temp_22_ptr_of_src_31_37, tracked: true } |     a3:Freed { symidx: temp_27_ptr_of_dst_31_40, tracked: true } |     a4:Freed { symidx: src_31, tracked: true } |     a5:Freed { symidx: temp_21_arithop_42_0, tracked: true } |     a7:Freed { symidx: temp_29_cmp_40_0, tracked: true } |     s1:Freed { symidx: temp_24__1071_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     156  label branch_true_46: 
.branch_true_46:
              #                     297  untrack temp_19_arithop_53_0 
              #                     296  untrack temp_31_ptr_of_dst_31_45 
              #                     295  untrack temp_33_booltrans_45_0 
              #                     294  untrack temp_20_arithop_42_0 
              #                     293  untrack temp_28_ele_of_dst_31_40_0 
              #                     292  untrack temp_22_ptr_of_src_31_37 
              #                    occupy a2 with temp_22_ptr_of_src_31_37
              #                    release a2 with temp_22_ptr_of_src_31_37
              #                     291  untrack temp_16_ptr_of_next_33_49 
              #                     290  untrack temp_32_ele_of_dst_31_45_0 
              #                     289  untrack temp_18_arithop_53_0 
              #                     288  untrack temp_29_cmp_40_0 
              #                    occupy a7 with temp_29_cmp_40_0
              #                    release a7 with temp_29_cmp_40_0
              #                     287  untrack temp_17_ele_of_next_33_49_0 
              #                     286  untrack temp_27_ptr_of_dst_31_40 
              #                    occupy a3 with temp_27_ptr_of_dst_31_40
              #                    release a3 with temp_27_ptr_of_dst_31_40
              #                     285  untrack j_33_3 
              #                     284  untrack j_33_5 
              #                     283  untrack temp_23_ele_of_src_31_37_0 
              #                     282  untrack temp_30_cmp_51_0 
              #                     281  untrack temp_34_logicnot_45_0 
              #                     280  untrack temp_24__1071_0 
              #                    occupy s1 with temp_24__1071_0
              #                    release s1 with temp_24__1071_0
              #                     279  untrack i_33_6 
              #                     278  untrack i_33_3 
              #                     112  ret temp_21_arithop_42_0 
              #                    load from ra_KMP_0 in mem
              #                    occupy a0 with _anonymous_of_16544_0_0
    li      a0, 16544
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_KMP_0 in mem
              #                    occupy a1 with _anonymous_of_16536_0_0
    li      a1, 16536
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    occupy a5 with temp_21_arithop_42_0
              #                    store to temp_21_arithop_42_0 in mem offset legal
    sw      a5,60(sp)
              #                    release a5 with temp_21_arithop_42_0
              #                    occupy a0 with temp_21_arithop_42_0
              #                    load from temp_21_arithop_42_0 in mem


    lw      a0,60(sp)
              #                    occupy a2 with 16552_0
    li      a2, 16552
    li      a2, 16552
    add     sp,a2,sp
              #                    free a2
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_22_ptr_of_src_31_37, tracked: true } |     a3:Freed { symidx: temp_27_ptr_of_dst_31_40, tracked: true } |     a4:Freed { symidx: src_31, tracked: true } |     a5:Freed { symidx: temp_21_arithop_42_0, tracked: true } |     a7:Freed { symidx: temp_29_cmp_40_0, tracked: true } |     s1:Freed { symidx: temp_24__1071_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     157  label branch_false_46: 
.branch_false_46:
              #                     256  j_33_3 = i32 temp_21_arithop_42_0 
              #                    occupy a5 with temp_21_arithop_42_0
              #                    occupy a0 with j_33_3
    mv      a0, a5
              #                    free a5
              #                    occupy a5 with temp_21_arithop_42_0
              #                    store to temp_21_arithop_42_0 in mem offset legal
    sw      a5,60(sp)
              #                    release a5 with temp_21_arithop_42_0
              #                    free a0
              #                     257  i_33_3 = i32 temp_20_arithop_42_0 
              #                    occupy a1 with temp_20_arithop_42_0
              #                    load from temp_20_arithop_42_0 in mem


    lw      a1,64(sp)
              #                    occupy a5 with i_33_3
    mv      a5, a1
              #                    free a1
              #                    occupy a1 with temp_20_arithop_42_0
              #                    store to temp_20_arithop_42_0 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with temp_20_arithop_42_0
              #                    free a5
              #                    occupy a5 with i_33_3
              #                    store to i_33_3 in mem offset legal
    sw      a5,104(sp)
              #                    release a5 with i_33_3
              #                          jump label: gather_21 
    j       .gather_21
              #                    regtab     a0:Freed { symidx: j_33_3, tracked: true } |     a2:Freed { symidx: temp_22_ptr_of_src_31_37, tracked: true } |     a3:Freed { symidx: temp_27_ptr_of_dst_31_40, tracked: true } |     a4:Freed { symidx: src_31, tracked: true } |     a7:Freed { symidx: temp_29_cmp_40_0, tracked: true } |     s1:Freed { symidx: temp_24__1071_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     146  label gather_21: 
.gather_21:
              #                     258  i_33_1 = i32 i_33_3 
              #                    occupy a1 with i_33_3
              #                    load from i_33_3 in mem


    lw      a1,104(sp)
              #                    occupy a5 with i_33_1
    mv      a5, a1
              #                    free a1
              #                    occupy a1 with i_33_3
              #                    store to i_33_3 in mem offset legal
    sw      a1,104(sp)
              #                    release a1 with i_33_3
              #                    free a5
              #                    occupy a5 with i_33_1
              #                    store to i_33_1 in mem offset legal
    sw      a5,108(sp)
              #                    release a5 with i_33_1
              #                     259  j_33_1 = i32 j_33_3 
              #                    occupy a0 with j_33_3
              #                    occupy a1 with j_33_1
    mv      a1, a0
              #                    free a0
              #                    occupy a0 with j_33_3
              #                    store to j_33_3 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with j_33_3
              #                    free a1
              #                          jump label: while.head_38 
              #                    occupy a2 with temp_22_ptr_of_src_31_37
              #                    store to temp_22_ptr_of_src_31_37 in mem offset legal
    sd      a2,48(sp)
              #                    release a2 with temp_22_ptr_of_src_31_37
              #                    occupy s1 with temp_24__1071_0
              #                    store to temp_24__1071_0 in mem offset legal
    sb      s1,43(sp)
              #                    release s1 with temp_24__1071_0
              #                    occupy a0 with i_33_1
              #                    load from i_33_1 in mem


    lw      a0,108(sp)
              #                    occupy a4 with src_31
              #                    store to src_31 in mem offset_illegal
              #                    occupy a2 with _anonymous_of_16504_0_0
    li      a2, 16504
    li      a2, 16504
    add     a2,sp,a2
    sd      a4,0(a2)
              #                    free a2
              #                    release a4 with src_31
              #                    occupy a7 with temp_29_cmp_40_0
              #                    store to temp_29_cmp_40_0 in mem offset legal
    sb      a7,19(sp)
              #                    release a7 with temp_29_cmp_40_0
              #                    occupy a3 with temp_27_ptr_of_dst_31_40
              #                    store to temp_27_ptr_of_dst_31_40 in mem offset legal
    sd      a3,24(sp)
              #                    release a3 with temp_27_ptr_of_dst_31_40
    j       .while.head_38
              #                    regtab     a1:Freed { symidx: j_33_1, tracked: true } |     a2:Freed { symidx: temp_22_ptr_of_src_31_37, tracked: true } |     a3:Freed { symidx: temp_27_ptr_of_dst_31_40, tracked: true } |     a4:Freed { symidx: src_31, tracked: true } |     a7:Freed { symidx: temp_29_cmp_40_0, tracked: true } |     s1:Freed { symidx: temp_24__1071_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     139  label branch_false_41: 
.branch_false_41:
              #                     94   temp_16_ptr_of_next_33_49 = GEP next_33_1:Array:i32:[Some(4096_0)] [Some(i_33_1)] 
              #                    occupy a0 with temp_16_ptr_of_next_33_49
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with i_33_1
              #                    load from i_33_1 in mem


    lw      a6,108(sp)
    mv      a5, a6
              #                    free a6
              #                    occupy a6 with i_33_1
              #                    store to i_33_1 in mem offset legal
    sw      a6,108(sp)
              #                    release a6 with i_33_1
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,120
              #                    free a0
              #                    occupy a0 with temp_16_ptr_of_next_33_49
              #                    store to temp_16_ptr_of_next_33_49 in mem offset legal
    sd      a0,80(sp)
              #                    release a0 with temp_16_ptr_of_next_33_49
              #                     96   temp_17_ele_of_next_33_49_0 = load temp_16_ptr_of_next_33_49:ptr->i32 
              #                    occupy a0 with temp_16_ptr_of_next_33_49
              #                    load from temp_16_ptr_of_next_33_49 in mem
    ld      a0,80(sp)
              #                    occupy a5 with temp_17_ele_of_next_33_49_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_17_ele_of_next_33_49_0
              #                    store to temp_17_ele_of_next_33_49_0 in mem offset legal
    sw      a5,76(sp)
              #                    release a5 with temp_17_ele_of_next_33_49_0
              #                    free a0
              #                    occupy a0 with temp_16_ptr_of_next_33_49
              #                    store to temp_16_ptr_of_next_33_49 in mem offset legal
    sd      a0,80(sp)
              #                    release a0 with temp_16_ptr_of_next_33_49
              #                     97   mu next_33_1:96 
              #                     98   (nop) 
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a1:Freed { symidx: j_33_1, tracked: true } |     a2:Freed { symidx: temp_22_ptr_of_src_31_37, tracked: true } |     a3:Freed { symidx: temp_27_ptr_of_dst_31_40, tracked: true } |     a4:Freed { symidx: src_31, tracked: true } |     a7:Freed { symidx: temp_29_cmp_40_0, tracked: true } |     s1:Freed { symidx: temp_24__1071_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     142  temp_30_cmp_51_0 = icmp i32 Eq temp_17_ele_of_next_33_49_0, -1_0 
              #                    occupy a0 with temp_17_ele_of_next_33_49_0
              #                    load from temp_17_ele_of_next_33_49_0 in mem


    lw      a0,76(sp)
              #                    occupy a5 with -1_0
    li      a5, -1
              #                    occupy a6 with temp_30_cmp_51_0
    xor     a6,a0,a5
    seqz    a6, a6
              #                    free a0
              #                    occupy a0 with temp_17_ele_of_next_33_49_0
              #                    store to temp_17_ele_of_next_33_49_0 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_17_ele_of_next_33_49_0
              #                    free a5
              #                    free a6
              #                    occupy a6 with temp_30_cmp_51_0
              #                    store to temp_30_cmp_51_0 in mem offset legal
    sb      a6,18(sp)
              #                    release a6 with temp_30_cmp_51_0
              #                     145  br i1 temp_30_cmp_51_0, label branch_true_52, label UP_35_0 
              #                    occupy a0 with temp_30_cmp_51_0
              #                    load from temp_30_cmp_51_0 in mem


    lb      a0,18(sp)
              #                    free a0
              #                    occupy a0 with temp_30_cmp_51_0
              #                    store to temp_30_cmp_51_0 in mem offset legal
    sb      a0,18(sp)
              #                    release a0 with temp_30_cmp_51_0
              #                    occupy a0 with temp_30_cmp_51_0
              #                    load from temp_30_cmp_51_0 in mem


    lb      a0,18(sp)
    bnez    a0, .branch_true_52
              #                    free a0
              #                    occupy a0 with temp_30_cmp_51_0
              #                    store to temp_30_cmp_51_0 in mem offset legal
    sb      a0,18(sp)
              #                    release a0 with temp_30_cmp_51_0
    j       .UP_35_0
              #                    regtab     a1:Freed { symidx: j_33_1, tracked: true } |     a2:Freed { symidx: temp_22_ptr_of_src_31_37, tracked: true } |     a3:Freed { symidx: temp_27_ptr_of_dst_31_40, tracked: true } |     a4:Freed { symidx: src_31, tracked: true } |     a7:Freed { symidx: temp_29_cmp_40_0, tracked: true } |     s1:Freed { symidx: temp_24__1071_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     143  label branch_true_52: 
.branch_true_52:
              #                     100  temp_18_arithop_53_0 = Add i32 temp_17_ele_of_next_33_49_0, 1_0 
              #                    occupy a0 with temp_17_ele_of_next_33_49_0
              #                    load from temp_17_ele_of_next_33_49_0 in mem


    lw      a0,76(sp)
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_18_arithop_53_0
    ADDW    a6,a0,a5
              #                    free a0
              #                    occupy a0 with temp_17_ele_of_next_33_49_0
              #                    store to temp_17_ele_of_next_33_49_0 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_17_ele_of_next_33_49_0
              #                    free a5
              #                    free a6
              #                    occupy a6 with temp_18_arithop_53_0
              #                    store to temp_18_arithop_53_0 in mem offset legal
    sw      a6,72(sp)
              #                    release a6 with temp_18_arithop_53_0
              #                     101  (nop) 
              #                     103  temp_19_arithop_53_0 = Add i32 j_33_1, 1_0 
              #                    occupy a1 with j_33_1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a5 with temp_19_arithop_53_0
    ADDW    a5,a1,a0
              #                    free a1
              #                    occupy a1 with j_33_1
              #                    store to j_33_1 in mem offset legal
    sw      a1,96(sp)
              #                    release a1 with j_33_1
              #                    free a0
              #                    free a5
              #                     104  (nop) 
              #                     260  i_33_6 = i32 temp_18_arithop_53_0 
              #                    occupy a0 with temp_18_arithop_53_0
              #                    load from temp_18_arithop_53_0 in mem


    lw      a0,72(sp)
              #                    occupy a1 with i_33_6
    mv      a1, a0
              #                    free a0
              #                    occupy a0 with temp_18_arithop_53_0
              #                    store to temp_18_arithop_53_0 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_18_arithop_53_0
              #                    free a1
              #                    occupy a1 with i_33_6
              #                    store to i_33_6 in mem offset legal
    sw      a1,100(sp)
              #                    release a1 with i_33_6
              #                     261  j_33_5 = i32 temp_19_arithop_53_0 
              #                    occupy a5 with temp_19_arithop_53_0
              #                    occupy a0 with j_33_5
    mv      a0, a5
              #                    free a5
              #                    occupy a5 with temp_19_arithop_53_0
              #                    store to temp_19_arithop_53_0 in mem offset legal
    sw      a5,68(sp)
              #                    release a5 with temp_19_arithop_53_0
              #                    free a0
              #                          jump label: branch_false_52 
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: j_33_5, tracked: true } |     a2:Freed { symidx: temp_22_ptr_of_src_31_37, tracked: true } |     a3:Freed { symidx: temp_27_ptr_of_dst_31_40, tracked: true } |     a4:Freed { symidx: src_31, tracked: true } |     a7:Freed { symidx: temp_29_cmp_40_0, tracked: true } |     s1:Freed { symidx: temp_24__1071_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     144  label branch_false_52: 
.branch_false_52:
              #                     262  j_33_3 = i32 j_33_5 
              #                    occupy a0 with j_33_5
              #                    occupy a1 with j_33_3
    mv      a1, a0
              #                    free a0
              #                    occupy a0 with j_33_5
              #                    store to j_33_5 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with j_33_5
              #                    free a1
              #                     263  i_33_3 = i32 i_33_6 
              #                    occupy a0 with i_33_6
              #                    load from i_33_6 in mem


    lw      a0,100(sp)
              #                    occupy a5 with i_33_3
    mv      a5, a0
              #                    free a0
              #                    occupy a0 with i_33_6
              #                    store to i_33_6 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with i_33_6
              #                    free a5
              #                    occupy a5 with i_33_3
              #                    store to i_33_3 in mem offset legal
    sw      a5,104(sp)
              #                    release a5 with i_33_3
              #                          jump label: gather_21 
              #                    occupy a1 with j_33_3
              #                    store to j_33_3 in mem offset legal
    sw      a1,92(sp)
              #                    release a1 with j_33_3
              #                    occupy a0 with j_33_3
              #                    load from j_33_3 in mem


    lw      a0,92(sp)
    j       .gather_21
              #                    regtab     a1:Freed { symidx: j_33_1, tracked: true } |     a2:Freed { symidx: temp_22_ptr_of_src_31_37, tracked: true } |     a3:Freed { symidx: temp_27_ptr_of_dst_31_40, tracked: true } |     a4:Freed { symidx: src_31, tracked: true } |     a7:Freed { symidx: temp_29_cmp_40_0, tracked: true } |     s1:Freed { symidx: temp_24__1071_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     253  label UP_35_0: 
.UP_35_0:
              #                     264  i_33_6 = i32 temp_17_ele_of_next_33_49_0 
              #                    occupy a0 with temp_17_ele_of_next_33_49_0
              #                    load from temp_17_ele_of_next_33_49_0 in mem


    lw      a0,76(sp)
              #                    occupy a5 with i_33_6
    mv      a5, a0
              #                    free a0
              #                    occupy a0 with temp_17_ele_of_next_33_49_0
              #                    store to temp_17_ele_of_next_33_49_0 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_17_ele_of_next_33_49_0
              #                    free a5
              #                    occupy a5 with i_33_6
              #                    store to i_33_6 in mem offset legal
    sw      a5,100(sp)
              #                    release a5 with i_33_6
              #                     265  j_33_5 = i32 j_33_1 
              #                    occupy a1 with j_33_1
              #                    occupy a0 with j_33_5
    mv      a0, a1
              #                    free a1
              #                    occupy a1 with j_33_1
              #                    store to j_33_1 in mem offset legal
    sw      a1,96(sp)
              #                    release a1 with j_33_1
              #                    free a0
              #                          jump label: branch_false_52 
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: i_33_1, tracked: true } |     a1:Freed { symidx: j_33_1, tracked: true } |     a2:Freed { symidx: temp_22_ptr_of_src_31_37, tracked: true } |     a4:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_23_ele_of_src_31_37_0, tracked: true } |     s1:Freed { symidx: temp_24__1071_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     122  label while.exit_38: 
.while.exit_38:
              #                     277  untrack i_33_1 
              #                    occupy a0 with i_33_1
              #                    release a0 with i_33_1
              #                     276  untrack src_31 
              #                    occupy a4 with src_31
              #                    release a4 with src_31
              #                     275  untrack dst_31 
              #                     274  untrack j_33_1 
              #                    occupy a1 with j_33_1
              #                    release a1 with j_33_1
              #                     92   ret -1_0 
              #                    load from ra_KMP_0 in mem
              #                    occupy a0 with _anonymous_of_16544_0_0
    li      a0, 16544
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_KMP_0 in mem
              #                    occupy a1 with _anonymous_of_16536_0_0
    li      a1, 16536
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    occupy a0 with -1_0
    li      a0, -1
              #                    occupy a3 with 16552_0
    li      a3, 16552
    li      a3, 16552
    add     sp,a3,sp
              #                    free a3
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     23   Define read_str_0 "buf_57," -> read_str_ret_0 
    .globl read_str
    .type read_str,@function
read_str:
              #                    mem layout:|ra_read_str:8 at 104|s0_read_str:8 at 96|buf:8 at 88|buf:8 at 80|buf:8 at 72|buf:8 at 64|buf:8 at 56|buf:8 at 48|i _s59 _i1:4 at 44|none:4 at 40|temp_35_ptr_of_buf_57:8 at 32|temp_36_ptr_of_buf_57:8 at 24|temp_37_ret_of_getch _s63 _i0:4 at 20|temp_38_arithop _s63 _i0:4 at 16|temp_40_ptr_of_buf_57:8 at 8|temp_41_ele_of_buf_57 _s65 _i0:4 at 4|temp_42_cmp _s65 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-112
              #                    store to ra_read_str_0 in mem offset legal
    sd      ra,104(sp)
              #                    store to s0_read_str_0 in mem offset legal
    sd      s0,96(sp)
    addi    s0,sp,112
              #                     160  alloc i32 [i_59] 
              #                     161  alloc ptr->i32 [temp_35_ptr_of_buf_57_59] 
              #                     167  alloc ptr->i32 [temp_36_ptr_of_buf_57_63] 
              #                     169  alloc i32 [temp_37_ret_of_getch_63] 
              #                     173  alloc i32 [temp_38_arithop_63] 
              #                     176  alloc i1 [temp_39__1615] 
              #                     184  alloc ptr->i32 [temp_40_ptr_of_buf_57_65] 
              #                     186  alloc i32 [temp_41_ele_of_buf_57_65] 
              #                     189  alloc i1 [temp_42_cmp_65] 
              #                    regtab     a0:Freed { symidx: buf_57, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     22    
              #                     159  (nop) 
              #                     266  i_59_1 = i32 0_0 
              #                    occupy a1 with i_59_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: buf_57, tracked: true } |     a1:Freed { symidx: i_59_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     178  label while.head_62: 
.while.head_62:
              #                     177  (nop) 
              #                          jump label: while.body_62 
    j       .while.body_62
              #                    regtab     a0:Freed { symidx: buf_57, tracked: true } |     a1:Freed { symidx: i_59_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     179  label while.body_62: 
.while.body_62:
              #                     168  temp_36_ptr_of_buf_57_63 = GEP buf_57:ptr->i32 [Some(i_59_1)] 
              #                    occupy a2 with temp_36_ptr_of_buf_57_63
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_59_1
    mv      a3, a1
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with buf_57
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     170  temp_37_ret_of_getch_63_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with buf_57
              #                    store to buf_57 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with buf_57
              #                    occupy a1 with i_59_1
              #                    store to i_59_1 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with i_59_1
              #                    occupy a2 with temp_36_ptr_of_buf_57_63
              #                    store to temp_36_ptr_of_buf_57_63 in mem offset legal
    sd      a2,24(sp)
              #                    release a2 with temp_36_ptr_of_buf_57_63
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     171  store temp_37_ret_of_getch_63_0:i32 temp_36_ptr_of_buf_57_63:ptr->i32 
              #                    occupy a1 with temp_36_ptr_of_buf_57_63
              #                    load from temp_36_ptr_of_buf_57_63 in mem
    ld      a1,24(sp)
              #                    occupy a0 with temp_37_ret_of_getch_63_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     172  buf_57 = chi buf_57:171 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_37_ret_of_getch_63_0, tracked: true } |     a1:Freed { symidx: temp_36_ptr_of_buf_57_63, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     185  temp_40_ptr_of_buf_57_65 = GEP buf_57:Array:i32:[None] [Some(i_59_1)] 
              #                    occupy a2 with temp_40_ptr_of_buf_57_65
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_59_1
              #                    load from i_59_1 in mem


    lw      a4,44(sp)
    mv      a3, a4
              #                    free a4
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a5 with buf_57
              #                    load from buf_57 in mem
    ld      a5,48(sp)
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                     187  temp_41_ele_of_buf_57_65_0 = load temp_40_ptr_of_buf_57_65:ptr->i32 
              #                    occupy a2 with temp_40_ptr_of_buf_57_65
              #                    occupy a6 with temp_41_ele_of_buf_57_65_0
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     188  mu buf_57:187 
              #                     190  temp_42_cmp_65_0 = icmp i32 Eq temp_41_ele_of_buf_57_65_0, 10_0 
              #                    occupy a6 with temp_41_ele_of_buf_57_65_0
              #                    occupy a7 with 10_0
    li      a7, 10
              #                    occupy s1 with temp_42_cmp_65_0
    xor     s1,a6,a7
    seqz    s1, s1
              #                    free a6
              #                    free a7
              #                    free s1
              #                     193  br i1 temp_42_cmp_65_0, label branch_true_66, label branch_false_66 
              #                    occupy s1 with temp_42_cmp_65_0
              #                    free s1
              #                    occupy s1 with temp_42_cmp_65_0
    bnez    s1, .branch_true_66
              #                    free s1
    j       .branch_false_66
              #                    regtab     a0:Freed { symidx: temp_37_ret_of_getch_63_0, tracked: true } |     a1:Freed { symidx: temp_36_ptr_of_buf_57_63, tracked: true } |     a2:Freed { symidx: temp_40_ptr_of_buf_57_65, tracked: true } |     a4:Freed { symidx: i_59_1, tracked: true } |     a5:Freed { symidx: buf_57, tracked: true } |     a6:Freed { symidx: temp_41_ele_of_buf_57_65_0, tracked: true } |     s1:Freed { symidx: temp_42_cmp_65_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     191  label branch_true_66: 
.branch_true_66:
              #                     303  untrack temp_37_ret_of_getch_63_0 
              #                    occupy a0 with temp_37_ret_of_getch_63_0
              #                    release a0 with temp_37_ret_of_getch_63_0
              #                     302  untrack temp_42_cmp_65_0 
              #                    occupy s1 with temp_42_cmp_65_0
              #                    release s1 with temp_42_cmp_65_0
              #                     301  untrack temp_40_ptr_of_buf_57_65 
              #                    occupy a2 with temp_40_ptr_of_buf_57_65
              #                    release a2 with temp_40_ptr_of_buf_57_65
              #                     300  untrack temp_41_ele_of_buf_57_65_0 
              #                    occupy a6 with temp_41_ele_of_buf_57_65_0
              #                    release a6 with temp_41_ele_of_buf_57_65_0
              #                     299  untrack temp_36_ptr_of_buf_57_63 
              #                    occupy a1 with temp_36_ptr_of_buf_57_63
              #                    release a1 with temp_36_ptr_of_buf_57_63
              #                     298  untrack temp_38_arithop_63_0 
              #                          jump label: while.exit_62 
    j       .while.exit_62
              #                    regtab     a4:Freed { symidx: i_59_1, tracked: true } |     a5:Freed { symidx: buf_57, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     180  label while.exit_62: 
.while.exit_62:
              #                     162  temp_35_ptr_of_buf_57_59 = GEP buf_57:ptr->i32 [Some(i_59_1)] 
              #                    occupy a0 with temp_35_ptr_of_buf_57_59
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_59_1
    mv      a1, a4
              #                    free a4
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a5 with buf_57
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     163  store 0_0:i32 temp_35_ptr_of_buf_57_59:ptr->i32 
              #                    occupy a0 with temp_35_ptr_of_buf_57_59
              #                    occupy a2 with 0_0
    li      a2, 0
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     305  untrack temp_35_ptr_of_buf_57_59 
              #                    occupy a0 with temp_35_ptr_of_buf_57_59
              #                    release a0 with temp_35_ptr_of_buf_57_59
              #                     164  buf_57 = chi buf_57:163 
              #                     221  mu buf_57:166 
              #                     304  untrack buf_57 
              #                    occupy a5 with buf_57
              #                    release a5 with buf_57
              #                     166  ret i_59_1 
              #                    load from ra_read_str_0 in mem
    ld      ra,104(sp)
              #                    load from s0_read_str_0 in mem
    ld      s0,96(sp)
              #                    occupy a4 with i_59_1
              #                    store to i_59_1 in mem offset legal
    sw      a4,44(sp)
              #                    release a4 with i_59_1
              #                    occupy a0 with i_59_1
              #                    load from i_59_1 in mem


    lw      a0,44(sp)
    addi    sp,sp,112
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_37_ret_of_getch_63_0, tracked: true } |     a1:Freed { symidx: temp_36_ptr_of_buf_57_63, tracked: true } |     a2:Freed { symidx: temp_40_ptr_of_buf_57_65, tracked: true } |     a4:Freed { symidx: i_59_1, tracked: true } |     a5:Freed { symidx: buf_57, tracked: true } |     a6:Freed { symidx: temp_41_ele_of_buf_57_65_0, tracked: true } |     s1:Freed { symidx: temp_42_cmp_65_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     192  label branch_false_66: 
.branch_false_66:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_37_ret_of_getch_63_0, tracked: true } |     a1:Freed { symidx: temp_36_ptr_of_buf_57_63, tracked: true } |     a2:Freed { symidx: temp_40_ptr_of_buf_57_65, tracked: true } |     a4:Freed { symidx: i_59_1, tracked: true } |     a5:Freed { symidx: buf_57, tracked: true } |     a6:Freed { symidx: temp_41_ele_of_buf_57_65_0, tracked: true } |     s1:Freed { symidx: temp_42_cmp_65_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     174  temp_38_arithop_63_0 = Add i32 i_59_1, 1_0 
              #                    occupy a4 with i_59_1
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a7 with temp_38_arithop_63_0
    ADDW    a7,a4,a3
              #                    free a4
              #                    free a3
              #                    free a7
              #                     175  (nop) 
              #                     267  i_59_1 = i32 temp_38_arithop_63_0 
              #                    occupy a7 with temp_38_arithop_63_0
              #                    occupy a4 with i_59_1
    mv      a4, a7
              #                    free a7
              #                    free a4
              #                          jump label: while.head_62 
              #                    occupy a1 with temp_36_ptr_of_buf_57_63
              #                    store to temp_36_ptr_of_buf_57_63 in mem offset legal
    sd      a1,24(sp)
              #                    release a1 with temp_36_ptr_of_buf_57_63
              #                    occupy a4 with i_59_1
              #                    store to i_59_1 in mem offset legal
    sw      a4,44(sp)
              #                    release a4 with i_59_1
              #                    occupy a1 with i_59_1
              #                    load from i_59_1 in mem


    lw      a1,44(sp)
              #                    occupy a7 with temp_38_arithop_63_0
              #                    store to temp_38_arithop_63_0 in mem offset legal
    sw      a7,16(sp)
              #                    release a7 with temp_38_arithop_63_0
              #                    occupy s1 with temp_42_cmp_65_0
              #                    store to temp_42_cmp_65_0 in mem offset legal
    sb      s1,3(sp)
              #                    release s1 with temp_42_cmp_65_0
              #                    occupy a6 with temp_41_ele_of_buf_57_65_0
              #                    store to temp_41_ele_of_buf_57_65_0 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_41_ele_of_buf_57_65_0
              #                    occupy a5 with buf_57
              #                    store to buf_57 in mem offset legal
    sd      a5,48(sp)
              #                    release a5 with buf_57
              #                    occupy a0 with temp_37_ret_of_getch_63_0
              #                    store to temp_37_ret_of_getch_63_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_37_ret_of_getch_63_0
              #                    occupy a0 with buf_57
              #                    load from buf_57 in mem
    ld      a0,48(sp)
              #                    occupy a2 with temp_40_ptr_of_buf_57_65
              #                    store to temp_40_ptr_of_buf_57_65 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_40_ptr_of_buf_57_65
    j       .while.head_62
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     24   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32832|s0_main:8 at 32824|dst:16384 at 16440|src:16384 at 56|temp_43_ele_ptr_of_dst_72:8 at 48|temp_44_ret_of_read_str _s72 _i0:4 at 44|none:4 at 40|temp_45_ele_ptr_of_src_72:8 at 32|temp_46_ret_of_read_str _s72 _i0:4 at 28|none:4 at 24|temp_47_ele_ptr_of_dst_72:8 at 16|temp_48_ele_ptr_of_src_72:8 at 8|temp_49_ret_of_KMP _s72 _i0:4 at 4|none:4 at 0
              #                    occupy a0 with -32840_0
    li      a0, -32840
    li      a0, -32840
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with _anonymous_of_32832_0_0
    li      a1, 32832
    li      a1, 32832
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with _anonymous_of_32824_0_0
    li      a2, 32824
    li      a2, 32824
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 32840_0
    li      a3, 32840
    li      a3, 32840
    add     s0,a3,sp
              #                    free a3
              #                     195  alloc Array:i32:[Some(4096_0)] [dst_72] 
              #                     197  alloc Array:i32:[Some(4096_0)] [src_72] 
              #                     198  alloc ptr->i32 [temp_43_ele_ptr_of_dst_72_72] 
              #                     200  alloc i32 [temp_44_ret_of_read_str_72] 
              #                     202  alloc ptr->i32 [temp_45_ele_ptr_of_src_72_72] 
              #                     204  alloc i32 [temp_46_ret_of_read_str_72] 
              #                     206  alloc ptr->i32 [temp_47_ele_ptr_of_dst_72_72] 
              #                     208  alloc ptr->i32 [temp_48_ele_ptr_of_src_72_72] 
              #                     210  alloc i32 [temp_49_ret_of_KMP_72] 
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     194   
              #                     196   
              #                     199  temp_43_ele_ptr_of_dst_72_72 = GEP dst_72_0:Array:i32:[Some(4096_0)] [] 
              #                    occupy a0 with temp_43_ele_ptr_of_dst_72_72
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 16440_0
    li      a1, 16440
    li      a1, 16440
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                     201  temp_44_ret_of_read_str_72_0 =  Call i32 read_str_0(temp_43_ele_ptr_of_dst_72_72) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_43_ele_ptr_of_dst_72_72
              #                    store to temp_43_ele_ptr_of_dst_72_72 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with temp_43_ele_ptr_of_dst_72_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_43_ele_ptr_of_dst_72_72_0
              #                    load from temp_43_ele_ptr_of_dst_72_72 in mem
    ld      a0,48(sp)
              #                    arg load ended


    call    read_str
              #                     309  untrack temp_43_ele_ptr_of_dst_72_72 
              #                     222  mu dst_72_0:201 
              #                     223  dst_72_1 = chi dst_72_0:201 
              #                     203  temp_45_ele_ptr_of_src_72_72 = GEP src_72_0:Array:i32:[Some(4096_0)] [] 
              #                    occupy a1 with temp_45_ele_ptr_of_src_72_72
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,56
              #                    free a1
              #                     205  temp_46_ret_of_read_str_72_0 =  Call i32 read_str_0(temp_45_ele_ptr_of_src_72_72) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_44_ret_of_read_str_72_0
              #                    store to temp_44_ret_of_read_str_72_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_44_ret_of_read_str_72_0
              #                    occupy a1 with temp_45_ele_ptr_of_src_72_72
              #                    store to temp_45_ele_ptr_of_src_72_72 in mem offset legal
    sd      a1,32(sp)
              #                    release a1 with temp_45_ele_ptr_of_src_72_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_45_ele_ptr_of_src_72_72_0
              #                    load from temp_45_ele_ptr_of_src_72_72 in mem
    ld      a0,32(sp)
              #                    arg load ended


    call    read_str
              #                     307  untrack temp_45_ele_ptr_of_src_72_72 
              #                     224  mu src_72_0:205 
              #                     225  src_72_1 = chi src_72_0:205 
              #                     207  temp_47_ele_ptr_of_dst_72_72 = GEP dst_72_1:Array:i32:[Some(4096_0)] [] 
              #                    occupy a1 with temp_47_ele_ptr_of_dst_72_72
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
              #                    occupy a2 with 16440_0
    li      a2, 16440
    li      a2, 16440
    add     a1,a2,a1
              #                    free a2
              #                    free a1
              #                     209  temp_48_ele_ptr_of_src_72_72 = GEP src_72_1:Array:i32:[Some(4096_0)] [] 
              #                    occupy a3 with temp_48_ele_ptr_of_src_72_72
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,56
              #                    free a3
              #                     211  temp_49_ret_of_KMP_72_0 =  Call i32 KMP_0(temp_47_ele_ptr_of_dst_72_72, temp_48_ele_ptr_of_src_72_72) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_46_ret_of_read_str_72_0
              #                    store to temp_46_ret_of_read_str_72_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_46_ret_of_read_str_72_0
              #                    occupy a1 with temp_47_ele_ptr_of_dst_72_72
              #                    store to temp_47_ele_ptr_of_dst_72_72 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_47_ele_ptr_of_dst_72_72
              #                    occupy a3 with temp_48_ele_ptr_of_src_72_72
              #                    store to temp_48_ele_ptr_of_src_72_72 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_48_ele_ptr_of_src_72_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_47_ele_ptr_of_dst_72_72_0
              #                    load from temp_47_ele_ptr_of_dst_72_72 in mem
    ld      a0,16(sp)
              #                    occupy a1 with _anonymous_of_temp_48_ele_ptr_of_src_72_72_0
              #                    load from temp_48_ele_ptr_of_src_72_72 in mem
    ld      a1,8(sp)
              #                    arg load ended


    call    KMP
              #                     310  untrack temp_48_ele_ptr_of_src_72_72 
              #                     306  untrack temp_47_ele_ptr_of_dst_72_72 
              #                     226  mu dst_72_1:211 
              #                     227  mu src_72_1:211 
              #                     228  src_72_2 = chi src_72_1:211 
              #                     229  dst_72_2 = chi dst_72_1:211 
              #                     212   Call void putint_0(temp_49_ret_of_KMP_72_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_49_ret_of_KMP_72_0
              #                    store to temp_49_ret_of_KMP_72_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_49_ret_of_KMP_72_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_49_ret_of_KMP_72_0_0
              #                    load from temp_49_ret_of_KMP_72_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                     308  untrack temp_49_ret_of_KMP_72_0 
              #                     213   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     215  ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with _anonymous_of_32832_0_0
    li      a0, 32832
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy a1 with _anonymous_of_32824_0_0
    li      a1, 32824
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with 32840_0
    li      a2, 32840
    li      a2, 32840
    add     sp,a2,sp
              #                    free a2
              #                    free a0
    ret
