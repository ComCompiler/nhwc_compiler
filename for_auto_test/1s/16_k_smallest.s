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
              #                     24   Define swap_0 "i_19_0,j_19_0," -> swap_ret_0 
    .globl swap
    .type swap,@function
swap:
              #                    mem layout:|ra_swap:8 at 64|s0_swap:8 at 56|i _s19 _i0:4 at 52|j _s19 _i0:4 at 48|temp_0_ptr_of_*array_0:8 at 40|temp_1_ele_of_*array_0 _s21 _i0:4 at 36|none:4 at 32|temp_2_ptr_of_*array_0:8 at 24|temp_3_ptr_of_*array_0:8 at 16|temp_4_ele_of_*array_0 _s21 _i0:4 at 12|none:4 at 8|temp_5_ptr_of_*array_0:8 at 0
    addi    sp,sp,-72
              #                    store to ra_swap_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_swap_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     174  array_0_1 = chi array_0_0:24 
              #                     28   alloc ptr->i32 [temp_0_ptr_of_*array_0_21] 
              #                     30   alloc i32 [temp_1_ele_of_*array_0_21] 
              #                     34   alloc i32 [tmp_21] 
              #                     35   alloc ptr->i32 [temp_2_ptr_of_*array_0_21] 
              #                     37   alloc ptr->i32 [temp_3_ptr_of_*array_0_21] 
              #                     39   alloc i32 [temp_4_ele_of_*array_0_21] 
              #                     44   alloc ptr->i32 [temp_5_ptr_of_*array_0_21] 
              #                    regtab     a0:Freed { symidx: i_19_0, tracked: true } |     a1:Freed { symidx: j_19_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     29   temp_0_ptr_of_*array_0_21 = GEP *array_0:Array:i32:[None] [Some(i_19_0)] 
              #                    occupy a2 with temp_0_ptr_of_*array_0_21
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_19_0
    mv      a3, a0
              #                    free a0
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
              #                     217  untrack i_19_0 
              #                    occupy a0 with i_19_0
              #                    release a0 with i_19_0
              #                     31   temp_1_ele_of_*array_0_21_0 = load temp_0_ptr_of_*array_0_21:ptr->i32 
              #                    occupy a2 with temp_0_ptr_of_*array_0_21
              #                    occupy a0 with temp_1_ele_of_*array_0_21_0
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                     32   mu array_0_1:31 
              #                     33   (nop) 
              #                     36   (nop) 
              #                     38   temp_3_ptr_of_*array_0_21 = GEP *array_0:Array:i32:[None] [Some(j_19_0)] 
              #                    occupy a5 with temp_3_ptr_of_*array_0_21
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with j_19_0
    mv      a6, a1
              #                    free a1
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a7 with *array_0
              #                       load label array as ptr to reg
    la      a7, array
              #                    occupy reg a7 with *array_0
    add     a5,a5,a7
              #                    free a7
              #                    free a5
              #                     216  untrack j_19_0 
              #                    occupy a1 with j_19_0
              #                    release a1 with j_19_0
              #                     40   temp_4_ele_of_*array_0_21_0 = load temp_3_ptr_of_*array_0_21:ptr->i32 
              #                    occupy a5 with temp_3_ptr_of_*array_0_21
              #                    occupy a1 with temp_4_ele_of_*array_0_21_0
    lw      a1,0(a5)
              #                    free a1
              #                    free a5
              #                     41   mu array_0_1:40 
              #                     42   store temp_4_ele_of_*array_0_21_0:i32 temp_0_ptr_of_*array_0_21:ptr->i32 
              #                    occupy a2 with temp_0_ptr_of_*array_0_21
              #                    occupy a1 with temp_4_ele_of_*array_0_21_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     221  untrack temp_0_ptr_of_*array_0_21 
              #                    occupy a2 with temp_0_ptr_of_*array_0_21
              #                    release a2 with temp_0_ptr_of_*array_0_21
              #                     220  untrack temp_4_ele_of_*array_0_21_0 
              #                    occupy a1 with temp_4_ele_of_*array_0_21_0
              #                    release a1 with temp_4_ele_of_*array_0_21_0
              #                     43   array_0_2 = chi array_0_1:42 
              #                     45   (nop) 
              #                     46   store temp_1_ele_of_*array_0_21_0:i32 temp_3_ptr_of_*array_0_21:ptr->i32 
              #                    occupy a5 with temp_3_ptr_of_*array_0_21
              #                    occupy a0 with temp_1_ele_of_*array_0_21_0
    sw      a0,0(a5)
              #                    free a0
              #                    free a5
              #                     219  untrack temp_1_ele_of_*array_0_21_0 
              #                    occupy a0 with temp_1_ele_of_*array_0_21_0
              #                    release a0 with temp_1_ele_of_*array_0_21_0
              #                     218  untrack temp_3_ptr_of_*array_0_21 
              #                    occupy a5 with temp_3_ptr_of_*array_0_21
              #                    release a5 with temp_3_ptr_of_*array_0_21
              #                     47   array_0_3 = chi array_0_2:46 
              #                          jump label: exit_2 
    j       .exit_2
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                     49   label exit_2: 
.exit_2:
              #                     175  mu array_0_3:48 
              #                     48   ret 
              #                    load from ra_swap_0 in mem
    ld      ra,64(sp)
              #                    load from s0_swap_0 in mem
    ld      s0,56(sp)
    addi    sp,sp,72
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     25   Define findPivot_0 "start_25_0,end_25_0," -> findPivot_ret_0 
    .globl findPivot
    .type findPivot,@function
