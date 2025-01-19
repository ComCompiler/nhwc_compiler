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
              #                     18   Define insertsort_0 "a_17," -> insertsort_ret_0 
    .globl insertsort
    .type insertsort,@function
insertsort:
              #                    mem layout:|ra_insertsort:8 at 168|s0_insertsort:8 at 160|a:8 at 152|a:8 at 144|a:8 at 136|a:8 at 128|a:8 at 120|a:8 at 112|i _s19 _i0:4 at 108|i _s19 _i2:4 at 104|temp _s24 _i0:4 at 100|none:4 at 96|temp_0_ptr_of_a_17:8 at 88|temp_1_ele_of_a_17 _s24 _i0:4 at 84|j _s24 _i0:4 at 80|j _s24 _i2:4 at 76|temp_2_arithop _s24 _i0:4 at 72|temp_3_arithop _s24 _i0:4 at 68|none:4 at 64|temp_4_ptr_of_a_17:8 at 56|temp_5_arithop _s24 _i0:4 at 52|temp_6_arithop _s31 _i0:4 at 48|temp_7_ptr_of_a_17:8 at 40|temp_8_ptr_of_a_17:8 at 32|temp_10_arithop _s31 _i0:4 at 28|temp_11_value_from_ptr _s22 _i0:4 at 24|temp_12_cmp _s22 _i0:1 at 23|temp_13_cmp _s29 _i0:1 at 22|none:6 at 16|temp_14_ptr_of_a_17:8 at 8|temp_15_ele_of_a_17 _s29 _i0:4 at 4|temp_16_cmp _s29 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-176
              #                    store to ra_insertsort_0 in mem offset legal
    sd      ra,168(sp)
              #                    store to s0_insertsort_0 in mem offset legal
    sd      s0,160(sp)
    addi    s0,sp,176
              #                     20   alloc i32 [i_19] 
              #                     25   alloc i32 [temp_24] 
              #                     27   alloc ptr->i32 [temp_0_ptr_of_a_17_24] 
              #                     29   alloc i32 [temp_1_ele_of_a_17_24] 
              #                     33   alloc i32 [j_24] 
              #                     35   alloc i32 [temp_2_arithop_24] 
              #                     38   alloc i32 [temp_3_arithop_24] 
              #                     40   alloc ptr->i32 [temp_4_ptr_of_a_17_24] 
              #                     44   alloc i32 [temp_5_arithop_24] 
              #                     47   alloc i32 [temp_6_arithop_31] 
              #                     49   alloc ptr->i32 [temp_7_ptr_of_a_17_31] 
              #                     51   alloc ptr->i32 [temp_8_ptr_of_a_17_31] 
              #                     53   alloc i32 [temp_9_ele_of_a_17_31] 
              #                     58   alloc i32 [temp_10_arithop_31] 
              #                     61   alloc i32 [temp_11_value_from_ptr_22] 
              #                     64   alloc i1 [temp_12_cmp_22] 
              #                     72   alloc i1 [temp_13_cmp_29] 
              #                     74   alloc ptr->i32 [temp_14_ptr_of_a_17_29] 
              #                     76   alloc i32 [temp_15_ele_of_a_17_29] 
              #                     79   alloc i1 [temp_16_cmp_29] 
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     17    
              #                     21    
              #                     22   (nop) 
              #                     62   temp_11_value_from_ptr_22_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_11_value_from_ptr_22_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     63   mu n_0_0:62 
              #                     177  i_19_2 = i32 1_0 
              #                    occupy a3 with i_19_2
    li      a3, 1
              #                    free a3
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a2:Freed { symidx: temp_11_value_from_ptr_22_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     66   label while.head_23: 
.while.head_23:
              #                     65   temp_12_cmp_22_0 = icmp i32 Slt i_19_2, temp_11_value_from_ptr_22_0 
              #                    occupy a3 with i_19_2
              #                    occupy a2 with temp_11_value_from_ptr_22_0
              #                    occupy a1 with temp_12_cmp_22_0
    slt     a1,a3,a2
              #                    free a3
              #                    free a2
              #                    free a1
              #                     69   br i1 temp_12_cmp_22_0, label while.body_23, label while.exit_23 
              #                    occupy a1 with temp_12_cmp_22_0
              #                    free a1
              #                    occupy a1 with temp_12_cmp_22_0
    bnez    a1, .while.body_23
              #                    free a1
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: temp_12_cmp_22_0, tracked: true } |     a2:Freed { symidx: temp_11_value_from_ptr_22_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     67   label while.body_23: 
.while.body_23:
              #                     26    
              #                     28   temp_0_ptr_of_a_17_24 = GEP a_17:Array:i32:[None] [Some(i_19_2)] 
              #                    occupy a4 with temp_0_ptr_of_a_17_24
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_19_2
    mv      a5, a3
              #                    free a3
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a0 with a_17
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                     30   temp_1_ele_of_a_17_24_0 = load temp_0_ptr_of_a_17_24:ptr->i32 
              #                    occupy a4 with temp_0_ptr_of_a_17_24
              #                    occupy a6 with temp_1_ele_of_a_17_24_0
    lw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                     31   mu a_17:30 
              #                     32   (nop) 
              #                     34    
              #                     36   temp_2_arithop_24_0 = Sub i32 i_19_2, 1_0 
              #                    occupy a3 with i_19_2
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_2_arithop_24_0
              #                    regtab:    a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: temp_12_cmp_22_0, tracked: true } |     a2:Freed { symidx: temp_11_value_from_ptr_22_0, tracked: true } |     a3:Occupied { symidx: i_19_2, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_0_ptr_of_a_17_24, tracked: true } |     a5:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a6:Freed { symidx: temp_1_ele_of_a_17_24_0, tracked: true } |     a7:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Occupied { symidx: temp_2_arithop_24_0, tracked: true, occupy_count: 1 } |  released_gpr_count:9,released_fpr_count:24


    subw    s1,a3,a7
              #                    free a3
              #                    free a7
              #                    free s1
              #                     37   (nop) 
              #                     178  j_24_2 = i32 temp_2_arithop_24_0 
              #                    occupy s1 with temp_2_arithop_24_0
              #                    occupy s2 with j_24_2
    mv      s2, s1
              #                    free s1
              #                    free s2
              #                          jump label: while.head_30 
    j       .while.head_30
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: temp_12_cmp_22_0, tracked: true } |     a2:Freed { symidx: temp_11_value_from_ptr_22_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_0_ptr_of_a_17_24, tracked: true } |     a6:Freed { symidx: temp_1_ele_of_a_17_24_0, tracked: true } |     s1:Freed { symidx: temp_2_arithop_24_0, tracked: true } |     s2:Freed { symidx: j_24_2, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     86   label while.head_30: 
.while.head_30:
              #                     73   temp_13_cmp_29_0 = icmp i32 Sgt j_24_2, -1_0 
              #                    occupy s2 with j_24_2
              #                    occupy a5 with -1_0
    li      a5, -1
              #                    occupy a7 with temp_13_cmp_29_0
    slt     a7,a5,s2
              #                    free s2
              #                    free a5
              #                    free a7
              #                     87   br i1 temp_13_cmp_29_0, label branch_short_circuit_p_true_143, label branch_short_circuit_c_false_143 
              #                    occupy a7 with temp_13_cmp_29_0
              #                    free a7
              #                    occupy a7 with temp_13_cmp_29_0
    bnez    a7, .branch_short_circuit_p_true_143
              #                    free a7
    j       .branch_short_circuit_c_false_143
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: temp_12_cmp_22_0, tracked: true } |     a2:Freed { symidx: temp_11_value_from_ptr_22_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_0_ptr_of_a_17_24, tracked: true } |     a6:Freed { symidx: temp_1_ele_of_a_17_24_0, tracked: true } |     a7:Freed { symidx: temp_13_cmp_29_0, tracked: true } |     s1:Freed { symidx: temp_2_arithop_24_0, tracked: true } |     s2:Freed { symidx: j_24_2, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     83   label branch_short_circuit_p_true_143: 
.branch_short_circuit_p_true_143:
              #                     75   temp_14_ptr_of_a_17_29 = GEP a_17:Array:i32:[None] [Some(j_24_2)] 
              #                    occupy a5 with temp_14_ptr_of_a_17_29
    li      a5, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with j_24_2
    mv      s3, s2
              #                    free s2
              #                    occupy s2 with j_24_2
              #                    store to j_24_2 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with j_24_2
    add     a5,a5,s3
              #                    free s3
    slli a5,a5,2
              #                    occupy a0 with a_17
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                     77   temp_15_ele_of_a_17_29_0 = load temp_14_ptr_of_a_17_29:ptr->i32 
              #                    occupy a5 with temp_14_ptr_of_a_17_29
              #                    occupy s2 with temp_15_ele_of_a_17_29_0
    lw      s2,0(a5)
              #                    free s2
              #                    occupy s2 with temp_15_ele_of_a_17_29_0
              #                    store to temp_15_ele_of_a_17_29_0 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_15_ele_of_a_17_29_0
              #                    free a5
              #                     78   mu a_17:77 
              #                     80   temp_16_cmp_29_0 = icmp i32 Slt temp_1_ele_of_a_17_24_0, temp_15_ele_of_a_17_29_0 
              #                    occupy a6 with temp_1_ele_of_a_17_24_0
              #                    occupy s2 with temp_15_ele_of_a_17_29_0
              #                    load from temp_15_ele_of_a_17_29_0 in mem


    lw      s2,4(sp)
              #                    occupy s4 with temp_16_cmp_29_0
    slt     s4,a6,s2
              #                    free a6
              #                    occupy a6 with temp_1_ele_of_a_17_24_0
              #                    store to temp_1_ele_of_a_17_24_0 in mem offset legal
    sw      a6,84(sp)
              #                    release a6 with temp_1_ele_of_a_17_24_0
              #                    free s2
              #                    occupy s2 with temp_15_ele_of_a_17_29_0
              #                    store to temp_15_ele_of_a_17_29_0 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_15_ele_of_a_17_29_0
              #                    free s4
              #                     85   br i1 temp_16_cmp_29_0, label branch_short_circuit_c_true_143, label branch_short_circuit_c_false_143 
              #                    occupy s4 with temp_16_cmp_29_0
              #                    free s4
              #                    occupy s4 with temp_16_cmp_29_0
    bnez    s4, .branch_short_circuit_c_true_143
              #                    free s4
              #                    occupy s4 with temp_16_cmp_29_0
              #                    store to temp_16_cmp_29_0 in mem offset legal
    sb      s4,3(sp)
              #                    release s4 with temp_16_cmp_29_0
              #                    occupy a5 with temp_14_ptr_of_a_17_29
              #                    store to temp_14_ptr_of_a_17_29 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_14_ptr_of_a_17_29
              #                    occupy a6 with temp_1_ele_of_a_17_24_0
              #                    load from temp_1_ele_of_a_17_24_0 in mem


    lw      a6,84(sp)
              #                    occupy s2 with j_24_2
              #                    load from j_24_2 in mem


    lw      s2,76(sp)
    j       .branch_short_circuit_c_false_143
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: temp_12_cmp_22_0, tracked: true } |     a2:Freed { symidx: temp_11_value_from_ptr_22_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_0_ptr_of_a_17_24, tracked: true } |     a5:Freed { symidx: temp_14_ptr_of_a_17_29, tracked: true } |     a7:Freed { symidx: temp_13_cmp_29_0, tracked: true } |     s1:Freed { symidx: temp_2_arithop_24_0, tracked: true } |     s4:Freed { symidx: temp_16_cmp_29_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     81   label branch_short_circuit_c_true_143: 
.branch_short_circuit_c_true_143:
              #                     48   temp_6_arithop_31_0 = Add i32 j_24_2, 1_0 
              #                    occupy a6 with j_24_2
              #                    load from j_24_2 in mem


    lw      a6,76(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_6_arithop_31_0
    ADDW    s3,a6,s2
              #                    free a6
              #                    occupy a6 with j_24_2
              #                    store to j_24_2 in mem offset legal
    sw      a6,76(sp)
              #                    release a6 with j_24_2
              #                    free s2
              #                    free s3
              #                    occupy s3 with temp_6_arithop_31_0
              #                    store to temp_6_arithop_31_0 in mem offset legal
    sw      s3,48(sp)
              #                    release s3 with temp_6_arithop_31_0
              #                     50   temp_7_ptr_of_a_17_31 = GEP a_17:ptr->i32 [Some(temp_6_arithop_31_0)] 
              #                    occupy a6 with temp_7_ptr_of_a_17_31
    li      a6, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with temp_6_arithop_31_0
              #                    load from temp_6_arithop_31_0 in mem


    lw      s3,48(sp)
    mv      s2, s3
              #                    free s3
              #                    occupy s3 with temp_6_arithop_31_0
              #                    store to temp_6_arithop_31_0 in mem offset legal
    sw      s3,48(sp)
              #                    release s3 with temp_6_arithop_31_0
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
              #                    occupy a0 with a_17
    add     a6,a6,a0
              #                    free a0
              #                    occupy a0 with a_17
              #                    store to a_17 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with a_17
              #                    free a6
              #                     52   (nop) 
              #                     54   (nop) 
              #                     55   mu a_17:54 
              #                     56   store temp_15_ele_of_a_17_29_0:i32 temp_7_ptr_of_a_17_31:ptr->i32 
              #                    occupy a6 with temp_7_ptr_of_a_17_31
              #                    occupy a0 with temp_15_ele_of_a_17_29_0
              #                    load from temp_15_ele_of_a_17_29_0 in mem


    lw      a0,4(sp)
    sw      a0,0(a6)
              #                    free a0
              #                    occupy a0 with temp_15_ele_of_a_17_29_0
              #                    store to temp_15_ele_of_a_17_29_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_15_ele_of_a_17_29_0
              #                    free a6
              #                     57   a_17 = chi a_17:56 
              #                     59   temp_10_arithop_31_0 = Sub i32 j_24_2, 1_0 
              #                    occupy a0 with j_24_2
              #                    load from j_24_2 in mem


    lw      a0,76(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_10_arithop_31_0
              #                    regtab:    a0:Occupied { symidx: j_24_2, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_12_cmp_22_0, tracked: true } |     a2:Freed { symidx: temp_11_value_from_ptr_22_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_0_ptr_of_a_17_24, tracked: true } |     a5:Freed { symidx: temp_14_ptr_of_a_17_29, tracked: true } |     a6:Freed { symidx: temp_7_ptr_of_a_17_31, tracked: true } |     a7:Freed { symidx: temp_13_cmp_29_0, tracked: true } |     s1:Freed { symidx: temp_2_arithop_24_0, tracked: true } |     s2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_10_arithop_31_0, tracked: true, occupy_count: 1 } |     s4:Freed { symidx: temp_16_cmp_29_0, tracked: true } |  released_gpr_count:2,released_fpr_count:24


    subw    s3,a0,s2
              #                    free a0
              #                    occupy a0 with j_24_2
              #                    store to j_24_2 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with j_24_2
              #                    free s2
              #                    free s3
              #                    occupy s3 with temp_10_arithop_31_0
              #                    store to temp_10_arithop_31_0 in mem offset legal
    sw      s3,28(sp)
              #                    release s3 with temp_10_arithop_31_0
              #                     60   (nop) 
              #                     180  j_24_2 = i32 temp_10_arithop_31_0 
              #                    occupy a0 with temp_10_arithop_31_0
              #                    load from temp_10_arithop_31_0 in mem


    lw      a0,28(sp)
              #                    occupy s2 with j_24_2
    mv      s2, a0
              #                    free a0
              #                    occupy a0 with temp_10_arithop_31_0
              #                    store to temp_10_arithop_31_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_10_arithop_31_0
              #                    free s2
              #                    occupy s2 with j_24_2
              #                    store to j_24_2 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with j_24_2
              #                          jump label: while.head_30 
              #                    occupy a0 with a_17
              #                    load from a_17 in mem
    ld      a0,112(sp)
              #                    occupy s4 with temp_16_cmp_29_0
              #                    store to temp_16_cmp_29_0 in mem offset legal
    sb      s4,3(sp)
              #                    release s4 with temp_16_cmp_29_0
              #                    occupy a5 with temp_14_ptr_of_a_17_29
              #                    store to temp_14_ptr_of_a_17_29 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_14_ptr_of_a_17_29
              #                    occupy a6 with temp_7_ptr_of_a_17_31
              #                    store to temp_7_ptr_of_a_17_31 in mem offset legal
    sd      a6,40(sp)
              #                    release a6 with temp_7_ptr_of_a_17_31
              #                    occupy a6 with temp_1_ele_of_a_17_24_0
              #                    load from temp_1_ele_of_a_17_24_0 in mem


    lw      a6,84(sp)
              #                    occupy s2 with j_24_2
              #                    load from j_24_2 in mem


    lw      s2,76(sp)
              #                    occupy a7 with temp_13_cmp_29_0
              #                    store to temp_13_cmp_29_0 in mem offset legal
    sb      a7,22(sp)
              #                    release a7 with temp_13_cmp_29_0
    j       .while.head_30
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: temp_12_cmp_22_0, tracked: true } |     a2:Freed { symidx: temp_11_value_from_ptr_22_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_0_ptr_of_a_17_24, tracked: true } |     a6:Freed { symidx: temp_1_ele_of_a_17_24_0, tracked: true } |     a7:Freed { symidx: temp_13_cmp_29_0, tracked: true } |     s1:Freed { symidx: temp_2_arithop_24_0, tracked: true } |     s2:Freed { symidx: j_24_2, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     82   label branch_short_circuit_c_false_143: 
.branch_short_circuit_c_false_143:
              #                     39   temp_3_arithop_24_0 = Add i32 j_24_2, 1_0 
              #                    occupy s2 with j_24_2
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s3 with temp_3_arithop_24_0
    ADDW    s3,s2,a5
              #                    free s2
              #                    occupy s2 with j_24_2
              #                    store to j_24_2 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with j_24_2
              #                    free a5
              #                    free s3
              #                     41   temp_4_ptr_of_a_17_24 = GEP a_17:ptr->i32 [Some(temp_3_arithop_24_0)] 
              #                    occupy s2 with temp_4_ptr_of_a_17_24
    li      s2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with temp_3_arithop_24_0
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_3_arithop_24_0
              #                    store to temp_3_arithop_24_0 in mem offset legal
    sw      s3,68(sp)
              #                    release s3 with temp_3_arithop_24_0
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
              #                    occupy a0 with a_17
    add     s2,s2,a0
              #                    free a0
              #                    free s2
              #                     42   store temp_1_ele_of_a_17_24_0:i32 temp_4_ptr_of_a_17_24:ptr->i32 
              #                    occupy s2 with temp_4_ptr_of_a_17_24
              #                    occupy a6 with temp_1_ele_of_a_17_24_0
    sw      a6,0(s2)
              #                    free a6
              #                    free s2
              #                     43   a_17 = chi a_17:42 
              #                     45   temp_5_arithop_24_0 = Add i32 i_19_2, 1_0 
              #                    occupy a3 with i_19_2
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s3 with temp_5_arithop_24_0
    ADDW    s3,a3,a5
              #                    free a3
              #                    occupy a3 with i_19_2
              #                    store to i_19_2 in mem offset legal
    sw      a3,104(sp)
              #                    release a3 with i_19_2
              #                    free a5
              #                    free s3
              #                     46   (nop) 
              #                     179  i_19_2 = i32 temp_5_arithop_24_0 
              #                    occupy s3 with temp_5_arithop_24_0
              #                    occupy a3 with i_19_2
    mv      a3, s3
              #                    free s3
              #                    occupy s3 with temp_5_arithop_24_0
              #                    store to temp_5_arithop_24_0 in mem offset legal
    sw      s3,52(sp)
              #                    release s3 with temp_5_arithop_24_0
              #                    free a3
              #                          jump label: while.head_23 
              #                    occupy a1 with temp_12_cmp_22_0
              #                    store to temp_12_cmp_22_0 in mem offset legal
    sb      a1,23(sp)
              #                    release a1 with temp_12_cmp_22_0
              #                    occupy a6 with temp_1_ele_of_a_17_24_0
              #                    store to temp_1_ele_of_a_17_24_0 in mem offset legal
    sw      a6,84(sp)
              #                    release a6 with temp_1_ele_of_a_17_24_0
              #                    occupy a4 with temp_0_ptr_of_a_17_24
              #                    store to temp_0_ptr_of_a_17_24 in mem offset legal
    sd      a4,88(sp)
              #                    release a4 with temp_0_ptr_of_a_17_24
              #                    occupy s2 with temp_4_ptr_of_a_17_24
              #                    store to temp_4_ptr_of_a_17_24 in mem offset legal
    sd      s2,56(sp)
              #                    release s2 with temp_4_ptr_of_a_17_24
              #                    occupy a7 with temp_13_cmp_29_0
              #                    store to temp_13_cmp_29_0 in mem offset legal
    sb      a7,22(sp)
              #                    release a7 with temp_13_cmp_29_0
              #                    occupy s1 with temp_2_arithop_24_0
              #                    store to temp_2_arithop_24_0 in mem offset legal
    sw      s1,72(sp)
              #                    release s1 with temp_2_arithop_24_0
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: temp_12_cmp_22_0, tracked: true } |     a2:Freed { symidx: temp_11_value_from_ptr_22_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     68   label while.exit_23: 
.while.exit_23:
              #                     184  untrack i_19_2 
              #                    occupy a3 with i_19_2
              #                    release a3 with i_19_2
              #                     183  untrack temp_11_value_from_ptr_22_0 
              #                    occupy a2 with temp_11_value_from_ptr_22_0
              #                    release a2 with temp_11_value_from_ptr_22_0
              #                     166  mu a_17:24 
              #                     185  untrack a_17 
              #                    occupy a0 with a_17
              #                    release a0 with a_17
              #                     24   ret 0_0 
              #                    load from ra_insertsort_0 in mem
    ld      ra,168(sp)
              #                    load from s0_insertsort_0 in mem
    ld      s0,160(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,176
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     19   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 176|s0_main:8 at 168|a:40 at 128|temp_17_ptr_of_a_38:8 at 120|temp_18_ptr_of_a_38:8 at 112|temp_19_ptr_of_a_38:8 at 104|temp_20_ptr_of_a_38:8 at 96|temp_21_ptr_of_a_38:8 at 88|temp_22_ptr_of_a_38:8 at 80|temp_23_ptr_of_a_38:8 at 72|temp_24_ptr_of_a_38:8 at 64|temp_25_ptr_of_a_38:8 at 56|temp_26_ptr_of_a_38:8 at 48|i _s38 _i0:4 at 44|i _s38 _i2:4 at 40|temp_27_ele_ptr_of_a_38:8 at 32|temp_28_ret_of_insertsort _s38 _i0:4 at 28|tmp _s55 _i0:4 at 24|temp_29_ptr_of_a_38:8 at 16|temp_30_ele_of_a_38 _s55 _i0:4 at 12|temp_31_arithop _s55 _i0:4 at 8|temp_32_value_from_ptr _s53 _i0:4 at 4|temp_33_cmp _s53 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-184
              #                    store to ra_main_0 in mem offset legal
    sd      ra,176(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,168(sp)
    addi    s0,sp,184
              #                     167  n_0_1 = chi n_0_0:19 
              #                     91   alloc Array:i32:[Some(10_0)] [a_38] 
              #                     92   alloc ptr->i32 [temp_17_ptr_of_a_38_38] 
              #                     96   alloc ptr->i32 [temp_18_ptr_of_a_38_38] 
              #                     100  alloc ptr->i32 [temp_19_ptr_of_a_38_38] 
              #                     104  alloc ptr->i32 [temp_20_ptr_of_a_38_38] 
              #                     108  alloc ptr->i32 [temp_21_ptr_of_a_38_38] 
              #                     112  alloc ptr->i32 [temp_22_ptr_of_a_38_38] 
              #                     116  alloc ptr->i32 [temp_23_ptr_of_a_38_38] 
              #                     120  alloc ptr->i32 [temp_24_ptr_of_a_38_38] 
              #                     124  alloc ptr->i32 [temp_25_ptr_of_a_38_38] 
              #                     128  alloc ptr->i32 [temp_26_ptr_of_a_38_38] 
              #                     132  alloc i32 [i_38] 
              #                     134  alloc ptr->i32 [temp_27_ele_ptr_of_a_38_38] 
              #                     136  alloc i32 [temp_28_ret_of_insertsort_38] 
              #                     141  alloc i32 [tmp_55] 
              #                     143  alloc ptr->i32 [temp_29_ptr_of_a_38_55] 
              #                     145  alloc i32 [temp_30_ele_of_a_38_55] 
              #                     152  alloc i32 [temp_31_arithop_55] 
              #                     155  alloc i32 [temp_32_value_from_ptr_53] 
              #                     158  alloc i1 [temp_33_cmp_53] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     88   store 10_0:i32 *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with 10_0
    li      a1, 10
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     89   n_0_2 = chi n_0_1:88 
              #                     90    
              #                     93   temp_17_ptr_of_a_38_38 = GEP a_38_0:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a2 with temp_17_ptr_of_a_38_38
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     94   store 4_0:i32 temp_17_ptr_of_a_38_38:ptr->i32 
              #                    occupy a2 with temp_17_ptr_of_a_38_38
              #                    occupy a4 with 4_0
    li      a4, 4
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     189  untrack temp_17_ptr_of_a_38_38 
              #                    occupy a2 with temp_17_ptr_of_a_38_38
              #                    release a2 with temp_17_ptr_of_a_38_38
              #                     95   a_38_1 = chi a_38_0:94 
              #                     97   temp_18_ptr_of_a_38_38 = GEP a_38_1:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a2 with temp_18_ptr_of_a_38_38
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     98   store 3_0:i32 temp_18_ptr_of_a_38_38:ptr->i32 
              #                    occupy a2 with temp_18_ptr_of_a_38_38
              #                    occupy a6 with 3_0
    li      a6, 3
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     187  untrack temp_18_ptr_of_a_38_38 
              #                    occupy a2 with temp_18_ptr_of_a_38_38
              #                    release a2 with temp_18_ptr_of_a_38_38
              #                     99   a_38_2 = chi a_38_1:98 
              #                     101  temp_19_ptr_of_a_38_38 = GEP a_38_2:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy a2 with temp_19_ptr_of_a_38_38
    li      a2, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 2
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     102  store 9_0:i32 temp_19_ptr_of_a_38_38:ptr->i32 
              #                    occupy a2 with temp_19_ptr_of_a_38_38
              #                    occupy s1 with 9_0
    li      s1, 9
    sw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                     197  untrack temp_19_ptr_of_a_38_38 
              #                    occupy a2 with temp_19_ptr_of_a_38_38
              #                    release a2 with temp_19_ptr_of_a_38_38
              #                     103  a_38_3 = chi a_38_2:102 
              #                     105  temp_20_ptr_of_a_38_38 = GEP a_38_3:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy a2 with temp_20_ptr_of_a_38_38
    li      a2, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 3
    add     a2,a2,s2
              #                    free s2
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     106  store 2_0:i32 temp_20_ptr_of_a_38_38:ptr->i32 
              #                    occupy a2 with temp_20_ptr_of_a_38_38
              #                    occupy s3 with 2_0
    li      s3, 2
    sw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                     188  untrack temp_20_ptr_of_a_38_38 
              #                    occupy a2 with temp_20_ptr_of_a_38_38
              #                    release a2 with temp_20_ptr_of_a_38_38
              #                     107  a_38_4 = chi a_38_3:106 
              #                     109  temp_21_ptr_of_a_38_38 = GEP a_38_4:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy a2 with temp_21_ptr_of_a_38_38
    li      a2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 4
    add     a2,a2,s4
              #                    free s4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     110  store 0_0:i32 temp_21_ptr_of_a_38_38:ptr->i32 
              #                    occupy a2 with temp_21_ptr_of_a_38_38
              #                    occupy s5 with 0_0
    li      s5, 0
    sw      s5,0(a2)
              #                    free s5
              #                    free a2
              #                     192  untrack temp_21_ptr_of_a_38_38 
              #                    occupy a2 with temp_21_ptr_of_a_38_38
              #                    release a2 with temp_21_ptr_of_a_38_38
              #                     111  a_38_5 = chi a_38_4:110 
              #                     113  temp_22_ptr_of_a_38_38 = GEP a_38_5:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a2 with temp_22_ptr_of_a_38_38
    li      a2, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 5
    add     a2,a2,s6
              #                    free s6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     114  store 1_0:i32 temp_22_ptr_of_a_38_38:ptr->i32 
              #                    occupy a2 with temp_22_ptr_of_a_38_38
              #                    occupy s7 with 1_0
    li      s7, 1
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     196  untrack temp_22_ptr_of_a_38_38 
              #                    occupy a2 with temp_22_ptr_of_a_38_38
              #                    release a2 with temp_22_ptr_of_a_38_38
              #                     115  a_38_6 = chi a_38_5:114 
              #                     117  temp_23_ptr_of_a_38_38 = GEP a_38_6:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a2 with temp_23_ptr_of_a_38_38
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     118  store 6_0:i32 temp_23_ptr_of_a_38_38:ptr->i32 
              #                    occupy a2 with temp_23_ptr_of_a_38_38
              #                    occupy s7 with 6_0
    li      s7, 6
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     190  untrack temp_23_ptr_of_a_38_38 
              #                    occupy a2 with temp_23_ptr_of_a_38_38
              #                    release a2 with temp_23_ptr_of_a_38_38
              #                     119  a_38_7 = chi a_38_6:118 
              #                     121  temp_24_ptr_of_a_38_38 = GEP a_38_7:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a2 with temp_24_ptr_of_a_38_38
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 7
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     122  store 5_0:i32 temp_24_ptr_of_a_38_38:ptr->i32 
              #                    occupy a2 with temp_24_ptr_of_a_38_38
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     191  untrack temp_24_ptr_of_a_38_38 
              #                    occupy a2 with temp_24_ptr_of_a_38_38
              #                    release a2 with temp_24_ptr_of_a_38_38
              #                     123  a_38_8 = chi a_38_7:122 
              #                     125  temp_25_ptr_of_a_38_38 = GEP a_38_8:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a2 with temp_25_ptr_of_a_38_38
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 8
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     126  store 7_0:i32 temp_25_ptr_of_a_38_38:ptr->i32 
              #                    occupy a2 with temp_25_ptr_of_a_38_38
              #                    occupy s7 with 7_0
    li      s7, 7
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     195  untrack temp_25_ptr_of_a_38_38 
              #                    occupy a2 with temp_25_ptr_of_a_38_38
              #                    release a2 with temp_25_ptr_of_a_38_38
              #                     127  a_38_9 = chi a_38_8:126 
              #                     129  temp_26_ptr_of_a_38_38 = GEP a_38_9:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a2 with temp_26_ptr_of_a_38_38
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 9
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     130  store 8_0:i32 temp_26_ptr_of_a_38_38:ptr->i32 
              #                    occupy a2 with temp_26_ptr_of_a_38_38
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     193  untrack temp_26_ptr_of_a_38_38 
              #                    occupy a2 with temp_26_ptr_of_a_38_38
              #                    release a2 with temp_26_ptr_of_a_38_38
              #                     131  a_38_10 = chi a_38_9:130 
              #                     133   
              #                     135  temp_27_ele_ptr_of_a_38_38 = GEP a_38_10:Array:i32:[Some(10_0)] [] 
              #                    occupy a2 with temp_27_ele_ptr_of_a_38_38
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     137  temp_28_ret_of_insertsort_38_0 =  Call i32 insertsort_0(temp_27_ele_ptr_of_a_38_38) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_27_ele_ptr_of_a_38_38
              #                    store to temp_27_ele_ptr_of_a_38_38 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_27_ele_ptr_of_a_38_38
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_27_ele_ptr_of_a_38_38_0
              #                    load from temp_27_ele_ptr_of_a_38_38 in mem
    ld      a0,32(sp)
              #                    arg load ended


    call    insertsort
              #                     194  untrack temp_27_ele_ptr_of_a_38_38 
              #                     168  mu n_0_2:137 
              #                     169  mu a_38_10:137 
              #                     170  a_38_11 = chi a_38_10:137 
              #                     138  (nop) 
              #                     181  i_38_2 = i32 temp_28_ret_of_insertsort_38_0 
              #                    occupy a0 with temp_28_ret_of_insertsort_38_0
              #                    occupy a1 with i_38_2
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     186  untrack temp_28_ret_of_insertsort_38_0 
              #                    occupy a0 with temp_28_ret_of_insertsort_38_0
              #                    release a0 with temp_28_ret_of_insertsort_38_0
              #                          jump label: while.head_54 
    j       .while.head_54
              #                    regtab     a1:Freed { symidx: i_38_2, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     160  label while.head_54: 
.while.head_54:
              #                     156  temp_32_value_from_ptr_53_0 = load *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a2 with temp_32_value_from_ptr_53_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     157  mu n_0_2:156 
              #                     159  temp_33_cmp_53_0 = icmp i32 Slt i_38_2, temp_32_value_from_ptr_53_0 
              #                    occupy a1 with i_38_2
              #                    occupy a2 with temp_32_value_from_ptr_53_0
              #                    occupy a3 with temp_33_cmp_53_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     163  br i1 temp_33_cmp_53_0, label while.body_54, label while.exit_54 
              #                    occupy a3 with temp_33_cmp_53_0
              #                    free a3
              #                    occupy a3 with temp_33_cmp_53_0
    bnez    a3, .while.body_54
              #                    free a3
    j       .while.exit_54
              #                    regtab     a1:Freed { symidx: i_38_2, tracked: true } |     a2:Freed { symidx: temp_32_value_from_ptr_53_0, tracked: true } |     a3:Freed { symidx: temp_33_cmp_53_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     161  label while.body_54: 
.while.body_54:
              #                     142   
              #                     144  temp_29_ptr_of_a_38_55 = GEP a_38_11:Array:i32:[Some(10_0)] [Some(i_38_2)] 
              #                    occupy a0 with temp_29_ptr_of_a_38_55
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_38_2
    mv      a4, a1
              #                    free a1
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,128
              #                    free a0
              #                     146  temp_30_ele_of_a_38_55_0 = load temp_29_ptr_of_a_38_55:ptr->i32 
              #                    occupy a0 with temp_29_ptr_of_a_38_55
              #                    occupy a5 with temp_30_ele_of_a_38_55_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     147  mu a_38_11:146 
              #                     148  (nop) 
              #                     149   Call void putint_0(temp_30_ele_of_a_38_55_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_29_ptr_of_a_38_55
              #                    store to temp_29_ptr_of_a_38_55 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_29_ptr_of_a_38_55
              #                    occupy a1 with i_38_2
              #                    store to i_38_2 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with i_38_2
              #                    occupy a2 with temp_32_value_from_ptr_53_0
              #                    store to temp_32_value_from_ptr_53_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_32_value_from_ptr_53_0
              #                    occupy a3 with temp_33_cmp_53_0
              #                    store to temp_33_cmp_53_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_33_cmp_53_0
              #                    occupy a5 with temp_30_ele_of_a_38_55_0
              #                    store to temp_30_ele_of_a_38_55_0 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_30_ele_of_a_38_55_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_ele_of_a_38_55_0_0
              #                    load from temp_30_ele_of_a_38_55_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     150  (nop) 
              #                     151   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     153  temp_31_arithop_55_0 = Add i32 i_38_2, 1_0 
              #                    occupy a0 with i_38_2
              #                    load from i_38_2 in mem


    lw      a0,40(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_31_arithop_55_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     154  (nop) 
              #                     182  i_38_2 = i32 temp_31_arithop_55_0 
              #                    occupy a2 with temp_31_arithop_55_0
              #                    occupy a0 with i_38_2
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_54 
              #                    occupy a0 with i_38_2
              #                    store to i_38_2 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with i_38_2
              #                    occupy a1 with i_38_2
              #                    load from i_38_2 in mem


    lw      a1,40(sp)
              #                    occupy a2 with temp_31_arithop_55_0
              #                    store to temp_31_arithop_55_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_31_arithop_55_0
    j       .while.head_54
              #                    regtab     a1:Freed { symidx: i_38_2, tracked: true } |     a2:Freed { symidx: temp_32_value_from_ptr_53_0, tracked: true } |     a3:Freed { symidx: temp_33_cmp_53_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     162  label while.exit_54: 
.while.exit_54:
              #                     198  untrack i_38_2 
              #                    occupy a1 with i_38_2
              #                    release a1 with i_38_2
              #                     171  mu n_0_2:140 
              #                     140  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,176(sp)
              #                    load from s0_main_0 in mem
    ld      s0,168(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,184
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
