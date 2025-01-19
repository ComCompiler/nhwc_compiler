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
              #                     29   Define matrix_multiply_0 "" -> matrix_multiply_ret_0 
    .globl matrix_multiply
    .type matrix_multiply,@function
matrix_multiply:
              #                    mem layout:|ra_matrix_multiply:8 at 120|s0_matrix_multiply:8 at 112|i _s21 _i1:4 at 108|j _s25 _i1:4 at 104|temp_0_arithop _s25 _i0:4 at 100|k _s29 _i1:4 at 96|temp_1_arithop _s29 _i0:4 at 92|none:4 at 88|temp_2_ptr_of_*res_0:8 at 80|temp_3_ptr_of_*res_0:8 at 72|temp_4_ele_of_*res_0 _s33 _i0:4 at 68|none:4 at 64|temp_5_ptr_of_*a_0:8 at 56|temp_6_ele_of_*a_0 _s33 _i0:4 at 52|none:4 at 48|temp_7_ptr_of_*b_0:8 at 40|temp_8_ele_of_*b_0 _s33 _i0:4 at 36|temp_9_arithop _s33 _i0:4 at 32|temp_10_arithop _s33 _i0:4 at 28|temp_11_arithop _s33 _i0:4 at 24|temp_12_value_from_ptr _s23 _i0:4 at 20|temp_13_cmp _s23 _i0:1 at 19|none:3 at 16|temp_14_value_from_ptr _s27 _i0:4 at 12|temp_15_cmp _s27 _i0:1 at 11|none:3 at 8|temp_16_value_from_ptr _s31 _i0:4 at 4|temp_17_cmp _s31 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-128
              #                    store to ra_matrix_multiply_0 in mem offset legal
    sd      ra,120(sp)
              #                    store to s0_matrix_multiply_0 in mem offset legal
    sd      s0,112(sp)
    addi    s0,sp,128
              #                     220  res_0_1 = chi res_0_0:29 
              #                     32   alloc i32 [i_21] 
              #                     34   alloc i32 [j_25] 
              #                     35   alloc i32 [temp_0_arithop_25] 
              #                     39   alloc i32 [k_29] 
              #                     40   alloc i32 [temp_1_arithop_29] 
              #                     43   alloc ptr->i32 [temp_2_ptr_of_*res_0_33] 
              #                     45   alloc ptr->i32 [temp_3_ptr_of_*res_0_33] 
              #                     47   alloc i32 [temp_4_ele_of_*res_0_33] 
              #                     50   alloc ptr->i32 [temp_5_ptr_of_*a_0_33] 
              #                     52   alloc i32 [temp_6_ele_of_*a_0_33] 
              #                     55   alloc ptr->i32 [temp_7_ptr_of_*b_0_33] 
              #                     57   alloc i32 [temp_8_ele_of_*b_0_33] 
              #                     60   alloc i32 [temp_9_arithop_33] 
              #                     62   alloc i32 [temp_10_arithop_33] 
              #                     66   alloc i32 [temp_11_arithop_33] 
              #                     69   alloc i32 [temp_12_value_from_ptr_23] 
              #                     72   alloc i1 [temp_13_cmp_23] 
              #                     79   alloc i32 [temp_14_value_from_ptr_27] 
              #                     82   alloc i1 [temp_15_cmp_27] 
              #                     88   alloc i32 [temp_16_value_from_ptr_31] 
              #                     91   alloc i1 [temp_17_cmp_31] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     31   (nop) 
              #                     70   temp_12_value_from_ptr_23_0 = load *m1_0:ptr->i32 
              #                    occupy a0 with *m1_0
              #                       load label m1 as ptr to reg
    la      a0, m1
              #                    occupy reg a0 with *m1_0
              #                    occupy a1 with temp_12_value_from_ptr_23_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     71   mu m1_0_0:70 
              #                     80   temp_14_value_from_ptr_27_0 = load *n2_0:ptr->i32 
              #                    occupy a2 with *n2_0
              #                       load label n2 as ptr to reg
    la      a2, n2
              #                    occupy reg a2 with *n2_0
              #                    occupy a3 with temp_14_value_from_ptr_27_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     81   mu n2_0_0:80 
              #                     89   temp_16_value_from_ptr_31_0 = load *n1_0:ptr->i32 
              #                    occupy a4 with *n1_0
              #                       load label n1 as ptr to reg
    la      a4, n1
              #                    occupy reg a4 with *n1_0
              #                    occupy a5 with temp_16_value_from_ptr_31_0
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     90   mu n1_0_0:89 
              #                     262  i_21_1 = i32 0_0 
              #                    occupy a6 with i_21_1
    li      a6, 0
              #                    free a6
              #                          jump label: while.head_24 
    j       .while.head_24
              #                    regtab     a1:Freed { symidx: temp_12_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: temp_14_value_from_ptr_27_0, tracked: true } |     a5:Freed { symidx: temp_16_value_from_ptr_31_0, tracked: true } |     a6:Freed { symidx: i_21_1, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     74   label while.head_24: 
.while.head_24:
              #                     73   temp_13_cmp_23_0 = icmp i32 Slt i_21_1, temp_12_value_from_ptr_23_0 
              #                    occupy a6 with i_21_1
              #                    occupy a1 with temp_12_value_from_ptr_23_0
              #                    occupy a0 with temp_13_cmp_23_0
    slt     a0,a6,a1
              #                    free a6
              #                    free a1
              #                    free a0
              #                     77   br i1 temp_13_cmp_23_0, label while.body_24, label while.exit_24 
              #                    occupy a0 with temp_13_cmp_23_0
              #                    free a0
              #                    occupy a0 with temp_13_cmp_23_0
    bnez    a0, .while.body_24
              #                    free a0
    j       .while.exit_24
              #                    regtab     a0:Freed { symidx: temp_13_cmp_23_0, tracked: true } |     a1:Freed { symidx: temp_12_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: temp_14_value_from_ptr_27_0, tracked: true } |     a5:Freed { symidx: temp_16_value_from_ptr_31_0, tracked: true } |     a6:Freed { symidx: i_21_1, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     75   label while.body_24: 