findPivot:
              #                    mem layout:|ra_findPivot:8 at 80|s0_findPivot:8 at 72|start _s25 _i0:4 at 68|end _s25 _i0:4 at 64|temp_6_ptr_of_*array_0:8 at 56|temp_7_ele_of_*array_0 _s27 _i0:4 at 52|pIndex _s27 _i0:4 at 48|pIndex _s27 _i1:4 at 44|pIndex _s27 _i3:4 at 40|i _s27 _i0:4 at 36|i _s27 _i1:4 at 32|temp_8_arithop _s32 _i0:4 at 28|temp_9_arithop _s35 _i0:4 at 24|temp_10_cmp _s30 _i0:1 at 23|none:7 at 16|temp_11_ptr_of_*array_0:8 at 8|temp_12_ele_of_*array_0 _s33 _i0:4 at 4|temp_13_cmp _s33 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-88
              #                    store to ra_findPivot_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_findPivot_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                     176  array_0_4 = chi array_0_0:25 
              #                     50   alloc ptr->i32 [temp_6_ptr_of_*array_0_27] 
              #                     52   alloc i32 [temp_7_ele_of_*array_0_27] 
              #                     56   alloc i32 [pivot_27] 
              #                     58   alloc i32 [pIndex_27] 
              #                     60   alloc i32 [i_27] 
              #                     64   alloc i32 [temp_8_arithop_32] 
              #                     68   alloc i32 [temp_9_arithop_35] 
              #                     71   alloc i1 [temp_10_cmp_30] 
              #                     79   alloc ptr->i32 [temp_11_ptr_of_*array_0_33] 
              #                     81   alloc i32 [temp_12_ele_of_*array_0_33] 
              #                     84   alloc i1 [temp_13_cmp_33] 
              #                    regtab     a0:Freed { symidx: start_25_0, tracked: true } |     a1:Freed { symidx: end_25_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     51   temp_6_ptr_of_*array_0_27 = GEP *array_0:Array:i32:[None] [Some(end_25_0)] 
              #                    occupy a2 with temp_6_ptr_of_*array_0_27
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with end_25_0
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
              #                     53   temp_7_ele_of_*array_0_27_0 = load temp_6_ptr_of_*array_0_27:ptr->i32 
              #                    occupy a2 with temp_6_ptr_of_*array_0_27
              #                    occupy a5 with temp_7_ele_of_*array_0_27_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     222  untrack temp_6_ptr_of_*array_0_27 
              #                    occupy a2 with temp_6_ptr_of_*array_0_27
              #                    release a2 with temp_6_ptr_of_*array_0_27
              #                     54   mu array_0_4:53 
              #                     55   (nop) 
              #                     57   pIndex_27_0 = i32 start_25_0 
              #                    occupy a0 with start_25_0
              #                    occupy a2 with pIndex_27_0
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                     59   i_27_0 = i32 start_25_0 
              #                    occupy a0 with start_25_0
              #                    occupy a6 with i_27_0
    mv      a6, a0
              #                    free a0
              #                    free a6
              #                     224  untrack start_25_0 
              #                    occupy a0 with start_25_0
              #                    release a0 with start_25_0
              #                     206  pIndex_27_1 = i32 pIndex_27_0 
              #                    occupy a2 with pIndex_27_0
              #                    occupy a0 with pIndex_27_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                     225  untrack pIndex_27_0 
              #                    occupy a2 with pIndex_27_0
              #                    release a2 with pIndex_27_0
              #                     207  i_27_1 = i32 i_27_0 
              #                    occupy a6 with i_27_0
              #                    occupy a2 with i_27_1
    mv      a2, a6
              #                    free a6
              #                    free a2
              #                     223  untrack i_27_0 
              #                    occupy a6 with i_27_0
              #                    release a6 with i_27_0
              #                          jump label: while.head_31 
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: pIndex_27_1, tracked: true } |     a1:Freed { symidx: end_25_0, tracked: true } |     a2:Freed { symidx: i_27_1, tracked: true } |     a5:Freed { symidx: temp_7_ele_of_*array_0_27_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     73   label while.head_31: 
.while.head_31:
              #                     72   temp_10_cmp_30_0 = icmp i32 Slt i_27_1, end_25_0 
              #                    occupy a2 with i_27_1
              #                    occupy a1 with end_25_0
              #                    occupy a3 with temp_10_cmp_30_0
    slt     a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                     76   br i1 temp_10_cmp_30_0, label while.body_31, label while.exit_31 
              #                    occupy a3 with temp_10_cmp_30_0
              #                    free a3
              #                    occupy a3 with temp_10_cmp_30_0
    bnez    a3, .while.body_31
              #                    free a3
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: pIndex_27_1, tracked: true } |     a1:Freed { symidx: end_25_0, tracked: true } |     a2:Freed { symidx: i_27_1, tracked: true } |     a3:Freed { symidx: temp_10_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_7_ele_of_*array_0_27_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     74   label while.body_31: 
.while.body_31:
              #                     80   temp_11_ptr_of_*array_0_33 = GEP *array_0:Array:i32:[None] [Some(i_27_1)] 
              #                    occupy a4 with temp_11_ptr_of_*array_0_33
    li      a4, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_27_1
    mv      a6, a2
              #                    free a2
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *array_0
              #                       load label array as ptr to reg
    la      a7, array
              #                    occupy reg a7 with *array_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                     82   temp_12_ele_of_*array_0_33_0 = load temp_11_ptr_of_*array_0_33:ptr->i32 
              #                    occupy a4 with temp_11_ptr_of_*array_0_33
              #                    occupy s1 with temp_12_ele_of_*array_0_33_0
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                     83   mu array_0_5:82 
              #                     85   temp_13_cmp_33_0 = icmp i32 Sle temp_12_ele_of_*array_0_33_0, temp_7_ele_of_*array_0_27_0 
              #                    occupy s1 with temp_12_ele_of_*array_0_33_0
              #                    occupy a5 with temp_7_ele_of_*array_0_27_0
              #                    occupy s2 with temp_13_cmp_33_0
    slt     s2,a5,s1
    xori    s2,s2,1
              #                    free s1
              #                    free a5
              #                    free s2
              #                     88   br i1 temp_13_cmp_33_0, label branch_true_34, label UP_29_0 
              #                    occupy s2 with temp_13_cmp_33_0
              #                    free s2
              #                    occupy s2 with temp_13_cmp_33_0
    bnez    s2, .branch_true_34
              #                    free s2
    j       .UP_29_0
              #                    regtab     a0:Freed { symidx: pIndex_27_1, tracked: true } |     a1:Freed { symidx: end_25_0, tracked: true } |     a2:Freed { symidx: i_27_1, tracked: true } |     a3:Freed { symidx: temp_10_cmp_30_0, tracked: true } |     a4:Freed { symidx: temp_11_ptr_of_*array_0_33, tracked: true } |     a5:Freed { symidx: temp_7_ele_of_*array_0_27_0, tracked: true } |     s1:Freed { symidx: temp_12_ele_of_*array_0_33_0, tracked: true } |     s2:Freed { symidx: temp_13_cmp_33_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     86   label branch_true_34: 
.branch_true_34:
              #                     231  untrack temp_10_cmp_30_0 
              #                    occupy a3 with temp_10_cmp_30_0
              #                    release a3 with temp_10_cmp_30_0
              #                     230  untrack temp_13_cmp_33_0 
              #                    occupy s2 with temp_13_cmp_33_0
              #                    release s2 with temp_13_cmp_33_0
              #                     229  untrack temp_12_ele_of_*array_0_33_0 
              #                    occupy s1 with temp_12_ele_of_*array_0_33_0
              #                    release s1 with temp_12_ele_of_*array_0_33_0
              #                     228  untrack temp_11_ptr_of_*array_0_33 
              #                    occupy a4 with temp_11_ptr_of_*array_0_33
              #                    release a4 with temp_11_ptr_of_*array_0_33
              #                     67    Call void swap_0(i_27_1, pIndex_27_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with pIndex_27_1
              #                    store to pIndex_27_1 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with pIndex_27_1
              #                    occupy a1 with end_25_0
              #                    store to end_25_0 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with end_25_0
              #                    occupy a2 with i_27_1
              #                    store to i_27_1 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with i_27_1
              #                    occupy a5 with temp_7_ele_of_*array_0_27_0
              #                    store to temp_7_ele_of_*array_0_27_0 in mem offset legal
    sw      a5,52(sp)
              #                    release a5 with temp_7_ele_of_*array_0_27_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_i_27_1_0
              #                    load from i_27_1 in mem


    lw      a0,32(sp)
              #                    occupy a1 with _anonymous_of_pIndex_27_1_0
              #                    load from pIndex_27_1 in mem


    lw      a1,44(sp)
              #                    arg load ended


    call    swap
              #                     177  mu array_0_5:67 
              #                     178  array_0_6 = chi array_0_5:67 
              #                     69   temp_9_arithop_35_0 = Add i32 pIndex_27_1, 1_0 
              #                    occupy a0 with pIndex_27_1
              #                    load from pIndex_27_1 in mem


    lw      a0,44(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_9_arithop_35_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     70   (nop) 
              #                     208  pIndex_27_3 = i32 temp_9_arithop_35_0 
              #                    occupy a2 with temp_9_arithop_35_0
              #                    occupy a3 with pIndex_27_3
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                     232  untrack temp_9_arithop_35_0 
              #                    occupy a2 with temp_9_arithop_35_0
              #                    release a2 with temp_9_arithop_35_0
              #                          jump label: branch_false_34 
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: pIndex_27_1, tracked: true } |     a3:Freed { symidx: pIndex_27_3, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     87   label branch_false_34: 
.branch_false_34:
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: pIndex_27_1, tracked: true } |     a3:Freed { symidx: pIndex_27_3, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     65   temp_8_arithop_32_0 = Add i32 i_27_1, 1_0 
              #                    occupy a1 with i_27_1
              #                    load from i_27_1 in mem


    lw      a1,32(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_8_arithop_32_0
    ADDW    a4,a1,a2
              #                    free a1
              #                    free a2
              #                    free a4
              #                     66   (nop) 
              #                     209  i_27_1 = i32 temp_8_arithop_32_0 
              #                    occupy a4 with temp_8_arithop_32_0
              #                    occupy a1 with i_27_1
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                     210  pIndex_27_1 = i32 pIndex_27_3 
              #                    occupy a3 with pIndex_27_3
              #                    occupy a0 with pIndex_27_1
    mv      a0, a3
              #                    free a3
              #                    free a0
              #                          jump label: while.head_31 
              #                    occupy a3 with pIndex_27_3
              #                    store to pIndex_27_3 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with pIndex_27_3
              #                    occupy a4 with temp_8_arithop_32_0
              #                    store to temp_8_arithop_32_0 in mem offset legal
    sw      a4,28(sp)
              #                    release a4 with temp_8_arithop_32_0
              #                    occupy a5 with temp_7_ele_of_*array_0_27_0
              #                    load from temp_7_ele_of_*array_0_27_0 in mem


    lw      a5,52(sp)
              #                    occupy a1 with i_27_1
              #                    store to i_27_1 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with i_27_1
              #                    occupy a1 with end_25_0
              #                    load from end_25_0 in mem


    lw      a1,64(sp)
              #                    occupy a2 with i_27_1
              #                    load from i_27_1 in mem


    lw      a2,32(sp)
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: pIndex_27_1, tracked: true } |     a1:Freed { symidx: end_25_0, tracked: true } |     a2:Freed { symidx: i_27_1, tracked: true } |     a3:Freed { symidx: temp_10_cmp_30_0, tracked: true } |     a4:Freed { symidx: temp_11_ptr_of_*array_0_33, tracked: true } |     a5:Freed { symidx: temp_7_ele_of_*array_0_27_0, tracked: true } |     s1:Freed { symidx: temp_12_ele_of_*array_0_33_0, tracked: true } |     s2:Freed { symidx: temp_13_cmp_33_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     205  label UP_29_0: 
.UP_29_0:
              #                     211  pIndex_27_3 = i32 pIndex_27_1 
              #                    occupy a0 with pIndex_27_1
              #                    occupy a6 with pIndex_27_3
    mv      a6, a0
              #                    free a0
              #                    free a6
              #                          jump label: branch_false_34 
              #                    occupy s1 with temp_12_ele_of_*array_0_33_0
              #                    store to temp_12_ele_of_*array_0_33_0 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_12_ele_of_*array_0_33_0
              #                    occupy a3 with temp_10_cmp_30_0
              #                    store to temp_10_cmp_30_0 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_10_cmp_30_0
              #                    occupy a6 with pIndex_27_3
              #                    store to pIndex_27_3 in mem offset legal
    sw      a6,40(sp)
              #                    release a6 with pIndex_27_3
              #                    occupy a3 with pIndex_27_3
              #                    load from pIndex_27_3 in mem


    lw      a3,40(sp)
              #                    occupy a4 with temp_11_ptr_of_*array_0_33
              #                    store to temp_11_ptr_of_*array_0_33 in mem offset legal
    sd      a4,8(sp)
              #                    release a4 with temp_11_ptr_of_*array_0_33
              #                    occupy a5 with temp_7_ele_of_*array_0_27_0
              #                    store to temp_7_ele_of_*array_0_27_0 in mem offset legal
    sw      a5,52(sp)
              #                    release a5 with temp_7_ele_of_*array_0_27_0
              #                    occupy s2 with temp_13_cmp_33_0
              #                    store to temp_13_cmp_33_0 in mem offset legal
    sb      s2,3(sp)
              #                    release s2 with temp_13_cmp_33_0
              #                    occupy a1 with end_25_0
              #                    store to end_25_0 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with end_25_0
              #                    occupy a2 with i_27_1
              #                    store to i_27_1 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with i_27_1
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: pIndex_27_1, tracked: true } |     a1:Freed { symidx: end_25_0, tracked: true } |     a2:Freed { symidx: i_27_1, tracked: true } |     a3:Freed { symidx: temp_10_cmp_30_0, tracked: true } |     a5:Freed { symidx: temp_7_ele_of_*array_0_27_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     75   label while.exit_31: 
.while.exit_31:
              #                     227  untrack i_27_1 
              #                    occupy a2 with i_27_1
              #                    release a2 with i_27_1
              #                     226  untrack temp_7_ele_of_*array_0_27_0 
              #                    occupy a5 with temp_7_ele_of_*array_0_27_0
              #                    release a5 with temp_7_ele_of_*array_0_27_0
              #                     61    Call void swap_0(pIndex_27_1, end_25_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with pIndex_27_1
              #                    store to pIndex_27_1 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with pIndex_27_1
              #                    occupy a1 with end_25_0
              #                    store to end_25_0 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with end_25_0
              #                    occupy a3 with temp_10_cmp_30_0
              #                    store to temp_10_cmp_30_0 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_10_cmp_30_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_pIndex_27_1_0
              #                    load from pIndex_27_1 in mem


    lw      a0,44(sp)
              #                    occupy a1 with _anonymous_of_end_25_0_0
              #                    load from end_25_0 in mem


    lw      a1,64(sp)
              #                    arg load ended


    call    swap
              #                     233  untrack end_25_0 
              #                     179  mu array_0_5:61 
              #                     180  array_0_8 = chi array_0_5:61 
              #                     181  mu array_0_8:63 
              #                     63   ret pIndex_27_1 
              #                    load from ra_findPivot_0 in mem
    ld      ra,80(sp)
              #                    load from s0_findPivot_0 in mem
    ld      s0,72(sp)
              #                    occupy a0 with pIndex_27_1
              #                    load from pIndex_27_1 in mem


    lw      a0,44(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     26   Define findSmallest_0 "low_41_0,high_41_0,k_41_0,n_41_0," -> findSmallest_ret_0 
    .globl findSmallest
    .type findSmallest,@function
findSmallest:
              #                    mem layout:|ra_findSmallest:8 at 64|s0_findSmallest:8 at 56|low _s41 _i0:4 at 52|high _s41 _i0:4 at 48|k _s41 _i0:4 at 44|n _s41 _i0:4 at 40|temp_14_ret_of_findPivot _s47 _i0:4 at 36|temp_15_arithop _s63 _i0:4 at 32|temp_16_arithop _s61 _i0:4 at 28|i _s51 _i1:4 at 24|temp_17_ptr_of_*array_0:8 at 16|temp_18_ele_of_*array_0 _s55 _i0:4 at 12|temp_19_arithop _s55 _i0:4 at 8|temp_20_cmp _s44 _i0:1 at 7|temp_21_cmp _s49 _i0:1 at 6|temp_22_cmp _s59 _i0:1 at 5|temp_23_cmp _s53 _i0:1 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_findSmallest_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_findSmallest_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     182  array_0_9 = chi array_0_0:26 
              #                     89   alloc i32 [temp_14_ret_of_findPivot_47] 
              #                     92   alloc i32 [pIndex_47] 
              #                     93   alloc i32 [temp_15_arithop_63] 
              #                     96   alloc i32 [temp_16_arithop_61] 
              #                     100  alloc i32 [i_51] 
              #                     101  alloc ptr->i32 [temp_17_ptr_of_*array_0_55] 
              #                     103  alloc i32 [temp_18_ele_of_*array_0_55] 
              #                     108  alloc i32 [temp_19_arithop_55] 
              #                     113  alloc i1 [temp_20_cmp_44] 
              #                     118  alloc i1 [temp_21_cmp_49] 
              #                     123  alloc i1 [temp_22_cmp_59] 
              #                     133  alloc i1 [temp_23_cmp_53] 
              #                    regtab     a0:Freed { symidx: low_41_0, tracked: true } |     a1:Freed { symidx: high_41_0, tracked: true } |     a2:Freed { symidx: k_41_0, tracked: true } |     a3:Freed { symidx: n_41_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     114  temp_20_cmp_44_0 = icmp i32 Eq low_41_0, high_41_0 
              #                    occupy a0 with low_41_0
              #                    occupy a1 with high_41_0
              #                    occupy a4 with temp_20_cmp_44_0
    xor     a4,a0,a1
    seqz    a4, a4
              #                    free a0
              #                    free a1
              #                    free a4
              #                     117  br i1 temp_20_cmp_44_0, label branch_true_45, label branch_false_45 
              #                    occupy a4 with temp_20_cmp_44_0
              #                    free a4
              #                    occupy a4 with temp_20_cmp_44_0
    bnez    a4, .branch_true_45
              #                    free a4
    j       .branch_false_45
              #                    regtab     a0:Freed { symidx: low_41_0, tracked: true } |     a1:Freed { symidx: high_41_0, tracked: true } |     a2:Freed { symidx: k_41_0, tracked: true } |     a3:Freed { symidx: n_41_0, tracked: true } |     a4:Freed { symidx: temp_20_cmp_44_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     115  label branch_true_45: 
.branch_true_45:
              #                     244  untrack k_41_0 
              #                    occupy a2 with k_41_0
              #                    release a2 with k_41_0
              #                     243  untrack temp_20_cmp_44_0 
              #                    occupy a4 with temp_20_cmp_44_0
              #                    release a4 with temp_20_cmp_44_0
              #                     242  untrack temp_15_arithop_63_0 
              #                     241  untrack low_41_0 
              #                    occupy a0 with low_41_0
              #                    release a0 with low_41_0
              #                     240  untrack temp_22_cmp_59_0 
              #                     239  untrack temp_21_cmp_49_0 
              #                     238  untrack temp_14_ret_of_findPivot_47_0 
              #                     237  untrack n_41_0 
              #                    occupy a3 with n_41_0
              #                    release a3 with n_41_0
              #                     236  untrack i_51_1 
              #                     235  untrack high_41_0 
              #                    occupy a1 with high_41_0
              #                    release a1 with high_41_0
              #                     234  untrack temp_16_arithop_61_0 
              #                     183  mu array_0_9:112 
              #                     112  ret 
              #                    load from ra_findSmallest_0 in mem
    ld      ra,64(sp)
              #                    load from s0_findSmallest_0 in mem
    ld      s0,56(sp)
    addi    sp,sp,72
    ret
              #                    regtab     a0:Freed { symidx: low_41_0, tracked: true } |     a1:Freed { symidx: high_41_0, tracked: true } |     a2:Freed { symidx: k_41_0, tracked: true } |     a3:Freed { symidx: n_41_0, tracked: true } |     a4:Freed { symidx: temp_20_cmp_44_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     116  label branch_false_45: 
.branch_false_45:
              #                     245  untrack temp_20_cmp_44_0 
              #                    occupy a4 with temp_20_cmp_44_0
              #                    release a4 with temp_20_cmp_44_0
              #                     90   temp_14_ret_of_findPivot_47_0 =  Call i32 findPivot_0(low_41_0, high_41_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with low_41_0
              #                    store to low_41_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with low_41_0
              #                    occupy a1 with high_41_0
              #                    store to high_41_0 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with high_41_0
              #                    occupy a2 with k_41_0
              #                    store to k_41_0 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with k_41_0
              #                    occupy a3 with n_41_0
              #                    store to n_41_0 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with n_41_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_low_41_0_0
              #                    load from low_41_0 in mem


    lw      a0,52(sp)
              #                    occupy a1 with _anonymous_of_high_41_0_0
              #                    load from high_41_0 in mem


    lw      a1,48(sp)
              #                    arg load ended


    call    findPivot
              #                     184  mu array_0_9:90 
              #                     185  array_0_10 = chi array_0_9:90 
              #                     91   (nop) 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_findPivot_47_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     119  temp_21_cmp_49_0 = icmp i32 Eq k_41_0, temp_14_ret_of_findPivot_47_0 
              #                    occupy a1 with k_41_0
              #                    load from k_41_0 in mem


    lw      a1,44(sp)
              #                    occupy a0 with temp_14_ret_of_findPivot_47_0
              #                    occupy a2 with temp_21_cmp_49_0
    xor     a2,a1,a0
    seqz    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                     122  br i1 temp_21_cmp_49_0, label branch_true_50, label branch_false_50 
              #                    occupy a2 with temp_21_cmp_49_0
              #                    free a2
              #                    occupy a2 with temp_21_cmp_49_0
    bnez    a2, .branch_true_50
              #                    free a2
    j       .branch_false_50
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_findPivot_47_0, tracked: true } |     a1:Freed { symidx: k_41_0, tracked: true } |     a2:Freed { symidx: temp_21_cmp_49_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     120  label branch_true_50: 
.branch_true_50:
              #                     253  untrack n_41_0 
              #                     252  untrack low_41_0 
              #                     251  untrack k_41_0 
              #                    occupy a1 with k_41_0
              #                    release a1 with k_41_0
              #                     250  untrack temp_21_cmp_49_0 
              #                    occupy a2 with temp_21_cmp_49_0
              #                    release a2 with temp_21_cmp_49_0
              #                     249  untrack high_41_0 
              #                     248  untrack temp_15_arithop_63_0 
              #                     247  untrack temp_16_arithop_61_0 
              #                     246  untrack temp_22_cmp_59_0 
              #                     99   (nop) 
              #                     212  i_51_1 = i32 0_0 
              #                    occupy a1 with i_51_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_54 
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_findPivot_47_0, tracked: true } |     a1:Freed { symidx: i_51_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     135  label while.head_54: 
.while.head_54:
              #                     134  temp_23_cmp_53_0 = icmp i32 Slt i_51_1, temp_14_ret_of_findPivot_47_0 
              #                    occupy a1 with i_51_1
              #                    occupy a0 with temp_14_ret_of_findPivot_47_0
              #                    occupy a2 with temp_23_cmp_53_0
    slt     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     137  br i1 temp_23_cmp_53_0, label while.body_54, label gather_25 
              #                    occupy a2 with temp_23_cmp_53_0
              #                    free a2
              #                    occupy a2 with temp_23_cmp_53_0
    bnez    a2, .while.body_54
              #                    free a2
    j       .gather_25
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_findPivot_47_0, tracked: true } |     a1:Freed { symidx: i_51_1, tracked: true } |     a2:Freed { symidx: temp_23_cmp_53_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     136  label while.body_54: 
.while.body_54:
              #                     102  temp_17_ptr_of_*array_0_55 = GEP *array_0:Array:i32:[None] [Some(i_51_1)] 
              #                    occupy a3 with temp_17_ptr_of_*array_0_55
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_51_1
    mv      a4, a1
              #                    free a1
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     104  temp_18_ele_of_*array_0_55_0 = load temp_17_ptr_of_*array_0_55:ptr->i32 
              #                    occupy a3 with temp_17_ptr_of_*array_0_55
              #                    occupy a6 with temp_18_ele_of_*array_0_55_0
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     105  mu array_0_10:104 
              #                     106   Call void putint_0(temp_18_ele_of_*array_0_55_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_14_ret_of_findPivot_47_0
              #                    store to temp_14_ret_of_findPivot_47_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_14_ret_of_findPivot_47_0
              #                    occupy a1 with i_51_1
              #                    store to i_51_1 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with i_51_1
              #                    occupy a2 with temp_23_cmp_53_0
              #                    store to temp_23_cmp_53_0 in mem offset legal
    sb      a2,4(sp)
              #                    release a2 with temp_23_cmp_53_0
              #                    occupy a3 with temp_17_ptr_of_*array_0_55
              #                    store to temp_17_ptr_of_*array_0_55 in mem offset legal
    sd      a3,16(sp)
              #                    release a3 with temp_17_ptr_of_*array_0_55
              #                    occupy a6 with temp_18_ele_of_*array_0_55_0
              #                    store to temp_18_ele_of_*array_0_55_0 in mem offset legal
    sw      a6,12(sp)
              #                    release a6 with temp_18_ele_of_*array_0_55_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_18_ele_of_*array_0_55_0_0
              #                    load from temp_18_ele_of_*array_0_55_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     107   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     109  temp_19_arithop_55_0 = Add i32 i_51_1, 1_0 
              #                    occupy a0 with i_51_1
              #                    load from i_51_1 in mem


    lw      a0,24(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_19_arithop_55_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     110  (nop) 
              #                     213  i_51_1 = i32 temp_19_arithop_55_0 
              #                    occupy a2 with temp_19_arithop_55_0
              #                    occupy a0 with i_51_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_54 
              #                    occupy a2 with temp_19_arithop_55_0
              #                    store to temp_19_arithop_55_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_19_arithop_55_0
              #                    occupy a0 with i_51_1
              #                    store to i_51_1 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with i_51_1
              #                    occupy a0 with temp_14_ret_of_findPivot_47_0
              #                    load from temp_14_ret_of_findPivot_47_0 in mem


    lw      a0,36(sp)
              #                    occupy a1 with i_51_1
              #                    load from i_51_1 in mem


    lw      a1,24(sp)
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_findPivot_47_0, tracked: true } |     a1:Freed { symidx: i_51_1, tracked: true } |     a2:Freed { symidx: temp_23_cmp_53_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     129  label gather_25: 
.gather_25:
              #                     257  untrack i_51_1 
              #                    occupy a1 with i_51_1
              #                    release a1 with i_51_1
              #                     256  untrack temp_14_ret_of_findPivot_47_0 
              #                    occupy a0 with temp_14_ret_of_findPivot_47_0
              #                    release a0 with temp_14_ret_of_findPivot_47_0
              #                          jump label: gather_27 
    j       .gather_27
              #                    regtab     a2:Freed { symidx: temp_23_cmp_53_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     130  label gather_27: 
.gather_27:
              #                          jump label: exit_14 
    j       .exit_14
              #                    regtab     a2:Freed { symidx: temp_23_cmp_53_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     132  label exit_14: 
.exit_14:
              #                     186  mu array_0_11:131 
              #                     131  ret 
              #                    load from ra_findSmallest_0 in mem
    ld      ra,64(sp)
              #                    load from s0_findSmallest_0 in mem
    ld      s0,56(sp)
    addi    sp,sp,72
    ret
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_findPivot_47_0, tracked: true } |     a1:Freed { symidx: k_41_0, tracked: true } |     a2:Freed { symidx: temp_21_cmp_49_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     121  label branch_false_50: 
.branch_false_50:
              #                     255  untrack i_51_1 
              #                     254  untrack temp_21_cmp_49_0 
              #                    occupy a2 with temp_21_cmp_49_0
              #                    release a2 with temp_21_cmp_49_0
              #                     124  temp_22_cmp_59_0 = icmp i32 Slt k_41_0, temp_14_ret_of_findPivot_47_0 
              #                    occupy a1 with k_41_0
              #                    occupy a0 with temp_14_ret_of_findPivot_47_0
              #                    occupy a2 with temp_22_cmp_59_0
    slt     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     127  br i1 temp_22_cmp_59_0, label branch_true_60, label branch_false_60 
              #                    occupy a2 with temp_22_cmp_59_0
              #                    free a2
              #                    occupy a2 with temp_22_cmp_59_0
    bnez    a2, .branch_true_60
              #                    free a2
    j       .branch_false_60
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_findPivot_47_0, tracked: true } |     a1:Freed { symidx: k_41_0, tracked: true } |     a2:Freed { symidx: temp_22_cmp_59_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     125  label branch_true_60: 
.branch_true_60:
              #                     260  untrack temp_15_arithop_63_0 
              #                     259  untrack high_41_0 
              #                     258  untrack temp_22_cmp_59_0 
              #                    occupy a2 with temp_22_cmp_59_0
              #                    release a2 with temp_22_cmp_59_0
              #                     97   temp_16_arithop_61_0 = Sub i32 temp_14_ret_of_findPivot_47_0, 1_0 
              #                    occupy a0 with temp_14_ret_of_findPivot_47_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_16_arithop_61_0
              #                    regtab:    a0:Occupied { symidx: temp_14_ret_of_findPivot_47_0, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: k_41_0, tracked: true } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_16_arithop_61_0, tracked: true, occupy_count: 1 } |  released_gpr_count:15,released_fpr_count:24


    subw    a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                     264  untrack temp_14_ret_of_findPivot_47_0 
              #                    occupy a0 with temp_14_ret_of_findPivot_47_0
              #                    release a0 with temp_14_ret_of_findPivot_47_0
              #                     98    Call void findSmallest_0(low_41_0, temp_16_arithop_61_0, k_41_0, n_41_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with k_41_0
              #                    store to k_41_0 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with k_41_0
              #                    occupy a3 with temp_16_arithop_61_0
              #                    store to temp_16_arithop_61_0 in mem offset legal
    sw      a3,28(sp)
              #                    release a3 with temp_16_arithop_61_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_low_41_0_0
              #                    load from low_41_0 in mem


    lw      a0,52(sp)
              #                    occupy a1 with _anonymous_of_temp_16_arithop_61_0_0
              #                    load from temp_16_arithop_61_0 in mem


    lw      a1,28(sp)
              #                    occupy a2 with _anonymous_of_k_41_0_0
              #                    load from k_41_0 in mem


    lw      a2,44(sp)
              #                    occupy a3 with _anonymous_of_n_41_0_0
              #                    load from n_41_0 in mem


    lw      a3,40(sp)
              #                    arg load ended


    call    findSmallest
              #                     268  untrack n_41_0 
              #                     267  untrack k_41_0 
              #                     266  untrack temp_16_arithop_61_0 
              #                     265  untrack low_41_0 
              #                     187  mu array_0_10:98 
              #                     188  array_0_12 = chi array_0_10:98 
              #                          jump label: gather_23 
    j       .gather_23
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     128  label gather_23: 
.gather_23:
              #                          jump label: gather_25 
              #                    occupy a2 with temp_23_cmp_53_0
              #                    load from temp_23_cmp_53_0 in mem


    lb      a2,4(sp)
              #                    occupy a0 with temp_14_ret_of_findPivot_47_0
              #                    load from temp_14_ret_of_findPivot_47_0 in mem


    lw      a0,36(sp)
              #                    occupy a1 with i_51_1
              #                    load from i_51_1 in mem


    lw      a1,24(sp)
    j       .gather_25
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_findPivot_47_0, tracked: true } |     a1:Freed { symidx: k_41_0, tracked: true } |     a2:Freed { symidx: temp_22_cmp_59_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     126  label branch_false_60: 
.branch_false_60:
              #                     263  untrack low_41_0 
              #                     262  untrack temp_22_cmp_59_0 
              #                    occupy a2 with temp_22_cmp_59_0
              #                    release a2 with temp_22_cmp_59_0
              #                     261  untrack temp_16_arithop_61_0 
              #                     94   temp_15_arithop_63_0 = Add i32 temp_14_ret_of_findPivot_47_0, 1_0 
              #                    occupy a0 with temp_14_ret_of_findPivot_47_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_15_arithop_63_0
    ADDW    a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                     272  untrack temp_14_ret_of_findPivot_47_0 
              #                    occupy a0 with temp_14_ret_of_findPivot_47_0
              #                    release a0 with temp_14_ret_of_findPivot_47_0
              #                     95    Call void findSmallest_0(temp_15_arithop_63_0, high_41_0, k_41_0, n_41_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with k_41_0
              #                    store to k_41_0 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with k_41_0
              #                    occupy a3 with temp_15_arithop_63_0
              #                    store to temp_15_arithop_63_0 in mem offset legal
    sw      a3,32(sp)
              #                    release a3 with temp_15_arithop_63_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_15_arithop_63_0_0
              #                    load from temp_15_arithop_63_0 in mem


    lw      a0,32(sp)
              #                    occupy a1 with _anonymous_of_high_41_0_0
              #                    load from high_41_0 in mem


    lw      a1,48(sp)
              #                    occupy a2 with _anonymous_of_k_41_0_0
              #                    load from k_41_0 in mem


    lw      a2,44(sp)
              #                    occupy a3 with _anonymous_of_n_41_0_0
              #                    load from n_41_0 in mem


    lw      a3,40(sp)
              #                    arg load ended


    call    findSmallest
              #                     273  untrack k_41_0 
              #                     271  untrack n_41_0 
              #                     270  untrack high_41_0 
              #                     269  untrack temp_15_arithop_63_0 
              #                     189  mu array_0_10:95 
              #                     190  array_0_14 = chi array_0_10:95 
              #                          jump label: gather_23 
    j       .gather_23
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     27   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 48|s0_main:8 at 40|temp_24_ret_of_getint _s66 _i0:4 at 36|temp_25_ret_of_getint _s66 _i0:4 at 32|i _s66 _i1:4 at 28|temp_26_arithop _s66 _i0:4 at 24|temp_27_ptr_of_*array_0:8 at 16|temp_28_ret_of_getint _s71 _i0:4 at 12|temp_29_arithop _s71 _i0:4 at 8|temp_30_cmp _s69 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-56
              #                    store to ra_main_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     191  array_0_15 = chi array_0_0:27 
              #                     138  alloc i32 [temp_24_ret_of_getint_66] 
              #                     141  alloc i32 [n_66] 
              #                     142  alloc i32 [temp_25_ret_of_getint_66] 
              #                     145  alloc i32 [k_66] 
              #                     147  alloc i32 [i_66] 
              #                     149  alloc i32 [low_66] 
              #                     150  alloc i32 [temp_26_arithop_66] 
              #                     153  alloc i32 [high_66] 
              #                     157  alloc ptr->i32 [temp_27_ptr_of_*array_0_71] 
              #                     159  alloc i32 [temp_28_ret_of_getint_71] 
              #                     163  alloc i32 [temp_29_arithop_71] 
              #                     166  alloc i1 [temp_30_cmp_69] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     139  temp_24_ret_of_getint_66_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     140  (nop) 
              #                     143  temp_25_ret_of_getint_66_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_24_ret_of_getint_66_0
              #                    store to temp_24_ret_of_getint_66_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_24_ret_of_getint_66_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     144  (nop) 
              #                     146  (nop) 
              #                     214  i_66_1 = i32 0_0 
              #                    occupy a1 with i_66_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_66_0, tracked: true } |     a1:Freed { symidx: i_66_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     168  label while.head_70: 
.while.head_70:
              #                     167  temp_30_cmp_69_0 = icmp i32 Slt i_66_1, temp_24_ret_of_getint_66_0 
              #                    occupy a1 with i_66_1
              #                    occupy a2 with temp_24_ret_of_getint_66_0
              #                    load from temp_24_ret_of_getint_66_0 in mem


    lw      a2,36(sp)
              #                    occupy a3 with temp_30_cmp_69_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     171  br i1 temp_30_cmp_69_0, label while.body_70, label while.exit_70 
              #                    occupy a3 with temp_30_cmp_69_0
              #                    free a3
              #                    occupy a3 with temp_30_cmp_69_0
    bnez    a3, .while.body_70
              #                    free a3
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_66_0, tracked: true } |     a1:Freed { symidx: i_66_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_66_0, tracked: true } |     a3:Freed { symidx: temp_30_cmp_69_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     169  label while.body_70: 
.while.body_70:
              #                     158  temp_27_ptr_of_*array_0_71 = GEP *array_0:ptr->i32 [Some(i_66_1)] 
              #                    occupy a4 with temp_27_ptr_of_*array_0_71
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_66_1
    mv      a5, a1
              #                    free a1
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *array_0
              #                       load label array as ptr to reg
    la      a6, array
              #                    occupy reg a6 with *array_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     160  temp_28_ret_of_getint_71_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_25_ret_of_getint_66_0
              #                    store to temp_25_ret_of_getint_66_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_25_ret_of_getint_66_0
              #                    occupy a1 with i_66_1
              #                    store to i_66_1 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with i_66_1
              #                    occupy a2 with temp_24_ret_of_getint_66_0
              #                    store to temp_24_ret_of_getint_66_0 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_24_ret_of_getint_66_0
              #                    occupy a3 with temp_30_cmp_69_0
              #                    store to temp_30_cmp_69_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_30_cmp_69_0
              #                    occupy a4 with temp_27_ptr_of_*array_0_71
              #                    store to temp_27_ptr_of_*array_0_71 in mem offset legal
    sd      a4,16(sp)
              #                    release a4 with temp_27_ptr_of_*array_0_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     161  store temp_28_ret_of_getint_71_0:i32 temp_27_ptr_of_*array_0_71:ptr->i32 
              #                    occupy a1 with temp_27_ptr_of_*array_0_71
              #                    load from temp_27_ptr_of_*array_0_71 in mem
    ld      a1,16(sp)
              #                    occupy a0 with temp_28_ret_of_getint_71_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     162  array_0_17 = chi array_0_16:161 
              #                     164  temp_29_arithop_71_0 = Add i32 i_66_1, 1_0 
              #                    occupy a2 with i_66_1
              #                    load from i_66_1 in mem


    lw      a2,28(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_29_arithop_71_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     165  (nop) 
              #                     215  i_66_1 = i32 temp_29_arithop_71_0 
              #                    occupy a4 with temp_29_arithop_71_0
              #                    occupy a2 with i_66_1
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_70 
              #                    occupy a4 with temp_29_arithop_71_0
              #                    store to temp_29_arithop_71_0 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_29_arithop_71_0
              #                    occupy a2 with i_66_1
              #                    store to i_66_1 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with i_66_1
              #                    occupy a1 with temp_27_ptr_of_*array_0_71
              #                    store to temp_27_ptr_of_*array_0_71 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_27_ptr_of_*array_0_71
              #                    occupy a1 with i_66_1
              #                    load from i_66_1 in mem


    lw      a1,28(sp)
              #                    occupy a0 with temp_28_ret_of_getint_71_0
              #                    store to temp_28_ret_of_getint_71_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_28_ret_of_getint_71_0
              #                    occupy a0 with temp_25_ret_of_getint_66_0
              #                    load from temp_25_ret_of_getint_66_0 in mem


    lw      a0,32(sp)
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_66_0, tracked: true } |     a1:Freed { symidx: i_66_1, tracked: true } |     a2:Freed { symidx: temp_24_ret_of_getint_66_0, tracked: true } |     a3:Freed { symidx: temp_30_cmp_69_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     170  label while.exit_70: 
.while.exit_70:
              #                     274  untrack i_66_1 
              #                    occupy a1 with i_66_1
              #                    release a1 with i_66_1
              #                     148  (nop) 
              #                     151  temp_26_arithop_66_0 = Sub i32 temp_24_ret_of_getint_66_0, 1_0 
              #                    occupy a2 with temp_24_ret_of_getint_66_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with temp_26_arithop_66_0
              #                    regtab:    a0:Freed { symidx: temp_25_ret_of_getint_66_0, tracked: true } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_24_ret_of_getint_66_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_30_cmp_69_0, tracked: true } |     a4:Occupied { symidx: temp_26_arithop_66_0, tracked: true, occupy_count: 1 } |  released_gpr_count:14,released_fpr_count:24


    subw    a4,a2,a1
              #                    free a2
              #                    free a1
              #                    free a4
              #                     152  (nop) 
              #                     154   Call void findSmallest_0(0_0, temp_26_arithop_66_0, temp_25_ret_of_getint_66_0, temp_24_ret_of_getint_66_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_25_ret_of_getint_66_0
              #                    store to temp_25_ret_of_getint_66_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_25_ret_of_getint_66_0
              #                    occupy a2 with temp_24_ret_of_getint_66_0
              #                    store to temp_24_ret_of_getint_66_0 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_24_ret_of_getint_66_0
              #                    occupy a3 with temp_30_cmp_69_0
              #                    store to temp_30_cmp_69_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_30_cmp_69_0
              #                    occupy a4 with temp_26_arithop_66_0
              #                    store to temp_26_arithop_66_0 in mem offset legal
    sw      a4,24(sp)
              #                    release a4 with temp_26_arithop_66_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_26_arithop_66_0_0
              #                    load from temp_26_arithop_66_0 in mem


    lw      a1,24(sp)
              #                    occupy a2 with _anonymous_of_temp_25_ret_of_getint_66_0_0
              #                    load from temp_25_ret_of_getint_66_0 in mem


    lw      a2,32(sp)
              #                    occupy a3 with _anonymous_of_temp_24_ret_of_getint_66_0_0
              #                    load from temp_24_ret_of_getint_66_0 in mem


    lw      a3,36(sp)
              #                    arg load ended


    call    findSmallest
              #                     277  untrack temp_25_ret_of_getint_66_0 
              #                     276  untrack temp_26_arithop_66_0 
              #                     275  untrack temp_24_ret_of_getint_66_0 
              #                     192  mu array_0_16:154 
              #                     193  array_0_18 = chi array_0_16:154 
              #                     194  mu array_0_18:156 
              #                     156  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,56
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl array
              #                     22   global Array:i32:[Some(1000_0)] array_0 
    .type array,@object
array:
    .zero 4000
    .align 4
    .globl space
              #                     20   global i32 space_0 
    .type space,@object
space:
    .word 32
    .align 4
    .globl maxN
              #                     17   global i32 maxN_0 
    .type maxN,@object
maxN:
    .word 1000
