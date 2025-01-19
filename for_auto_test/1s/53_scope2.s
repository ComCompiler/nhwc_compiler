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
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 48|s0_main:8 at 40|temp_0_value_from_ptr _s18 _i0:4 at 36|temp_2_arithop _s22 _i0:4 at 32|k _s22 _i1:4 at 28|k _s22 _i5:4 at 24|temp_3_arithop _s27 _i0:4 at 20|temp_4_arithop _s35 _i0:4 at 16|temp_5_arithop _s35 _i0:4 at 12|temp_6_arithop _s35 _i0:4 at 8|temp_7_value_from_ptr _s20 _i0:4 at 4|temp_8_cmp _s20 _i0:1 at 3|temp_9_cmp _s25 _i0:1 at 2|temp_10_cmp _s29 _i0:1 at 1|none:1 at 0
    addi    sp,sp,-56
              #                    store to ra_main_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     74   k_0_1 = chi k_0_0:17 
              #                     21   alloc i32 [temp_0_value_from_ptr_18] 
              #                     25   alloc i32 [temp_1_value_from_ptr_22] 
              #                     28   alloc i32 [temp_2_arithop_22] 
              #                     33   alloc i32 [k_22] 
              #                     35   alloc i32 [temp_3_arithop_27] 
              #                     39   alloc i32 [g_31] 
              #                     41   alloc i32 [l_33] 
              #                     43   alloc i32 [temp_4_arithop_35] 
              #                     47   alloc i32 [g_35] 
              #                     48   alloc i32 [temp_5_arithop_35] 
              #                     50   alloc i32 [temp_6_arithop_35] 
              #                     53   alloc i32 [temp_7_value_from_ptr_20] 
              #                     56   alloc i1 [temp_8_cmp_20] 
              #                     63   alloc i1 [temp_9_cmp_25] 
              #                     69   alloc i1 [temp_10_cmp_29] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     18   store 3389_0:i32 *k_0:ptr->i32 
              #                    occupy a0 with *k_0
              #                       load label k as ptr to reg
    la      a0, k
              #                    occupy reg a0 with *k_0
              #                    occupy a1 with 3389_0
    li      a1, 3389
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     19   k_0_2 = chi k_0_1:18 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     54   temp_7_value_from_ptr_20_0 = load *k_0:ptr->i32 
              #                    occupy a0 with *k_0
              #                       load label k as ptr to reg
    la      a0, k
              #                    occupy reg a0 with *k_0
              #                    occupy a1 with temp_7_value_from_ptr_20_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     55   mu k_0_2:54 
              #                     57   temp_8_cmp_20_0 = icmp i32 Slt temp_7_value_from_ptr_20_0, 10000_0 
              #                    occupy a1 with temp_7_value_from_ptr_20_0
              #                    occupy a2 with 10000_0
    li      a2, 10000
              #                    occupy a3 with temp_8_cmp_20_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     60   br i1 temp_8_cmp_20_0, label branch_true_21, label branch_false_21 
              #                    occupy a3 with temp_8_cmp_20_0
              #                    free a3
              #                    occupy a3 with temp_8_cmp_20_0
    bnez    a3, .branch_true_21
              #                    free a3
    j       .branch_false_21
              #                    regtab     a1:Freed { symidx: temp_7_value_from_ptr_20_0, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     58   label branch_true_21: 
.branch_true_21:
              #                     84   untrack temp_8_cmp_20_0 
              #                    occupy a3 with temp_8_cmp_20_0
              #                    release a3 with temp_8_cmp_20_0
              #                     26   (nop) 
              #                     27   mu k_0_2:26 
              #                     29   temp_2_arithop_22_0 = Add i32 temp_7_value_from_ptr_20_0, 1_0 
              #                    occupy a1 with temp_7_value_from_ptr_20_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_2_arithop_22_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     90   untrack temp_7_value_from_ptr_20_0 
              #                    occupy a1 with temp_7_value_from_ptr_20_0
              #                    release a1 with temp_7_value_from_ptr_20_0
              #                     30   store temp_2_arithop_22_0:i32 *k_0:ptr->i32 
              #                    occupy a1 with *k_0
              #                       load label k as ptr to reg
    la      a1, k
              #                    occupy reg a1 with *k_0
              #                    occupy a2 with temp_2_arithop_22_0
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     89   untrack temp_2_arithop_22_0 
              #                    occupy a2 with temp_2_arithop_22_0
              #                    release a2 with temp_2_arithop_22_0
              #                     31   k_0_3 = chi k_0_2:30 
              #                     32   (nop) 
              #                     80   k_22_1 = i32 112_0 
              #                    occupy a2 with k_22_1
    li      a2, 112
              #                    free a2
              #                          jump label: while.head_26 
    j       .while.head_26
              #                    regtab     a2:Freed { symidx: k_22_1, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     65   label while.head_26: 