.while.body_24:
              #                     33   (nop) 
              #                     263  j_25_1 = i32 0_0 
              #                    occupy a2 with j_25_1
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_28 
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: temp_13_cmp_23_0, tracked: true } |     a1:Freed { symidx: temp_12_value_from_ptr_23_0, tracked: true } |     a2:Freed { symidx: j_25_1, tracked: true } |     a3:Freed { symidx: temp_14_value_from_ptr_27_0, tracked: true } |     a5:Freed { symidx: temp_16_value_from_ptr_31_0, tracked: true } |     a6:Freed { symidx: i_21_1, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     84   label while.head_28: 
.while.head_28:
              #                     83   temp_15_cmp_27_0 = icmp i32 Slt j_25_1, temp_14_value_from_ptr_27_0 
              #                    occupy a2 with j_25_1
              #                    occupy a3 with temp_14_value_from_ptr_27_0
              #                    occupy a4 with temp_15_cmp_27_0
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     87   br i1 temp_15_cmp_27_0, label while.body_28, label while.exit_28 
              #                    occupy a4 with temp_15_cmp_27_0
              #                    free a4
              #                    occupy a4 with temp_15_cmp_27_0
    bnez    a4, .while.body_28
              #                    free a4
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: temp_13_cmp_23_0, tracked: true } |     a1:Freed { symidx: temp_12_value_from_ptr_23_0, tracked: true } |     a2:Freed { symidx: j_25_1, tracked: true } |     a3:Freed { symidx: temp_14_value_from_ptr_27_0, tracked: true } |     a4:Freed { symidx: temp_15_cmp_27_0, tracked: true } |     a5:Freed { symidx: temp_16_value_from_ptr_31_0, tracked: true } |     a6:Freed { symidx: i_21_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     85   label while.body_28: 
.while.body_28:
              #                     38   (nop) 
              #                     44   temp_2_ptr_of_*res_0_33 = GEP *res_0:ptr->Array:i32:[Some(100_0)] [Some(i_21_1), Some(j_25_1)] 
              #                    occupy a7 with temp_2_ptr_of_*res_0_33
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with 100_0
    li      s2, 100
              #                    occupy a6 with i_21_1
    mul     s1,s2,a6
              #                    free s2
              #                    free a6
    add     a7,a7,s1
              #                    free s1
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with j_25_1
    mv      s3, a2
              #                    free a2
    add     a7,a7,s3
              #                    free s3
    slli a7,a7,2
              #                    occupy s4 with *res_0
              #                       load label res as ptr to reg
    la      s4, res
              #                    occupy reg s4 with *res_0
    add     a7,a7,s4
              #                    free s4
              #                    free a7
              #                     46   (nop) 
              #                     264  k_29_1 = i32 0_0 
              #                    occupy s4 with k_29_1
    li      s4, 0
              #                    free s4
              #                    occupy s4 with k_29_1
              #                    store to k_29_1 in mem offset legal
    sw      s4,96(sp)
              #                    release s4 with k_29_1
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: temp_13_cmp_23_0, tracked: true } |     a1:Freed { symidx: temp_12_value_from_ptr_23_0, tracked: true } |     a2:Freed { symidx: j_25_1, tracked: true } |     a3:Freed { symidx: temp_14_value_from_ptr_27_0, tracked: true } |     a4:Freed { symidx: temp_15_cmp_27_0, tracked: true } |     a5:Freed { symidx: temp_16_value_from_ptr_31_0, tracked: true } |     a6:Freed { symidx: i_21_1, tracked: true } |     a7:Freed { symidx: temp_2_ptr_of_*res_0_33, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     93   label while.head_32: 
.while.head_32:
              #                     92   temp_17_cmp_31_0 = icmp i32 Slt k_29_1, temp_16_value_from_ptr_31_0 
              #                    occupy s1 with k_29_1
              #                    load from k_29_1 in mem


    lw      s1,96(sp)
              #                    occupy a5 with temp_16_value_from_ptr_31_0
              #                    occupy s2 with temp_17_cmp_31_0
    slt     s2,s1,a5
              #                    free s1
              #                    occupy s1 with k_29_1
              #                    store to k_29_1 in mem offset legal
    sw      s1,96(sp)
              #                    release s1 with k_29_1
              #                    free a5
              #                    occupy a5 with temp_16_value_from_ptr_31_0
              #                    store to temp_16_value_from_ptr_31_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_16_value_from_ptr_31_0
              #                    free s2
              #                     96   br i1 temp_17_cmp_31_0, label while.body_32, label while.exit_32 
              #                    occupy s2 with temp_17_cmp_31_0
              #                    free s2
              #                    occupy s2 with temp_17_cmp_31_0
    bnez    s2, .while.body_32
              #                    free s2
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: temp_13_cmp_23_0, tracked: true } |     a1:Freed { symidx: temp_12_value_from_ptr_23_0, tracked: true } |     a2:Freed { symidx: j_25_1, tracked: true } |     a3:Freed { symidx: temp_14_value_from_ptr_27_0, tracked: true } |     a4:Freed { symidx: temp_15_cmp_27_0, tracked: true } |     a6:Freed { symidx: i_21_1, tracked: true } |     a7:Freed { symidx: temp_2_ptr_of_*res_0_33, tracked: true } |     s2:Freed { symidx: temp_17_cmp_31_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     94   label while.body_32: 
.while.body_32:
              #                     48   temp_4_ele_of_*res_0_33_0 = load temp_2_ptr_of_*res_0_33:ptr->i32 
              #                    occupy a7 with temp_2_ptr_of_*res_0_33
              #                    occupy a5 with temp_4_ele_of_*res_0_33_0
    lw      a5,0(a7)
              #                    free a5
              #                    occupy a5 with temp_4_ele_of_*res_0_33_0
              #                    store to temp_4_ele_of_*res_0_33_0 in mem offset legal
    sw      a5,68(sp)
              #                    release a5 with temp_4_ele_of_*res_0_33_0
              #                    free a7
              #                     49   mu res_0_4:48 
              #                     51   temp_5_ptr_of_*a_0_33 = GEP *a_0:Array:i32:[None, Some(100_0)] [Some(i_21_1), Some(k_29_1)] 
              #                    occupy a5 with temp_5_ptr_of_*a_0_33
    li      a5, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with 100_0
    li      s3, 100
              #                    occupy a6 with i_21_1
    mul     s1,s3,a6
              #                    free s3
              #                    free a6
              #                    occupy a6 with i_21_1
              #                    store to i_21_1 in mem offset legal
    sw      a6,108(sp)
              #                    release a6 with i_21_1
    add     a5,a5,s1
              #                    free s1
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with k_29_1
              #                    load from k_29_1 in mem


    lw      s1,96(sp)
    mv      a6, s1
              #                    free s1
              #                    occupy s1 with k_29_1
              #                    store to k_29_1 in mem offset legal
    sw      s1,96(sp)
              #                    release s1 with k_29_1
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a6 with *a_0
              #                       load label a as ptr to reg
    la      a6, a
              #                    occupy reg a6 with *a_0
    add     a5,a5,a6
              #                    free a6
              #                    free a5
              #                     53   temp_6_ele_of_*a_0_33_0 = load temp_5_ptr_of_*a_0_33:ptr->i32 
              #                    occupy a5 with temp_5_ptr_of_*a_0_33
              #                    occupy a6 with temp_6_ele_of_*a_0_33_0
    lw      a6,0(a5)
              #                    free a6
              #                    occupy a6 with temp_6_ele_of_*a_0_33_0
              #                    store to temp_6_ele_of_*a_0_33_0 in mem offset legal
    sw      a6,52(sp)
              #                    release a6 with temp_6_ele_of_*a_0_33_0
              #                    free a5
              #                     54   mu a_0_0:53 
              #                     56   temp_7_ptr_of_*b_0_33 = GEP *b_0:Array:i32:[None, Some(100_0)] [Some(k_29_1), Some(j_25_1)] 
              #                    occupy a6 with temp_7_ptr_of_*b_0_33
    li      a6, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with 100_0
    li      s3, 100
              #                    occupy s4 with k_29_1
              #                    load from k_29_1 in mem


    lw      s4,96(sp)
    mul     s1,s3,s4
              #                    free s3
              #                    free s4
              #                    occupy s4 with k_29_1
              #                    store to k_29_1 in mem offset legal
    sw      s4,96(sp)
              #                    release s4 with k_29_1
    add     a6,a6,s1
              #                    free s1
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with j_25_1
    mv      s1, a2
              #                    free a2
              #                    occupy a2 with j_25_1
              #                    store to j_25_1 in mem offset legal
    sw      a2,104(sp)
              #                    release a2 with j_25_1
    add     a6,a6,s1
              #                    free s1
    slli a6,a6,2
              #                    occupy a2 with *b_0
              #                       load label b as ptr to reg
    la      a2, b
              #                    occupy reg a2 with *b_0
    add     a6,a6,a2
              #                    free a2
              #                    free a6
              #                     58   temp_8_ele_of_*b_0_33_0 = load temp_7_ptr_of_*b_0_33:ptr->i32 
              #                    occupy a6 with temp_7_ptr_of_*b_0_33
              #                    occupy a2 with temp_8_ele_of_*b_0_33_0
    lw      a2,0(a6)
              #                    free a2
              #                    occupy a2 with temp_8_ele_of_*b_0_33_0
              #                    store to temp_8_ele_of_*b_0_33_0 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_8_ele_of_*b_0_33_0
              #                    free a6
              #                     59   mu b_0_0:58 
              #                     61   temp_9_arithop_33_0 = Mul i32 temp_6_ele_of_*a_0_33_0, temp_8_ele_of_*b_0_33_0 
              #                    occupy a2 with temp_9_arithop_33_0
              #                    occupy s1 with temp_6_ele_of_*a_0_33_0
              #                    load from temp_6_ele_of_*a_0_33_0 in mem


    lw      s1,52(sp)
              #                    occupy s3 with temp_8_ele_of_*b_0_33_0
              #                    load from temp_8_ele_of_*b_0_33_0 in mem


    lw      s3,36(sp)
    mulw    a2,s1,s3
              #                    free s1
              #                    occupy s1 with temp_6_ele_of_*a_0_33_0
              #                    store to temp_6_ele_of_*a_0_33_0 in mem offset legal
    sw      s1,52(sp)
              #                    release s1 with temp_6_ele_of_*a_0_33_0
              #                    free s3
              #                    occupy s3 with temp_8_ele_of_*b_0_33_0
              #                    store to temp_8_ele_of_*b_0_33_0 in mem offset legal
    sw      s3,36(sp)
              #                    release s3 with temp_8_ele_of_*b_0_33_0
              #                    free a2
              #                    occupy a2 with temp_9_arithop_33_0
              #                    store to temp_9_arithop_33_0 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with temp_9_arithop_33_0
              #                     63   temp_10_arithop_33_0 = Add i32 temp_4_ele_of_*res_0_33_0, temp_9_arithop_33_0 
              #                    occupy a2 with temp_4_ele_of_*res_0_33_0
              #                    load from temp_4_ele_of_*res_0_33_0 in mem


    lw      a2,68(sp)
              #                    occupy s1 with temp_9_arithop_33_0
              #                    load from temp_9_arithop_33_0 in mem


    lw      s1,32(sp)
              #                    occupy s3 with temp_10_arithop_33_0
    ADDW    s3,a2,s1
              #                    free a2
              #                    occupy a2 with temp_4_ele_of_*res_0_33_0
              #                    store to temp_4_ele_of_*res_0_33_0 in mem offset legal
    sw      a2,68(sp)
              #                    release a2 with temp_4_ele_of_*res_0_33_0
              #                    free s1
              #                    occupy s1 with temp_9_arithop_33_0
              #                    store to temp_9_arithop_33_0 in mem offset legal
    sw      s1,32(sp)
              #                    release s1 with temp_9_arithop_33_0
              #                    free s3
              #                    occupy s3 with temp_10_arithop_33_0
              #                    store to temp_10_arithop_33_0 in mem offset legal
    sw      s3,28(sp)
              #                    release s3 with temp_10_arithop_33_0
              #                     64   store temp_10_arithop_33_0:i32 temp_2_ptr_of_*res_0_33:ptr->i32 
              #                    occupy a7 with temp_2_ptr_of_*res_0_33
              #                    occupy a2 with temp_10_arithop_33_0
              #                    load from temp_10_arithop_33_0 in mem


    lw      a2,28(sp)
    sw      a2,0(a7)
              #                    free a2
              #                    occupy a2 with temp_10_arithop_33_0
              #                    store to temp_10_arithop_33_0 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_10_arithop_33_0
              #                    free a7
              #                     65   res_0_5 = chi res_0_4:64 
              #                     67   temp_11_arithop_33_0 = Add i32 k_29_1, 1_0 
              #                    occupy a2 with k_29_1
              #                    load from k_29_1 in mem


    lw      a2,96(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with temp_11_arithop_33_0
    ADDW    s3,a2,s1
              #                    free a2
              #                    occupy a2 with k_29_1
              #                    store to k_29_1 in mem offset legal
    sw      a2,96(sp)
              #                    release a2 with k_29_1
              #                    free s1
              #                    free s3
              #                    occupy s3 with temp_11_arithop_33_0
              #                    store to temp_11_arithop_33_0 in mem offset legal
    sw      s3,24(sp)
              #                    release s3 with temp_11_arithop_33_0
              #                     68   (nop) 
              #                     265  k_29_1 = i32 temp_11_arithop_33_0 
              #                    occupy a2 with temp_11_arithop_33_0
              #                    load from temp_11_arithop_33_0 in mem


    lw      a2,24(sp)
              #                    occupy s1 with k_29_1
    mv      s1, a2
              #                    free a2
              #                    occupy a2 with temp_11_arithop_33_0
              #                    store to temp_11_arithop_33_0 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with temp_11_arithop_33_0
              #                    free s1
              #                    occupy s1 with k_29_1
              #                    store to k_29_1 in mem offset legal
    sw      s1,96(sp)
              #                    release s1 with k_29_1
              #                          jump label: while.head_32 
              #                    occupy a5 with temp_5_ptr_of_*a_0_33
              #                    store to temp_5_ptr_of_*a_0_33 in mem offset legal
    sd      a5,56(sp)
              #                    release a5 with temp_5_ptr_of_*a_0_33
              #                    occupy a5 with temp_16_value_from_ptr_31_0
              #                    load from temp_16_value_from_ptr_31_0 in mem


    lw      a5,4(sp)
              #                    occupy a6 with temp_7_ptr_of_*b_0_33
              #                    store to temp_7_ptr_of_*b_0_33 in mem offset legal
    sd      a6,40(sp)
              #                    release a6 with temp_7_ptr_of_*b_0_33
              #                    occupy a6 with i_21_1
              #                    load from i_21_1 in mem


    lw      a6,108(sp)
              #                    occupy s2 with temp_17_cmp_31_0
              #                    store to temp_17_cmp_31_0 in mem offset legal
    sb      s2,3(sp)
              #                    release s2 with temp_17_cmp_31_0
              #                    occupy a2 with j_25_1
              #                    load from j_25_1 in mem


    lw      a2,104(sp)
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: temp_13_cmp_23_0, tracked: true } |     a1:Freed { symidx: temp_12_value_from_ptr_23_0, tracked: true } |     a2:Freed { symidx: j_25_1, tracked: true } |     a3:Freed { symidx: temp_14_value_from_ptr_27_0, tracked: true } |     a4:Freed { symidx: temp_15_cmp_27_0, tracked: true } |     a6:Freed { symidx: i_21_1, tracked: true } |     a7:Freed { symidx: temp_2_ptr_of_*res_0_33, tracked: true } |     s2:Freed { symidx: temp_17_cmp_31_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     95   label while.exit_32: 
.while.exit_32:
              #                     41   temp_1_arithop_29_0 = Add i32 j_25_1, 1_0 
              #                    occupy a2 with j_25_1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s1 with temp_1_arithop_29_0
    ADDW    s1,a2,a5
              #                    free a2
              #                    occupy a2 with j_25_1
              #                    store to j_25_1 in mem offset legal
    sw      a2,104(sp)
              #                    release a2 with j_25_1
              #                    free a5
              #                    free s1
              #                     42   (nop) 
              #                     266  j_25_1 = i32 temp_1_arithop_29_0 
              #                    occupy s1 with temp_1_arithop_29_0
              #                    occupy a2 with j_25_1
    mv      a2, s1
              #                    free s1
              #                    occupy s1 with temp_1_arithop_29_0
              #                    store to temp_1_arithop_29_0 in mem offset legal
    sw      s1,92(sp)
              #                    release s1 with temp_1_arithop_29_0
              #                    free a2
              #                          jump label: while.head_28 
              #                    occupy a4 with temp_15_cmp_27_0
              #                    store to temp_15_cmp_27_0 in mem offset legal
    sb      a4,11(sp)
              #                    release a4 with temp_15_cmp_27_0
              #                    occupy a5 with temp_16_value_from_ptr_31_0
              #                    load from temp_16_value_from_ptr_31_0 in mem


    lw      a5,4(sp)
              #                    occupy s2 with temp_17_cmp_31_0
              #                    store to temp_17_cmp_31_0 in mem offset legal
    sb      s2,3(sp)
              #                    release s2 with temp_17_cmp_31_0
              #                    occupy a7 with temp_2_ptr_of_*res_0_33
              #                    store to temp_2_ptr_of_*res_0_33 in mem offset legal
    sd      a7,80(sp)
              #                    release a7 with temp_2_ptr_of_*res_0_33
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: temp_13_cmp_23_0, tracked: true } |     a1:Freed { symidx: temp_12_value_from_ptr_23_0, tracked: true } |     a2:Freed { symidx: j_25_1, tracked: true } |     a3:Freed { symidx: temp_14_value_from_ptr_27_0, tracked: true } |     a4:Freed { symidx: temp_15_cmp_27_0, tracked: true } |     a5:Freed { symidx: temp_16_value_from_ptr_31_0, tracked: true } |     a6:Freed { symidx: i_21_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     86   label while.exit_28: 
.while.exit_28:
              #                     36   temp_0_arithop_25_0 = Add i32 i_21_1, 1_0 
              #                    occupy a6 with i_21_1
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_0_arithop_25_0
    ADDW    s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                     37   (nop) 
              #                     267  i_21_1 = i32 temp_0_arithop_25_0 
              #                    occupy s1 with temp_0_arithop_25_0
              #                    occupy a6 with i_21_1
    mv      a6, s1
              #                    free s1
              #                    free a6
              #                          jump label: while.head_24 
              #                    occupy a4 with temp_15_cmp_27_0
              #                    store to temp_15_cmp_27_0 in mem offset legal
    sb      a4,11(sp)
              #                    release a4 with temp_15_cmp_27_0
              #                    occupy s1 with temp_0_arithop_25_0
              #                    store to temp_0_arithop_25_0 in mem offset legal
    sw      s1,100(sp)
              #                    release s1 with temp_0_arithop_25_0
              #                    occupy a0 with temp_13_cmp_23_0
              #                    store to temp_13_cmp_23_0 in mem offset legal
    sb      a0,19(sp)
              #                    release a0 with temp_13_cmp_23_0
              #                    occupy a2 with j_25_1
              #                    store to j_25_1 in mem offset legal
    sw      a2,104(sp)
              #                    release a2 with j_25_1
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: temp_13_cmp_23_0, tracked: true } |     a1:Freed { symidx: temp_12_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: temp_14_value_from_ptr_27_0, tracked: true } |     a5:Freed { symidx: temp_16_value_from_ptr_31_0, tracked: true } |     a6:Freed { symidx: i_21_1, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     76   label while.exit_24: 
.while.exit_24:
              #                     283  untrack temp_12_value_from_ptr_23_0 
              #                    occupy a1 with temp_12_value_from_ptr_23_0
              #                    release a1 with temp_12_value_from_ptr_23_0
              #                     282  untrack temp_14_value_from_ptr_27_0 
              #                    occupy a3 with temp_14_value_from_ptr_27_0
              #                    release a3 with temp_14_value_from_ptr_27_0
              #                     281  untrack temp_16_value_from_ptr_31_0 
              #                    occupy a5 with temp_16_value_from_ptr_31_0
              #                    release a5 with temp_16_value_from_ptr_31_0
              #                     280  untrack i_21_1 
              #                    occupy a6 with i_21_1
              #                    release a6 with i_21_1
              #                     221  mu res_0_2:78 
              #                     78   ret 
              #                    load from ra_matrix_multiply_0 in mem
    ld      ra,120(sp)
              #                    load from s0_matrix_multiply_0 in mem
    ld      s0,112(sp)
    addi    sp,sp,128
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     30   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 176|s0_main:8 at 168|i _s39 _i0:4 at 164|i _s39 _i2:4 at 160|i _s39 _i5:4 at 156|i _s39 _i8:4 at 152|j _s39 _i0:4 at 148|j _s39 _i1:4 at 144|j _s39 _i3:4 at 140|j _s39 _i5:4 at 136|j _s39 _i7:4 at 132|j _s39 _i9:4 at 128|j _s39 _i11:4 at 124|temp_18_ret_of_getint _s39 _i0:4 at 120|temp_19_ret_of_getint _s39 _i0:4 at 116|temp_20_ret_of_getint _s39 _i0:4 at 112|temp_21_ret_of_getint _s39 _i0:4 at 108|temp_22_arithop _s71 _i0:4 at 104|temp_23_ptr_of_*res_0:8 at 96|temp_24_ele_of_*res_0 _s75 _i0:4 at 92|temp_25_arithop _s75 _i0:4 at 88|temp_26_arithop _s59 _i0:4 at 84|none:4 at 80|temp_27_ptr_of_*b_0:8 at 72|temp_28_ret_of_getint _s63 _i0:4 at 68|temp_29_arithop _s63 _i0:4 at 64|temp_30_arithop _s46 _i0:4 at 60|none:4 at 56|temp_31_ptr_of_*a_0:8 at 48|temp_32_ret_of_getint _s50 _i0:4 at 44|temp_33_arithop _s50 _i0:4 at 40|temp_34_value_from_ptr _s44 _i0:4 at 36|temp_35_cmp _s44 _i0:1 at 35|none:3 at 32|temp_36_value_from_ptr _s57 _i0:4 at 28|temp_37_cmp _s57 _i0:1 at 27|temp_39_cmp _s69 _i0:1 at 26|none:2 at 24|temp_40_value_from_ptr _s73 _i0:4 at 20|temp_41_cmp _s73 _i0:1 at 19|none:3 at 16|temp_42_value_from_ptr _s61 _i0:4 at 12|temp_43_cmp _s61 _i0:1 at 11|none:3 at 8|temp_44_value_from_ptr _s48 _i0:4 at 4|temp_45_cmp _s48 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-184
              #                    store to ra_main_0 in mem offset legal
    sd      ra,176(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,168(sp)
    addi    s0,sp,184
              #                     222  res_0_6 = chi res_0_0:30 
              #                     223  n2_0_1 = chi n2_0_0:30 
              #                     224  m1_0_1 = chi m1_0_0:30 
              #                     225  n1_0_1 = chi n1_0_0:30 
              #                     226  m2_0_1 = chi m2_0_0:30 
              #                     227  a_0_1 = chi a_0_0:30 
              #                     228  b_0_1 = chi b_0_0:30 
              #                     97   alloc i32 [i_39] 
              #                     99   alloc i32 [j_39] 
              #                     101  alloc i32 [temp_18_ret_of_getint_39] 
              #                     105  alloc i32 [temp_19_ret_of_getint_39] 
              #                     110  alloc i32 [temp_20_ret_of_getint_39] 
              #                     114  alloc i32 [temp_21_ret_of_getint_39] 
              #                     125  alloc i32 [temp_22_arithop_71] 
              #                     128  alloc ptr->i32 [temp_23_ptr_of_*res_0_75] 
              #                     130  alloc i32 [temp_24_ele_of_*res_0_75] 
              #                     135  alloc i32 [temp_25_arithop_75] 
              #                     139  alloc i32 [temp_26_arithop_59] 
              #                     142  alloc ptr->i32 [temp_27_ptr_of_*b_0_63] 
              #                     144  alloc i32 [temp_28_ret_of_getint_63] 
              #                     148  alloc i32 [temp_29_arithop_63] 
              #                     152  alloc i32 [temp_30_arithop_46] 
              #                     155  alloc ptr->i32 [temp_31_ptr_of_*a_0_50] 
              #                     157  alloc i32 [temp_32_ret_of_getint_50] 
              #                     161  alloc i32 [temp_33_arithop_50] 
              #                     164  alloc i32 [temp_34_value_from_ptr_44] 
              #                     167  alloc i1 [temp_35_cmp_44] 
              #                     173  alloc i32 [temp_36_value_from_ptr_57] 
              #                     176  alloc i1 [temp_37_cmp_57] 
              #                     182  alloc i32 [temp_38_value_from_ptr_69] 
              #                     185  alloc i1 [temp_39_cmp_69] 
              #                     193  alloc i32 [temp_40_value_from_ptr_73] 
              #                     196  alloc i1 [temp_41_cmp_73] 
              #                     202  alloc i32 [temp_42_value_from_ptr_61] 
              #                     205  alloc i1 [temp_43_cmp_61] 
              #                     211  alloc i32 [temp_44_value_from_ptr_48] 
              #                     214  alloc i1 [temp_45_cmp_48] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     98    
              #                     100   
              #                     102  temp_18_ret_of_getint_39_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     103  store temp_18_ret_of_getint_39_0:i32 *m1_0:ptr->i32 
              #                    occupy a1 with *m1_0
              #                       load label m1 as ptr to reg
    la      a1, m1
              #                    occupy reg a1 with *m1_0
              #                    occupy a0 with temp_18_ret_of_getint_39_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     285  untrack temp_18_ret_of_getint_39_0 
              #                    occupy a0 with temp_18_ret_of_getint_39_0
              #                    release a0 with temp_18_ret_of_getint_39_0
              #                     104  m1_0_2 = chi m1_0_1:103 
              #                     106  temp_19_ret_of_getint_39_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     107  store temp_19_ret_of_getint_39_0:i32 *n1_0:ptr->i32 
              #                    occupy a1 with *n1_0
              #                       load label n1 as ptr to reg
    la      a1, n1
              #                    occupy reg a1 with *n1_0
              #                    occupy a0 with temp_19_ret_of_getint_39_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     284  untrack temp_19_ret_of_getint_39_0 
              #                    occupy a0 with temp_19_ret_of_getint_39_0
              #                    release a0 with temp_19_ret_of_getint_39_0
              #                     108  n1_0_2 = chi n1_0_1:107 
              #                     109  (nop) 
              #                     268  i_39_2 = i32 0_0 
              #                    occupy a0 with i_39_2
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_45 
    j       .while.head_45
              #                    regtab     a0:Freed { symidx: i_39_2, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     169  label while.head_45: 
.while.head_45:
              #                     165  temp_34_value_from_ptr_44_0 = load *m1_0:ptr->i32 
              #                    occupy a1 with *m1_0
              #                       load label m1 as ptr to reg
    la      a1, m1
              #                    occupy reg a1 with *m1_0
              #                    occupy a2 with temp_34_value_from_ptr_44_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     166  mu m1_0_2:165 
              #                     168  temp_35_cmp_44_0 = icmp i32 Slt i_39_2, temp_34_value_from_ptr_44_0 
              #                    occupy a0 with i_39_2
              #                    occupy a2 with temp_34_value_from_ptr_44_0
              #                    occupy a3 with temp_35_cmp_44_0
    slt     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                     172  br i1 temp_35_cmp_44_0, label while.body_45, label while.exit_45 
              #                    occupy a3 with temp_35_cmp_44_0
              #                    free a3
              #                    occupy a3 with temp_35_cmp_44_0
    bnez    a3, .while.body_45
              #                    free a3
    j       .while.exit_45
              #                    regtab     a0:Freed { symidx: i_39_2, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_44_0, tracked: true } |     a3:Freed { symidx: temp_35_cmp_44_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     170  label while.body_45: 
.while.body_45:
              #                     151  (nop) 
              #                     212  temp_44_value_from_ptr_48_0 = load *n1_0:ptr->i32 
              #                    occupy a1 with *n1_0
              #                       load label n1 as ptr to reg
    la      a1, n1
              #                    occupy reg a1 with *n1_0
              #                    occupy a4 with temp_44_value_from_ptr_48_0
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     213  mu n1_0_2:212 
              #                     269  j_39_3 = i32 0_0 
              #                    occupy a5 with j_39_3
    li      a5, 0
              #                    free a5
              #                          jump label: while.head_49 
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: i_39_2, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_44_0, tracked: true } |     a3:Freed { symidx: temp_35_cmp_44_0, tracked: true } |     a4:Freed { symidx: temp_44_value_from_ptr_48_0, tracked: true } |     a5:Freed { symidx: j_39_3, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     216  label while.head_49: 
.while.head_49:
              #                     215  temp_45_cmp_48_0 = icmp i32 Slt j_39_3, temp_44_value_from_ptr_48_0 
              #                    occupy a5 with j_39_3
              #                    occupy a4 with temp_44_value_from_ptr_48_0
              #                    occupy a1 with temp_45_cmp_48_0
    slt     a1,a5,a4
              #                    free a5
              #                    free a4
              #                    free a1
              #                     219  br i1 temp_45_cmp_48_0, label while.body_49, label while.exit_49 
              #                    occupy a1 with temp_45_cmp_48_0
              #                    free a1
              #                    occupy a1 with temp_45_cmp_48_0
    bnez    a1, .while.body_49
              #                    free a1
    j       .while.exit_49
              #                    regtab     a0:Freed { symidx: i_39_2, tracked: true } |     a1:Freed { symidx: temp_45_cmp_48_0, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_44_0, tracked: true } |     a3:Freed { symidx: temp_35_cmp_44_0, tracked: true } |     a4:Freed { symidx: temp_44_value_from_ptr_48_0, tracked: true } |     a5:Freed { symidx: j_39_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     217  label while.body_49: 
.while.body_49:
              #                     294  untrack temp_28_ret_of_getint_63_0 
              #                     293  untrack temp_23_ptr_of_*res_0_75 
              #                     292  untrack temp_43_cmp_61_0 
              #                     291  untrack temp_41_cmp_73_0 
              #                     290  untrack temp_29_arithop_63_0 
              #                     289  untrack temp_27_ptr_of_*b_0_63 
              #                     288  untrack temp_24_ele_of_*res_0_75_0 
              #                     287  untrack temp_25_arithop_75_0 
              #                     156  temp_31_ptr_of_*a_0_50 = GEP *a_0:ptr->Array:i32:[Some(100_0)] [Some(i_39_2), Some(j_39_3)] 
              #                    occupy a6 with temp_31_ptr_of_*a_0_50
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with 100_0
    li      s1, 100
              #                    occupy a0 with i_39_2
    mul     a7,s1,a0
              #                    free s1
              #                    free a0
    add     a6,a6,a7
              #                    free a7
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with j_39_3
    mv      s2, a5
              #                    free a5
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
              #                    occupy s3 with *a_0
              #                       load label a as ptr to reg
    la      s3, a
              #                    occupy reg s3 with *a_0
    add     a6,a6,s3
              #                    free s3
              #                    free a6
              #                     158  temp_32_ret_of_getint_50_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with i_39_2
              #                    store to i_39_2 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with i_39_2
              #                    occupy a1 with temp_45_cmp_48_0
              #                    store to temp_45_cmp_48_0 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_45_cmp_48_0
              #                    occupy a2 with temp_34_value_from_ptr_44_0
              #                    store to temp_34_value_from_ptr_44_0 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_34_value_from_ptr_44_0
              #                    occupy a3 with temp_35_cmp_44_0
              #                    store to temp_35_cmp_44_0 in mem offset legal
    sb      a3,35(sp)
              #                    release a3 with temp_35_cmp_44_0
              #                    occupy a4 with temp_44_value_from_ptr_48_0
              #                    store to temp_44_value_from_ptr_48_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_44_value_from_ptr_48_0
              #                    occupy a5 with j_39_3
              #                    store to j_39_3 in mem offset legal
    sw      a5,140(sp)
              #                    release a5 with j_39_3
              #                    occupy a6 with temp_31_ptr_of_*a_0_50
              #                    store to temp_31_ptr_of_*a_0_50 in mem offset legal
    sd      a6,48(sp)
              #                    release a6 with temp_31_ptr_of_*a_0_50
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     159  store temp_32_ret_of_getint_50_0:i32 temp_31_ptr_of_*a_0_50:ptr->i32 
              #                    occupy a1 with temp_31_ptr_of_*a_0_50
              #                    load from temp_31_ptr_of_*a_0_50 in mem
    ld      a1,48(sp)
              #                    occupy a0 with temp_32_ret_of_getint_50_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     160  a_0_4 = chi a_0_3:159 
              #                     162  temp_33_arithop_50_0 = Add i32 j_39_3, 1_0 
              #                    occupy a2 with j_39_3
              #                    load from j_39_3 in mem


    lw      a2,140(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_33_arithop_50_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     163  (nop) 
              #                     270  j_39_3 = i32 temp_33_arithop_50_0 
              #                    occupy a4 with temp_33_arithop_50_0
              #                    occupy a2 with j_39_3
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_49 
              #                    occupy a0 with temp_32_ret_of_getint_50_0
              #                    store to temp_32_ret_of_getint_50_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_32_ret_of_getint_50_0
              #                    occupy a0 with i_39_2
              #                    load from i_39_2 in mem


    lw      a0,160(sp)
              #                    occupy a2 with j_39_3
              #                    store to j_39_3 in mem offset legal
    sw      a2,140(sp)
              #                    release a2 with j_39_3
              #                    occupy a2 with temp_34_value_from_ptr_44_0
              #                    load from temp_34_value_from_ptr_44_0 in mem


    lw      a2,36(sp)
              #                    occupy a5 with j_39_3
              #                    load from j_39_3 in mem


    lw      a5,140(sp)
              #                    occupy a3 with temp_35_cmp_44_0
              #                    load from temp_35_cmp_44_0 in mem


    lb      a3,35(sp)
              #                    occupy a1 with temp_31_ptr_of_*a_0_50
              #                    store to temp_31_ptr_of_*a_0_50 in mem offset legal
    sd      a1,48(sp)
              #                    release a1 with temp_31_ptr_of_*a_0_50
              #                    occupy a4 with temp_33_arithop_50_0
              #                    store to temp_33_arithop_50_0 in mem offset legal
    sw      a4,40(sp)
              #                    release a4 with temp_33_arithop_50_0
              #                    occupy a4 with temp_44_value_from_ptr_48_0
              #                    load from temp_44_value_from_ptr_48_0 in mem


    lw      a4,4(sp)
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: i_39_2, tracked: true } |     a1:Freed { symidx: temp_45_cmp_48_0, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_44_0, tracked: true } |     a3:Freed { symidx: temp_35_cmp_44_0, tracked: true } |     a4:Freed { symidx: temp_44_value_from_ptr_48_0, tracked: true } |     a5:Freed { symidx: j_39_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     218  label while.exit_49: 
.while.exit_49:
              #                     153  temp_30_arithop_46_0 = Add i32 i_39_2, 1_0 
              #                    occupy a0 with i_39_2
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_30_arithop_46_0
    ADDW    a7,a0,a6
              #                    free a0
              #                    free a6
              #                    free a7
              #                     154  (nop) 
              #                     271  i_39_2 = i32 temp_30_arithop_46_0 
              #                    occupy a7 with temp_30_arithop_46_0
              #                    occupy a0 with i_39_2
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_45 
              #                    occupy a2 with temp_34_value_from_ptr_44_0
              #                    store to temp_34_value_from_ptr_44_0 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_34_value_from_ptr_44_0
              #                    occupy a5 with j_39_3
              #                    store to j_39_3 in mem offset legal
    sw      a5,140(sp)
              #                    release a5 with j_39_3
              #                    occupy a3 with temp_35_cmp_44_0
              #                    store to temp_35_cmp_44_0 in mem offset legal
    sb      a3,35(sp)
              #                    release a3 with temp_35_cmp_44_0
              #                    occupy a1 with temp_45_cmp_48_0
              #                    store to temp_45_cmp_48_0 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_45_cmp_48_0
              #                    occupy a7 with temp_30_arithop_46_0
              #                    store to temp_30_arithop_46_0 in mem offset legal
    sw      a7,60(sp)
              #                    release a7 with temp_30_arithop_46_0
              #                    occupy a4 with temp_44_value_from_ptr_48_0
              #                    store to temp_44_value_from_ptr_48_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_44_value_from_ptr_48_0
    j       .while.head_45
              #                    regtab     a0:Freed { symidx: i_39_2, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_44_0, tracked: true } |     a3:Freed { symidx: temp_35_cmp_44_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     171  label while.exit_45: 
.while.exit_45:
              #                     286  untrack i_39_2 
              #                    occupy a0 with i_39_2
              #                    release a0 with i_39_2
              #                     111  temp_20_ret_of_getint_39_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_34_value_from_ptr_44_0
              #                    store to temp_34_value_from_ptr_44_0 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_34_value_from_ptr_44_0
              #                    occupy a3 with temp_35_cmp_44_0
              #                    store to temp_35_cmp_44_0 in mem offset legal
    sb      a3,35(sp)
              #                    release a3 with temp_35_cmp_44_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     112  store temp_20_ret_of_getint_39_0:i32 *m2_0:ptr->i32 
              #                    occupy a1 with *m2_0
              #                       load label m2 as ptr to reg
    la      a1, m2
              #                    occupy reg a1 with *m2_0
              #                    occupy a0 with temp_20_ret_of_getint_39_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     295  untrack temp_20_ret_of_getint_39_0 
              #                    occupy a0 with temp_20_ret_of_getint_39_0
              #                    release a0 with temp_20_ret_of_getint_39_0
              #                     113  m2_0_2 = chi m2_0_1:112 
              #                     115  temp_21_ret_of_getint_39_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     116  store temp_21_ret_of_getint_39_0:i32 *n2_0:ptr->i32 
              #                    occupy a1 with *n2_0
              #                       load label n2 as ptr to reg
    la      a1, n2
              #                    occupy reg a1 with *n2_0
              #                    occupy a0 with temp_21_ret_of_getint_39_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     296  untrack temp_21_ret_of_getint_39_0 
              #                    occupy a0 with temp_21_ret_of_getint_39_0
              #                    release a0 with temp_21_ret_of_getint_39_0
              #                     117  n2_0_2 = chi n2_0_1:116 
              #                     118  (nop) 
              #                     272  i_39_5 = i32 0_0 
              #                    occupy a0 with i_39_5
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_58 
    j       .while.head_58
              #                    regtab     a0:Freed { symidx: i_39_5, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     178  label while.head_58: 
.while.head_58:
              #                     174  temp_36_value_from_ptr_57_0 = load *m2_0:ptr->i32 
              #                    occupy a1 with *m2_0
              #                       load label m2 as ptr to reg
    la      a1, m2
              #                    occupy reg a1 with *m2_0
              #                    occupy a2 with temp_36_value_from_ptr_57_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     175  mu m2_0_2:174 
              #                     177  temp_37_cmp_57_0 = icmp i32 Slt i_39_5, temp_36_value_from_ptr_57_0 
              #                    occupy a0 with i_39_5
              #                    occupy a2 with temp_36_value_from_ptr_57_0
              #                    occupy a3 with temp_37_cmp_57_0
    slt     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                     181  br i1 temp_37_cmp_57_0, label while.body_58, label while.exit_58 
              #                    occupy a3 with temp_37_cmp_57_0
              #                    free a3
              #                    occupy a3 with temp_37_cmp_57_0
    bnez    a3, .while.body_58
              #                    free a3
    j       .while.exit_58
              #                    regtab     a0:Freed { symidx: i_39_5, tracked: true } |     a2:Freed { symidx: temp_36_value_from_ptr_57_0, tracked: true } |     a3:Freed { symidx: temp_37_cmp_57_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     179  label while.body_58: 
.while.body_58:
              #                     138  (nop) 
              #                     203  temp_42_value_from_ptr_61_0 = load *n2_0:ptr->i32 
              #                    occupy a1 with *n2_0
              #                       load label n2 as ptr to reg
    la      a1, n2
              #                    occupy reg a1 with *n2_0
              #                    occupy a4 with temp_42_value_from_ptr_61_0
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     204  mu n2_0_2:203 
              #                     273  j_39_7 = i32 0_0 
              #                    occupy a5 with j_39_7
    li      a5, 0
              #                    free a5
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_39_5, tracked: true } |     a2:Freed { symidx: temp_36_value_from_ptr_57_0, tracked: true } |     a3:Freed { symidx: temp_37_cmp_57_0, tracked: true } |     a4:Freed { symidx: temp_42_value_from_ptr_61_0, tracked: true } |     a5:Freed { symidx: j_39_7, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     207  label while.head_62: 
.while.head_62:
              #                     206  temp_43_cmp_61_0 = icmp i32 Slt j_39_7, temp_42_value_from_ptr_61_0 
              #                    occupy a5 with j_39_7
              #                    occupy a4 with temp_42_value_from_ptr_61_0
              #                    occupy a1 with temp_43_cmp_61_0
    slt     a1,a5,a4
              #                    free a5
              #                    free a4
              #                    free a1
              #                     210  br i1 temp_43_cmp_61_0, label while.body_62, label while.exit_62 
              #                    occupy a1 with temp_43_cmp_61_0
              #                    free a1
              #                    occupy a1 with temp_43_cmp_61_0
    bnez    a1, .while.body_62
              #                    free a1
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: i_39_5, tracked: true } |     a1:Freed { symidx: temp_43_cmp_61_0, tracked: true } |     a2:Freed { symidx: temp_36_value_from_ptr_57_0, tracked: true } |     a3:Freed { symidx: temp_37_cmp_57_0, tracked: true } |     a4:Freed { symidx: temp_42_value_from_ptr_61_0, tracked: true } |     a5:Freed { symidx: j_39_7, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     208  label while.body_62: 
.while.body_62:
              #                     301  untrack temp_24_ele_of_*res_0_75_0 
              #                     300  untrack temp_23_ptr_of_*res_0_75 
              #                     299  untrack temp_41_cmp_73_0 
              #                     298  untrack temp_25_arithop_75_0 
              #                     143  temp_27_ptr_of_*b_0_63 = GEP *b_0:ptr->Array:i32:[Some(100_0)] [Some(i_39_5), Some(j_39_7)] 
              #                    occupy a6 with temp_27_ptr_of_*b_0_63
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with 100_0
    li      s1, 100
              #                    occupy a0 with i_39_5
    mul     a7,s1,a0
              #                    free s1
              #                    free a0
    add     a6,a6,a7
              #                    free a7
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with j_39_7
    mv      s2, a5
              #                    free a5
              #                    occupy a5 with j_39_7
              #                    store to j_39_7 in mem offset legal
    sw      a5,132(sp)
              #                    release a5 with j_39_7
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
              #                    occupy a5 with *b_0
              #                       load label b as ptr to reg
    la      a5, b
              #                    occupy reg a5 with *b_0
    add     a6,a6,a5
              #                    free a5
              #                    free a6
              #                     145  temp_28_ret_of_getint_63_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with i_39_5
              #                    store to i_39_5 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with i_39_5
              #                    occupy a1 with temp_43_cmp_61_0
              #                    store to temp_43_cmp_61_0 in mem offset legal
    sb      a1,11(sp)
              #                    release a1 with temp_43_cmp_61_0
              #                    occupy a2 with temp_36_value_from_ptr_57_0
              #                    store to temp_36_value_from_ptr_57_0 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_36_value_from_ptr_57_0
              #                    occupy a3 with temp_37_cmp_57_0
              #                    store to temp_37_cmp_57_0 in mem offset legal
    sb      a3,27(sp)
              #                    release a3 with temp_37_cmp_57_0
              #                    occupy a4 with temp_42_value_from_ptr_61_0
              #                    store to temp_42_value_from_ptr_61_0 in mem offset legal
    sw      a4,12(sp)
              #                    release a4 with temp_42_value_from_ptr_61_0
              #                    occupy a6 with temp_27_ptr_of_*b_0_63
              #                    store to temp_27_ptr_of_*b_0_63 in mem offset legal
    sd      a6,72(sp)
              #                    release a6 with temp_27_ptr_of_*b_0_63
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     146  store temp_28_ret_of_getint_63_0:i32 temp_27_ptr_of_*b_0_63:ptr->i32 
              #                    occupy a1 with temp_27_ptr_of_*b_0_63
              #                    load from temp_27_ptr_of_*b_0_63 in mem
    ld      a1,72(sp)
              #                    occupy a0 with temp_28_ret_of_getint_63_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     147  b_0_4 = chi b_0_3:146 
              #                     149  temp_29_arithop_63_0 = Add i32 j_39_7, 1_0 
              #                    occupy a2 with j_39_7
              #                    load from j_39_7 in mem


    lw      a2,132(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_29_arithop_63_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     150  (nop) 
              #                     274  j_39_7 = i32 temp_29_arithop_63_0 
              #                    occupy a4 with temp_29_arithop_63_0
              #                    occupy a2 with j_39_7
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_62 
              #                    occupy a0 with temp_28_ret_of_getint_63_0
              #                    store to temp_28_ret_of_getint_63_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_28_ret_of_getint_63_0
              #                    occupy a0 with i_39_5
              #                    load from i_39_5 in mem


    lw      a0,156(sp)
              #                    occupy a2 with j_39_7
              #                    store to j_39_7 in mem offset legal
    sw      a2,132(sp)
              #                    release a2 with j_39_7
              #                    occupy a2 with temp_36_value_from_ptr_57_0
              #                    load from temp_36_value_from_ptr_57_0 in mem


    lw      a2,28(sp)
              #                    occupy a5 with j_39_7
              #                    load from j_39_7 in mem


    lw      a5,132(sp)
              #                    occupy a3 with temp_37_cmp_57_0
              #                    load from temp_37_cmp_57_0 in mem


    lb      a3,27(sp)
              #                    occupy a1 with temp_27_ptr_of_*b_0_63
              #                    store to temp_27_ptr_of_*b_0_63 in mem offset legal
    sd      a1,72(sp)
              #                    release a1 with temp_27_ptr_of_*b_0_63
              #                    occupy a4 with temp_29_arithop_63_0
              #                    store to temp_29_arithop_63_0 in mem offset legal
    sw      a4,64(sp)
              #                    release a4 with temp_29_arithop_63_0
              #                    occupy a4 with temp_42_value_from_ptr_61_0
              #                    load from temp_42_value_from_ptr_61_0 in mem


    lw      a4,12(sp)
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_39_5, tracked: true } |     a1:Freed { symidx: temp_43_cmp_61_0, tracked: true } |     a2:Freed { symidx: temp_36_value_from_ptr_57_0, tracked: true } |     a3:Freed { symidx: temp_37_cmp_57_0, tracked: true } |     a4:Freed { symidx: temp_42_value_from_ptr_61_0, tracked: true } |     a5:Freed { symidx: j_39_7, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     209  label while.exit_62: 
.while.exit_62:
              #                     140  temp_26_arithop_59_0 = Add i32 i_39_5, 1_0 
              #                    occupy a0 with i_39_5
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_26_arithop_59_0
    ADDW    a7,a0,a6
              #                    free a0
              #                    free a6
              #                    free a7
              #                     141  (nop) 
              #                     275  i_39_5 = i32 temp_26_arithop_59_0 
              #                    occupy a7 with temp_26_arithop_59_0
              #                    occupy a0 with i_39_5
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_58 
              #                    occupy a2 with temp_36_value_from_ptr_57_0
              #                    store to temp_36_value_from_ptr_57_0 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_36_value_from_ptr_57_0
              #                    occupy a5 with j_39_7
              #                    store to j_39_7 in mem offset legal
    sw      a5,132(sp)
              #                    release a5 with j_39_7
              #                    occupy a3 with temp_37_cmp_57_0
              #                    store to temp_37_cmp_57_0 in mem offset legal
    sb      a3,27(sp)
              #                    release a3 with temp_37_cmp_57_0
              #                    occupy a1 with temp_43_cmp_61_0
              #                    store to temp_43_cmp_61_0 in mem offset legal
    sb      a1,11(sp)
              #                    release a1 with temp_43_cmp_61_0
              #                    occupy a7 with temp_26_arithop_59_0
              #                    store to temp_26_arithop_59_0 in mem offset legal
    sw      a7,84(sp)
              #                    release a7 with temp_26_arithop_59_0
              #                    occupy a4 with temp_42_value_from_ptr_61_0
              #                    store to temp_42_value_from_ptr_61_0 in mem offset legal
    sw      a4,12(sp)
              #                    release a4 with temp_42_value_from_ptr_61_0
    j       .while.head_58
              #                    regtab     a0:Freed { symidx: i_39_5, tracked: true } |     a2:Freed { symidx: temp_36_value_from_ptr_57_0, tracked: true } |     a3:Freed { symidx: temp_37_cmp_57_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     180  label while.exit_58: 
.while.exit_58:
              #                     297  untrack i_39_5 
              #                    occupy a0 with i_39_5
              #                    release a0 with i_39_5
              #                     119   Call void matrix_multiply_0() 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_36_value_from_ptr_57_0
              #                    store to temp_36_value_from_ptr_57_0 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_36_value_from_ptr_57_0
              #                    occupy a3 with temp_37_cmp_57_0
              #                    store to temp_37_cmp_57_0 in mem offset legal
    sb      a3,27(sp)
              #                    release a3 with temp_37_cmp_57_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    matrix_multiply
              #                     229  mu n2_0_2:119 
              #                     230  mu a_0_2:119 
              #                     231  mu res_0_6:119 
              #                     232  mu b_0_2:119 
              #                     233  mu m1_0_2:119 
              #                     234  mu n1_0_2:119 
              #                     235  res_0_7 = chi res_0_6:119 
              #                     120  (nop) 
              #                     183  (nop) 
              #                     184  mu m1_0_2:183 
              #                     194  temp_40_value_from_ptr_73_0 = load *n2_0:ptr->i32 
              #                    occupy a0 with *n2_0
              #                       load label n2 as ptr to reg
    la      a0, n2
              #                    occupy reg a0 with *n2_0
              #                    occupy a1 with temp_40_value_from_ptr_73_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     195  mu n2_0_2:194 
              #                     276  i_39_8 = i32 0_0 
              #                    occupy a2 with i_39_8
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a1:Freed { symidx: temp_40_value_from_ptr_73_0, tracked: true } |     a2:Freed { symidx: i_39_8, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     187  label while.head_70: 
.while.head_70:
              #                     186  temp_39_cmp_69_0 = icmp i32 Slt i_39_8, temp_34_value_from_ptr_44_0 
              #                    occupy a2 with i_39_8
              #                    occupy a0 with temp_34_value_from_ptr_44_0
              #                    load from temp_34_value_from_ptr_44_0 in mem


    lw      a0,36(sp)
              #                    occupy a3 with temp_39_cmp_69_0
    slt     a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                     190  br i1 temp_39_cmp_69_0, label while.body_70, label while.exit_70 
              #                    occupy a3 with temp_39_cmp_69_0
              #                    free a3
              #                    occupy a3 with temp_39_cmp_69_0
    bnez    a3, .while.body_70
              #                    free a3
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: temp_34_value_from_ptr_44_0, tracked: true } |     a1:Freed { symidx: temp_40_value_from_ptr_73_0, tracked: true } |     a2:Freed { symidx: i_39_8, tracked: true } |     a3:Freed { symidx: temp_39_cmp_69_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     188  label while.body_70: 
.while.body_70:
              #                     123  (nop) 
              #                     277  j_39_11 = i32 0_0 
              #                    occupy a4 with j_39_11
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_74 
    j       .while.head_74
              #                    regtab     a0:Freed { symidx: temp_34_value_from_ptr_44_0, tracked: true } |     a1:Freed { symidx: temp_40_value_from_ptr_73_0, tracked: true } |     a2:Freed { symidx: i_39_8, tracked: true } |     a3:Freed { symidx: temp_39_cmp_69_0, tracked: true } |     a4:Freed { symidx: j_39_11, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     198  label while.head_74: 
.while.head_74:
              #                     197  temp_41_cmp_73_0 = icmp i32 Slt j_39_11, temp_40_value_from_ptr_73_0 
              #                    occupy a4 with j_39_11
              #                    occupy a1 with temp_40_value_from_ptr_73_0
              #                    occupy a5 with temp_41_cmp_73_0
    slt     a5,a4,a1
              #                    free a4
              #                    free a1
              #                    free a5
              #                     201  br i1 temp_41_cmp_73_0, label while.body_74, label while.exit_74 
              #                    occupy a5 with temp_41_cmp_73_0
              #                    free a5
              #                    occupy a5 with temp_41_cmp_73_0
    bnez    a5, .while.body_74
              #                    free a5
    j       .while.exit_74
              #                    regtab     a0:Freed { symidx: temp_34_value_from_ptr_44_0, tracked: true } |     a1:Freed { symidx: temp_40_value_from_ptr_73_0, tracked: true } |     a2:Freed { symidx: i_39_8, tracked: true } |     a3:Freed { symidx: temp_39_cmp_69_0, tracked: true } |     a4:Freed { symidx: j_39_11, tracked: true } |     a5:Freed { symidx: temp_41_cmp_73_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     199  label while.body_74: 
.while.body_74:
              #                     129  temp_23_ptr_of_*res_0_75 = GEP *res_0:Array:i32:[None, Some(100_0)] [Some(i_39_8), Some(j_39_11)] 
              #                    occupy a6 with temp_23_ptr_of_*res_0_75
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with 100_0
    li      s1, 100
              #                    occupy a2 with i_39_8
    mul     a7,s1,a2
              #                    free s1
              #                    free a2
    add     a6,a6,a7
              #                    free a7
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with j_39_11
    mv      s2, a4
              #                    free a4
              #                    occupy a4 with j_39_11
              #                    store to j_39_11 in mem offset legal
    sw      a4,124(sp)
              #                    release a4 with j_39_11
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
              #                    occupy a4 with *res_0
              #                       load label res as ptr to reg
    la      a4, res
              #                    occupy reg a4 with *res_0
    add     a6,a6,a4
              #                    free a4
              #                    free a6
              #                     131  temp_24_ele_of_*res_0_75_0 = load temp_23_ptr_of_*res_0_75:ptr->i32 
              #                    occupy a6 with temp_23_ptr_of_*res_0_75
              #                    occupy a4 with temp_24_ele_of_*res_0_75_0
    lw      a4,0(a6)
              #                    free a4
              #                    occupy a4 with temp_24_ele_of_*res_0_75_0
              #                    store to temp_24_ele_of_*res_0_75_0 in mem offset legal
    sw      a4,92(sp)
              #                    release a4 with temp_24_ele_of_*res_0_75_0
              #                    free a6
              #                     132  mu res_0_7:131 
              #                     133   Call void putint_0(temp_24_ele_of_*res_0_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_34_value_from_ptr_44_0
              #                    store to temp_34_value_from_ptr_44_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_34_value_from_ptr_44_0
              #                    occupy a1 with temp_40_value_from_ptr_73_0
              #                    store to temp_40_value_from_ptr_73_0 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_40_value_from_ptr_73_0
              #                    occupy a2 with i_39_8
              #                    store to i_39_8 in mem offset legal
    sw      a2,152(sp)
              #                    release a2 with i_39_8
              #                    occupy a3 with temp_39_cmp_69_0
              #                    store to temp_39_cmp_69_0 in mem offset legal
    sb      a3,26(sp)
              #                    release a3 with temp_39_cmp_69_0
              #                    occupy a5 with temp_41_cmp_73_0
              #                    store to temp_41_cmp_73_0 in mem offset legal
    sb      a5,19(sp)
              #                    release a5 with temp_41_cmp_73_0
              #                    occupy a6 with temp_23_ptr_of_*res_0_75
              #                    store to temp_23_ptr_of_*res_0_75 in mem offset legal
    sd      a6,96(sp)
              #                    release a6 with temp_23_ptr_of_*res_0_75
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_24_ele_of_*res_0_75_0_0
              #                    load from temp_24_ele_of_*res_0_75_0 in mem


    lw      a0,92(sp)
              #                    arg load ended


    call    putint
              #                     134   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     136  temp_25_arithop_75_0 = Add i32 j_39_11, 1_0 
              #                    occupy a0 with j_39_11
              #                    load from j_39_11 in mem


    lw      a0,124(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_25_arithop_75_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     137  (nop) 
              #                     278  j_39_11 = i32 temp_25_arithop_75_0 
              #                    occupy a2 with temp_25_arithop_75_0
              #                    occupy a0 with j_39_11
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_74 
              #                    occupy a0 with j_39_11
              #                    store to j_39_11 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with j_39_11
              #                    occupy a0 with temp_34_value_from_ptr_44_0
              #                    load from temp_34_value_from_ptr_44_0 in mem


    lw      a0,36(sp)
              #                    occupy a2 with temp_25_arithop_75_0
              #                    store to temp_25_arithop_75_0 in mem offset legal
    sw      a2,88(sp)
              #                    release a2 with temp_25_arithop_75_0
              #                    occupy a2 with i_39_8
              #                    load from i_39_8 in mem


    lw      a2,152(sp)
              #                    occupy a3 with temp_39_cmp_69_0
              #                    load from temp_39_cmp_69_0 in mem


    lb      a3,26(sp)
              #                    occupy a1 with temp_40_value_from_ptr_73_0
              #                    load from temp_40_value_from_ptr_73_0 in mem


    lw      a1,20(sp)
              #                    occupy a4 with j_39_11
              #                    load from j_39_11 in mem


    lw      a4,124(sp)
    j       .while.head_74
              #                    regtab     a0:Freed { symidx: temp_34_value_from_ptr_44_0, tracked: true } |     a1:Freed { symidx: temp_40_value_from_ptr_73_0, tracked: true } |     a2:Freed { symidx: i_39_8, tracked: true } |     a3:Freed { symidx: temp_39_cmp_69_0, tracked: true } |     a4:Freed { symidx: j_39_11, tracked: true } |     a5:Freed { symidx: temp_41_cmp_73_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     200  label while.exit_74: 
.while.exit_74:
              #                     124   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_34_value_from_ptr_44_0
              #                    store to temp_34_value_from_ptr_44_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_34_value_from_ptr_44_0
              #                    occupy a1 with temp_40_value_from_ptr_73_0
              #                    store to temp_40_value_from_ptr_73_0 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_40_value_from_ptr_73_0
              #                    occupy a2 with i_39_8
              #                    store to i_39_8 in mem offset legal
    sw      a2,152(sp)
              #                    release a2 with i_39_8
              #                    occupy a3 with temp_39_cmp_69_0
              #                    store to temp_39_cmp_69_0 in mem offset legal
    sb      a3,26(sp)
              #                    release a3 with temp_39_cmp_69_0
              #                    occupy a4 with j_39_11
              #                    store to j_39_11 in mem offset legal
    sw      a4,124(sp)
              #                    release a4 with j_39_11
              #                    occupy a5 with temp_41_cmp_73_0
              #                    store to temp_41_cmp_73_0 in mem offset legal
    sb      a5,19(sp)
              #                    release a5 with temp_41_cmp_73_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     126  temp_22_arithop_71_0 = Add i32 i_39_8, 1_0 
              #                    occupy a0 with i_39_8
              #                    load from i_39_8 in mem


    lw      a0,152(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_22_arithop_71_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     127  (nop) 
              #                     279  i_39_8 = i32 temp_22_arithop_71_0 
              #                    occupy a2 with temp_22_arithop_71_0
              #                    occupy a0 with i_39_8
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_70 
              #                    occupy a0 with i_39_8
              #                    store to i_39_8 in mem offset legal
    sw      a0,152(sp)
              #                    release a0 with i_39_8
              #                    occupy a2 with temp_22_arithop_71_0
              #                    store to temp_22_arithop_71_0 in mem offset legal
    sw      a2,104(sp)
              #                    release a2 with temp_22_arithop_71_0
              #                    occupy a2 with i_39_8
              #                    load from i_39_8 in mem


    lw      a2,152(sp)
              #                    occupy a1 with temp_40_value_from_ptr_73_0
              #                    load from temp_40_value_from_ptr_73_0 in mem


    lw      a1,20(sp)
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_34_value_from_ptr_44_0, tracked: true } |     a1:Freed { symidx: temp_40_value_from_ptr_73_0, tracked: true } |     a2:Freed { symidx: i_39_8, tracked: true } |     a3:Freed { symidx: temp_39_cmp_69_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     189  label while.exit_70: 
.while.exit_70:
              #                     303  untrack temp_40_value_from_ptr_73_0 
              #                    occupy a1 with temp_40_value_from_ptr_73_0
              #                    release a1 with temp_40_value_from_ptr_73_0
              #                     302  untrack i_39_8 
              #                    occupy a2 with i_39_8
              #                    release a2 with i_39_8
              #                     236  mu res_0_7:122 
              #                     237  mu n2_0_2:122 
              #                     238  mu m1_0_2:122 
              #                     239  mu n1_0_2:122 
              #                     240  mu m2_0_2:122 
              #                     241  mu a_0_2:122 
              #                     242  mu b_0_2:122 
              #                     122  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,176(sp)
              #                    load from s0_main_0 in mem
    ld      s0,168(sp)
              #                    occupy a0 with temp_34_value_from_ptr_44_0
              #                    store to temp_34_value_from_ptr_44_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_34_value_from_ptr_44_0
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,184
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl m2
              #                     27   global i32 m2_0 
    .type m2,@object
m2:
    .word 0
    .align 4
    .globl n2
              #                     26   global i32 n2_0 
    .type n2,@object
n2:
    .word 0
    .align 4
    .globl m1
              #                     25   global i32 m1_0 
    .type m1,@object
m1:
    .word 0
    .align 4
    .globl n1
              #                     24   global i32 n1_0 
    .type n1,@object
n1:
    .word 0
    .align 4
    .globl res
              #                     23   global Array:i32:[Some(100_0), Some(100_0)] res_0 
    .type res,@object
res:
    .zero 40000
    .align 4
    .globl b
              #                     21   global Array:i32:[Some(100_0), Some(100_0)] b_0 
    .type b,@object
b:
    .zero 40000
    .align 4
    .globl a
              #                     19   global Array:i32:[Some(100_0), Some(100_0)] a_0 
    .type a,@object
a:
    .zero 40000
    .align 4
    .globl MAX_SIZE
              #                     17   global i32 MAX_SIZE_0 
    .type MAX_SIZE,@object
MAX_SIZE:
    .word 100
