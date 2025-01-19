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
              #                     19   Define init_0 "n_18_0," -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 40|s0_init:8 at 32|n _s18 _i0:4 at 28|i _s20 _i1:4 at 24|temp_0_ptr_of_*array_0:8 at 16|temp_1_arithop _s24 _i0:4 at 12|temp_2_arithop _s22 _i0:4 at 8|temp_3_arithop _s22 _i0:4 at 4|temp_4_cmp _s22 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-48
              #                    store to ra_init_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     343  array_0_1 = chi array_0_0:19 
              #                     24   alloc i32 [i_20] 
              #                     25   alloc ptr->i32 [temp_0_ptr_of_*array_0_24] 
              #                     29   alloc i32 [temp_1_arithop_24] 
              #                     32   alloc i32 [temp_2_arithop_22] 
              #                     34   alloc i32 [temp_3_arithop_22] 
              #                     36   alloc i1 [temp_4_cmp_22] 
              #                    regtab     a0:Freed { symidx: n_18_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L13_0: 
.L13_0:
              #                     23   (nop) 
              #                     33   temp_2_arithop_22_0 = Mul i32 n_18_0, n_18_0 
              #                    occupy a1 with temp_2_arithop_22_0
              #                    occupy a0 with n_18_0
              #                    occupy a0 with n_18_0
    mulw    a1,a0,a0
              #                    free a0
              #                    free a0
              #                    free a1
              #                     420  untrack n_18_0 
              #                    occupy a0 with n_18_0
              #                    release a0 with n_18_0
              #                     402  i_20_1 = i32 1_0 
              #                    occupy a0 with i_20_1
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: i_20_1, tracked: true } |     a1:Freed { symidx: temp_2_arithop_22_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     38   label while.head_23: 
.while.head_23:
              #                     35   temp_3_arithop_22_0 = Add i32 temp_2_arithop_22_0, 1_0 
              #                    occupy a1 with temp_2_arithop_22_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_3_arithop_22_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     37   temp_4_cmp_22_0 = icmp i32 Sle i_20_1, temp_3_arithop_22_0 
              #                    occupy a0 with i_20_1
              #                    occupy a3 with temp_3_arithop_22_0
              #                    occupy a4 with temp_4_cmp_22_0
    slt     a4,a3,a0
    xori    a4,a4,1
              #                    free a0
              #                    free a3
              #                    free a4
              #                     41   br i1 temp_4_cmp_22_0, label while.body_23, label while.exit_23 
              #                    occupy a4 with temp_4_cmp_22_0
              #                    free a4
              #                    occupy a4 with temp_4_cmp_22_0
    bnez    a4, .while.body_23
              #                    free a4
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: i_20_1, tracked: true } |     a1:Freed { symidx: temp_2_arithop_22_0, tracked: true } |     a3:Freed { symidx: temp_3_arithop_22_0, tracked: true } |     a4:Freed { symidx: temp_4_cmp_22_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     39   label while.body_23: 
.while.body_23:
              #                     26   temp_0_ptr_of_*array_0_24 = GEP *array_0:ptr->i32 [Some(i_20_1)] 
              #                    occupy a2 with temp_0_ptr_of_*array_0_24
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_20_1
    mv      a5, a0
              #                    free a0
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with *array_0
              #                       load label array as ptr to reg
    la      a6, array
              #                    occupy reg a6 with *array_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                     27   store -1_0:i32 temp_0_ptr_of_*array_0_24:ptr->i32 
              #                    occupy a2 with temp_0_ptr_of_*array_0_24
              #                    occupy a7 with -1_0
    li      a7, -1
    sw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                     28   array_0_3 = chi array_0_2:27 
              #                     30   temp_1_arithop_24_0 = Add i32 i_20_1, 1_0 
              #                    occupy a0 with i_20_1
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_1_arithop_24_0
    ADDW    s2,a0,s1
              #                    free a0
              #                    free s1
              #                    free s2
              #                     31   (nop) 
              #                     403  i_20_1 = i32 temp_1_arithop_24_0 
              #                    occupy s2 with temp_1_arithop_24_0
              #                    occupy a0 with i_20_1
    mv      a0, s2
              #                    free s2
              #                    free a0
              #                          jump label: while.head_23 
              #                    occupy a3 with temp_3_arithop_22_0
              #                    store to temp_3_arithop_22_0 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_3_arithop_22_0
              #                    occupy a2 with temp_0_ptr_of_*array_0_24
              #                    store to temp_0_ptr_of_*array_0_24 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_0_ptr_of_*array_0_24
              #                    occupy s2 with temp_1_arithop_24_0
              #                    store to temp_1_arithop_24_0 in mem offset legal
    sw      s2,12(sp)
              #                    release s2 with temp_1_arithop_24_0
              #                    occupy a4 with temp_4_cmp_22_0
              #                    store to temp_4_cmp_22_0 in mem offset legal
    sb      a4,3(sp)
              #                    release a4 with temp_4_cmp_22_0
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: i_20_1, tracked: true } |     a1:Freed { symidx: temp_2_arithop_22_0, tracked: true } |     a3:Freed { symidx: temp_3_arithop_22_0, tracked: true } |     a4:Freed { symidx: temp_4_cmp_22_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     40   label while.exit_23: 
.while.exit_23:
              #                     422  untrack i_20_1 
              #                    occupy a0 with i_20_1
              #                    release a0 with i_20_1
              #                     421  untrack temp_2_arithop_22_0 
              #                    occupy a1 with temp_2_arithop_22_0
              #                    release a1 with temp_2_arithop_22_0
              #                     344  mu array_0_2:42 
              #                     42   ret 
              #                    load from ra_init_0 in mem
    ld      ra,40(sp)
              #                    load from s0_init_0 in mem
    ld      s0,32(sp)
    addi    sp,sp,48
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define findfa_0 "a_27_0," -> findfa_ret_0 
    .globl findfa
    .type findfa,@function
findfa:
              #                    mem layout:|ra_findfa:8 at 72|s0_findfa:8 at 64|a _s27 _i0:4 at 60|none:4 at 56|temp_5_ptr_of_*array_0:8 at 48|temp_6_ptr_of_*array_0:8 at 40|temp_8_ret_of_findfa _s33 _i0:4 at 36|none:4 at 32|temp_9_ptr_of_*array_0:8 at 24|temp_10_ele_of_*array_0 _s33 _i0:4 at 20|none:4 at 16|temp_11_ptr_of_*array_0:8 at 8|temp_12_ele_of_*array_0 _s30 _i0:4 at 4|temp_13_cmp _s30 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-80
              #                    store to ra_findfa_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_findfa_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                     345  array_0_4 = chi array_0_0:20 
              #                     43   alloc ptr->i32 [temp_5_ptr_of_*array_0_33] 
              #                     45   alloc ptr->i32 [temp_6_ptr_of_*array_0_33] 
              #                     47   alloc i32 [temp_7_ele_of_*array_0_33] 
              #                     50   alloc i32 [temp_8_ret_of_findfa_33] 
              #                     55   alloc ptr->i32 [temp_9_ptr_of_*array_0_33] 
              #                     57   alloc i32 [temp_10_ele_of_*array_0_33] 
              #                     63   alloc ptr->i32 [temp_11_ptr_of_*array_0_30] 
              #                     65   alloc i32 [temp_12_ele_of_*array_0_30] 
              #                     68   alloc i1 [temp_13_cmp_30] 
              #                    regtab     a0:Freed { symidx: a_27_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L12_0: 
.L12_0:
              #                     64   temp_11_ptr_of_*array_0_30 = GEP *array_0:Array:i32:[None] [Some(a_27_0)] 
              #                    occupy a1 with temp_11_ptr_of_*array_0_30
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with a_27_0
    mv      a2, a0
              #                    free a0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *array_0
              #                       load label array as ptr to reg
    la      a3, array
              #                    occupy reg a3 with *array_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     66   temp_12_ele_of_*array_0_30_0 = load temp_11_ptr_of_*array_0_30:ptr->i32 
              #                    occupy a1 with temp_11_ptr_of_*array_0_30
              #                    occupy a4 with temp_12_ele_of_*array_0_30_0
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     67   mu array_0_4:66 
              #                     69   temp_13_cmp_30_0 = icmp i32 Eq temp_12_ele_of_*array_0_30_0, a_27_0 
              #                    occupy a4 with temp_12_ele_of_*array_0_30_0
              #                    occupy a0 with a_27_0
              #                    occupy a5 with temp_13_cmp_30_0
    xor     a5,a4,a0
    seqz    a5, a5
              #                    free a4
              #                    free a0
              #                    free a5
              #                     72   br i1 temp_13_cmp_30_0, label branch_true_31, label branch_false_31 
              #                    occupy a5 with temp_13_cmp_30_0
              #                    free a5
              #                    occupy a5 with temp_13_cmp_30_0
    bnez    a5, .branch_true_31
              #                    free a5
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: a_27_0, tracked: true } |     a1:Freed { symidx: temp_11_ptr_of_*array_0_30, tracked: true } |     a4:Freed { symidx: temp_12_ele_of_*array_0_30_0, tracked: true } |     a5:Freed { symidx: temp_13_cmp_30_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     70   label branch_true_31: 
.branch_true_31:
              #                     427  untrack temp_10_ele_of_*array_0_33_0 
              #                     426  untrack temp_8_ret_of_findfa_33_0 
              #                     425  untrack temp_13_cmp_30_0 
              #                    occupy a5 with temp_13_cmp_30_0
              #                    release a5 with temp_13_cmp_30_0
              #                     424  untrack temp_12_ele_of_*array_0_30_0 
              #                    occupy a4 with temp_12_ele_of_*array_0_30_0
              #                    release a4 with temp_12_ele_of_*array_0_30_0
              #                     423  untrack temp_11_ptr_of_*array_0_30 
              #                    occupy a1 with temp_11_ptr_of_*array_0_30
              #                    release a1 with temp_11_ptr_of_*array_0_30
              #                     346  mu array_0_4:62 
              #                     62   ret a_27_0 
              #                    load from ra_findfa_0 in mem
    ld      ra,72(sp)
              #                    load from s0_findfa_0 in mem
    ld      s0,64(sp)
              #                    occupy a0 with a_27_0
              #                    store to a_27_0 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with a_27_0
              #                    occupy a0 with a_27_0
              #                    load from a_27_0 in mem


    lw      a0,60(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_27_0, tracked: true } |     a1:Freed { symidx: temp_11_ptr_of_*array_0_30, tracked: true } |     a4:Freed { symidx: temp_12_ele_of_*array_0_30_0, tracked: true } |     a5:Freed { symidx: temp_13_cmp_30_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     71   label branch_false_31: 
.branch_false_31:
              #                     429  untrack a_27_0 
              #                    occupy a0 with a_27_0
              #                    release a0 with a_27_0
              #                     428  untrack temp_13_cmp_30_0 
              #                    occupy a5 with temp_13_cmp_30_0
              #                    release a5 with temp_13_cmp_30_0
              #                     44   (nop) 
              #                     46   (nop) 
              #                     48   (nop) 
              #                     49   mu array_0_4:48 
              #                     51   temp_8_ret_of_findfa_33_0 =  Call i32 findfa_0(temp_12_ele_of_*array_0_30_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_11_ptr_of_*array_0_30
              #                    store to temp_11_ptr_of_*array_0_30 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_11_ptr_of_*array_0_30
              #                    occupy a4 with temp_12_ele_of_*array_0_30_0
              #                    store to temp_12_ele_of_*array_0_30_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_12_ele_of_*array_0_30_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_12_ele_of_*array_0_30_0_0
              #                    load from temp_12_ele_of_*array_0_30_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    findfa
              #                     430  untrack temp_12_ele_of_*array_0_30_0 
              #                     347  mu array_0_4:51 
              #                     348  array_0_5 = chi array_0_4:51 
              #                     52   store temp_8_ret_of_findfa_33_0:i32 temp_11_ptr_of_*array_0_30:ptr->i32 
              #                    occupy a1 with temp_11_ptr_of_*array_0_30
              #                    load from temp_11_ptr_of_*array_0_30 in mem
    ld      a1,8(sp)
              #                    occupy a0 with temp_8_ret_of_findfa_33_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     431  untrack temp_8_ret_of_findfa_33_0 
              #                    occupy a0 with temp_8_ret_of_findfa_33_0
              #                    release a0 with temp_8_ret_of_findfa_33_0
              #                     53   array_0_6 = chi array_0_5:52 
              #                     56   (nop) 
              #                     58   temp_10_ele_of_*array_0_33_0 = load temp_11_ptr_of_*array_0_30:ptr->i32 
              #                    occupy a1 with temp_11_ptr_of_*array_0_30
              #                    occupy a0 with temp_10_ele_of_*array_0_33_0
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     432  untrack temp_11_ptr_of_*array_0_30 
              #                    occupy a1 with temp_11_ptr_of_*array_0_30
              #                    release a1 with temp_11_ptr_of_*array_0_30
              #                     59   mu array_0_6:58 
              #                     349  mu array_0_6:60 
              #                     60   ret temp_10_ele_of_*array_0_33_0 
              #                    load from ra_findfa_0 in mem
    ld      ra,72(sp)
              #                    load from s0_findfa_0 in mem
    ld      s0,64(sp)
              #                    occupy a0 with temp_10_ele_of_*array_0_33_0
              #                    store to temp_10_ele_of_*array_0_33_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_10_ele_of_*array_0_33_0
              #                    occupy a0 with temp_10_ele_of_*array_0_33_0
              #                    load from temp_10_ele_of_*array_0_33_0 in mem


    lw      a0,20(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     21   Define mmerge_0 "a_36_0,b_36_0," -> mmerge_ret_0 
    .globl mmerge
    .type mmerge,@function
mmerge:
              #                    mem layout:|ra_mmerge:8 at 40|s0_mmerge:8 at 32|a _s36 _i0:4 at 28|b _s36 _i0:4 at 24|temp_14_ret_of_findfa _s38 _i0:4 at 20|temp_15_ret_of_findfa _s38 _i0:4 at 16|temp_16_ptr_of_*array_0:8 at 8|temp_17_cmp _s41 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-48
              #                    store to ra_mmerge_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_mmerge_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     350  array_0_7 = chi array_0_0:21 
              #                     76   alloc i32 [temp_14_ret_of_findfa_38] 
              #                     79   alloc i32 [m_38] 
              #                     80   alloc i32 [temp_15_ret_of_findfa_38] 
              #                     83   alloc i32 [n_38] 
              #                     84   alloc ptr->i32 [temp_16_ptr_of_*array_0_41] 
              #                     88   alloc i1 [temp_17_cmp_41] 
              #                    regtab     a0:Freed { symidx: a_36_0, tracked: true } |     a1:Freed { symidx: b_36_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     77   temp_14_ret_of_findfa_38_0 =  Call i32 findfa_0(a_36_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with a_36_0
              #                    store to a_36_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with a_36_0
              #                    occupy a1 with b_36_0
              #                    store to b_36_0 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with b_36_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_36_0_0
              #                    load from a_36_0 in mem


    lw      a0,28(sp)
              #                    arg load ended


    call    findfa
              #                     433  untrack a_36_0 
              #                     351  mu array_0_7:77 
              #                     352  array_0_8 = chi array_0_7:77 
              #                     78   (nop) 
              #                     81   temp_15_ret_of_findfa_38_0 =  Call i32 findfa_0(b_36_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_14_ret_of_findfa_38_0
              #                    store to temp_14_ret_of_findfa_38_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_14_ret_of_findfa_38_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_b_36_0_0
              #                    load from b_36_0 in mem


    lw      a0,24(sp)
              #                    arg load ended


    call    findfa
              #                     434  untrack b_36_0 
              #                     353  mu array_0_8:81 
              #                     354  array_0_9 = chi array_0_8:81 
              #                     82   (nop) 
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findfa_38_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     89   temp_17_cmp_41_0 = icmp i32 Ne temp_14_ret_of_findfa_38_0, temp_15_ret_of_findfa_38_0 
              #                    occupy a1 with temp_14_ret_of_findfa_38_0
              #                    load from temp_14_ret_of_findfa_38_0 in mem


    lw      a1,20(sp)
              #                    occupy a0 with temp_15_ret_of_findfa_38_0
              #                    occupy a2 with temp_17_cmp_41_0
    xor     a2,a1,a0
    snez    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                     92   br i1 temp_17_cmp_41_0, label branch_true_42, label branch_false_42 
              #                    occupy a2 with temp_17_cmp_41_0
              #                    free a2
              #                    occupy a2 with temp_17_cmp_41_0
    bnez    a2, .branch_true_42
              #                    free a2
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findfa_38_0, tracked: true } |     a1:Freed { symidx: temp_14_ret_of_findfa_38_0, tracked: true } |     a2:Freed { symidx: temp_17_cmp_41_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     90   label branch_true_42: 
.branch_true_42:
              #                     435  untrack temp_17_cmp_41_0 
              #                    occupy a2 with temp_17_cmp_41_0
              #                    release a2 with temp_17_cmp_41_0
              #                     85   temp_16_ptr_of_*array_0_41 = GEP *array_0:ptr->i32 [Some(temp_14_ret_of_findfa_38_0)] 
              #                    occupy a2 with temp_16_ptr_of_*array_0_41
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_14_ret_of_findfa_38_0
    mv      a3, a1
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *array_0
              #                       load label array as ptr to reg
    la      a4, array
              #                    occupy reg a4 with *array_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     442  untrack temp_14_ret_of_findfa_38_0 
              #                    occupy a1 with temp_14_ret_of_findfa_38_0
              #                    release a1 with temp_14_ret_of_findfa_38_0
              #                     86   store temp_15_ret_of_findfa_38_0:i32 temp_16_ptr_of_*array_0_41:ptr->i32 
              #                    occupy a2 with temp_16_ptr_of_*array_0_41
              #                    occupy a0 with temp_15_ret_of_findfa_38_0
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                     441  untrack temp_16_ptr_of_*array_0_41 
              #                    occupy a2 with temp_16_ptr_of_*array_0_41
              #                    release a2 with temp_16_ptr_of_*array_0_41
              #                     440  untrack temp_15_ret_of_findfa_38_0 
              #                    occupy a0 with temp_15_ret_of_findfa_38_0
              #                    release a0 with temp_15_ret_of_findfa_38_0
              #                     87   array_0_10 = chi array_0_9:86 
              #                          jump label: branch_false_42 
              #                    occupy a2 with temp_17_cmp_41_0
              #                    load from temp_17_cmp_41_0 in mem


    lb      a2,7(sp)
              #                    occupy a1 with temp_14_ret_of_findfa_38_0
              #                    load from temp_14_ret_of_findfa_38_0 in mem


    lw      a1,20(sp)
              #                    occupy a0 with temp_15_ret_of_findfa_38_0
              #                    load from temp_15_ret_of_findfa_38_0 in mem


    lw      a0,16(sp)
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findfa_38_0, tracked: true } |     a1:Freed { symidx: temp_14_ret_of_findfa_38_0, tracked: true } |     a2:Freed { symidx: temp_17_cmp_41_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     91   label branch_false_42: 
.branch_false_42:
              #                     439  untrack temp_17_cmp_41_0 
              #                    occupy a2 with temp_17_cmp_41_0
              #                    release a2 with temp_17_cmp_41_0
              #                     438  untrack temp_16_ptr_of_*array_0_41 
              #                     437  untrack temp_15_ret_of_findfa_38_0 
              #                    occupy a0 with temp_15_ret_of_findfa_38_0
              #                    release a0 with temp_15_ret_of_findfa_38_0
              #                     436  untrack temp_14_ret_of_findfa_38_0 
              #                    occupy a1 with temp_14_ret_of_findfa_38_0
              #                    release a1 with temp_14_ret_of_findfa_38_0
              #                          jump label: exit_13 
    j       .exit_13
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     94   label exit_13: 
.exit_13:
              #                     355  mu array_0_11:93 
              #                     93   ret 
              #                    load from ra_mmerge_0 in mem
    ld      ra,40(sp)
              #                    load from s0_mmerge_0 in mem
    ld      s0,32(sp)
    addi    sp,sp,48
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     22   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 288|s0_main:8 at 280|t _s45 _i0:4 at 276|t _s45 _i2:4 at 272|m _s45 _i0:4 at 268|m _s45 _i1:4 at 264|a _s45 _i0:4 at 260|a _s45 _i1:4 at 256|a _s45 _i2:4 at 252|b _s45 _i0:4 at 248|b _s45 _i1:4 at 244|b _s45 _i2:4 at 240|temp_18_arithop _s51 _i0:4 at 236|i _s51 _i1:4 at 232|flag _s51 _i1:4 at 228|flag _s51 _i2:4 at 224|flag _s51 _i4:4 at 220|temp_19_value_from_ptr _s51 _i0:4 at 216|temp_22_arithop _s51 _i0:4 at 212|temp_23_arithop _s51 _i0:4 at 208|temp_24_ret_of_getint _s61 _i0:4 at 204|temp_25_ret_of_getint _s61 _i0:4 at 200|temp_26_arithop _s61 _i0:4 at 196|temp_28_arithop _s66 _i0:4 at 192|temp_29_arithop _s66 _i0:4 at 188|temp_30_arithop _s66 _i0:4 at 184|temp_31_ptr_of_*array_0:8 at 176|temp_32_arithop _s97 _i0:4 at 172|none:4 at 168|temp_39_ptr_of_*array_0:8 at 160|temp_40_ptr_of_*array_0:8 at 152|temp_41_ _s1187 _i0:1 at 151|temp_42_cmp _s59 _i0:1 at 150|temp_43_booltrans _s103 _i0:1 at 149|temp_44_logicnot _s103 _i0:1 at 148|temp_45_booltrans _s64 _i0:1 at 147|temp_46_logicnot _s64 _i0:1 at 146|temp_47_cmp _s69 _i0:1 at 145|temp_49_cmp _s74 _i0:1 at 144|temp_51_cmp _s79 _i0:1 at 143|none:3 at 140|temp_52_arithop _s79 _i0:4 at 136|temp_53_ptr_of_*array_0:8 at 128|temp_54_ele_of_*array_0 _s79 _i0:4 at 124|temp_55_cmp _s79 _i0:1 at 123|temp_56_cmp _s83 _i0:1 at 122|none:2 at 120|temp_57_arithop _s83 _i0:4 at 116|none:4 at 112|temp_58_ptr_of_*array_0:8 at 104|temp_59_ele_of_*array_0 _s83 _i0:4 at 100|temp_60_cmp _s83 _i0:1 at 99|temp_62_cmp _s87 _i0:1 at 98|none:2 at 96|temp_64_arithop _s87 _i0:4 at 92|none:4 at 88|temp_65_ptr_of_*array_0:8 at 80|temp_66_ele_of_*array_0 _s87 _i0:4 at 76|temp_67_cmp _s87 _i0:1 at 75|temp_68_cmp _s91 _i0:1 at 74|none:2 at 72|temp_70_arithop _s91 _i0:4 at 68|none:4 at 64|temp_71_ptr_of_*array_0:8 at 56|temp_72_ele_of_*array_0 _s91 _i0:4 at 52|temp_73_cmp _s91 _i0:1 at 51|none:3 at 48|temp_74_ptr_of_*array_0:8 at 40|temp_75_ele_of_*array_0 _s95 _i0:4 at 36|temp_76_cmp _s95 _i0:1 at 35|none:3 at 32|temp_77_ptr_of_*array_0:8 at 24|temp_78_ele_of_*array_0 _s95 _i0:4 at 20|temp_79_cmp _s95 _i0:1 at 19|none:3 at 16|temp_80_ret_of_findfa _s95 _i0:4 at 12|temp_81_ret_of_findfa _s95 _i0:4 at 8|temp_82_cmp _s95 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-296
              #                    store to ra_main_0 in mem offset legal
    sd      ra,288(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,280(sp)
    addi    s0,sp,296
              #                     356  array_0_12 = chi array_0_0:22 
              #                     357  n_0_1 = chi n_0_0:22 
              #                     95   alloc i32 [t_45] 
              #                     97   alloc i32 [m_45] 
              #                     99   alloc i32 [a_45] 
              #                     101  alloc i32 [b_45] 
              #                     106  alloc i32 [temp_18_arithop_51] 
              #                     113  alloc i32 [i_51] 
              #                     115  alloc i32 [flag_51] 
              #                     116  alloc i32 [temp_19_value_from_ptr_51] 
              #                     120  alloc i32 [temp_20_value_from_ptr_51] 
              #                     123  alloc i32 [temp_21_value_from_ptr_51] 
              #                     126  alloc i32 [temp_22_arithop_51] 
              #                     128  alloc i32 [temp_23_arithop_51] 
              #                     131  alloc i32 [k_51] 
              #                     134  alloc i32 [temp_24_ret_of_getint_61] 
              #                     137  alloc i32 [temp_25_ret_of_getint_61] 
              #                     140  alloc i32 [temp_26_arithop_61] 
              #                     143  alloc i32 [temp_27_value_from_ptr_66] 
              #                     146  alloc i32 [temp_28_arithop_66] 
              #                     148  alloc i32 [temp_29_arithop_66] 
              #                     150  alloc i32 [temp_30_arithop_66] 
              #                     153  alloc i32 [loc_66] 
              #                     154  alloc ptr->i32 [temp_31_ptr_of_*array_0_66] 
              #                     159  alloc i32 [temp_32_arithop_97] 
              #                     162  alloc i32 [tmp_97] 
              #                     165  alloc i32 [temp_33_value_from_ptr_93] 
              #                     168  alloc i32 [temp_34_arithop_93] 
              #                     171  alloc i32 [temp_35_value_from_ptr_89] 
              #                     174  alloc i32 [temp_36_arithop_89] 
              #                     177  alloc i32 [temp_37_arithop_85] 
              #                     180  alloc i32 [temp_38_arithop_81] 
              #                     183  alloc ptr->i32 [temp_39_ptr_of_*array_0_76] 
              #                     188  alloc ptr->i32 [temp_40_ptr_of_*array_0_71] 
              #                     193  alloc i1 [temp_41__1187] 
              #                     201  alloc i1 [temp_42_cmp_59] 
              #                     207  alloc i1 [temp_43_booltrans_103] 
              #                     209  alloc i1 [temp_44_logicnot_103] 
              #                     214  alloc i1 [temp_45_booltrans_64] 
              #                     216  alloc i1 [temp_46_logicnot_64] 
              #                     221  alloc i1 [temp_47_cmp_69] 
              #                     226  alloc i32 [temp_48_value_from_ptr_74] 
              #                     229  alloc i1 [temp_49_cmp_74] 
              #                     234  alloc i32 [temp_50_value_from_ptr_79] 
              #                     237  alloc i1 [temp_51_cmp_79] 
              #                     239  alloc i32 [temp_52_arithop_79] 
              #                     241  alloc ptr->i32 [temp_53_ptr_of_*array_0_79] 
              #                     243  alloc i32 [temp_54_ele_of_*array_0_79] 
              #                     246  alloc i1 [temp_55_cmp_79] 
              #                     254  alloc i1 [temp_56_cmp_83] 
              #                     256  alloc i32 [temp_57_arithop_83] 
              #                     258  alloc ptr->i32 [temp_58_ptr_of_*array_0_83] 
              #                     260  alloc i32 [temp_59_ele_of_*array_0_83] 
              #                     263  alloc i1 [temp_60_cmp_83] 
              #                     271  alloc i32 [temp_61_value_from_ptr_87] 
              #                     274  alloc i1 [temp_62_cmp_87] 
              #                     276  alloc i32 [temp_63_value_from_ptr_87] 
              #                     279  alloc i32 [temp_64_arithop_87] 
              #                     281  alloc ptr->i32 [temp_65_ptr_of_*array_0_87] 
              #                     283  alloc i32 [temp_66_ele_of_*array_0_87] 
              #                     286  alloc i1 [temp_67_cmp_87] 
              #                     294  alloc i1 [temp_68_cmp_91] 
              #                     296  alloc i32 [temp_69_value_from_ptr_91] 
              #                     299  alloc i32 [temp_70_arithop_91] 
              #                     301  alloc ptr->i32 [temp_71_ptr_of_*array_0_91] 
              #                     303  alloc i32 [temp_72_ele_of_*array_0_91] 
              #                     306  alloc i1 [temp_73_cmp_91] 
              #                     314  alloc ptr->i32 [temp_74_ptr_of_*array_0_95] 
              #                     316  alloc i32 [temp_75_ele_of_*array_0_95] 
              #                     319  alloc i1 [temp_76_cmp_95] 
              #                     321  alloc ptr->i32 [temp_77_ptr_of_*array_0_95] 
              #                     323  alloc i32 [temp_78_ele_of_*array_0_95] 
              #                     326  alloc i1 [temp_79_cmp_95] 
              #                     328  alloc i32 [temp_80_ret_of_findfa_95] 
              #                     330  alloc i32 [temp_81_ret_of_findfa_95] 
              #                     332  alloc i1 [temp_82_cmp_95] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     96    
              #                     98    
              #                     100   
              #                     102   
              #                     103  (nop) 
              #                     408  t_45_2 = i32 1_0 
              #                    occupy a0 with t_45_2
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_50 
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: t_45_2, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     195  label while.head_50: 
.while.head_50:
              #                     194  temp_41__1187_0 = icmp i32 Ne t_45_2, 0_0 
              #                    occupy a0 with t_45_2
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_41__1187_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     198  br i1 temp_41__1187_0, label while.body_50, label while.exit_50 
              #                    occupy a2 with temp_41__1187_0
              #                    free a2
              #                    occupy a2 with temp_41__1187_0
    bnez    a2, .while.body_50
              #                    free a2
    j       .while.exit_50
              #                    regtab     a0:Freed { symidx: t_45_2, tracked: true } |     a2:Freed { symidx: temp_41__1187_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     196  label while.body_50: 
.while.body_50:
              #                     107  temp_18_arithop_51_0 = Sub i32 t_45_2, 1_0 
              #                    occupy a0 with t_45_2
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_18_arithop_51_0
              #                    regtab:    a0:Occupied { symidx: t_45_2, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_41__1187_0, tracked: true } |     a3:Occupied { symidx: temp_18_arithop_51_0, tracked: true, occupy_count: 1 } |  released_gpr_count:14,released_fpr_count:24


    subw    a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     108  (nop) 
              #                     109  store 4_0:i32 *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    occupy a5 with 4_0
    li      a5, 4
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     110  n_0_3 = chi n_0_2:109 
              #                     111  (nop) 
              #                     112  (nop) 
              #                     114  (nop) 
              #                     117  temp_19_value_from_ptr_51_0 = load *n_0:ptr->i32 
              #                    occupy a6 with *n_0
              #                       load label n as ptr to reg
    la      a6, n
              #                    occupy reg a6 with *n_0
              #                    occupy a7 with temp_19_value_from_ptr_51_0
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                     118  mu n_0_3:117 
              #                     119   Call void init_0(temp_19_value_from_ptr_51_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with t_45_2
              #                    store to t_45_2 in mem offset legal
    sw      a0,272(sp)
              #                    release a0 with t_45_2
              #                    occupy a2 with temp_41__1187_0
              #                    store to temp_41__1187_0 in mem offset legal
    sb      a2,151(sp)
              #                    release a2 with temp_41__1187_0
              #                    occupy a3 with temp_18_arithop_51_0
              #                    store to temp_18_arithop_51_0 in mem offset legal
    sw      a3,236(sp)
              #                    release a3 with temp_18_arithop_51_0
              #                    occupy a7 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a7,216(sp)
              #                    release a7 with temp_19_value_from_ptr_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_19_value_from_ptr_51_0_0
              #                    load from temp_19_value_from_ptr_51_0 in mem


    lw      a0,216(sp)
              #                    arg load ended


    call    init
              #                     358  mu array_0_13:119 
              #                     359  array_0_14 = chi array_0_13:119 
              #                     121  (nop) 
              #                     122  mu n_0_3:121 
              #                     124  (nop) 
              #                     125  mu n_0_3:124 
              #                     127  temp_22_arithop_51_0 = Mul i32 temp_19_value_from_ptr_51_0, temp_19_value_from_ptr_51_0 
              #                    occupy a0 with temp_22_arithop_51_0
              #                    occupy a1 with temp_19_value_from_ptr_51_0
              #                    load from temp_19_value_from_ptr_51_0 in mem


    lw      a1,216(sp)
              #                    occupy a1 with temp_19_value_from_ptr_51_0
    mulw    a0,a1,a1
              #                    free a1
              #                    free a1
              #                    free a0
              #                     129  temp_23_arithop_51_0 = Add i32 temp_22_arithop_51_0, 1_0 
              #                    occupy a0 with temp_22_arithop_51_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_23_arithop_51_0
    ADDW    a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                     130  (nop) 
              #                     409  i_51_1 = i32 0_0 
              #                    occupy a4 with i_51_1
    li      a4, 0
              #                    free a4
              #                     410  flag_51_1 = i32 0_0 
              #                    occupy a5 with flag_51_1
    li      a5, 0
              #                    free a5
              #                          jump label: while.head_60 
    j       .while.head_60
              #                    regtab     a0:Freed { symidx: temp_22_arithop_51_0, tracked: true } |     a1:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |     a3:Freed { symidx: temp_23_arithop_51_0, tracked: true } |     a4:Freed { symidx: i_51_1, tracked: true } |     a5:Freed { symidx: flag_51_1, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     203  label while.head_60: 
.while.head_60:
              #                     202  temp_42_cmp_59_0 = icmp i32 Slt i_51_1, 10_0 
              #                    occupy a4 with i_51_1
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    occupy a6 with temp_42_cmp_59_0
    slt     a6,a4,a2
              #                    free a4
              #                    free a2
              #                    free a6
              #                     206  br i1 temp_42_cmp_59_0, label while.body_60, label while.exit_60 
              #                    occupy a6 with temp_42_cmp_59_0
              #                    free a6
              #                    occupy a6 with temp_42_cmp_59_0
    bnez    a6, .while.body_60
              #                    free a6
    j       .while.exit_60
              #                    regtab     a0:Freed { symidx: temp_22_arithop_51_0, tracked: true } |     a1:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |     a3:Freed { symidx: temp_23_arithop_51_0, tracked: true } |     a4:Freed { symidx: i_51_1, tracked: true } |     a5:Freed { symidx: flag_51_1, tracked: true } |     a6:Freed { symidx: temp_42_cmp_59_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     204  label while.body_60: 
.while.body_60:
              #                     135  temp_24_ret_of_getint_61_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_22_arithop_51_0
              #                    store to temp_22_arithop_51_0 in mem offset legal
    sw      a0,212(sp)
              #                    release a0 with temp_22_arithop_51_0
              #                    occupy a1 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a1,216(sp)
              #                    release a1 with temp_19_value_from_ptr_51_0
              #                    occupy a3 with temp_23_arithop_51_0
              #                    store to temp_23_arithop_51_0 in mem offset legal
    sw      a3,208(sp)
              #                    release a3 with temp_23_arithop_51_0
              #                    occupy a4 with i_51_1
              #                    store to i_51_1 in mem offset legal
    sw      a4,232(sp)
              #                    release a4 with i_51_1
              #                    occupy a5 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a5,228(sp)
              #                    release a5 with flag_51_1
              #                    occupy a6 with temp_42_cmp_59_0
              #                    store to temp_42_cmp_59_0 in mem offset legal
    sb      a6,150(sp)
              #                    release a6 with temp_42_cmp_59_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     136  (nop) 
              #                     138  temp_25_ret_of_getint_61_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_24_ret_of_getint_61_0
              #                    store to temp_24_ret_of_getint_61_0 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with temp_24_ret_of_getint_61_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     139  (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     215  temp_45_booltrans_64_0 = icmp i32 Ne flag_51_1, 0_0 
              #                    occupy a1 with flag_51_1
              #                    load from flag_51_1 in mem


    lw      a1,228(sp)
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_45_booltrans_64_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     217  temp_46_logicnot_64_0 = xor i1 temp_45_booltrans_64_0, true 
              #                    occupy a3 with temp_45_booltrans_64_0
              #                    occupy a4 with temp_46_logicnot_64_0
    seqz    a4, a3
              #                    free a3
              #                    free a4
              #                     220  br i1 temp_46_logicnot_64_0, label branch_true_65, label UP_60_0 
              #                    occupy a4 with temp_46_logicnot_64_0
              #                    free a4
              #                    occupy a4 with temp_46_logicnot_64_0
    bnez    a4, .branch_true_65
              #                    free a4
    j       .UP_60_0
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a3:Freed { symidx: temp_45_booltrans_64_0, tracked: true } |     a4:Freed { symidx: temp_46_logicnot_64_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     218  label branch_true_65: 
.branch_true_65:
              #                     446  untrack temp_46_logicnot_64_0 
              #                    occupy a4 with temp_46_logicnot_64_0
              #                    release a4 with temp_46_logicnot_64_0
              #                     445  untrack temp_42_cmp_59_0 
              #                     444  untrack temp_45_booltrans_64_0 
              #                    occupy a3 with temp_45_booltrans_64_0
              #                    release a3 with temp_45_booltrans_64_0
              #                     144  (nop) 
              #                     145  mu n_0_3:144 
              #                     147  temp_28_arithop_66_0 = Sub i32 temp_24_ret_of_getint_61_0, 1_0 
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    load from temp_24_ret_of_getint_61_0 in mem


    lw      a2,204(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_28_arithop_66_0
              #                    regtab:    a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Occupied { symidx: temp_24_ret_of_getint_61_0, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Occupied { symidx: temp_28_arithop_66_0, tracked: true, occupy_count: 1 } |  released_gpr_count:10,released_fpr_count:24


    subw    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     149  temp_29_arithop_66_0 = Mul i32 temp_19_value_from_ptr_51_0, temp_28_arithop_66_0 
              #                    occupy a5 with temp_29_arithop_66_0
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    load from temp_19_value_from_ptr_51_0 in mem


    lw      a6,216(sp)
              #                    occupy a4 with temp_28_arithop_66_0
    mulw    a5,a6,a4
              #                    free a6
              #                    free a4
              #                    free a5
              #                     447  untrack temp_28_arithop_66_0 
              #                    occupy a4 with temp_28_arithop_66_0
              #                    release a4 with temp_28_arithop_66_0
              #                     151  temp_30_arithop_66_0 = Add i32 temp_29_arithop_66_0, temp_25_ret_of_getint_61_0 
              #                    occupy a5 with temp_29_arithop_66_0
              #                    occupy a0 with temp_25_ret_of_getint_61_0
              #                    occupy a4 with temp_30_arithop_66_0
    ADDW    a4,a5,a0
              #                    free a5
              #                    free a0
              #                    free a4
              #                     449  untrack temp_29_arithop_66_0 
              #                    occupy a5 with temp_29_arithop_66_0
              #                    release a5 with temp_29_arithop_66_0
              #                     152  (nop) 
              #                     155  temp_31_ptr_of_*array_0_66 = GEP *array_0:ptr->i32 [Some(temp_30_arithop_66_0)] 
              #                    occupy a5 with temp_31_ptr_of_*array_0_66
    li      a5, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_30_arithop_66_0
    mv      a7, a4
              #                    free a4
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with *array_0
              #                       load label array as ptr to reg
    la      s1, array
              #                    occupy reg s1 with *array_0
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                     156  store temp_30_arithop_66_0:i32 temp_31_ptr_of_*array_0_66:ptr->i32 
              #                    occupy a5 with temp_31_ptr_of_*array_0_66
              #                    occupy a4 with temp_30_arithop_66_0
    sw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                     448  untrack temp_31_ptr_of_*array_0_66 
              #                    occupy a5 with temp_31_ptr_of_*array_0_66
              #                    release a5 with temp_31_ptr_of_*array_0_66
              #                     157  array_0_16 = chi array_0_15:156 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     222  temp_47_cmp_69_0 = icmp i32 Eq temp_24_ret_of_getint_61_0, 1_0 
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_47_cmp_69_0
    xor     a5,a2,a3
    seqz    a5, a5
              #                    free a2
              #                    free a3
              #                    free a5
              #                     225  br i1 temp_47_cmp_69_0, label branch_true_70, label branch_false_70 
              #                    occupy a5 with temp_47_cmp_69_0
              #                    free a5
              #                    occupy a5 with temp_47_cmp_69_0
    bnez    a5, .branch_true_70
              #                    free a5
    j       .branch_false_70
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a5:Freed { symidx: temp_47_cmp_69_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     223  label branch_true_70: 
.branch_true_70:
              #                     452  untrack temp_26_arithop_61_0 
              #                     451  untrack flag_51_4 
              #                     450  untrack temp_47_cmp_69_0 
              #                    occupy a5 with temp_47_cmp_69_0
              #                    release a5 with temp_47_cmp_69_0
              #                     189  temp_40_ptr_of_*array_0_71 = GEP *array_0:ptr->i32 [Some(0_0)] 
              #                    occupy a3 with temp_40_ptr_of_*array_0_71
    li      a3, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     190  store 0_0:i32 temp_40_ptr_of_*array_0_71:ptr->i32 
              #                    occupy a3 with temp_40_ptr_of_*array_0_71
              #                    occupy a5 with 0_0
    li      a5, 0
    sw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     455  untrack temp_40_ptr_of_*array_0_71 
              #                    occupy a3 with temp_40_ptr_of_*array_0_71
              #                    release a3 with temp_40_ptr_of_*array_0_71
              #                     191  array_0_17 = chi array_0_16:190 
              #                     192   Call void mmerge_0(temp_30_arithop_66_0, 0_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_25_ret_of_getint_61_0
              #                    store to temp_25_ret_of_getint_61_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_25_ret_of_getint_61_0
              #                    occupy a1 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with flag_51_1
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    store to temp_24_ret_of_getint_61_0 in mem offset legal
    sw      a2,204(sp)
              #                    release a2 with temp_24_ret_of_getint_61_0
              #                    occupy a4 with temp_30_arithop_66_0
              #                    store to temp_30_arithop_66_0 in mem offset legal
    sw      a4,184(sp)
              #                    release a4 with temp_30_arithop_66_0
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a6,216(sp)
              #                    release a6 with temp_19_value_from_ptr_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_arithop_66_0_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a0,184(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    arg load ended


    call    mmerge
              #                     360  mu array_0_17:192 
              #                     361  array_0_18 = chi array_0_17:192 
              #                          jump label: branch_false_70 
              #                    occupy a0 with temp_25_ret_of_getint_61_0
              #                    load from temp_25_ret_of_getint_61_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    load from temp_24_ret_of_getint_61_0 in mem


    lw      a2,204(sp)
              #                    occupy a5 with temp_47_cmp_69_0
              #                    load from temp_47_cmp_69_0 in mem


    lb      a5,145(sp)
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    load from temp_19_value_from_ptr_51_0 in mem


    lw      a6,216(sp)
              #                    occupy a4 with temp_30_arithop_66_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a4,184(sp)
              #                    occupy a1 with flag_51_1
              #                    load from flag_51_1 in mem


    lw      a1,228(sp)
    j       .branch_false_70
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a5:Freed { symidx: temp_47_cmp_69_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     224  label branch_false_70: 
.branch_false_70:
              #                     454  untrack temp_40_ptr_of_*array_0_71 
              #                     453  untrack temp_47_cmp_69_0 
              #                    occupy a5 with temp_47_cmp_69_0
              #                    release a5 with temp_47_cmp_69_0
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     227  (nop) 
              #                     228  mu n_0_3:227 
              #                     230  temp_49_cmp_74_0 = icmp i32 Eq temp_24_ret_of_getint_61_0, temp_19_value_from_ptr_51_0 
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    occupy a3 with temp_49_cmp_74_0
    xor     a3,a2,a6
    seqz    a3, a3
              #                    free a2
              #                    free a6
              #                    free a3
              #                     233  br i1 temp_49_cmp_74_0, label branch_true_75, label branch_false_75 
              #                    occupy a3 with temp_49_cmp_74_0
              #                    free a3
              #                    occupy a3 with temp_49_cmp_74_0
    bnez    a3, .branch_true_75
              #                    free a3
    j       .branch_false_75
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a3:Freed { symidx: temp_49_cmp_74_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     231  label branch_true_75: 
.branch_true_75:
              #                     458  untrack temp_26_arithop_61_0 
              #                     457  untrack flag_51_4 
              #                     456  untrack temp_49_cmp_74_0 
              #                    occupy a3 with temp_49_cmp_74_0
              #                    release a3 with temp_49_cmp_74_0
              #                     184  temp_39_ptr_of_*array_0_76 = GEP *array_0:ptr->i32 [Some(temp_23_arithop_51_0)] 
              #                    occupy a3 with temp_39_ptr_of_*array_0_76
    li      a3, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with temp_23_arithop_51_0
              #                    load from temp_23_arithop_51_0 in mem


    lw      a7,208(sp)
    mv      a5, a7
              #                    free a7
              #                    occupy a7 with temp_23_arithop_51_0
              #                    store to temp_23_arithop_51_0 in mem offset legal
    sw      a7,208(sp)
              #                    release a7 with temp_23_arithop_51_0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     185  store temp_23_arithop_51_0:i32 temp_39_ptr_of_*array_0_76:ptr->i32 
              #                    occupy a3 with temp_39_ptr_of_*array_0_76
              #                    occupy a5 with temp_23_arithop_51_0
              #                    load from temp_23_arithop_51_0 in mem


    lw      a5,208(sp)
    sw      a5,0(a3)
              #                    free a5
              #                    occupy a5 with temp_23_arithop_51_0
              #                    store to temp_23_arithop_51_0 in mem offset legal
    sw      a5,208(sp)
              #                    release a5 with temp_23_arithop_51_0
              #                    free a3
              #                     461  untrack temp_39_ptr_of_*array_0_76 
              #                    occupy a3 with temp_39_ptr_of_*array_0_76
              #                    release a3 with temp_39_ptr_of_*array_0_76
              #                     186  array_0_20 = chi array_0_19:185 
              #                     187   Call void mmerge_0(temp_30_arithop_66_0, temp_23_arithop_51_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_25_ret_of_getint_61_0
              #                    store to temp_25_ret_of_getint_61_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_25_ret_of_getint_61_0
              #                    occupy a1 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with flag_51_1
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    store to temp_24_ret_of_getint_61_0 in mem offset legal
    sw      a2,204(sp)
              #                    release a2 with temp_24_ret_of_getint_61_0
              #                    occupy a4 with temp_30_arithop_66_0
              #                    store to temp_30_arithop_66_0 in mem offset legal
    sw      a4,184(sp)
              #                    release a4 with temp_30_arithop_66_0
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a6,216(sp)
              #                    release a6 with temp_19_value_from_ptr_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_arithop_66_0_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a0,184(sp)
              #                    occupy a1 with _anonymous_of_temp_23_arithop_51_0_0
              #                    load from temp_23_arithop_51_0 in mem


    lw      a1,208(sp)
              #                    arg load ended


    call    mmerge
              #                     362  mu array_0_20:187 
              #                     363  array_0_21 = chi array_0_20:187 
              #                          jump label: branch_false_75 
              #                    occupy a0 with temp_25_ret_of_getint_61_0
              #                    load from temp_25_ret_of_getint_61_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    load from temp_24_ret_of_getint_61_0 in mem


    lw      a2,204(sp)
              #                    occupy a3 with temp_49_cmp_74_0
              #                    load from temp_49_cmp_74_0 in mem


    lb      a3,144(sp)
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    load from temp_19_value_from_ptr_51_0 in mem


    lw      a6,216(sp)
              #                    occupy a4 with temp_30_arithop_66_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a4,184(sp)
              #                    occupy a1 with flag_51_1
              #                    load from flag_51_1 in mem


    lw      a1,228(sp)
    j       .branch_false_75
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a3:Freed { symidx: temp_49_cmp_74_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     232  label branch_false_75: 
.branch_false_75:
              #                     460  untrack temp_49_cmp_74_0 
              #                    occupy a3 with temp_49_cmp_74_0
              #                    release a3 with temp_49_cmp_74_0
              #                     459  untrack temp_39_ptr_of_*array_0_76 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     235  (nop) 
              #                     236  mu n_0_3:235 
              #                     238  temp_51_cmp_79_0 = icmp i32 Slt temp_25_ret_of_getint_61_0, temp_19_value_from_ptr_51_0 
              #                    occupy a0 with temp_25_ret_of_getint_61_0
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    occupy a3 with temp_51_cmp_79_0
    slt     a3,a0,a6
              #                    free a0
              #                    free a6
              #                    free a3
              #                     253  br i1 temp_51_cmp_79_0, label branch_short_circuit_p_true_426, label branch_short_circuit_c_false_426 
              #                    occupy a3 with temp_51_cmp_79_0
              #                    free a3
              #                    occupy a3 with temp_51_cmp_79_0
    bnez    a3, .branch_short_circuit_p_true_426
              #                    free a3
    j       .branch_short_circuit_c_false_426
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a3:Freed { symidx: temp_51_cmp_79_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     250  label branch_short_circuit_p_true_426: 
.branch_short_circuit_p_true_426:
              #                     467  untrack temp_51_cmp_79_0 
              #                    occupy a3 with temp_51_cmp_79_0
              #                    release a3 with temp_51_cmp_79_0
              #                     240  temp_52_arithop_79_0 = Add i32 temp_30_arithop_66_0, 1_0 
              #                    occupy a4 with temp_30_arithop_66_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_52_arithop_79_0
    ADDW    a5,a4,a3
              #                    free a4
              #                    occupy a4 with temp_30_arithop_66_0
              #                    store to temp_30_arithop_66_0 in mem offset legal
    sw      a4,184(sp)
              #                    release a4 with temp_30_arithop_66_0
              #                    free a3
              #                    free a5
              #                     242  temp_53_ptr_of_*array_0_79 = GEP *array_0:Array:i32:[None] [Some(temp_52_arithop_79_0)] 
              #                    occupy a4 with temp_53_ptr_of_*array_0_79
    li      a4, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_52_arithop_79_0
    mv      a7, a5
              #                    free a5
              #                    occupy a5 with temp_52_arithop_79_0
              #                    store to temp_52_arithop_79_0 in mem offset legal
    sw      a5,136(sp)
              #                    release a5 with temp_52_arithop_79_0
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a4,a4,a5
              #                    free a5
              #                    free a4
              #                     244  temp_54_ele_of_*array_0_79_0 = load temp_53_ptr_of_*array_0_79:ptr->i32 
              #                    occupy a4 with temp_53_ptr_of_*array_0_79
              #                    occupy a5 with temp_54_ele_of_*array_0_79_0
    lw      a5,0(a4)
              #                    free a5
              #                    occupy a5 with temp_54_ele_of_*array_0_79_0
              #                    store to temp_54_ele_of_*array_0_79_0 in mem offset legal
    sw      a5,124(sp)
              #                    release a5 with temp_54_ele_of_*array_0_79_0
              #                    free a4
              #                     535  untrack temp_53_ptr_of_*array_0_79 
              #                    occupy a4 with temp_53_ptr_of_*array_0_79
              #                    release a4 with temp_53_ptr_of_*array_0_79
              #                     245  mu array_0_22:244 
              #                     247  temp_55_cmp_79_0 = icmp i32 Ne temp_54_ele_of_*array_0_79_0, -1_0 
              #                    occupy a4 with temp_54_ele_of_*array_0_79_0
              #                    load from temp_54_ele_of_*array_0_79_0 in mem


    lw      a4,124(sp)
              #                    occupy a5 with -1_0
    li      a5, -1
              #                    occupy a7 with temp_55_cmp_79_0
    xor     a7,a4,a5
    snez    a7, a7
              #                    free a4
              #                    occupy a4 with temp_54_ele_of_*array_0_79_0
              #                    store to temp_54_ele_of_*array_0_79_0 in mem offset legal
    sw      a4,124(sp)
              #                    release a4 with temp_54_ele_of_*array_0_79_0
              #                    free a5
              #                    free a7
              #                     536  untrack temp_54_ele_of_*array_0_79_0 
              #                     252  br i1 temp_55_cmp_79_0, label branch_short_circuit_c_true_426, label branch_short_circuit_c_false_426 
              #                    occupy a7 with temp_55_cmp_79_0
              #                    free a7
              #                    occupy a7 with temp_55_cmp_79_0
    bnez    a7, .branch_short_circuit_c_true_426
              #                    free a7
              #                    occupy a7 with temp_55_cmp_79_0
              #                    store to temp_55_cmp_79_0 in mem offset legal
    sb      a7,123(sp)
              #                    release a7 with temp_55_cmp_79_0
              #                    occupy a3 with temp_51_cmp_79_0
              #                    load from temp_51_cmp_79_0 in mem


    lb      a3,143(sp)
              #                    occupy a4 with temp_30_arithop_66_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a4,184(sp)
    j       .branch_short_circuit_c_false_426
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |     a7:Freed { symidx: temp_55_cmp_79_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     248  label branch_short_circuit_c_true_426: 
.branch_short_circuit_c_true_426:
              #                     537  untrack temp_55_cmp_79_0 
              #                    occupy a7 with temp_55_cmp_79_0
              #                    release a7 with temp_55_cmp_79_0
              #                     181  (nop) 
              #                     182   Call void mmerge_0(temp_30_arithop_66_0, temp_52_arithop_79_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_25_ret_of_getint_61_0
              #                    store to temp_25_ret_of_getint_61_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_25_ret_of_getint_61_0
              #                    occupy a1 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with flag_51_1
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    store to temp_24_ret_of_getint_61_0 in mem offset legal
    sw      a2,204(sp)
              #                    release a2 with temp_24_ret_of_getint_61_0
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a6,216(sp)
              #                    release a6 with temp_19_value_from_ptr_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_arithop_66_0_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a0,184(sp)
              #                    occupy a1 with _anonymous_of_temp_52_arithop_79_0_0
              #                    load from temp_52_arithop_79_0 in mem


    lw      a1,136(sp)
              #                    arg load ended


    call    mmerge
              #                     540  untrack temp_52_arithop_79_0 
              #                     374  mu array_0_22:182 
              #                     375  array_0_33 = chi array_0_22:182 
              #                          jump label: branch_short_circuit_c_false_426 
              #                    occupy a0 with temp_25_ret_of_getint_61_0
              #                    load from temp_25_ret_of_getint_61_0 in mem


    lw      a0,200(sp)
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    load from temp_24_ret_of_getint_61_0 in mem


    lw      a2,204(sp)
              #                    occupy a3 with temp_51_cmp_79_0
              #                    load from temp_51_cmp_79_0 in mem


    lb      a3,143(sp)
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    load from temp_19_value_from_ptr_51_0 in mem


    lw      a6,216(sp)
              #                    occupy a4 with temp_30_arithop_66_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a4,184(sp)
              #                    occupy a1 with flag_51_1
              #                    load from flag_51_1 in mem


    lw      a1,228(sp)
    j       .branch_short_circuit_c_false_426
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a3:Freed { symidx: temp_51_cmp_79_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     249  label branch_short_circuit_c_false_426: 
.branch_short_circuit_c_false_426:
              #                     539  untrack temp_52_arithop_79_0 
              #                     538  untrack temp_55_cmp_79_0 
              #                     466  untrack temp_51_cmp_79_0 
              #                    occupy a3 with temp_51_cmp_79_0
              #                    release a3 with temp_51_cmp_79_0
              #                     465  untrack temp_55_cmp_79_0 
              #                     464  untrack temp_53_ptr_of_*array_0_79 
              #                     463  untrack temp_54_ele_of_*array_0_79_0 
              #                     462  untrack temp_52_arithop_79_0 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     255  temp_56_cmp_83_0 = icmp i32 Sgt temp_25_ret_of_getint_61_0, 1_0 
              #                    occupy a0 with temp_25_ret_of_getint_61_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_56_cmp_83_0
    slt     a5,a3,a0
              #                    free a0
              #                    occupy a0 with temp_25_ret_of_getint_61_0
              #                    store to temp_25_ret_of_getint_61_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_25_ret_of_getint_61_0
              #                    free a3
              #                    free a5
              #                     468  untrack temp_25_ret_of_getint_61_0 
              #                     270  br i1 temp_56_cmp_83_0, label branch_short_circuit_p_true_444, label branch_short_circuit_c_false_444 
              #                    occupy a5 with temp_56_cmp_83_0
              #                    free a5
              #                    occupy a5 with temp_56_cmp_83_0
    bnez    a5, .branch_short_circuit_p_true_444
              #                    free a5
    j       .branch_short_circuit_c_false_444
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a5:Freed { symidx: temp_56_cmp_83_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     267  label branch_short_circuit_p_true_444: 
.branch_short_circuit_p_true_444:
              #                     474  untrack temp_56_cmp_83_0 
              #                    occupy a5 with temp_56_cmp_83_0
              #                    release a5 with temp_56_cmp_83_0
              #                     257  temp_57_arithop_83_0 = Sub i32 temp_30_arithop_66_0, 1_0 
              #                    occupy a4 with temp_30_arithop_66_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with temp_57_arithop_83_0
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a3:Occupied { symidx: temp_57_arithop_83_0, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: temp_30_arithop_66_0, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:4,released_fpr_count:24


    subw    a3,a4,a0
              #                    free a4
              #                    occupy a4 with temp_30_arithop_66_0
              #                    store to temp_30_arithop_66_0 in mem offset legal
    sw      a4,184(sp)
              #                    release a4 with temp_30_arithop_66_0
              #                    free a0
              #                    free a3
              #                     259  temp_58_ptr_of_*array_0_83 = GEP *array_0:Array:i32:[None] [Some(temp_57_arithop_83_0)] 
              #                    occupy a4 with temp_58_ptr_of_*array_0_83
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_57_arithop_83_0
    mv      a5, a3
              #                    free a3
              #                    occupy a3 with temp_57_arithop_83_0
              #                    store to temp_57_arithop_83_0 in mem offset legal
    sw      a3,116(sp)
              #                    release a3 with temp_57_arithop_83_0
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a3 with *array_0
              #                       load label array as ptr to reg
    la      a3, array
              #                    occupy reg a3 with *array_0
    add     a4,a4,a3
              #                    free a3
              #                    free a4
              #                     261  temp_59_ele_of_*array_0_83_0 = load temp_58_ptr_of_*array_0_83:ptr->i32 
              #                    occupy a4 with temp_58_ptr_of_*array_0_83
              #                    occupy a3 with temp_59_ele_of_*array_0_83_0
    lw      a3,0(a4)
              #                    free a3
              #                    occupy a3 with temp_59_ele_of_*array_0_83_0
              #                    store to temp_59_ele_of_*array_0_83_0 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with temp_59_ele_of_*array_0_83_0
              #                    free a4
              #                     530  untrack temp_58_ptr_of_*array_0_83 
              #                    occupy a4 with temp_58_ptr_of_*array_0_83
              #                    release a4 with temp_58_ptr_of_*array_0_83
              #                     262  mu array_0_23:261 
              #                     264  temp_60_cmp_83_0 = icmp i32 Ne temp_59_ele_of_*array_0_83_0, -1_0 
              #                    occupy a3 with temp_59_ele_of_*array_0_83_0
              #                    load from temp_59_ele_of_*array_0_83_0 in mem


    lw      a3,100(sp)
              #                    occupy a4 with -1_0
    li      a4, -1
              #                    occupy a5 with temp_60_cmp_83_0
    xor     a5,a3,a4
    snez    a5, a5
              #                    free a3
              #                    occupy a3 with temp_59_ele_of_*array_0_83_0
              #                    store to temp_59_ele_of_*array_0_83_0 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with temp_59_ele_of_*array_0_83_0
              #                    free a4
              #                    free a5
              #                     529  untrack temp_59_ele_of_*array_0_83_0 
              #                     269  br i1 temp_60_cmp_83_0, label branch_short_circuit_c_true_444, label branch_short_circuit_c_false_444 
              #                    occupy a5 with temp_60_cmp_83_0
              #                    free a5
              #                    occupy a5 with temp_60_cmp_83_0
    bnez    a5, .branch_short_circuit_c_true_444
              #                    free a5
              #                    occupy a5 with temp_60_cmp_83_0
              #                    store to temp_60_cmp_83_0 in mem offset legal
    sb      a5,99(sp)
              #                    release a5 with temp_60_cmp_83_0
              #                    occupy a5 with temp_56_cmp_83_0
              #                    load from temp_56_cmp_83_0 in mem


    lb      a5,122(sp)
              #                    occupy a4 with temp_30_arithop_66_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a4,184(sp)
    j       .branch_short_circuit_c_false_444
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a5:Freed { symidx: temp_60_cmp_83_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     265  label branch_short_circuit_c_true_444: 
.branch_short_circuit_c_true_444:
              #                     531  untrack temp_60_cmp_83_0 
              #                    occupy a5 with temp_60_cmp_83_0
              #                    release a5 with temp_60_cmp_83_0
              #                     178  (nop) 
              #                     179   Call void mmerge_0(temp_30_arithop_66_0, temp_57_arithop_83_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with flag_51_1
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    store to temp_24_ret_of_getint_61_0 in mem offset legal
    sw      a2,204(sp)
              #                    release a2 with temp_24_ret_of_getint_61_0
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a6,216(sp)
              #                    release a6 with temp_19_value_from_ptr_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_arithop_66_0_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a0,184(sp)
              #                    occupy a1 with _anonymous_of_temp_57_arithop_83_0_0
              #                    load from temp_57_arithop_83_0 in mem


    lw      a1,116(sp)
              #                    arg load ended


    call    mmerge
              #                     534  untrack temp_57_arithop_83_0 
              #                     372  mu array_0_23:179 
              #                     373  array_0_32 = chi array_0_23:179 
              #                          jump label: branch_short_circuit_c_false_444 
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    load from temp_24_ret_of_getint_61_0 in mem


    lw      a2,204(sp)
              #                    occupy a5 with temp_56_cmp_83_0
              #                    load from temp_56_cmp_83_0 in mem


    lb      a5,122(sp)
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    load from temp_19_value_from_ptr_51_0 in mem


    lw      a6,216(sp)
              #                    occupy a4 with temp_30_arithop_66_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a4,184(sp)
              #                    occupy a1 with flag_51_1
              #                    load from flag_51_1 in mem


    lw      a1,228(sp)
    j       .branch_short_circuit_c_false_444
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a5:Freed { symidx: temp_56_cmp_83_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     266  label branch_short_circuit_c_false_444: 
.branch_short_circuit_c_false_444:
              #                     533  untrack temp_57_arithop_83_0 
              #                     532  untrack temp_60_cmp_83_0 
              #                     473  untrack temp_58_ptr_of_*array_0_83 
              #                     472  untrack temp_57_arithop_83_0 
              #                     471  untrack temp_56_cmp_83_0 
              #                    occupy a5 with temp_56_cmp_83_0
              #                    release a5 with temp_56_cmp_83_0
              #                     470  untrack temp_59_ele_of_*array_0_83_0 
              #                     469  untrack temp_60_cmp_83_0 
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     272  (nop) 
              #                     273  mu n_0_3:272 
              #                     275  temp_62_cmp_87_0 = icmp i32 Slt temp_24_ret_of_getint_61_0, temp_19_value_from_ptr_51_0 
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    occupy a0 with temp_62_cmp_87_0
    slt     a0,a2,a6
              #                    free a2
              #                    free a6
              #                    free a0
              #                     293  br i1 temp_62_cmp_87_0, label branch_short_circuit_p_true_462, label branch_short_circuit_c_false_462 
              #                    occupy a0 with temp_62_cmp_87_0
              #                    free a0
              #                    occupy a0 with temp_62_cmp_87_0
    bnez    a0, .branch_short_circuit_p_true_462
              #                    free a0
    j       .branch_short_circuit_c_false_462
              #                    regtab     a0:Freed { symidx: temp_62_cmp_87_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     290  label branch_short_circuit_p_true_462: 
.branch_short_circuit_p_true_462:
              #                     480  untrack temp_62_cmp_87_0 
              #                    occupy a0 with temp_62_cmp_87_0
              #                    release a0 with temp_62_cmp_87_0
              #                     277  (nop) 
              #                     278  mu n_0_3:277 
              #                     280  temp_64_arithop_87_0 = Add i32 temp_30_arithop_66_0, temp_19_value_from_ptr_51_0 
              #                    occupy a4 with temp_30_arithop_66_0
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    occupy a0 with temp_64_arithop_87_0
    ADDW    a0,a4,a6
              #                    free a4
              #                    free a6
              #                    free a0
              #                     282  temp_65_ptr_of_*array_0_87 = GEP *array_0:Array:i32:[None] [Some(temp_64_arithop_87_0)] 
              #                    occupy a3 with temp_65_ptr_of_*array_0_87
    li      a3, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with temp_64_arithop_87_0
    mv      a5, a0
              #                    free a0
              #                    occupy a0 with temp_64_arithop_87_0
              #                    store to temp_64_arithop_87_0 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_64_arithop_87_0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a0 with *array_0
              #                       load label array as ptr to reg
    la      a0, array
              #                    occupy reg a0 with *array_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     284  temp_66_ele_of_*array_0_87_0 = load temp_65_ptr_of_*array_0_87:ptr->i32 
              #                    occupy a3 with temp_65_ptr_of_*array_0_87
              #                    occupy a0 with temp_66_ele_of_*array_0_87_0
    lw      a0,0(a3)
              #                    free a0
              #                    occupy a0 with temp_66_ele_of_*array_0_87_0
              #                    store to temp_66_ele_of_*array_0_87_0 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_66_ele_of_*array_0_87_0
              #                    free a3
              #                     523  untrack temp_65_ptr_of_*array_0_87 
              #                    occupy a3 with temp_65_ptr_of_*array_0_87
              #                    release a3 with temp_65_ptr_of_*array_0_87
              #                     285  mu array_0_24:284 
              #                     287  temp_67_cmp_87_0 = icmp i32 Ne temp_66_ele_of_*array_0_87_0, -1_0 
              #                    occupy a0 with temp_66_ele_of_*array_0_87_0
              #                    load from temp_66_ele_of_*array_0_87_0 in mem


    lw      a0,76(sp)
              #                    occupy a3 with -1_0
    li      a3, -1
              #                    occupy a5 with temp_67_cmp_87_0
    xor     a5,a0,a3
    snez    a5, a5
              #                    free a0
              #                    occupy a0 with temp_66_ele_of_*array_0_87_0
              #                    store to temp_66_ele_of_*array_0_87_0 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_66_ele_of_*array_0_87_0
              #                    free a3
              #                    free a5
              #                     524  untrack temp_66_ele_of_*array_0_87_0 
              #                     292  br i1 temp_67_cmp_87_0, label branch_short_circuit_c_true_462, label branch_short_circuit_c_false_462 
              #                    occupy a5 with temp_67_cmp_87_0
              #                    free a5
              #                    occupy a5 with temp_67_cmp_87_0
    bnez    a5, .branch_short_circuit_c_true_462
              #                    free a5
              #                    occupy a0 with temp_62_cmp_87_0
              #                    load from temp_62_cmp_87_0 in mem


    lb      a0,98(sp)
              #                    occupy a5 with temp_67_cmp_87_0
              #                    store to temp_67_cmp_87_0 in mem offset legal
    sb      a5,75(sp)
              #                    release a5 with temp_67_cmp_87_0
    j       .branch_short_circuit_c_false_462
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a5:Freed { symidx: temp_67_cmp_87_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     288  label branch_short_circuit_c_true_462: 
.branch_short_circuit_c_true_462:
              #                     525  untrack temp_67_cmp_87_0 
              #                    occupy a5 with temp_67_cmp_87_0
              #                    release a5 with temp_67_cmp_87_0
              #                     172  (nop) 
              #                     173  mu n_0_3:172 
              #                     175  (nop) 
              #                     176   Call void mmerge_0(temp_30_arithop_66_0, temp_64_arithop_87_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with flag_51_1
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    store to temp_24_ret_of_getint_61_0 in mem offset legal
    sw      a2,204(sp)
              #                    release a2 with temp_24_ret_of_getint_61_0
              #                    occupy a4 with temp_30_arithop_66_0
              #                    store to temp_30_arithop_66_0 in mem offset legal
    sw      a4,184(sp)
              #                    release a4 with temp_30_arithop_66_0
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a6,216(sp)
              #                    release a6 with temp_19_value_from_ptr_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_arithop_66_0_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a0,184(sp)
              #                    occupy a1 with _anonymous_of_temp_64_arithop_87_0_0
              #                    load from temp_64_arithop_87_0 in mem


    lw      a1,92(sp)
              #                    arg load ended


    call    mmerge
              #                     528  untrack temp_64_arithop_87_0 
              #                     370  mu array_0_24:176 
              #                     371  array_0_31 = chi array_0_24:176 
              #                          jump label: branch_short_circuit_c_false_462 
              #                    occupy a0 with temp_62_cmp_87_0
              #                    load from temp_62_cmp_87_0 in mem


    lb      a0,98(sp)
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    load from temp_24_ret_of_getint_61_0 in mem


    lw      a2,204(sp)
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    load from temp_19_value_from_ptr_51_0 in mem


    lw      a6,216(sp)
              #                    occupy a4 with temp_30_arithop_66_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a4,184(sp)
              #                    occupy a1 with flag_51_1
              #                    load from flag_51_1 in mem


    lw      a1,228(sp)
    j       .branch_short_circuit_c_false_462
              #                    regtab     a0:Freed { symidx: temp_62_cmp_87_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     289  label branch_short_circuit_c_false_462: 
.branch_short_circuit_c_false_462:
              #                     527  untrack temp_67_cmp_87_0 
              #                     526  untrack temp_64_arithop_87_0 
              #                     479  untrack temp_65_ptr_of_*array_0_87 
              #                     478  untrack temp_64_arithop_87_0 
              #                     477  untrack temp_66_ele_of_*array_0_87_0 
              #                     476  untrack temp_67_cmp_87_0 
              #                     475  untrack temp_62_cmp_87_0 
              #                    occupy a0 with temp_62_cmp_87_0
              #                    release a0 with temp_62_cmp_87_0
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_61_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     295  temp_68_cmp_91_0 = icmp i32 Sgt temp_24_ret_of_getint_61_0, 1_0 
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with temp_68_cmp_91_0
    slt     a3,a0,a2
              #                    free a2
              #                    occupy a2 with temp_24_ret_of_getint_61_0
              #                    store to temp_24_ret_of_getint_61_0 in mem offset legal
    sw      a2,204(sp)
              #                    release a2 with temp_24_ret_of_getint_61_0
              #                    free a0
              #                    free a3
              #                     481  untrack temp_24_ret_of_getint_61_0 
              #                     313  br i1 temp_68_cmp_91_0, label branch_short_circuit_p_true_480, label branch_short_circuit_c_false_480 
              #                    occupy a3 with temp_68_cmp_91_0
              #                    free a3
              #                    occupy a3 with temp_68_cmp_91_0
    bnez    a3, .branch_short_circuit_p_true_480
              #                    free a3
    j       .branch_short_circuit_c_false_480
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a3:Freed { symidx: temp_68_cmp_91_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     310  label branch_short_circuit_p_true_480: 
.branch_short_circuit_p_true_480:
              #                     488  untrack temp_68_cmp_91_0 
              #                    occupy a3 with temp_68_cmp_91_0
              #                    release a3 with temp_68_cmp_91_0
              #                     297  (nop) 
              #                     298  mu n_0_3:297 
              #                     300  temp_70_arithop_91_0 = Sub i32 temp_30_arithop_66_0, temp_19_value_from_ptr_51_0 
              #                    occupy a4 with temp_30_arithop_66_0
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    occupy a0 with temp_70_arithop_91_0
              #                    regtab:    a0:Occupied { symidx: temp_70_arithop_91_0, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a4:Occupied { symidx: temp_30_arithop_66_0, tracked: true, occupy_count: 1 } |     a6:Occupied { symidx: temp_19_value_from_ptr_51_0, tracked: true, occupy_count: 1 } |  released_gpr_count:5,released_fpr_count:24


    subw    a0,a4,a6
              #                    free a4
              #                    free a6
              #                    free a0
              #                     302  temp_71_ptr_of_*array_0_91 = GEP *array_0:Array:i32:[None] [Some(temp_70_arithop_91_0)] 
              #                    occupy a2 with temp_71_ptr_of_*array_0_91
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with temp_70_arithop_91_0
    mv      a3, a0
              #                    free a0
              #                    occupy a0 with temp_70_arithop_91_0
              #                    store to temp_70_arithop_91_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_70_arithop_91_0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *array_0
              #                       load label array as ptr to reg
    la      a0, array
              #                    occupy reg a0 with *array_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     304  temp_72_ele_of_*array_0_91_0 = load temp_71_ptr_of_*array_0_91:ptr->i32 
              #                    occupy a2 with temp_71_ptr_of_*array_0_91
              #                    occupy a0 with temp_72_ele_of_*array_0_91_0
    lw      a0,0(a2)
              #                    free a0
              #                    occupy a0 with temp_72_ele_of_*array_0_91_0
              #                    store to temp_72_ele_of_*array_0_91_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_72_ele_of_*array_0_91_0
              #                    free a2
              #                     515  untrack temp_71_ptr_of_*array_0_91 
              #                    occupy a2 with temp_71_ptr_of_*array_0_91
              #                    release a2 with temp_71_ptr_of_*array_0_91
              #                     305  mu array_0_25:304 
              #                     307  temp_73_cmp_91_0 = icmp i32 Ne temp_72_ele_of_*array_0_91_0, -1_0 
              #                    occupy a0 with temp_72_ele_of_*array_0_91_0
              #                    load from temp_72_ele_of_*array_0_91_0 in mem


    lw      a0,52(sp)
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    occupy a3 with temp_73_cmp_91_0
    xor     a3,a0,a2
    snez    a3, a3
              #                    free a0
              #                    occupy a0 with temp_72_ele_of_*array_0_91_0
              #                    store to temp_72_ele_of_*array_0_91_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_72_ele_of_*array_0_91_0
              #                    free a2
              #                    free a3
              #                     516  untrack temp_72_ele_of_*array_0_91_0 
              #                     312  br i1 temp_73_cmp_91_0, label branch_short_circuit_c_true_480, label branch_short_circuit_c_false_480 
              #                    occupy a3 with temp_73_cmp_91_0
              #                    free a3
              #                    occupy a3 with temp_73_cmp_91_0
    bnez    a3, .branch_short_circuit_c_true_480
              #                    free a3
              #                    occupy a3 with temp_73_cmp_91_0
              #                    store to temp_73_cmp_91_0 in mem offset legal
    sb      a3,51(sp)
              #                    release a3 with temp_73_cmp_91_0
              #                    occupy a3 with temp_68_cmp_91_0
              #                    load from temp_68_cmp_91_0 in mem


    lb      a3,74(sp)
    j       .branch_short_circuit_c_false_480
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a3:Freed { symidx: temp_73_cmp_91_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     308  label branch_short_circuit_c_true_480: 
.branch_short_circuit_c_true_480:
              #                     517  untrack temp_73_cmp_91_0 
              #                    occupy a3 with temp_73_cmp_91_0
              #                    release a3 with temp_73_cmp_91_0
              #                     166  (nop) 
              #                     167  mu n_0_3:166 
              #                     169  (nop) 
              #                     170   Call void mmerge_0(temp_30_arithop_66_0, temp_70_arithop_91_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with flag_51_1
              #                    occupy a4 with temp_30_arithop_66_0
              #                    store to temp_30_arithop_66_0 in mem offset legal
    sw      a4,184(sp)
              #                    release a4 with temp_30_arithop_66_0
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a6,216(sp)
              #                    release a6 with temp_19_value_from_ptr_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_arithop_66_0_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a0,184(sp)
              #                    occupy a1 with _anonymous_of_temp_70_arithop_91_0_0
              #                    load from temp_70_arithop_91_0 in mem


    lw      a1,68(sp)
              #                    arg load ended


    call    mmerge
              #                     522  untrack temp_30_arithop_66_0 
              #                     521  untrack temp_70_arithop_91_0 
              #                     368  mu array_0_25:170 
              #                     369  array_0_30 = chi array_0_25:170 
              #                          jump label: branch_short_circuit_c_false_480 
              #                    occupy a3 with temp_68_cmp_91_0
              #                    load from temp_68_cmp_91_0 in mem


    lb      a3,74(sp)
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    load from temp_19_value_from_ptr_51_0 in mem


    lw      a6,216(sp)
              #                    occupy a4 with temp_30_arithop_66_0
              #                    load from temp_30_arithop_66_0 in mem


    lw      a4,184(sp)
              #                    occupy a1 with flag_51_1
              #                    load from flag_51_1 in mem


    lw      a1,228(sp)
    j       .branch_short_circuit_c_false_480
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a3:Freed { symidx: temp_68_cmp_91_0, tracked: true } |     a4:Freed { symidx: temp_30_arithop_66_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     309  label branch_short_circuit_c_false_480: 
.branch_short_circuit_c_false_480:
              #                     520  untrack temp_70_arithop_91_0 
              #                     519  untrack temp_73_cmp_91_0 
              #                     518  untrack temp_30_arithop_66_0 
              #                    occupy a4 with temp_30_arithop_66_0
              #                    release a4 with temp_30_arithop_66_0
              #                     487  untrack temp_72_ele_of_*array_0_91_0 
              #                     486  untrack temp_73_cmp_91_0 
              #                     485  untrack temp_70_arithop_91_0 
              #                     484  untrack temp_71_ptr_of_*array_0_91 
              #                     483  untrack temp_30_arithop_66_0 
              #                     482  untrack temp_68_cmp_91_0 
              #                    occupy a3 with temp_68_cmp_91_0
              #                    release a3 with temp_68_cmp_91_0
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     315  temp_74_ptr_of_*array_0_95 = GEP *array_0:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_74_ptr_of_*array_0_95
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a3 with *array_0
              #                       load label array as ptr to reg
    la      a3, array
              #                    occupy reg a3 with *array_0
    add     a0,a0,a3
              #                    free a3
              #                    free a0
              #                     317  temp_75_ele_of_*array_0_95_0 = load temp_74_ptr_of_*array_0_95:ptr->i32 
              #                    occupy a0 with temp_74_ptr_of_*array_0_95
              #                    occupy a3 with temp_75_ele_of_*array_0_95_0
    lw      a3,0(a0)
              #                    free a3
              #                    occupy a3 with temp_75_ele_of_*array_0_95_0
              #                    store to temp_75_ele_of_*array_0_95_0 in mem offset legal
    sw      a3,36(sp)
              #                    release a3 with temp_75_ele_of_*array_0_95_0
              #                    free a0
              #                     489  untrack temp_74_ptr_of_*array_0_95 
              #                    occupy a0 with temp_74_ptr_of_*array_0_95
              #                    release a0 with temp_74_ptr_of_*array_0_95
              #                     318  mu array_0_26:317 
              #                     320  temp_76_cmp_95_0 = icmp i32 Ne temp_75_ele_of_*array_0_95_0, -1_0 
              #                    occupy a0 with temp_75_ele_of_*array_0_95_0
              #                    load from temp_75_ele_of_*array_0_95_0 in mem


    lw      a0,36(sp)
              #                    occupy a3 with -1_0
    li      a3, -1
              #                    occupy a4 with temp_76_cmp_95_0
    xor     a4,a0,a3
    snez    a4, a4
              #                    free a0
              #                    occupy a0 with temp_75_ele_of_*array_0_95_0
              #                    store to temp_75_ele_of_*array_0_95_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_75_ele_of_*array_0_95_0
              #                    free a3
              #                    free a4
              #                     490  untrack temp_75_ele_of_*array_0_95_0 
              #                     342  br i1 temp_76_cmp_95_0, label branch_short_circuit_p_true_498, label UP_19_0 
              #                    occupy a4 with temp_76_cmp_95_0
              #                    free a4
              #                    occupy a4 with temp_76_cmp_95_0
    bnez    a4, .branch_short_circuit_p_true_498
              #                    free a4
    j       .UP_19_0
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a4:Freed { symidx: temp_76_cmp_95_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     339  label branch_short_circuit_p_true_498: 
.branch_short_circuit_p_true_498:
              #                     491  untrack temp_76_cmp_95_0 
              #                    occupy a4 with temp_76_cmp_95_0
              #                    release a4 with temp_76_cmp_95_0
              #                     322  temp_77_ptr_of_*array_0_95 = GEP *array_0:Array:i32:[None] [Some(temp_23_arithop_51_0)] 
              #                    occupy a0 with temp_77_ptr_of_*array_0_95
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_23_arithop_51_0
              #                    load from temp_23_arithop_51_0 in mem


    lw      a3,208(sp)
    mv      a2, a3
              #                    free a3
              #                    occupy a3 with temp_23_arithop_51_0
              #                    store to temp_23_arithop_51_0 in mem offset legal
    sw      a3,208(sp)
              #                    release a3 with temp_23_arithop_51_0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with *array_0
              #                       load label array as ptr to reg
    la      a2, array
              #                    occupy reg a2 with *array_0
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     324  temp_78_ele_of_*array_0_95_0 = load temp_77_ptr_of_*array_0_95:ptr->i32 
              #                    occupy a0 with temp_77_ptr_of_*array_0_95
              #                    occupy a2 with temp_78_ele_of_*array_0_95_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_78_ele_of_*array_0_95_0
              #                    store to temp_78_ele_of_*array_0_95_0 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with temp_78_ele_of_*array_0_95_0
              #                    free a0
              #                     501  untrack temp_77_ptr_of_*array_0_95 
              #                    occupy a0 with temp_77_ptr_of_*array_0_95
              #                    release a0 with temp_77_ptr_of_*array_0_95
              #                     325  mu array_0_26:324 
              #                     327  temp_79_cmp_95_0 = icmp i32 Ne temp_78_ele_of_*array_0_95_0, -1_0 
              #                    occupy a0 with temp_78_ele_of_*array_0_95_0
              #                    load from temp_78_ele_of_*array_0_95_0 in mem


    lw      a0,20(sp)
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    occupy a3 with temp_79_cmp_95_0
    xor     a3,a0,a2
    snez    a3, a3
              #                    free a0
              #                    occupy a0 with temp_78_ele_of_*array_0_95_0
              #                    store to temp_78_ele_of_*array_0_95_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_78_ele_of_*array_0_95_0
              #                    free a2
              #                    free a3
              #                     500  untrack temp_78_ele_of_*array_0_95_0 
              #                     341  br i1 temp_79_cmp_95_0, label branch_short_circuit_p_true_506, label UP_11_0 
              #                    occupy a3 with temp_79_cmp_95_0
              #                    free a3
              #                    occupy a3 with temp_79_cmp_95_0
    bnez    a3, .branch_short_circuit_p_true_506
              #                    free a3
    j       .UP_11_0
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a3:Freed { symidx: temp_79_cmp_95_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     336  label branch_short_circuit_p_true_506: 
.branch_short_circuit_p_true_506:
              #                     502  untrack temp_79_cmp_95_0 
              #                    occupy a3 with temp_79_cmp_95_0
              #                    release a3 with temp_79_cmp_95_0
              #                     329  temp_80_ret_of_findfa_95_0 =  Call i32 findfa_0(temp_23_arithop_51_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with flag_51_1
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a6,216(sp)
              #                    release a6 with temp_19_value_from_ptr_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_23_arithop_51_0_0
              #                    load from temp_23_arithop_51_0 in mem


    lw      a0,208(sp)
              #                    arg load ended


    call    findfa
              #                     364  mu array_0_26:329 
              #                     365  array_0_28 = chi array_0_26:329 
              #                     331  temp_81_ret_of_findfa_95_0 =  Call i32 findfa_0(0_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_80_ret_of_findfa_95_0
              #                    store to temp_80_ret_of_findfa_95_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_80_ret_of_findfa_95_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    findfa
              #                     366  mu array_0_28:331 
              #                     367  array_0_29 = chi array_0_28:331 
              #                     333  temp_82_cmp_95_0 = icmp i32 Eq temp_81_ret_of_findfa_95_0, temp_80_ret_of_findfa_95_0 
              #                    occupy a0 with temp_81_ret_of_findfa_95_0
              #                    occupy a1 with temp_80_ret_of_findfa_95_0
              #                    load from temp_80_ret_of_findfa_95_0 in mem


    lw      a1,12(sp)
              #                    occupy a2 with temp_82_cmp_95_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     509  untrack temp_80_ret_of_findfa_95_0 
              #                    occupy a1 with temp_80_ret_of_findfa_95_0
              #                    release a1 with temp_80_ret_of_findfa_95_0
              #                     508  untrack temp_81_ret_of_findfa_95_0 
              #                    occupy a0 with temp_81_ret_of_findfa_95_0
              #                    release a0 with temp_81_ret_of_findfa_95_0
              #                     338  br i1 temp_82_cmp_95_0, label branch_short_circuit_c_true_506, label UP_7_0 
              #                    occupy a2 with temp_82_cmp_95_0
              #                    free a2
              #                    occupy a2 with temp_82_cmp_95_0
    bnez    a2, .branch_short_circuit_c_true_506
              #                    free a2
    j       .UP_7_0
              #                    regtab     a2:Freed { symidx: temp_82_cmp_95_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     334  label branch_short_circuit_c_true_506: 
.branch_short_circuit_c_true_506:
              #                     510  untrack temp_82_cmp_95_0 
              #                    occupy a2 with temp_82_cmp_95_0
              #                    release a2 with temp_82_cmp_95_0
              #                     158  (nop) 
              #                     160  temp_32_arithop_97_0 = Add i32 i_51_1, 1_0 
              #                    occupy a0 with i_51_1
              #                    load from i_51_1 in mem


    lw      a0,232(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_32_arithop_97_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     161  (nop) 
              #                     163   Call void putint_0(temp_32_arithop_97_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_51_1
              #                    store to i_51_1 in mem offset legal
    sw      a0,232(sp)
              #                    release a0 with i_51_1
              #                    occupy a2 with temp_32_arithop_97_0
              #                    store to temp_32_arithop_97_0 in mem offset legal
    sw      a2,172(sp)
              #                    release a2 with temp_32_arithop_97_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_32_arithop_97_0_0
              #                    load from temp_32_arithop_97_0 in mem


    lw      a0,172(sp)
              #                    arg load ended


    call    putint
              #                     513  untrack temp_32_arithop_97_0 
              #                     164   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     411  flag_51_2 = i32 1_0 
              #                    occupy a0 with flag_51_2
    li      a0, 1
              #                    free a0
              #                          jump label: branch_short_circuit_c_false_506 
    j       .branch_short_circuit_c_false_506
              #                    regtab     a0:Freed { symidx: flag_51_2, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     335  label branch_short_circuit_c_false_506: 
.branch_short_circuit_c_false_506:
              #                     412  flag_51_4 = i32 flag_51_2 
              #                    occupy a0 with flag_51_2
              #                    occupy a1 with flag_51_4
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     514  untrack flag_51_2 
              #                    occupy a0 with flag_51_2
              #                    release a0 with flag_51_2
              #                          jump label: branch_false_65 
    j       .branch_false_65
              #                    regtab     a1:Freed { symidx: flag_51_4, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     219  label branch_false_65: 
.branch_false_65:
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a1:Freed { symidx: flag_51_4, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     141  temp_26_arithop_61_0 = Add i32 i_51_1, 1_0 
              #                    occupy a0 with i_51_1
              #                    load from i_51_1 in mem


    lw      a0,232(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_26_arithop_61_0
    ADDW    a3,a0,a2
              #                    free a0
              #                    occupy a0 with i_51_1
              #                    store to i_51_1 in mem offset legal
    sw      a0,232(sp)
              #                    release a0 with i_51_1
              #                    free a2
              #                    free a3
              #                     142  (nop) 
              #                     413  i_51_1 = i32 temp_26_arithop_61_0 
              #                    occupy a3 with temp_26_arithop_61_0
              #                    occupy a0 with i_51_1
    mv      a0, a3
              #                    free a3
              #                    occupy a3 with temp_26_arithop_61_0
              #                    store to temp_26_arithop_61_0 in mem offset legal
    sw      a3,196(sp)
              #                    release a3 with temp_26_arithop_61_0
              #                    free a0
              #                     414  flag_51_1 = i32 flag_51_4 
              #                    occupy a1 with flag_51_4
              #                    occupy a3 with flag_51_1
    mv      a3, a1
              #                    free a1
              #                    occupy a1 with flag_51_4
              #                    store to flag_51_4 in mem offset legal
    sw      a1,220(sp)
              #                    release a1 with flag_51_4
              #                    free a3
              #                          jump label: while.head_60 
              #                    occupy a0 with i_51_1
              #                    store to i_51_1 in mem offset legal
    sw      a0,232(sp)
              #                    release a0 with i_51_1
              #                    occupy a0 with temp_22_arithop_51_0
              #                    load from temp_22_arithop_51_0 in mem


    lw      a0,212(sp)
              #                    occupy a3 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a3,228(sp)
              #                    release a3 with flag_51_1
              #                    occupy a3 with temp_23_arithop_51_0
              #                    load from temp_23_arithop_51_0 in mem


    lw      a3,208(sp)
              #                    occupy a5 with flag_51_1
              #                    load from flag_51_1 in mem


    lw      a5,228(sp)
              #                    occupy a4 with i_51_1
              #                    load from i_51_1 in mem


    lw      a4,232(sp)
              #                    occupy a1 with temp_19_value_from_ptr_51_0
              #                    load from temp_19_value_from_ptr_51_0 in mem


    lw      a1,216(sp)
    j       .while.head_60
              #                    regtab     a2:Freed { symidx: temp_82_cmp_95_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     406  label UP_7_0: 
.UP_7_0:
              #                     512  untrack temp_82_cmp_95_0 
              #                    occupy a2 with temp_82_cmp_95_0
              #                    release a2 with temp_82_cmp_95_0
              #                     511  untrack temp_32_arithop_97_0 
              #                     415  flag_51_2 = i32 flag_51_1 
              #                    occupy a0 with flag_51_1
              #                    load from flag_51_1 in mem


    lw      a0,228(sp)
              #                    occupy a1 with flag_51_2
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: branch_short_circuit_c_false_506 
              #                    occupy a0 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with flag_51_1
              #                    occupy a1 with flag_51_2
              #                    store to flag_51_2 in mem offset legal
    sw      a1,224(sp)
              #                    release a1 with flag_51_2
              #                    occupy a0 with flag_51_2
              #                    load from flag_51_2 in mem


    lw      a0,224(sp)
    j       .branch_short_circuit_c_false_506
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a3:Freed { symidx: temp_79_cmp_95_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     405  label UP_11_0: 
.UP_11_0:
              #                     507  untrack temp_79_cmp_95_0 
              #                    occupy a3 with temp_79_cmp_95_0
              #                    release a3 with temp_79_cmp_95_0
              #                     506  untrack temp_81_ret_of_findfa_95_0 
              #                     505  untrack temp_80_ret_of_findfa_95_0 
              #                     504  untrack temp_82_cmp_95_0 
              #                     503  untrack temp_32_arithop_97_0 
              #                     416  flag_51_2 = i32 flag_51_1 
              #                    occupy a1 with flag_51_1
              #                    occupy a0 with flag_51_2
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          jump label: branch_short_circuit_c_false_506 
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a6,216(sp)
              #                    release a6 with temp_19_value_from_ptr_51_0
              #                    occupy a1 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with flag_51_1
    j       .branch_short_circuit_c_false_506
              #                    regtab     a1:Freed { symidx: flag_51_1, tracked: true } |     a4:Freed { symidx: temp_76_cmp_95_0, tracked: true } |     a6:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     404  label UP_19_0: 
.UP_19_0:
              #                     499  untrack temp_76_cmp_95_0 
              #                    occupy a4 with temp_76_cmp_95_0
              #                    release a4 with temp_76_cmp_95_0
              #                     498  untrack temp_78_ele_of_*array_0_95_0 
              #                     497  untrack temp_81_ret_of_findfa_95_0 
              #                     496  untrack temp_32_arithop_97_0 
              #                     495  untrack temp_80_ret_of_findfa_95_0 
              #                     494  untrack temp_82_cmp_95_0 
              #                     493  untrack temp_77_ptr_of_*array_0_95 
              #                     492  untrack temp_79_cmp_95_0 
              #                     417  flag_51_2 = i32 flag_51_1 
              #                    occupy a1 with flag_51_1
              #                    occupy a0 with flag_51_2
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          jump label: branch_short_circuit_c_false_506 
              #                    occupy a6 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a6,216(sp)
              #                    release a6 with temp_19_value_from_ptr_51_0
              #                    occupy a1 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with flag_51_1
    j       .branch_short_circuit_c_false_506
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_61_0, tracked: true } |     a1:Freed { symidx: flag_51_1, tracked: true } |     a3:Freed { symidx: temp_45_booltrans_64_0, tracked: true } |     a4:Freed { symidx: temp_46_logicnot_64_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     407  label UP_60_0: 
.UP_60_0:
              #                     418  flag_51_4 = i32 flag_51_1 
              #                    occupy a1 with flag_51_1
              #                    occupy a2 with flag_51_4
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          jump label: branch_false_65 
              #                    occupy a0 with temp_25_ret_of_getint_61_0
              #                    store to temp_25_ret_of_getint_61_0 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_25_ret_of_getint_61_0
              #                    occupy a2 with flag_51_4
              #                    store to flag_51_4 in mem offset legal
    sw      a2,220(sp)
              #                    release a2 with flag_51_4
              #                    occupy a3 with temp_45_booltrans_64_0
              #                    store to temp_45_booltrans_64_0 in mem offset legal
    sb      a3,147(sp)
              #                    release a3 with temp_45_booltrans_64_0
              #                    occupy a4 with temp_46_logicnot_64_0
              #                    store to temp_46_logicnot_64_0 in mem offset legal
    sb      a4,146(sp)
              #                    release a4 with temp_46_logicnot_64_0
              #                    occupy a1 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with flag_51_1
              #                    occupy a1 with flag_51_4
              #                    load from flag_51_4 in mem


    lw      a1,220(sp)
    j       .branch_false_65
              #                    regtab     a0:Freed { symidx: temp_22_arithop_51_0, tracked: true } |     a1:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |     a3:Freed { symidx: temp_23_arithop_51_0, tracked: true } |     a4:Freed { symidx: i_51_1, tracked: true } |     a5:Freed { symidx: flag_51_1, tracked: true } |     a6:Freed { symidx: temp_42_cmp_59_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     205  label while.exit_60: 
.while.exit_60:
              #                     208  temp_43_booltrans_103_0 = icmp i32 Ne flag_51_1, 0_0 
              #                    occupy a5 with flag_51_1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a7 with temp_43_booltrans_103_0
    xor     a7,a5,a2
    snez    a7, a7
              #                    free a5
              #                    free a2
              #                    free a7
              #                     210  temp_44_logicnot_103_0 = xor i1 temp_43_booltrans_103_0, true 
              #                    occupy a7 with temp_43_booltrans_103_0
              #                    occupy s1 with temp_44_logicnot_103_0
    seqz    s1, a7
              #                    free a7
              #                    free s1
              #                     213  br i1 temp_44_logicnot_103_0, label branch_true_104, label branch_false_104 
              #                    occupy s1 with temp_44_logicnot_103_0
              #                    free s1
              #                    occupy s1 with temp_44_logicnot_103_0
    bnez    s1, .branch_true_104
              #                    free s1
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: temp_22_arithop_51_0, tracked: true } |     a1:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |     a3:Freed { symidx: temp_23_arithop_51_0, tracked: true } |     a4:Freed { symidx: i_51_1, tracked: true } |     a5:Freed { symidx: flag_51_1, tracked: true } |     a6:Freed { symidx: temp_42_cmp_59_0, tracked: true } |     a7:Freed { symidx: temp_43_booltrans_103_0, tracked: true } |     s1:Freed { symidx: temp_44_logicnot_103_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     211  label branch_true_104: 
.branch_true_104:
              #                     132   Call void putint_0(-1_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_44_logicnot_103_0
              #                    store to temp_44_logicnot_103_0 in mem offset legal
    sb      s1,148(sp)
              #                    release s1 with temp_44_logicnot_103_0
              #                    occupy a0 with temp_22_arithop_51_0
              #                    store to temp_22_arithop_51_0 in mem offset legal
    sw      a0,212(sp)
              #                    release a0 with temp_22_arithop_51_0
              #                    occupy a1 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a1,216(sp)
              #                    release a1 with temp_19_value_from_ptr_51_0
              #                    occupy a3 with temp_23_arithop_51_0
              #                    store to temp_23_arithop_51_0 in mem offset legal
    sw      a3,208(sp)
              #                    release a3 with temp_23_arithop_51_0
              #                    occupy a4 with i_51_1
              #                    store to i_51_1 in mem offset legal
    sw      a4,232(sp)
              #                    release a4 with i_51_1
              #                    occupy a5 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a5,228(sp)
              #                    release a5 with flag_51_1
              #                    occupy a6 with temp_42_cmp_59_0
              #                    store to temp_42_cmp_59_0 in mem offset legal
    sb      a6,150(sp)
              #                    release a6 with temp_42_cmp_59_0
              #                    occupy a7 with temp_43_booltrans_103_0
              #                    store to temp_43_booltrans_103_0 in mem offset legal
    sb      a7,149(sp)
              #                    release a7 with temp_43_booltrans_103_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_-1_0_0
    li      a0, -1
              #                    arg load ended


    call    putint
              #                     133   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: branch_false_104 
              #                    occupy a7 with temp_43_booltrans_103_0
              #                    load from temp_43_booltrans_103_0 in mem


    lb      a7,149(sp)
              #                    occupy a0 with temp_22_arithop_51_0
              #                    load from temp_22_arithop_51_0 in mem


    lw      a0,212(sp)
              #                    occupy a3 with temp_23_arithop_51_0
              #                    load from temp_23_arithop_51_0 in mem


    lw      a3,208(sp)
              #                    occupy s1 with temp_44_logicnot_103_0
              #                    load from temp_44_logicnot_103_0 in mem


    lb      s1,148(sp)
              #                    occupy a5 with flag_51_1
              #                    load from flag_51_1 in mem


    lw      a5,228(sp)
              #                    occupy a6 with temp_42_cmp_59_0
              #                    load from temp_42_cmp_59_0 in mem


    lb      a6,150(sp)
              #                    occupy a4 with i_51_1
              #                    load from i_51_1 in mem


    lw      a4,232(sp)
              #                    occupy a1 with temp_19_value_from_ptr_51_0
              #                    load from temp_19_value_from_ptr_51_0 in mem


    lw      a1,216(sp)
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: temp_22_arithop_51_0, tracked: true } |     a1:Freed { symidx: temp_19_value_from_ptr_51_0, tracked: true } |     a3:Freed { symidx: temp_23_arithop_51_0, tracked: true } |     a4:Freed { symidx: i_51_1, tracked: true } |     a5:Freed { symidx: flag_51_1, tracked: true } |     a6:Freed { symidx: temp_42_cmp_59_0, tracked: true } |     a7:Freed { symidx: temp_43_booltrans_103_0, tracked: true } |     s1:Freed { symidx: temp_44_logicnot_103_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     212  label branch_false_104: 
.branch_false_104:
              #                     419  t_45_2 = i32 temp_18_arithop_51_0 
              #                    occupy a2 with temp_18_arithop_51_0
              #                    load from temp_18_arithop_51_0 in mem


    lw      a2,236(sp)
              #                    occupy s2 with t_45_2
    mv      s2, a2
              #                    free a2
              #                    free s2
              #                          jump label: while.head_50 
              #                    occupy s2 with t_45_2
              #                    store to t_45_2 in mem offset legal
    sw      s2,272(sp)
              #                    release s2 with t_45_2
              #                    occupy a7 with temp_43_booltrans_103_0
              #                    store to temp_43_booltrans_103_0 in mem offset legal
    sb      a7,149(sp)
              #                    release a7 with temp_43_booltrans_103_0
              #                    occupy a0 with temp_22_arithop_51_0
              #                    store to temp_22_arithop_51_0 in mem offset legal
    sw      a0,212(sp)
              #                    release a0 with temp_22_arithop_51_0
              #                    occupy a0 with t_45_2
              #                    load from t_45_2 in mem


    lw      a0,272(sp)
              #                    occupy a2 with temp_18_arithop_51_0
              #                    store to temp_18_arithop_51_0 in mem offset legal
    sw      a2,236(sp)
              #                    release a2 with temp_18_arithop_51_0
              #                    occupy a3 with temp_23_arithop_51_0
              #                    store to temp_23_arithop_51_0 in mem offset legal
    sw      a3,208(sp)
              #                    release a3 with temp_23_arithop_51_0
              #                    occupy s1 with temp_44_logicnot_103_0
              #                    store to temp_44_logicnot_103_0 in mem offset legal
    sb      s1,148(sp)
              #                    release s1 with temp_44_logicnot_103_0
              #                    occupy a5 with flag_51_1
              #                    store to flag_51_1 in mem offset legal
    sw      a5,228(sp)
              #                    release a5 with flag_51_1
              #                    occupy a6 with temp_42_cmp_59_0
              #                    store to temp_42_cmp_59_0 in mem offset legal
    sb      a6,150(sp)
              #                    release a6 with temp_42_cmp_59_0
              #                    occupy a4 with i_51_1
              #                    store to i_51_1 in mem offset legal
    sw      a4,232(sp)
              #                    release a4 with i_51_1
              #                    occupy a1 with temp_19_value_from_ptr_51_0
              #                    store to temp_19_value_from_ptr_51_0 in mem offset legal
    sw      a1,216(sp)
              #                    release a1 with temp_19_value_from_ptr_51_0
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: t_45_2, tracked: true } |     a2:Freed { symidx: temp_41__1187_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     197  label while.exit_50: 
.while.exit_50:
              #                     443  untrack t_45_2 
              #                    occupy a0 with t_45_2
              #                    release a0 with t_45_2
              #                     376  mu array_0_13:105 
              #                     377  mu n_0_2:105 
              #                     105  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,288(sp)
              #                    load from s0_main_0 in mem
    ld      s0,280(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,296
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl n
              #                     17   global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl array
              #                     16   global Array:i32:[Some(110_0)] array_0 
    .type array,@object
array:
    .zero 440