.while.head_26:
              #                     64   temp_9_cmp_25_0 = icmp i32 Sgt k_22_1, 10_0 
              #                    occupy a2 with k_22_1
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    occupy a1 with temp_9_cmp_25_0
    slt     a1,a0,a2
              #                    free a2
              #                    free a0
              #                    free a1
              #                     68   br i1 temp_9_cmp_25_0, label while.body_26, label while.exit_26 
              #                    occupy a1 with temp_9_cmp_25_0
              #                    free a1
              #                    occupy a1 with temp_9_cmp_25_0
    bnez    a1, .while.body_26
              #                    free a1
    j       .while.exit_26
              #                    regtab     a1:Freed { symidx: temp_9_cmp_25_0, tracked: true } |     a2:Freed { symidx: k_22_1, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     66   label while.body_26: 
.while.body_26:
              #                     36   temp_3_arithop_27_0 = Sub i32 k_22_1, 88_0 
              #                    occupy a2 with k_22_1
              #                    occupy a0 with 88_0
    li      a0, 88
              #                    occupy a3 with temp_3_arithop_27_0
              #                    regtab:    a0:Occupied { symidx: 88_0, tracked: false, occupy_count: 1 } |     a1:Freed { symidx: temp_9_cmp_25_0, tracked: true } |     a2:Occupied { symidx: k_22_1, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: temp_3_arithop_27_0, tracked: true, occupy_count: 1 } |  released_gpr_count:8,released_fpr_count:24


    subw    a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                     37   (nop) 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a1:Freed { symidx: temp_9_cmp_25_0, tracked: true } |     a2:Freed { symidx: k_22_1, tracked: true } |     a3:Freed { symidx: temp_3_arithop_27_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     70   temp_10_cmp_29_0 = icmp i32 Slt temp_3_arithop_27_0, 1000_0 
              #                    occupy a3 with temp_3_arithop_27_0
              #                    occupy a0 with 1000_0
    li      a0, 1000
              #                    occupy a4 with temp_10_cmp_29_0
    slt     a4,a3,a0
              #                    free a3
              #                    free a0
              #                    free a4
              #                     73   br i1 temp_10_cmp_29_0, label branch_true_30, label UP_2_0 
              #                    occupy a4 with temp_10_cmp_29_0
              #                    free a4
              #                    occupy a4 with temp_10_cmp_29_0
    bnez    a4, .branch_true_30
              #                    free a4
    j       .UP_2_0
              #                    regtab     a1:Freed { symidx: temp_9_cmp_25_0, tracked: true } |     a2:Freed { symidx: k_22_1, tracked: true } |     a3:Freed { symidx: temp_3_arithop_27_0, tracked: true } |     a4:Freed { symidx: temp_10_cmp_29_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     71   label branch_true_30: 
.branch_true_30:
              #                     38   (nop) 
              #                     40   (nop) 
              #                     42   (nop) 
              #                     44   temp_4_arithop_35_0 = Sub i32 temp_3_arithop_27_0, 10_0 
              #                    occupy a3 with temp_3_arithop_27_0
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    occupy a5 with temp_4_arithop_35_0
              #                    regtab:    a0:Occupied { symidx: 10_0, tracked: false, occupy_count: 1 } |     a1:Freed { symidx: temp_9_cmp_25_0, tracked: true } |     a2:Freed { symidx: k_22_1, tracked: true } |     a3:Occupied { symidx: temp_3_arithop_27_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_10_cmp_29_0, tracked: true } |     a5:Occupied { symidx: temp_4_arithop_35_0, tracked: true, occupy_count: 1 } |  released_gpr_count:4,released_fpr_count:24


    subw    a5,a3,a0
              #                    free a3
              #                    occupy a3 with temp_3_arithop_27_0
              #                    store to temp_3_arithop_27_0 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_3_arithop_27_0
              #                    free a0
              #                    free a5
              #                     45   (nop) 
              #                     46   (nop) 
              #                     49   temp_5_arithop_35_0 = Add i32 temp_4_arithop_35_0, 11_0 
              #                    occupy a5 with temp_4_arithop_35_0
              #                    occupy a3 with 11_0
    li      a3, 11
              #                    occupy a6 with temp_5_arithop_35_0
    ADDW    a6,a5,a3
              #                    free a5
              #                    occupy a5 with temp_4_arithop_35_0
              #                    store to temp_4_arithop_35_0 in mem offset legal
    sw      a5,16(sp)
              #                    release a5 with temp_4_arithop_35_0
              #                    free a3
              #                    free a6
              #                     51   temp_6_arithop_35_0 = Add i32 temp_5_arithop_35_0, 11_0 
              #                    occupy a6 with temp_5_arithop_35_0
              #                    occupy a3 with 11_0
    li      a3, 11
              #                    occupy a5 with temp_6_arithop_35_0
    ADDW    a5,a6,a3
              #                    free a6
              #                    occupy a6 with temp_5_arithop_35_0
              #                    store to temp_5_arithop_35_0 in mem offset legal
    sw      a6,12(sp)
              #                    release a6 with temp_5_arithop_35_0
              #                    free a3
              #                    free a5
              #                     52   (nop) 
              #                     81   k_22_5 = i32 temp_6_arithop_35_0 
              #                    occupy a5 with temp_6_arithop_35_0
              #                    occupy a3 with k_22_5
    mv      a3, a5
              #                    free a5
              #                    occupy a5 with temp_6_arithop_35_0
              #                    store to temp_6_arithop_35_0 in mem offset legal
    sw      a5,8(sp)
              #                    release a5 with temp_6_arithop_35_0
              #                    free a3
              #                          jump label: branch_false_30 
    j       .branch_false_30
              #                    regtab     a1:Freed { symidx: temp_9_cmp_25_0, tracked: true } |     a2:Freed { symidx: k_22_1, tracked: true } |     a3:Freed { symidx: k_22_5, tracked: true } |     a4:Freed { symidx: temp_10_cmp_29_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     72   label branch_false_30: 
.branch_false_30:
              #                     82   k_22_1 = i32 k_22_5 
              #                    occupy a3 with k_22_5
              #                    occupy a2 with k_22_1
    mv      a2, a3
              #                    free a3
              #                    free a2
              #                          jump label: while.head_26 
              #                    occupy a1 with temp_9_cmp_25_0
              #                    store to temp_9_cmp_25_0 in mem offset legal
    sb      a1,2(sp)
              #                    release a1 with temp_9_cmp_25_0
              #                    occupy a3 with k_22_5
              #                    store to k_22_5 in mem offset legal
    sw      a3,24(sp)
              #                    release a3 with k_22_5
              #                    occupy a4 with temp_10_cmp_29_0
              #                    store to temp_10_cmp_29_0 in mem offset legal
    sb      a4,1(sp)
              #                    release a4 with temp_10_cmp_29_0
    j       .while.head_26
              #                    regtab     a1:Freed { symidx: temp_9_cmp_25_0, tracked: true } |     a2:Freed { symidx: k_22_1, tracked: true } |     a3:Freed { symidx: temp_3_arithop_27_0, tracked: true } |     a4:Freed { symidx: temp_10_cmp_29_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     79   label UP_2_0: 
.UP_2_0:
              #                     83   k_22_5 = i32 temp_3_arithop_27_0 
              #                    occupy a3 with temp_3_arithop_27_0
              #                    occupy a0 with k_22_5
    mv      a0, a3
              #                    free a3
              #                    free a0
              #                          jump label: branch_false_30 
              #                    occupy a3 with temp_3_arithop_27_0
              #                    store to temp_3_arithop_27_0 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_3_arithop_27_0
              #                    occupy a0 with k_22_5
              #                    store to k_22_5 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with k_22_5
              #                    occupy a3 with k_22_5
              #                    load from k_22_5 in mem


    lw      a3,24(sp)
    j       .branch_false_30
              #                    regtab     a1:Freed { symidx: temp_9_cmp_25_0, tracked: true } |     a2:Freed { symidx: k_22_1, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     67   label while.exit_26: 
.while.exit_26:
              #                     34    Call void putint_0(k_22_1) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_9_cmp_25_0
              #                    store to temp_9_cmp_25_0 in mem offset legal
    sb      a1,2(sp)
              #                    release a1 with temp_9_cmp_25_0
              #                    occupy a2 with k_22_1
              #                    store to k_22_1 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with k_22_1
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_k_22_1_0
              #                    load from k_22_1 in mem


    lw      a0,28(sp)
              #                    arg load ended


    call    putint
              #                     91   untrack k_22_1 
              #                          jump label: branch_false_21 
              #                    occupy a1 with temp_7_value_from_ptr_20_0
              #                    load from temp_7_value_from_ptr_20_0 in mem


    lw      a1,4(sp)
              #                    occupy a3 with temp_8_cmp_20_0
              #                    load from temp_8_cmp_20_0 in mem


    lb      a3,3(sp)
    j       .branch_false_21
              #                    regtab     a1:Freed { symidx: temp_7_value_from_ptr_20_0, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     59   label branch_false_21: 
.branch_false_21:
              #                     88   untrack k_22_1 
              #                     87   untrack temp_2_arithop_22_0 
              #                     86   untrack temp_8_cmp_20_0 
              #                    occupy a3 with temp_8_cmp_20_0
              #                    release a3 with temp_8_cmp_20_0
              #                     85   untrack temp_7_value_from_ptr_20_0 
              #                    occupy a1 with temp_7_value_from_ptr_20_0
              #                    release a1 with temp_7_value_from_ptr_20_0
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     22   temp_0_value_from_ptr_18_0 = load *k_0:ptr->i32 
              #                    occupy a0 with *k_0
              #                       load label k as ptr to reg
    la      a0, k
              #                    occupy reg a0 with *k_0
              #                    occupy a1 with temp_0_value_from_ptr_18_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     23   mu k_0_4:22 
              #                     75   mu k_0_4:24 
              #                     24   ret temp_0_value_from_ptr_18_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    occupy a1 with temp_0_value_from_ptr_18_0
              #                    store to temp_0_value_from_ptr_18_0 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with temp_0_value_from_ptr_18_0
              #                    occupy a0 with temp_0_value_from_ptr_18_0
              #                    load from temp_0_value_from_ptr_18_0 in mem


    lw      a0,36(sp)
    addi    sp,sp,56
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl k
              #                     15   global i32 k_0 
    .type k,@object
k:
    .word 0
