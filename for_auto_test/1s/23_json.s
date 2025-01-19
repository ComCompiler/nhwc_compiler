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
              #                     23   Define is_number_0 "ch_18_0," -> is_number_ret_0 
    .globl is_number
    .type is_number,@function
is_number:
              #                    mem layout:|ra_is_number:8 at 16|s0_is_number:8 at 8|ch _s18 _i0:4 at 4|temp_1_cmp _s21 _i0:1 at 3|temp_2_cmp _s24 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-24
              #                    store to ra_is_number_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_is_number_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     35   alloc i1 [temp_1_cmp_21] 
              #                     43   alloc i1 [temp_2_cmp_24] 
              #                    regtab     a0:Freed { symidx: ch_18_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L47_0: 
.L47_0:
              #                     36   temp_1_cmp_21_0 = icmp i32 Sge ch_18_0, 48_0 
              #                    occupy a0 with ch_18_0
              #                    occupy a1 with 48_0
    li      a1, 48
              #                    occupy a2 with temp_1_cmp_21_0
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     39   br i1 temp_1_cmp_21_0, label branch_true_22, label branch_false_22 
              #                    occupy a2 with temp_1_cmp_21_0
              #                    free a2
              #                    occupy a2 with temp_1_cmp_21_0
    bnez    a2, .branch_true_22
              #                    free a2
    j       .branch_false_22
              #                    regtab     a0:Freed { symidx: ch_18_0, tracked: true } |     a2:Freed { symidx: temp_1_cmp_21_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     37   label branch_true_22: 
.branch_true_22:
              #                     1692 untrack temp_1_cmp_21_0 
              #                    occupy a2 with temp_1_cmp_21_0
              #                    release a2 with temp_1_cmp_21_0
              #                     44   temp_2_cmp_24_0 = icmp i32 Sle ch_18_0, 57_0 
              #                    occupy a0 with ch_18_0
              #                    occupy a1 with 57_0
    li      a1, 57
              #                    occupy a2 with temp_2_cmp_24_0
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1696 untrack ch_18_0 
              #                    occupy a0 with ch_18_0
              #                    release a0 with ch_18_0
              #                     47   br i1 temp_2_cmp_24_0, label branch_true_25, label branch_false_25 
              #                    occupy a2 with temp_2_cmp_24_0
              #                    free a2
              #                    occupy a2 with temp_2_cmp_24_0
    bnez    a2, .branch_true_25
              #                    free a2
    j       .branch_false_25
              #                    regtab     a2:Freed { symidx: temp_2_cmp_24_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     45   label branch_true_25: 
.branch_true_25:
              #                     1697 untrack temp_2_cmp_24_0 
              #                    occupy a2 with temp_2_cmp_24_0
              #                    release a2 with temp_2_cmp_24_0
              #                     34   ret 1_0 
              #                    load from ra_is_number_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_number_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_2_cmp_24_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     46   label branch_false_25: 
.branch_false_25:
              #                     1698 untrack temp_2_cmp_24_0 
              #                    occupy a2 with temp_2_cmp_24_0
              #                    release a2 with temp_2_cmp_24_0
              #                     32   ret 0_0 
              #                    load from ra_is_number_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_number_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: ch_18_0, tracked: true } |     a2:Freed { symidx: temp_1_cmp_21_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     38   label branch_false_22: 
.branch_false_22:
              #                     1695 untrack temp_2_cmp_24_0 
              #                     1694 untrack ch_18_0 
              #                    occupy a0 with ch_18_0
              #                    release a0 with ch_18_0
              #                     1693 untrack temp_1_cmp_21_0 
              #                    occupy a2 with temp_1_cmp_21_0
              #                    release a2 with temp_1_cmp_21_0
              #                     30   ret 0_0 
              #                    load from ra_is_number_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_number_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     25   Define skip_space_0 "buf_32,len_32_0," -> skip_space_ret_0 
    .globl skip_space
    .type skip_space,@function
skip_space:
              #                    mem layout:|ra_skip_space:8 at 128|s0_skip_space:8 at 120|buf:8 at 112|buf _s32 _i1:8 at 104|buf:8 at 96|len _s32 _i0:4 at 92|temp_4_arithop _s56 _i0:4 at 88|temp_6_arithop _s52 _i0:4 at 84|temp_8_arithop _s48 _i0:4 at 80|temp_10_arithop _s44 _i0:4 at 76|temp_12_value_from_ptr _s38 _i0:4 at 72|temp_13_cmp _s38 _i0:1 at 71|none:7 at 64|temp_15_ptr_of_buf_32:8 at 56|temp_16_ele_of_buf_32 _s42 _i0:4 at 52|temp_17_cmp _s42 _i0:1 at 51|none:3 at 48|temp_19_ptr_of_buf_32:8 at 40|temp_21_cmp _s46 _i0:1 at 39|none:7 at 32|temp_23_ptr_of_buf_32:8 at 24|temp_25_cmp _s50 _i0:1 at 23|none:7 at 16|temp_27_ptr_of_buf_32:8 at 8|temp_29_cmp _s54 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-136
              #                    store to ra_skip_space_0 in mem offset legal
    sd      ra,128(sp)
              #                    store to s0_skip_space_0 in mem offset legal
    sd      s0,120(sp)
    addi    s0,sp,136
              #                     1521 pos_0_1 = chi pos_0_0:25 
              #                     49   alloc i32 [temp_3_value_from_ptr_56] 
              #                     52   alloc i32 [temp_4_arithop_56] 
              #                     56   alloc i32 [temp_5_value_from_ptr_52] 
              #                     59   alloc i32 [temp_6_arithop_52] 
              #                     63   alloc i32 [temp_7_value_from_ptr_48] 
              #                     66   alloc i32 [temp_8_arithop_48] 
              #                     70   alloc i32 [temp_9_value_from_ptr_44] 
              #                     73   alloc i32 [temp_10_arithop_44] 
              #                     77   alloc i1 [temp_11__651] 
              #                     84   alloc i32 [temp_12_value_from_ptr_38] 
              #                     87   alloc i1 [temp_13_cmp_38] 
              #                     92   alloc i32 [temp_14_value_from_ptr_42] 
              #                     95   alloc ptr->i32 [temp_15_ptr_of_buf_32_42] 
              #                     97   alloc i32 [temp_16_ele_of_buf_32_42] 
              #                     100  alloc i1 [temp_17_cmp_42] 
              #                     105  alloc i32 [temp_18_value_from_ptr_46] 
              #                     108  alloc ptr->i32 [temp_19_ptr_of_buf_32_46] 
              #                     110  alloc i32 [temp_20_ele_of_buf_32_46] 
              #                     113  alloc i1 [temp_21_cmp_46] 
              #                     118  alloc i32 [temp_22_value_from_ptr_50] 
              #                     121  alloc ptr->i32 [temp_23_ptr_of_buf_32_50] 
              #                     123  alloc i32 [temp_24_ele_of_buf_32_50] 
              #                     126  alloc i1 [temp_25_cmp_50] 
              #                     131  alloc i32 [temp_26_value_from_ptr_54] 
              #                     134  alloc ptr->i32 [temp_27_ptr_of_buf_32_54] 
              #                     136  alloc i32 [temp_28_ele_of_buf_32_54] 
              #                     139  alloc i1 [temp_29_cmp_54] 
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     79   label while.head_36: 
.while.head_36:
              #                     24    
              #                     78   (nop) 
              #                          jump label: while.body_36 
    j       .while.body_36
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     80   label while.body_36: 
.while.body_36:
              #                     85   temp_12_value_from_ptr_38_0 = load *pos_0:ptr->i32 
              #                    occupy a2 with *pos_0
              #                       load label pos as ptr to reg
    la      a2, pos
              #                    occupy reg a2 with *pos_0
              #                    occupy a3 with temp_12_value_from_ptr_38_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     86   mu pos_0_2:85 
              #                     88   temp_13_cmp_38_0 = icmp i32 Sge temp_12_value_from_ptr_38_0, len_32_0 
              #                    occupy a3 with temp_12_value_from_ptr_38_0
              #                    occupy a1 with len_32_0
              #                    occupy a4 with temp_13_cmp_38_0
    slt     a4,a3,a1
    xori    a4,a4,1
              #                    free a3
              #                    free a1
              #                    free a4
              #                     91   br i1 temp_13_cmp_38_0, label branch_true_39, label branch_false_39 
              #                    occupy a4 with temp_13_cmp_38_0
              #                    free a4
              #                    occupy a4 with temp_13_cmp_38_0
    bnez    a4, .branch_true_39
              #                    free a4
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     89   label branch_true_39: 
.branch_true_39:
              #                     1712 untrack temp_10_arithop_44_0 
              #                     1711 untrack temp_16_ele_of_buf_32_42_0 
              #                     1710 untrack temp_21_cmp_46_0 
              #                     1709 untrack temp_29_cmp_54_0 
              #                     1708 untrack temp_25_cmp_50_0 
              #                     1707 untrack temp_4_arithop_56_0 
              #                     1706 untrack temp_15_ptr_of_buf_32_42 
              #                     1705 untrack temp_8_arithop_48_0 
              #                     1704 untrack temp_17_cmp_42_0 
              #                     1703 untrack temp_12_value_from_ptr_38_0 
              #                    occupy a3 with temp_12_value_from_ptr_38_0
              #                    release a3 with temp_12_value_from_ptr_38_0
              #                     1702 untrack temp_13_cmp_38_0 
              #                    occupy a4 with temp_13_cmp_38_0
              #                    release a4 with temp_13_cmp_38_0
              #                     1701 untrack temp_6_arithop_52_0 
              #                          jump label: while.exit_36 
    j       .while.exit_36
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     81   label while.exit_36: 
.while.exit_36:
              #                     1700 untrack buf_32 
              #                    occupy a0 with buf_32
              #                    release a0 with buf_32
              #                     1699 untrack len_32_0 
              #                    occupy a1 with len_32_0
              #                    release a1 with len_32_0
              #                     1522 mu pos_0_2:83 
              #                     83   ret 
              #                    load from ra_skip_space_0 in mem
    ld      ra,128(sp)
              #                    load from s0_skip_space_0 in mem
    ld      s0,120(sp)
    addi    sp,sp,136
    ret
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     90   label branch_false_39: 
.branch_false_39:
              #                          jump label: L46_0 
    j       .L46_0
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L46_0: 
.L46_0:
              #                     93   (nop) 
              #                     94   mu pos_0_2:93 
              #                     96   temp_15_ptr_of_buf_32_42 = GEP buf_32:Array:i32:[None] [Some(temp_12_value_from_ptr_38_0)] 
              #                    occupy a2 with temp_15_ptr_of_buf_32_42
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_12_value_from_ptr_38_0
    mv      a5, a3
              #                    free a3
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a0 with buf_32
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     98   temp_16_ele_of_buf_32_42_0 = load temp_15_ptr_of_buf_32_42:ptr->i32 
              #                    occupy a2 with temp_15_ptr_of_buf_32_42
              #                    occupy a6 with temp_16_ele_of_buf_32_42_0
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     99   mu buf_32:98 
              #                     101  temp_17_cmp_42_0 = icmp i32 Eq temp_16_ele_of_buf_32_42_0, 32_0 
              #                    occupy a6 with temp_16_ele_of_buf_32_42_0
              #                    occupy a7 with 32_0
    li      a7, 32
              #                    occupy s1 with temp_17_cmp_42_0
    xor     s1,a6,a7
    seqz    s1, s1
              #                    free a6
              #                    free a7
              #                    free s1
              #                     104  br i1 temp_17_cmp_42_0, label branch_true_43, label branch_false_43 
              #                    occupy s1 with temp_17_cmp_42_0
              #                    free s1
              #                    occupy s1 with temp_17_cmp_42_0
    bnez    s1, .branch_true_43
              #                    free s1
    j       .branch_false_43
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a2:Freed { symidx: temp_15_ptr_of_buf_32_42, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     a6:Freed { symidx: temp_16_ele_of_buf_32_42_0, tracked: true } |     s1:Freed { symidx: temp_17_cmp_42_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     102  label branch_true_43: 
.branch_true_43:
              #                     71   (nop) 
              #                     72   mu pos_0_2:71 
              #                     74   temp_10_arithop_44_0 = Add i32 temp_12_value_from_ptr_38_0, 1_0 
              #                    occupy a3 with temp_12_value_from_ptr_38_0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a7 with temp_10_arithop_44_0
    ADDW    a7,a3,a5
              #                    free a3
              #                    free a5
              #                    free a7
              #                     75   store temp_10_arithop_44_0:i32 *pos_0:ptr->i32 
              #                    occupy s2 with *pos_0
              #                       load label pos as ptr to reg
    la      s2, pos
              #                    occupy reg s2 with *pos_0
              #                    occupy a7 with temp_10_arithop_44_0
    sw      a7,0(s2)
              #                    free a7
              #                    free s2
              #                     76   pos_0_3 = chi pos_0_2:75 
              #                          jump label: gather_27 
    j       .gather_27
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a2:Freed { symidx: temp_15_ptr_of_buf_32_42, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     a6:Freed { symidx: temp_16_ele_of_buf_32_42_0, tracked: true } |     a7:Freed { symidx: temp_10_arithop_44_0, tracked: true } |     s1:Freed { symidx: temp_17_cmp_42_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     147  label gather_27: 
.gather_27:
              #                          jump label: while.head_36 
              #                    occupy s1 with temp_17_cmp_42_0
              #                    store to temp_17_cmp_42_0 in mem offset legal
    sb      s1,51(sp)
              #                    release s1 with temp_17_cmp_42_0
              #                    occupy a3 with temp_12_value_from_ptr_38_0
              #                    store to temp_12_value_from_ptr_38_0 in mem offset legal
    sw      a3,72(sp)
              #                    release a3 with temp_12_value_from_ptr_38_0
              #                    occupy a2 with temp_15_ptr_of_buf_32_42
              #                    store to temp_15_ptr_of_buf_32_42 in mem offset legal
    sd      a2,56(sp)
              #                    release a2 with temp_15_ptr_of_buf_32_42
              #                    occupy a4 with temp_13_cmp_38_0
              #                    store to temp_13_cmp_38_0 in mem offset legal
    sb      a4,71(sp)
              #                    release a4 with temp_13_cmp_38_0
              #                    occupy a6 with temp_16_ele_of_buf_32_42_0
              #                    store to temp_16_ele_of_buf_32_42_0 in mem offset legal
    sw      a6,52(sp)
              #                    release a6 with temp_16_ele_of_buf_32_42_0
              #                    occupy a7 with temp_10_arithop_44_0
              #                    store to temp_10_arithop_44_0 in mem offset legal
    sw      a7,76(sp)
              #                    release a7 with temp_10_arithop_44_0
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a2:Freed { symidx: temp_15_ptr_of_buf_32_42, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     a6:Freed { symidx: temp_16_ele_of_buf_32_42_0, tracked: true } |     s1:Freed { symidx: temp_17_cmp_42_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     103  label branch_false_43: 
.branch_false_43:
              #                     106  (nop) 
              #                     107  mu pos_0_2:106 
              #                     109  (nop) 
              #                     111  (nop) 
              #                     112  mu buf_32:111 
              #                     114  temp_21_cmp_46_0 = icmp i32 Eq temp_16_ele_of_buf_32_42_0, 9_0 
              #                    occupy a6 with temp_16_ele_of_buf_32_42_0
              #                    occupy a5 with 9_0
    li      a5, 9
              #                    occupy a7 with temp_21_cmp_46_0
    xor     a7,a6,a5
    seqz    a7, a7
              #                    free a6
              #                    free a5
              #                    free a7
              #                     117  br i1 temp_21_cmp_46_0, label branch_true_47, label branch_false_47 
              #                    occupy a7 with temp_21_cmp_46_0
              #                    free a7
              #                    occupy a7 with temp_21_cmp_46_0
    bnez    a7, .branch_true_47
              #                    free a7
    j       .branch_false_47
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a2:Freed { symidx: temp_15_ptr_of_buf_32_42, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     a6:Freed { symidx: temp_16_ele_of_buf_32_42_0, tracked: true } |     a7:Freed { symidx: temp_21_cmp_46_0, tracked: true } |     s1:Freed { symidx: temp_17_cmp_42_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     115  label branch_true_47: 
.branch_true_47:
              #                     64   (nop) 
              #                     65   mu pos_0_2:64 
              #                     67   temp_8_arithop_48_0 = Add i32 temp_12_value_from_ptr_38_0, 1_0 
              #                    occupy a3 with temp_12_value_from_ptr_38_0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s2 with temp_8_arithop_48_0
    ADDW    s2,a3,a5
              #                    free a3
              #                    free a5
              #                    free s2
              #                     68   store temp_8_arithop_48_0:i32 *pos_0:ptr->i32 
              #                    occupy s3 with *pos_0
              #                       load label pos as ptr to reg
    la      s3, pos
              #                    occupy reg s3 with *pos_0
              #                    occupy s2 with temp_8_arithop_48_0
    sw      s2,0(s3)
              #                    free s2
              #                    occupy s2 with temp_8_arithop_48_0
              #                    store to temp_8_arithop_48_0 in mem offset legal
    sw      s2,80(sp)
              #                    release s2 with temp_8_arithop_48_0
              #                    free s3
              #                     69   pos_0_5 = chi pos_0_2:68 
              #                          jump label: gather_25 
    j       .gather_25
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a2:Freed { symidx: temp_15_ptr_of_buf_32_42, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     a6:Freed { symidx: temp_16_ele_of_buf_32_42_0, tracked: true } |     a7:Freed { symidx: temp_21_cmp_46_0, tracked: true } |     s1:Freed { symidx: temp_17_cmp_42_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     146  label gather_25: 
.gather_25:
              #                          jump label: gather_27 
              #                    occupy a7 with temp_21_cmp_46_0
              #                    store to temp_21_cmp_46_0 in mem offset legal
    sb      a7,39(sp)
              #                    release a7 with temp_21_cmp_46_0
              #                    occupy a7 with temp_10_arithop_44_0
              #                    load from temp_10_arithop_44_0 in mem


    lw      a7,76(sp)
    j       .gather_27
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a2:Freed { symidx: temp_15_ptr_of_buf_32_42, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     a6:Freed { symidx: temp_16_ele_of_buf_32_42_0, tracked: true } |     a7:Freed { symidx: temp_21_cmp_46_0, tracked: true } |     s1:Freed { symidx: temp_17_cmp_42_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     116  label branch_false_47: 
.branch_false_47:
              #                     119  (nop) 
              #                     120  mu pos_0_2:119 
              #                     122  (nop) 
              #                     124  (nop) 
              #                     125  mu buf_32:124 
              #                     127  temp_25_cmp_50_0 = icmp i32 Eq temp_16_ele_of_buf_32_42_0, 10_0 
              #                    occupy a6 with temp_16_ele_of_buf_32_42_0
              #                    occupy a5 with 10_0
    li      a5, 10
              #                    occupy s2 with temp_25_cmp_50_0
    xor     s2,a6,a5
    seqz    s2, s2
              #                    free a6
              #                    free a5
              #                    free s2
              #                     130  br i1 temp_25_cmp_50_0, label branch_true_51, label branch_false_51 
              #                    occupy s2 with temp_25_cmp_50_0
              #                    free s2
              #                    occupy s2 with temp_25_cmp_50_0
    bnez    s2, .branch_true_51
              #                    free s2
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a2:Freed { symidx: temp_15_ptr_of_buf_32_42, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     a6:Freed { symidx: temp_16_ele_of_buf_32_42_0, tracked: true } |     a7:Freed { symidx: temp_21_cmp_46_0, tracked: true } |     s1:Freed { symidx: temp_17_cmp_42_0, tracked: true } |     s2:Freed { symidx: temp_25_cmp_50_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     128  label branch_true_51: 
.branch_true_51:
              #                     1722 untrack temp_4_arithop_56_0 
              #                     1721 untrack temp_21_cmp_46_0 
              #                    occupy a7 with temp_21_cmp_46_0
              #                    release a7 with temp_21_cmp_46_0
              #                     1720 untrack temp_13_cmp_38_0 
              #                    occupy a4 with temp_13_cmp_38_0
              #                    release a4 with temp_13_cmp_38_0
              #                     1719 untrack temp_29_cmp_54_0 
              #                     1718 untrack temp_10_arithop_44_0 
              #                     1717 untrack temp_17_cmp_42_0 
              #                    occupy s1 with temp_17_cmp_42_0
              #                    release s1 with temp_17_cmp_42_0
              #                     1716 untrack temp_15_ptr_of_buf_32_42 
              #                    occupy a2 with temp_15_ptr_of_buf_32_42
              #                    release a2 with temp_15_ptr_of_buf_32_42
              #                     1715 untrack temp_16_ele_of_buf_32_42_0 
              #                    occupy a6 with temp_16_ele_of_buf_32_42_0
              #                    release a6 with temp_16_ele_of_buf_32_42_0
              #                     1714 untrack temp_8_arithop_48_0 
              #                     1713 untrack temp_25_cmp_50_0 
              #                    occupy s2 with temp_25_cmp_50_0
              #                    release s2 with temp_25_cmp_50_0
              #                     57   (nop) 
              #                     58   mu pos_0_2:57 
              #                     60   temp_6_arithop_52_0 = Add i32 temp_12_value_from_ptr_38_0, 1_0 
              #                    occupy a3 with temp_12_value_from_ptr_38_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_6_arithop_52_0
    ADDW    a4,a3,a2
              #                    free a3
              #                    free a2
              #                    free a4
              #                     1724 untrack temp_12_value_from_ptr_38_0 
              #                    occupy a3 with temp_12_value_from_ptr_38_0
              #                    release a3 with temp_12_value_from_ptr_38_0
              #                     61   store temp_6_arithop_52_0:i32 *pos_0:ptr->i32 
              #                    occupy a3 with *pos_0
              #                       load label pos as ptr to reg
    la      a3, pos
              #                    occupy reg a3 with *pos_0
              #                    occupy a4 with temp_6_arithop_52_0
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     1723 untrack temp_6_arithop_52_0 
              #                    occupy a4 with temp_6_arithop_52_0
              #                    release a4 with temp_6_arithop_52_0
              #                     62   pos_0_7 = chi pos_0_2:61 
              #                          jump label: gather_23 
    j       .gather_23
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     145  label gather_23: 
.gather_23:
              #                          jump label: gather_25 
              #                    occupy s1 with temp_17_cmp_42_0
              #                    load from temp_17_cmp_42_0 in mem


    lb      s1,51(sp)
              #                    occupy a3 with temp_12_value_from_ptr_38_0
              #                    load from temp_12_value_from_ptr_38_0 in mem


    lw      a3,72(sp)
              #                    occupy a2 with temp_15_ptr_of_buf_32_42
              #                    load from temp_15_ptr_of_buf_32_42 in mem
    ld      a2,56(sp)
              #                    occupy a4 with temp_13_cmp_38_0
              #                    load from temp_13_cmp_38_0 in mem


    lb      a4,71(sp)
              #                    occupy a6 with temp_16_ele_of_buf_32_42_0
              #                    load from temp_16_ele_of_buf_32_42_0 in mem


    lw      a6,52(sp)
              #                    occupy a7 with temp_21_cmp_46_0
              #                    load from temp_21_cmp_46_0 in mem


    lb      a7,39(sp)
    j       .gather_25
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a2:Freed { symidx: temp_15_ptr_of_buf_32_42, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     a6:Freed { symidx: temp_16_ele_of_buf_32_42_0, tracked: true } |     a7:Freed { symidx: temp_21_cmp_46_0, tracked: true } |     s1:Freed { symidx: temp_17_cmp_42_0, tracked: true } |     s2:Freed { symidx: temp_25_cmp_50_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     129  label branch_false_51: 
.branch_false_51:
              #                     132  (nop) 
              #                     133  mu pos_0_2:132 
              #                     135  (nop) 
              #                     137  (nop) 
              #                     138  mu buf_32:137 
              #                     140  temp_29_cmp_54_0 = icmp i32 Eq temp_16_ele_of_buf_32_42_0, 13_0 
              #                    occupy a6 with temp_16_ele_of_buf_32_42_0
              #                    occupy a5 with 13_0
    li      a5, 13
              #                    occupy s3 with temp_29_cmp_54_0
    xor     s3,a6,a5
    seqz    s3, s3
              #                    free a6
              #                    occupy a6 with temp_16_ele_of_buf_32_42_0
              #                    store to temp_16_ele_of_buf_32_42_0 in mem offset legal
    sw      a6,52(sp)
              #                    release a6 with temp_16_ele_of_buf_32_42_0
              #                    free a5
              #                    free s3
              #                     143  br i1 temp_29_cmp_54_0, label branch_true_55, label branch_false_55 
              #                    occupy s3 with temp_29_cmp_54_0
              #                    free s3
              #                    occupy s3 with temp_29_cmp_54_0
    bnez    s3, .branch_true_55
              #                    free s3
    j       .branch_false_55
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a2:Freed { symidx: temp_15_ptr_of_buf_32_42, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     a7:Freed { symidx: temp_21_cmp_46_0, tracked: true } |     s1:Freed { symidx: temp_17_cmp_42_0, tracked: true } |     s2:Freed { symidx: temp_25_cmp_50_0, tracked: true } |     s3:Freed { symidx: temp_29_cmp_54_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     141  label branch_true_55: 
.branch_true_55:
              #                     50   (nop) 
              #                     51   mu pos_0_2:50 
              #                     53   temp_4_arithop_56_0 = Add i32 temp_12_value_from_ptr_38_0, 1_0 
              #                    occupy a3 with temp_12_value_from_ptr_38_0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_4_arithop_56_0
    ADDW    a6,a3,a5
              #                    free a3
              #                    occupy a3 with temp_12_value_from_ptr_38_0
              #                    store to temp_12_value_from_ptr_38_0 in mem offset legal
    sw      a3,72(sp)
              #                    release a3 with temp_12_value_from_ptr_38_0
              #                    free a5
              #                    free a6
              #                     54   store temp_4_arithop_56_0:i32 *pos_0:ptr->i32 
              #                    occupy a3 with *pos_0
              #                       load label pos as ptr to reg
    la      a3, pos
              #                    occupy reg a3 with *pos_0
              #                    occupy a6 with temp_4_arithop_56_0
    sw      a6,0(a3)
              #                    free a6
              #                    occupy a6 with temp_4_arithop_56_0
              #                    store to temp_4_arithop_56_0 in mem offset legal
    sw      a6,88(sp)
              #                    release a6 with temp_4_arithop_56_0
              #                    free a3
              #                     55   pos_0_9 = chi pos_0_2:54 
              #                          jump label: gather_21 
    j       .gather_21
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a2:Freed { symidx: temp_15_ptr_of_buf_32_42, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     a7:Freed { symidx: temp_21_cmp_46_0, tracked: true } |     s1:Freed { symidx: temp_17_cmp_42_0, tracked: true } |     s2:Freed { symidx: temp_25_cmp_50_0, tracked: true } |     s3:Freed { symidx: temp_29_cmp_54_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     144  label gather_21: 
.gather_21:
              #                          jump label: gather_23 
              #                    occupy s1 with temp_17_cmp_42_0
              #                    store to temp_17_cmp_42_0 in mem offset legal
    sb      s1,51(sp)
              #                    release s1 with temp_17_cmp_42_0
              #                    occupy s3 with temp_29_cmp_54_0
              #                    store to temp_29_cmp_54_0 in mem offset legal
    sb      s3,7(sp)
              #                    release s3 with temp_29_cmp_54_0
              #                    occupy a2 with temp_15_ptr_of_buf_32_42
              #                    store to temp_15_ptr_of_buf_32_42 in mem offset legal
    sd      a2,56(sp)
              #                    release a2 with temp_15_ptr_of_buf_32_42
              #                    occupy a4 with temp_13_cmp_38_0
              #                    store to temp_13_cmp_38_0 in mem offset legal
    sb      a4,71(sp)
              #                    release a4 with temp_13_cmp_38_0
              #                    occupy a7 with temp_21_cmp_46_0
              #                    store to temp_21_cmp_46_0 in mem offset legal
    sb      a7,39(sp)
              #                    release a7 with temp_21_cmp_46_0
              #                    occupy s2 with temp_25_cmp_50_0
              #                    store to temp_25_cmp_50_0 in mem offset legal
    sb      s2,23(sp)
              #                    release s2 with temp_25_cmp_50_0
    j       .gather_23
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32_0, tracked: true } |     a2:Freed { symidx: temp_15_ptr_of_buf_32_42, tracked: true } |     a3:Freed { symidx: temp_12_value_from_ptr_38_0, tracked: true } |     a4:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     a7:Freed { symidx: temp_21_cmp_46_0, tracked: true } |     s1:Freed { symidx: temp_17_cmp_42_0, tracked: true } |     s2:Freed { symidx: temp_25_cmp_50_0, tracked: true } |     s3:Freed { symidx: temp_29_cmp_54_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     142  label branch_false_55: 
.branch_false_55:
              #                     1736 untrack temp_4_arithop_56_0 
              #                     1735 untrack temp_25_cmp_50_0 
              #                    occupy s2 with temp_25_cmp_50_0
              #                    release s2 with temp_25_cmp_50_0
              #                     1734 untrack temp_29_cmp_54_0 
              #                    occupy s3 with temp_29_cmp_54_0
              #                    release s3 with temp_29_cmp_54_0
              #                     1733 untrack temp_13_cmp_38_0 
              #                    occupy a4 with temp_13_cmp_38_0
              #                    release a4 with temp_13_cmp_38_0
              #                     1732 untrack temp_12_value_from_ptr_38_0 
              #                    occupy a3 with temp_12_value_from_ptr_38_0
              #                    release a3 with temp_12_value_from_ptr_38_0
              #                     1731 untrack temp_6_arithop_52_0 
              #                     1730 untrack temp_15_ptr_of_buf_32_42 
              #                    occupy a2 with temp_15_ptr_of_buf_32_42
              #                    release a2 with temp_15_ptr_of_buf_32_42
              #                     1729 untrack temp_17_cmp_42_0 
              #                    occupy s1 with temp_17_cmp_42_0
              #                    release s1 with temp_17_cmp_42_0
              #                     1728 untrack temp_16_ele_of_buf_32_42_0 
              #                     1727 untrack temp_8_arithop_48_0 
              #                     1726 untrack temp_10_arithop_44_0 
              #                     1725 untrack temp_21_cmp_46_0 
              #                    occupy a7 with temp_21_cmp_46_0
              #                    release a7 with temp_21_cmp_46_0
              #                          jump label: while.exit_36 
    j       .while.exit_36
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     27   Define detect_item_0 "type_60_0,buf_60,len_60_0," -> detect_item_ret_0 
    .globl detect_item
    .type detect_item,@function
detect_item:
              #                    mem layout:|ra_detect_item:8 at 1544|s0_detect_item:8 at 1536|type _s60 _i0:4 at 1532|none:4 at 1528|buf:8 at 1520|buf:8 at 1512|len _s60 _i0:4 at 1508|none:4 at 1504|temp_30_array_init_ptr:8 at 1496|temp_31_array_init_ptr:8 at 1488|temp_32_array_init_ptr:8 at 1480|temp_33_array_init_ptr:8 at 1472|temp_34_array_init_ptr:8 at 1464|mNull:16 at 1448|temp_36_arithop _s364 _i0:4 at 1444|none:4 at 1440|temp_37_array_init_ptr:8 at 1432|temp_38_array_init_ptr:8 at 1424|temp_39_array_init_ptr:8 at 1416|temp_40_array_init_ptr:8 at 1408|temp_41_array_init_ptr:8 at 1400|temp_42_array_init_ptr:8 at 1392|mFalse:20 at 1372|temp_44_arithop _s335 _i0:4 at 1368|temp_45_array_init_ptr:8 at 1360|temp_46_array_init_ptr:8 at 1352|temp_47_array_init_ptr:8 at 1344|temp_48_array_init_ptr:8 at 1336|temp_49_array_init_ptr:8 at 1328|mTrue:16 at 1312|temp_51_arithop _s310 _i0:4 at 1308|temp_52_value_from_ptr _s242 _i0:4 at 1304|temp_53_arithop _s242 _i0:4 at 1300|temp_55_arithop _s242 _i0:4 at 1296|temp_57_arithop _s242 _i0:4 at 1292|temp_59_arithop _s275 _i0:4 at 1288|temp_61_arithop _s275 _i0:4 at 1284|temp_63_arithop _s250 _i0:4 at 1280|temp_64_value_from_ptr _s204 _i0:4 at 1276|temp_65_arithop _s204 _i0:4 at 1272|temp_67_arithop _s204 _i0:4 at 1268|temp_69_arithop _s222 _i0:4 at 1264|temp_71_arithop _s212 _i0:4 at 1260|temp_72_value_from_ptr _s179 _i0:4 at 1256|temp_73_arithop _s179 _i0:4 at 1252|temp_75_arithop _s179 _i0:4 at 1248|temp_77_arithop _s191 _i0:4 at 1244|temp_79_arithop _s189 _i0:4 at 1240|temp_81_arithop _s154 _i0:4 at 1236|temp_83_arithop _s172 _i0:4 at 1232|temp_85_arithop _s168 _i0:4 at 1228|temp_87_arithop _s161 _i0:4 at 1224|temp_89_arithop _s140 _i0:4 at 1220|temp_91_arithop _s144 _i0:4 at 1216|temp_93_arithop _s130 _i0:4 at 1212|temp_95_arithop _s118 _i0:4 at 1208|temp_97_arithop _s114 _i0:4 at 1204|temp_98_ret_of_detect_item _s105 _i0:4 at 1200|temp_99_ret_of_detect_item _s101 _i0:4 at 1196|temp_100_ret_of_detect_item _s97 _i0:4 at 1192|temp_101_ret_of_detect_item _s93 _i0:4 at 1188|temp_102_ret_of_detect_item _s89 _i0:4 at 1184|temp_103_ret_of_detect_item _s85 _i0:4 at 1180|temp_104_ret_of_detect_item _s81 _i0:4 at 1176|temp_105_ret_of_detect_item _s77 _i0:4 at 1172|temp_106_ret_of_detect_item _s73 _i0:4 at 1168|temp_107_value_from_ptr _s63 _i0:4 at 1164|temp_108_cmp _s63 _i0:1 at 1163|temp_109_cmp _s68 _i0:1 at 1162|temp_110_cmp _s109 _i0:1 at 1161|temp_111_cmp _s177 _i0:1 at 1160|temp_112_cmp _s202 _i0:1 at 1159|temp_113_cmp _s240 _i0:1 at 1158|temp_114_cmp _s308 _i0:1 at 1157|temp_115_cmp _s333 _i0:1 at 1156|temp_116_cmp _s362 _i0:1 at 1155|none:3 at 1152|temp_117_value_from_ptr _s366 _i0:4 at 1148|temp_118_arithop _s366 _i0:4 at 1144|temp_119_cmp _s366 _i0:1 at 1143|none:7 at 1136|temp_120_ptr_of_mNull_364:8 at 1128|temp_121_ele_of_mNull_364 _s370 _i0:4 at 1124|none:4 at 1120|temp_123_ptr_of_buf_60:8 at 1112|temp_124_ele_of_buf_60 _s370 _i0:4 at 1108|temp_125_cmp _s370 _i0:1 at 1107|none:3 at 1104|temp_126_ptr_of_mNull_364:8 at 1096|temp_127_ele_of_mNull_364 _s374 _i0:4 at 1092|temp_129_arithop _s374 _i0:4 at 1088|temp_130_ptr_of_buf_60:8 at 1080|temp_131_ele_of_buf_60 _s374 _i0:4 at 1076|temp_132_cmp _s374 _i0:1 at 1075|none:3 at 1072|temp_133_ptr_of_mNull_364:8 at 1064|temp_134_ele_of_mNull_364 _s378 _i0:4 at 1060|temp_136_arithop _s378 _i0:4 at 1056|temp_137_ptr_of_buf_60:8 at 1048|temp_138_ele_of_buf_60 _s378 _i0:4 at 1044|temp_139_cmp _s378 _i0:1 at 1043|none:3 at 1040|temp_140_ptr_of_mNull_364:8 at 1032|temp_141_ele_of_mNull_364 _s382 _i0:4 at 1028|none:4 at 1024|temp_144_ptr_of_buf_60:8 at 1016|temp_145_ele_of_buf_60 _s382 _i0:4 at 1012|temp_146_cmp _s382 _i0:1 at 1011|none:3 at 1008|temp_147_value_from_ptr _s337 _i0:4 at 1004|temp_148_arithop _s337 _i0:4 at 1000|temp_149_cmp _s337 _i0:1 at 999|none:7 at 992|temp_150_ptr_of_mFalse_335:8 at 984|temp_151_ele_of_mFalse_335 _s341 _i0:4 at 980|none:4 at 976|temp_153_ptr_of_buf_60:8 at 968|temp_154_ele_of_buf_60 _s341 _i0:4 at 964|temp_155_cmp _s341 _i0:1 at 963|none:3 at 960|temp_156_ptr_of_mFalse_335:8 at 952|temp_157_ele_of_mFalse_335 _s345 _i0:4 at 948|temp_159_arithop _s345 _i0:4 at 944|temp_160_ptr_of_buf_60:8 at 936|temp_161_ele_of_buf_60 _s345 _i0:4 at 932|temp_162_cmp _s345 _i0:1 at 931|none:3 at 928|temp_163_ptr_of_mFalse_335:8 at 920|temp_164_ele_of_mFalse_335 _s349 _i0:4 at 916|temp_166_arithop _s349 _i0:4 at 912|temp_167_ptr_of_buf_60:8 at 904|temp_168_ele_of_buf_60 _s349 _i0:4 at 900|temp_169_cmp _s349 _i0:1 at 899|none:3 at 896|temp_170_ptr_of_mFalse_335:8 at 888|temp_171_ele_of_mFalse_335 _s353 _i0:4 at 884|temp_173_arithop _s353 _i0:4 at 880|temp_174_ptr_of_buf_60:8 at 872|temp_175_ele_of_buf_60 _s353 _i0:4 at 868|temp_176_cmp _s353 _i0:1 at 867|none:3 at 864|temp_177_ptr_of_mFalse_335:8 at 856|temp_178_ele_of_mFalse_335 _s357 _i0:4 at 852|none:4 at 848|temp_181_ptr_of_buf_60:8 at 840|temp_182_ele_of_buf_60 _s357 _i0:4 at 836|temp_183_cmp _s357 _i0:1 at 835|none:3 at 832|temp_184_value_from_ptr _s312 _i0:4 at 828|temp_185_arithop _s312 _i0:4 at 824|temp_186_cmp _s312 _i0:1 at 823|none:7 at 816|temp_187_ptr_of_mTrue_310:8 at 808|temp_188_ele_of_mTrue_310 _s316 _i0:4 at 804|none:4 at 800|temp_190_ptr_of_buf_60:8 at 792|temp_191_ele_of_buf_60 _s316 _i0:4 at 788|temp_192_cmp _s316 _i0:1 at 787|none:3 at 784|temp_193_ptr_of_mTrue_310:8 at 776|temp_194_ele_of_mTrue_310 _s320 _i0:4 at 772|temp_196_arithop _s320 _i0:4 at 768|temp_197_ptr_of_buf_60:8 at 760|temp_198_ele_of_buf_60 _s320 _i0:4 at 756|temp_199_cmp _s320 _i0:1 at 755|none:3 at 752|temp_200_ptr_of_mTrue_310:8 at 744|temp_201_ele_of_mTrue_310 _s324 _i0:4 at 740|temp_203_arithop _s324 _i0:4 at 736|temp_204_ptr_of_buf_60:8 at 728|temp_205_ele_of_buf_60 _s324 _i0:4 at 724|temp_206_cmp _s324 _i0:1 at 723|none:3 at 720|temp_207_ptr_of_mTrue_310:8 at 712|temp_208_ele_of_mTrue_310 _s328 _i0:4 at 708|none:4 at 704|temp_211_ptr_of_buf_60:8 at 696|temp_212_ele_of_buf_60 _s328 _i0:4 at 692|temp_213_cmp _s328 _i0:1 at 691|none:3 at 688|temp_214_value_from_ptr _s245 _i0:4 at 684|temp_215_cmp _s245 _i0:1 at 683|none:3 at 680|temp_216_ret_of_detect_item _s253 _i0:4 at 676|temp_217_cmp _s253 _i0:1 at 675|none:3 at 672|temp_218_value_from_ptr _s258 _i0:4 at 668|temp_219_cmp _s258 _i0:1 at 667|none:3 at 664|temp_221_ptr_of_buf_60:8 at 656|temp_222_ele_of_buf_60 _s262 _i0:4 at 652|temp_223_cmp _s262 _i0:1 at 651|none:3 at 648|temp_224_ret_of_detect_item _s268 _i0:4 at 644|temp_225_cmp _s268 _i0:1 at 643|none:3 at 640|temp_226_value_from_ptr _s273 _i0:4 at 636|none:4 at 632|temp_227_ptr_of_buf_60:8 at 624|temp_228_ele_of_buf_60 _s273 _i0:4 at 620|temp_229_cmp _s273 _i0:1 at 619|none:3 at 616|temp_230_value_from_ptr _s299 _i0:4 at 612|temp_231_cmp _s299 _i0:1 at 611|none:3 at 608|temp_233_ptr_of_buf_60:8 at 600|temp_234_ele_of_buf_60 _s303 _i0:4 at 596|temp_235_cmp _s303 _i0:1 at 595|none:3 at 592|temp_236_ret_of_detect_item _s278 _i0:4 at 588|temp_237_cmp _s278 _i0:1 at 587|none:3 at 584|temp_238_value_from_ptr _s283 _i0:4 at 580|temp_239_cmp _s283 _i0:1 at 579|none:3 at 576|temp_241_ptr_of_buf_60:8 at 568|temp_242_ele_of_buf_60 _s287 _i0:4 at 564|temp_243_cmp _s287 _i0:1 at 563|none:3 at 560|temp_244_ret_of_detect_item _s293 _i0:4 at 556|temp_245_cmp _s293 _i0:1 at 555|none:3 at 552|temp_247_ptr_of_buf_60:8 at 544|temp_248_ele_of_buf_60 _s248 _i0:4 at 540|temp_249_cmp _s248 _i0:1 at 539|none:3 at 536|temp_250_value_from_ptr _s207 _i0:4 at 532|temp_251_cmp _s207 _i0:1 at 531|none:3 at 528|temp_252_ret_of_detect_item _s215 _i0:4 at 524|temp_253_cmp _s215 _i0:1 at 523|none:3 at 520|temp_254_value_from_ptr _s220 _i0:4 at 516|none:4 at 512|temp_255_ptr_of_buf_60:8 at 504|temp_256_ele_of_buf_60 _s220 _i0:4 at 500|temp_257_cmp _s220 _i0:1 at 499|none:3 at 496|temp_258_value_from_ptr _s231 _i0:4 at 492|temp_259_cmp _s231 _i0:1 at 491|none:3 at 488|temp_261_ptr_of_buf_60:8 at 480|temp_262_ele_of_buf_60 _s235 _i0:4 at 476|temp_263_cmp _s235 _i0:1 at 475|none:3 at 472|temp_264_ret_of_detect_item _s225 _i0:4 at 468|temp_265_cmp _s225 _i0:1 at 467|none:3 at 464|temp_267_ptr_of_buf_60:8 at 456|temp_268_ele_of_buf_60 _s210 _i0:4 at 452|temp_269_cmp _s210 _i0:1 at 451|none:3 at 448|temp_270_value_from_ptr _s181 _i0:4 at 444|temp_271_cmp _s181 _i0:1 at 443|temp_273_cmp _s193 _i0:1 at 442|none:2 at 440|temp_275_ptr_of_buf_60:8 at 432|temp_276_ele_of_buf_60 _s197 _i0:4 at 428|temp_277_cmp _s197 _i0:1 at 427|none:3 at 424|temp_279_ptr_of_buf_60:8 at 416|temp_280_ele_of_buf_60 _s184 _i0:4 at 412|temp_281_cmp _s184 _i0:1 at 411|none:3 at 408|temp_283_ptr_of_buf_60:8 at 400|temp_285_cmp _s187 _i0:1 at 399|none:3 at 396|temp_286_value_from_ptr _s112 _i0:4 at 392|temp_287_ptr_of_buf_60:8 at 384|temp_288_ele_of_buf_60 _s112 _i0:4 at 380|temp_289_cmp _s112 _i0:1 at 379|none:3 at 376|temp_291_ptr_of_buf_60:8 at 368|temp_293_cmp _s116 _i0:1 at 367|none:3 at 364|temp_294_value_from_ptr _s120 _i0:4 at 360|temp_295_cmp _s120 _i0:1 at 359|none:7 at 352|temp_297_ptr_of_buf_60:8 at 344|temp_298_ele_of_buf_60 _s124 _i0:4 at 340|temp_299_ret_of_is_number _s124 _i0:4 at 336|temp_300_cmp _s124 _i0:1 at 335|none:3 at 332|temp_301_value_from_ptr _s128 _i0:4 at 328|temp_302_cmp _s128 _i0:1 at 327|none:3 at 324|temp_305_value_from_ptr _s149 _i0:4 at 320|temp_306_cmp _s149 _i0:1 at 319|none:7 at 312|temp_308_ptr_of_buf_60:8 at 304|temp_309_ele_of_buf_60 _s152 _i0:4 at 300|temp_310_cmp _s152 _i0:1 at 299|none:3 at 296|temp_311_value_from_ptr _s156 _i0:4 at 292|temp_312_cmp _s156 _i0:1 at 291|none:3 at 288|temp_313_value_from_ptr _s163 _i0:4 at 284|temp_314_cmp _s163 _i0:1 at 283|none:3 at 280|temp_315_value_from_ptr _s170 _i0:4 at 276|temp_316_cmp _s170 _i0:1 at 275|none:3 at 272|temp_318_ptr_of_buf_60:8 at 264|temp_319_ele_of_buf_60 _s173 _i0:4 at 260|temp_320_ret_of_is_number _s173 _i0:4 at 256|temp_321_cmp _s173 _i0:1 at 255|none:7 at 248|temp_323_ptr_of_buf_60:8 at 240|temp_324_ele_of_buf_60 _s166 _i0:4 at 236|temp_325_cmp _s166 _i0:1 at 235|none:3 at 232|temp_327_ptr_of_buf_60:8 at 224|temp_328_ele_of_buf_60 _s159 _i0:4 at 220|temp_329_cmp _s159 _i0:1 at 219|none:3 at 216|temp_331_ptr_of_buf_60:8 at 208|temp_332_ele_of_buf_60 _s138 _i0:4 at 204|temp_333_cmp _s138 _i0:1 at 203|none:3 at 200|temp_334_value_from_ptr _s142 _i0:4 at 196|temp_335_cmp _s142 _i0:1 at 195|none:3 at 192|temp_337_ptr_of_buf_60:8 at 184|temp_338_ele_of_buf_60 _s145 _i0:4 at 180|temp_339_ret_of_is_number _s145 _i0:4 at 176|temp_340_cmp _s145 _i0:1 at 175|none:7 at 168|temp_342_ptr_of_buf_60:8 at 160|temp_343_ele_of_buf_60 _s131 _i0:4 at 156|temp_344_ret_of_is_number _s131 _i0:4 at 152|temp_345_cmp _s131 _i0:1 at 151|none:3 at 148|temp_346_value_from_ptr _s71 _i0:4 at 144|temp_347_ptr_of_buf_60:8 at 136|temp_348_ele_of_buf_60 _s71 _i0:4 at 132|temp_349_cmp _s71 _i0:1 at 131|none:3 at 128|temp_351_ptr_of_buf_60:8 at 120|temp_353_cmp _s75 _i0:1 at 119|none:7 at 112|temp_355_ptr_of_buf_60:8 at 104|temp_357_cmp _s79 _i0:1 at 103|none:7 at 96|temp_359_ptr_of_buf_60:8 at 88|temp_361_ret_of_is_number _s83 _i0:4 at 84|temp_362_cmp _s83 _i0:1 at 83|none:3 at 80|temp_364_ptr_of_buf_60:8 at 72|temp_366_cmp _s87 _i0:1 at 71|none:7 at 64|temp_368_ptr_of_buf_60:8 at 56|temp_370_cmp _s91 _i0:1 at 55|none:7 at 48|temp_372_ptr_of_buf_60:8 at 40|temp_374_cmp _s95 _i0:1 at 39|none:7 at 32|temp_376_ptr_of_buf_60:8 at 24|temp_378_cmp _s99 _i0:1 at 23|none:7 at 16|temp_380_ptr_of_buf_60:8 at 8|temp_382_cmp _s103 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-1552
              #                    store to ra_detect_item_0 in mem offset legal
    sd      ra,1544(sp)
              #                    store to s0_detect_item_0 in mem offset legal
    sd      s0,1536(sp)
    addi    s0,sp,1552
              #                     1523 pos_0_10 = chi pos_0_0:27 
              #                     154  alloc ptr->i32 [temp_30_array_init_ptr_364] 
              #                     157  alloc ptr->i32 [temp_31_array_init_ptr_364] 
              #                     161  alloc ptr->i32 [temp_32_array_init_ptr_364] 
              #                     165  alloc ptr->i32 [temp_33_array_init_ptr_364] 
              #                     169  alloc ptr->i32 [temp_34_array_init_ptr_364] 
              #                     173  alloc Array:i32:[Some(4_0)] [mNull_364] 
              #                     174  alloc i32 [temp_35_value_from_ptr_364] 
              #                     177  alloc i32 [temp_36_arithop_364] 
              #                     192  alloc ptr->i32 [temp_37_array_init_ptr_335] 
              #                     195  alloc ptr->i32 [temp_38_array_init_ptr_335] 
              #                     199  alloc ptr->i32 [temp_39_array_init_ptr_335] 
              #                     203  alloc ptr->i32 [temp_40_array_init_ptr_335] 
              #                     207  alloc ptr->i32 [temp_41_array_init_ptr_335] 
              #                     211  alloc ptr->i32 [temp_42_array_init_ptr_335] 
              #                     215  alloc Array:i32:[Some(5_0)] [mFalse_335] 
              #                     216  alloc i32 [temp_43_value_from_ptr_335] 
              #                     219  alloc i32 [temp_44_arithop_335] 
              #                     236  alloc ptr->i32 [temp_45_array_init_ptr_310] 
              #                     239  alloc ptr->i32 [temp_46_array_init_ptr_310] 
              #                     243  alloc ptr->i32 [temp_47_array_init_ptr_310] 
              #                     247  alloc ptr->i32 [temp_48_array_init_ptr_310] 
              #                     251  alloc ptr->i32 [temp_49_array_init_ptr_310] 
              #                     255  alloc Array:i32:[Some(4_0)] [mTrue_310] 
              #                     256  alloc i32 [temp_50_value_from_ptr_310] 
              #                     259  alloc i32 [temp_51_arithop_310] 
              #                     273  alloc i32 [temp_52_value_from_ptr_242] 
              #                     276  alloc i32 [temp_53_arithop_242] 
              #                     282  alloc i32 [temp_54_value_from_ptr_242] 
              #                     285  alloc i32 [temp_55_arithop_242] 
              #                     292  alloc i32 [temp_56_value_from_ptr_242] 
              #                     295  alloc i32 [temp_57_arithop_242] 
              #                     303  alloc i32 [temp_58_value_from_ptr_275] 
              #                     306  alloc i32 [temp_59_arithop_275] 
              #                     312  alloc i32 [temp_60_value_from_ptr_275] 
              #                     315  alloc i32 [temp_61_arithop_275] 
              #                     337  alloc i32 [temp_62_value_from_ptr_250] 
              #                     340  alloc i32 [temp_63_arithop_250] 
              #                     346  alloc i32 [temp_64_value_from_ptr_204] 
              #                     349  alloc i32 [temp_65_arithop_204] 
              #                     356  alloc i32 [temp_66_value_from_ptr_204] 
              #                     359  alloc i32 [temp_67_arithop_204] 
              #                     367  alloc i32 [temp_68_value_from_ptr_222] 
              #                     370  alloc i32 [temp_69_arithop_222] 
              #                     380  alloc i32 [temp_70_value_from_ptr_212] 
              #                     383  alloc i32 [temp_71_arithop_212] 
              #                     389  alloc i32 [temp_72_value_from_ptr_179] 
              #                     392  alloc i32 [temp_73_arithop_179] 
              #                     396  alloc i32 [temp_74_value_from_ptr_179] 
              #                     399  alloc i32 [temp_75_arithop_179] 
              #                     407  alloc i32 [temp_76_value_from_ptr_191] 
              #                     410  alloc i32 [temp_77_arithop_191] 
              #                     414  alloc i32 [temp_78_value_from_ptr_189] 
              #                     417  alloc i32 [temp_79_arithop_189] 
              #                     421  alloc i32 [temp_80_value_from_ptr_154] 
              #                     424  alloc i32 [temp_81_arithop_154] 
              #                     428  alloc i32 [temp_82_value_from_ptr_172] 
              #                     431  alloc i32 [temp_83_arithop_172] 
              #                     435  alloc i32 [temp_84_value_from_ptr_168] 
              #                     438  alloc i32 [temp_85_arithop_168] 
              #                     442  alloc i32 [temp_86_value_from_ptr_161] 
              #                     445  alloc i32 [temp_87_arithop_161] 
              #                     449  alloc i32 [temp_88_value_from_ptr_140] 
              #                     452  alloc i32 [temp_89_arithop_140] 
              #                     456  alloc i32 [temp_90_value_from_ptr_144] 
              #                     459  alloc i32 [temp_91_arithop_144] 
              #                     463  alloc i32 [temp_92_value_from_ptr_130] 
              #                     466  alloc i32 [temp_93_arithop_130] 
              #                     474  alloc i32 [temp_94_value_from_ptr_118] 
              #                     477  alloc i32 [temp_95_arithop_118] 
              #                     481  alloc i32 [temp_96_value_from_ptr_114] 
              #                     484  alloc i32 [temp_97_arithop_114] 
              #                     491  alloc i32 [temp_98_ret_of_detect_item_105] 
              #                     495  alloc i32 [temp_99_ret_of_detect_item_101] 
              #                     499  alloc i32 [temp_100_ret_of_detect_item_97] 
              #                     503  alloc i32 [temp_101_ret_of_detect_item_93] 
              #                     507  alloc i32 [temp_102_ret_of_detect_item_89] 
              #                     511  alloc i32 [temp_103_ret_of_detect_item_85] 
              #                     515  alloc i32 [temp_104_ret_of_detect_item_81] 
              #                     519  alloc i32 [temp_105_ret_of_detect_item_77] 
              #                     523  alloc i32 [temp_106_ret_of_detect_item_73] 
              #                     528  alloc i32 [temp_107_value_from_ptr_63] 
              #                     531  alloc i1 [temp_108_cmp_63] 
              #                     536  alloc i1 [temp_109_cmp_68] 
              #                     541  alloc i1 [temp_110_cmp_109] 
              #                     546  alloc i1 [temp_111_cmp_177] 
              #                     551  alloc i1 [temp_112_cmp_202] 
              #                     556  alloc i1 [temp_113_cmp_240] 
              #                     561  alloc i1 [temp_114_cmp_308] 
              #                     566  alloc i1 [temp_115_cmp_333] 
              #                     571  alloc i1 [temp_116_cmp_362] 
              #                     586  alloc i32 [temp_117_value_from_ptr_366] 
              #                     589  alloc i32 [temp_118_arithop_366] 
              #                     591  alloc i1 [temp_119_cmp_366] 
              #                     596  alloc ptr->i32 [temp_120_ptr_of_mNull_364_370] 
              #                     598  alloc i32 [temp_121_ele_of_mNull_364_370] 
              #                     601  alloc i32 [temp_122_value_from_ptr_370] 
              #                     604  alloc ptr->i32 [temp_123_ptr_of_buf_60_370] 
              #                     606  alloc i32 [temp_124_ele_of_buf_60_370] 
              #                     609  alloc i1 [temp_125_cmp_370] 
              #                     614  alloc ptr->i32 [temp_126_ptr_of_mNull_364_374] 
              #                     616  alloc i32 [temp_127_ele_of_mNull_364_374] 
              #                     619  alloc i32 [temp_128_value_from_ptr_374] 
              #                     622  alloc i32 [temp_129_arithop_374] 
              #                     624  alloc ptr->i32 [temp_130_ptr_of_buf_60_374] 
              #                     626  alloc i32 [temp_131_ele_of_buf_60_374] 
              #                     629  alloc i1 [temp_132_cmp_374] 
              #                     634  alloc ptr->i32 [temp_133_ptr_of_mNull_364_378] 
              #                     636  alloc i32 [temp_134_ele_of_mNull_364_378] 
              #                     639  alloc i32 [temp_135_value_from_ptr_378] 
              #                     642  alloc i32 [temp_136_arithop_378] 
              #                     644  alloc ptr->i32 [temp_137_ptr_of_buf_60_378] 
              #                     646  alloc i32 [temp_138_ele_of_buf_60_378] 
              #                     649  alloc i1 [temp_139_cmp_378] 
              #                     654  alloc ptr->i32 [temp_140_ptr_of_mNull_364_382] 
              #                     656  alloc i32 [temp_141_ele_of_mNull_364_382] 
              #                     659  alloc i32 [temp_142_value_from_ptr_382] 
              #                     662  alloc i32 [temp_143_arithop_382] 
              #                     664  alloc ptr->i32 [temp_144_ptr_of_buf_60_382] 
              #                     666  alloc i32 [temp_145_ele_of_buf_60_382] 
              #                     669  alloc i1 [temp_146_cmp_382] 
              #                     678  alloc i32 [temp_147_value_from_ptr_337] 
              #                     681  alloc i32 [temp_148_arithop_337] 
              #                     683  alloc i1 [temp_149_cmp_337] 
              #                     688  alloc ptr->i32 [temp_150_ptr_of_mFalse_335_341] 
              #                     690  alloc i32 [temp_151_ele_of_mFalse_335_341] 
              #                     693  alloc i32 [temp_152_value_from_ptr_341] 
              #                     696  alloc ptr->i32 [temp_153_ptr_of_buf_60_341] 
              #                     698  alloc i32 [temp_154_ele_of_buf_60_341] 
              #                     701  alloc i1 [temp_155_cmp_341] 
              #                     706  alloc ptr->i32 [temp_156_ptr_of_mFalse_335_345] 
              #                     708  alloc i32 [temp_157_ele_of_mFalse_335_345] 
              #                     711  alloc i32 [temp_158_value_from_ptr_345] 
              #                     714  alloc i32 [temp_159_arithop_345] 
              #                     716  alloc ptr->i32 [temp_160_ptr_of_buf_60_345] 
              #                     718  alloc i32 [temp_161_ele_of_buf_60_345] 
              #                     721  alloc i1 [temp_162_cmp_345] 
              #                     726  alloc ptr->i32 [temp_163_ptr_of_mFalse_335_349] 
              #                     728  alloc i32 [temp_164_ele_of_mFalse_335_349] 
              #                     731  alloc i32 [temp_165_value_from_ptr_349] 
              #                     734  alloc i32 [temp_166_arithop_349] 
              #                     736  alloc ptr->i32 [temp_167_ptr_of_buf_60_349] 
              #                     738  alloc i32 [temp_168_ele_of_buf_60_349] 
              #                     741  alloc i1 [temp_169_cmp_349] 
              #                     746  alloc ptr->i32 [temp_170_ptr_of_mFalse_335_353] 
              #                     748  alloc i32 [temp_171_ele_of_mFalse_335_353] 
              #                     751  alloc i32 [temp_172_value_from_ptr_353] 
              #                     754  alloc i32 [temp_173_arithop_353] 
              #                     756  alloc ptr->i32 [temp_174_ptr_of_buf_60_353] 
              #                     758  alloc i32 [temp_175_ele_of_buf_60_353] 
              #                     761  alloc i1 [temp_176_cmp_353] 
              #                     766  alloc ptr->i32 [temp_177_ptr_of_mFalse_335_357] 
              #                     768  alloc i32 [temp_178_ele_of_mFalse_335_357] 
              #                     771  alloc i32 [temp_179_value_from_ptr_357] 
              #                     774  alloc i32 [temp_180_arithop_357] 
              #                     776  alloc ptr->i32 [temp_181_ptr_of_buf_60_357] 
              #                     778  alloc i32 [temp_182_ele_of_buf_60_357] 
              #                     781  alloc i1 [temp_183_cmp_357] 
              #                     791  alloc i32 [temp_184_value_from_ptr_312] 
              #                     794  alloc i32 [temp_185_arithop_312] 
              #                     796  alloc i1 [temp_186_cmp_312] 
              #                     801  alloc ptr->i32 [temp_187_ptr_of_mTrue_310_316] 
              #                     803  alloc i32 [temp_188_ele_of_mTrue_310_316] 
              #                     806  alloc i32 [temp_189_value_from_ptr_316] 
              #                     809  alloc ptr->i32 [temp_190_ptr_of_buf_60_316] 
              #                     811  alloc i32 [temp_191_ele_of_buf_60_316] 
              #                     814  alloc i1 [temp_192_cmp_316] 
              #                     819  alloc ptr->i32 [temp_193_ptr_of_mTrue_310_320] 
              #                     821  alloc i32 [temp_194_ele_of_mTrue_310_320] 
              #                     824  alloc i32 [temp_195_value_from_ptr_320] 
              #                     827  alloc i32 [temp_196_arithop_320] 
              #                     829  alloc ptr->i32 [temp_197_ptr_of_buf_60_320] 
              #                     831  alloc i32 [temp_198_ele_of_buf_60_320] 
              #                     834  alloc i1 [temp_199_cmp_320] 
              #                     839  alloc ptr->i32 [temp_200_ptr_of_mTrue_310_324] 
              #                     841  alloc i32 [temp_201_ele_of_mTrue_310_324] 
              #                     844  alloc i32 [temp_202_value_from_ptr_324] 
              #                     847  alloc i32 [temp_203_arithop_324] 
              #                     849  alloc ptr->i32 [temp_204_ptr_of_buf_60_324] 
              #                     851  alloc i32 [temp_205_ele_of_buf_60_324] 
              #                     854  alloc i1 [temp_206_cmp_324] 
              #                     859  alloc ptr->i32 [temp_207_ptr_of_mTrue_310_328] 
              #                     861  alloc i32 [temp_208_ele_of_mTrue_310_328] 
              #                     864  alloc i32 [temp_209_value_from_ptr_328] 
              #                     867  alloc i32 [temp_210_arithop_328] 
              #                     869  alloc ptr->i32 [temp_211_ptr_of_buf_60_328] 
              #                     871  alloc i32 [temp_212_ele_of_buf_60_328] 
              #                     874  alloc i1 [temp_213_cmp_328] 
              #                     883  alloc i32 [temp_214_value_from_ptr_245] 
              #                     886  alloc i1 [temp_215_cmp_245] 
              #                     891  alloc i32 [temp_216_ret_of_detect_item_253] 
              #                     893  alloc i1 [temp_217_cmp_253] 
              #                     898  alloc i32 [temp_218_value_from_ptr_258] 
              #                     901  alloc i1 [temp_219_cmp_258] 
              #                     906  alloc i32 [temp_220_value_from_ptr_262] 
              #                     909  alloc ptr->i32 [temp_221_ptr_of_buf_60_262] 
              #                     911  alloc i32 [temp_222_ele_of_buf_60_262] 
              #                     914  alloc i1 [temp_223_cmp_262] 
              #                     919  alloc i32 [temp_224_ret_of_detect_item_268] 
              #                     921  alloc i1 [temp_225_cmp_268] 
              #                     926  alloc i32 [temp_226_value_from_ptr_273] 
              #                     929  alloc ptr->i32 [temp_227_ptr_of_buf_60_273] 
              #                     931  alloc i32 [temp_228_ele_of_buf_60_273] 
              #                     934  alloc i1 [temp_229_cmp_273] 
              #                     940  alloc i32 [temp_230_value_from_ptr_299] 
              #                     943  alloc i1 [temp_231_cmp_299] 
              #                     948  alloc i32 [temp_232_value_from_ptr_303] 
              #                     951  alloc ptr->i32 [temp_233_ptr_of_buf_60_303] 
              #                     953  alloc i32 [temp_234_ele_of_buf_60_303] 
              #                     956  alloc i1 [temp_235_cmp_303] 
              #                     962  alloc i32 [temp_236_ret_of_detect_item_278] 
              #                     964  alloc i1 [temp_237_cmp_278] 
              #                     969  alloc i32 [temp_238_value_from_ptr_283] 
              #                     972  alloc i1 [temp_239_cmp_283] 
              #                     977  alloc i32 [temp_240_value_from_ptr_287] 
              #                     980  alloc ptr->i32 [temp_241_ptr_of_buf_60_287] 
              #                     982  alloc i32 [temp_242_ele_of_buf_60_287] 
              #                     985  alloc i1 [temp_243_cmp_287] 
              #                     990  alloc i32 [temp_244_ret_of_detect_item_293] 
              #                     992  alloc i1 [temp_245_cmp_293] 
              #                     997  alloc i32 [temp_246_value_from_ptr_248] 
              #                     1000 alloc ptr->i32 [temp_247_ptr_of_buf_60_248] 
              #                     1002 alloc i32 [temp_248_ele_of_buf_60_248] 
              #                     1005 alloc i1 [temp_249_cmp_248] 
              #                     1010 alloc i32 [temp_250_value_from_ptr_207] 
              #                     1013 alloc i1 [temp_251_cmp_207] 
              #                     1018 alloc i32 [temp_252_ret_of_detect_item_215] 
              #                     1020 alloc i1 [temp_253_cmp_215] 
              #                     1025 alloc i32 [temp_254_value_from_ptr_220] 
              #                     1028 alloc ptr->i32 [temp_255_ptr_of_buf_60_220] 
              #                     1030 alloc i32 [temp_256_ele_of_buf_60_220] 
              #                     1033 alloc i1 [temp_257_cmp_220] 
              #                     1039 alloc i32 [temp_258_value_from_ptr_231] 
              #                     1042 alloc i1 [temp_259_cmp_231] 
              #                     1047 alloc i32 [temp_260_value_from_ptr_235] 
              #                     1050 alloc ptr->i32 [temp_261_ptr_of_buf_60_235] 
              #                     1052 alloc i32 [temp_262_ele_of_buf_60_235] 
              #                     1055 alloc i1 [temp_263_cmp_235] 
              #                     1060 alloc i32 [temp_264_ret_of_detect_item_225] 
              #                     1062 alloc i1 [temp_265_cmp_225] 
              #                     1067 alloc i32 [temp_266_value_from_ptr_210] 
              #                     1070 alloc ptr->i32 [temp_267_ptr_of_buf_60_210] 
              #                     1072 alloc i32 [temp_268_ele_of_buf_60_210] 
              #                     1075 alloc i1 [temp_269_cmp_210] 
              #                     1080 alloc i32 [temp_270_value_from_ptr_181] 
              #                     1083 alloc i1 [temp_271_cmp_181] 
              #                     1089 alloc i32 [temp_272_value_from_ptr_193] 
              #                     1092 alloc i1 [temp_273_cmp_193] 
              #                     1097 alloc i32 [temp_274_value_from_ptr_197] 
              #                     1100 alloc ptr->i32 [temp_275_ptr_of_buf_60_197] 
              #                     1102 alloc i32 [temp_276_ele_of_buf_60_197] 
              #                     1105 alloc i1 [temp_277_cmp_197] 
              #                     1111 alloc i32 [temp_278_value_from_ptr_184] 
              #                     1114 alloc ptr->i32 [temp_279_ptr_of_buf_60_184] 
              #                     1116 alloc i32 [temp_280_ele_of_buf_60_184] 
              #                     1119 alloc i1 [temp_281_cmp_184] 
              #                     1124 alloc i32 [temp_282_value_from_ptr_187] 
              #                     1127 alloc ptr->i32 [temp_283_ptr_of_buf_60_187] 
              #                     1129 alloc i32 [temp_284_ele_of_buf_60_187] 
              #                     1132 alloc i1 [temp_285_cmp_187] 
              #                     1138 alloc i32 [temp_286_value_from_ptr_112] 
              #                     1141 alloc ptr->i32 [temp_287_ptr_of_buf_60_112] 
              #                     1143 alloc i32 [temp_288_ele_of_buf_60_112] 
              #                     1146 alloc i1 [temp_289_cmp_112] 
              #                     1151 alloc i32 [temp_290_value_from_ptr_116] 
              #                     1154 alloc ptr->i32 [temp_291_ptr_of_buf_60_116] 
              #                     1156 alloc i32 [temp_292_ele_of_buf_60_116] 
              #                     1159 alloc i1 [temp_293_cmp_116] 
              #                     1165 alloc i32 [temp_294_value_from_ptr_120] 
              #                     1168 alloc i1 [temp_295_cmp_120] 
              #                     1173 alloc i32 [temp_296_value_from_ptr_124] 
              #                     1176 alloc ptr->i32 [temp_297_ptr_of_buf_60_124] 
              #                     1178 alloc i32 [temp_298_ele_of_buf_60_124] 
              #                     1181 alloc i32 [temp_299_ret_of_is_number_124] 
              #                     1183 alloc i1 [temp_300_cmp_124] 
              #                     1189 alloc i32 [temp_301_value_from_ptr_128] 
              #                     1192 alloc i1 [temp_302_cmp_128] 
              #                     1198 alloc i32 [temp_303_value_from_ptr_135] 
              #                     1201 alloc i1 [temp_304_cmp_135] 
              #                     1206 alloc i32 [temp_305_value_from_ptr_149] 
              #                     1209 alloc i1 [temp_306_cmp_149] 
              #                     1214 alloc i32 [temp_307_value_from_ptr_152] 
              #                     1217 alloc ptr->i32 [temp_308_ptr_of_buf_60_152] 
              #                     1219 alloc i32 [temp_309_ele_of_buf_60_152] 
              #                     1222 alloc i1 [temp_310_cmp_152] 
              #                     1227 alloc i32 [temp_311_value_from_ptr_156] 
              #                     1230 alloc i1 [temp_312_cmp_156] 
              #                     1235 alloc i32 [temp_313_value_from_ptr_163] 
              #                     1238 alloc i1 [temp_314_cmp_163] 
              #                     1243 alloc i32 [temp_315_value_from_ptr_170] 
              #                     1246 alloc i1 [temp_316_cmp_170] 
              #                     1251 alloc i32 [temp_317_value_from_ptr_173] 
              #                     1254 alloc ptr->i32 [temp_318_ptr_of_buf_60_173] 
              #                     1256 alloc i32 [temp_319_ele_of_buf_60_173] 
              #                     1259 alloc i32 [temp_320_ret_of_is_number_173] 
              #                     1261 alloc i1 [temp_321_cmp_173] 
              #                     1266 alloc i32 [temp_322_value_from_ptr_166] 
              #                     1269 alloc ptr->i32 [temp_323_ptr_of_buf_60_166] 
              #                     1271 alloc i32 [temp_324_ele_of_buf_60_166] 
              #                     1274 alloc i1 [temp_325_cmp_166] 
              #                     1279 alloc i32 [temp_326_value_from_ptr_159] 
              #                     1282 alloc ptr->i32 [temp_327_ptr_of_buf_60_159] 
              #                     1284 alloc i32 [temp_328_ele_of_buf_60_159] 
              #                     1287 alloc i1 [temp_329_cmp_159] 
              #                     1292 alloc i32 [temp_330_value_from_ptr_138] 
              #                     1295 alloc ptr->i32 [temp_331_ptr_of_buf_60_138] 
              #                     1297 alloc i32 [temp_332_ele_of_buf_60_138] 
              #                     1300 alloc i1 [temp_333_cmp_138] 
              #                     1305 alloc i32 [temp_334_value_from_ptr_142] 
              #                     1308 alloc i1 [temp_335_cmp_142] 
              #                     1313 alloc i32 [temp_336_value_from_ptr_145] 
              #                     1316 alloc ptr->i32 [temp_337_ptr_of_buf_60_145] 
              #                     1318 alloc i32 [temp_338_ele_of_buf_60_145] 
              #                     1321 alloc i32 [temp_339_ret_of_is_number_145] 
              #                     1323 alloc i1 [temp_340_cmp_145] 
              #                     1328 alloc i32 [temp_341_value_from_ptr_131] 
              #                     1331 alloc ptr->i32 [temp_342_ptr_of_buf_60_131] 
              #                     1333 alloc i32 [temp_343_ele_of_buf_60_131] 
              #                     1336 alloc i32 [temp_344_ret_of_is_number_131] 
              #                     1338 alloc i1 [temp_345_cmp_131] 
              #                     1343 alloc i32 [temp_346_value_from_ptr_71] 
              #                     1346 alloc ptr->i32 [temp_347_ptr_of_buf_60_71] 
              #                     1348 alloc i32 [temp_348_ele_of_buf_60_71] 
              #                     1351 alloc i1 [temp_349_cmp_71] 
              #                     1356 alloc i32 [temp_350_value_from_ptr_75] 
              #                     1359 alloc ptr->i32 [temp_351_ptr_of_buf_60_75] 
              #                     1361 alloc i32 [temp_352_ele_of_buf_60_75] 
              #                     1364 alloc i1 [temp_353_cmp_75] 
              #                     1369 alloc i32 [temp_354_value_from_ptr_79] 
              #                     1372 alloc ptr->i32 [temp_355_ptr_of_buf_60_79] 
              #                     1374 alloc i32 [temp_356_ele_of_buf_60_79] 
              #                     1377 alloc i1 [temp_357_cmp_79] 
              #                     1382 alloc i32 [temp_358_value_from_ptr_83] 
              #                     1385 alloc ptr->i32 [temp_359_ptr_of_buf_60_83] 
              #                     1387 alloc i32 [temp_360_ele_of_buf_60_83] 
              #                     1390 alloc i32 [temp_361_ret_of_is_number_83] 
              #                     1392 alloc i1 [temp_362_cmp_83] 
              #                     1397 alloc i32 [temp_363_value_from_ptr_87] 
              #                     1400 alloc ptr->i32 [temp_364_ptr_of_buf_60_87] 
              #                     1402 alloc i32 [temp_365_ele_of_buf_60_87] 
              #                     1405 alloc i1 [temp_366_cmp_87] 
              #                     1410 alloc i32 [temp_367_value_from_ptr_91] 
              #                     1413 alloc ptr->i32 [temp_368_ptr_of_buf_60_91] 
              #                     1415 alloc i32 [temp_369_ele_of_buf_60_91] 
              #                     1418 alloc i1 [temp_370_cmp_91] 
              #                     1423 alloc i32 [temp_371_value_from_ptr_95] 
              #                     1426 alloc ptr->i32 [temp_372_ptr_of_buf_60_95] 
              #                     1428 alloc i32 [temp_373_ele_of_buf_60_95] 
              #                     1431 alloc i1 [temp_374_cmp_95] 
              #                     1436 alloc i32 [temp_375_value_from_ptr_99] 
              #                     1439 alloc ptr->i32 [temp_376_ptr_of_buf_60_99] 
              #                     1441 alloc i32 [temp_377_ele_of_buf_60_99] 
              #                     1444 alloc i1 [temp_378_cmp_99] 
              #                     1449 alloc i32 [temp_379_value_from_ptr_103] 
              #                     1452 alloc ptr->i32 [temp_380_ptr_of_buf_60_103] 
              #                     1454 alloc i32 [temp_381_ele_of_buf_60_103] 
              #                     1457 alloc i1 [temp_382_cmp_103] 
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a1:Freed { symidx: buf_60, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     26    
              #                     529  temp_107_value_from_ptr_63_0 = load *pos_0:ptr->i32 
              #                    occupy a3 with *pos_0
              #                       load label pos as ptr to reg
    la      a3, pos
              #                    occupy reg a3 with *pos_0
              #                    occupy a4 with temp_107_value_from_ptr_63_0
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     530  mu pos_0_10:529 
              #                     532  temp_108_cmp_63_0 = icmp i32 Sge temp_107_value_from_ptr_63_0, len_60_0 
              #                    occupy a4 with temp_107_value_from_ptr_63_0
              #                    occupy a2 with len_60_0
              #                    occupy a5 with temp_108_cmp_63_0
    slt     a5,a4,a2
    xori    a5,a5,1
              #                    free a4
              #                    free a2
              #                    free a5
              #                     1737 untrack temp_107_value_from_ptr_63_0 
              #                    occupy a4 with temp_107_value_from_ptr_63_0
              #                    release a4 with temp_107_value_from_ptr_63_0
              #                     535  br i1 temp_108_cmp_63_0, label branch_true_64, label branch_false_64 
              #                    occupy a5 with temp_108_cmp_63_0
              #                    free a5
              #                    occupy a5 with temp_108_cmp_63_0
    bnez    a5, .branch_true_64
              #                    free a5
    j       .branch_false_64
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a1:Freed { symidx: buf_60, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a5:Freed { symidx: temp_108_cmp_63_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     533  label branch_true_64: 
.branch_true_64:
              #                     1940 untrack temp_192_cmp_316_0 
              #                     1939 untrack temp_40_array_init_ptr_335 
              #                     1938 untrack temp_147_value_from_ptr_337_0 
              #                     1937 untrack temp_190_ptr_of_buf_60_316 
              #                     1936 untrack temp_293_cmp_116_0 
              #                     1935 untrack temp_46_array_init_ptr_310 
              #                     1934 untrack temp_263_cmp_235_0 
              #                     1933 untrack temp_308_ptr_of_buf_60_152 
              #                     1932 untrack temp_131_ele_of_buf_60_374_0 
              #                     1931 untrack temp_173_arithop_353_0 
              #                     1930 untrack temp_85_arithop_168_0 
              #                     1929 untrack temp_362_cmp_83_0 
              #                     1928 untrack temp_72_value_from_ptr_179_0 
              #                     1927 untrack temp_104_ret_of_detect_item_81_0 
              #                     1926 untrack temp_171_ele_of_mFalse_335_353_0 
              #                     1925 untrack temp_267_ptr_of_buf_60_210 
              #                     1924 untrack temp_252_ret_of_detect_item_215_0 
              #                     1923 untrack temp_366_cmp_87_0 
              #                     1922 untrack temp_215_cmp_245_0 
              #                     1921 untrack temp_149_cmp_337_0 
              #                     1920 untrack temp_52_value_from_ptr_242_0 
              #                     1919 untrack temp_206_cmp_324_0 
              #                     1918 untrack temp_325_cmp_166_0 
              #                     1917 untrack temp_153_ptr_of_buf_60_341 
              #                     1916 untrack temp_181_ptr_of_buf_60_357 
              #                     1915 untrack temp_123_ptr_of_buf_60_370 
              #                     1914 untrack temp_289_cmp_112_0 
              #                     1913 untrack temp_55_arithop_242_0 
              #                     1912 untrack temp_235_cmp_303_0 
              #                     1911 untrack temp_378_cmp_99_0 
              #                     1910 untrack temp_273_cmp_193_0 
              #                     1909 untrack temp_311_value_from_ptr_156_0 
              #                     1908 untrack temp_71_arithop_212_0 
              #                     1907 untrack temp_64_value_from_ptr_204_0 
              #                     1906 untrack temp_31_array_init_ptr_364 
              #                     1905 untrack temp_234_ele_of_buf_60_303_0 
              #                     1904 untrack temp_130_ptr_of_buf_60_374 
              #                     1903 untrack temp_145_ele_of_buf_60_382_0 
              #                     1902 untrack temp_211_ptr_of_buf_60_328 
              #                     1901 untrack temp_157_ele_of_mFalse_335_345_0 
              #                     1900 untrack temp_191_ele_of_buf_60_316_0 
              #                     1899 untrack temp_174_ptr_of_buf_60_353 
              #                     1898 untrack temp_224_ret_of_detect_item_268_0 
              #                     1897 untrack temp_167_ptr_of_buf_60_349 
              #                     1896 untrack temp_155_cmp_341_0 
              #                     1895 untrack temp_347_ptr_of_buf_60_71 
              #                     1894 untrack temp_324_ele_of_buf_60_166_0 
              #                     1893 untrack temp_185_arithop_312_0 
              #                     1892 untrack temp_333_cmp_138_0 
              #                     1891 untrack temp_102_ret_of_detect_item_89_0 
              #                     1890 untrack temp_287_ptr_of_buf_60_112 
              #                     1889 untrack temp_34_array_init_ptr_364 
              #                     1888 untrack temp_139_cmp_378_0 
              #                     1887 untrack temp_47_array_init_ptr_310 
              #                     1886 untrack temp_213_cmp_328_0 
              #                     1885 untrack len_60_0 
              #                    occupy a2 with len_60_0
              #                    release a2 with len_60_0
              #                     1884 untrack temp_141_ele_of_mNull_364_382_0 
              #                     1883 untrack temp_205_ele_of_buf_60_324_0 
              #                     1882 untrack temp_323_ptr_of_buf_60_166 
              #                     1881 untrack temp_108_cmp_63_0 
              #                    occupy a5 with temp_108_cmp_63_0
              #                    release a5 with temp_108_cmp_63_0
              #                     1880 untrack temp_276_ele_of_buf_60_197_0 
              #                     1879 untrack temp_168_ele_of_buf_60_349_0 
              #                     1878 untrack temp_176_cmp_353_0 
              #                     1877 untrack temp_353_cmp_75_0 
              #                     1876 untrack temp_288_ele_of_buf_60_112_0 
              #                     1875 untrack temp_36_arithop_364_0 
              #                     1874 untrack temp_251_cmp_207_0 
              #                     1873 untrack temp_117_value_from_ptr_366_0 
              #                     1872 untrack temp_197_ptr_of_buf_60_320 
              #                     1871 untrack temp_248_ele_of_buf_60_248_0 
              #                     1870 untrack temp_161_ele_of_buf_60_345_0 
              #                     1869 untrack temp_146_cmp_382_0 
              #                     1868 untrack temp_134_ele_of_mNull_364_378_0 
              #                     1867 untrack temp_349_cmp_71_0 
              #                     1866 untrack temp_225_cmp_268_0 
              #                     1865 untrack temp_382_cmp_103_0 
              #                     1864 untrack temp_204_ptr_of_buf_60_324 
              #                     1863 untrack temp_44_arithop_335_0 
              #                     1862 untrack temp_314_cmp_163_0 
              #                     1861 untrack temp_75_arithop_179_0 
              #                     1860 untrack temp_259_cmp_231_0 
              #                     1859 untrack temp_127_ele_of_mNull_364_374_0 
              #                     1858 untrack temp_57_arithop_242_0 
              #                     1857 untrack temp_154_ele_of_buf_60_341_0 
              #                     1856 untrack temp_184_value_from_ptr_312_0 
              #                     1855 untrack temp_309_ele_of_buf_60_152_0 
              #                     1854 untrack temp_48_array_init_ptr_310 
              #                     1853 untrack temp_98_ret_of_detect_item_105_0 
              #                     1852 untrack temp_269_cmp_210_0 
              #                     1851 untrack temp_286_value_from_ptr_112_0 
              #                     1850 untrack temp_124_ele_of_buf_60_370_0 
              #                     1849 untrack temp_250_value_from_ptr_207_0 
              #                     1848 untrack temp_81_arithop_154_0 
              #                     1847 untrack temp_182_ele_of_buf_60_357_0 
              #                     1846 untrack temp_125_cmp_370_0 
              #                     1845 untrack temp_199_cmp_320_0 
              #                     1844 untrack temp_137_ptr_of_buf_60_378 
              #                     1843 untrack temp_129_arithop_374_0 
              #                     1842 untrack temp_100_ret_of_detect_item_97_0 
              #                     1841 untrack temp_166_arithop_349_0 
              #                     1840 untrack temp_159_arithop_345_0 
              #                     1839 untrack temp_249_cmp_248_0 
              #                     1838 untrack temp_361_ret_of_is_number_83_0 
              #                     1837 untrack temp_295_cmp_120_0 
              #                     1836 untrack temp_299_ret_of_is_number_124_0 
              #                     1835 untrack temp_115_cmp_333_0 
              #                     1834 untrack temp_63_arithop_250_0 
              #                     1833 untrack temp_230_value_from_ptr_299_0 
              #                     1832 untrack temp_277_cmp_197_0 
              #                     1831 untrack temp_95_arithop_118_0 
              #                     1830 untrack temp_37_array_init_ptr_335 
              #                     1829 untrack temp_253_cmp_215_0 
              #                     1828 untrack temp_51_arithop_310_0 
              #                     1827 untrack temp_370_cmp_91_0 
              #                     1826 untrack temp_106_ret_of_detect_item_73_0 
              #                     1825 untrack temp_65_arithop_204_0 
              #                     1824 untrack temp_231_cmp_299_0 
              #                     1823 untrack temp_175_ele_of_buf_60_353_0 
              #                     1822 untrack temp_258_value_from_ptr_231_0 
              #                     1821 untrack temp_306_cmp_149_0 
              #                     1820 untrack temp_221_ptr_of_buf_60_262 
              #                     1819 untrack temp_101_ret_of_detect_item_93_0 
              #                     1818 untrack buf_60 
              #                    occupy a1 with buf_60
              #                    release a1 with buf_60
              #                     1817 untrack temp_247_ptr_of_buf_60_248 
              #                     1816 untrack temp_188_ele_of_mTrue_310_316_0 
              #                     1815 untrack temp_346_value_from_ptr_71_0 
              #                     1814 untrack temp_132_cmp_374_0 
              #                     1813 untrack temp_214_value_from_ptr_245_0 
              #                     1812 untrack temp_329_cmp_159_0 
              #                     1811 untrack temp_262_ele_of_buf_60_235_0 
              #                     1810 untrack temp_114_cmp_308_0 
              #                     1809 untrack temp_112_cmp_202_0 
              #                     1808 untrack temp_138_ele_of_buf_60_378_0 
              #                     1807 untrack temp_119_cmp_366_0 
              #                     1806 untrack temp_109_cmp_68_0 
              #                     1805 untrack temp_216_ret_of_detect_item_253_0 
              #                     1804 untrack temp_67_arithop_204_0 
              #                     1803 untrack temp_160_ptr_of_buf_60_345 
              #                     1802 untrack temp_219_cmp_258_0 
              #                     1801 untrack temp_38_array_init_ptr_335 
              #                     1800 untrack temp_348_ele_of_buf_60_71_0 
              #                     1799 untrack temp_203_arithop_324_0 
              #                     1798 untrack temp_42_array_init_ptr_335 
              #                     1797 untrack temp_103_ret_of_detect_item_85_0 
              #                     1796 untrack temp_32_array_init_ptr_364 
              #                     1795 untrack temp_208_ele_of_mTrue_310_328_0 
              #                     1794 untrack temp_87_arithop_161_0 
              #                     1793 untrack temp_212_ele_of_buf_60_328_0 
              #                     1792 untrack temp_113_cmp_240_0 
              #                     1791 untrack temp_218_value_from_ptr_258_0 
              #                     1790 untrack temp_118_arithop_366_0 
              #                     1789 untrack temp_233_ptr_of_buf_60_303 
              #                     1788 untrack temp_222_ele_of_buf_60_262_0 
              #                     1787 untrack temp_297_ptr_of_buf_60_124 
              #                     1786 untrack temp_151_ele_of_mFalse_335_341_0 
              #                     1785 untrack temp_99_ret_of_detect_item_101_0 
              #                     1784 untrack temp_105_ret_of_detect_item_77_0 
              #                     1783 untrack temp_39_array_init_ptr_335 
              #                     1782 untrack temp_261_ptr_of_buf_60_235 
              #                     1781 untrack type_60_0 
              #                    occupy a0 with type_60_0
              #                    release a0 with type_60_0
              #                     1780 untrack temp_328_ele_of_buf_60_159_0 
              #                     1779 untrack temp_97_arithop_114_0 
              #                     1778 untrack temp_198_ele_of_buf_60_320_0 
              #                     1777 untrack temp_310_cmp_152_0 
              #                     1776 untrack temp_312_cmp_156_0 
              #                     1775 untrack temp_33_array_init_ptr_364 
              #                     1774 untrack temp_201_ele_of_mTrue_310_324_0 
              #                     1773 untrack temp_162_cmp_345_0 
              #                     1772 untrack temp_331_ptr_of_buf_60_138 
              #                     1771 untrack temp_294_value_from_ptr_120_0 
              #                     1770 untrack temp_136_arithop_378_0 
              #                     1769 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     1768 untrack temp_332_ele_of_buf_60_138_0 
              #                     1767 untrack temp_49_array_init_ptr_310 
              #                     1766 untrack temp_110_cmp_109_0 
              #                     1765 untrack temp_374_cmp_95_0 
              #                     1764 untrack temp_73_arithop_179_0 
              #                     1763 untrack temp_144_ptr_of_buf_60_382 
              #                     1762 untrack temp_121_ele_of_mNull_364_370_0 
              #                     1761 untrack temp_196_arithop_320_0 
              #                     1760 untrack temp_217_cmp_253_0 
              #                     1759 untrack temp_53_arithop_242_0 
              #                     1758 untrack temp_164_ele_of_mFalse_335_349_0 
              #                     1757 untrack temp_327_ptr_of_buf_60_159 
              #                     1756 untrack temp_298_ele_of_buf_60_124_0 
              #                     1755 untrack temp_305_value_from_ptr_149_0 
              #                     1754 untrack temp_183_cmp_357_0 
              #                     1753 untrack temp_313_value_from_ptr_163_0 
              #                     1752 untrack temp_357_cmp_79_0 
              #                     1751 untrack temp_300_cmp_124_0 
              #                     1750 untrack temp_223_cmp_262_0 
              #                     1749 untrack temp_194_ele_of_mTrue_310_320_0 
              #                     1748 untrack temp_111_cmp_177_0 
              #                     1747 untrack temp_30_array_init_ptr_364 
              #                     1746 untrack temp_89_arithop_140_0 
              #                     1745 untrack temp_275_ptr_of_buf_60_197 
              #                     1744 untrack temp_186_cmp_312_0 
              #                     1743 untrack temp_41_array_init_ptr_335 
              #                     1742 untrack temp_116_cmp_362_0 
              #                     1741 untrack temp_45_array_init_ptr_310 
              #                     1740 untrack temp_169_cmp_349_0 
              #                     1739 untrack temp_148_arithop_337_0 
              #                     1738 untrack temp_268_ele_of_buf_60_210_0 
              #                     1524 mu pos_0_10:527 
              #                     527  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a1:Freed { symidx: buf_60, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a5:Freed { symidx: temp_108_cmp_63_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     534  label branch_false_64: 
.branch_false_64:
              #                     1941 untrack temp_108_cmp_63_0 
              #                    occupy a5 with temp_108_cmp_63_0
              #                    release a5 with temp_108_cmp_63_0
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a1:Freed { symidx: buf_60, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     148   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with type_60_0
              #                    store to type_60_0 in mem offset legal
    sw      a0,1532(sp)
              #                    release a0 with type_60_0
              #                    occupy a1 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a1,1512(sp)
              #                    release a1 with buf_60
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1525 mu pos_0_10:148 
              #                     1526 pos_0_11 = chi pos_0_10:148 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     537  temp_109_cmp_68_0 = icmp i32 Eq type_60_0, 0_0 
              #                    occupy a0 with type_60_0
              #                    load from type_60_0 in mem


    lw      a0,1532(sp)
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_109_cmp_68_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     540  br i1 temp_109_cmp_68_0, label branch_true_69, label branch_false_69 
              #                    occupy a2 with temp_109_cmp_68_0
              #                    free a2
              #                    occupy a2 with temp_109_cmp_68_0
    bnez    a2, .branch_true_69
              #                    free a2
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_109_cmp_68_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     538  label branch_true_69: 
.branch_true_69:
              #                     2119 untrack temp_153_ptr_of_buf_60_341 
              #                     2118 untrack temp_277_cmp_197_0 
              #                     2117 untrack temp_205_ele_of_buf_60_324_0 
              #                     2116 untrack temp_275_ptr_of_buf_60_197 
              #                     2115 untrack temp_188_ele_of_mTrue_310_316_0 
              #                     2114 untrack temp_250_value_from_ptr_207_0 
              #                     2113 untrack temp_112_cmp_202_0 
              #                     2112 untrack temp_299_ret_of_is_number_124_0 
              #                     2111 untrack temp_139_cmp_378_0 
              #                     2110 untrack temp_184_value_from_ptr_312_0 
              #                     2109 untrack temp_230_value_from_ptr_299_0 
              #                     2108 untrack temp_31_array_init_ptr_364 
              #                     2107 untrack temp_53_arithop_242_0 
              #                     2106 untrack temp_159_arithop_345_0 
              #                     2105 untrack temp_327_ptr_of_buf_60_159 
              #                     2104 untrack temp_175_ele_of_buf_60_353_0 
              #                     2103 untrack temp_72_value_from_ptr_179_0 
              #                     2102 untrack temp_138_ele_of_buf_60_378_0 
              #                     2101 untrack temp_129_arithop_374_0 
              #                     2100 untrack temp_48_array_init_ptr_310 
              #                     2099 untrack temp_109_cmp_68_0 
              #                    occupy a2 with temp_109_cmp_68_0
              #                    release a2 with temp_109_cmp_68_0
              #                     2098 untrack temp_211_ptr_of_buf_60_328 
              #                     2097 untrack temp_164_ele_of_mFalse_335_349_0 
              #                     2096 untrack temp_269_cmp_210_0 
              #                     2095 untrack temp_154_ele_of_buf_60_341_0 
              #                     2094 untrack temp_147_value_from_ptr_337_0 
              #                     2093 untrack temp_119_cmp_366_0 
              #                     2092 untrack temp_224_ret_of_detect_item_268_0 
              #                     2091 untrack temp_212_ele_of_buf_60_328_0 
              #                     2090 untrack temp_141_ele_of_mNull_364_382_0 
              #                     2089 untrack temp_295_cmp_120_0 
              #                     2088 untrack temp_81_arithop_154_0 
              #                     2087 untrack temp_258_value_from_ptr_231_0 
              #                     2086 untrack temp_151_ele_of_mFalse_335_341_0 
              #                     2085 untrack temp_149_cmp_337_0 
              #                     2084 untrack temp_49_array_init_ptr_310 
              #                     2083 untrack temp_197_ptr_of_buf_60_320 
              #                     2082 untrack temp_313_value_from_ptr_163_0 
              #                     2081 untrack temp_203_arithop_324_0 
              #                     2080 untrack temp_87_arithop_161_0 
              #                     2079 untrack temp_121_ele_of_mNull_364_370_0 
              #                     2078 untrack temp_183_cmp_357_0 
              #                     2077 untrack temp_325_cmp_166_0 
              #                     2076 untrack temp_268_ele_of_buf_60_210_0 
              #                     2075 untrack temp_117_value_from_ptr_366_0 
              #                     2074 untrack temp_34_array_init_ptr_364 
              #                     2073 untrack temp_192_cmp_316_0 
              #                     2072 untrack temp_64_value_from_ptr_204_0 
              #                     2071 untrack temp_67_arithop_204_0 
              #                     2070 untrack temp_131_ele_of_buf_60_374_0 
              #                     2069 untrack temp_314_cmp_163_0 
              #                     2068 untrack temp_115_cmp_333_0 
              #                     2067 untrack temp_293_cmp_116_0 
              #                     2066 untrack temp_286_value_from_ptr_112_0 
              #                     2065 untrack temp_190_ptr_of_buf_60_316 
              #                     2064 untrack temp_199_cmp_320_0 
              #                     2063 untrack temp_223_cmp_262_0 
              #                     2062 untrack temp_221_ptr_of_buf_60_262 
              #                     2061 untrack temp_97_arithop_114_0 
              #                     2060 untrack temp_169_cmp_349_0 
              #                     2059 untrack temp_311_value_from_ptr_156_0 
              #                     2058 untrack temp_145_ele_of_buf_60_382_0 
              #                     2057 untrack temp_148_arithop_337_0 
              #                     2056 untrack temp_308_ptr_of_buf_60_152 
              #                     2055 untrack temp_214_value_from_ptr_245_0 
              #                     2054 untrack temp_176_cmp_353_0 
              #                     2053 untrack temp_328_ele_of_buf_60_159_0 
              #                     2052 untrack temp_310_cmp_152_0 
              #                     2051 untrack temp_234_ele_of_buf_60_303_0 
              #                     2050 untrack temp_287_ptr_of_buf_60_112 
              #                     2049 untrack temp_110_cmp_109_0 
              #                     2048 untrack temp_182_ele_of_buf_60_357_0 
              #                     2047 untrack temp_294_value_from_ptr_120_0 
              #                     2046 untrack temp_249_cmp_248_0 
              #                     2045 untrack temp_276_ele_of_buf_60_197_0 
              #                     2044 untrack temp_124_ele_of_buf_60_370_0 
              #                     2043 untrack temp_191_ele_of_buf_60_316_0 
              #                     2042 untrack temp_331_ptr_of_buf_60_138 
              #                     2041 untrack temp_263_cmp_235_0 
              #                     2040 untrack temp_259_cmp_231_0 
              #                     2039 untrack temp_323_ptr_of_buf_60_166 
              #                     2038 untrack temp_57_arithop_242_0 
              #                     2037 untrack temp_324_ele_of_buf_60_166_0 
              #                     2036 untrack temp_297_ptr_of_buf_60_124 
              #                     2035 untrack temp_218_value_from_ptr_258_0 
              #                     2034 untrack temp_71_arithop_212_0 
              #                     2033 untrack temp_262_ele_of_buf_60_235_0 
              #                     2032 untrack temp_46_array_init_ptr_310 
              #                     2031 untrack temp_118_arithop_366_0 
              #                     2030 untrack temp_125_cmp_370_0 
              #                     2029 untrack temp_47_array_init_ptr_310 
              #                     2028 untrack temp_168_ele_of_buf_60_349_0 
              #                     2027 untrack temp_185_arithop_312_0 
              #                     2026 untrack temp_63_arithop_250_0 
              #                     2025 untrack temp_222_ele_of_buf_60_262_0 
              #                     2024 untrack temp_52_value_from_ptr_242_0 
              #                     2023 untrack temp_201_ele_of_mTrue_310_324_0 
              #                     2022 untrack temp_137_ptr_of_buf_60_378 
              #                     2021 untrack temp_45_array_init_ptr_310 
              #                     2020 untrack temp_261_ptr_of_buf_60_235 
              #                     2019 untrack temp_333_cmp_138_0 
              #                     2018 untrack temp_215_cmp_245_0 
              #                     2017 untrack temp_206_cmp_324_0 
              #                     2016 untrack temp_171_ele_of_mFalse_335_353_0 
              #                     2015 untrack temp_186_cmp_312_0 
              #                     2014 untrack temp_113_cmp_240_0 
              #                     2013 untrack temp_267_ptr_of_buf_60_210 
              #                     2012 untrack temp_273_cmp_193_0 
              #                     2011 untrack temp_253_cmp_215_0 
              #                     2010 untrack temp_298_ele_of_buf_60_124_0 
              #                     2009 untrack temp_198_ele_of_buf_60_320_0 
              #                     2008 untrack temp_213_cmp_328_0 
              #                     2007 untrack temp_251_cmp_207_0 
              #                     2006 untrack temp_41_array_init_ptr_335 
              #                     2005 untrack temp_155_cmp_341_0 
              #                     2004 untrack temp_39_array_init_ptr_335 
              #                     2003 untrack temp_312_cmp_156_0 
              #                     2002 untrack temp_247_ptr_of_buf_60_248 
              #                     2001 untrack temp_51_arithop_310_0 
              #                     2000 untrack temp_37_array_init_ptr_335 
              #                     1999 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     1998 untrack temp_146_cmp_382_0 
              #                     1997 untrack temp_233_ptr_of_buf_60_303 
              #                     1996 untrack temp_196_arithop_320_0 
              #                     1995 untrack temp_329_cmp_159_0 
              #                     1994 untrack temp_216_ret_of_detect_item_253_0 
              #                     1993 untrack temp_157_ele_of_mFalse_335_345_0 
              #                     1992 untrack temp_36_arithop_364_0 
              #                     1991 untrack temp_225_cmp_268_0 
              #                     1990 untrack type_60_0 
              #                    occupy a0 with type_60_0
              #                    release a0 with type_60_0
              #                     1989 untrack temp_248_ele_of_buf_60_248_0 
              #                     1988 untrack temp_40_array_init_ptr_335 
              #                     1987 untrack temp_33_array_init_ptr_364 
              #                     1986 untrack temp_181_ptr_of_buf_60_357 
              #                     1985 untrack temp_162_cmp_345_0 
              #                     1984 untrack temp_32_array_init_ptr_364 
              #                     1983 untrack temp_161_ele_of_buf_60_345_0 
              #                     1982 untrack temp_144_ptr_of_buf_60_382 
              #                     1981 untrack temp_204_ptr_of_buf_60_324 
              #                     1980 untrack temp_134_ele_of_mNull_364_378_0 
              #                     1979 untrack temp_42_array_init_ptr_335 
              #                     1978 untrack temp_114_cmp_308_0 
              #                     1977 untrack temp_44_arithop_335_0 
              #                     1976 untrack temp_332_ele_of_buf_60_138_0 
              #                     1975 untrack temp_289_cmp_112_0 
              #                     1974 untrack temp_194_ele_of_mTrue_310_320_0 
              #                     1973 untrack temp_309_ele_of_buf_60_152_0 
              #                     1972 untrack temp_166_arithop_349_0 
              #                     1971 untrack temp_235_cmp_303_0 
              #                     1970 untrack temp_123_ptr_of_buf_60_370 
              #                     1969 untrack temp_116_cmp_362_0 
              #                     1968 untrack temp_127_ele_of_mNull_364_374_0 
              #                     1967 untrack temp_306_cmp_149_0 
              #                     1966 untrack temp_252_ret_of_detect_item_215_0 
              #                     1965 untrack temp_65_arithop_204_0 
              #                     1964 untrack temp_219_cmp_258_0 
              #                     1963 untrack temp_173_arithop_353_0 
              #                     1962 untrack temp_30_array_init_ptr_364 
              #                     1961 untrack temp_89_arithop_140_0 
              #                     1960 untrack temp_305_value_from_ptr_149_0 
              #                     1959 untrack temp_300_cmp_124_0 
              #                     1958 untrack temp_174_ptr_of_buf_60_353 
              #                     1957 untrack temp_288_ele_of_buf_60_112_0 
              #                     1956 untrack temp_75_arithop_179_0 
              #                     1955 untrack temp_38_array_init_ptr_335 
              #                     1954 untrack temp_95_arithop_118_0 
              #                     1953 untrack temp_130_ptr_of_buf_60_374 
              #                     1952 untrack temp_55_arithop_242_0 
              #                     1951 untrack temp_111_cmp_177_0 
              #                     1950 untrack temp_160_ptr_of_buf_60_345 
              #                     1949 untrack temp_136_arithop_378_0 
              #                     1948 untrack temp_208_ele_of_mTrue_310_328_0 
              #                     1947 untrack temp_217_cmp_253_0 
              #                     1946 untrack temp_231_cmp_299_0 
              #                     1945 untrack temp_167_ptr_of_buf_60_349 
              #                     1944 untrack temp_132_cmp_374_0 
              #                     1943 untrack temp_85_arithop_168_0 
              #                     1942 untrack temp_73_arithop_179_0 
              #                     1344 temp_346_value_from_ptr_71_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_346_value_from_ptr_71_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     1345 mu pos_0_11:1344 
              #                     1347 temp_347_ptr_of_buf_60_71 = GEP buf_60:Array:i32:[None] [Some(temp_346_value_from_ptr_71_0)] 
              #                    occupy a2 with temp_347_ptr_of_buf_60_71
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_346_value_from_ptr_71_0
    mv      a3, a1
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with buf_60
              #                    load from buf_60 in mem
    ld      a4,1512(sp)
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     2143 untrack temp_346_value_from_ptr_71_0 
              #                    occupy a1 with temp_346_value_from_ptr_71_0
              #                    release a1 with temp_346_value_from_ptr_71_0
              #                     1349 temp_348_ele_of_buf_60_71_0 = load temp_347_ptr_of_buf_60_71:ptr->i32 
              #                    occupy a2 with temp_347_ptr_of_buf_60_71
              #                    occupy a1 with temp_348_ele_of_buf_60_71_0
    lw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     2144 untrack temp_347_ptr_of_buf_60_71 
              #                    occupy a2 with temp_347_ptr_of_buf_60_71
              #                    release a2 with temp_347_ptr_of_buf_60_71
              #                     1350 mu buf_60:1349 
              #                     1352 temp_349_cmp_71_0 = icmp i32 Eq temp_348_ele_of_buf_60_71_0, 123_0 
              #                    occupy a1 with temp_348_ele_of_buf_60_71_0
              #                    occupy a2 with 123_0
    li      a2, 123
              #                    occupy a5 with temp_349_cmp_71_0
    xor     a5,a1,a2
    seqz    a5, a5
              #                    free a1
              #                    free a2
              #                    free a5
              #                     1355 br i1 temp_349_cmp_71_0, label branch_true_72, label branch_false_72 
              #                    occupy a5 with temp_349_cmp_71_0
              #                    free a5
              #                    occupy a5 with temp_349_cmp_71_0
    bnez    a5, .branch_true_72
              #                    free a5
    j       .branch_false_72
              #                    regtab     a1:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |     a5:Freed { symidx: temp_349_cmp_71_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     1353 label branch_true_72: 
.branch_true_72:
              #                     2163 untrack temp_357_cmp_79_0 
              #                     2162 untrack temp_374_cmp_95_0 
              #                     2161 untrack temp_378_cmp_99_0 
              #                     2160 untrack temp_353_cmp_75_0 
              #                     2159 untrack temp_370_cmp_91_0 
              #                     2158 untrack temp_99_ret_of_detect_item_101_0 
              #                     2157 untrack temp_101_ret_of_detect_item_93_0 
              #                     2156 untrack temp_102_ret_of_detect_item_89_0 
              #                     2155 untrack temp_98_ret_of_detect_item_105_0 
              #                     2154 untrack temp_382_cmp_103_0 
              #                     2153 untrack temp_103_ret_of_detect_item_85_0 
              #                     2152 untrack temp_105_ret_of_detect_item_77_0 
              #                     2151 untrack temp_361_ret_of_is_number_83_0 
              #                     2150 untrack temp_348_ele_of_buf_60_71_0 
              #                    occupy a1 with temp_348_ele_of_buf_60_71_0
              #                    release a1 with temp_348_ele_of_buf_60_71_0
              #                     2149 untrack temp_366_cmp_87_0 
              #                     2148 untrack temp_362_cmp_83_0 
              #                     2147 untrack temp_349_cmp_71_0 
              #                    occupy a5 with temp_349_cmp_71_0
              #                    release a5 with temp_349_cmp_71_0
              #                     2146 untrack temp_104_ret_of_detect_item_81_0 
              #                     2145 untrack temp_100_ret_of_detect_item_97_0 
              #                     524  temp_106_ret_of_detect_item_73_0 =  Call i32 detect_item_0(4_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a4 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a4,1512(sp)
              #                    release a4 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     2167 untrack len_60_0 
              #                     2166 untrack buf_60 
              #                     1527 mu pos_0_11:524 
              #                     1528 pos_0_12 = chi pos_0_11:524 
              #                     1529 mu pos_0_12:525 
              #                     525  ret temp_106_ret_of_detect_item_73_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with temp_106_ret_of_detect_item_73_0
              #                    store to temp_106_ret_of_detect_item_73_0 in mem offset legal
    sw      a0,1168(sp)
              #                    release a0 with temp_106_ret_of_detect_item_73_0
              #                    occupy a0 with temp_106_ret_of_detect_item_73_0
              #                    load from temp_106_ret_of_detect_item_73_0 in mem


    lw      a0,1168(sp)
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |     a5:Freed { symidx: temp_349_cmp_71_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     1354 label branch_false_72: 
.branch_false_72:
              #                     2165 untrack temp_106_ret_of_detect_item_73_0 
              #                     2164 untrack temp_349_cmp_71_0 
              #                    occupy a5 with temp_349_cmp_71_0
              #                    release a5 with temp_349_cmp_71_0
              #                     1357 (nop) 
              #                     1358 mu pos_0_11:1357 
              #                     1360 (nop) 
              #                     1362 (nop) 
              #                     1363 mu buf_60:1362 
              #                     1365 temp_353_cmp_75_0 = icmp i32 Eq temp_348_ele_of_buf_60_71_0, 91_0 
              #                    occupy a1 with temp_348_ele_of_buf_60_71_0
              #                    occupy a0 with 91_0
    li      a0, 91
              #                    occupy a2 with temp_353_cmp_75_0
    xor     a2,a1,a0
    seqz    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1368 br i1 temp_353_cmp_75_0, label branch_true_76, label branch_false_76 
              #                    occupy a2 with temp_353_cmp_75_0
              #                    free a2
              #                    occupy a2 with temp_353_cmp_75_0
    bnez    a2, .branch_true_76
              #                    free a2
    j       .branch_false_76
              #                    regtab     a1:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a2:Freed { symidx: temp_353_cmp_75_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     1366 label branch_true_76: 
.branch_true_76:
              #                     2184 untrack temp_104_ret_of_detect_item_81_0 
              #                     2183 untrack temp_353_cmp_75_0 
              #                    occupy a2 with temp_353_cmp_75_0
              #                    release a2 with temp_353_cmp_75_0
              #                     2182 untrack temp_98_ret_of_detect_item_105_0 
              #                     2181 untrack temp_102_ret_of_detect_item_89_0 
              #                     2180 untrack temp_362_cmp_83_0 
              #                     2179 untrack temp_366_cmp_87_0 
              #                     2178 untrack temp_100_ret_of_detect_item_97_0 
              #                     2177 untrack temp_357_cmp_79_0 
              #                     2176 untrack temp_103_ret_of_detect_item_85_0 
              #                     2175 untrack temp_101_ret_of_detect_item_93_0 
              #                     2174 untrack temp_348_ele_of_buf_60_71_0 
              #                    occupy a1 with temp_348_ele_of_buf_60_71_0
              #                    release a1 with temp_348_ele_of_buf_60_71_0
              #                     2173 untrack temp_382_cmp_103_0 
              #                     2172 untrack temp_361_ret_of_is_number_83_0 
              #                     2171 untrack temp_370_cmp_91_0 
              #                     2170 untrack temp_378_cmp_99_0 
              #                     2169 untrack temp_374_cmp_95_0 
              #                     2168 untrack temp_99_ret_of_detect_item_101_0 
              #                     520  temp_105_ret_of_detect_item_77_0 =  Call i32 detect_item_0(3_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a4 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a4,1512(sp)
              #                    release a4 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     2188 untrack len_60_0 
              #                     2187 untrack buf_60 
              #                     1530 mu pos_0_11:520 
              #                     1531 pos_0_13 = chi pos_0_11:520 
              #                     1532 mu pos_0_13:521 
              #                     521  ret temp_105_ret_of_detect_item_77_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with temp_105_ret_of_detect_item_77_0
              #                    store to temp_105_ret_of_detect_item_77_0 in mem offset legal
    sw      a0,1172(sp)
              #                    release a0 with temp_105_ret_of_detect_item_77_0
              #                    occupy a0 with temp_105_ret_of_detect_item_77_0
              #                    load from temp_105_ret_of_detect_item_77_0 in mem


    lw      a0,1172(sp)
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a2:Freed { symidx: temp_353_cmp_75_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     1367 label branch_false_76: 
.branch_false_76:
              #                     2186 untrack temp_353_cmp_75_0 
              #                    occupy a2 with temp_353_cmp_75_0
              #                    release a2 with temp_353_cmp_75_0
              #                     2185 untrack temp_105_ret_of_detect_item_77_0 
              #                     1370 (nop) 
              #                     1371 mu pos_0_11:1370 
              #                     1373 (nop) 
              #                     1375 (nop) 
              #                     1376 mu buf_60:1375 
              #                     1378 temp_357_cmp_79_0 = icmp i32 Eq temp_348_ele_of_buf_60_71_0, 34_0 
              #                    occupy a1 with temp_348_ele_of_buf_60_71_0
              #                    occupy a0 with 34_0
    li      a0, 34
              #                    occupy a2 with temp_357_cmp_79_0
    xor     a2,a1,a0
    seqz    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1381 br i1 temp_357_cmp_79_0, label branch_true_80, label branch_false_80 
              #                    occupy a2 with temp_357_cmp_79_0
              #                    free a2
              #                    occupy a2 with temp_357_cmp_79_0
    bnez    a2, .branch_true_80
              #                    free a2
    j       .branch_false_80
              #                    regtab     a1:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a2:Freed { symidx: temp_357_cmp_79_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1379 label branch_true_80: 
.branch_true_80:
              #                     2203 untrack temp_382_cmp_103_0 
              #                     2202 untrack temp_374_cmp_95_0 
              #                     2201 untrack temp_366_cmp_87_0 
              #                     2200 untrack temp_378_cmp_99_0 
              #                     2199 untrack temp_99_ret_of_detect_item_101_0 
              #                     2198 untrack temp_361_ret_of_is_number_83_0 
              #                     2197 untrack temp_100_ret_of_detect_item_97_0 
              #                     2196 untrack temp_357_cmp_79_0 
              #                    occupy a2 with temp_357_cmp_79_0
              #                    release a2 with temp_357_cmp_79_0
              #                     2195 untrack temp_103_ret_of_detect_item_85_0 
              #                     2194 untrack temp_102_ret_of_detect_item_89_0 
              #                     2193 untrack temp_362_cmp_83_0 
              #                     2192 untrack temp_370_cmp_91_0 
              #                     2191 untrack temp_98_ret_of_detect_item_105_0 
              #                     2190 untrack temp_101_ret_of_detect_item_93_0 
              #                     2189 untrack temp_348_ele_of_buf_60_71_0 
              #                    occupy a1 with temp_348_ele_of_buf_60_71_0
              #                    release a1 with temp_348_ele_of_buf_60_71_0
              #                     516  temp_104_ret_of_detect_item_81_0 =  Call i32 detect_item_0(2_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a4 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a4,1512(sp)
              #                    release a4 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     2207 untrack len_60_0 
              #                     2206 untrack buf_60 
              #                     1533 mu pos_0_11:516 
              #                     1534 pos_0_14 = chi pos_0_11:516 
              #                     1535 mu pos_0_14:517 
              #                     517  ret temp_104_ret_of_detect_item_81_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with temp_104_ret_of_detect_item_81_0
              #                    store to temp_104_ret_of_detect_item_81_0 in mem offset legal
    sw      a0,1176(sp)
              #                    release a0 with temp_104_ret_of_detect_item_81_0
              #                    occupy a0 with temp_104_ret_of_detect_item_81_0
              #                    load from temp_104_ret_of_detect_item_81_0 in mem


    lw      a0,1176(sp)
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a2:Freed { symidx: temp_357_cmp_79_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1380 label branch_false_80: 
.branch_false_80:
              #                     2205 untrack temp_357_cmp_79_0 
              #                    occupy a2 with temp_357_cmp_79_0
              #                    release a2 with temp_357_cmp_79_0
              #                     2204 untrack temp_104_ret_of_detect_item_81_0 
              #                     1383 (nop) 
              #                     1384 mu pos_0_11:1383 
              #                     1386 (nop) 
              #                     1388 (nop) 
              #                     1389 mu buf_60:1388 
              #                     1391 temp_361_ret_of_is_number_83_0 =  Call i32 is_number_0(temp_348_ele_of_buf_60_71_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_348_ele_of_buf_60_71_0
              #                    store to temp_348_ele_of_buf_60_71_0 in mem offset legal
    sw      a1,132(sp)
              #                    release a1 with temp_348_ele_of_buf_60_71_0
              #                    occupy a4 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a4,1512(sp)
              #                    release a4 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_348_ele_of_buf_60_71_0_0
              #                    load from temp_348_ele_of_buf_60_71_0 in mem


    lw      a0,132(sp)
              #                    arg load ended


    call    is_number
              #                     1393 temp_362_cmp_83_0 = icmp i32 Eq temp_361_ret_of_is_number_83_0, 1_0 
              #                    occupy a0 with temp_361_ret_of_is_number_83_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_362_cmp_83_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2208 untrack temp_361_ret_of_is_number_83_0 
              #                    occupy a0 with temp_361_ret_of_is_number_83_0
              #                    release a0 with temp_361_ret_of_is_number_83_0
              #                     1396 br i1 temp_362_cmp_83_0, label branch_true_84, label branch_false_84 
              #                    occupy a2 with temp_362_cmp_83_0
              #                    free a2
              #                    occupy a2 with temp_362_cmp_83_0
    bnez    a2, .branch_true_84
              #                    free a2
    j       .branch_false_84
              #                    regtab     a2:Freed { symidx: temp_362_cmp_83_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     1394 label branch_true_84: 
.branch_true_84:
              #                     2220 untrack temp_100_ret_of_detect_item_97_0 
              #                     2219 untrack temp_99_ret_of_detect_item_101_0 
              #                     2218 untrack temp_374_cmp_95_0 
              #                     2217 untrack temp_362_cmp_83_0 
              #                    occupy a2 with temp_362_cmp_83_0
              #                    release a2 with temp_362_cmp_83_0
              #                     2216 untrack temp_366_cmp_87_0 
              #                     2215 untrack temp_348_ele_of_buf_60_71_0 
              #                     2214 untrack temp_101_ret_of_detect_item_93_0 
              #                     2213 untrack temp_378_cmp_99_0 
              #                     2212 untrack temp_98_ret_of_detect_item_105_0 
              #                     2211 untrack temp_370_cmp_91_0 
              #                     2210 untrack temp_102_ret_of_detect_item_89_0 
              #                     2209 untrack temp_382_cmp_103_0 
              #                     512  temp_103_ret_of_detect_item_85_0 =  Call i32 detect_item_0(1_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     2224 untrack len_60_0 
              #                     2223 untrack buf_60 
              #                     1536 mu pos_0_11:512 
              #                     1537 pos_0_15 = chi pos_0_11:512 
              #                     1538 mu pos_0_15:513 
              #                     513  ret temp_103_ret_of_detect_item_85_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with temp_103_ret_of_detect_item_85_0
              #                    store to temp_103_ret_of_detect_item_85_0 in mem offset legal
    sw      a0,1180(sp)
              #                    release a0 with temp_103_ret_of_detect_item_85_0
              #                    occupy a0 with temp_103_ret_of_detect_item_85_0
              #                    load from temp_103_ret_of_detect_item_85_0 in mem


    lw      a0,1180(sp)
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_362_cmp_83_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     1395 label branch_false_84: 
.branch_false_84:
              #                     2222 untrack temp_362_cmp_83_0 
              #                    occupy a2 with temp_362_cmp_83_0
              #                    release a2 with temp_362_cmp_83_0
              #                     2221 untrack temp_103_ret_of_detect_item_85_0 
              #                     1398 (nop) 
              #                     1399 mu pos_0_11:1398 
              #                     1401 (nop) 
              #                     1403 (nop) 
              #                     1404 mu buf_60:1403 
              #                     1406 temp_366_cmp_87_0 = icmp i32 Eq temp_348_ele_of_buf_60_71_0, 43_0 
              #                    occupy a0 with temp_348_ele_of_buf_60_71_0
              #                    load from temp_348_ele_of_buf_60_71_0 in mem


    lw      a0,132(sp)
              #                    occupy a1 with 43_0
    li      a1, 43
              #                    occupy a2 with temp_366_cmp_87_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1409 br i1 temp_366_cmp_87_0, label branch_true_88, label branch_false_88 
              #                    occupy a2 with temp_366_cmp_87_0
              #                    free a2
              #                    occupy a2 with temp_366_cmp_87_0
    bnez    a2, .branch_true_88
              #                    free a2
    j       .branch_false_88
              #                    regtab     a0:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a2:Freed { symidx: temp_366_cmp_87_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     1407 label branch_true_88: 
.branch_true_88:
              #                     2234 untrack temp_99_ret_of_detect_item_101_0 
              #                     2233 untrack temp_100_ret_of_detect_item_97_0 
              #                     2232 untrack temp_382_cmp_103_0 
              #                     2231 untrack temp_374_cmp_95_0 
              #                     2230 untrack temp_366_cmp_87_0 
              #                    occupy a2 with temp_366_cmp_87_0
              #                    release a2 with temp_366_cmp_87_0
              #                     2229 untrack temp_98_ret_of_detect_item_105_0 
              #                     2228 untrack temp_101_ret_of_detect_item_93_0 
              #                     2227 untrack temp_378_cmp_99_0 
              #                     2226 untrack temp_348_ele_of_buf_60_71_0 
              #                    occupy a0 with temp_348_ele_of_buf_60_71_0
              #                    release a0 with temp_348_ele_of_buf_60_71_0
              #                     2225 untrack temp_370_cmp_91_0 
              #                     508  temp_102_ret_of_detect_item_89_0 =  Call i32 detect_item_0(1_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     2238 untrack len_60_0 
              #                     2237 untrack buf_60 
              #                     1539 mu pos_0_11:508 
              #                     1540 pos_0_16 = chi pos_0_11:508 
              #                     1541 mu pos_0_16:509 
              #                     509  ret temp_102_ret_of_detect_item_89_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with temp_102_ret_of_detect_item_89_0
              #                    store to temp_102_ret_of_detect_item_89_0 in mem offset legal
    sw      a0,1184(sp)
              #                    release a0 with temp_102_ret_of_detect_item_89_0
              #                    occupy a0 with temp_102_ret_of_detect_item_89_0
              #                    load from temp_102_ret_of_detect_item_89_0 in mem


    lw      a0,1184(sp)
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a2:Freed { symidx: temp_366_cmp_87_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     1408 label branch_false_88: 
.branch_false_88:
              #                     2236 untrack temp_102_ret_of_detect_item_89_0 
              #                     2235 untrack temp_366_cmp_87_0 
              #                    occupy a2 with temp_366_cmp_87_0
              #                    release a2 with temp_366_cmp_87_0
              #                     1411 (nop) 
              #                     1412 mu pos_0_11:1411 
              #                     1414 (nop) 
              #                     1416 (nop) 
              #                     1417 mu buf_60:1416 
              #                     1419 temp_370_cmp_91_0 = icmp i32 Eq temp_348_ele_of_buf_60_71_0, 45_0 
              #                    occupy a0 with temp_348_ele_of_buf_60_71_0
              #                    occupy a1 with 45_0
    li      a1, 45
              #                    occupy a2 with temp_370_cmp_91_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1422 br i1 temp_370_cmp_91_0, label branch_true_92, label branch_false_92 
              #                    occupy a2 with temp_370_cmp_91_0
              #                    free a2
              #                    occupy a2 with temp_370_cmp_91_0
    bnez    a2, .branch_true_92
              #                    free a2
    j       .branch_false_92
              #                    regtab     a0:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a2:Freed { symidx: temp_370_cmp_91_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     1420 label branch_true_92: 
.branch_true_92:
              #                     2246 untrack temp_100_ret_of_detect_item_97_0 
              #                     2245 untrack temp_374_cmp_95_0 
              #                     2244 untrack temp_370_cmp_91_0 
              #                    occupy a2 with temp_370_cmp_91_0
              #                    release a2 with temp_370_cmp_91_0
              #                     2243 untrack temp_378_cmp_99_0 
              #                     2242 untrack temp_99_ret_of_detect_item_101_0 
              #                     2241 untrack temp_382_cmp_103_0 
              #                     2240 untrack temp_348_ele_of_buf_60_71_0 
              #                    occupy a0 with temp_348_ele_of_buf_60_71_0
              #                    release a0 with temp_348_ele_of_buf_60_71_0
              #                     2239 untrack temp_98_ret_of_detect_item_105_0 
              #                     504  temp_101_ret_of_detect_item_93_0 =  Call i32 detect_item_0(1_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     2250 untrack len_60_0 
              #                     2249 untrack buf_60 
              #                     1542 mu pos_0_11:504 
              #                     1543 pos_0_17 = chi pos_0_11:504 
              #                     1544 mu pos_0_17:505 
              #                     505  ret temp_101_ret_of_detect_item_93_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with temp_101_ret_of_detect_item_93_0
              #                    store to temp_101_ret_of_detect_item_93_0 in mem offset legal
    sw      a0,1188(sp)
              #                    release a0 with temp_101_ret_of_detect_item_93_0
              #                    occupy a0 with temp_101_ret_of_detect_item_93_0
              #                    load from temp_101_ret_of_detect_item_93_0 in mem


    lw      a0,1188(sp)
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a2:Freed { symidx: temp_370_cmp_91_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     1421 label branch_false_92: 
.branch_false_92:
              #                     2248 untrack temp_370_cmp_91_0 
              #                    occupy a2 with temp_370_cmp_91_0
              #                    release a2 with temp_370_cmp_91_0
              #                     2247 untrack temp_101_ret_of_detect_item_93_0 
              #                     1424 (nop) 
              #                     1425 mu pos_0_11:1424 
              #                     1427 (nop) 
              #                     1429 (nop) 
              #                     1430 mu buf_60:1429 
              #                     1432 temp_374_cmp_95_0 = icmp i32 Eq temp_348_ele_of_buf_60_71_0, 116_0 
              #                    occupy a0 with temp_348_ele_of_buf_60_71_0
              #                    occupy a1 with 116_0
    li      a1, 116
              #                    occupy a2 with temp_374_cmp_95_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1435 br i1 temp_374_cmp_95_0, label branch_true_96, label branch_false_96 
              #                    occupy a2 with temp_374_cmp_95_0
              #                    free a2
              #                    occupy a2 with temp_374_cmp_95_0
    bnez    a2, .branch_true_96
              #                    free a2
    j       .branch_false_96
              #                    regtab     a0:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a2:Freed { symidx: temp_374_cmp_95_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     1433 label branch_true_96: 
.branch_true_96:
              #                     2256 untrack temp_98_ret_of_detect_item_105_0 
              #                     2255 untrack temp_348_ele_of_buf_60_71_0 
              #                    occupy a0 with temp_348_ele_of_buf_60_71_0
              #                    release a0 with temp_348_ele_of_buf_60_71_0
              #                     2254 untrack temp_99_ret_of_detect_item_101_0 
              #                     2253 untrack temp_374_cmp_95_0 
              #                    occupy a2 with temp_374_cmp_95_0
              #                    release a2 with temp_374_cmp_95_0
              #                     2252 untrack temp_378_cmp_99_0 
              #                     2251 untrack temp_382_cmp_103_0 
              #                     500  temp_100_ret_of_detect_item_97_0 =  Call i32 detect_item_0(5_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     2260 untrack buf_60 
              #                     2259 untrack len_60_0 
              #                     1545 mu pos_0_11:500 
              #                     1546 pos_0_18 = chi pos_0_11:500 
              #                     1547 mu pos_0_18:501 
              #                     501  ret temp_100_ret_of_detect_item_97_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with temp_100_ret_of_detect_item_97_0
              #                    store to temp_100_ret_of_detect_item_97_0 in mem offset legal
    sw      a0,1192(sp)
              #                    release a0 with temp_100_ret_of_detect_item_97_0
              #                    occupy a0 with temp_100_ret_of_detect_item_97_0
              #                    load from temp_100_ret_of_detect_item_97_0 in mem


    lw      a0,1192(sp)
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a2:Freed { symidx: temp_374_cmp_95_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     1434 label branch_false_96: 
.branch_false_96:
              #                     2258 untrack temp_100_ret_of_detect_item_97_0 
              #                     2257 untrack temp_374_cmp_95_0 
              #                    occupy a2 with temp_374_cmp_95_0
              #                    release a2 with temp_374_cmp_95_0
              #                     1437 (nop) 
              #                     1438 mu pos_0_11:1437 
              #                     1440 (nop) 
              #                     1442 (nop) 
              #                     1443 mu buf_60:1442 
              #                     1445 temp_378_cmp_99_0 = icmp i32 Eq temp_348_ele_of_buf_60_71_0, 102_0 
              #                    occupy a0 with temp_348_ele_of_buf_60_71_0
              #                    occupy a1 with 102_0
    li      a1, 102
              #                    occupy a2 with temp_378_cmp_99_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1448 br i1 temp_378_cmp_99_0, label branch_true_100, label branch_false_100 
              #                    occupy a2 with temp_378_cmp_99_0
              #                    free a2
              #                    occupy a2 with temp_378_cmp_99_0
    bnez    a2, .branch_true_100
              #                    free a2
    j       .branch_false_100
              #                    regtab     a0:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a2:Freed { symidx: temp_378_cmp_99_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1446 label branch_true_100: 
.branch_true_100:
              #                     2264 untrack temp_98_ret_of_detect_item_105_0 
              #                     2263 untrack temp_378_cmp_99_0 
              #                    occupy a2 with temp_378_cmp_99_0
              #                    release a2 with temp_378_cmp_99_0
              #                     2262 untrack temp_382_cmp_103_0 
              #                     2261 untrack temp_348_ele_of_buf_60_71_0 
              #                    occupy a0 with temp_348_ele_of_buf_60_71_0
              #                    release a0 with temp_348_ele_of_buf_60_71_0
              #                     496  temp_99_ret_of_detect_item_101_0 =  Call i32 detect_item_0(6_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     2268 untrack buf_60 
              #                     2267 untrack len_60_0 
              #                     1548 mu pos_0_11:496 
              #                     1549 pos_0_19 = chi pos_0_11:496 
              #                     1550 mu pos_0_19:497 
              #                     497  ret temp_99_ret_of_detect_item_101_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with temp_99_ret_of_detect_item_101_0
              #                    store to temp_99_ret_of_detect_item_101_0 in mem offset legal
    sw      a0,1196(sp)
              #                    release a0 with temp_99_ret_of_detect_item_101_0
              #                    occupy a0 with temp_99_ret_of_detect_item_101_0
              #                    load from temp_99_ret_of_detect_item_101_0 in mem


    lw      a0,1196(sp)
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_348_ele_of_buf_60_71_0, tracked: true } |     a2:Freed { symidx: temp_378_cmp_99_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1447 label branch_false_100: 
.branch_false_100:
              #                     2266 untrack temp_378_cmp_99_0 
              #                    occupy a2 with temp_378_cmp_99_0
              #                    release a2 with temp_378_cmp_99_0
              #                     2265 untrack temp_99_ret_of_detect_item_101_0 
              #                     1450 (nop) 
              #                     1451 mu pos_0_11:1450 
              #                     1453 (nop) 
              #                     1455 (nop) 
              #                     1456 mu buf_60:1455 
              #                     1458 temp_382_cmp_103_0 = icmp i32 Eq temp_348_ele_of_buf_60_71_0, 110_0 
              #                    occupy a0 with temp_348_ele_of_buf_60_71_0
              #                    occupy a1 with 110_0
    li      a1, 110
              #                    occupy a2 with temp_382_cmp_103_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    occupy a0 with temp_348_ele_of_buf_60_71_0
              #                    store to temp_348_ele_of_buf_60_71_0 in mem offset legal
    sw      a0,132(sp)
              #                    release a0 with temp_348_ele_of_buf_60_71_0
              #                    free a1
              #                    free a2
              #                     2269 untrack temp_348_ele_of_buf_60_71_0 
              #                     1461 br i1 temp_382_cmp_103_0, label branch_true_104, label branch_false_104 
              #                    occupy a2 with temp_382_cmp_103_0
              #                    free a2
              #                    occupy a2 with temp_382_cmp_103_0
    bnez    a2, .branch_true_104
              #                    free a2
    j       .branch_false_104
              #                    regtab     a2:Freed { symidx: temp_382_cmp_103_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1459 label branch_true_104: 
.branch_true_104:
              #                     2270 untrack temp_382_cmp_103_0 
              #                    occupy a2 with temp_382_cmp_103_0
              #                    release a2 with temp_382_cmp_103_0
              #                     492  temp_98_ret_of_detect_item_105_0 =  Call i32 detect_item_0(7_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     2276 untrack buf_60 
              #                     2275 untrack len_60_0 
              #                     1551 mu pos_0_11:492 
              #                     1552 pos_0_20 = chi pos_0_11:492 
              #                     1553 mu pos_0_20:493 
              #                     493  ret temp_98_ret_of_detect_item_105_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with temp_98_ret_of_detect_item_105_0
              #                    store to temp_98_ret_of_detect_item_105_0 in mem offset legal
    sw      a0,1200(sp)
              #                    release a0 with temp_98_ret_of_detect_item_105_0
              #                    occupy a0 with temp_98_ret_of_detect_item_105_0
              #                    load from temp_98_ret_of_detect_item_105_0 in mem


    lw      a0,1200(sp)
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_382_cmp_103_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1460 label branch_false_104: 
.branch_false_104:
              #                     2274 untrack len_60_0 
              #                     2273 untrack temp_382_cmp_103_0 
              #                    occupy a2 with temp_382_cmp_103_0
              #                    release a2 with temp_382_cmp_103_0
              #                     2272 untrack buf_60 
              #                     2271 untrack temp_98_ret_of_detect_item_105_0 
              #                     1554 mu pos_0_11:489 
              #                     489  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_109_cmp_68_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     539  label branch_false_69: 
.branch_false_69:
              #                     2142 untrack temp_374_cmp_95_0 
              #                     2141 untrack temp_103_ret_of_detect_item_85_0 
              #                     2140 untrack temp_382_cmp_103_0 
              #                     2139 untrack temp_346_value_from_ptr_71_0 
              #                     2138 untrack temp_109_cmp_68_0 
              #                    occupy a2 with temp_109_cmp_68_0
              #                    release a2 with temp_109_cmp_68_0
              #                     2137 untrack temp_361_ret_of_is_number_83_0 
              #                     2136 untrack temp_104_ret_of_detect_item_81_0 
              #                     2135 untrack temp_370_cmp_91_0 
              #                     2134 untrack temp_378_cmp_99_0 
              #                     2133 untrack temp_98_ret_of_detect_item_105_0 
              #                     2132 untrack temp_347_ptr_of_buf_60_71 
              #                     2131 untrack temp_100_ret_of_detect_item_97_0 
              #                     2130 untrack temp_101_ret_of_detect_item_93_0 
              #                     2129 untrack temp_353_cmp_75_0 
              #                     2128 untrack temp_349_cmp_71_0 
              #                     2127 untrack temp_366_cmp_87_0 
              #                     2126 untrack temp_99_ret_of_detect_item_101_0 
              #                     2125 untrack temp_348_ele_of_buf_60_71_0 
              #                     2124 untrack temp_357_cmp_79_0 
              #                     2123 untrack temp_362_cmp_83_0 
              #                     2122 untrack temp_105_ret_of_detect_item_77_0 
              #                     2121 untrack temp_102_ret_of_detect_item_89_0 
              #                     2120 untrack temp_106_ret_of_detect_item_73_0 
              #                     542  temp_110_cmp_109_0 = icmp i32 Eq type_60_0, 1_0 
              #                    occupy a0 with type_60_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_110_cmp_109_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     545  br i1 temp_110_cmp_109_0, label branch_true_110, label branch_false_110 
              #                    occupy a2 with temp_110_cmp_109_0
              #                    free a2
              #                    occupy a2 with temp_110_cmp_109_0
    bnez    a2, .branch_true_110
              #                    free a2
    j       .branch_false_110
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_110_cmp_109_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     543  label branch_true_110: 
.branch_true_110:
              #                     2418 untrack temp_33_array_init_ptr_364 
              #                     2417 untrack temp_45_array_init_ptr_310 
              #                     2416 untrack temp_46_array_init_ptr_310 
              #                     2415 untrack temp_64_value_from_ptr_204_0 
              #                     2414 untrack temp_110_cmp_109_0 
              #                    occupy a2 with temp_110_cmp_109_0
              #                    release a2 with temp_110_cmp_109_0
              #                     2413 untrack temp_214_value_from_ptr_245_0 
              #                     2412 untrack temp_36_arithop_364_0 
              #                     2411 untrack temp_211_ptr_of_buf_60_328 
              #                     2410 untrack temp_114_cmp_308_0 
              #                     2409 untrack temp_63_arithop_250_0 
              #                     2408 untrack temp_30_array_init_ptr_364 
              #                     2407 untrack temp_171_ele_of_mFalse_335_353_0 
              #                     2406 untrack temp_269_cmp_210_0 
              #                     2405 untrack temp_186_cmp_312_0 
              #                     2404 untrack temp_160_ptr_of_buf_60_345 
              #                     2403 untrack temp_208_ele_of_mTrue_310_328_0 
              #                     2402 untrack temp_37_array_init_ptr_335 
              #                     2401 untrack temp_75_arithop_179_0 
              #                     2400 untrack temp_117_value_from_ptr_366_0 
              #                     2399 untrack temp_198_ele_of_buf_60_320_0 
              #                     2398 untrack temp_40_array_init_ptr_335 
              #                     2397 untrack temp_164_ele_of_mFalse_335_349_0 
              #                     2396 untrack temp_127_ele_of_mNull_364_374_0 
              #                     2395 untrack temp_252_ret_of_detect_item_215_0 
              #                     2394 untrack temp_141_ele_of_mNull_364_382_0 
              #                     2393 untrack temp_153_ptr_of_buf_60_341 
              #                     2392 untrack temp_223_cmp_262_0 
              #                     2391 untrack temp_248_ele_of_buf_60_248_0 
              #                     2390 untrack temp_234_ele_of_buf_60_303_0 
              #                     2389 untrack temp_263_cmp_235_0 
              #                     2388 untrack temp_144_ptr_of_buf_60_382 
              #                     2387 untrack temp_196_arithop_320_0 
              #                     2386 untrack temp_205_ele_of_buf_60_324_0 
              #                     2385 untrack temp_38_array_init_ptr_335 
              #                     2384 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     2383 untrack temp_194_ele_of_mTrue_310_320_0 
              #                     2382 untrack temp_218_value_from_ptr_258_0 
              #                     2381 untrack temp_203_arithop_324_0 
              #                     2380 untrack temp_31_array_init_ptr_364 
              #                     2379 untrack temp_247_ptr_of_buf_60_248 
              #                     2378 untrack temp_258_value_from_ptr_231_0 
              #                     2377 untrack temp_181_ptr_of_buf_60_357 
              #                     2376 untrack temp_174_ptr_of_buf_60_353 
              #                     2375 untrack temp_173_arithop_353_0 
              #                     2374 untrack temp_32_array_init_ptr_364 
              #                     2373 untrack temp_134_ele_of_mNull_364_378_0 
              #                     2372 untrack temp_139_cmp_378_0 
              #                     2371 untrack temp_216_ret_of_detect_item_253_0 
              #                     2370 untrack temp_221_ptr_of_buf_60_262 
              #                     2369 untrack temp_73_arithop_179_0 
              #                     2368 untrack temp_190_ptr_of_buf_60_316 
              #                     2367 untrack temp_129_arithop_374_0 
              #                     2366 untrack type_60_0 
              #                    occupy a0 with type_60_0
              #                    release a0 with type_60_0
              #                     2365 untrack temp_155_cmp_341_0 
              #                     2364 untrack temp_277_cmp_197_0 
              #                     2363 untrack temp_259_cmp_231_0 
              #                     2362 untrack temp_118_arithop_366_0 
              #                     2361 untrack temp_161_ele_of_buf_60_345_0 
              #                     2360 untrack temp_146_cmp_382_0 
              #                     2359 untrack temp_212_ele_of_buf_60_328_0 
              #                     2358 untrack temp_276_ele_of_buf_60_197_0 
              #                     2357 untrack temp_125_cmp_370_0 
              #                     2356 untrack temp_136_arithop_378_0 
              #                     2355 untrack temp_249_cmp_248_0 
              #                     2354 untrack temp_39_array_init_ptr_335 
              #                     2353 untrack temp_53_arithop_242_0 
              #                     2352 untrack temp_169_cmp_349_0 
              #                     2351 untrack temp_182_ele_of_buf_60_357_0 
              #                     2350 untrack temp_149_cmp_337_0 
              #                     2349 untrack temp_175_ele_of_buf_60_353_0 
              #                     2348 untrack temp_112_cmp_202_0 
              #                     2347 untrack temp_224_ret_of_detect_item_268_0 
              #                     2346 untrack temp_184_value_from_ptr_312_0 
              #                     2345 untrack temp_42_array_init_ptr_335 
              #                     2344 untrack temp_34_array_init_ptr_364 
              #                     2343 untrack temp_176_cmp_353_0 
              #                     2342 untrack temp_185_arithop_312_0 
              #                     2341 untrack temp_253_cmp_215_0 
              #                     2340 untrack temp_57_arithop_242_0 
              #                     2339 untrack temp_213_cmp_328_0 
              #                     2338 untrack temp_138_ele_of_buf_60_378_0 
              #                     2337 untrack temp_168_ele_of_buf_60_349_0 
              #                     2336 untrack temp_49_array_init_ptr_310 
              #                     2335 untrack temp_188_ele_of_mTrue_310_316_0 
              #                     2334 untrack temp_273_cmp_193_0 
              #                     2333 untrack temp_183_cmp_357_0 
              #                     2332 untrack temp_199_cmp_320_0 
              #                     2331 untrack temp_192_cmp_316_0 
              #                     2330 untrack temp_250_value_from_ptr_207_0 
              #                     2329 untrack temp_72_value_from_ptr_179_0 
              #                     2328 untrack temp_51_arithop_310_0 
              #                     2327 untrack temp_115_cmp_333_0 
              #                     2326 untrack temp_201_ele_of_mTrue_310_324_0 
              #                     2325 untrack temp_119_cmp_366_0 
              #                     2324 untrack temp_67_arithop_204_0 
              #                     2323 untrack temp_41_array_init_ptr_335 
              #                     2322 untrack temp_111_cmp_177_0 
              #                     2321 untrack temp_231_cmp_299_0 
              #                     2320 untrack temp_217_cmp_253_0 
              #                     2319 untrack temp_55_arithop_242_0 
              #                     2318 untrack temp_162_cmp_345_0 
              #                     2317 untrack temp_157_ele_of_mFalse_335_345_0 
              #                     2316 untrack temp_123_ptr_of_buf_60_370 
              #                     2315 untrack temp_262_ele_of_buf_60_235_0 
              #                     2314 untrack temp_48_array_init_ptr_310 
              #                     2313 untrack temp_148_arithop_337_0 
              #                     2312 untrack temp_71_arithop_212_0 
              #                     2311 untrack temp_130_ptr_of_buf_60_374 
              #                     2310 untrack temp_267_ptr_of_buf_60_210 
              #                     2309 untrack temp_251_cmp_207_0 
              #                     2308 untrack temp_145_ele_of_buf_60_382_0 
              #                     2307 untrack temp_47_array_init_ptr_310 
              #                     2306 untrack temp_132_cmp_374_0 
              #                     2305 untrack temp_225_cmp_268_0 
              #                     2304 untrack temp_159_arithop_345_0 
              #                     2303 untrack temp_131_ele_of_buf_60_374_0 
              #                     2302 untrack temp_222_ele_of_buf_60_262_0 
              #                     2301 untrack temp_147_value_from_ptr_337_0 
              #                     2300 untrack temp_154_ele_of_buf_60_341_0 
              #                     2299 untrack temp_167_ptr_of_buf_60_349 
              #                     2298 untrack temp_113_cmp_240_0 
              #                     2297 untrack temp_204_ptr_of_buf_60_324 
              #                     2296 untrack temp_215_cmp_245_0 
              #                     2295 untrack temp_235_cmp_303_0 
              #                     2294 untrack temp_116_cmp_362_0 
              #                     2293 untrack temp_275_ptr_of_buf_60_197 
              #                     2292 untrack temp_124_ele_of_buf_60_370_0 
              #                     2291 untrack temp_166_arithop_349_0 
              #                     2290 untrack temp_52_value_from_ptr_242_0 
              #                     2289 untrack temp_137_ptr_of_buf_60_378 
              #                     2288 untrack temp_206_cmp_324_0 
              #                     2287 untrack temp_230_value_from_ptr_299_0 
              #                     2286 untrack temp_268_ele_of_buf_60_210_0 
              #                     2285 untrack temp_65_arithop_204_0 
              #                     2284 untrack temp_44_arithop_335_0 
              #                     2283 untrack temp_233_ptr_of_buf_60_303 
              #                     2282 untrack temp_191_ele_of_buf_60_316_0 
              #                     2281 untrack temp_261_ptr_of_buf_60_235 
              #                     2280 untrack temp_219_cmp_258_0 
              #                     2279 untrack temp_121_ele_of_mNull_364_370_0 
              #                     2278 untrack temp_197_ptr_of_buf_60_320 
              #                     2277 untrack temp_151_ele_of_mFalse_335_341_0 
              #                     1139 temp_286_value_from_ptr_112_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_286_value_from_ptr_112_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     1140 mu pos_0_11:1139 
              #                     1142 temp_287_ptr_of_buf_60_112 = GEP buf_60:Array:i32:[None] [Some(temp_286_value_from_ptr_112_0)] 
              #                    occupy a2 with temp_287_ptr_of_buf_60_112
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_286_value_from_ptr_112_0
    mv      a3, a1
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with buf_60
              #                    load from buf_60 in mem
    ld      a4,1512(sp)
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     1144 temp_288_ele_of_buf_60_112_0 = load temp_287_ptr_of_buf_60_112:ptr->i32 
              #                    occupy a2 with temp_287_ptr_of_buf_60_112
              #                    occupy a5 with temp_288_ele_of_buf_60_112_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     2455 untrack temp_287_ptr_of_buf_60_112 
              #                    occupy a2 with temp_287_ptr_of_buf_60_112
              #                    release a2 with temp_287_ptr_of_buf_60_112
              #                     1145 mu buf_60:1144 
              #                     1147 temp_289_cmp_112_0 = icmp i32 Eq temp_288_ele_of_buf_60_112_0, 43_0 
              #                    occupy a5 with temp_288_ele_of_buf_60_112_0
              #                    occupy a2 with 43_0
    li      a2, 43
              #                    occupy a6 with temp_289_cmp_112_0
    xor     a6,a5,a2
    seqz    a6, a6
              #                    free a5
              #                    free a2
              #                    free a6
              #                     1150 br i1 temp_289_cmp_112_0, label branch_true_113, label branch_false_113 
              #                    occupy a6 with temp_289_cmp_112_0
              #                    free a6
              #                    occupy a6 with temp_289_cmp_112_0
    bnez    a6, .branch_true_113
              #                    free a6
    j       .branch_false_113
              #                    regtab     a1:Freed { symidx: temp_286_value_from_ptr_112_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |     a5:Freed { symidx: temp_288_ele_of_buf_60_112_0, tracked: true } |     a6:Freed { symidx: temp_289_cmp_112_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1148 label branch_true_113: 
.branch_true_113:
              #                     2459 untrack temp_293_cmp_116_0 
              #                     2458 untrack temp_289_cmp_112_0 
              #                    occupy a6 with temp_289_cmp_112_0
              #                    release a6 with temp_289_cmp_112_0
              #                     2457 untrack temp_95_arithop_118_0 
              #                     2456 untrack temp_288_ele_of_buf_60_112_0 
              #                    occupy a5 with temp_288_ele_of_buf_60_112_0
              #                    release a5 with temp_288_ele_of_buf_60_112_0
              #                     482  (nop) 
              #                     483  mu pos_0_11:482 
              #                     485  temp_97_arithop_114_0 = Add i32 temp_286_value_from_ptr_112_0, 1_0 
              #                    occupy a1 with temp_286_value_from_ptr_112_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_97_arithop_114_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     2462 untrack temp_286_value_from_ptr_112_0 
              #                    occupy a1 with temp_286_value_from_ptr_112_0
              #                    release a1 with temp_286_value_from_ptr_112_0
              #                     486  store temp_97_arithop_114_0:i32 *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_97_arithop_114_0
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     2463 untrack temp_97_arithop_114_0 
              #                    occupy a2 with temp_97_arithop_114_0
              #                    release a2 with temp_97_arithop_114_0
              #                     487  pos_0_21 = chi pos_0_11:486 
              #                          jump label: gather_68 
    j       .gather_68
              #                    regtab     a4:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     1164 label gather_68: 
.gather_68:
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a4:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     1166 temp_294_value_from_ptr_120_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_294_value_from_ptr_120_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     1167 mu pos_0_22:1166 
              #                     1169 temp_295_cmp_120_0 = icmp i32 Sge temp_294_value_from_ptr_120_0, len_60_0 
              #                    occupy a1 with temp_294_value_from_ptr_120_0
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a3 with temp_295_cmp_120_0
    slt     a3,a1,a2
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                     1172 br i1 temp_295_cmp_120_0, label branch_true_121, label branch_false_121 
              #                    occupy a3 with temp_295_cmp_120_0
              #                    free a3
              #                    occupy a3 with temp_295_cmp_120_0
    bnez    a3, .branch_true_121
              #                    free a3
    j       .branch_false_121
              #                    regtab     a1:Freed { symidx: temp_294_value_from_ptr_120_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_295_cmp_120_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     1170 label branch_true_121: 
.branch_true_121:
              #                     2493 untrack temp_332_ele_of_buf_60_138_0 
              #                     2492 untrack temp_325_cmp_166_0 
              #                     2491 untrack temp_297_ptr_of_buf_60_124 
              #                     2490 untrack temp_298_ele_of_buf_60_124_0 
              #                     2489 untrack temp_328_ele_of_buf_60_159_0 
              #                     2488 untrack temp_295_cmp_120_0 
              #                    occupy a3 with temp_295_cmp_120_0
              #                    release a3 with temp_295_cmp_120_0
              #                     2487 untrack temp_299_ret_of_is_number_124_0 
              #                     2486 untrack buf_60 
              #                    occupy a4 with buf_60
              #                    release a4 with buf_60
              #                     2485 untrack temp_310_cmp_152_0 
              #                     2484 untrack temp_313_value_from_ptr_163_0 
              #                     2483 untrack temp_331_ptr_of_buf_60_138 
              #                     2482 untrack temp_324_ele_of_buf_60_166_0 
              #                     2481 untrack temp_305_value_from_ptr_149_0 
              #                     2480 untrack temp_87_arithop_161_0 
              #                     2479 untrack len_60_0 
              #                    occupy a2 with len_60_0
              #                    release a2 with len_60_0
              #                     2478 untrack temp_85_arithop_168_0 
              #                     2477 untrack temp_308_ptr_of_buf_60_152 
              #                     2476 untrack temp_300_cmp_124_0 
              #                     2475 untrack temp_329_cmp_159_0 
              #                     2474 untrack temp_306_cmp_149_0 
              #                     2473 untrack temp_309_ele_of_buf_60_152_0 
              #                     2472 untrack temp_327_ptr_of_buf_60_159 
              #                     2471 untrack temp_312_cmp_156_0 
              #                     2470 untrack temp_333_cmp_138_0 
              #                     2469 untrack temp_81_arithop_154_0 
              #                     2468 untrack temp_311_value_from_ptr_156_0 
              #                     2467 untrack temp_323_ptr_of_buf_60_166 
              #                     2466 untrack temp_89_arithop_140_0 
              #                     2465 untrack temp_294_value_from_ptr_120_0 
              #                    occupy a1 with temp_294_value_from_ptr_120_0
              #                    release a1 with temp_294_value_from_ptr_120_0
              #                     2464 untrack temp_314_cmp_163_0 
              #                     1555 mu pos_0_22:473 
              #                     473  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_294_value_from_ptr_120_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_295_cmp_120_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     1171 label branch_false_121: 
.branch_false_121:
              #                     2494 untrack temp_295_cmp_120_0 
              #                    occupy a3 with temp_295_cmp_120_0
              #                    release a3 with temp_295_cmp_120_0
              #                     1174 (nop) 
              #                     1175 mu pos_0_22:1174 
              #                     1177 temp_297_ptr_of_buf_60_124 = GEP buf_60:Array:i32:[None] [Some(temp_294_value_from_ptr_120_0)] 
              #                    occupy a0 with temp_297_ptr_of_buf_60_124
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_294_value_from_ptr_120_0
    mv      a3, a1
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with buf_60
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                     2497 untrack temp_294_value_from_ptr_120_0 
              #                    occupy a1 with temp_294_value_from_ptr_120_0
              #                    release a1 with temp_294_value_from_ptr_120_0
              #                     1179 temp_298_ele_of_buf_60_124_0 = load temp_297_ptr_of_buf_60_124:ptr->i32 
              #                    occupy a0 with temp_297_ptr_of_buf_60_124
              #                    occupy a1 with temp_298_ele_of_buf_60_124_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     2496 untrack temp_297_ptr_of_buf_60_124 
              #                    occupy a0 with temp_297_ptr_of_buf_60_124
              #                    release a0 with temp_297_ptr_of_buf_60_124
              #                     1180 mu buf_60:1179 
              #                     1182 temp_299_ret_of_is_number_124_0 =  Call i32 is_number_0(temp_298_ele_of_buf_60_124_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_298_ele_of_buf_60_124_0
              #                    store to temp_298_ele_of_buf_60_124_0 in mem offset legal
    sw      a1,340(sp)
              #                    release a1 with temp_298_ele_of_buf_60_124_0
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    occupy a4 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a4,1512(sp)
              #                    release a4 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_298_ele_of_buf_60_124_0_0
              #                    load from temp_298_ele_of_buf_60_124_0 in mem


    lw      a0,340(sp)
              #                    arg load ended


    call    is_number
              #                     2495 untrack temp_298_ele_of_buf_60_124_0 
              #                     1184 temp_300_cmp_124_0 = icmp i32 Eq temp_299_ret_of_is_number_124_0, 0_0 
              #                    occupy a0 with temp_299_ret_of_is_number_124_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_300_cmp_124_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2498 untrack temp_299_ret_of_is_number_124_0 
              #                    occupy a0 with temp_299_ret_of_is_number_124_0
              #                    release a0 with temp_299_ret_of_is_number_124_0
              #                     1187 br i1 temp_300_cmp_124_0, label branch_true_125, label branch_false_125 
              #                    occupy a2 with temp_300_cmp_124_0
              #                    free a2
              #                    occupy a2 with temp_300_cmp_124_0
    bnez    a2, .branch_true_125
              #                    free a2
    j       .branch_false_125
              #                    regtab     a2:Freed { symidx: temp_300_cmp_124_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     1185 label branch_true_125: 
.branch_true_125:
              #                     2523 untrack temp_333_cmp_138_0 
              #                     2522 untrack temp_87_arithop_161_0 
              #                     2521 untrack temp_323_ptr_of_buf_60_166 
              #                     2520 untrack temp_325_cmp_166_0 
              #                     2519 untrack temp_331_ptr_of_buf_60_138 
              #                     2518 untrack temp_328_ele_of_buf_60_159_0 
              #                     2517 untrack temp_85_arithop_168_0 
              #                     2516 untrack temp_314_cmp_163_0 
              #                     2515 untrack temp_310_cmp_152_0 
              #                     2514 untrack temp_313_value_from_ptr_163_0 
              #                     2513 untrack temp_300_cmp_124_0 
              #                    occupy a2 with temp_300_cmp_124_0
              #                    release a2 with temp_300_cmp_124_0
              #                     2512 untrack temp_306_cmp_149_0 
              #                     2511 untrack temp_324_ele_of_buf_60_166_0 
              #                     2510 untrack buf_60 
              #                     2509 untrack temp_311_value_from_ptr_156_0 
              #                     2508 untrack temp_329_cmp_159_0 
              #                     2507 untrack len_60_0 
              #                     2506 untrack temp_327_ptr_of_buf_60_159 
              #                     2505 untrack temp_89_arithop_140_0 
              #                     2504 untrack temp_81_arithop_154_0 
              #                     2503 untrack temp_308_ptr_of_buf_60_152 
              #                     2502 untrack temp_305_value_from_ptr_149_0 
              #                     2501 untrack temp_309_ele_of_buf_60_152_0 
              #                     2500 untrack temp_332_ele_of_buf_60_138_0 
              #                     2499 untrack temp_312_cmp_156_0 
              #                     1556 mu pos_0_22:471 
              #                     471  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_300_cmp_124_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     1186 label branch_false_125: 
.branch_false_125:
              #                     2524 untrack temp_300_cmp_124_0 
              #                    occupy a2 with temp_300_cmp_124_0
              #                    release a2 with temp_300_cmp_124_0
              #                          jump label: gather_74 
    j       .gather_74
              #                    regtab  released_gpr_count:9,released_fpr_count:24
              #                     1188 label gather_74: 
.gather_74:
              #                          jump label: while.head_129 
    j       .while.head_129
              #                    regtab  released_gpr_count:9,released_fpr_count:24
              #                     1194 label while.head_129: 
.while.head_129:
              #                     1190 temp_301_value_from_ptr_128_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_301_value_from_ptr_128_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     1191 mu pos_0_23:1190 
              #                     1193 temp_302_cmp_128_0 = icmp i32 Slt temp_301_value_from_ptr_128_0, len_60_0 
              #                    occupy a1 with temp_301_value_from_ptr_128_0
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a3 with temp_302_cmp_128_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     1197 br i1 temp_302_cmp_128_0, label while.body_129, label while.exit_129 
              #                    occupy a3 with temp_302_cmp_128_0
              #                    free a3
              #                    occupy a3 with temp_302_cmp_128_0
    bnez    a3, .while.body_129
              #                    free a3
    j       .while.exit_129
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1195 label while.body_129: 
.while.body_129:
              #                     1329 (nop) 
              #                     1330 mu pos_0_23:1329 
              #                     1332 temp_342_ptr_of_buf_60_131 = GEP buf_60:Array:i32:[None] [Some(temp_301_value_from_ptr_128_0)] 
              #                    occupy a0 with temp_342_ptr_of_buf_60_131
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_301_value_from_ptr_128_0
    mv      a4, a1
              #                    free a1
              #                    occupy a1 with temp_301_value_from_ptr_128_0
              #                    store to temp_301_value_from_ptr_128_0 in mem offset legal
    sw      a1,328(sp)
              #                    release a1 with temp_301_value_from_ptr_128_0
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
              #                    occupy a1 with buf_60
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a1,1512(sp)
              #                    release a1 with buf_60
              #                    free a0
              #                     1334 temp_343_ele_of_buf_60_131_0 = load temp_342_ptr_of_buf_60_131:ptr->i32 
              #                    occupy a0 with temp_342_ptr_of_buf_60_131
              #                    occupy a1 with temp_343_ele_of_buf_60_131_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_343_ele_of_buf_60_131_0
              #                    store to temp_343_ele_of_buf_60_131_0 in mem offset legal
    sw      a1,156(sp)
              #                    release a1 with temp_343_ele_of_buf_60_131_0
              #                    free a0
              #                     1335 mu buf_60:1334 
              #                     1337 temp_344_ret_of_is_number_131_0 =  Call i32 is_number_0(temp_343_ele_of_buf_60_131_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_342_ptr_of_buf_60_131
              #                    store to temp_342_ptr_of_buf_60_131 in mem offset legal
    sd      a0,160(sp)
              #                    release a0 with temp_342_ptr_of_buf_60_131
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    occupy a3 with temp_302_cmp_128_0
              #                    store to temp_302_cmp_128_0 in mem offset legal
    sb      a3,327(sp)
              #                    release a3 with temp_302_cmp_128_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_343_ele_of_buf_60_131_0_0
              #                    load from temp_343_ele_of_buf_60_131_0 in mem


    lw      a0,156(sp)
              #                    arg load ended


    call    is_number
              #                     1339 temp_345_cmp_131_0 = icmp i32 Ne temp_344_ret_of_is_number_131_0, 1_0 
              #                    occupy a0 with temp_344_ret_of_is_number_131_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_345_cmp_131_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1342 br i1 temp_345_cmp_131_0, label branch_true_132, label branch_false_132 
              #                    occupy a2 with temp_345_cmp_131_0
              #                    free a2
              #                    occupy a2 with temp_345_cmp_131_0
    bnez    a2, .branch_true_132
              #                    free a2
    j       .branch_false_132
              #                    regtab     a0:Freed { symidx: temp_344_ret_of_is_number_131_0, tracked: true } |     a2:Freed { symidx: temp_345_cmp_131_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1340 label branch_true_132: 
.branch_true_132:
              #                     2529 untrack temp_345_cmp_131_0 
              #                    occupy a2 with temp_345_cmp_131_0
              #                    release a2 with temp_345_cmp_131_0
              #                     2528 untrack temp_343_ele_of_buf_60_131_0 
              #                     2527 untrack temp_93_arithop_130_0 
              #                     2526 untrack temp_344_ret_of_is_number_131_0 
              #                    occupy a0 with temp_344_ret_of_is_number_131_0
              #                    release a0 with temp_344_ret_of_is_number_131_0
              #                     2525 untrack temp_342_ptr_of_buf_60_131 
              #                          jump label: while.exit_129 
              #                    occupy a3 with temp_302_cmp_128_0
              #                    load from temp_302_cmp_128_0 in mem


    lb      a3,327(sp)
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a1 with temp_301_value_from_ptr_128_0
              #                    load from temp_301_value_from_ptr_128_0 in mem


    lw      a1,328(sp)
    j       .while.exit_129
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1196 label while.exit_129: 
.while.exit_129:
              #                     1199 (nop) 
              #                     1200 mu pos_0_23:1199 
              #                     1202 (nop) 
              #                     1205 br i1 temp_302_cmp_128_0, label branch_true_136, label branch_false_136 
              #                    occupy a3 with temp_302_cmp_128_0
              #                    free a3
              #                    occupy a3 with temp_302_cmp_128_0
    bnez    a3, .branch_true_136
              #                    free a3
    j       .branch_false_136
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1203 label branch_true_136: 
.branch_true_136:
              #                     1293 (nop) 
              #                     1294 mu pos_0_23:1293 
              #                     1296 temp_331_ptr_of_buf_60_138 = GEP buf_60:Array:i32:[None] [Some(temp_301_value_from_ptr_128_0)] 
              #                    occupy a0 with temp_331_ptr_of_buf_60_138
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_301_value_from_ptr_128_0
    mv      a4, a1
              #                    free a1
              #                    occupy a1 with temp_301_value_from_ptr_128_0
              #                    store to temp_301_value_from_ptr_128_0 in mem offset legal
    sw      a1,328(sp)
              #                    release a1 with temp_301_value_from_ptr_128_0
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
              #                    occupy a1 with buf_60
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a1,1512(sp)
              #                    release a1 with buf_60
              #                    free a0
              #                     1298 temp_332_ele_of_buf_60_138_0 = load temp_331_ptr_of_buf_60_138:ptr->i32 
              #                    occupy a0 with temp_331_ptr_of_buf_60_138
              #                    occupy a1 with temp_332_ele_of_buf_60_138_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_332_ele_of_buf_60_138_0
              #                    store to temp_332_ele_of_buf_60_138_0 in mem offset legal
    sw      a1,204(sp)
              #                    release a1 with temp_332_ele_of_buf_60_138_0
              #                    free a0
              #                     2534 untrack temp_331_ptr_of_buf_60_138 
              #                    occupy a0 with temp_331_ptr_of_buf_60_138
              #                    release a0 with temp_331_ptr_of_buf_60_138
              #                     1299 mu buf_60:1298 
              #                     1301 temp_333_cmp_138_0 = icmp i32 Eq temp_332_ele_of_buf_60_138_0, 46_0 
              #                    occupy a0 with temp_332_ele_of_buf_60_138_0
              #                    load from temp_332_ele_of_buf_60_138_0 in mem


    lw      a0,204(sp)
              #                    occupy a1 with 46_0
    li      a1, 46
              #                    occupy a4 with temp_333_cmp_138_0
    xor     a4,a0,a1
    seqz    a4, a4
              #                    free a0
              #                    occupy a0 with temp_332_ele_of_buf_60_138_0
              #                    store to temp_332_ele_of_buf_60_138_0 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with temp_332_ele_of_buf_60_138_0
              #                    free a1
              #                    free a4
              #                     2535 untrack temp_332_ele_of_buf_60_138_0 
              #                     1304 br i1 temp_333_cmp_138_0, label branch_true_139, label branch_false_139 
              #                    occupy a4 with temp_333_cmp_138_0
              #                    free a4
              #                    occupy a4 with temp_333_cmp_138_0
    bnez    a4, .branch_true_139
              #                    free a4
    j       .branch_false_139
              #                    regtab     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |     a4:Freed { symidx: temp_333_cmp_138_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1302 label branch_true_139: 
.branch_true_139:
              #                     2536 untrack temp_333_cmp_138_0 
              #                    occupy a4 with temp_333_cmp_138_0
              #                    release a4 with temp_333_cmp_138_0
              #                     450  (nop) 
              #                     451  mu pos_0_23:450 
              #                     453  temp_89_arithop_140_0 = Add i32 temp_301_value_from_ptr_128_0, 1_0 
              #                    occupy a0 with temp_301_value_from_ptr_128_0
              #                    load from temp_301_value_from_ptr_128_0 in mem


    lw      a0,328(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with temp_89_arithop_140_0
    ADDW    a4,a0,a1
              #                    free a0
              #                    occupy a0 with temp_301_value_from_ptr_128_0
              #                    store to temp_301_value_from_ptr_128_0 in mem offset legal
    sw      a0,328(sp)
              #                    release a0 with temp_301_value_from_ptr_128_0
              #                    free a1
              #                    free a4
              #                     454  store temp_89_arithop_140_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a4 with temp_89_arithop_140_0
    sw      a4,0(a0)
              #                    free a4
              #                    occupy a4 with temp_89_arithop_140_0
              #                    store to temp_89_arithop_140_0 in mem offset legal
    sw      a4,1220(sp)
              #                    release a4 with temp_89_arithop_140_0
              #                    free a0
              #                     2539 untrack temp_89_arithop_140_0 
              #                     455  pos_0_25 = chi pos_0_23:454 
              #                          jump label: while.head_143 
    j       .while.head_143
              #                    regtab     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1310 label while.head_143: 
.while.head_143:
              #                     2540 untrack temp_301_value_from_ptr_128_0 
              #                     1306 temp_334_value_from_ptr_142_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_334_value_from_ptr_142_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_334_value_from_ptr_142_0
              #                    store to temp_334_value_from_ptr_142_0 in mem offset legal
    sw      a1,196(sp)
              #                    release a1 with temp_334_value_from_ptr_142_0
              #                    free a0
              #                     1307 mu pos_0_26:1306 
              #                     1309 temp_335_cmp_142_0 = icmp i32 Slt temp_334_value_from_ptr_142_0, len_60_0 
              #                    occupy a0 with temp_334_value_from_ptr_142_0
              #                    load from temp_334_value_from_ptr_142_0 in mem


    lw      a0,196(sp)
              #                    occupy a2 with len_60_0
              #                    occupy a1 with temp_335_cmp_142_0
    slt     a1,a0,a2
              #                    free a0
              #                    occupy a0 with temp_334_value_from_ptr_142_0
              #                    store to temp_334_value_from_ptr_142_0 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with temp_334_value_from_ptr_142_0
              #                    free a2
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    free a1
              #                     1312 br i1 temp_335_cmp_142_0, label while.body_143, label branch_false_139 
              #                    occupy a1 with temp_335_cmp_142_0
              #                    free a1
              #                    occupy a1 with temp_335_cmp_142_0
    bnez    a1, .while.body_143
              #                    free a1
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a4 with temp_333_cmp_138_0
              #                    load from temp_333_cmp_138_0 in mem


    lb      a4,203(sp)
              #                    occupy a1 with temp_335_cmp_142_0
              #                    store to temp_335_cmp_142_0 in mem offset legal
    sb      a1,195(sp)
              #                    release a1 with temp_335_cmp_142_0
    j       .branch_false_139
              #                    regtab     a1:Freed { symidx: temp_335_cmp_142_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1311 label while.body_143: 
.while.body_143:
              #                     1314 (nop) 
              #                     1315 mu pos_0_26:1314 
              #                     1317 temp_337_ptr_of_buf_60_145 = GEP buf_60:Array:i32:[None] [Some(temp_334_value_from_ptr_142_0)] 
              #                    occupy a0 with temp_337_ptr_of_buf_60_145
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_334_value_from_ptr_142_0
              #                    load from temp_334_value_from_ptr_142_0 in mem


    lw      a4,196(sp)
    mv      a2, a4
              #                    free a4
              #                    occupy a4 with temp_334_value_from_ptr_142_0
              #                    store to temp_334_value_from_ptr_142_0 in mem offset legal
    sw      a4,196(sp)
              #                    release a4 with temp_334_value_from_ptr_142_0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a0
              #                    occupy a0 with temp_337_ptr_of_buf_60_145
              #                    store to temp_337_ptr_of_buf_60_145 in mem offset legal
    sd      a0,184(sp)
              #                    release a0 with temp_337_ptr_of_buf_60_145
              #                     1319 temp_338_ele_of_buf_60_145_0 = load temp_337_ptr_of_buf_60_145:ptr->i32 
              #                    occupy a0 with temp_337_ptr_of_buf_60_145
              #                    load from temp_337_ptr_of_buf_60_145 in mem
    ld      a0,184(sp)
              #                    occupy a2 with temp_338_ele_of_buf_60_145_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_338_ele_of_buf_60_145_0
              #                    store to temp_338_ele_of_buf_60_145_0 in mem offset legal
    sw      a2,180(sp)
              #                    release a2 with temp_338_ele_of_buf_60_145_0
              #                    free a0
              #                    occupy a0 with temp_337_ptr_of_buf_60_145
              #                    store to temp_337_ptr_of_buf_60_145 in mem offset legal
    sd      a0,184(sp)
              #                    release a0 with temp_337_ptr_of_buf_60_145
              #                     1320 mu buf_60:1319 
              #                     1322 temp_339_ret_of_is_number_145_0 =  Call i32 is_number_0(temp_338_ele_of_buf_60_145_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_335_cmp_142_0
              #                    store to temp_335_cmp_142_0 in mem offset legal
    sb      a1,195(sp)
              #                    release a1 with temp_335_cmp_142_0
              #                    occupy a3 with temp_302_cmp_128_0
              #                    store to temp_302_cmp_128_0 in mem offset legal
    sb      a3,327(sp)
              #                    release a3 with temp_302_cmp_128_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_338_ele_of_buf_60_145_0_0
              #                    load from temp_338_ele_of_buf_60_145_0 in mem


    lw      a0,180(sp)
              #                    arg load ended


    call    is_number
              #                     1324 temp_340_cmp_145_0 = icmp i32 Ne temp_339_ret_of_is_number_145_0, 1_0 
              #                    occupy a0 with temp_339_ret_of_is_number_145_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_340_cmp_145_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_339_ret_of_is_number_145_0
              #                    store to temp_339_ret_of_is_number_145_0 in mem offset legal
    sw      a0,176(sp)
              #                    release a0 with temp_339_ret_of_is_number_145_0
              #                    free a1
              #                    free a2
              #                     1327 br i1 temp_340_cmp_145_0, label branch_true_146, label branch_false_146 
              #                    occupy a2 with temp_340_cmp_145_0
              #                    free a2
              #                    occupy a2 with temp_340_cmp_145_0
    bnez    a2, .branch_true_146
              #                    free a2
    j       .branch_false_146
              #                    regtab     a2:Freed { symidx: temp_340_cmp_145_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1325 label branch_true_146: 
.branch_true_146:
              #                     2547 untrack temp_338_ele_of_buf_60_145_0 
              #                     2546 untrack temp_335_cmp_142_0 
              #                     2545 untrack temp_337_ptr_of_buf_60_145 
              #                     2544 untrack temp_340_cmp_145_0 
              #                    occupy a2 with temp_340_cmp_145_0
              #                    release a2 with temp_340_cmp_145_0
              #                     2543 untrack temp_91_arithop_144_0 
              #                     2542 untrack temp_334_value_from_ptr_142_0 
              #                     2541 untrack temp_339_ret_of_is_number_145_0 
              #                          jump label: branch_false_139 
              #                    occupy a3 with temp_302_cmp_128_0
              #                    load from temp_302_cmp_128_0 in mem


    lb      a3,327(sp)
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a4 with temp_333_cmp_138_0
              #                    load from temp_333_cmp_138_0 in mem


    lb      a4,203(sp)
    j       .branch_false_139
              #                    regtab     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |     a4:Freed { symidx: temp_333_cmp_138_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1303 label branch_false_139: 
.branch_false_139:
              #                     2538 untrack temp_333_cmp_138_0 
              #                    occupy a4 with temp_333_cmp_138_0
              #                    release a4 with temp_333_cmp_138_0
              #                     2537 untrack temp_89_arithop_140_0 
              #                          jump label: branch_false_136 
              #                    occupy a1 with temp_301_value_from_ptr_128_0
              #                    load from temp_301_value_from_ptr_128_0 in mem


    lw      a1,328(sp)
    j       .branch_false_136
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1204 label branch_false_136: 
.branch_false_136:
              #                     2533 untrack temp_89_arithop_140_0 
              #                     2532 untrack temp_333_cmp_138_0 
              #                     2531 untrack temp_331_ptr_of_buf_60_138 
              #                     2530 untrack temp_332_ele_of_buf_60_138_0 
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     1207 temp_305_value_from_ptr_149_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a4 with temp_305_value_from_ptr_149_0
    lw      a4,0(a0)
              #                    free a4
              #                    occupy a4 with temp_305_value_from_ptr_149_0
              #                    store to temp_305_value_from_ptr_149_0 in mem offset legal
    sw      a4,320(sp)
              #                    release a4 with temp_305_value_from_ptr_149_0
              #                    free a0
              #                     1208 mu pos_0_29:1207 
              #                     1210 temp_306_cmp_149_0 = icmp i32 Slt temp_305_value_from_ptr_149_0, len_60_0 
              #                    occupy a0 with temp_305_value_from_ptr_149_0
              #                    load from temp_305_value_from_ptr_149_0 in mem


    lw      a0,320(sp)
              #                    occupy a2 with len_60_0
              #                    occupy a4 with temp_306_cmp_149_0
    slt     a4,a0,a2
              #                    free a0
              #                    occupy a0 with temp_305_value_from_ptr_149_0
              #                    store to temp_305_value_from_ptr_149_0 in mem offset legal
    sw      a0,320(sp)
              #                    release a0 with temp_305_value_from_ptr_149_0
              #                    free a2
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    free a4
              #                     1213 br i1 temp_306_cmp_149_0, label branch_true_150, label branch_false_150 
              #                    occupy a4 with temp_306_cmp_149_0
              #                    free a4
              #                    occupy a4 with temp_306_cmp_149_0
    bnez    a4, .branch_true_150
              #                    free a4
    j       .branch_false_150
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |     a4:Freed { symidx: temp_306_cmp_149_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1211 label branch_true_150: 
.branch_true_150:
              #                     2555 untrack temp_306_cmp_149_0 
              #                    occupy a4 with temp_306_cmp_149_0
              #                    release a4 with temp_306_cmp_149_0
              #                     1215 (nop) 
              #                     1216 mu pos_0_29:1215 
              #                     1218 temp_308_ptr_of_buf_60_152 = GEP buf_60:Array:i32:[None] [Some(temp_305_value_from_ptr_149_0)] 
              #                    occupy a0 with temp_308_ptr_of_buf_60_152
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_305_value_from_ptr_149_0
              #                    load from temp_305_value_from_ptr_149_0 in mem


    lw      a4,320(sp)
    mv      a2, a4
              #                    free a4
              #                    occupy a4 with temp_305_value_from_ptr_149_0
              #                    store to temp_305_value_from_ptr_149_0 in mem offset legal
    sw      a4,320(sp)
              #                    release a4 with temp_305_value_from_ptr_149_0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a0
              #                     1220 temp_309_ele_of_buf_60_152_0 = load temp_308_ptr_of_buf_60_152:ptr->i32 
              #                    occupy a0 with temp_308_ptr_of_buf_60_152
              #                    occupy a2 with temp_309_ele_of_buf_60_152_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_309_ele_of_buf_60_152_0
              #                    store to temp_309_ele_of_buf_60_152_0 in mem offset legal
    sw      a2,300(sp)
              #                    release a2 with temp_309_ele_of_buf_60_152_0
              #                    free a0
              #                     2577 untrack temp_308_ptr_of_buf_60_152 
              #                    occupy a0 with temp_308_ptr_of_buf_60_152
              #                    release a0 with temp_308_ptr_of_buf_60_152
              #                     1221 mu buf_60:1220 
              #                     1223 temp_310_cmp_152_0 = icmp i32 Eq temp_309_ele_of_buf_60_152_0, 101_0 
              #                    occupy a0 with temp_309_ele_of_buf_60_152_0
              #                    load from temp_309_ele_of_buf_60_152_0 in mem


    lw      a0,300(sp)
              #                    occupy a2 with 101_0
    li      a2, 101
              #                    occupy a4 with temp_310_cmp_152_0
    xor     a4,a0,a2
    seqz    a4, a4
              #                    free a0
              #                    occupy a0 with temp_309_ele_of_buf_60_152_0
              #                    store to temp_309_ele_of_buf_60_152_0 in mem offset legal
    sw      a0,300(sp)
              #                    release a0 with temp_309_ele_of_buf_60_152_0
              #                    free a2
              #                    free a4
              #                     2576 untrack temp_309_ele_of_buf_60_152_0 
              #                     1226 br i1 temp_310_cmp_152_0, label branch_true_153, label branch_false_153 
              #                    occupy a4 with temp_310_cmp_152_0
              #                    free a4
              #                    occupy a4 with temp_310_cmp_152_0
    bnez    a4, .branch_true_153
              #                    free a4
    j       .branch_false_153
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |     a4:Freed { symidx: temp_310_cmp_152_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1224 label branch_true_153: 
.branch_true_153:
              #                     2578 untrack temp_310_cmp_152_0 
              #                    occupy a4 with temp_310_cmp_152_0
              #                    release a4 with temp_310_cmp_152_0
              #                     422  (nop) 
              #                     423  mu pos_0_29:422 
              #                     425  temp_81_arithop_154_0 = Add i32 temp_305_value_from_ptr_149_0, 1_0 
              #                    occupy a0 with temp_305_value_from_ptr_149_0
              #                    load from temp_305_value_from_ptr_149_0 in mem


    lw      a0,320(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_81_arithop_154_0
    ADDW    a4,a0,a2
              #                    free a0
              #                    occupy a0 with temp_305_value_from_ptr_149_0
              #                    store to temp_305_value_from_ptr_149_0 in mem offset legal
    sw      a0,320(sp)
              #                    release a0 with temp_305_value_from_ptr_149_0
              #                    free a2
              #                    free a4
              #                     2597 untrack temp_305_value_from_ptr_149_0 
              #                     426  store temp_81_arithop_154_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a4 with temp_81_arithop_154_0
    sw      a4,0(a0)
              #                    free a4
              #                    occupy a4 with temp_81_arithop_154_0
              #                    store to temp_81_arithop_154_0 in mem offset legal
    sw      a4,1236(sp)
              #                    release a4 with temp_81_arithop_154_0
              #                    free a0
              #                     2596 untrack temp_81_arithop_154_0 
              #                     427  pos_0_30 = chi pos_0_29:426 
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     1228 temp_311_value_from_ptr_156_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a2 with temp_311_value_from_ptr_156_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_311_value_from_ptr_156_0
              #                    store to temp_311_value_from_ptr_156_0 in mem offset legal
    sw      a2,292(sp)
              #                    release a2 with temp_311_value_from_ptr_156_0
              #                    free a0
              #                     1229 mu pos_0_30:1228 
              #                     1231 temp_312_cmp_156_0 = icmp i32 Slt temp_311_value_from_ptr_156_0, len_60_0 
              #                    occupy a0 with temp_311_value_from_ptr_156_0
              #                    load from temp_311_value_from_ptr_156_0 in mem


    lw      a0,292(sp)
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a4 with temp_312_cmp_156_0
    slt     a4,a0,a2
              #                    free a0
              #                    occupy a0 with temp_311_value_from_ptr_156_0
              #                    store to temp_311_value_from_ptr_156_0 in mem offset legal
    sw      a0,292(sp)
              #                    release a0 with temp_311_value_from_ptr_156_0
              #                    free a2
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    free a4
              #                    occupy a4 with temp_312_cmp_156_0
              #                    store to temp_312_cmp_156_0 in mem offset legal
    sb      a4,291(sp)
              #                    release a4 with temp_312_cmp_156_0
              #                     1234 br i1 temp_312_cmp_156_0, label branch_true_157, label branch_false_157 
              #                    occupy a0 with temp_312_cmp_156_0
              #                    load from temp_312_cmp_156_0 in mem


    lb      a0,291(sp)
              #                    free a0
              #                    occupy a0 with temp_312_cmp_156_0
              #                    store to temp_312_cmp_156_0 in mem offset legal
    sb      a0,291(sp)
              #                    release a0 with temp_312_cmp_156_0
              #                    occupy a0 with temp_312_cmp_156_0
              #                    load from temp_312_cmp_156_0 in mem


    lb      a0,291(sp)
    bnez    a0, .branch_true_157
              #                    free a0
              #                    occupy a0 with temp_312_cmp_156_0
              #                    store to temp_312_cmp_156_0 in mem offset legal
    sb      a0,291(sp)
              #                    release a0 with temp_312_cmp_156_0
    j       .branch_false_157
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1232 label branch_true_157: 
.branch_true_157:
              #                     2598 untrack temp_312_cmp_156_0 
              #                     1280 (nop) 
              #                     1281 mu pos_0_30:1280 
              #                     1283 temp_327_ptr_of_buf_60_159 = GEP buf_60:Array:i32:[None] [Some(temp_311_value_from_ptr_156_0)] 
              #                    occupy a0 with temp_327_ptr_of_buf_60_159
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_311_value_from_ptr_156_0
              #                    load from temp_311_value_from_ptr_156_0 in mem


    lw      a4,292(sp)
    mv      a2, a4
              #                    free a4
              #                    occupy a4 with temp_311_value_from_ptr_156_0
              #                    store to temp_311_value_from_ptr_156_0 in mem offset legal
    sw      a4,292(sp)
              #                    release a4 with temp_311_value_from_ptr_156_0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a0
              #                    occupy a0 with temp_327_ptr_of_buf_60_159
              #                    store to temp_327_ptr_of_buf_60_159 in mem offset legal
    sd      a0,224(sp)
              #                    release a0 with temp_327_ptr_of_buf_60_159
              #                     1285 temp_328_ele_of_buf_60_159_0 = load temp_327_ptr_of_buf_60_159:ptr->i32 
              #                    occupy a0 with temp_327_ptr_of_buf_60_159
              #                    load from temp_327_ptr_of_buf_60_159 in mem
    ld      a0,224(sp)
              #                    occupy a2 with temp_328_ele_of_buf_60_159_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_328_ele_of_buf_60_159_0
              #                    store to temp_328_ele_of_buf_60_159_0 in mem offset legal
    sw      a2,220(sp)
              #                    release a2 with temp_328_ele_of_buf_60_159_0
              #                    free a0
              #                    occupy a0 with temp_327_ptr_of_buf_60_159
              #                    store to temp_327_ptr_of_buf_60_159 in mem offset legal
    sd      a0,224(sp)
              #                    release a0 with temp_327_ptr_of_buf_60_159
              #                     2606 untrack temp_327_ptr_of_buf_60_159 
              #                     1286 mu buf_60:1285 
              #                     1288 temp_329_cmp_159_0 = icmp i32 Eq temp_328_ele_of_buf_60_159_0, 43_0 
              #                    occupy a0 with temp_328_ele_of_buf_60_159_0
              #                    load from temp_328_ele_of_buf_60_159_0 in mem


    lw      a0,220(sp)
              #                    occupy a2 with 43_0
    li      a2, 43
              #                    occupy a4 with temp_329_cmp_159_0
    xor     a4,a0,a2
    seqz    a4, a4
              #                    free a0
              #                    occupy a0 with temp_328_ele_of_buf_60_159_0
              #                    store to temp_328_ele_of_buf_60_159_0 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with temp_328_ele_of_buf_60_159_0
              #                    free a2
              #                    free a4
              #                    occupy a4 with temp_329_cmp_159_0
              #                    store to temp_329_cmp_159_0 in mem offset legal
    sb      a4,219(sp)
              #                    release a4 with temp_329_cmp_159_0
              #                     2605 untrack temp_328_ele_of_buf_60_159_0 
              #                     1291 br i1 temp_329_cmp_159_0, label branch_true_160, label branch_false_160 
              #                    occupy a0 with temp_329_cmp_159_0
              #                    load from temp_329_cmp_159_0 in mem


    lb      a0,219(sp)
              #                    free a0
              #                    occupy a0 with temp_329_cmp_159_0
              #                    store to temp_329_cmp_159_0 in mem offset legal
    sb      a0,219(sp)
              #                    release a0 with temp_329_cmp_159_0
              #                    occupy a0 with temp_329_cmp_159_0
              #                    load from temp_329_cmp_159_0 in mem


    lb      a0,219(sp)
    bnez    a0, .branch_true_160
              #                    free a0
              #                    occupy a0 with temp_329_cmp_159_0
              #                    store to temp_329_cmp_159_0 in mem offset legal
    sb      a0,219(sp)
              #                    release a0 with temp_329_cmp_159_0
    j       .branch_false_160
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1289 label branch_true_160: 
.branch_true_160:
              #                     2607 untrack temp_329_cmp_159_0 
              #                     443  (nop) 
              #                     444  mu pos_0_30:443 
              #                     446  temp_87_arithop_161_0 = Add i32 temp_311_value_from_ptr_156_0, 1_0 
              #                    occupy a0 with temp_311_value_from_ptr_156_0
              #                    load from temp_311_value_from_ptr_156_0 in mem


    lw      a0,292(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_87_arithop_161_0
    ADDW    a4,a0,a2
              #                    free a0
              #                    occupy a0 with temp_311_value_from_ptr_156_0
              #                    store to temp_311_value_from_ptr_156_0 in mem offset legal
    sw      a0,292(sp)
              #                    release a0 with temp_311_value_from_ptr_156_0
              #                    free a2
              #                    free a4
              #                    occupy a4 with temp_87_arithop_161_0
              #                    store to temp_87_arithop_161_0 in mem offset legal
    sw      a4,1224(sp)
              #                    release a4 with temp_87_arithop_161_0
              #                     2612 untrack temp_311_value_from_ptr_156_0 
              #                     447  store temp_87_arithop_161_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a2 with temp_87_arithop_161_0
              #                    load from temp_87_arithop_161_0 in mem


    lw      a2,1224(sp)
    sw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_87_arithop_161_0
              #                    store to temp_87_arithop_161_0 in mem offset legal
    sw      a2,1224(sp)
              #                    release a2 with temp_87_arithop_161_0
              #                    free a0
              #                     2611 untrack temp_87_arithop_161_0 
              #                     448  pos_0_31 = chi pos_0_30:447 
              #                          jump label: branch_false_160 
    j       .branch_false_160
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1290 label branch_false_160: 
.branch_false_160:
              #                     2610 untrack temp_87_arithop_161_0 
              #                     2609 untrack temp_329_cmp_159_0 
              #                     2608 untrack temp_311_value_from_ptr_156_0 
              #                          jump label: branch_false_157 
    j       .branch_false_157
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1233 label branch_false_157: 
.branch_false_157:
              #                     2604 untrack temp_328_ele_of_buf_60_159_0 
              #                     2603 untrack temp_311_value_from_ptr_156_0 
              #                     2602 untrack temp_327_ptr_of_buf_60_159 
              #                     2601 untrack temp_87_arithop_161_0 
              #                     2600 untrack temp_329_cmp_159_0 
              #                     2599 untrack temp_312_cmp_156_0 
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     1236 temp_313_value_from_ptr_163_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a2 with temp_313_value_from_ptr_163_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_313_value_from_ptr_163_0
              #                    store to temp_313_value_from_ptr_163_0 in mem offset legal
    sw      a2,284(sp)
              #                    release a2 with temp_313_value_from_ptr_163_0
              #                    free a0
              #                     1237 mu pos_0_33:1236 
              #                     1239 temp_314_cmp_163_0 = icmp i32 Slt temp_313_value_from_ptr_163_0, len_60_0 
              #                    occupy a0 with temp_313_value_from_ptr_163_0
              #                    load from temp_313_value_from_ptr_163_0 in mem


    lw      a0,284(sp)
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a4 with temp_314_cmp_163_0
    slt     a4,a0,a2
              #                    free a0
              #                    occupy a0 with temp_313_value_from_ptr_163_0
              #                    store to temp_313_value_from_ptr_163_0 in mem offset legal
    sw      a0,284(sp)
              #                    release a0 with temp_313_value_from_ptr_163_0
              #                    free a2
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    free a4
              #                    occupy a4 with temp_314_cmp_163_0
              #                    store to temp_314_cmp_163_0 in mem offset legal
    sb      a4,283(sp)
              #                    release a4 with temp_314_cmp_163_0
              #                     1242 br i1 temp_314_cmp_163_0, label branch_true_164, label branch_false_164 
              #                    occupy a0 with temp_314_cmp_163_0
              #                    load from temp_314_cmp_163_0 in mem


    lb      a0,283(sp)
              #                    free a0
              #                    occupy a0 with temp_314_cmp_163_0
              #                    store to temp_314_cmp_163_0 in mem offset legal
    sb      a0,283(sp)
              #                    release a0 with temp_314_cmp_163_0
              #                    occupy a0 with temp_314_cmp_163_0
              #                    load from temp_314_cmp_163_0 in mem


    lb      a0,283(sp)
    bnez    a0, .branch_true_164
              #                    free a0
              #                    occupy a0 with temp_314_cmp_163_0
              #                    store to temp_314_cmp_163_0 in mem offset legal
    sb      a0,283(sp)
              #                    release a0 with temp_314_cmp_163_0
    j       .branch_false_164
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1240 label branch_true_164: 
.branch_true_164:
              #                     2613 untrack temp_314_cmp_163_0 
              #                     1267 (nop) 
              #                     1268 mu pos_0_33:1267 
              #                     1270 temp_323_ptr_of_buf_60_166 = GEP buf_60:Array:i32:[None] [Some(temp_313_value_from_ptr_163_0)] 
              #                    occupy a0 with temp_323_ptr_of_buf_60_166
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_313_value_from_ptr_163_0
              #                    load from temp_313_value_from_ptr_163_0 in mem


    lw      a4,284(sp)
    mv      a2, a4
              #                    free a4
              #                    occupy a4 with temp_313_value_from_ptr_163_0
              #                    store to temp_313_value_from_ptr_163_0 in mem offset legal
    sw      a4,284(sp)
              #                    release a4 with temp_313_value_from_ptr_163_0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a0
              #                    occupy a0 with temp_323_ptr_of_buf_60_166
              #                    store to temp_323_ptr_of_buf_60_166 in mem offset legal
    sd      a0,240(sp)
              #                    release a0 with temp_323_ptr_of_buf_60_166
              #                     1272 temp_324_ele_of_buf_60_166_0 = load temp_323_ptr_of_buf_60_166:ptr->i32 
              #                    occupy a0 with temp_323_ptr_of_buf_60_166
              #                    load from temp_323_ptr_of_buf_60_166 in mem
    ld      a0,240(sp)
              #                    occupy a2 with temp_324_ele_of_buf_60_166_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_324_ele_of_buf_60_166_0
              #                    store to temp_324_ele_of_buf_60_166_0 in mem offset legal
    sw      a2,236(sp)
              #                    release a2 with temp_324_ele_of_buf_60_166_0
              #                    free a0
              #                    occupy a0 with temp_323_ptr_of_buf_60_166
              #                    store to temp_323_ptr_of_buf_60_166 in mem offset legal
    sd      a0,240(sp)
              #                    release a0 with temp_323_ptr_of_buf_60_166
              #                     2620 untrack temp_323_ptr_of_buf_60_166 
              #                     1273 mu buf_60:1272 
              #                     1275 temp_325_cmp_166_0 = icmp i32 Eq temp_324_ele_of_buf_60_166_0, 45_0 
              #                    occupy a0 with temp_324_ele_of_buf_60_166_0
              #                    load from temp_324_ele_of_buf_60_166_0 in mem


    lw      a0,236(sp)
              #                    occupy a2 with 45_0
    li      a2, 45
              #                    occupy a4 with temp_325_cmp_166_0
    xor     a4,a0,a2
    seqz    a4, a4
              #                    free a0
              #                    occupy a0 with temp_324_ele_of_buf_60_166_0
              #                    store to temp_324_ele_of_buf_60_166_0 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with temp_324_ele_of_buf_60_166_0
              #                    free a2
              #                    free a4
              #                    occupy a4 with temp_325_cmp_166_0
              #                    store to temp_325_cmp_166_0 in mem offset legal
    sb      a4,235(sp)
              #                    release a4 with temp_325_cmp_166_0
              #                     2621 untrack temp_324_ele_of_buf_60_166_0 
              #                     1278 br i1 temp_325_cmp_166_0, label branch_true_167, label branch_false_167 
              #                    occupy a0 with temp_325_cmp_166_0
              #                    load from temp_325_cmp_166_0 in mem


    lb      a0,235(sp)
              #                    free a0
              #                    occupy a0 with temp_325_cmp_166_0
              #                    store to temp_325_cmp_166_0 in mem offset legal
    sb      a0,235(sp)
              #                    release a0 with temp_325_cmp_166_0
              #                    occupy a0 with temp_325_cmp_166_0
              #                    load from temp_325_cmp_166_0 in mem


    lb      a0,235(sp)
    bnez    a0, .branch_true_167
              #                    free a0
              #                    occupy a0 with temp_325_cmp_166_0
              #                    store to temp_325_cmp_166_0 in mem offset legal
    sb      a0,235(sp)
              #                    release a0 with temp_325_cmp_166_0
    j       .branch_false_167
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1276 label branch_true_167: 
.branch_true_167:
              #                     2622 untrack temp_325_cmp_166_0 
              #                     436  (nop) 
              #                     437  mu pos_0_33:436 
              #                     439  temp_85_arithop_168_0 = Add i32 temp_313_value_from_ptr_163_0, 1_0 
              #                    occupy a0 with temp_313_value_from_ptr_163_0
              #                    load from temp_313_value_from_ptr_163_0 in mem


    lw      a0,284(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_85_arithop_168_0
    ADDW    a4,a0,a2
              #                    free a0
              #                    occupy a0 with temp_313_value_from_ptr_163_0
              #                    store to temp_313_value_from_ptr_163_0 in mem offset legal
    sw      a0,284(sp)
              #                    release a0 with temp_313_value_from_ptr_163_0
              #                    free a2
              #                    free a4
              #                    occupy a4 with temp_85_arithop_168_0
              #                    store to temp_85_arithop_168_0 in mem offset legal
    sw      a4,1228(sp)
              #                    release a4 with temp_85_arithop_168_0
              #                     2626 untrack temp_313_value_from_ptr_163_0 
              #                     440  store temp_85_arithop_168_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a2 with temp_85_arithop_168_0
              #                    load from temp_85_arithop_168_0 in mem


    lw      a2,1228(sp)
    sw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_85_arithop_168_0
              #                    store to temp_85_arithop_168_0 in mem offset legal
    sw      a2,1228(sp)
              #                    release a2 with temp_85_arithop_168_0
              #                    free a0
              #                     2627 untrack temp_85_arithop_168_0 
              #                     441  pos_0_34 = chi pos_0_33:440 
              #                          jump label: branch_false_167 
    j       .branch_false_167
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1277 label branch_false_167: 
.branch_false_167:
              #                     2625 untrack temp_85_arithop_168_0 
              #                     2624 untrack temp_313_value_from_ptr_163_0 
              #                     2623 untrack temp_325_cmp_166_0 
              #                          jump label: branch_false_164 
    j       .branch_false_164
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1241 label branch_false_164: 
.branch_false_164:
              #                     2619 untrack temp_313_value_from_ptr_163_0 
              #                     2618 untrack temp_324_ele_of_buf_60_166_0 
              #                     2617 untrack temp_323_ptr_of_buf_60_166 
              #                     2616 untrack temp_85_arithop_168_0 
              #                     2615 untrack temp_314_cmp_163_0 
              #                     2614 untrack temp_325_cmp_166_0 
              #                          jump label: while.head_171 
    j       .while.head_171
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1248 label while.head_171: 
.while.head_171:
              #                     1244 temp_315_value_from_ptr_170_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a2 with temp_315_value_from_ptr_170_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_315_value_from_ptr_170_0
              #                    store to temp_315_value_from_ptr_170_0 in mem offset legal
    sw      a2,276(sp)
              #                    release a2 with temp_315_value_from_ptr_170_0
              #                    free a0
              #                     1245 mu pos_0_37:1244 
              #                     1247 temp_316_cmp_170_0 = icmp i32 Slt temp_315_value_from_ptr_170_0, len_60_0 
              #                    occupy a0 with temp_315_value_from_ptr_170_0
              #                    load from temp_315_value_from_ptr_170_0 in mem


    lw      a0,276(sp)
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a4 with temp_316_cmp_170_0
    slt     a4,a0,a2
              #                    free a0
              #                    occupy a0 with temp_315_value_from_ptr_170_0
              #                    store to temp_315_value_from_ptr_170_0 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with temp_315_value_from_ptr_170_0
              #                    free a2
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    free a4
              #                    occupy a4 with temp_316_cmp_170_0
              #                    store to temp_316_cmp_170_0 in mem offset legal
    sb      a4,275(sp)
              #                    release a4 with temp_316_cmp_170_0
              #                     1250 br i1 temp_316_cmp_170_0, label while.body_171, label branch_false_153 
              #                    occupy a0 with temp_316_cmp_170_0
              #                    load from temp_316_cmp_170_0 in mem


    lb      a0,275(sp)
              #                    free a0
              #                    occupy a0 with temp_316_cmp_170_0
              #                    store to temp_316_cmp_170_0 in mem offset legal
    sb      a0,275(sp)
              #                    release a0 with temp_316_cmp_170_0
              #                    occupy a0 with temp_316_cmp_170_0
              #                    load from temp_316_cmp_170_0 in mem


    lb      a0,275(sp)
    bnez    a0, .while.body_171
              #                    free a0
              #                    occupy a0 with temp_316_cmp_170_0
              #                    store to temp_316_cmp_170_0 in mem offset legal
    sb      a0,275(sp)
              #                    release a0 with temp_316_cmp_170_0
              #                    occupy a4 with temp_310_cmp_152_0
              #                    load from temp_310_cmp_152_0 in mem


    lb      a4,299(sp)
    j       .branch_false_153
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1249 label while.body_171: 
.while.body_171:
              #                     1252 (nop) 
              #                     1253 mu pos_0_37:1252 
              #                     1255 temp_318_ptr_of_buf_60_173 = GEP buf_60:Array:i32:[None] [Some(temp_315_value_from_ptr_170_0)] 
              #                    occupy a0 with temp_318_ptr_of_buf_60_173
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_315_value_from_ptr_170_0
              #                    load from temp_315_value_from_ptr_170_0 in mem


    lw      a4,276(sp)
    mv      a2, a4
              #                    free a4
              #                    occupy a4 with temp_315_value_from_ptr_170_0
              #                    store to temp_315_value_from_ptr_170_0 in mem offset legal
    sw      a4,276(sp)
              #                    release a4 with temp_315_value_from_ptr_170_0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a0
              #                    occupy a0 with temp_318_ptr_of_buf_60_173
              #                    store to temp_318_ptr_of_buf_60_173 in mem offset legal
    sd      a0,264(sp)
              #                    release a0 with temp_318_ptr_of_buf_60_173
              #                     1257 temp_319_ele_of_buf_60_173_0 = load temp_318_ptr_of_buf_60_173:ptr->i32 
              #                    occupy a0 with temp_318_ptr_of_buf_60_173
              #                    load from temp_318_ptr_of_buf_60_173 in mem
    ld      a0,264(sp)
              #                    occupy a2 with temp_319_ele_of_buf_60_173_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_319_ele_of_buf_60_173_0
              #                    store to temp_319_ele_of_buf_60_173_0 in mem offset legal
    sw      a2,260(sp)
              #                    release a2 with temp_319_ele_of_buf_60_173_0
              #                    free a0
              #                    occupy a0 with temp_318_ptr_of_buf_60_173
              #                    store to temp_318_ptr_of_buf_60_173 in mem offset legal
    sd      a0,264(sp)
              #                    release a0 with temp_318_ptr_of_buf_60_173
              #                     1258 mu buf_60:1257 
              #                     1260 temp_320_ret_of_is_number_173_0 =  Call i32 is_number_0(temp_319_ele_of_buf_60_173_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_301_value_from_ptr_128_0
              #                    store to temp_301_value_from_ptr_128_0 in mem offset legal
    sw      a1,328(sp)
              #                    release a1 with temp_301_value_from_ptr_128_0
              #                    occupy a3 with temp_302_cmp_128_0
              #                    store to temp_302_cmp_128_0 in mem offset legal
    sb      a3,327(sp)
              #                    release a3 with temp_302_cmp_128_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_319_ele_of_buf_60_173_0_0
              #                    load from temp_319_ele_of_buf_60_173_0 in mem


    lw      a0,260(sp)
              #                    arg load ended


    call    is_number
              #                     1262 temp_321_cmp_173_0 = icmp i32 Ne temp_320_ret_of_is_number_173_0, 1_0 
              #                    occupy a0 with temp_320_ret_of_is_number_173_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_321_cmp_173_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_320_ret_of_is_number_173_0
              #                    store to temp_320_ret_of_is_number_173_0 in mem offset legal
    sw      a0,256(sp)
              #                    release a0 with temp_320_ret_of_is_number_173_0
              #                    free a1
              #                    free a2
              #                     1265 br i1 temp_321_cmp_173_0, label branch_true_174, label branch_false_174 
              #                    occupy a2 with temp_321_cmp_173_0
              #                    free a2
              #                    occupy a2 with temp_321_cmp_173_0
    bnez    a2, .branch_true_174
              #                    free a2
    j       .branch_false_174
              #                    regtab     a2:Freed { symidx: temp_321_cmp_173_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1263 label branch_true_174: 
.branch_true_174:
              #                     2636 untrack temp_315_value_from_ptr_170_0 
              #                     2635 untrack temp_83_arithop_172_0 
              #                     2634 untrack temp_321_cmp_173_0 
              #                    occupy a2 with temp_321_cmp_173_0
              #                    release a2 with temp_321_cmp_173_0
              #                     2633 untrack temp_318_ptr_of_buf_60_173 
              #                     2632 untrack temp_316_cmp_170_0 
              #                     2631 untrack temp_320_ret_of_is_number_173_0 
              #                     2630 untrack temp_319_ele_of_buf_60_173_0 
              #                          jump label: branch_false_153 
              #                    occupy a3 with temp_302_cmp_128_0
              #                    load from temp_302_cmp_128_0 in mem


    lb      a3,327(sp)
              #                    occupy a4 with temp_310_cmp_152_0
              #                    load from temp_310_cmp_152_0 in mem


    lb      a4,299(sp)
              #                    occupy a1 with temp_301_value_from_ptr_128_0
              #                    load from temp_301_value_from_ptr_128_0 in mem


    lw      a1,328(sp)
    j       .branch_false_153
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |     a4:Freed { symidx: temp_310_cmp_152_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1225 label branch_false_153: 
.branch_false_153:
              #                     2629 untrack buf_60 
              #                     2628 untrack len_60_0 
              #                     2595 untrack temp_305_value_from_ptr_149_0 
              #                     2594 untrack temp_81_arithop_154_0 
              #                     2593 untrack temp_327_ptr_of_buf_60_159 
              #                     2592 untrack temp_310_cmp_152_0 
              #                    occupy a4 with temp_310_cmp_152_0
              #                    release a4 with temp_310_cmp_152_0
              #                     2591 untrack temp_325_cmp_166_0 
              #                     2590 untrack temp_87_arithop_161_0 
              #                     2589 untrack temp_311_value_from_ptr_156_0 
              #                     2588 untrack temp_312_cmp_156_0 
              #                     2587 untrack temp_328_ele_of_buf_60_159_0 
              #                     2586 untrack temp_329_cmp_159_0 
              #                     2585 untrack temp_323_ptr_of_buf_60_166 
              #                     2584 untrack buf_60 
              #                     2583 untrack len_60_0 
              #                     2582 untrack temp_324_ele_of_buf_60_166_0 
              #                     2581 untrack temp_314_cmp_163_0 
              #                     2580 untrack temp_85_arithop_168_0 
              #                     2579 untrack temp_313_value_from_ptr_163_0 
              #                          jump label: branch_false_150 
              #                    occupy a4 with temp_306_cmp_149_0
              #                    load from temp_306_cmp_149_0 in mem


    lb      a4,319(sp)
    j       .branch_false_150
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |     a4:Freed { symidx: temp_306_cmp_149_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1212 label branch_false_150: 
.branch_false_150:
              #                     2575 untrack temp_325_cmp_166_0 
              #                     2574 untrack temp_329_cmp_159_0 
              #                     2573 untrack temp_310_cmp_152_0 
              #                     2572 untrack temp_311_value_from_ptr_156_0 
              #                     2571 untrack temp_323_ptr_of_buf_60_166 
              #                     2570 untrack temp_313_value_from_ptr_163_0 
              #                     2569 untrack temp_308_ptr_of_buf_60_152 
              #                     2568 untrack temp_87_arithop_161_0 
              #                     2567 untrack temp_327_ptr_of_buf_60_159 
              #                     2566 untrack temp_314_cmp_163_0 
              #                     2565 untrack temp_328_ele_of_buf_60_159_0 
              #                     2564 untrack len_60_0 
              #                     2563 untrack temp_305_value_from_ptr_149_0 
              #                     2562 untrack temp_309_ele_of_buf_60_152_0 
              #                     2561 untrack temp_324_ele_of_buf_60_166_0 
              #                     2560 untrack temp_306_cmp_149_0 
              #                    occupy a4 with temp_306_cmp_149_0
              #                    release a4 with temp_306_cmp_149_0
              #                     2559 untrack temp_312_cmp_156_0 
              #                     2558 untrack temp_81_arithop_154_0 
              #                     2557 untrack temp_85_arithop_168_0 
              #                     2556 untrack buf_60 
              #                          jump label: gather_264 
    j       .gather_264
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     582  label gather_264: 
.gather_264:
              #                          jump label: gather_266 
    j       .gather_266
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     583  label gather_266: 
.gather_266:
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a1:Freed { symidx: temp_301_value_from_ptr_128_0, tracked: true } |     a3:Freed { symidx: temp_302_cmp_128_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     1557 mu pos_0_43:152 
              #                     152  ret 1_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_321_cmp_173_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1264 label branch_false_174: 
.branch_false_174:
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a2:Freed { symidx: temp_321_cmp_173_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     429  (nop) 
              #                     430  mu pos_0_37:429 
              #                     432  temp_83_arithop_172_0 = Add i32 temp_315_value_from_ptr_170_0, 1_0 
              #                    occupy a0 with temp_315_value_from_ptr_170_0
              #                    load from temp_315_value_from_ptr_170_0 in mem


    lw      a0,276(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_83_arithop_172_0
    ADDW    a3,a0,a1
              #                    free a0
              #                    occupy a0 with temp_315_value_from_ptr_170_0
              #                    store to temp_315_value_from_ptr_170_0 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with temp_315_value_from_ptr_170_0
              #                    free a1
              #                    free a3
              #                    occupy a3 with temp_83_arithop_172_0
              #                    store to temp_83_arithop_172_0 in mem offset legal
    sw      a3,1232(sp)
              #                    release a3 with temp_83_arithop_172_0
              #                     433  store temp_83_arithop_172_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_83_arithop_172_0
              #                    load from temp_83_arithop_172_0 in mem


    lw      a1,1232(sp)
    sw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_83_arithop_172_0
              #                    store to temp_83_arithop_172_0 in mem offset legal
    sw      a1,1232(sp)
              #                    release a1 with temp_83_arithop_172_0
              #                    free a0
              #                     434  pos_0_38 = chi pos_0_37:433 
              #                          jump label: while.head_171 
              #                    occupy a3 with temp_302_cmp_128_0
              #                    load from temp_302_cmp_128_0 in mem


    lb      a3,327(sp)
              #                    occupy a2 with temp_321_cmp_173_0
              #                    store to temp_321_cmp_173_0 in mem offset legal
    sb      a2,255(sp)
              #                    release a2 with temp_321_cmp_173_0
              #                    occupy a1 with temp_301_value_from_ptr_128_0
              #                    load from temp_301_value_from_ptr_128_0 in mem


    lw      a1,328(sp)
    j       .while.head_171
              #                    regtab     a2:Freed { symidx: temp_340_cmp_145_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1326 label branch_false_146: 
.branch_false_146:
              #                     2554 untrack temp_321_cmp_173_0 
              #                     2553 untrack temp_315_value_from_ptr_170_0 
              #                     2552 untrack temp_83_arithop_172_0 
              #                     2551 untrack temp_316_cmp_170_0 
              #                     2550 untrack temp_319_ele_of_buf_60_173_0 
              #                     2549 untrack temp_318_ptr_of_buf_60_173 
              #                     2548 untrack temp_320_ret_of_is_number_173_0 
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a2:Freed { symidx: temp_340_cmp_145_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     457  (nop) 
              #                     458  mu pos_0_26:457 
              #                     460  temp_91_arithop_144_0 = Add i32 temp_334_value_from_ptr_142_0, 1_0 
              #                    occupy a0 with temp_334_value_from_ptr_142_0
              #                    load from temp_334_value_from_ptr_142_0 in mem


    lw      a0,196(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_91_arithop_144_0
    ADDW    a3,a0,a1
              #                    free a0
              #                    occupy a0 with temp_334_value_from_ptr_142_0
              #                    store to temp_334_value_from_ptr_142_0 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with temp_334_value_from_ptr_142_0
              #                    free a1
              #                    free a3
              #                    occupy a3 with temp_91_arithop_144_0
              #                    store to temp_91_arithop_144_0 in mem offset legal
    sw      a3,1216(sp)
              #                    release a3 with temp_91_arithop_144_0
              #                     461  store temp_91_arithop_144_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_91_arithop_144_0
              #                    load from temp_91_arithop_144_0 in mem


    lw      a1,1216(sp)
    sw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_91_arithop_144_0
              #                    store to temp_91_arithop_144_0 in mem offset legal
    sw      a1,1216(sp)
              #                    release a1 with temp_91_arithop_144_0
              #                    free a0
              #                     462  pos_0_27 = chi pos_0_26:461 
              #                          jump label: while.head_143 
              #                    occupy a3 with temp_302_cmp_128_0
              #                    load from temp_302_cmp_128_0 in mem


    lb      a3,327(sp)
              #                    occupy a2 with temp_340_cmp_145_0
              #                    store to temp_340_cmp_145_0 in mem offset legal
    sb      a2,175(sp)
              #                    release a2 with temp_340_cmp_145_0
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
    j       .while.head_143
              #                    regtab     a0:Freed { symidx: temp_344_ret_of_is_number_131_0, tracked: true } |     a2:Freed { symidx: temp_345_cmp_131_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1341 label branch_false_132: 
.branch_false_132:
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab     a0:Freed { symidx: temp_344_ret_of_is_number_131_0, tracked: true } |     a2:Freed { symidx: temp_345_cmp_131_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L12_0: 
.L12_0:
              #                     464  (nop) 
              #                     465  mu pos_0_23:464 
              #                     467  temp_93_arithop_130_0 = Add i32 temp_301_value_from_ptr_128_0, 1_0 
              #                    occupy a1 with temp_301_value_from_ptr_128_0
              #                    load from temp_301_value_from_ptr_128_0 in mem


    lw      a1,328(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_93_arithop_130_0
    ADDW    a4,a1,a3
              #                    free a1
              #                    occupy a1 with temp_301_value_from_ptr_128_0
              #                    store to temp_301_value_from_ptr_128_0 in mem offset legal
    sw      a1,328(sp)
              #                    release a1 with temp_301_value_from_ptr_128_0
              #                    free a3
              #                    free a4
              #                    occupy a4 with temp_93_arithop_130_0
              #                    store to temp_93_arithop_130_0 in mem offset legal
    sw      a4,1212(sp)
              #                    release a4 with temp_93_arithop_130_0
              #                     468  store temp_93_arithop_130_0:i32 *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a3 with temp_93_arithop_130_0
              #                    load from temp_93_arithop_130_0 in mem


    lw      a3,1212(sp)
    sw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_93_arithop_130_0
              #                    store to temp_93_arithop_130_0 in mem offset legal
    sw      a3,1212(sp)
              #                    release a3 with temp_93_arithop_130_0
              #                    free a1
              #                     469  pos_0_24 = chi pos_0_23:468 
              #                          jump label: while.head_129 
              #                    occupy a2 with temp_345_cmp_131_0
              #                    store to temp_345_cmp_131_0 in mem offset legal
    sb      a2,151(sp)
              #                    release a2 with temp_345_cmp_131_0
              #                    occupy a0 with temp_344_ret_of_is_number_131_0
              #                    store to temp_344_ret_of_is_number_131_0 in mem offset legal
    sw      a0,152(sp)
              #                    release a0 with temp_344_ret_of_is_number_131_0
    j       .while.head_129
              #                    regtab     a1:Freed { symidx: temp_286_value_from_ptr_112_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |     a5:Freed { symidx: temp_288_ele_of_buf_60_112_0, tracked: true } |     a6:Freed { symidx: temp_289_cmp_112_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1149 label branch_false_113: 
.branch_false_113:
              #                     2461 untrack temp_97_arithop_114_0 
              #                     2460 untrack temp_289_cmp_112_0 
              #                    occupy a6 with temp_289_cmp_112_0
              #                    release a6 with temp_289_cmp_112_0
              #                     1152 (nop) 
              #                     1153 mu pos_0_11:1152 
              #                     1155 (nop) 
              #                     1157 (nop) 
              #                     1158 mu buf_60:1157 
              #                     1160 temp_293_cmp_116_0 = icmp i32 Eq temp_288_ele_of_buf_60_112_0, 45_0 
              #                    occupy a5 with temp_288_ele_of_buf_60_112_0
              #                    occupy a0 with 45_0
    li      a0, 45
              #                    occupy a2 with temp_293_cmp_116_0
    xor     a2,a5,a0
    seqz    a2, a2
              #                    free a5
              #                    free a0
              #                    free a2
              #                     2637 untrack temp_288_ele_of_buf_60_112_0 
              #                    occupy a5 with temp_288_ele_of_buf_60_112_0
              #                    release a5 with temp_288_ele_of_buf_60_112_0
              #                     1163 br i1 temp_293_cmp_116_0, label branch_true_117, label branch_false_117 
              #                    occupy a2 with temp_293_cmp_116_0
              #                    free a2
              #                    occupy a2 with temp_293_cmp_116_0
    bnez    a2, .branch_true_117
              #                    free a2
    j       .branch_false_117
              #                    regtab     a1:Freed { symidx: temp_286_value_from_ptr_112_0, tracked: true } |     a2:Freed { symidx: temp_293_cmp_116_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1161 label branch_true_117: 
.branch_true_117:
              #                     2638 untrack temp_293_cmp_116_0 
              #                    occupy a2 with temp_293_cmp_116_0
              #                    release a2 with temp_293_cmp_116_0
              #                     475  (nop) 
              #                     476  mu pos_0_11:475 
              #                     478  temp_95_arithop_118_0 = Add i32 temp_286_value_from_ptr_112_0, 1_0 
              #                    occupy a1 with temp_286_value_from_ptr_112_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_95_arithop_118_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     2642 untrack temp_286_value_from_ptr_112_0 
              #                    occupy a1 with temp_286_value_from_ptr_112_0
              #                    release a1 with temp_286_value_from_ptr_112_0
              #                     479  store temp_95_arithop_118_0:i32 *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_95_arithop_118_0
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     2643 untrack temp_95_arithop_118_0 
              #                    occupy a2 with temp_95_arithop_118_0
              #                    release a2 with temp_95_arithop_118_0
              #                     480  pos_0_41 = chi pos_0_11:479 
              #                          jump label: branch_false_117 
              #                    occupy a2 with temp_293_cmp_116_0
              #                    load from temp_293_cmp_116_0 in mem


    lb      a2,367(sp)
              #                    occupy a1 with temp_286_value_from_ptr_112_0
              #                    load from temp_286_value_from_ptr_112_0 in mem


    lw      a1,392(sp)
    j       .branch_false_117
              #                    regtab     a1:Freed { symidx: temp_286_value_from_ptr_112_0, tracked: true } |     a2:Freed { symidx: temp_293_cmp_116_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1162 label branch_false_117: 
.branch_false_117:
              #                     2641 untrack temp_95_arithop_118_0 
              #                     2640 untrack temp_286_value_from_ptr_112_0 
              #                    occupy a1 with temp_286_value_from_ptr_112_0
              #                    release a1 with temp_286_value_from_ptr_112_0
              #                     2639 untrack temp_293_cmp_116_0 
              #                    occupy a2 with temp_293_cmp_116_0
              #                    release a2 with temp_293_cmp_116_0
              #                          jump label: gather_68 
    j       .gather_68
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_110_cmp_109_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     544  label branch_false_110: 
.branch_false_110:
              #                     2454 untrack temp_110_cmp_109_0 
              #                    occupy a2 with temp_110_cmp_109_0
              #                    release a2 with temp_110_cmp_109_0
              #                     2453 untrack temp_89_arithop_140_0 
              #                     2452 untrack temp_331_ptr_of_buf_60_138 
              #                     2451 untrack temp_298_ele_of_buf_60_124_0 
              #                     2450 untrack temp_95_arithop_118_0 
              #                     2449 untrack temp_293_cmp_116_0 
              #                     2448 untrack temp_300_cmp_124_0 
              #                     2447 untrack temp_87_arithop_161_0 
              #                     2446 untrack temp_287_ptr_of_buf_60_112 
              #                     2445 untrack temp_289_cmp_112_0 
              #                     2444 untrack temp_327_ptr_of_buf_60_159 
              #                     2443 untrack temp_294_value_from_ptr_120_0 
              #                     2442 untrack temp_305_value_from_ptr_149_0 
              #                     2441 untrack temp_312_cmp_156_0 
              #                     2440 untrack temp_97_arithop_114_0 
              #                     2439 untrack temp_286_value_from_ptr_112_0 
              #                     2438 untrack temp_314_cmp_163_0 
              #                     2437 untrack temp_323_ptr_of_buf_60_166 
              #                     2436 untrack temp_308_ptr_of_buf_60_152 
              #                     2435 untrack temp_325_cmp_166_0 
              #                     2434 untrack temp_288_ele_of_buf_60_112_0 
              #                     2433 untrack temp_329_cmp_159_0 
              #                     2432 untrack temp_313_value_from_ptr_163_0 
              #                     2431 untrack temp_297_ptr_of_buf_60_124 
              #                     2430 untrack temp_332_ele_of_buf_60_138_0 
              #                     2429 untrack temp_299_ret_of_is_number_124_0 
              #                     2428 untrack temp_81_arithop_154_0 
              #                     2427 untrack temp_324_ele_of_buf_60_166_0 
              #                     2426 untrack temp_309_ele_of_buf_60_152_0 
              #                     2425 untrack temp_306_cmp_149_0 
              #                     2424 untrack temp_85_arithop_168_0 
              #                     2423 untrack temp_333_cmp_138_0 
              #                     2422 untrack temp_328_ele_of_buf_60_159_0 
              #                     2421 untrack temp_295_cmp_120_0 
              #                     2420 untrack temp_311_value_from_ptr_156_0 
              #                     2419 untrack temp_310_cmp_152_0 
              #                     547  temp_111_cmp_177_0 = icmp i32 Eq type_60_0, 2_0 
              #                    occupy a0 with type_60_0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with temp_111_cmp_177_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     550  br i1 temp_111_cmp_177_0, label branch_true_178, label branch_false_178 
              #                    occupy a2 with temp_111_cmp_177_0
              #                    free a2
              #                    occupy a2 with temp_111_cmp_177_0
    bnez    a2, .branch_true_178
              #                    free a2
    j       .branch_false_178
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_111_cmp_177_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     548  label branch_true_178: 
.branch_true_178:
              #                     2777 untrack type_60_0 
              #                    occupy a0 with type_60_0
              #                    release a0 with type_60_0
              #                     2776 untrack temp_174_ptr_of_buf_60_353 
              #                     2775 untrack temp_190_ptr_of_buf_60_316 
              #                     2774 untrack temp_203_arithop_324_0 
              #                     2773 untrack temp_175_ele_of_buf_60_353_0 
              #                     2772 untrack temp_114_cmp_308_0 
              #                     2771 untrack temp_137_ptr_of_buf_60_378 
              #                     2770 untrack temp_47_array_init_ptr_310 
              #                     2769 untrack temp_191_ele_of_buf_60_316_0 
              #                     2768 untrack temp_51_arithop_310_0 
              #                     2767 untrack temp_41_array_init_ptr_335 
              #                     2766 untrack temp_250_value_from_ptr_207_0 
              #                     2765 untrack temp_166_arithop_349_0 
              #                     2764 untrack temp_71_arithop_212_0 
              #                     2763 untrack temp_171_ele_of_mFalse_335_353_0 
              #                     2762 untrack temp_49_array_init_ptr_310 
              #                     2761 untrack temp_116_cmp_362_0 
              #                     2760 untrack temp_215_cmp_245_0 
              #                     2759 untrack temp_48_array_init_ptr_310 
              #                     2758 untrack temp_123_ptr_of_buf_60_370 
              #                     2757 untrack temp_40_array_init_ptr_335 
              #                     2756 untrack temp_185_arithop_312_0 
              #                     2755 untrack temp_192_cmp_316_0 
              #                     2754 untrack temp_45_array_init_ptr_310 
              #                     2753 untrack temp_217_cmp_253_0 
              #                     2752 untrack temp_111_cmp_177_0 
              #                    occupy a2 with temp_111_cmp_177_0
              #                    release a2 with temp_111_cmp_177_0
              #                     2751 untrack temp_162_cmp_345_0 
              #                     2750 untrack temp_63_arithop_250_0 
              #                     2749 untrack temp_144_ptr_of_buf_60_382 
              #                     2748 untrack temp_36_arithop_364_0 
              #                     2747 untrack temp_263_cmp_235_0 
              #                     2746 untrack temp_176_cmp_353_0 
              #                     2745 untrack temp_233_ptr_of_buf_60_303 
              #                     2744 untrack temp_231_cmp_299_0 
              #                     2743 untrack temp_222_ele_of_buf_60_262_0 
              #                     2742 untrack temp_153_ptr_of_buf_60_341 
              #                     2741 untrack temp_57_arithop_242_0 
              #                     2740 untrack temp_147_value_from_ptr_337_0 
              #                     2739 untrack temp_127_ele_of_mNull_364_374_0 
              #                     2738 untrack temp_149_cmp_337_0 
              #                     2737 untrack temp_214_value_from_ptr_245_0 
              #                     2736 untrack temp_221_ptr_of_buf_60_262 
              #                     2735 untrack temp_65_arithop_204_0 
              #                     2734 untrack temp_212_ele_of_buf_60_328_0 
              #                     2733 untrack temp_151_ele_of_mFalse_335_341_0 
              #                     2732 untrack temp_188_ele_of_mTrue_310_316_0 
              #                     2731 untrack temp_31_array_init_ptr_364 
              #                     2730 untrack temp_261_ptr_of_buf_60_235 
              #                     2729 untrack temp_146_cmp_382_0 
              #                     2728 untrack temp_164_ele_of_mFalse_335_349_0 
              #                     2727 untrack temp_247_ptr_of_buf_60_248 
              #                     2726 untrack temp_34_array_init_ptr_364 
              #                     2725 untrack temp_224_ret_of_detect_item_268_0 
              #                     2724 untrack temp_218_value_from_ptr_258_0 
              #                     2723 untrack temp_161_ele_of_buf_60_345_0 
              #                     2722 untrack temp_129_arithop_374_0 
              #                     2721 untrack temp_37_array_init_ptr_335 
              #                     2720 untrack temp_136_arithop_378_0 
              #                     2719 untrack temp_117_value_from_ptr_366_0 
              #                     2718 untrack temp_235_cmp_303_0 
              #                     2717 untrack temp_125_cmp_370_0 
              #                     2716 untrack temp_223_cmp_262_0 
              #                     2715 untrack temp_52_value_from_ptr_242_0 
              #                     2714 untrack temp_33_array_init_ptr_364 
              #                     2713 untrack temp_159_arithop_345_0 
              #                     2712 untrack temp_39_array_init_ptr_335 
              #                     2711 untrack temp_199_cmp_320_0 
              #                     2710 untrack temp_53_arithop_242_0 
              #                     2709 untrack temp_230_value_from_ptr_299_0 
              #                     2708 untrack temp_258_value_from_ptr_231_0 
              #                     2707 untrack temp_181_ptr_of_buf_60_357 
              #                     2706 untrack temp_204_ptr_of_buf_60_324 
              #                     2705 untrack temp_160_ptr_of_buf_60_345 
              #                     2704 untrack temp_213_cmp_328_0 
              #                     2703 untrack temp_183_cmp_357_0 
              #                     2702 untrack temp_182_ele_of_buf_60_357_0 
              #                     2701 untrack temp_46_array_init_ptr_310 
              #                     2700 untrack temp_268_ele_of_buf_60_210_0 
              #                     2699 untrack temp_259_cmp_231_0 
              #                     2698 untrack temp_42_array_init_ptr_335 
              #                     2697 untrack temp_219_cmp_258_0 
              #                     2696 untrack temp_134_ele_of_mNull_364_378_0 
              #                     2695 untrack temp_115_cmp_333_0 
              #                     2694 untrack temp_119_cmp_366_0 
              #                     2693 untrack temp_206_cmp_324_0 
              #                     2692 untrack temp_148_arithop_337_0 
              #                     2691 untrack temp_44_arithop_335_0 
              #                     2690 untrack temp_64_value_from_ptr_204_0 
              #                     2689 untrack temp_198_ele_of_buf_60_320_0 
              #                     2688 untrack temp_121_ele_of_mNull_364_370_0 
              #                     2687 untrack temp_155_cmp_341_0 
              #                     2686 untrack temp_252_ret_of_detect_item_215_0 
              #                     2685 untrack temp_194_ele_of_mTrue_310_320_0 
              #                     2684 untrack temp_248_ele_of_buf_60_248_0 
              #                     2683 untrack temp_30_array_init_ptr_364 
              #                     2682 untrack temp_234_ele_of_buf_60_303_0 
              #                     2681 untrack temp_130_ptr_of_buf_60_374 
              #                     2680 untrack temp_167_ptr_of_buf_60_349 
              #                     2679 untrack temp_169_cmp_349_0 
              #                     2678 untrack temp_124_ele_of_buf_60_370_0 
              #                     2677 untrack temp_131_ele_of_buf_60_374_0 
              #                     2676 untrack temp_216_ret_of_detect_item_253_0 
              #                     2675 untrack temp_138_ele_of_buf_60_378_0 
              #                     2674 untrack temp_269_cmp_210_0 
              #                     2673 untrack temp_197_ptr_of_buf_60_320 
              #                     2672 untrack temp_139_cmp_378_0 
              #                     2671 untrack temp_267_ptr_of_buf_60_210 
              #                     2670 untrack temp_168_ele_of_buf_60_349_0 
              #                     2669 untrack temp_205_ele_of_buf_60_324_0 
              #                     2668 untrack temp_132_cmp_374_0 
              #                     2667 untrack temp_201_ele_of_mTrue_310_324_0 
              #                     2666 untrack temp_249_cmp_248_0 
              #                     2665 untrack temp_145_ele_of_buf_60_382_0 
              #                     2664 untrack temp_141_ele_of_mNull_364_382_0 
              #                     2663 untrack temp_112_cmp_202_0 
              #                     2662 untrack temp_55_arithop_242_0 
              #                     2661 untrack temp_173_arithop_353_0 
              #                     2660 untrack temp_38_array_init_ptr_335 
              #                     2659 untrack temp_67_arithop_204_0 
              #                     2658 untrack temp_208_ele_of_mTrue_310_328_0 
              #                     2657 untrack temp_186_cmp_312_0 
              #                     2656 untrack temp_118_arithop_366_0 
              #                     2655 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     2654 untrack temp_113_cmp_240_0 
              #                     2653 untrack temp_157_ele_of_mFalse_335_345_0 
              #                     2652 untrack temp_225_cmp_268_0 
              #                     2651 untrack temp_211_ptr_of_buf_60_328 
              #                     2650 untrack temp_196_arithop_320_0 
              #                     2649 untrack temp_32_array_init_ptr_364 
              #                     2648 untrack temp_184_value_from_ptr_312_0 
              #                     2647 untrack temp_154_ele_of_buf_60_341_0 
              #                     2646 untrack temp_253_cmp_215_0 
              #                     2645 untrack temp_251_cmp_207_0 
              #                     2644 untrack temp_262_ele_of_buf_60_235_0 
              #                     390  temp_72_value_from_ptr_179_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_72_value_from_ptr_179_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     391  mu pos_0_11:390 
              #                     393  temp_73_arithop_179_0 = Add i32 temp_72_value_from_ptr_179_0, 1_0 
              #                    occupy a1 with temp_72_value_from_ptr_179_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_73_arithop_179_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     2786 untrack temp_72_value_from_ptr_179_0 
              #                    occupy a1 with temp_72_value_from_ptr_179_0
              #                    release a1 with temp_72_value_from_ptr_179_0
              #                     394  store temp_73_arithop_179_0:i32 *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a3 with temp_73_arithop_179_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     2787 untrack temp_73_arithop_179_0 
              #                    occupy a3 with temp_73_arithop_179_0
              #                    release a3 with temp_73_arithop_179_0
              #                     395  pos_0_44 = chi pos_0_11:394 
              #                          jump label: while.head_182 
    j       .while.head_182
              #                    regtab  released_gpr_count:12,released_fpr_count:24
              #                     1085 label while.head_182: 
.while.head_182:
              #                     1081 temp_270_value_from_ptr_181_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_270_value_from_ptr_181_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     1082 mu pos_0_45:1081 
              #                     1084 temp_271_cmp_181_0 = icmp i32 Slt temp_270_value_from_ptr_181_0, len_60_0 
              #                    occupy a1 with temp_270_value_from_ptr_181_0
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a3 with temp_271_cmp_181_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     1088 br i1 temp_271_cmp_181_0, label while.body_182, label while.exit_182 
              #                    occupy a3 with temp_271_cmp_181_0
              #                    free a3
              #                    occupy a3 with temp_271_cmp_181_0
    bnez    a3, .while.body_182
              #                    free a3
    j       .while.exit_182
              #                    regtab     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     1086 label while.body_182: 
.while.body_182:
              #                     1112 (nop) 
              #                     1113 mu pos_0_45:1112 
              #                     1115 temp_279_ptr_of_buf_60_184 = GEP buf_60:Array:i32:[None] [Some(temp_270_value_from_ptr_181_0)] 
              #                    occupy a0 with temp_279_ptr_of_buf_60_184
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_270_value_from_ptr_181_0
    mv      a4, a1
              #                    free a1
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
              #                    occupy a5 with buf_60
              #                    load from buf_60 in mem
    ld      a5,1512(sp)
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     1117 temp_280_ele_of_buf_60_184_0 = load temp_279_ptr_of_buf_60_184:ptr->i32 
              #                    occupy a0 with temp_279_ptr_of_buf_60_184
              #                    occupy a6 with temp_280_ele_of_buf_60_184_0
    lw      a6,0(a0)
              #                    free a6
              #                    occupy a6 with temp_280_ele_of_buf_60_184_0
              #                    store to temp_280_ele_of_buf_60_184_0 in mem offset legal
    sw      a6,412(sp)
              #                    release a6 with temp_280_ele_of_buf_60_184_0
              #                    free a0
              #                     1118 mu buf_60:1117 
              #                     1120 temp_281_cmp_184_0 = icmp i32 Eq temp_280_ele_of_buf_60_184_0, 34_0 
              #                    occupy a6 with temp_280_ele_of_buf_60_184_0
              #                    load from temp_280_ele_of_buf_60_184_0 in mem


    lw      a6,412(sp)
              #                    occupy a7 with 34_0
    li      a7, 34
              #                    occupy s1 with temp_281_cmp_184_0
    xor     s1,a6,a7
    seqz    s1, s1
              #                    free a6
              #                    occupy a6 with temp_280_ele_of_buf_60_184_0
              #                    store to temp_280_ele_of_buf_60_184_0 in mem offset legal
    sw      a6,412(sp)
              #                    release a6 with temp_280_ele_of_buf_60_184_0
              #                    free a7
              #                    free s1
              #                    occupy s1 with temp_281_cmp_184_0
              #                    store to temp_281_cmp_184_0 in mem offset legal
    sb      s1,411(sp)
              #                    release s1 with temp_281_cmp_184_0
              #                     1123 br i1 temp_281_cmp_184_0, label branch_true_185, label branch_false_185 
              #                    occupy a6 with temp_281_cmp_184_0
              #                    load from temp_281_cmp_184_0 in mem


    lb      a6,411(sp)
              #                    free a6
              #                    occupy a6 with temp_281_cmp_184_0
              #                    store to temp_281_cmp_184_0 in mem offset legal
    sb      a6,411(sp)
              #                    release a6 with temp_281_cmp_184_0
              #                    occupy a4 with temp_281_cmp_184_0
              #                    load from temp_281_cmp_184_0 in mem


    lb      a4,411(sp)
    bnez    a4, .branch_true_185
              #                    free a4
              #                    occupy a4 with temp_281_cmp_184_0
              #                    store to temp_281_cmp_184_0 in mem offset legal
    sb      a4,411(sp)
              #                    release a4 with temp_281_cmp_184_0
    j       .branch_false_185
              #                    regtab     a0:Freed { symidx: temp_279_ptr_of_buf_60_184, tracked: true } |     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |     a5:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1121 label branch_true_185: 
.branch_true_185:
              #                     2794 untrack temp_279_ptr_of_buf_60_184 
              #                    occupy a0 with temp_279_ptr_of_buf_60_184
              #                    release a0 with temp_279_ptr_of_buf_60_184
              #                     2793 untrack temp_79_arithop_189_0 
              #                     2792 untrack temp_281_cmp_184_0 
              #                     2791 untrack temp_285_cmp_187_0 
              #                     2790 untrack temp_77_arithop_191_0 
              #                     2789 untrack temp_271_cmp_181_0 
              #                    occupy a3 with temp_271_cmp_181_0
              #                    release a3 with temp_271_cmp_181_0
              #                     2788 untrack temp_280_ele_of_buf_60_184_0 
              #                          jump label: while.exit_182 
              #                    occupy a3 with temp_271_cmp_181_0
              #                    load from temp_271_cmp_181_0 in mem


    lb      a3,443(sp)
              #                    occupy a5 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a5,1512(sp)
              #                    release a5 with buf_60
    j       .while.exit_182
              #                    regtab     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     1087 label while.exit_182: 
.while.exit_182:
              #                     1090 (nop) 
              #                     1091 mu pos_0_45:1090 
              #                     1093 temp_273_cmp_193_0 = icmp i32 Sge temp_270_value_from_ptr_181_0, len_60_0 
              #                    occupy a1 with temp_270_value_from_ptr_181_0
              #                    occupy a2 with len_60_0
              #                    occupy a0 with temp_273_cmp_193_0
    slt     a0,a1,a2
    xori    a0,a0,1
              #                    free a1
              #                    free a2
              #                    free a0
              #                     2795 untrack len_60_0 
              #                    occupy a2 with len_60_0
              #                    release a2 with len_60_0
              #                     1096 br i1 temp_273_cmp_193_0, label branch_true_194, label branch_false_194 
              #                    occupy a0 with temp_273_cmp_193_0
              #                    free a0
              #                    occupy a0 with temp_273_cmp_193_0
    bnez    a0, .branch_true_194
              #                    free a0
    j       .branch_false_194
              #                    regtab     a0:Freed { symidx: temp_273_cmp_193_0, tracked: true } |     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     1094 label branch_true_194: 
.branch_true_194:
              #                     2801 untrack temp_276_ele_of_buf_60_197_0 
              #                     2800 untrack temp_75_arithop_179_0 
              #                     2799 untrack buf_60 
              #                     2798 untrack temp_275_ptr_of_buf_60_197 
              #                     2797 untrack temp_273_cmp_193_0 
              #                    occupy a0 with temp_273_cmp_193_0
              #                    release a0 with temp_273_cmp_193_0
              #                     2796 untrack temp_277_cmp_197_0 
              #                     1558 mu pos_0_45:406 
              #                     406  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_273_cmp_193_0, tracked: true } |     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     1095 label branch_false_194: 
.branch_false_194:
              #                     2802 untrack temp_273_cmp_193_0 
              #                    occupy a0 with temp_273_cmp_193_0
              #                    release a0 with temp_273_cmp_193_0
              #                     1098 (nop) 
              #                     1099 mu pos_0_45:1098 
              #                     1101 temp_275_ptr_of_buf_60_197 = GEP buf_60:Array:i32:[None] [Some(temp_270_value_from_ptr_181_0)] 
              #                    occupy a0 with temp_275_ptr_of_buf_60_197
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_270_value_from_ptr_181_0
    mv      a2, a1
              #                    free a1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a4 with buf_60
              #                    load from buf_60 in mem
    ld      a4,1512(sp)
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                     1103 temp_276_ele_of_buf_60_197_0 = load temp_275_ptr_of_buf_60_197:ptr->i32 
              #                    occupy a0 with temp_275_ptr_of_buf_60_197
              #                    occupy a5 with temp_276_ele_of_buf_60_197_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     2805 untrack temp_275_ptr_of_buf_60_197 
              #                    occupy a0 with temp_275_ptr_of_buf_60_197
              #                    release a0 with temp_275_ptr_of_buf_60_197
              #                     1104 mu buf_60:1103 
              #                     2804 untrack buf_60 
              #                    occupy a4 with buf_60
              #                    release a4 with buf_60
              #                     1106 temp_277_cmp_197_0 = icmp i32 Ne temp_276_ele_of_buf_60_197_0, 34_0 
              #                    occupy a5 with temp_276_ele_of_buf_60_197_0
              #                    occupy a0 with 34_0
    li      a0, 34
              #                    occupy a4 with temp_277_cmp_197_0
    xor     a4,a5,a0
    snez    a4, a4
              #                    free a5
              #                    free a0
              #                    free a4
              #                     2803 untrack temp_276_ele_of_buf_60_197_0 
              #                    occupy a5 with temp_276_ele_of_buf_60_197_0
              #                    release a5 with temp_276_ele_of_buf_60_197_0
              #                     1109 br i1 temp_277_cmp_197_0, label branch_true_198, label branch_false_198 
              #                    occupy a4 with temp_277_cmp_197_0
              #                    free a4
              #                    occupy a4 with temp_277_cmp_197_0
    bnez    a4, .branch_true_198
              #                    free a4
    j       .branch_false_198
              #                    regtab     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |     a4:Freed { symidx: temp_277_cmp_197_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     1107 label branch_true_198: 
.branch_true_198:
              #                     2807 untrack temp_75_arithop_179_0 
              #                     2806 untrack temp_277_cmp_197_0 
              #                    occupy a4 with temp_277_cmp_197_0
              #                    release a4 with temp_277_cmp_197_0
              #                     1559 mu pos_0_45:404 
              #                     404  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |     a4:Freed { symidx: temp_277_cmp_197_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     1108 label branch_false_198: 
.branch_false_198:
              #                     2808 untrack temp_277_cmp_197_0 
              #                    occupy a4 with temp_277_cmp_197_0
              #                    release a4 with temp_277_cmp_197_0
              #                          jump label: gather_124 
    j       .gather_124
              #                    regtab     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     1110 label gather_124: 
.gather_124:
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L13_0: 
.L13_0:
              #                     397  (nop) 
              #                     398  mu pos_0_45:397 
              #                     400  temp_75_arithop_179_0 = Add i32 temp_270_value_from_ptr_181_0, 1_0 
              #                    occupy a1 with temp_270_value_from_ptr_181_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_75_arithop_179_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     401  store temp_75_arithop_179_0:i32 *pos_0:ptr->i32 
              #                    occupy a4 with *pos_0
              #                       load label pos as ptr to reg
    la      a4, pos
              #                    occupy reg a4 with *pos_0
              #                    occupy a2 with temp_75_arithop_179_0
    sw      a2,0(a4)
              #                    free a2
              #                    occupy a2 with temp_75_arithop_179_0
              #                    store to temp_75_arithop_179_0 in mem offset legal
    sw      a2,1248(sp)
              #                    release a2 with temp_75_arithop_179_0
              #                    free a4
              #                     2809 untrack temp_75_arithop_179_0 
              #                     402  pos_0_49 = chi pos_0_45:401 
              #                          jump label: gather_262 
    j       .gather_262
              #                    regtab     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     581  label gather_262: 
.gather_262:
              #                          jump label: gather_264 
              #                    occupy a3 with temp_271_cmp_181_0
              #                    store to temp_271_cmp_181_0 in mem offset legal
    sb      a3,443(sp)
              #                    release a3 with temp_271_cmp_181_0
              #                    occupy a3 with temp_302_cmp_128_0
              #                    load from temp_302_cmp_128_0 in mem


    lb      a3,327(sp)
              #                    occupy a1 with temp_270_value_from_ptr_181_0
              #                    store to temp_270_value_from_ptr_181_0 in mem offset legal
    sw      a1,444(sp)
              #                    release a1 with temp_270_value_from_ptr_181_0
              #                    occupy a1 with temp_301_value_from_ptr_128_0
              #                    load from temp_301_value_from_ptr_128_0 in mem


    lw      a1,328(sp)
    j       .gather_264
              #                    regtab     a0:Freed { symidx: temp_279_ptr_of_buf_60_184, tracked: true } |     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |     a5:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1122 label branch_false_185: 
.branch_false_185:
              #                          jump label: L14_0 
    j       .L14_0
              #                    regtab     a0:Freed { symidx: temp_279_ptr_of_buf_60_184, tracked: true } |     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |     a5:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L14_0: 
.L14_0:
              #                     1125 (nop) 
              #                     1126 mu pos_0_45:1125 
              #                     1128 (nop) 
              #                     1130 (nop) 
              #                     1131 mu buf_60:1130 
              #                     1133 temp_285_cmp_187_0 = icmp i32 Eq temp_280_ele_of_buf_60_184_0, 92_0 
              #                    occupy a4 with temp_280_ele_of_buf_60_184_0
              #                    load from temp_280_ele_of_buf_60_184_0 in mem


    lw      a4,412(sp)
              #                    occupy a6 with 92_0
    li      a6, 92
              #                    occupy a7 with temp_285_cmp_187_0
    xor     a7,a4,a6
    seqz    a7, a7
              #                    free a4
              #                    occupy a4 with temp_280_ele_of_buf_60_184_0
              #                    store to temp_280_ele_of_buf_60_184_0 in mem offset legal
    sw      a4,412(sp)
              #                    release a4 with temp_280_ele_of_buf_60_184_0
              #                    free a6
              #                    free a7
              #                    occupy a7 with temp_285_cmp_187_0
              #                    store to temp_285_cmp_187_0 in mem offset legal
    sb      a7,399(sp)
              #                    release a7 with temp_285_cmp_187_0
              #                     1136 br i1 temp_285_cmp_187_0, label branch_true_188, label branch_false_188 
              #                    occupy a4 with temp_285_cmp_187_0
              #                    load from temp_285_cmp_187_0 in mem


    lb      a4,399(sp)
              #                    free a4
              #                    occupy a4 with temp_285_cmp_187_0
              #                    store to temp_285_cmp_187_0 in mem offset legal
    sb      a4,399(sp)
              #                    release a4 with temp_285_cmp_187_0
              #                    occupy a4 with temp_285_cmp_187_0
              #                    load from temp_285_cmp_187_0 in mem


    lb      a4,399(sp)
    bnez    a4, .branch_true_188
              #                    free a4
              #                    occupy a4 with temp_285_cmp_187_0
              #                    store to temp_285_cmp_187_0 in mem offset legal
    sb      a4,399(sp)
              #                    release a4 with temp_285_cmp_187_0
    j       .branch_false_188
              #                    regtab     a0:Freed { symidx: temp_279_ptr_of_buf_60_184, tracked: true } |     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |     a5:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1134 label branch_true_188: 
.branch_true_188:
              #                     415  (nop) 
              #                     416  mu pos_0_45:415 
              #                     418  temp_79_arithop_189_0 = Add i32 temp_270_value_from_ptr_181_0, 2_0 
              #                    occupy a1 with temp_270_value_from_ptr_181_0
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    occupy a6 with temp_79_arithop_189_0
    ADDW    a6,a1,a4
              #                    free a1
              #                    occupy a1 with temp_270_value_from_ptr_181_0
              #                    store to temp_270_value_from_ptr_181_0 in mem offset legal
    sw      a1,444(sp)
              #                    release a1 with temp_270_value_from_ptr_181_0
              #                    free a4
              #                    free a6
              #                     419  store temp_79_arithop_189_0:i32 *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a6 with temp_79_arithop_189_0
    sw      a6,0(a1)
              #                    free a6
              #                    occupy a6 with temp_79_arithop_189_0
              #                    store to temp_79_arithop_189_0 in mem offset legal
    sw      a6,1240(sp)
              #                    release a6 with temp_79_arithop_189_0
              #                    free a1
              #                     420  pos_0_46 = chi pos_0_45:419 
              #                          jump label: gather_117 
    j       .gather_117
              #                    regtab     a0:Freed { symidx: temp_279_ptr_of_buf_60_184, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |     a5:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1137 label gather_117: 
.gather_117:
              #                          jump label: while.head_182 
              #                    occupy a3 with temp_271_cmp_181_0
              #                    store to temp_271_cmp_181_0 in mem offset legal
    sb      a3,443(sp)
              #                    release a3 with temp_271_cmp_181_0
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    occupy a5 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a5,1512(sp)
              #                    release a5 with buf_60
              #                    occupy a0 with temp_279_ptr_of_buf_60_184
              #                    store to temp_279_ptr_of_buf_60_184 in mem offset legal
    sd      a0,416(sp)
              #                    release a0 with temp_279_ptr_of_buf_60_184
    j       .while.head_182
              #                    regtab     a0:Freed { symidx: temp_279_ptr_of_buf_60_184, tracked: true } |     a1:Freed { symidx: temp_270_value_from_ptr_181_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_271_cmp_181_0, tracked: true } |     a5:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1135 label branch_false_188: 
.branch_false_188:
              #                     408  (nop) 
              #                     409  mu pos_0_45:408 
              #                     411  temp_77_arithop_191_0 = Add i32 temp_270_value_from_ptr_181_0, 1_0 
              #                    occupy a1 with temp_270_value_from_ptr_181_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with temp_77_arithop_191_0
    ADDW    a6,a1,a4
              #                    free a1
              #                    occupy a1 with temp_270_value_from_ptr_181_0
              #                    store to temp_270_value_from_ptr_181_0 in mem offset legal
    sw      a1,444(sp)
              #                    release a1 with temp_270_value_from_ptr_181_0
              #                    free a4
              #                    free a6
              #                     412  store temp_77_arithop_191_0:i32 *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a6 with temp_77_arithop_191_0
    sw      a6,0(a1)
              #                    free a6
              #                    occupy a6 with temp_77_arithop_191_0
              #                    store to temp_77_arithop_191_0 in mem offset legal
    sw      a6,1244(sp)
              #                    release a6 with temp_77_arithop_191_0
              #                    free a1
              #                     413  pos_0_48 = chi pos_0_45:412 
              #                          jump label: gather_117 
    j       .gather_117
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_111_cmp_177_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     549  label branch_false_178: 
.branch_false_178:
              #                     2785 untrack temp_72_value_from_ptr_179_0 
              #                     2784 untrack temp_275_ptr_of_buf_60_197 
              #                     2783 untrack temp_111_cmp_177_0 
              #                    occupy a2 with temp_111_cmp_177_0
              #                    release a2 with temp_111_cmp_177_0
              #                     2782 untrack temp_277_cmp_197_0 
              #                     2781 untrack temp_273_cmp_193_0 
              #                     2780 untrack temp_276_ele_of_buf_60_197_0 
              #                     2779 untrack temp_75_arithop_179_0 
              #                     2778 untrack temp_73_arithop_179_0 
              #                     552  temp_112_cmp_202_0 = icmp i32 Eq type_60_0, 3_0 
              #                    occupy a0 with type_60_0
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    occupy a2 with temp_112_cmp_202_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     555  br i1 temp_112_cmp_202_0, label branch_true_203, label branch_false_203 
              #                    occupy a2 with temp_112_cmp_202_0
              #                    free a2
              #                    occupy a2 with temp_112_cmp_202_0
    bnez    a2, .branch_true_203
              #                    free a2
    j       .branch_false_203
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_112_cmp_202_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     553  label branch_true_203: 
.branch_true_203:
              #                     2926 untrack temp_206_cmp_324_0 
              #                     2925 untrack temp_132_cmp_374_0 
              #                     2924 untrack temp_208_ele_of_mTrue_310_328_0 
              #                     2923 untrack temp_185_arithop_312_0 
              #                     2922 untrack temp_39_array_init_ptr_335 
              #                     2921 untrack temp_114_cmp_308_0 
              #                     2920 untrack temp_48_array_init_ptr_310 
              #                     2919 untrack temp_53_arithop_242_0 
              #                     2918 untrack temp_144_ptr_of_buf_60_382 
              #                     2917 untrack temp_125_cmp_370_0 
              #                     2916 untrack temp_201_ele_of_mTrue_310_324_0 
              #                     2915 untrack temp_145_ele_of_buf_60_382_0 
              #                     2914 untrack temp_198_ele_of_buf_60_320_0 
              #                     2913 untrack temp_197_ptr_of_buf_60_320 
              #                     2912 untrack temp_141_ele_of_mNull_364_382_0 
              #                     2911 untrack temp_223_cmp_262_0 
              #                     2910 untrack temp_171_ele_of_mFalse_335_353_0 
              #                     2909 untrack temp_45_array_init_ptr_310 
              #                     2908 untrack temp_37_array_init_ptr_335 
              #                     2907 untrack temp_33_array_init_ptr_364 
              #                     2906 untrack temp_249_cmp_248_0 
              #                     2905 untrack temp_55_arithop_242_0 
              #                     2904 untrack temp_159_arithop_345_0 
              #                     2903 untrack temp_190_ptr_of_buf_60_316 
              #                     2902 untrack temp_166_arithop_349_0 
              #                     2901 untrack temp_41_array_init_ptr_335 
              #                     2900 untrack temp_162_cmp_345_0 
              #                     2899 untrack temp_149_cmp_337_0 
              #                     2898 untrack temp_154_ele_of_buf_60_341_0 
              #                     2897 untrack temp_218_value_from_ptr_258_0 
              #                     2896 untrack temp_231_cmp_299_0 
              #                     2895 untrack temp_234_ele_of_buf_60_303_0 
              #                     2894 untrack temp_146_cmp_382_0 
              #                     2893 untrack temp_155_cmp_341_0 
              #                     2892 untrack temp_213_cmp_328_0 
              #                     2891 untrack temp_157_ele_of_mFalse_335_345_0 
              #                     2890 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     2889 untrack temp_235_cmp_303_0 
              #                     2888 untrack temp_42_array_init_ptr_335 
              #                     2887 untrack temp_63_arithop_250_0 
              #                     2886 untrack temp_34_array_init_ptr_364 
              #                     2885 untrack temp_118_arithop_366_0 
              #                     2884 untrack temp_31_array_init_ptr_364 
              #                     2883 untrack temp_134_ele_of_mNull_364_378_0 
              #                     2882 untrack temp_169_cmp_349_0 
              #                     2881 untrack temp_222_ele_of_buf_60_262_0 
              #                     2880 untrack temp_40_array_init_ptr_335 
              #                     2879 untrack temp_168_ele_of_buf_60_349_0 
              #                     2878 untrack temp_151_ele_of_mFalse_335_341_0 
              #                     2877 untrack temp_196_arithop_320_0 
              #                     2876 untrack temp_214_value_from_ptr_245_0 
              #                     2875 untrack temp_215_cmp_245_0 
              #                     2874 untrack temp_131_ele_of_buf_60_374_0 
              #                     2873 untrack temp_173_arithop_353_0 
              #                     2872 untrack temp_225_cmp_268_0 
              #                     2871 untrack temp_51_arithop_310_0 
              #                     2870 untrack temp_121_ele_of_mNull_364_370_0 
              #                     2869 untrack temp_49_array_init_ptr_310 
              #                     2868 untrack temp_164_ele_of_mFalse_335_349_0 
              #                     2867 untrack type_60_0 
              #                    occupy a0 with type_60_0
              #                    release a0 with type_60_0
              #                     2866 untrack temp_147_value_from_ptr_337_0 
              #                     2865 untrack temp_217_cmp_253_0 
              #                     2864 untrack temp_216_ret_of_detect_item_253_0 
              #                     2863 untrack temp_219_cmp_258_0 
              #                     2862 untrack temp_224_ret_of_detect_item_268_0 
              #                     2861 untrack temp_52_value_from_ptr_242_0 
              #                     2860 untrack temp_115_cmp_333_0 
              #                     2859 untrack temp_117_value_from_ptr_366_0 
              #                     2858 untrack temp_181_ptr_of_buf_60_357 
              #                     2857 untrack temp_113_cmp_240_0 
              #                     2856 untrack temp_38_array_init_ptr_335 
              #                     2855 untrack temp_183_cmp_357_0 
              #                     2854 untrack temp_194_ele_of_mTrue_310_320_0 
              #                     2853 untrack temp_230_value_from_ptr_299_0 
              #                     2852 untrack temp_137_ptr_of_buf_60_378 
              #                     2851 untrack temp_124_ele_of_buf_60_370_0 
              #                     2850 untrack temp_211_ptr_of_buf_60_328 
              #                     2849 untrack temp_167_ptr_of_buf_60_349 
              #                     2848 untrack temp_184_value_from_ptr_312_0 
              #                     2847 untrack temp_182_ele_of_buf_60_357_0 
              #                     2846 untrack temp_221_ptr_of_buf_60_262 
              #                     2845 untrack temp_191_ele_of_buf_60_316_0 
              #                     2844 untrack temp_123_ptr_of_buf_60_370 
              #                     2843 untrack temp_203_arithop_324_0 
              #                     2842 untrack temp_174_ptr_of_buf_60_353 
              #                     2841 untrack temp_248_ele_of_buf_60_248_0 
              #                     2840 untrack temp_44_arithop_335_0 
              #                     2839 untrack temp_138_ele_of_buf_60_378_0 
              #                     2838 untrack temp_119_cmp_366_0 
              #                     2837 untrack temp_148_arithop_337_0 
              #                     2836 untrack temp_160_ptr_of_buf_60_345 
              #                     2835 untrack temp_112_cmp_202_0 
              #                    occupy a2 with temp_112_cmp_202_0
              #                    release a2 with temp_112_cmp_202_0
              #                     2834 untrack temp_192_cmp_316_0 
              #                     2833 untrack temp_247_ptr_of_buf_60_248 
              #                     2832 untrack temp_153_ptr_of_buf_60_341 
              #                     2831 untrack temp_36_arithop_364_0 
              #                     2830 untrack temp_188_ele_of_mTrue_310_316_0 
              #                     2829 untrack temp_47_array_init_ptr_310 
              #                     2828 untrack temp_233_ptr_of_buf_60_303 
              #                     2827 untrack temp_116_cmp_362_0 
              #                     2826 untrack temp_161_ele_of_buf_60_345_0 
              #                     2825 untrack temp_139_cmp_378_0 
              #                     2824 untrack temp_199_cmp_320_0 
              #                     2823 untrack temp_46_array_init_ptr_310 
              #                     2822 untrack temp_130_ptr_of_buf_60_374 
              #                     2821 untrack temp_129_arithop_374_0 
              #                     2820 untrack temp_212_ele_of_buf_60_328_0 
              #                     2819 untrack temp_32_array_init_ptr_364 
              #                     2818 untrack temp_176_cmp_353_0 
              #                     2817 untrack temp_57_arithop_242_0 
              #                     2816 untrack temp_204_ptr_of_buf_60_324 
              #                     2815 untrack temp_127_ele_of_mNull_364_374_0 
              #                     2814 untrack temp_205_ele_of_buf_60_324_0 
              #                     2813 untrack temp_30_array_init_ptr_364 
              #                     2812 untrack temp_175_ele_of_buf_60_353_0 
              #                     2811 untrack temp_186_cmp_312_0 
              #                     2810 untrack temp_136_arithop_378_0 
              #                     347  temp_64_value_from_ptr_204_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_64_value_from_ptr_204_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     348  mu pos_0_11:347 
              #                     350  temp_65_arithop_204_0 = Add i32 temp_64_value_from_ptr_204_0, 1_0 
              #                    occupy a1 with temp_64_value_from_ptr_204_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_65_arithop_204_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     2945 untrack temp_64_value_from_ptr_204_0 
              #                    occupy a1 with temp_64_value_from_ptr_204_0
              #                    release a1 with temp_64_value_from_ptr_204_0
              #                     351  store temp_65_arithop_204_0:i32 *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a3 with temp_65_arithop_204_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     2944 untrack temp_65_arithop_204_0 
              #                    occupy a3 with temp_65_arithop_204_0
              #                    release a3 with temp_65_arithop_204_0
              #                     352  pos_0_51 = chi pos_0_11:351 
              #                     353   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1560 mu pos_0_51:353 
              #                     1561 pos_0_52 = chi pos_0_51:353 
              #                          jump label: L15_0 
    j       .L15_0
              #                    regtab  released_gpr_count:14,released_fpr_count:24
              #                          label L15_0: 
.L15_0:
              #                     1011 temp_250_value_from_ptr_207_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_250_value_from_ptr_207_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     1012 mu pos_0_52:1011 
              #                     1014 temp_251_cmp_207_0 = icmp i32 Slt temp_250_value_from_ptr_207_0, len_60_0 
              #                    occupy a1 with temp_250_value_from_ptr_207_0
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a3 with temp_251_cmp_207_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     1017 br i1 temp_251_cmp_207_0, label branch_true_208, label branch_false_208 
              #                    occupy a3 with temp_251_cmp_207_0
              #                    free a3
              #                    occupy a3 with temp_251_cmp_207_0
    bnez    a3, .branch_true_208
              #                    free a3
    j       .branch_false_208
              #                    regtab     a1:Freed { symidx: temp_250_value_from_ptr_207_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_251_cmp_207_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     1015 label branch_true_208: 
.branch_true_208:
              #                     2946 untrack temp_251_cmp_207_0 
              #                    occupy a3 with temp_251_cmp_207_0
              #                    release a3 with temp_251_cmp_207_0
              #                     1068 (nop) 
              #                     1069 mu pos_0_52:1068 
              #                     1071 temp_267_ptr_of_buf_60_210 = GEP buf_60:Array:i32:[None] [Some(temp_250_value_from_ptr_207_0)] 
              #                    occupy a0 with temp_267_ptr_of_buf_60_210
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_250_value_from_ptr_207_0
    mv      a3, a1
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with buf_60
              #                    load from buf_60 in mem
    ld      a4,1512(sp)
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                     1073 temp_268_ele_of_buf_60_210_0 = load temp_267_ptr_of_buf_60_210:ptr->i32 
              #                    occupy a0 with temp_267_ptr_of_buf_60_210
              #                    occupy a5 with temp_268_ele_of_buf_60_210_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     2953 untrack temp_267_ptr_of_buf_60_210 
              #                    occupy a0 with temp_267_ptr_of_buf_60_210
              #                    release a0 with temp_267_ptr_of_buf_60_210
              #                     1074 mu buf_60:1073 
              #                     1076 temp_269_cmp_210_0 = icmp i32 Eq temp_268_ele_of_buf_60_210_0, 93_0 
              #                    occupy a5 with temp_268_ele_of_buf_60_210_0
              #                    occupy a0 with 93_0
    li      a0, 93
              #                    occupy a6 with temp_269_cmp_210_0
    xor     a6,a5,a0
    seqz    a6, a6
              #                    free a5
              #                    free a0
              #                    free a6
              #                     2954 untrack temp_268_ele_of_buf_60_210_0 
              #                    occupy a5 with temp_268_ele_of_buf_60_210_0
              #                    release a5 with temp_268_ele_of_buf_60_210_0
              #                     1079 br i1 temp_269_cmp_210_0, label branch_true_211, label branch_false_211 
              #                    occupy a6 with temp_269_cmp_210_0
              #                    free a6
              #                    occupy a6 with temp_269_cmp_210_0
    bnez    a6, .branch_true_211
              #                    free a6
    j       .branch_false_211
              #                    regtab     a1:Freed { symidx: temp_250_value_from_ptr_207_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |     a6:Freed { symidx: temp_269_cmp_210_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     1077 label branch_true_211: 
.branch_true_211:
              #                     2965 untrack len_60_0 
              #                    occupy a2 with len_60_0
              #                    release a2 with len_60_0
              #                     2964 untrack buf_60 
              #                    occupy a4 with buf_60
              #                    release a4 with buf_60
              #                     2963 untrack temp_263_cmp_235_0 
              #                     2962 untrack temp_259_cmp_231_0 
              #                     2961 untrack temp_253_cmp_215_0 
              #                     2960 untrack temp_269_cmp_210_0 
              #                    occupy a6 with temp_269_cmp_210_0
              #                    release a6 with temp_269_cmp_210_0
              #                     2959 untrack temp_261_ptr_of_buf_60_235 
              #                     2958 untrack temp_67_arithop_204_0 
              #                     2957 untrack temp_258_value_from_ptr_231_0 
              #                     2956 untrack temp_252_ret_of_detect_item_215_0 
              #                     2955 untrack temp_262_ele_of_buf_60_235_0 
              #                     381  (nop) 
              #                     382  mu pos_0_52:381 
              #                     384  temp_71_arithop_212_0 = Add i32 temp_250_value_from_ptr_207_0, 1_0 
              #                    occupy a1 with temp_250_value_from_ptr_207_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_71_arithop_212_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     2969 untrack temp_250_value_from_ptr_207_0 
              #                    occupy a1 with temp_250_value_from_ptr_207_0
              #                    release a1 with temp_250_value_from_ptr_207_0
              #                     385  store temp_71_arithop_212_0:i32 *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_71_arithop_212_0
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     2970 untrack temp_71_arithop_212_0 
              #                    occupy a2 with temp_71_arithop_212_0
              #                    release a2 with temp_71_arithop_212_0
              #                     386  pos_0_53 = chi pos_0_52:385 
              #                     1562 mu pos_0_53:388 
              #                     388  ret 1_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_250_value_from_ptr_207_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |     a6:Freed { symidx: temp_269_cmp_210_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     1078 label branch_false_211: 
.branch_false_211:
              #                     2968 untrack temp_269_cmp_210_0 
              #                    occupy a6 with temp_269_cmp_210_0
              #                    release a6 with temp_269_cmp_210_0
              #                     2967 untrack temp_250_value_from_ptr_207_0 
              #                    occupy a1 with temp_250_value_from_ptr_207_0
              #                    release a1 with temp_250_value_from_ptr_207_0
              #                     2966 untrack temp_71_arithop_212_0 
              #                          jump label: branch_false_208 
              #                    occupy a3 with temp_251_cmp_207_0
              #                    load from temp_251_cmp_207_0 in mem


    lb      a3,531(sp)
              #                    occupy a4 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a4,1512(sp)
              #                    release a4 with buf_60
              #                    occupy a1 with temp_250_value_from_ptr_207_0
              #                    load from temp_250_value_from_ptr_207_0 in mem


    lw      a1,532(sp)
    j       .branch_false_208
              #                    regtab     a1:Freed { symidx: temp_250_value_from_ptr_207_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_251_cmp_207_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     1016 label branch_false_208: 
.branch_false_208:
              #                     2952 untrack temp_251_cmp_207_0 
              #                    occupy a3 with temp_251_cmp_207_0
              #                    release a3 with temp_251_cmp_207_0
              #                     2951 untrack temp_71_arithop_212_0 
              #                     2950 untrack temp_269_cmp_210_0 
              #                     2949 untrack temp_250_value_from_ptr_207_0 
              #                    occupy a1 with temp_250_value_from_ptr_207_0
              #                    release a1 with temp_250_value_from_ptr_207_0
              #                     2948 untrack temp_267_ptr_of_buf_60_210 
              #                     2947 untrack temp_268_ele_of_buf_60_210_0 
              #                          jump label: L16_0 
    j       .L16_0
              #                    regtab     a2:Freed { symidx: len_60_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                          label L16_0: 
.L16_0:
              #                     1019 temp_252_ret_of_detect_item_215_0 =  Call i32 detect_item_0(0_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     1563 mu pos_0_52:1019 
              #                     1564 pos_0_54 = chi pos_0_52:1019 
              #                     1021 temp_253_cmp_215_0 = icmp i32 Eq temp_252_ret_of_detect_item_215_0, 0_0 
              #                    occupy a0 with temp_252_ret_of_detect_item_215_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_253_cmp_215_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     2971 untrack temp_252_ret_of_detect_item_215_0 
              #                    occupy a0 with temp_252_ret_of_detect_item_215_0
              #                    release a0 with temp_252_ret_of_detect_item_215_0
              #                     1024 br i1 temp_253_cmp_215_0, label branch_true_216, label branch_false_216 
              #                    occupy a2 with temp_253_cmp_215_0
              #                    free a2
              #                    occupy a2 with temp_253_cmp_215_0
    bnez    a2, .branch_true_216
              #                    free a2
    j       .branch_false_216
              #                    regtab     a2:Freed { symidx: temp_253_cmp_215_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     1022 label branch_true_216: 
.branch_true_216:
              #                     2980 untrack temp_263_cmp_235_0 
              #                     2979 untrack temp_253_cmp_215_0 
              #                    occupy a2 with temp_253_cmp_215_0
              #                    release a2 with temp_253_cmp_215_0
              #                     2978 untrack temp_67_arithop_204_0 
              #                     2977 untrack temp_262_ele_of_buf_60_235_0 
              #                     2976 untrack buf_60 
              #                     2975 untrack temp_261_ptr_of_buf_60_235 
              #                     2974 untrack temp_259_cmp_231_0 
              #                     2973 untrack len_60_0 
              #                     2972 untrack temp_258_value_from_ptr_231_0 
              #                     1565 mu pos_0_54:379 
              #                     379  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_253_cmp_215_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     1023 label branch_false_216: 
.branch_false_216:
              #                     2981 untrack temp_253_cmp_215_0 
              #                    occupy a2 with temp_253_cmp_215_0
              #                    release a2 with temp_253_cmp_215_0
              #                          jump label: L17_0 
    j       .L17_0
              #                    regtab  released_gpr_count:12,released_fpr_count:24
              #                          label L17_0: 
.L17_0:
              #                     354   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1566 mu pos_0_54:354 
              #                     1567 pos_0_55 = chi pos_0_54:354 
              #                          jump label: while.head_221 
    j       .while.head_221
              #                    regtab  released_gpr_count:12,released_fpr_count:24
              #                     1035 label while.head_221: 
.while.head_221:
              #                     1026 temp_254_value_from_ptr_220_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_254_value_from_ptr_220_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     1027 mu pos_0_56:1026 
              #                     1029 temp_255_ptr_of_buf_60_220 = GEP buf_60:Array:i32:[None] [Some(temp_254_value_from_ptr_220_0)] 
              #                    occupy a2 with temp_255_ptr_of_buf_60_220
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_254_value_from_ptr_220_0
    mv      a3, a1
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with buf_60
              #                    load from buf_60 in mem
    ld      a4,1512(sp)
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     1031 temp_256_ele_of_buf_60_220_0 = load temp_255_ptr_of_buf_60_220:ptr->i32 
              #                    occupy a2 with temp_255_ptr_of_buf_60_220
              #                    occupy a5 with temp_256_ele_of_buf_60_220_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     1032 mu buf_60:1031 
              #                     1034 temp_257_cmp_220_0 = icmp i32 Eq temp_256_ele_of_buf_60_220_0, 44_0 
              #                    occupy a5 with temp_256_ele_of_buf_60_220_0
              #                    occupy a6 with 44_0
    li      a6, 44
              #                    occupy a7 with temp_257_cmp_220_0
    xor     a7,a5,a6
    seqz    a7, a7
              #                    free a5
              #                    occupy a5 with temp_256_ele_of_buf_60_220_0
              #                    store to temp_256_ele_of_buf_60_220_0 in mem offset legal
    sw      a5,500(sp)
              #                    release a5 with temp_256_ele_of_buf_60_220_0
              #                    free a6
              #                    free a7
              #                     1038 br i1 temp_257_cmp_220_0, label while.body_221, label while.exit_221 
              #                    occupy a7 with temp_257_cmp_220_0
              #                    free a7
              #                    occupy a7 with temp_257_cmp_220_0
    bnez    a7, .while.body_221
              #                    free a7
    j       .while.exit_221
              #                    regtab     a1:Freed { symidx: temp_254_value_from_ptr_220_0, tracked: true } |     a2:Freed { symidx: temp_255_ptr_of_buf_60_220, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |     a7:Freed { symidx: temp_257_cmp_220_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1036 label while.body_221: 
.while.body_221:
              #                     368  (nop) 
              #                     369  mu pos_0_56:368 
              #                     371  temp_69_arithop_222_0 = Add i32 temp_254_value_from_ptr_220_0, 1_0 
              #                    occupy a1 with temp_254_value_from_ptr_220_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with temp_69_arithop_222_0
    ADDW    a3,a1,a0
              #                    free a1
              #                    occupy a1 with temp_254_value_from_ptr_220_0
              #                    store to temp_254_value_from_ptr_220_0 in mem offset legal
    sw      a1,516(sp)
              #                    release a1 with temp_254_value_from_ptr_220_0
              #                    free a0
              #                    free a3
              #                     372  store temp_69_arithop_222_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a3 with temp_69_arithop_222_0
    sw      a3,0(a0)
              #                    free a3
              #                    occupy a3 with temp_69_arithop_222_0
              #                    store to temp_69_arithop_222_0 in mem offset legal
    sw      a3,1264(sp)
              #                    release a3 with temp_69_arithop_222_0
              #                    free a0
              #                     373  pos_0_57 = chi pos_0_56:372 
              #                     374   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_255_ptr_of_buf_60_220
              #                    store to temp_255_ptr_of_buf_60_220 in mem offset legal
    sd      a2,504(sp)
              #                    release a2 with temp_255_ptr_of_buf_60_220
              #                    occupy a4 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a4,1512(sp)
              #                    release a4 with buf_60
              #                    occupy a7 with temp_257_cmp_220_0
              #                    store to temp_257_cmp_220_0 in mem offset legal
    sb      a7,499(sp)
              #                    release a7 with temp_257_cmp_220_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1568 mu pos_0_57:374 
              #                     1569 pos_0_58 = chi pos_0_57:374 
              #                          jump label: L18_0 
    j       .L18_0
              #                    regtab  released_gpr_count:9,released_fpr_count:24
              #                          label L18_0: 
.L18_0:
              #                     1061 temp_264_ret_of_detect_item_225_0 =  Call i32 detect_item_0(0_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     1570 mu pos_0_58:1061 
              #                     1571 pos_0_59 = chi pos_0_58:1061 
              #                     1063 temp_265_cmp_225_0 = icmp i32 Eq temp_264_ret_of_detect_item_225_0, 0_0 
              #                    occupy a0 with temp_264_ret_of_detect_item_225_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_265_cmp_225_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1066 br i1 temp_265_cmp_225_0, label branch_true_226, label branch_false_226 
              #                    occupy a2 with temp_265_cmp_225_0
              #                    free a2
              #                    occupy a2 with temp_265_cmp_225_0
    bnez    a2, .branch_true_226
              #                    free a2
    j       .branch_false_226
              #                    regtab     a0:Freed { symidx: temp_264_ret_of_detect_item_225_0, tracked: true } |     a2:Freed { symidx: temp_265_cmp_225_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     1064 label branch_true_226: 
.branch_true_226:
              #                     2988 untrack temp_256_ele_of_buf_60_220_0 
              #                     2987 untrack temp_264_ret_of_detect_item_225_0 
              #                    occupy a0 with temp_264_ret_of_detect_item_225_0
              #                    release a0 with temp_264_ret_of_detect_item_225_0
              #                     2986 untrack temp_265_cmp_225_0 
              #                    occupy a2 with temp_265_cmp_225_0
              #                    release a2 with temp_265_cmp_225_0
              #                     2985 untrack temp_257_cmp_220_0 
              #                     2984 untrack temp_254_value_from_ptr_220_0 
              #                     2983 untrack temp_255_ptr_of_buf_60_220 
              #                     2982 untrack temp_69_arithop_222_0 
              #                     1572 mu pos_0_59:377 
              #                     377  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_264_ret_of_detect_item_225_0, tracked: true } |     a2:Freed { symidx: temp_265_cmp_225_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     1065 label branch_false_226: 
.branch_false_226:
              #                          jump label: L19_0 
    j       .L19_0
              #                    regtab     a0:Freed { symidx: temp_264_ret_of_detect_item_225_0, tracked: true } |     a2:Freed { symidx: temp_265_cmp_225_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L19_0: 
.L19_0:
              #                     375   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_264_ret_of_detect_item_225_0
              #                    store to temp_264_ret_of_detect_item_225_0 in mem offset legal
    sw      a0,468(sp)
              #                    release a0 with temp_264_ret_of_detect_item_225_0
              #                    occupy a2 with temp_265_cmp_225_0
              #                    store to temp_265_cmp_225_0 in mem offset legal
    sb      a2,467(sp)
              #                    release a2 with temp_265_cmp_225_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1573 mu pos_0_59:375 
              #                     1574 pos_0_60 = chi pos_0_59:375 
              #                          jump label: while.head_221 
    j       .while.head_221
              #                    regtab     a1:Freed { symidx: temp_254_value_from_ptr_220_0, tracked: true } |     a2:Freed { symidx: temp_255_ptr_of_buf_60_220, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |     a7:Freed { symidx: temp_257_cmp_220_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1037 label while.exit_221: 
.while.exit_221:
              #                     355   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_254_value_from_ptr_220_0
              #                    store to temp_254_value_from_ptr_220_0 in mem offset legal
    sw      a1,516(sp)
              #                    release a1 with temp_254_value_from_ptr_220_0
              #                    occupy a2 with temp_255_ptr_of_buf_60_220
              #                    store to temp_255_ptr_of_buf_60_220 in mem offset legal
    sd      a2,504(sp)
              #                    release a2 with temp_255_ptr_of_buf_60_220
              #                    occupy a4 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a4,1512(sp)
              #                    release a4 with buf_60
              #                    occupy a7 with temp_257_cmp_220_0
              #                    store to temp_257_cmp_220_0 in mem offset legal
    sb      a7,499(sp)
              #                    release a7 with temp_257_cmp_220_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1575 mu pos_0_56:355 
              #                     1576 pos_0_61 = chi pos_0_56:355 
              #                          jump label: L20_0 
    j       .L20_0
              #                    regtab  released_gpr_count:9,released_fpr_count:24
              #                          label L20_0: 
.L20_0:
              #                     1040 temp_258_value_from_ptr_231_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_258_value_from_ptr_231_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     1041 mu pos_0_61:1040 
              #                     1043 temp_259_cmp_231_0 = icmp i32 Sge temp_258_value_from_ptr_231_0, len_60_0 
              #                    occupy a1 with temp_258_value_from_ptr_231_0
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a3 with temp_259_cmp_231_0
    slt     a3,a1,a2
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                     2989 untrack len_60_0 
              #                    occupy a2 with len_60_0
              #                    release a2 with len_60_0
              #                     1046 br i1 temp_259_cmp_231_0, label branch_true_232, label branch_false_232 
              #                    occupy a3 with temp_259_cmp_231_0
              #                    free a3
              #                    occupy a3 with temp_259_cmp_231_0
    bnez    a3, .branch_true_232
              #                    free a3
    j       .branch_false_232
              #                    regtab     a1:Freed { symidx: temp_258_value_from_ptr_231_0, tracked: true } |     a3:Freed { symidx: temp_259_cmp_231_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     1044 label branch_true_232: 
.branch_true_232:
              #                     2996 untrack temp_262_ele_of_buf_60_235_0 
              #                     2995 untrack temp_258_value_from_ptr_231_0 
              #                    occupy a1 with temp_258_value_from_ptr_231_0
              #                    release a1 with temp_258_value_from_ptr_231_0
              #                     2994 untrack temp_259_cmp_231_0 
              #                    occupy a3 with temp_259_cmp_231_0
              #                    release a3 with temp_259_cmp_231_0
              #                     2993 untrack temp_67_arithop_204_0 
              #                     2992 untrack temp_261_ptr_of_buf_60_235 
              #                     2991 untrack buf_60 
              #                     2990 untrack temp_263_cmp_235_0 
              #                     1577 mu pos_0_61:366 
              #                     366  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_258_value_from_ptr_231_0, tracked: true } |     a3:Freed { symidx: temp_259_cmp_231_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     1045 label branch_false_232: 
.branch_false_232:
              #                     2997 untrack temp_259_cmp_231_0 
              #                    occupy a3 with temp_259_cmp_231_0
              #                    release a3 with temp_259_cmp_231_0
              #                          jump label: L21_0 
    j       .L21_0
              #                    regtab     a1:Freed { symidx: temp_258_value_from_ptr_231_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L21_0: 
.L21_0:
              #                     1048 (nop) 
              #                     1049 mu pos_0_61:1048 
              #                     1051 temp_261_ptr_of_buf_60_235 = GEP buf_60:Array:i32:[None] [Some(temp_258_value_from_ptr_231_0)] 
              #                    occupy a0 with temp_261_ptr_of_buf_60_235
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_258_value_from_ptr_231_0
    mv      a2, a1
              #                    free a1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a3 with buf_60
              #                    load from buf_60 in mem
    ld      a3,1512(sp)
    add     a0,a0,a3
              #                    free a3
              #                    occupy a3 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a3,1512(sp)
              #                    release a3 with buf_60
              #                    free a0
              #                     1053 temp_262_ele_of_buf_60_235_0 = load temp_261_ptr_of_buf_60_235:ptr->i32 
              #                    occupy a0 with temp_261_ptr_of_buf_60_235
              #                    occupy a3 with temp_262_ele_of_buf_60_235_0
    lw      a3,0(a0)
              #                    free a3
              #                    occupy a3 with temp_262_ele_of_buf_60_235_0
              #                    store to temp_262_ele_of_buf_60_235_0 in mem offset legal
    sw      a3,476(sp)
              #                    release a3 with temp_262_ele_of_buf_60_235_0
              #                    free a0
              #                     2999 untrack temp_261_ptr_of_buf_60_235 
              #                    occupy a0 with temp_261_ptr_of_buf_60_235
              #                    release a0 with temp_261_ptr_of_buf_60_235
              #                     1054 mu buf_60:1053 
              #                     2998 untrack buf_60 
              #                     1056 temp_263_cmp_235_0 = icmp i32 Ne temp_262_ele_of_buf_60_235_0, 93_0 
              #                    occupy a0 with temp_262_ele_of_buf_60_235_0
              #                    load from temp_262_ele_of_buf_60_235_0 in mem


    lw      a0,476(sp)
              #                    occupy a3 with 93_0
    li      a3, 93
              #                    occupy a4 with temp_263_cmp_235_0
    xor     a4,a0,a3
    snez    a4, a4
              #                    free a0
              #                    occupy a0 with temp_262_ele_of_buf_60_235_0
              #                    store to temp_262_ele_of_buf_60_235_0 in mem offset legal
    sw      a0,476(sp)
              #                    release a0 with temp_262_ele_of_buf_60_235_0
              #                    free a3
              #                    free a4
              #                     3000 untrack temp_262_ele_of_buf_60_235_0 
              #                     1059 br i1 temp_263_cmp_235_0, label branch_true_236, label branch_false_236 
              #                    occupy a4 with temp_263_cmp_235_0
              #                    free a4
              #                    occupy a4 with temp_263_cmp_235_0
    bnez    a4, .branch_true_236
              #                    free a4
    j       .branch_false_236
              #                    regtab     a1:Freed { symidx: temp_258_value_from_ptr_231_0, tracked: true } |     a4:Freed { symidx: temp_263_cmp_235_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1057 label branch_true_236: 
.branch_true_236:
              #                     3003 untrack temp_67_arithop_204_0 
              #                     3002 untrack temp_263_cmp_235_0 
              #                    occupy a4 with temp_263_cmp_235_0
              #                    release a4 with temp_263_cmp_235_0
              #                     3001 untrack temp_258_value_from_ptr_231_0 
              #                    occupy a1 with temp_258_value_from_ptr_231_0
              #                    release a1 with temp_258_value_from_ptr_231_0
              #                     1578 mu pos_0_61:364 
              #                     364  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_258_value_from_ptr_231_0, tracked: true } |     a4:Freed { symidx: temp_263_cmp_235_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1058 label branch_false_236: 
.branch_false_236:
              #                     3004 untrack temp_263_cmp_235_0 
              #                    occupy a4 with temp_263_cmp_235_0
              #                    release a4 with temp_263_cmp_235_0
              #                          jump label: L22_0 
    j       .L22_0
              #                    regtab     a1:Freed { symidx: temp_258_value_from_ptr_231_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L22_0: 
.L22_0:
              #                     357  (nop) 
              #                     358  mu pos_0_61:357 
              #                     360  temp_67_arithop_204_0 = Add i32 temp_258_value_from_ptr_231_0, 1_0 
              #                    occupy a1 with temp_258_value_from_ptr_231_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_67_arithop_204_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    occupy a1 with temp_258_value_from_ptr_231_0
              #                    store to temp_258_value_from_ptr_231_0 in mem offset legal
    sw      a1,492(sp)
              #                    release a1 with temp_258_value_from_ptr_231_0
              #                    free a0
              #                    free a2
              #                     3006 untrack temp_258_value_from_ptr_231_0 
              #                     361  store temp_67_arithop_204_0:i32 *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_67_arithop_204_0
    sw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_67_arithop_204_0
              #                    store to temp_67_arithop_204_0 in mem offset legal
    sw      a2,1268(sp)
              #                    release a2 with temp_67_arithop_204_0
              #                    free a1
              #                     3005 untrack temp_67_arithop_204_0 
              #                     362  pos_0_62 = chi pos_0_61:361 
              #                          jump label: gather_260 
    j       .gather_260
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     580  label gather_260: 
.gather_260:
              #                          jump label: gather_262 
              #                    occupy a3 with temp_271_cmp_181_0
              #                    load from temp_271_cmp_181_0 in mem


    lb      a3,443(sp)
              #                    occupy a1 with temp_270_value_from_ptr_181_0
              #                    load from temp_270_value_from_ptr_181_0 in mem


    lw      a1,444(sp)
    j       .gather_262
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_112_cmp_202_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     554  label branch_false_203: 
.branch_false_203:
              #                     2943 untrack temp_71_arithop_212_0 
              #                     2942 untrack temp_250_value_from_ptr_207_0 
              #                     2941 untrack temp_64_value_from_ptr_204_0 
              #                     2940 untrack temp_269_cmp_210_0 
              #                     2939 untrack temp_252_ret_of_detect_item_215_0 
              #                     2938 untrack temp_251_cmp_207_0 
              #                     2937 untrack temp_258_value_from_ptr_231_0 
              #                     2936 untrack temp_263_cmp_235_0 
              #                     2935 untrack temp_67_arithop_204_0 
              #                     2934 untrack temp_259_cmp_231_0 
              #                     2933 untrack temp_267_ptr_of_buf_60_210 
              #                     2932 untrack temp_253_cmp_215_0 
              #                     2931 untrack temp_112_cmp_202_0 
              #                    occupy a2 with temp_112_cmp_202_0
              #                    release a2 with temp_112_cmp_202_0
              #                     2930 untrack temp_268_ele_of_buf_60_210_0 
              #                     2929 untrack temp_261_ptr_of_buf_60_235 
              #                     2928 untrack temp_262_ele_of_buf_60_235_0 
              #                     2927 untrack temp_65_arithop_204_0 
              #                     557  temp_113_cmp_240_0 = icmp i32 Eq type_60_0, 4_0 
              #                    occupy a0 with type_60_0
              #                    occupy a1 with 4_0
    li      a1, 4
              #                    occupy a2 with temp_113_cmp_240_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     560  br i1 temp_113_cmp_240_0, label branch_true_241, label branch_false_241 
              #                    occupy a2 with temp_113_cmp_240_0
              #                    free a2
              #                    occupy a2 with temp_113_cmp_240_0
    bnez    a2, .branch_true_241
              #                    free a2
    j       .branch_false_241
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_113_cmp_240_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     558  label branch_true_241: 
.branch_true_241:
              #                     3098 untrack temp_173_arithop_353_0 
              #                     3097 untrack temp_115_cmp_333_0 
              #                     3096 untrack temp_139_cmp_378_0 
              #                     3095 untrack temp_36_arithop_364_0 
              #                     3094 untrack temp_154_ele_of_buf_60_341_0 
              #                     3093 untrack temp_51_arithop_310_0 
              #                     3092 untrack temp_144_ptr_of_buf_60_382 
              #                     3091 untrack temp_131_ele_of_buf_60_374_0 
              #                     3090 untrack temp_121_ele_of_mNull_364_370_0 
              #                     3089 untrack temp_123_ptr_of_buf_60_370 
              #                     3088 untrack temp_117_value_from_ptr_366_0 
              #                     3087 untrack temp_198_ele_of_buf_60_320_0 
              #                     3086 untrack temp_39_array_init_ptr_335 
              #                     3085 untrack temp_192_cmp_316_0 
              #                     3084 untrack temp_127_ele_of_mNull_364_374_0 
              #                     3083 untrack temp_175_ele_of_buf_60_353_0 
              #                     3082 untrack temp_204_ptr_of_buf_60_324 
              #                     3081 untrack temp_169_cmp_349_0 
              #                     3080 untrack temp_167_ptr_of_buf_60_349 
              #                     3079 untrack temp_132_cmp_374_0 
              #                     3078 untrack temp_46_array_init_ptr_310 
              #                     3077 untrack temp_44_arithop_335_0 
              #                     3076 untrack temp_153_ptr_of_buf_60_341 
              #                     3075 untrack temp_32_array_init_ptr_364 
              #                     3074 untrack temp_116_cmp_362_0 
              #                     3073 untrack temp_184_value_from_ptr_312_0 
              #                     3072 untrack temp_124_ele_of_buf_60_370_0 
              #                     3071 untrack type_60_0 
              #                    occupy a0 with type_60_0
              #                    release a0 with type_60_0
              #                     3070 untrack temp_191_ele_of_buf_60_316_0 
              #                     3069 untrack temp_48_array_init_ptr_310 
              #                     3068 untrack temp_160_ptr_of_buf_60_345 
              #                     3067 untrack temp_149_cmp_337_0 
              #                     3066 untrack temp_185_arithop_312_0 
              #                     3065 untrack temp_137_ptr_of_buf_60_378 
              #                     3064 untrack temp_186_cmp_312_0 
              #                     3063 untrack temp_203_arithop_324_0 
              #                     3062 untrack temp_113_cmp_240_0 
              #                    occupy a2 with temp_113_cmp_240_0
              #                    release a2 with temp_113_cmp_240_0
              #                     3061 untrack temp_136_arithop_378_0 
              #                     3060 untrack temp_41_array_init_ptr_335 
              #                     3059 untrack temp_130_ptr_of_buf_60_374 
              #                     3058 untrack temp_31_array_init_ptr_364 
              #                     3057 untrack temp_118_arithop_366_0 
              #                     3056 untrack temp_166_arithop_349_0 
              #                     3055 untrack temp_147_value_from_ptr_337_0 
              #                     3054 untrack temp_168_ele_of_buf_60_349_0 
              #                     3053 untrack temp_174_ptr_of_buf_60_353 
              #                     3052 untrack temp_146_cmp_382_0 
              #                     3051 untrack temp_190_ptr_of_buf_60_316 
              #                     3050 untrack temp_159_arithop_345_0 
              #                     3049 untrack temp_38_array_init_ptr_335 
              #                     3048 untrack temp_37_array_init_ptr_335 
              #                     3047 untrack temp_49_array_init_ptr_310 
              #                     3046 untrack temp_196_arithop_320_0 
              #                     3045 untrack temp_30_array_init_ptr_364 
              #                     3044 untrack temp_188_ele_of_mTrue_310_316_0 
              #                     3043 untrack temp_199_cmp_320_0 
              #                     3042 untrack temp_208_ele_of_mTrue_310_328_0 
              #                     3041 untrack temp_211_ptr_of_buf_60_328 
              #                     3040 untrack temp_182_ele_of_buf_60_357_0 
              #                     3039 untrack temp_141_ele_of_mNull_364_382_0 
              #                     3038 untrack temp_145_ele_of_buf_60_382_0 
              #                     3037 untrack temp_197_ptr_of_buf_60_320 
              #                     3036 untrack temp_183_cmp_357_0 
              #                     3035 untrack temp_129_arithop_374_0 
              #                     3034 untrack temp_171_ele_of_mFalse_335_353_0 
              #                     3033 untrack temp_205_ele_of_buf_60_324_0 
              #                     3032 untrack temp_206_cmp_324_0 
              #                     3031 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     3030 untrack temp_40_array_init_ptr_335 
              #                     3029 untrack temp_45_array_init_ptr_310 
              #                     3028 untrack temp_212_ele_of_buf_60_328_0 
              #                     3027 untrack temp_194_ele_of_mTrue_310_320_0 
              #                     3026 untrack temp_34_array_init_ptr_364 
              #                     3025 untrack temp_155_cmp_341_0 
              #                     3024 untrack temp_164_ele_of_mFalse_335_349_0 
              #                     3023 untrack temp_114_cmp_308_0 
              #                     3022 untrack temp_138_ele_of_buf_60_378_0 
              #                     3021 untrack temp_176_cmp_353_0 
              #                     3020 untrack temp_201_ele_of_mTrue_310_324_0 
              #                     3019 untrack temp_213_cmp_328_0 
              #                     3018 untrack temp_161_ele_of_buf_60_345_0 
              #                     3017 untrack temp_47_array_init_ptr_310 
              #                     3016 untrack temp_33_array_init_ptr_364 
              #                     3015 untrack temp_125_cmp_370_0 
              #                     3014 untrack temp_151_ele_of_mFalse_335_341_0 
              #                     3013 untrack temp_134_ele_of_mNull_364_378_0 
              #                     3012 untrack temp_157_ele_of_mFalse_335_345_0 
              #                     3011 untrack temp_181_ptr_of_buf_60_357 
              #                     3010 untrack temp_42_array_init_ptr_335 
              #                     3009 untrack temp_119_cmp_366_0 
              #                     3008 untrack temp_148_arithop_337_0 
              #                     3007 untrack temp_162_cmp_345_0 
              #                     274  temp_52_value_from_ptr_242_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_52_value_from_ptr_242_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     275  mu pos_0_11:274 
              #                     277  temp_53_arithop_242_0 = Add i32 temp_52_value_from_ptr_242_0, 1_0 
              #                    occupy a1 with temp_52_value_from_ptr_242_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_53_arithop_242_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     3124 untrack temp_52_value_from_ptr_242_0 
              #                    occupy a1 with temp_52_value_from_ptr_242_0
              #                    release a1 with temp_52_value_from_ptr_242_0
              #                     278  store temp_53_arithop_242_0:i32 *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a3 with temp_53_arithop_242_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     3125 untrack temp_53_arithop_242_0 
              #                    occupy a3 with temp_53_arithop_242_0
              #                    release a3 with temp_53_arithop_242_0
              #                     279  pos_0_64 = chi pos_0_11:278 
              #                     280   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1579 mu pos_0_64:280 
              #                     1580 pos_0_65 = chi pos_0_64:280 
              #                          jump label: L23_0 
    j       .L23_0
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                          label L23_0: 
.L23_0:
              #                     884  temp_214_value_from_ptr_245_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_214_value_from_ptr_245_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     885  mu pos_0_65:884 
              #                     887  temp_215_cmp_245_0 = icmp i32 Slt temp_214_value_from_ptr_245_0, len_60_0 
              #                    occupy a1 with temp_214_value_from_ptr_245_0
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a3 with temp_215_cmp_245_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     890  br i1 temp_215_cmp_245_0, label branch_true_246, label branch_false_246 
              #                    occupy a3 with temp_215_cmp_245_0
              #                    free a3
              #                    occupy a3 with temp_215_cmp_245_0
    bnez    a3, .branch_true_246
              #                    free a3
    j       .branch_false_246
              #                    regtab     a1:Freed { symidx: temp_214_value_from_ptr_245_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_215_cmp_245_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     888  label branch_true_246: 
.branch_true_246:
              #                     3126 untrack temp_215_cmp_245_0 
              #                    occupy a3 with temp_215_cmp_245_0
              #                    release a3 with temp_215_cmp_245_0
              #                     998  (nop) 
              #                     999  mu pos_0_65:998 
              #                     1001 temp_247_ptr_of_buf_60_248 = GEP buf_60:Array:i32:[None] [Some(temp_214_value_from_ptr_245_0)] 
              #                    occupy a0 with temp_247_ptr_of_buf_60_248
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_214_value_from_ptr_245_0
    mv      a3, a1
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with buf_60
              #                    load from buf_60 in mem
    ld      a4,1512(sp)
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                     1003 temp_248_ele_of_buf_60_248_0 = load temp_247_ptr_of_buf_60_248:ptr->i32 
              #                    occupy a0 with temp_247_ptr_of_buf_60_248
              #                    occupy a5 with temp_248_ele_of_buf_60_248_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     3133 untrack temp_247_ptr_of_buf_60_248 
              #                    occupy a0 with temp_247_ptr_of_buf_60_248
              #                    release a0 with temp_247_ptr_of_buf_60_248
              #                     1004 mu buf_60:1003 
              #                     1006 temp_249_cmp_248_0 = icmp i32 Eq temp_248_ele_of_buf_60_248_0, 125_0 
              #                    occupy a5 with temp_248_ele_of_buf_60_248_0
              #                    occupy a0 with 125_0
    li      a0, 125
              #                    occupy a6 with temp_249_cmp_248_0
    xor     a6,a5,a0
    seqz    a6, a6
              #                    free a5
              #                    free a0
              #                    free a6
              #                     3134 untrack temp_248_ele_of_buf_60_248_0 
              #                    occupy a5 with temp_248_ele_of_buf_60_248_0
              #                    release a5 with temp_248_ele_of_buf_60_248_0
              #                     1009 br i1 temp_249_cmp_248_0, label branch_true_249, label branch_false_249 
              #                    occupy a6 with temp_249_cmp_248_0
              #                    free a6
              #                    occupy a6 with temp_249_cmp_248_0
    bnez    a6, .branch_true_249
              #                    free a6
    j       .branch_false_249
              #                    regtab     a1:Freed { symidx: temp_214_value_from_ptr_245_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |     a6:Freed { symidx: temp_249_cmp_248_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     1007 label branch_true_249: 
.branch_true_249:
              #                     3153 untrack temp_57_arithop_242_0 
              #                     3152 untrack temp_223_cmp_262_0 
              #                     3151 untrack temp_216_ret_of_detect_item_253_0 
              #                     3150 untrack temp_235_cmp_303_0 
              #                     3149 untrack temp_224_ret_of_detect_item_268_0 
              #                     3148 untrack temp_233_ptr_of_buf_60_303 
              #                     3147 untrack len_60_0 
              #                    occupy a2 with len_60_0
              #                    release a2 with len_60_0
              #                     3146 untrack temp_231_cmp_299_0 
              #                     3145 untrack temp_225_cmp_268_0 
              #                     3144 untrack temp_55_arithop_242_0 
              #                     3143 untrack temp_234_ele_of_buf_60_303_0 
              #                     3142 untrack temp_222_ele_of_buf_60_262_0 
              #                     3141 untrack temp_218_value_from_ptr_258_0 
              #                     3140 untrack temp_217_cmp_253_0 
              #                     3139 untrack temp_249_cmp_248_0 
              #                    occupy a6 with temp_249_cmp_248_0
              #                    release a6 with temp_249_cmp_248_0
              #                     3138 untrack temp_221_ptr_of_buf_60_262 
              #                     3137 untrack temp_219_cmp_258_0 
              #                     3136 untrack temp_230_value_from_ptr_299_0 
              #                     3135 untrack buf_60 
              #                    occupy a4 with buf_60
              #                    release a4 with buf_60
              #                     338  (nop) 
              #                     339  mu pos_0_65:338 
              #                     341  temp_63_arithop_250_0 = Add i32 temp_214_value_from_ptr_245_0, 1_0 
              #                    occupy a1 with temp_214_value_from_ptr_245_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_63_arithop_250_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     3157 untrack temp_214_value_from_ptr_245_0 
              #                    occupy a1 with temp_214_value_from_ptr_245_0
              #                    release a1 with temp_214_value_from_ptr_245_0
              #                     342  store temp_63_arithop_250_0:i32 *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_63_arithop_250_0
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     3158 untrack temp_63_arithop_250_0 
              #                    occupy a2 with temp_63_arithop_250_0
              #                    release a2 with temp_63_arithop_250_0
              #                     343  pos_0_66 = chi pos_0_65:342 
              #                     1581 mu pos_0_66:345 
              #                     345  ret 1_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_214_value_from_ptr_245_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |     a6:Freed { symidx: temp_249_cmp_248_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     1008 label branch_false_249: 
.branch_false_249:
              #                     3156 untrack temp_214_value_from_ptr_245_0 
              #                    occupy a1 with temp_214_value_from_ptr_245_0
              #                    release a1 with temp_214_value_from_ptr_245_0
              #                     3155 untrack temp_63_arithop_250_0 
              #                     3154 untrack temp_249_cmp_248_0 
              #                    occupy a6 with temp_249_cmp_248_0
              #                    release a6 with temp_249_cmp_248_0
              #                          jump label: branch_false_246 
              #                    occupy a3 with temp_215_cmp_245_0
              #                    load from temp_215_cmp_245_0 in mem


    lb      a3,683(sp)
              #                    occupy a4 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a4,1512(sp)
              #                    release a4 with buf_60
              #                    occupy a1 with temp_214_value_from_ptr_245_0
              #                    load from temp_214_value_from_ptr_245_0 in mem


    lw      a1,684(sp)
    j       .branch_false_246
              #                    regtab     a1:Freed { symidx: temp_214_value_from_ptr_245_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_215_cmp_245_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     889  label branch_false_246: 
.branch_false_246:
              #                     3132 untrack temp_248_ele_of_buf_60_248_0 
              #                     3131 untrack temp_249_cmp_248_0 
              #                     3130 untrack temp_247_ptr_of_buf_60_248 
              #                     3129 untrack temp_214_value_from_ptr_245_0 
              #                    occupy a1 with temp_214_value_from_ptr_245_0
              #                    release a1 with temp_214_value_from_ptr_245_0
              #                     3128 untrack temp_63_arithop_250_0 
              #                     3127 untrack temp_215_cmp_245_0 
              #                    occupy a3 with temp_215_cmp_245_0
              #                    release a3 with temp_215_cmp_245_0
              #                          jump label: L24_0 
    j       .L24_0
              #                    regtab     a2:Freed { symidx: len_60_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L24_0: 
.L24_0:
              #                     892  temp_216_ret_of_detect_item_253_0 =  Call i32 detect_item_0(2_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     1582 mu pos_0_65:892 
              #                     1583 pos_0_67 = chi pos_0_65:892 
              #                     894  temp_217_cmp_253_0 = icmp i32 Eq temp_216_ret_of_detect_item_253_0, 0_0 
              #                    occupy a0 with temp_216_ret_of_detect_item_253_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_217_cmp_253_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     3159 untrack temp_216_ret_of_detect_item_253_0 
              #                    occupy a0 with temp_216_ret_of_detect_item_253_0
              #                    release a0 with temp_216_ret_of_detect_item_253_0
              #                     897  br i1 temp_217_cmp_253_0, label branch_true_254, label branch_false_254 
              #                    occupy a2 with temp_217_cmp_253_0
              #                    free a2
              #                    occupy a2 with temp_217_cmp_253_0
    bnez    a2, .branch_true_254
              #                    free a2
    j       .branch_false_254
              #                    regtab     a2:Freed { symidx: temp_217_cmp_253_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     895  label branch_true_254: 
.branch_true_254:
              #                     3176 untrack buf_60 
              #                     3175 untrack temp_218_value_from_ptr_258_0 
              #                     3174 untrack temp_221_ptr_of_buf_60_262 
              #                     3173 untrack temp_219_cmp_258_0 
              #                     3172 untrack temp_217_cmp_253_0 
              #                    occupy a2 with temp_217_cmp_253_0
              #                    release a2 with temp_217_cmp_253_0
              #                     3171 untrack temp_225_cmp_268_0 
              #                     3170 untrack temp_231_cmp_299_0 
              #                     3169 untrack len_60_0 
              #                     3168 untrack temp_223_cmp_262_0 
              #                     3167 untrack temp_222_ele_of_buf_60_262_0 
              #                     3166 untrack temp_233_ptr_of_buf_60_303 
              #                     3165 untrack temp_234_ele_of_buf_60_303_0 
              #                     3164 untrack temp_235_cmp_303_0 
              #                     3163 untrack temp_55_arithop_242_0 
              #                     3162 untrack temp_230_value_from_ptr_299_0 
              #                     3161 untrack temp_224_ret_of_detect_item_268_0 
              #                     3160 untrack temp_57_arithop_242_0 
              #                     1584 mu pos_0_67:336 
              #                     336  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_217_cmp_253_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     896  label branch_false_254: 
.branch_false_254:
              #                     3177 untrack temp_217_cmp_253_0 
              #                    occupy a2 with temp_217_cmp_253_0
              #                    release a2 with temp_217_cmp_253_0
              #                          jump label: L25_0 
    j       .L25_0
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                          label L25_0: 
.L25_0:
              #                     281   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1585 mu pos_0_67:281 
              #                     1586 pos_0_68 = chi pos_0_67:281 
              #                          jump label: L26_0 
    j       .L26_0
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                          label L26_0: 
.L26_0:
              #                     899  temp_218_value_from_ptr_258_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_218_value_from_ptr_258_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     900  mu pos_0_68:899 
              #                     902  temp_219_cmp_258_0 = icmp i32 Sge temp_218_value_from_ptr_258_0, len_60_0 
              #                    occupy a1 with temp_218_value_from_ptr_258_0
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a3 with temp_219_cmp_258_0
    slt     a3,a1,a2
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                     905  br i1 temp_219_cmp_258_0, label branch_true_259, label branch_false_259 
              #                    occupy a3 with temp_219_cmp_258_0
              #                    free a3
              #                    occupy a3 with temp_219_cmp_258_0
    bnez    a3, .branch_true_259
              #                    free a3
    j       .branch_false_259
              #                    regtab     a1:Freed { symidx: temp_218_value_from_ptr_258_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_219_cmp_258_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     903  label branch_true_259: 
.branch_true_259:
              #                     3193 untrack buf_60 
              #                     3192 untrack temp_55_arithop_242_0 
              #                     3191 untrack temp_233_ptr_of_buf_60_303 
              #                     3190 untrack len_60_0 
              #                    occupy a2 with len_60_0
              #                    release a2 with len_60_0
              #                     3189 untrack temp_57_arithop_242_0 
              #                     3188 untrack temp_224_ret_of_detect_item_268_0 
              #                     3187 untrack temp_219_cmp_258_0 
              #                    occupy a3 with temp_219_cmp_258_0
              #                    release a3 with temp_219_cmp_258_0
              #                     3186 untrack temp_231_cmp_299_0 
              #                     3185 untrack temp_234_ele_of_buf_60_303_0 
              #                     3184 untrack temp_218_value_from_ptr_258_0 
              #                    occupy a1 with temp_218_value_from_ptr_258_0
              #                    release a1 with temp_218_value_from_ptr_258_0
              #                     3183 untrack temp_223_cmp_262_0 
              #                     3182 untrack temp_230_value_from_ptr_299_0 
              #                     3181 untrack temp_225_cmp_268_0 
              #                     3180 untrack temp_222_ele_of_buf_60_262_0 
              #                     3179 untrack temp_221_ptr_of_buf_60_262 
              #                     3178 untrack temp_235_cmp_303_0 
              #                     1587 mu pos_0_68:334 
              #                     334  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_218_value_from_ptr_258_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a3:Freed { symidx: temp_219_cmp_258_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     904  label branch_false_259: 
.branch_false_259:
              #                     3194 untrack temp_219_cmp_258_0 
              #                    occupy a3 with temp_219_cmp_258_0
              #                    release a3 with temp_219_cmp_258_0
              #                          jump label: L27_0 
    j       .L27_0
              #                    regtab     a1:Freed { symidx: temp_218_value_from_ptr_258_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                          label L27_0: 
.L27_0:
              #                     907  (nop) 
              #                     908  mu pos_0_68:907 
              #                     910  temp_221_ptr_of_buf_60_262 = GEP buf_60:Array:i32:[None] [Some(temp_218_value_from_ptr_258_0)] 
              #                    occupy a0 with temp_221_ptr_of_buf_60_262
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_218_value_from_ptr_258_0
    mv      a3, a1
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with buf_60
              #                    load from buf_60 in mem
    ld      a4,1512(sp)
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                     912  temp_222_ele_of_buf_60_262_0 = load temp_221_ptr_of_buf_60_262:ptr->i32 
              #                    occupy a0 with temp_221_ptr_of_buf_60_262
              #                    occupy a5 with temp_222_ele_of_buf_60_262_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_222_ele_of_buf_60_262_0
              #                    store to temp_222_ele_of_buf_60_262_0 in mem offset legal
    sw      a5,652(sp)
              #                    release a5 with temp_222_ele_of_buf_60_262_0
              #                    free a0
              #                     3196 untrack temp_221_ptr_of_buf_60_262 
              #                    occupy a0 with temp_221_ptr_of_buf_60_262
              #                    release a0 with temp_221_ptr_of_buf_60_262
              #                     913  mu buf_60:912 
              #                     915  temp_223_cmp_262_0 = icmp i32 Ne temp_222_ele_of_buf_60_262_0, 58_0 
              #                    occupy a0 with temp_222_ele_of_buf_60_262_0
              #                    load from temp_222_ele_of_buf_60_262_0 in mem


    lw      a0,652(sp)
              #                    occupy a5 with 58_0
    li      a5, 58
              #                    occupy a6 with temp_223_cmp_262_0
    xor     a6,a0,a5
    snez    a6, a6
              #                    free a0
              #                    occupy a0 with temp_222_ele_of_buf_60_262_0
              #                    store to temp_222_ele_of_buf_60_262_0 in mem offset legal
    sw      a0,652(sp)
              #                    release a0 with temp_222_ele_of_buf_60_262_0
              #                    free a5
              #                    free a6
              #                     3195 untrack temp_222_ele_of_buf_60_262_0 
              #                     918  br i1 temp_223_cmp_262_0, label branch_true_263, label branch_false_263 
              #                    occupy a6 with temp_223_cmp_262_0
              #                    free a6
              #                    occupy a6 with temp_223_cmp_262_0
    bnez    a6, .branch_true_263
              #                    free a6
    j       .branch_false_263
              #                    regtab     a1:Freed { symidx: temp_218_value_from_ptr_258_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |     a6:Freed { symidx: temp_223_cmp_262_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     916  label branch_true_263: 
.branch_true_263:
              #                     3209 untrack temp_55_arithop_242_0 
              #                     3208 untrack temp_234_ele_of_buf_60_303_0 
              #                     3207 untrack temp_231_cmp_299_0 
              #                     3206 untrack buf_60 
              #                    occupy a4 with buf_60
              #                    release a4 with buf_60
              #                     3205 untrack temp_233_ptr_of_buf_60_303 
              #                     3204 untrack temp_225_cmp_268_0 
              #                     3203 untrack temp_224_ret_of_detect_item_268_0 
              #                     3202 untrack len_60_0 
              #                    occupy a2 with len_60_0
              #                    release a2 with len_60_0
              #                     3201 untrack temp_218_value_from_ptr_258_0 
              #                    occupy a1 with temp_218_value_from_ptr_258_0
              #                    release a1 with temp_218_value_from_ptr_258_0
              #                     3200 untrack temp_235_cmp_303_0 
              #                     3199 untrack temp_223_cmp_262_0 
              #                    occupy a6 with temp_223_cmp_262_0
              #                    release a6 with temp_223_cmp_262_0
              #                     3198 untrack temp_230_value_from_ptr_299_0 
              #                     3197 untrack temp_57_arithop_242_0 
              #                     1588 mu pos_0_68:332 
              #                     332  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_218_value_from_ptr_258_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |     a6:Freed { symidx: temp_223_cmp_262_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     917  label branch_false_263: 
.branch_false_263:
              #                     3210 untrack temp_223_cmp_262_0 
              #                    occupy a6 with temp_223_cmp_262_0
              #                    release a6 with temp_223_cmp_262_0
              #                          jump label: L28_0 
    j       .L28_0
              #                    regtab     a1:Freed { symidx: temp_218_value_from_ptr_258_0, tracked: true } |     a2:Freed { symidx: len_60_0, tracked: true } |     a4:Freed { symidx: buf_60, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L28_0: 
.L28_0:
              #                     283  (nop) 
              #                     284  mu pos_0_68:283 
              #                     286  temp_55_arithop_242_0 = Add i32 temp_218_value_from_ptr_258_0, 1_0 
              #                    occupy a1 with temp_218_value_from_ptr_258_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with temp_55_arithop_242_0
    ADDW    a3,a1,a0
              #                    free a1
              #                    occupy a1 with temp_218_value_from_ptr_258_0
              #                    store to temp_218_value_from_ptr_258_0 in mem offset legal
    sw      a1,668(sp)
              #                    release a1 with temp_218_value_from_ptr_258_0
              #                    free a0
              #                    free a3
              #                     3212 untrack temp_218_value_from_ptr_258_0 
              #                     287  store temp_55_arithop_242_0:i32 *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a3 with temp_55_arithop_242_0
    sw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_55_arithop_242_0
              #                    store to temp_55_arithop_242_0 in mem offset legal
    sw      a3,1296(sp)
              #                    release a3 with temp_55_arithop_242_0
              #                    free a1
              #                     3211 untrack temp_55_arithop_242_0 
              #                     288  pos_0_69 = chi pos_0_68:287 
              #                     289   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    occupy a4 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a4,1512(sp)
              #                    release a4 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1589 mu pos_0_69:289 
              #                     1590 pos_0_70 = chi pos_0_69:289 
              #                          jump label: L29_0 
    j       .L29_0
              #                    regtab  released_gpr_count:9,released_fpr_count:24
              #                          label L29_0: 
.L29_0:
              #                     920  temp_224_ret_of_detect_item_268_0 =  Call i32 detect_item_0(0_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     1591 mu pos_0_70:920 
              #                     1592 pos_0_71 = chi pos_0_70:920 
              #                     922  temp_225_cmp_268_0 = icmp i32 Eq temp_224_ret_of_detect_item_268_0, 0_0 
              #                    occupy a0 with temp_224_ret_of_detect_item_268_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_225_cmp_268_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     3213 untrack temp_224_ret_of_detect_item_268_0 
              #                    occupy a0 with temp_224_ret_of_detect_item_268_0
              #                    release a0 with temp_224_ret_of_detect_item_268_0
              #                     925  br i1 temp_225_cmp_268_0, label branch_true_269, label branch_false_269 
              #                    occupy a2 with temp_225_cmp_268_0
              #                    free a2
              #                    occupy a2 with temp_225_cmp_268_0
    bnez    a2, .branch_true_269
              #                    free a2
    j       .branch_false_269
              #                    regtab     a2:Freed { symidx: temp_225_cmp_268_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     923  label branch_true_269: 
.branch_true_269:
              #                     3222 untrack temp_225_cmp_268_0 
              #                    occupy a2 with temp_225_cmp_268_0
              #                    release a2 with temp_225_cmp_268_0
              #                     3221 untrack len_60_0 
              #                     3220 untrack temp_231_cmp_299_0 
              #                     3219 untrack temp_230_value_from_ptr_299_0 
              #                     3218 untrack temp_233_ptr_of_buf_60_303 
              #                     3217 untrack buf_60 
              #                     3216 untrack temp_234_ele_of_buf_60_303_0 
              #                     3215 untrack temp_235_cmp_303_0 
              #                     3214 untrack temp_57_arithop_242_0 
              #                     1593 mu pos_0_71:330 
              #                     330  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_225_cmp_268_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     924  label branch_false_269: 
.branch_false_269:
              #                     3223 untrack temp_225_cmp_268_0 
              #                    occupy a2 with temp_225_cmp_268_0
              #                    release a2 with temp_225_cmp_268_0
              #                          jump label: L30_0 
    j       .L30_0
              #                    regtab  released_gpr_count:8,released_fpr_count:24
              #                          label L30_0: 
.L30_0:
              #                     290   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1594 mu pos_0_71:290 
              #                     1595 pos_0_72 = chi pos_0_71:290 
              #                          jump label: while.head_274 
    j       .while.head_274
              #                    regtab  released_gpr_count:8,released_fpr_count:24
              #                     936  label while.head_274: 
.while.head_274:
              #                     927  temp_226_value_from_ptr_273_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_226_value_from_ptr_273_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     928  mu pos_0_73:927 
              #                     930  temp_227_ptr_of_buf_60_273 = GEP buf_60:Array:i32:[None] [Some(temp_226_value_from_ptr_273_0)] 
              #                    occupy a2 with temp_227_ptr_of_buf_60_273
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_226_value_from_ptr_273_0
    mv      a3, a1
              #                    free a1
              #                    occupy a1 with temp_226_value_from_ptr_273_0
              #                    store to temp_226_value_from_ptr_273_0 in mem offset legal
    sw      a1,636(sp)
              #                    release a1 with temp_226_value_from_ptr_273_0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a1 with buf_60
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
    add     a2,a2,a1
              #                    free a1
              #                    occupy a1 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a1,1512(sp)
              #                    release a1 with buf_60
              #                    free a2
              #                     932  temp_228_ele_of_buf_60_273_0 = load temp_227_ptr_of_buf_60_273:ptr->i32 
              #                    occupy a2 with temp_227_ptr_of_buf_60_273
              #                    occupy a1 with temp_228_ele_of_buf_60_273_0
    lw      a1,0(a2)
              #                    free a1
              #                    occupy a1 with temp_228_ele_of_buf_60_273_0
              #                    store to temp_228_ele_of_buf_60_273_0 in mem offset legal
    sw      a1,620(sp)
              #                    release a1 with temp_228_ele_of_buf_60_273_0
              #                    free a2
              #                     933  mu buf_60:932 
              #                     935  temp_229_cmp_273_0 = icmp i32 Eq temp_228_ele_of_buf_60_273_0, 44_0 
              #                    occupy a1 with temp_228_ele_of_buf_60_273_0
              #                    load from temp_228_ele_of_buf_60_273_0 in mem


    lw      a1,620(sp)
              #                    occupy a4 with 44_0
    li      a4, 44
              #                    occupy a5 with temp_229_cmp_273_0
    xor     a5,a1,a4
    seqz    a5, a5
              #                    free a1
              #                    occupy a1 with temp_228_ele_of_buf_60_273_0
              #                    store to temp_228_ele_of_buf_60_273_0 in mem offset legal
    sw      a1,620(sp)
              #                    release a1 with temp_228_ele_of_buf_60_273_0
              #                    free a4
              #                    free a5
              #                    occupy a5 with temp_229_cmp_273_0
              #                    store to temp_229_cmp_273_0 in mem offset legal
    sb      a5,619(sp)
              #                    release a5 with temp_229_cmp_273_0
              #                     939  br i1 temp_229_cmp_273_0, label while.body_274, label while.exit_274 
              #                    occupy a1 with temp_229_cmp_273_0
              #                    load from temp_229_cmp_273_0 in mem


    lb      a1,619(sp)
              #                    free a1
              #                    occupy a1 with temp_229_cmp_273_0
              #                    store to temp_229_cmp_273_0 in mem offset legal
    sb      a1,619(sp)
              #                    release a1 with temp_229_cmp_273_0
              #                    occupy a0 with temp_229_cmp_273_0
              #                    load from temp_229_cmp_273_0 in mem


    lb      a0,619(sp)
    bnez    a0, .while.body_274
              #                    free a0
              #                    occupy a0 with temp_229_cmp_273_0
              #                    store to temp_229_cmp_273_0 in mem offset legal
    sb      a0,619(sp)
              #                    release a0 with temp_229_cmp_273_0
    j       .while.exit_274
              #                    regtab     a2:Freed { symidx: temp_227_ptr_of_buf_60_273, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     937  label while.body_274: 
.while.body_274:
              #                     304  (nop) 
              #                     305  mu pos_0_73:304 
              #                     307  temp_59_arithop_275_0 = Add i32 temp_226_value_from_ptr_273_0, 1_0 
              #                    occupy a0 with temp_226_value_from_ptr_273_0
              #                    load from temp_226_value_from_ptr_273_0 in mem


    lw      a0,636(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_59_arithop_275_0
    ADDW    a3,a0,a1
              #                    free a0
              #                    occupy a0 with temp_226_value_from_ptr_273_0
              #                    store to temp_226_value_from_ptr_273_0 in mem offset legal
    sw      a0,636(sp)
              #                    release a0 with temp_226_value_from_ptr_273_0
              #                    free a1
              #                    free a3
              #                    occupy a3 with temp_59_arithop_275_0
              #                    store to temp_59_arithop_275_0 in mem offset legal
    sw      a3,1288(sp)
              #                    release a3 with temp_59_arithop_275_0
              #                     308  store temp_59_arithop_275_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_59_arithop_275_0
              #                    load from temp_59_arithop_275_0 in mem


    lw      a1,1288(sp)
    sw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_59_arithop_275_0
              #                    store to temp_59_arithop_275_0 in mem offset legal
    sw      a1,1288(sp)
              #                    release a1 with temp_59_arithop_275_0
              #                    free a0
              #                     309  pos_0_74 = chi pos_0_73:308 
              #                     310   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_227_ptr_of_buf_60_273
              #                    store to temp_227_ptr_of_buf_60_273 in mem offset legal
    sd      a2,624(sp)
              #                    release a2 with temp_227_ptr_of_buf_60_273
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1596 mu pos_0_74:310 
              #                     1597 pos_0_75 = chi pos_0_74:310 
              #                          jump label: L31_0 
    j       .L31_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L31_0: 
.L31_0:
              #                     963  temp_236_ret_of_detect_item_278_0 =  Call i32 detect_item_0(2_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     1598 mu pos_0_75:963 
              #                     1599 pos_0_76 = chi pos_0_75:963 
              #                     965  temp_237_cmp_278_0 = icmp i32 Eq temp_236_ret_of_detect_item_278_0, 0_0 
              #                    occupy a0 with temp_236_ret_of_detect_item_278_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_237_cmp_278_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    occupy a0 with temp_236_ret_of_detect_item_278_0
              #                    store to temp_236_ret_of_detect_item_278_0 in mem offset legal
    sw      a0,588(sp)
              #                    release a0 with temp_236_ret_of_detect_item_278_0
              #                    free a1
              #                    free a2
              #                     968  br i1 temp_237_cmp_278_0, label branch_true_279, label branch_false_279 
              #                    occupy a2 with temp_237_cmp_278_0
              #                    free a2
              #                    occupy a2 with temp_237_cmp_278_0
    bnez    a2, .branch_true_279
              #                    free a2
    j       .branch_false_279
              #                    regtab     a2:Freed { symidx: temp_237_cmp_278_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     966  label branch_true_279: 
.branch_true_279:
              #                     3238 untrack temp_61_arithop_275_0 
              #                     3237 untrack temp_236_ret_of_detect_item_278_0 
              #                     3236 untrack temp_243_cmp_287_0 
              #                     3235 untrack temp_238_value_from_ptr_283_0 
              #                     3234 untrack temp_244_ret_of_detect_item_293_0 
              #                     3233 untrack temp_229_cmp_273_0 
              #                     3232 untrack temp_239_cmp_283_0 
              #                     3231 untrack temp_59_arithop_275_0 
              #                     3230 untrack temp_228_ele_of_buf_60_273_0 
              #                     3229 untrack temp_237_cmp_278_0 
              #                    occupy a2 with temp_237_cmp_278_0
              #                    release a2 with temp_237_cmp_278_0
              #                     3228 untrack temp_227_ptr_of_buf_60_273 
              #                     3227 untrack temp_242_ele_of_buf_60_287_0 
              #                     3226 untrack temp_241_ptr_of_buf_60_287 
              #                     3225 untrack temp_245_cmp_293_0 
              #                     3224 untrack temp_226_value_from_ptr_273_0 
              #                     1600 mu pos_0_76:328 
              #                     328  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_237_cmp_278_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     967  label branch_false_279: 
.branch_false_279:
              #                          jump label: L32_0 
    j       .L32_0
              #                    regtab     a2:Freed { symidx: temp_237_cmp_278_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L32_0: 
.L32_0:
              #                     311   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_237_cmp_278_0
              #                    store to temp_237_cmp_278_0 in mem offset legal
    sb      a2,587(sp)
              #                    release a2 with temp_237_cmp_278_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1601 mu pos_0_76:311 
              #                     1602 pos_0_77 = chi pos_0_76:311 
              #                          jump label: L33_0 
    j       .L33_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L33_0: 
.L33_0:
              #                     970  temp_238_value_from_ptr_283_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_238_value_from_ptr_283_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_238_value_from_ptr_283_0
              #                    store to temp_238_value_from_ptr_283_0 in mem offset legal
    sw      a1,580(sp)
              #                    release a1 with temp_238_value_from_ptr_283_0
              #                    free a0
              #                     971  mu pos_0_77:970 
              #                     973  temp_239_cmp_283_0 = icmp i32 Sge temp_238_value_from_ptr_283_0, len_60_0 
              #                    occupy a1 with temp_238_value_from_ptr_283_0
              #                    load from temp_238_value_from_ptr_283_0 in mem


    lw      a1,580(sp)
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a3 with temp_239_cmp_283_0
    slt     a3,a1,a2
    xori    a3,a3,1
              #                    free a1
              #                    occupy a1 with temp_238_value_from_ptr_283_0
              #                    store to temp_238_value_from_ptr_283_0 in mem offset legal
    sw      a1,580(sp)
              #                    release a1 with temp_238_value_from_ptr_283_0
              #                    free a2
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    free a3
              #                    occupy a3 with temp_239_cmp_283_0
              #                    store to temp_239_cmp_283_0 in mem offset legal
    sb      a3,579(sp)
              #                    release a3 with temp_239_cmp_283_0
              #                     976  br i1 temp_239_cmp_283_0, label branch_true_284, label branch_false_284 
              #                    occupy a1 with temp_239_cmp_283_0
              #                    load from temp_239_cmp_283_0 in mem


    lb      a1,579(sp)
              #                    free a1
              #                    occupy a1 with temp_239_cmp_283_0
              #                    store to temp_239_cmp_283_0 in mem offset legal
    sb      a1,579(sp)
              #                    release a1 with temp_239_cmp_283_0
              #                    occupy a0 with temp_239_cmp_283_0
              #                    load from temp_239_cmp_283_0 in mem


    lb      a0,579(sp)
    bnez    a0, .branch_true_284
              #                    free a0
              #                    occupy a0 with temp_239_cmp_283_0
              #                    store to temp_239_cmp_283_0 in mem offset legal
    sb      a0,579(sp)
              #                    release a0 with temp_239_cmp_283_0
    j       .branch_false_284
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     974  label branch_true_284: 
.branch_true_284:
              #                     3253 untrack temp_229_cmp_273_0 
              #                     3252 untrack temp_243_cmp_287_0 
              #                     3251 untrack temp_244_ret_of_detect_item_293_0 
              #                     3250 untrack temp_59_arithop_275_0 
              #                     3249 untrack temp_226_value_from_ptr_273_0 
              #                     3248 untrack temp_227_ptr_of_buf_60_273 
              #                     3247 untrack temp_241_ptr_of_buf_60_287 
              #                     3246 untrack temp_61_arithop_275_0 
              #                     3245 untrack temp_242_ele_of_buf_60_287_0 
              #                     3244 untrack temp_237_cmp_278_0 
              #                     3243 untrack temp_228_ele_of_buf_60_273_0 
              #                     3242 untrack temp_238_value_from_ptr_283_0 
              #                     3241 untrack temp_245_cmp_293_0 
              #                     3240 untrack temp_236_ret_of_detect_item_278_0 
              #                     3239 untrack temp_239_cmp_283_0 
              #                     1603 mu pos_0_77:326 
              #                     326  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     975  label branch_false_284: 
.branch_false_284:
              #                          jump label: L34_0 
    j       .L34_0
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                          label L34_0: 
.L34_0:
              #                     978  (nop) 
              #                     979  mu pos_0_77:978 
              #                     981  temp_241_ptr_of_buf_60_287 = GEP buf_60:Array:i32:[None] [Some(temp_238_value_from_ptr_283_0)] 
              #                    occupy a0 with temp_241_ptr_of_buf_60_287
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_238_value_from_ptr_283_0
              #                    load from temp_238_value_from_ptr_283_0 in mem


    lw      a2,580(sp)
    mv      a1, a2
              #                    free a2
              #                    occupy a2 with temp_238_value_from_ptr_283_0
              #                    store to temp_238_value_from_ptr_283_0 in mem offset legal
    sw      a2,580(sp)
              #                    release a2 with temp_238_value_from_ptr_283_0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a1 with buf_60
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a1,1512(sp)
              #                    release a1 with buf_60
              #                    free a0
              #                    occupy a0 with temp_241_ptr_of_buf_60_287
              #                    store to temp_241_ptr_of_buf_60_287 in mem offset legal
    sd      a0,568(sp)
              #                    release a0 with temp_241_ptr_of_buf_60_287
              #                     983  temp_242_ele_of_buf_60_287_0 = load temp_241_ptr_of_buf_60_287:ptr->i32 
              #                    occupy a0 with temp_241_ptr_of_buf_60_287
              #                    load from temp_241_ptr_of_buf_60_287 in mem
    ld      a0,568(sp)
              #                    occupy a1 with temp_242_ele_of_buf_60_287_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_242_ele_of_buf_60_287_0
              #                    store to temp_242_ele_of_buf_60_287_0 in mem offset legal
    sw      a1,564(sp)
              #                    release a1 with temp_242_ele_of_buf_60_287_0
              #                    free a0
              #                    occupy a0 with temp_241_ptr_of_buf_60_287
              #                    store to temp_241_ptr_of_buf_60_287 in mem offset legal
    sd      a0,568(sp)
              #                    release a0 with temp_241_ptr_of_buf_60_287
              #                     984  mu buf_60:983 
              #                     986  temp_243_cmp_287_0 = icmp i32 Ne temp_242_ele_of_buf_60_287_0, 58_0 
              #                    occupy a0 with temp_242_ele_of_buf_60_287_0
              #                    load from temp_242_ele_of_buf_60_287_0 in mem


    lw      a0,564(sp)
              #                    occupy a1 with 58_0
    li      a1, 58
              #                    occupy a2 with temp_243_cmp_287_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_242_ele_of_buf_60_287_0
              #                    store to temp_242_ele_of_buf_60_287_0 in mem offset legal
    sw      a0,564(sp)
              #                    release a0 with temp_242_ele_of_buf_60_287_0
              #                    free a1
              #                    free a2
              #                    occupy a2 with temp_243_cmp_287_0
              #                    store to temp_243_cmp_287_0 in mem offset legal
    sb      a2,563(sp)
              #                    release a2 with temp_243_cmp_287_0
              #                     989  br i1 temp_243_cmp_287_0, label branch_true_288, label branch_false_288 
              #                    occupy a0 with temp_243_cmp_287_0
              #                    load from temp_243_cmp_287_0 in mem


    lb      a0,563(sp)
              #                    free a0
              #                    occupy a0 with temp_243_cmp_287_0
              #                    store to temp_243_cmp_287_0 in mem offset legal
    sb      a0,563(sp)
              #                    release a0 with temp_243_cmp_287_0
              #                    occupy a0 with temp_243_cmp_287_0
              #                    load from temp_243_cmp_287_0 in mem


    lb      a0,563(sp)
    bnez    a0, .branch_true_288
              #                    free a0
              #                    occupy a0 with temp_243_cmp_287_0
              #                    store to temp_243_cmp_287_0 in mem offset legal
    sb      a0,563(sp)
              #                    release a0 with temp_243_cmp_287_0
    j       .branch_false_288
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     987  label branch_true_288: 
.branch_true_288:
              #                     3268 untrack temp_229_cmp_273_0 
              #                     3267 untrack temp_226_value_from_ptr_273_0 
              #                     3266 untrack temp_243_cmp_287_0 
              #                     3265 untrack temp_239_cmp_283_0 
              #                     3264 untrack temp_244_ret_of_detect_item_293_0 
              #                     3263 untrack temp_227_ptr_of_buf_60_273 
              #                     3262 untrack temp_59_arithop_275_0 
              #                     3261 untrack temp_228_ele_of_buf_60_273_0 
              #                     3260 untrack temp_237_cmp_278_0 
              #                     3259 untrack temp_238_value_from_ptr_283_0 
              #                     3258 untrack temp_236_ret_of_detect_item_278_0 
              #                     3257 untrack temp_61_arithop_275_0 
              #                     3256 untrack temp_245_cmp_293_0 
              #                     3255 untrack temp_241_ptr_of_buf_60_287 
              #                     3254 untrack temp_242_ele_of_buf_60_287_0 
              #                     1604 mu pos_0_77:324 
              #                     324  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     988  label branch_false_288: 
.branch_false_288:
              #                          jump label: L35_0 
    j       .L35_0
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                          label L35_0: 
.L35_0:
              #                     313  (nop) 
              #                     314  mu pos_0_77:313 
              #                     316  temp_61_arithop_275_0 = Add i32 temp_238_value_from_ptr_283_0, 1_0 
              #                    occupy a0 with temp_238_value_from_ptr_283_0
              #                    load from temp_238_value_from_ptr_283_0 in mem


    lw      a0,580(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_61_arithop_275_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    occupy a0 with temp_238_value_from_ptr_283_0
              #                    store to temp_238_value_from_ptr_283_0 in mem offset legal
    sw      a0,580(sp)
              #                    release a0 with temp_238_value_from_ptr_283_0
              #                    free a1
              #                    free a2
              #                    occupy a2 with temp_61_arithop_275_0
              #                    store to temp_61_arithop_275_0 in mem offset legal
    sw      a2,1284(sp)
              #                    release a2 with temp_61_arithop_275_0
              #                     317  store temp_61_arithop_275_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_61_arithop_275_0
              #                    load from temp_61_arithop_275_0 in mem


    lw      a1,1284(sp)
    sw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_61_arithop_275_0
              #                    store to temp_61_arithop_275_0 in mem offset legal
    sw      a1,1284(sp)
              #                    release a1 with temp_61_arithop_275_0
              #                    free a0
              #                     318  pos_0_78 = chi pos_0_77:317 
              #                     319   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1605 mu pos_0_78:319 
              #                     1606 pos_0_79 = chi pos_0_78:319 
              #                          jump label: L36_0 
    j       .L36_0
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                          label L36_0: 
.L36_0:
              #                     991  temp_244_ret_of_detect_item_293_0 =  Call i32 detect_item_0(0_0, buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
              #                    occupy a2 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    arg load ended


    call    detect_item
              #                     1607 mu pos_0_79:991 
              #                     1608 pos_0_80 = chi pos_0_79:991 
              #                     993  temp_245_cmp_293_0 = icmp i32 Eq temp_244_ret_of_detect_item_293_0, 0_0 
              #                    occupy a0 with temp_244_ret_of_detect_item_293_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_245_cmp_293_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    occupy a0 with temp_244_ret_of_detect_item_293_0
              #                    store to temp_244_ret_of_detect_item_293_0 in mem offset legal
    sw      a0,556(sp)
              #                    release a0 with temp_244_ret_of_detect_item_293_0
              #                    free a1
              #                    free a2
              #                    occupy a2 with temp_245_cmp_293_0
              #                    store to temp_245_cmp_293_0 in mem offset legal
    sb      a2,555(sp)
              #                    release a2 with temp_245_cmp_293_0
              #                     996  br i1 temp_245_cmp_293_0, label branch_true_294, label branch_false_294 
              #                    occupy a0 with temp_245_cmp_293_0
              #                    load from temp_245_cmp_293_0 in mem


    lb      a0,555(sp)
              #                    free a0
              #                    occupy a0 with temp_245_cmp_293_0
              #                    store to temp_245_cmp_293_0 in mem offset legal
    sb      a0,555(sp)
              #                    release a0 with temp_245_cmp_293_0
              #                    occupy a0 with temp_245_cmp_293_0
              #                    load from temp_245_cmp_293_0 in mem


    lb      a0,555(sp)
    bnez    a0, .branch_true_294
              #                    free a0
              #                    occupy a0 with temp_245_cmp_293_0
              #                    store to temp_245_cmp_293_0 in mem offset legal
    sb      a0,555(sp)
              #                    release a0 with temp_245_cmp_293_0
    j       .branch_false_294
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     994  label branch_true_294: 
.branch_true_294:
              #                     3283 untrack temp_228_ele_of_buf_60_273_0 
              #                     3282 untrack temp_238_value_from_ptr_283_0 
              #                     3281 untrack temp_61_arithop_275_0 
              #                     3280 untrack temp_59_arithop_275_0 
              #                     3279 untrack temp_237_cmp_278_0 
              #                     3278 untrack temp_242_ele_of_buf_60_287_0 
              #                     3277 untrack temp_239_cmp_283_0 
              #                     3276 untrack temp_244_ret_of_detect_item_293_0 
              #                     3275 untrack temp_245_cmp_293_0 
              #                     3274 untrack temp_236_ret_of_detect_item_278_0 
              #                     3273 untrack temp_241_ptr_of_buf_60_287 
              #                     3272 untrack temp_227_ptr_of_buf_60_273 
              #                     3271 untrack temp_229_cmp_273_0 
              #                     3270 untrack temp_226_value_from_ptr_273_0 
              #                     3269 untrack temp_243_cmp_287_0 
              #                     1609 mu pos_0_80:322 
              #                     322  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     995  label branch_false_294: 
.branch_false_294:
              #                          jump label: L37_0 
    j       .L37_0
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                          label L37_0: 
.L37_0:
              #                     320   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1610 mu pos_0_80:320 
              #                     1611 pos_0_81 = chi pos_0_80:320 
              #                          jump label: while.head_274 
    j       .while.head_274
              #                    regtab     a2:Freed { symidx: temp_227_ptr_of_buf_60_273, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     938  label while.exit_274: 
.while.exit_274:
              #                     291   Call void skip_space_0(buf_60, len_60_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_227_ptr_of_buf_60_273
              #                    store to temp_227_ptr_of_buf_60_273 in mem offset legal
    sd      a2,624(sp)
              #                    release a2 with temp_227_ptr_of_buf_60_273
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1512(sp)
              #                    occupy a1 with _anonymous_of_len_60_0_0
              #                    load from len_60_0 in mem


    lw      a1,1508(sp)
              #                    arg load ended


    call    skip_space
              #                     1612 mu pos_0_73:291 
              #                     1613 pos_0_82 = chi pos_0_73:291 
              #                          jump label: L38_0 
    j       .L38_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L38_0: 
.L38_0:
              #                     941  temp_230_value_from_ptr_299_0 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_230_value_from_ptr_299_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_230_value_from_ptr_299_0
              #                    store to temp_230_value_from_ptr_299_0 in mem offset legal
    sw      a1,612(sp)
              #                    release a1 with temp_230_value_from_ptr_299_0
              #                    free a0
              #                     942  mu pos_0_82:941 
              #                     944  temp_231_cmp_299_0 = icmp i32 Sge temp_230_value_from_ptr_299_0, len_60_0 
              #                    occupy a1 with temp_230_value_from_ptr_299_0
              #                    load from temp_230_value_from_ptr_299_0 in mem


    lw      a1,612(sp)
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a3 with temp_231_cmp_299_0
    slt     a3,a1,a2
    xori    a3,a3,1
              #                    free a1
              #                    occupy a1 with temp_230_value_from_ptr_299_0
              #                    store to temp_230_value_from_ptr_299_0 in mem offset legal
    sw      a1,612(sp)
              #                    release a1 with temp_230_value_from_ptr_299_0
              #                    free a2
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    free a3
              #                    occupy a3 with temp_231_cmp_299_0
              #                    store to temp_231_cmp_299_0 in mem offset legal
    sb      a3,611(sp)
              #                    release a3 with temp_231_cmp_299_0
              #                     3284 untrack len_60_0 
              #                     947  br i1 temp_231_cmp_299_0, label branch_true_300, label branch_false_300 
              #                    occupy a1 with temp_231_cmp_299_0
              #                    load from temp_231_cmp_299_0 in mem


    lb      a1,611(sp)
              #                    free a1
              #                    occupy a1 with temp_231_cmp_299_0
              #                    store to temp_231_cmp_299_0 in mem offset legal
    sb      a1,611(sp)
              #                    release a1 with temp_231_cmp_299_0
              #                    occupy a0 with temp_231_cmp_299_0
              #                    load from temp_231_cmp_299_0 in mem


    lb      a0,611(sp)
    bnez    a0, .branch_true_300
              #                    free a0
              #                    occupy a0 with temp_231_cmp_299_0
              #                    store to temp_231_cmp_299_0 in mem offset legal
    sb      a0,611(sp)
              #                    release a0 with temp_231_cmp_299_0
    j       .branch_false_300
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     945  label branch_true_300: 
.branch_true_300:
              #                     3291 untrack temp_233_ptr_of_buf_60_303 
              #                     3290 untrack buf_60 
              #                     3289 untrack temp_57_arithop_242_0 
              #                     3288 untrack temp_235_cmp_303_0 
              #                     3287 untrack temp_234_ele_of_buf_60_303_0 
              #                     3286 untrack temp_230_value_from_ptr_299_0 
              #                     3285 untrack temp_231_cmp_299_0 
              #                     1614 mu pos_0_82:302 
              #                     302  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     946  label branch_false_300: 
.branch_false_300:
              #                     3292 untrack temp_231_cmp_299_0 
              #                     949  (nop) 
              #                     950  mu pos_0_82:949 
              #                     952  temp_233_ptr_of_buf_60_303 = GEP buf_60:Array:i32:[None] [Some(temp_230_value_from_ptr_299_0)] 
              #                    occupy a0 with temp_233_ptr_of_buf_60_303
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_230_value_from_ptr_299_0
              #                    load from temp_230_value_from_ptr_299_0 in mem


    lw      a2,612(sp)
    mv      a1, a2
              #                    free a2
              #                    occupy a2 with temp_230_value_from_ptr_299_0
              #                    store to temp_230_value_from_ptr_299_0 in mem offset legal
    sw      a2,612(sp)
              #                    release a2 with temp_230_value_from_ptr_299_0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a1 with buf_60
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a1,1512(sp)
              #                    release a1 with buf_60
              #                    free a0
              #                    occupy a0 with temp_233_ptr_of_buf_60_303
              #                    store to temp_233_ptr_of_buf_60_303 in mem offset legal
    sd      a0,600(sp)
              #                    release a0 with temp_233_ptr_of_buf_60_303
              #                     954  temp_234_ele_of_buf_60_303_0 = load temp_233_ptr_of_buf_60_303:ptr->i32 
              #                    occupy a0 with temp_233_ptr_of_buf_60_303
              #                    load from temp_233_ptr_of_buf_60_303 in mem
    ld      a0,600(sp)
              #                    occupy a1 with temp_234_ele_of_buf_60_303_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_234_ele_of_buf_60_303_0
              #                    store to temp_234_ele_of_buf_60_303_0 in mem offset legal
    sw      a1,596(sp)
              #                    release a1 with temp_234_ele_of_buf_60_303_0
              #                    free a0
              #                    occupy a0 with temp_233_ptr_of_buf_60_303
              #                    store to temp_233_ptr_of_buf_60_303 in mem offset legal
    sd      a0,600(sp)
              #                    release a0 with temp_233_ptr_of_buf_60_303
              #                     3293 untrack temp_233_ptr_of_buf_60_303 
              #                     955  mu buf_60:954 
              #                     3295 untrack buf_60 
              #                     957  temp_235_cmp_303_0 = icmp i32 Ne temp_234_ele_of_buf_60_303_0, 125_0 
              #                    occupy a0 with temp_234_ele_of_buf_60_303_0
              #                    load from temp_234_ele_of_buf_60_303_0 in mem


    lw      a0,596(sp)
              #                    occupy a1 with 125_0
    li      a1, 125
              #                    occupy a2 with temp_235_cmp_303_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_234_ele_of_buf_60_303_0
              #                    store to temp_234_ele_of_buf_60_303_0 in mem offset legal
    sw      a0,596(sp)
              #                    release a0 with temp_234_ele_of_buf_60_303_0
              #                    free a1
              #                    free a2
              #                    occupy a2 with temp_235_cmp_303_0
              #                    store to temp_235_cmp_303_0 in mem offset legal
    sb      a2,595(sp)
              #                    release a2 with temp_235_cmp_303_0
              #                     3294 untrack temp_234_ele_of_buf_60_303_0 
              #                     960  br i1 temp_235_cmp_303_0, label branch_true_304, label branch_false_304 
              #                    occupy a0 with temp_235_cmp_303_0
              #                    load from temp_235_cmp_303_0 in mem


    lb      a0,595(sp)
              #                    free a0
              #                    occupy a0 with temp_235_cmp_303_0
              #                    store to temp_235_cmp_303_0 in mem offset legal
    sb      a0,595(sp)
              #                    release a0 with temp_235_cmp_303_0
              #                    occupy a0 with temp_235_cmp_303_0
              #                    load from temp_235_cmp_303_0 in mem


    lb      a0,595(sp)
    bnez    a0, .branch_true_304
              #                    free a0
              #                    occupy a0 with temp_235_cmp_303_0
              #                    store to temp_235_cmp_303_0 in mem offset legal
    sb      a0,595(sp)
              #                    release a0 with temp_235_cmp_303_0
    j       .branch_false_304
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     958  label branch_true_304: 
.branch_true_304:
              #                     3298 untrack temp_235_cmp_303_0 
              #                     3297 untrack temp_57_arithop_242_0 
              #                     3296 untrack temp_230_value_from_ptr_299_0 
              #                     1615 mu pos_0_82:300 
              #                     300  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     959  label branch_false_304: 
.branch_false_304:
              #                     3299 untrack temp_235_cmp_303_0 
              #                          jump label: gather_194 
    j       .gather_194
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     961  label gather_194: 
.gather_194:
              #                          jump label: L39_0 
    j       .L39_0
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                          label L39_0: 
.L39_0:
              #                     293  (nop) 
              #                     294  mu pos_0_82:293 
              #                     296  temp_57_arithop_242_0 = Add i32 temp_230_value_from_ptr_299_0, 1_0 
              #                    occupy a0 with temp_230_value_from_ptr_299_0
              #                    load from temp_230_value_from_ptr_299_0 in mem


    lw      a0,612(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_57_arithop_242_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    occupy a0 with temp_230_value_from_ptr_299_0
              #                    store to temp_230_value_from_ptr_299_0 in mem offset legal
    sw      a0,612(sp)
              #                    release a0 with temp_230_value_from_ptr_299_0
              #                    free a1
              #                    free a2
              #                    occupy a2 with temp_57_arithop_242_0
              #                    store to temp_57_arithop_242_0 in mem offset legal
    sw      a2,1292(sp)
              #                    release a2 with temp_57_arithop_242_0
              #                     3301 untrack temp_230_value_from_ptr_299_0 
              #                     297  store temp_57_arithop_242_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_57_arithop_242_0
              #                    load from temp_57_arithop_242_0 in mem


    lw      a1,1292(sp)
    sw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_57_arithop_242_0
              #                    store to temp_57_arithop_242_0 in mem offset legal
    sw      a1,1292(sp)
              #                    release a1 with temp_57_arithop_242_0
              #                    free a0
              #                     3300 untrack temp_57_arithop_242_0 
              #                     298  pos_0_83 = chi pos_0_82:297 
              #                          jump label: gather_258 
    j       .gather_258
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     579  label gather_258: 
.gather_258:
              #                          jump label: gather_260 
    j       .gather_260
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_113_cmp_240_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     559  label branch_false_241: 
.branch_false_241:
              #                     3123 untrack temp_53_arithop_242_0 
              #                     3122 untrack temp_55_arithop_242_0 
              #                     3121 untrack temp_63_arithop_250_0 
              #                     3120 untrack temp_214_value_from_ptr_245_0 
              #                     3119 untrack temp_234_ele_of_buf_60_303_0 
              #                     3118 untrack temp_231_cmp_299_0 
              #                     3117 untrack temp_249_cmp_248_0 
              #                     3116 untrack temp_221_ptr_of_buf_60_262 
              #                     3115 untrack temp_113_cmp_240_0 
              #                    occupy a2 with temp_113_cmp_240_0
              #                    release a2 with temp_113_cmp_240_0
              #                     3114 untrack temp_217_cmp_253_0 
              #                     3113 untrack temp_215_cmp_245_0 
              #                     3112 untrack temp_222_ele_of_buf_60_262_0 
              #                     3111 untrack temp_219_cmp_258_0 
              #                     3110 untrack temp_235_cmp_303_0 
              #                     3109 untrack temp_248_ele_of_buf_60_248_0 
              #                     3108 untrack temp_52_value_from_ptr_242_0 
              #                     3107 untrack temp_224_ret_of_detect_item_268_0 
              #                     3106 untrack temp_230_value_from_ptr_299_0 
              #                     3105 untrack temp_218_value_from_ptr_258_0 
              #                     3104 untrack temp_225_cmp_268_0 
              #                     3103 untrack temp_247_ptr_of_buf_60_248 
              #                     3102 untrack temp_223_cmp_262_0 
              #                     3101 untrack temp_57_arithop_242_0 
              #                     3100 untrack temp_216_ret_of_detect_item_253_0 
              #                     3099 untrack temp_233_ptr_of_buf_60_303 
              #                     562  temp_114_cmp_308_0 = icmp i32 Eq type_60_0, 5_0 
              #                    occupy a0 with type_60_0
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a2 with temp_114_cmp_308_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     565  br i1 temp_114_cmp_308_0, label branch_true_309, label branch_false_309 
              #                    occupy a2 with temp_114_cmp_308_0
              #                    free a2
              #                    occupy a2 with temp_114_cmp_308_0
    bnez    a2, .branch_true_309
              #                    free a2
    j       .branch_false_309
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_114_cmp_308_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     563  label branch_true_309: 
.branch_true_309:
              #                     3365 untrack temp_141_ele_of_mNull_364_382_0 
              #                     3364 untrack temp_33_array_init_ptr_364 
              #                     3363 untrack temp_146_cmp_382_0 
              #                     3362 untrack temp_183_cmp_357_0 
              #                     3361 untrack temp_151_ele_of_mFalse_335_341_0 
              #                     3360 untrack temp_164_ele_of_mFalse_335_349_0 
              #                     3359 untrack temp_157_ele_of_mFalse_335_345_0 
              #                     3358 untrack temp_119_cmp_366_0 
              #                     3357 untrack temp_149_cmp_337_0 
              #                     3356 untrack temp_124_ele_of_buf_60_370_0 
              #                     3355 untrack temp_173_arithop_353_0 
              #                     3354 untrack temp_155_cmp_341_0 
              #                     3353 untrack temp_136_arithop_378_0 
              #                     3352 untrack temp_31_array_init_ptr_364 
              #                     3351 untrack temp_30_array_init_ptr_364 
              #                     3350 untrack temp_40_array_init_ptr_335 
              #                     3349 untrack temp_130_ptr_of_buf_60_374 
              #                     3348 untrack temp_169_cmp_349_0 
              #                     3347 untrack temp_131_ele_of_buf_60_374_0 
              #                     3346 untrack temp_34_array_init_ptr_364 
              #                     3345 untrack temp_38_array_init_ptr_335 
              #                     3344 untrack temp_145_ele_of_buf_60_382_0 
              #                     3343 untrack temp_37_array_init_ptr_335 
              #                     3342 untrack temp_162_cmp_345_0 
              #                     3341 untrack temp_153_ptr_of_buf_60_341 
              #                     3340 untrack temp_129_arithop_374_0 
              #                     3339 untrack temp_181_ptr_of_buf_60_357 
              #                     3338 untrack temp_127_ele_of_mNull_364_374_0 
              #                     3337 untrack temp_132_cmp_374_0 
              #                     3336 untrack temp_137_ptr_of_buf_60_378 
              #                     3335 untrack temp_148_arithop_337_0 
              #                     3334 untrack temp_125_cmp_370_0 
              #                     3333 untrack temp_168_ele_of_buf_60_349_0 
              #                     3332 untrack temp_159_arithop_345_0 
              #                     3331 untrack temp_166_arithop_349_0 
              #                     3330 untrack type_60_0 
              #                    occupy a0 with type_60_0
              #                    release a0 with type_60_0
              #                     3329 untrack temp_139_cmp_378_0 
              #                     3328 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     3327 untrack temp_144_ptr_of_buf_60_382 
              #                     3326 untrack temp_36_arithop_364_0 
              #                     3325 untrack temp_174_ptr_of_buf_60_353 
              #                     3324 untrack temp_161_ele_of_buf_60_345_0 
              #                     3323 untrack temp_182_ele_of_buf_60_357_0 
              #                     3322 untrack temp_42_array_init_ptr_335 
              #                     3321 untrack temp_176_cmp_353_0 
              #                     3320 untrack temp_114_cmp_308_0 
              #                    occupy a2 with temp_114_cmp_308_0
              #                    release a2 with temp_114_cmp_308_0
              #                     3319 untrack temp_44_arithop_335_0 
              #                     3318 untrack temp_118_arithop_366_0 
              #                     3317 untrack temp_116_cmp_362_0 
              #                     3316 untrack temp_123_ptr_of_buf_60_370 
              #                     3315 untrack temp_171_ele_of_mFalse_335_353_0 
              #                     3314 untrack temp_147_value_from_ptr_337_0 
              #                     3313 untrack temp_32_array_init_ptr_364 
              #                     3312 untrack temp_134_ele_of_mNull_364_378_0 
              #                     3311 untrack temp_160_ptr_of_buf_60_345 
              #                     3310 untrack temp_138_ele_of_buf_60_378_0 
              #                     3309 untrack temp_115_cmp_333_0 
              #                     3308 untrack temp_175_ele_of_buf_60_353_0 
              #                     3307 untrack temp_41_array_init_ptr_335 
              #                     3306 untrack temp_167_ptr_of_buf_60_349 
              #                     3305 untrack temp_117_value_from_ptr_366_0 
              #                     3304 untrack temp_154_ele_of_buf_60_341_0 
              #                     3303 untrack temp_121_ele_of_mNull_364_370_0 
              #                     3302 untrack temp_39_array_init_ptr_335 
              #                     235   
              #                     237  temp_45_array_init_ptr_310 = GEP mTrue_310_0:Array:i32:[Some(4_0)] [] 
              #                    occupy a0 with temp_45_array_init_ptr_310
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1312
              #                    free a0
              #                     238   Call void memset_0(temp_45_array_init_ptr_310, 0_0, 16_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_45_array_init_ptr_310
              #                    store to temp_45_array_init_ptr_310 in mem offset legal
    sd      a0,1360(sp)
              #                    release a0 with temp_45_array_init_ptr_310
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_45_array_init_ptr_310_0
              #                    load from temp_45_array_init_ptr_310 in mem
    ld      a0,1360(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_16_0_0
    li      a2, 16
              #                    arg load ended


    call    memset
              #                     3394 untrack temp_45_array_init_ptr_310 
              #                     1616 mu mTrue_310_0:238 
              #                     1617 mTrue_310_1 = chi mTrue_310_0:238 
              #                     240  temp_46_array_init_ptr_310 = GEP mTrue_310_1:Array:i32:[Some(4_0)] [Some(2_0)] 
              #                    occupy a0 with temp_46_array_init_ptr_310
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 2
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1312
              #                    free a0
              #                     241  store 117_0:i32 temp_46_array_init_ptr_310:ptr->i32 
              #                    occupy a0 with temp_46_array_init_ptr_310
              #                    occupy a2 with 117_0
    li      a2, 117
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     242  mTrue_310_2 = chi mTrue_310_1:241 
              #                     244  temp_47_array_init_ptr_310 = GEP mTrue_310_2:Array:i32:[Some(4_0)] [Some(3_0)] 
              #                    occupy a3 with temp_47_array_init_ptr_310
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 3
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,1312
              #                    free a3
              #                     245  store 101_0:i32 temp_47_array_init_ptr_310:ptr->i32 
              #                    occupy a3 with temp_47_array_init_ptr_310
              #                    occupy a5 with 101_0
    li      a5, 101
    sw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     246  mTrue_310_3 = chi mTrue_310_2:245 
              #                     248  temp_48_array_init_ptr_310 = GEP mTrue_310_3:Array:i32:[Some(4_0)] [Some(1_0)] 
              #                    occupy a6 with temp_48_array_init_ptr_310
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 1
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,1312
              #                    free a6
              #                     249  store 114_0:i32 temp_48_array_init_ptr_310:ptr->i32 
              #                    occupy a6 with temp_48_array_init_ptr_310
              #                    occupy a7 with 114_0
    li      a7, 114
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                     250  mTrue_310_4 = chi mTrue_310_3:249 
              #                     252  temp_49_array_init_ptr_310 = GEP mTrue_310_4:Array:i32:[Some(4_0)] [Some(0_0)] 
              #                    occupy a7 with temp_49_array_init_ptr_310
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 0
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,1312
              #                    free a7
              #                    occupy a7 with temp_49_array_init_ptr_310
              #                    store to temp_49_array_init_ptr_310 in mem offset legal
    sd      a7,1328(sp)
              #                    release a7 with temp_49_array_init_ptr_310
              #                     253  store 116_0:i32 temp_49_array_init_ptr_310:ptr->i32 
              #                    occupy a7 with temp_49_array_init_ptr_310
              #                    load from temp_49_array_init_ptr_310 in mem
    ld      a7,1328(sp)
              #                    occupy s1 with 116_0
    li      s1, 116
    sw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                    occupy a7 with temp_49_array_init_ptr_310
              #                    store to temp_49_array_init_ptr_310 in mem offset legal
    sd      a7,1328(sp)
              #                    release a7 with temp_49_array_init_ptr_310
              #                     254  mTrue_310_5 = chi mTrue_310_4:253 
              #                          jump label: L40_0 
    j       .L40_0
              #                    regtab     a0:Freed { symidx: temp_46_array_init_ptr_310, tracked: true } |     a3:Freed { symidx: temp_47_array_init_ptr_310, tracked: true } |     a6:Freed { symidx: temp_48_array_init_ptr_310, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L40_0: 
.L40_0:
              #                     792  temp_184_value_from_ptr_312_0 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_184_value_from_ptr_312_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_184_value_from_ptr_312_0
              #                    store to temp_184_value_from_ptr_312_0 in mem offset legal
    sw      a2,828(sp)
              #                    release a2 with temp_184_value_from_ptr_312_0
              #                    free a1
              #                     793  mu pos_0_11:792 
              #                     795  temp_185_arithop_312_0 = Add i32 temp_184_value_from_ptr_312_0, 3_0 
              #                    occupy a1 with temp_184_value_from_ptr_312_0
              #                    load from temp_184_value_from_ptr_312_0 in mem


    lw      a1,828(sp)
              #                    occupy a2 with 3_0
    li      a2, 3
              #                    occupy a4 with temp_185_arithop_312_0
    ADDW    a4,a1,a2
              #                    free a1
              #                    occupy a1 with temp_184_value_from_ptr_312_0
              #                    store to temp_184_value_from_ptr_312_0 in mem offset legal
    sw      a1,828(sp)
              #                    release a1 with temp_184_value_from_ptr_312_0
              #                    free a2
              #                    free a4
              #                    occupy a4 with temp_185_arithop_312_0
              #                    store to temp_185_arithop_312_0 in mem offset legal
    sw      a4,824(sp)
              #                    release a4 with temp_185_arithop_312_0
              #                     797  temp_186_cmp_312_0 = icmp i32 Sge temp_185_arithop_312_0, len_60_0 
              #                    occupy a1 with temp_185_arithop_312_0
              #                    load from temp_185_arithop_312_0 in mem


    lw      a1,824(sp)
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a4 with temp_186_cmp_312_0
    slt     a4,a1,a2
    xori    a4,a4,1
              #                    free a1
              #                    occupy a1 with temp_185_arithop_312_0
              #                    store to temp_185_arithop_312_0 in mem offset legal
    sw      a1,824(sp)
              #                    release a1 with temp_185_arithop_312_0
              #                    free a2
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    free a4
              #                    occupy a4 with temp_186_cmp_312_0
              #                    store to temp_186_cmp_312_0 in mem offset legal
    sb      a4,823(sp)
              #                    release a4 with temp_186_cmp_312_0
              #                     3395 untrack len_60_0 
              #                     800  br i1 temp_186_cmp_312_0, label branch_true_313, label branch_false_313 
              #                    occupy a1 with temp_186_cmp_312_0
              #                    load from temp_186_cmp_312_0 in mem


    lb      a1,823(sp)
              #                    free a1
              #                    occupy a1 with temp_186_cmp_312_0
              #                    store to temp_186_cmp_312_0 in mem offset legal
    sb      a1,823(sp)
              #                    release a1 with temp_186_cmp_312_0
              #                    occupy a1 with temp_186_cmp_312_0
              #                    load from temp_186_cmp_312_0 in mem


    lb      a1,823(sp)
    bnez    a1, .branch_true_313
              #                    free a1
              #                    occupy a1 with temp_186_cmp_312_0
              #                    store to temp_186_cmp_312_0 in mem offset legal
    sb      a1,823(sp)
              #                    release a1 with temp_186_cmp_312_0
    j       .branch_false_313
              #                    regtab     a0:Freed { symidx: temp_46_array_init_ptr_310, tracked: true } |     a3:Freed { symidx: temp_47_array_init_ptr_310, tracked: true } |     a6:Freed { symidx: temp_48_array_init_ptr_310, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     798  label branch_true_313: 
.branch_true_313:
              #                     3422 untrack temp_46_array_init_ptr_310 
              #                    occupy a0 with temp_46_array_init_ptr_310
              #                    release a0 with temp_46_array_init_ptr_310
              #                     3421 untrack temp_205_ele_of_buf_60_324_0 
              #                     3420 untrack temp_208_ele_of_mTrue_310_328_0 
              #                     3419 untrack temp_184_value_from_ptr_312_0 
              #                     3418 untrack temp_204_ptr_of_buf_60_324 
              #                     3417 untrack temp_48_array_init_ptr_310 
              #                    occupy a6 with temp_48_array_init_ptr_310
              #                    release a6 with temp_48_array_init_ptr_310
              #                     3416 untrack temp_213_cmp_328_0 
              #                     3415 untrack temp_206_cmp_324_0 
              #                     3414 untrack temp_186_cmp_312_0 
              #                     3413 untrack temp_201_ele_of_mTrue_310_324_0 
              #                     3412 untrack temp_212_ele_of_buf_60_328_0 
              #                     3411 untrack temp_192_cmp_316_0 
              #                     3410 untrack temp_188_ele_of_mTrue_310_316_0 
              #                     3409 untrack temp_49_array_init_ptr_310 
              #                     3408 untrack temp_199_cmp_320_0 
              #                     3407 untrack temp_197_ptr_of_buf_60_320 
              #                     3406 untrack temp_194_ele_of_mTrue_310_320_0 
              #                     3405 untrack buf_60 
              #                     3404 untrack temp_203_arithop_324_0 
              #                     3403 untrack temp_51_arithop_310_0 
              #                     3402 untrack temp_190_ptr_of_buf_60_316 
              #                     3401 untrack temp_211_ptr_of_buf_60_328 
              #                     3400 untrack temp_185_arithop_312_0 
              #                     3399 untrack temp_47_array_init_ptr_310 
              #                    occupy a3 with temp_47_array_init_ptr_310
              #                    release a3 with temp_47_array_init_ptr_310
              #                     3398 untrack temp_191_ele_of_buf_60_316_0 
              #                     3397 untrack temp_198_ele_of_buf_60_320_0 
              #                     3396 untrack temp_196_arithop_320_0 
              #                     1618 mu pos_0_11:272 
              #                     272  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_46_array_init_ptr_310, tracked: true } |     a3:Freed { symidx: temp_47_array_init_ptr_310, tracked: true } |     a6:Freed { symidx: temp_48_array_init_ptr_310, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     799  label branch_false_313: 
.branch_false_313:
              #                     3423 untrack temp_186_cmp_312_0 
              #                     802  (nop) 
              #                     804  temp_188_ele_of_mTrue_310_316_0 = load temp_49_array_init_ptr_310:ptr->i32 
              #                    occupy a1 with temp_49_array_init_ptr_310
              #                    load from temp_49_array_init_ptr_310 in mem
    ld      a1,1328(sp)
              #                    occupy a2 with temp_188_ele_of_mTrue_310_316_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_188_ele_of_mTrue_310_316_0
              #                    store to temp_188_ele_of_mTrue_310_316_0 in mem offset legal
    sw      a2,804(sp)
              #                    release a2 with temp_188_ele_of_mTrue_310_316_0
              #                    free a1
              #                    occupy a1 with temp_49_array_init_ptr_310
              #                    store to temp_49_array_init_ptr_310 in mem offset legal
    sd      a1,1328(sp)
              #                    release a1 with temp_49_array_init_ptr_310
              #                     3426 untrack temp_49_array_init_ptr_310 
              #                     805  mu mTrue_310_5:804 
              #                     807  (nop) 
              #                     808  mu pos_0_11:807 
              #                     810  temp_190_ptr_of_buf_60_316 = GEP buf_60:Array:i32:[None] [Some(temp_184_value_from_ptr_312_0)] 
              #                    occupy a1 with temp_190_ptr_of_buf_60_316
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_184_value_from_ptr_312_0
              #                    load from temp_184_value_from_ptr_312_0 in mem


    lw      a4,828(sp)
    mv      a2, a4
              #                    free a4
              #                    occupy a4 with temp_184_value_from_ptr_312_0
              #                    store to temp_184_value_from_ptr_312_0 in mem offset legal
    sw      a4,828(sp)
              #                    release a4 with temp_184_value_from_ptr_312_0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a1,a1,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a1
              #                    occupy a1 with temp_190_ptr_of_buf_60_316
              #                    store to temp_190_ptr_of_buf_60_316 in mem offset legal
    sd      a1,792(sp)
              #                    release a1 with temp_190_ptr_of_buf_60_316
              #                     812  temp_191_ele_of_buf_60_316_0 = load temp_190_ptr_of_buf_60_316:ptr->i32 
              #                    occupy a1 with temp_190_ptr_of_buf_60_316
              #                    load from temp_190_ptr_of_buf_60_316 in mem
    ld      a1,792(sp)
              #                    occupy a2 with temp_191_ele_of_buf_60_316_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_191_ele_of_buf_60_316_0
              #                    store to temp_191_ele_of_buf_60_316_0 in mem offset legal
    sw      a2,788(sp)
              #                    release a2 with temp_191_ele_of_buf_60_316_0
              #                    free a1
              #                    occupy a1 with temp_190_ptr_of_buf_60_316
              #                    store to temp_190_ptr_of_buf_60_316 in mem offset legal
    sd      a1,792(sp)
              #                    release a1 with temp_190_ptr_of_buf_60_316
              #                     3425 untrack temp_190_ptr_of_buf_60_316 
              #                     813  mu buf_60:812 
              #                     815  temp_192_cmp_316_0 = icmp i32 Ne temp_191_ele_of_buf_60_316_0, temp_188_ele_of_mTrue_310_316_0 
              #                    occupy a1 with temp_191_ele_of_buf_60_316_0
              #                    load from temp_191_ele_of_buf_60_316_0 in mem


    lw      a1,788(sp)
              #                    occupy a2 with temp_188_ele_of_mTrue_310_316_0
              #                    load from temp_188_ele_of_mTrue_310_316_0 in mem


    lw      a2,804(sp)
              #                    occupy a4 with temp_192_cmp_316_0
    xor     a4,a1,a2
    snez    a4, a4
              #                    free a1
              #                    occupy a1 with temp_191_ele_of_buf_60_316_0
              #                    store to temp_191_ele_of_buf_60_316_0 in mem offset legal
    sw      a1,788(sp)
              #                    release a1 with temp_191_ele_of_buf_60_316_0
              #                    free a2
              #                    occupy a2 with temp_188_ele_of_mTrue_310_316_0
              #                    store to temp_188_ele_of_mTrue_310_316_0 in mem offset legal
    sw      a2,804(sp)
              #                    release a2 with temp_188_ele_of_mTrue_310_316_0
              #                    free a4
              #                    occupy a4 with temp_192_cmp_316_0
              #                    store to temp_192_cmp_316_0 in mem offset legal
    sb      a4,787(sp)
              #                    release a4 with temp_192_cmp_316_0
              #                     3427 untrack temp_191_ele_of_buf_60_316_0 
              #                     3424 untrack temp_188_ele_of_mTrue_310_316_0 
              #                     818  br i1 temp_192_cmp_316_0, label branch_true_317, label branch_false_317 
              #                    occupy a1 with temp_192_cmp_316_0
              #                    load from temp_192_cmp_316_0 in mem


    lb      a1,787(sp)
              #                    free a1
              #                    occupy a1 with temp_192_cmp_316_0
              #                    store to temp_192_cmp_316_0 in mem offset legal
    sb      a1,787(sp)
              #                    release a1 with temp_192_cmp_316_0
              #                    occupy a1 with temp_192_cmp_316_0
              #                    load from temp_192_cmp_316_0 in mem


    lb      a1,787(sp)
    bnez    a1, .branch_true_317
              #                    free a1
              #                    occupy a1 with temp_192_cmp_316_0
              #                    store to temp_192_cmp_316_0 in mem offset legal
    sb      a1,787(sp)
              #                    release a1 with temp_192_cmp_316_0
    j       .branch_false_317
              #                    regtab     a0:Freed { symidx: temp_46_array_init_ptr_310, tracked: true } |     a3:Freed { symidx: temp_47_array_init_ptr_310, tracked: true } |     a6:Freed { symidx: temp_48_array_init_ptr_310, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     816  label branch_true_317: 
.branch_true_317:
              #                     3449 untrack temp_211_ptr_of_buf_60_328 
              #                     3448 untrack temp_48_array_init_ptr_310 
              #                    occupy a6 with temp_48_array_init_ptr_310
              #                    release a6 with temp_48_array_init_ptr_310
              #                     3447 untrack temp_184_value_from_ptr_312_0 
              #                     3446 untrack temp_205_ele_of_buf_60_324_0 
              #                     3445 untrack temp_47_array_init_ptr_310 
              #                    occupy a3 with temp_47_array_init_ptr_310
              #                    release a3 with temp_47_array_init_ptr_310
              #                     3444 untrack temp_196_arithop_320_0 
              #                     3443 untrack temp_197_ptr_of_buf_60_320 
              #                     3442 untrack temp_51_arithop_310_0 
              #                     3441 untrack temp_201_ele_of_mTrue_310_324_0 
              #                     3440 untrack temp_206_cmp_324_0 
              #                     3439 untrack temp_208_ele_of_mTrue_310_328_0 
              #                     3438 untrack buf_60 
              #                     3437 untrack temp_185_arithop_312_0 
              #                     3436 untrack temp_204_ptr_of_buf_60_324 
              #                     3435 untrack temp_198_ele_of_buf_60_320_0 
              #                     3434 untrack temp_46_array_init_ptr_310 
              #                    occupy a0 with temp_46_array_init_ptr_310
              #                    release a0 with temp_46_array_init_ptr_310
              #                     3433 untrack temp_203_arithop_324_0 
              #                     3432 untrack temp_213_cmp_328_0 
              #                     3431 untrack temp_212_ele_of_buf_60_328_0 
              #                     3430 untrack temp_194_ele_of_mTrue_310_320_0 
              #                     3429 untrack temp_192_cmp_316_0 
              #                     3428 untrack temp_199_cmp_320_0 
              #                     1619 mu pos_0_11:270 
              #                     270  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_46_array_init_ptr_310, tracked: true } |     a3:Freed { symidx: temp_47_array_init_ptr_310, tracked: true } |     a6:Freed { symidx: temp_48_array_init_ptr_310, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     817  label branch_false_317: 
.branch_false_317:
              #                     3450 untrack temp_192_cmp_316_0 
              #                     820  (nop) 
              #                     822  temp_194_ele_of_mTrue_310_320_0 = load temp_48_array_init_ptr_310:ptr->i32 
              #                    occupy a6 with temp_48_array_init_ptr_310
              #                    occupy a1 with temp_194_ele_of_mTrue_310_320_0
    lw      a1,0(a6)
              #                    free a1
              #                    occupy a1 with temp_194_ele_of_mTrue_310_320_0
              #                    store to temp_194_ele_of_mTrue_310_320_0 in mem offset legal
    sw      a1,772(sp)
              #                    release a1 with temp_194_ele_of_mTrue_310_320_0
              #                    free a6
              #                     3455 untrack temp_48_array_init_ptr_310 
              #                    occupy a6 with temp_48_array_init_ptr_310
              #                    release a6 with temp_48_array_init_ptr_310
              #                     823  mu mTrue_310_5:822 
              #                     825  (nop) 
              #                     826  mu pos_0_11:825 
              #                     828  temp_196_arithop_320_0 = Add i32 temp_184_value_from_ptr_312_0, 1_0 
              #                    occupy a1 with temp_184_value_from_ptr_312_0
              #                    load from temp_184_value_from_ptr_312_0 in mem


    lw      a1,828(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_196_arithop_320_0
    ADDW    a4,a1,a2
              #                    free a1
              #                    occupy a1 with temp_184_value_from_ptr_312_0
              #                    store to temp_184_value_from_ptr_312_0 in mem offset legal
    sw      a1,828(sp)
              #                    release a1 with temp_184_value_from_ptr_312_0
              #                    free a2
              #                    free a4
              #                     830  temp_197_ptr_of_buf_60_320 = GEP buf_60:Array:i32:[None] [Some(temp_196_arithop_320_0)] 
              #                    occupy a1 with temp_197_ptr_of_buf_60_320
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_196_arithop_320_0
    mv      a2, a4
              #                    free a4
              #                    occupy a4 with temp_196_arithop_320_0
              #                    store to temp_196_arithop_320_0 in mem offset legal
    sw      a4,768(sp)
              #                    release a4 with temp_196_arithop_320_0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a1,a1,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a1
              #                     3451 untrack temp_196_arithop_320_0 
              #                     832  temp_198_ele_of_buf_60_320_0 = load temp_197_ptr_of_buf_60_320:ptr->i32 
              #                    occupy a1 with temp_197_ptr_of_buf_60_320
              #                    occupy a2 with temp_198_ele_of_buf_60_320_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_198_ele_of_buf_60_320_0
              #                    store to temp_198_ele_of_buf_60_320_0 in mem offset legal
    sw      a2,756(sp)
              #                    release a2 with temp_198_ele_of_buf_60_320_0
              #                    free a1
              #                     3454 untrack temp_197_ptr_of_buf_60_320 
              #                    occupy a1 with temp_197_ptr_of_buf_60_320
              #                    release a1 with temp_197_ptr_of_buf_60_320
              #                     833  mu buf_60:832 
              #                     835  temp_199_cmp_320_0 = icmp i32 Ne temp_198_ele_of_buf_60_320_0, temp_194_ele_of_mTrue_310_320_0 
              #                    occupy a1 with temp_198_ele_of_buf_60_320_0
              #                    load from temp_198_ele_of_buf_60_320_0 in mem


    lw      a1,756(sp)
              #                    occupy a2 with temp_194_ele_of_mTrue_310_320_0
              #                    load from temp_194_ele_of_mTrue_310_320_0 in mem


    lw      a2,772(sp)
              #                    occupy a4 with temp_199_cmp_320_0
    xor     a4,a1,a2
    snez    a4, a4
              #                    free a1
              #                    occupy a1 with temp_198_ele_of_buf_60_320_0
              #                    store to temp_198_ele_of_buf_60_320_0 in mem offset legal
    sw      a1,756(sp)
              #                    release a1 with temp_198_ele_of_buf_60_320_0
              #                    free a2
              #                    occupy a2 with temp_194_ele_of_mTrue_310_320_0
              #                    store to temp_194_ele_of_mTrue_310_320_0 in mem offset legal
    sw      a2,772(sp)
              #                    release a2 with temp_194_ele_of_mTrue_310_320_0
              #                    free a4
              #                     3453 untrack temp_194_ele_of_mTrue_310_320_0 
              #                     3452 untrack temp_198_ele_of_buf_60_320_0 
              #                     838  br i1 temp_199_cmp_320_0, label branch_true_321, label branch_false_321 
              #                    occupy a4 with temp_199_cmp_320_0
              #                    free a4
              #                    occupy a4 with temp_199_cmp_320_0
    bnez    a4, .branch_true_321
              #                    free a4
    j       .branch_false_321
              #                    regtab     a0:Freed { symidx: temp_46_array_init_ptr_310, tracked: true } |     a3:Freed { symidx: temp_47_array_init_ptr_310, tracked: true } |     a4:Freed { symidx: temp_199_cmp_320_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     836  label branch_true_321: 
.branch_true_321:
              #                     3471 untrack temp_203_arithop_324_0 
              #                     3470 untrack buf_60 
              #                     3469 untrack temp_212_ele_of_buf_60_328_0 
              #                     3468 untrack temp_199_cmp_320_0 
              #                    occupy a4 with temp_199_cmp_320_0
              #                    release a4 with temp_199_cmp_320_0
              #                     3467 untrack temp_46_array_init_ptr_310 
              #                    occupy a0 with temp_46_array_init_ptr_310
              #                    release a0 with temp_46_array_init_ptr_310
              #                     3466 untrack temp_208_ele_of_mTrue_310_328_0 
              #                     3465 untrack temp_47_array_init_ptr_310 
              #                    occupy a3 with temp_47_array_init_ptr_310
              #                    release a3 with temp_47_array_init_ptr_310
              #                     3464 untrack temp_185_arithop_312_0 
              #                     3463 untrack temp_184_value_from_ptr_312_0 
              #                     3462 untrack temp_51_arithop_310_0 
              #                     3461 untrack temp_201_ele_of_mTrue_310_324_0 
              #                     3460 untrack temp_204_ptr_of_buf_60_324 
              #                     3459 untrack temp_205_ele_of_buf_60_324_0 
              #                     3458 untrack temp_206_cmp_324_0 
              #                     3457 untrack temp_213_cmp_328_0 
              #                     3456 untrack temp_211_ptr_of_buf_60_328 
              #                     1620 mu pos_0_11:268 
              #                     268  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_46_array_init_ptr_310, tracked: true } |     a3:Freed { symidx: temp_47_array_init_ptr_310, tracked: true } |     a4:Freed { symidx: temp_199_cmp_320_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     837  label branch_false_321: 
.branch_false_321:
              #                     3472 untrack temp_199_cmp_320_0 
              #                    occupy a4 with temp_199_cmp_320_0
              #                    release a4 with temp_199_cmp_320_0
              #                     840  (nop) 
              #                     842  temp_201_ele_of_mTrue_310_324_0 = load temp_46_array_init_ptr_310:ptr->i32 
              #                    occupy a0 with temp_46_array_init_ptr_310
              #                    occupy a1 with temp_201_ele_of_mTrue_310_324_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     3474 untrack temp_46_array_init_ptr_310 
              #                    occupy a0 with temp_46_array_init_ptr_310
              #                    release a0 with temp_46_array_init_ptr_310
              #                     843  mu mTrue_310_5:842 
              #                     845  (nop) 
              #                     846  mu pos_0_11:845 
              #                     848  temp_203_arithop_324_0 = Add i32 temp_184_value_from_ptr_312_0, 2_0 
              #                    occupy a0 with temp_184_value_from_ptr_312_0
              #                    load from temp_184_value_from_ptr_312_0 in mem


    lw      a0,828(sp)
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a4 with temp_203_arithop_324_0
    ADDW    a4,a0,a2
              #                    free a0
              #                    occupy a0 with temp_184_value_from_ptr_312_0
              #                    store to temp_184_value_from_ptr_312_0 in mem offset legal
    sw      a0,828(sp)
              #                    release a0 with temp_184_value_from_ptr_312_0
              #                    free a2
              #                    free a4
              #                     850  temp_204_ptr_of_buf_60_324 = GEP buf_60:Array:i32:[None] [Some(temp_203_arithop_324_0)] 
              #                    occupy a0 with temp_204_ptr_of_buf_60_324
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_203_arithop_324_0
    mv      a2, a4
              #                    free a4
              #                    occupy a4 with temp_203_arithop_324_0
              #                    store to temp_203_arithop_324_0 in mem offset legal
    sw      a4,736(sp)
              #                    release a4 with temp_203_arithop_324_0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a0
              #                     3475 untrack temp_203_arithop_324_0 
              #                     852  temp_205_ele_of_buf_60_324_0 = load temp_204_ptr_of_buf_60_324:ptr->i32 
              #                    occupy a0 with temp_204_ptr_of_buf_60_324
              #                    occupy a2 with temp_205_ele_of_buf_60_324_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_205_ele_of_buf_60_324_0
              #                    store to temp_205_ele_of_buf_60_324_0 in mem offset legal
    sw      a2,724(sp)
              #                    release a2 with temp_205_ele_of_buf_60_324_0
              #                    free a0
              #                     3476 untrack temp_204_ptr_of_buf_60_324 
              #                    occupy a0 with temp_204_ptr_of_buf_60_324
              #                    release a0 with temp_204_ptr_of_buf_60_324
              #                     853  mu buf_60:852 
              #                     855  temp_206_cmp_324_0 = icmp i32 Ne temp_205_ele_of_buf_60_324_0, temp_201_ele_of_mTrue_310_324_0 
              #                    occupy a0 with temp_205_ele_of_buf_60_324_0
              #                    load from temp_205_ele_of_buf_60_324_0 in mem


    lw      a0,724(sp)
              #                    occupy a1 with temp_201_ele_of_mTrue_310_324_0
              #                    occupy a2 with temp_206_cmp_324_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_205_ele_of_buf_60_324_0
              #                    store to temp_205_ele_of_buf_60_324_0 in mem offset legal
    sw      a0,724(sp)
              #                    release a0 with temp_205_ele_of_buf_60_324_0
              #                    free a1
              #                    free a2
              #                     3477 untrack temp_201_ele_of_mTrue_310_324_0 
              #                    occupy a1 with temp_201_ele_of_mTrue_310_324_0
              #                    release a1 with temp_201_ele_of_mTrue_310_324_0
              #                     3473 untrack temp_205_ele_of_buf_60_324_0 
              #                     858  br i1 temp_206_cmp_324_0, label branch_true_325, label branch_false_325 
              #                    occupy a2 with temp_206_cmp_324_0
              #                    free a2
              #                    occupy a2 with temp_206_cmp_324_0
    bnez    a2, .branch_true_325
              #                    free a2
    j       .branch_false_325
              #                    regtab     a2:Freed { symidx: temp_206_cmp_324_0, tracked: true } |     a3:Freed { symidx: temp_47_array_init_ptr_310, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     856  label branch_true_325: 
.branch_true_325:
              #                     3487 untrack buf_60 
              #                     3486 untrack temp_184_value_from_ptr_312_0 
              #                     3485 untrack temp_212_ele_of_buf_60_328_0 
              #                     3484 untrack temp_206_cmp_324_0 
              #                    occupy a2 with temp_206_cmp_324_0
              #                    release a2 with temp_206_cmp_324_0
              #                     3483 untrack temp_51_arithop_310_0 
              #                     3482 untrack temp_185_arithop_312_0 
              #                     3481 untrack temp_208_ele_of_mTrue_310_328_0 
              #                     3480 untrack temp_47_array_init_ptr_310 
              #                    occupy a3 with temp_47_array_init_ptr_310
              #                    release a3 with temp_47_array_init_ptr_310
              #                     3479 untrack temp_211_ptr_of_buf_60_328 
              #                     3478 untrack temp_213_cmp_328_0 
              #                     1621 mu pos_0_11:266 
              #                     266  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_206_cmp_324_0, tracked: true } |     a3:Freed { symidx: temp_47_array_init_ptr_310, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     857  label branch_false_325: 
.branch_false_325:
              #                     3488 untrack temp_206_cmp_324_0 
              #                    occupy a2 with temp_206_cmp_324_0
              #                    release a2 with temp_206_cmp_324_0
              #                     860  (nop) 
              #                     862  temp_208_ele_of_mTrue_310_328_0 = load temp_47_array_init_ptr_310:ptr->i32 
              #                    occupy a3 with temp_47_array_init_ptr_310
              #                    occupy a0 with temp_208_ele_of_mTrue_310_328_0
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                     3490 untrack temp_47_array_init_ptr_310 
              #                    occupy a3 with temp_47_array_init_ptr_310
              #                    release a3 with temp_47_array_init_ptr_310
              #                     863  mu mTrue_310_5:862 
              #                     865  (nop) 
              #                     866  mu pos_0_11:865 
              #                     868  (nop) 
              #                     870  temp_211_ptr_of_buf_60_328 = GEP buf_60:Array:i32:[None] [Some(temp_185_arithop_312_0)] 
              #                    occupy a1 with temp_211_ptr_of_buf_60_328
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_185_arithop_312_0
              #                    load from temp_185_arithop_312_0 in mem


    lw      a3,824(sp)
    mv      a2, a3
              #                    free a3
              #                    occupy a3 with temp_185_arithop_312_0
              #                    store to temp_185_arithop_312_0 in mem offset legal
    sw      a3,824(sp)
              #                    release a3 with temp_185_arithop_312_0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with buf_60
              #                    load from buf_60 in mem
    ld      a3,1512(sp)
    add     a1,a1,a3
              #                    free a3
              #                    occupy a3 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a3,1512(sp)
              #                    release a3 with buf_60
              #                    free a1
              #                     3493 untrack temp_185_arithop_312_0 
              #                     872  temp_212_ele_of_buf_60_328_0 = load temp_211_ptr_of_buf_60_328:ptr->i32 
              #                    occupy a1 with temp_211_ptr_of_buf_60_328
              #                    occupy a3 with temp_212_ele_of_buf_60_328_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_212_ele_of_buf_60_328_0
              #                    store to temp_212_ele_of_buf_60_328_0 in mem offset legal
    sw      a3,692(sp)
              #                    release a3 with temp_212_ele_of_buf_60_328_0
              #                    free a1
              #                     3491 untrack temp_211_ptr_of_buf_60_328 
              #                    occupy a1 with temp_211_ptr_of_buf_60_328
              #                    release a1 with temp_211_ptr_of_buf_60_328
              #                     873  mu buf_60:872 
              #                     3489 untrack buf_60 
              #                     875  temp_213_cmp_328_0 = icmp i32 Ne temp_212_ele_of_buf_60_328_0, temp_208_ele_of_mTrue_310_328_0 
              #                    occupy a1 with temp_212_ele_of_buf_60_328_0
              #                    load from temp_212_ele_of_buf_60_328_0 in mem


    lw      a1,692(sp)
              #                    occupy a0 with temp_208_ele_of_mTrue_310_328_0
              #                    occupy a3 with temp_213_cmp_328_0
    xor     a3,a1,a0
    snez    a3, a3
              #                    free a1
              #                    occupy a1 with temp_212_ele_of_buf_60_328_0
              #                    store to temp_212_ele_of_buf_60_328_0 in mem offset legal
    sw      a1,692(sp)
              #                    release a1 with temp_212_ele_of_buf_60_328_0
              #                    free a0
              #                    free a3
              #                     3494 untrack temp_212_ele_of_buf_60_328_0 
              #                     3492 untrack temp_208_ele_of_mTrue_310_328_0 
              #                    occupy a0 with temp_208_ele_of_mTrue_310_328_0
              #                    release a0 with temp_208_ele_of_mTrue_310_328_0
              #                     878  br i1 temp_213_cmp_328_0, label branch_true_329, label branch_false_329 
              #                    occupy a3 with temp_213_cmp_328_0
              #                    free a3
              #                    occupy a3 with temp_213_cmp_328_0
    bnez    a3, .branch_true_329
              #                    free a3
    j       .branch_false_329
              #                    regtab     a3:Freed { symidx: temp_213_cmp_328_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     876  label branch_true_329: 
.branch_true_329:
              #                     3497 untrack temp_51_arithop_310_0 
              #                     3496 untrack temp_213_cmp_328_0 
              #                    occupy a3 with temp_213_cmp_328_0
              #                    release a3 with temp_213_cmp_328_0
              #                     3495 untrack temp_184_value_from_ptr_312_0 
              #                     1622 mu pos_0_11:264 
              #                     264  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a3:Freed { symidx: temp_213_cmp_328_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     877  label branch_false_329: 
.branch_false_329:
              #                     3498 untrack temp_213_cmp_328_0 
              #                    occupy a3 with temp_213_cmp_328_0
              #                    release a3 with temp_213_cmp_328_0
              #                          jump label: gather_205 
    j       .gather_205
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     879  label gather_205: 
.gather_205:
              #                          jump label: gather_207 
    j       .gather_207
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     880  label gather_207: 
.gather_207:
              #                          jump label: gather_209 
    j       .gather_209
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     881  label gather_209: 
.gather_209:
              #                          jump label: gather_211 
    j       .gather_211
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     882  label gather_211: 
.gather_211:
              #                          jump label: L41_0 
    j       .L41_0
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                          label L41_0: 
.L41_0:
              #                     257  (nop) 
              #                     258  mu pos_0_11:257 
              #                     260  temp_51_arithop_310_0 = Add i32 temp_184_value_from_ptr_312_0, 4_0 
              #                    occupy a0 with temp_184_value_from_ptr_312_0
              #                    load from temp_184_value_from_ptr_312_0 in mem


    lw      a0,828(sp)
              #                    occupy a1 with 4_0
    li      a1, 4
              #                    occupy a2 with temp_51_arithop_310_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    occupy a0 with temp_184_value_from_ptr_312_0
              #                    store to temp_184_value_from_ptr_312_0 in mem offset legal
    sw      a0,828(sp)
              #                    release a0 with temp_184_value_from_ptr_312_0
              #                    free a1
              #                    free a2
              #                     3500 untrack temp_184_value_from_ptr_312_0 
              #                     261  store temp_51_arithop_310_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a2 with temp_51_arithop_310_0
    sw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_51_arithop_310_0
              #                    store to temp_51_arithop_310_0 in mem offset legal
    sw      a2,1308(sp)
              #                    release a2 with temp_51_arithop_310_0
              #                    free a0
              #                     3499 untrack temp_51_arithop_310_0 
              #                     262  pos_0_85 = chi pos_0_11:261 
              #                          jump label: gather_256 
    j       .gather_256
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     578  label gather_256: 
.gather_256:
              #                          jump label: gather_258 
    j       .gather_258
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_114_cmp_308_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     564  label branch_false_309: 
.branch_false_309:
              #                     3393 untrack temp_203_arithop_324_0 
              #                     3392 untrack temp_45_array_init_ptr_310 
              #                     3391 untrack temp_48_array_init_ptr_310 
              #                     3390 untrack temp_185_arithop_312_0 
              #                     3389 untrack temp_186_cmp_312_0 
              #                     3388 untrack temp_211_ptr_of_buf_60_328 
              #                     3387 untrack temp_184_value_from_ptr_312_0 
              #                     3386 untrack temp_191_ele_of_buf_60_316_0 
              #                     3385 untrack temp_188_ele_of_mTrue_310_316_0 
              #                     3384 untrack temp_213_cmp_328_0 
              #                     3383 untrack temp_206_cmp_324_0 
              #                     3382 untrack temp_190_ptr_of_buf_60_316 
              #                     3381 untrack temp_46_array_init_ptr_310 
              #                     3380 untrack temp_212_ele_of_buf_60_328_0 
              #                     3379 untrack temp_197_ptr_of_buf_60_320 
              #                     3378 untrack temp_204_ptr_of_buf_60_324 
              #                     3377 untrack temp_49_array_init_ptr_310 
              #                     3376 untrack temp_51_arithop_310_0 
              #                     3375 untrack temp_47_array_init_ptr_310 
              #                     3374 untrack temp_194_ele_of_mTrue_310_320_0 
              #                     3373 untrack temp_114_cmp_308_0 
              #                    occupy a2 with temp_114_cmp_308_0
              #                    release a2 with temp_114_cmp_308_0
              #                     3372 untrack temp_199_cmp_320_0 
              #                     3371 untrack temp_192_cmp_316_0 
              #                     3370 untrack temp_208_ele_of_mTrue_310_328_0 
              #                     3369 untrack temp_198_ele_of_buf_60_320_0 
              #                     3368 untrack temp_201_ele_of_mTrue_310_324_0 
              #                     3367 untrack temp_205_ele_of_buf_60_324_0 
              #                     3366 untrack temp_196_arithop_320_0 
              #                     567  temp_115_cmp_333_0 = icmp i32 Eq type_60_0, 6_0 
              #                    occupy a0 with type_60_0
              #                    occupy a1 with 6_0
    li      a1, 6
              #                    occupy a2 with temp_115_cmp_333_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     570  br i1 temp_115_cmp_333_0, label branch_true_334, label branch_false_334 
              #                    occupy a2 with temp_115_cmp_333_0
              #                    free a2
              #                    occupy a2 with temp_115_cmp_333_0
    bnez    a2, .branch_true_334
              #                    free a2
    j       .branch_false_334
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_115_cmp_333_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     568  label branch_true_334: 
.branch_true_334:
              #                     3530 untrack temp_139_cmp_378_0 
              #                     3529 untrack temp_31_array_init_ptr_364 
              #                     3528 untrack temp_117_value_from_ptr_366_0 
              #                     3527 untrack temp_115_cmp_333_0 
              #                    occupy a2 with temp_115_cmp_333_0
              #                    release a2 with temp_115_cmp_333_0
              #                     3526 untrack temp_146_cmp_382_0 
              #                     3525 untrack temp_34_array_init_ptr_364 
              #                     3524 untrack temp_124_ele_of_buf_60_370_0 
              #                     3523 untrack temp_138_ele_of_buf_60_378_0 
              #                     3522 untrack temp_144_ptr_of_buf_60_382 
              #                     3521 untrack temp_33_array_init_ptr_364 
              #                     3520 untrack temp_145_ele_of_buf_60_382_0 
              #                     3519 untrack temp_123_ptr_of_buf_60_370 
              #                     3518 untrack temp_121_ele_of_mNull_364_370_0 
              #                     3517 untrack temp_134_ele_of_mNull_364_378_0 
              #                     3516 untrack temp_116_cmp_362_0 
              #                     3515 untrack temp_131_ele_of_buf_60_374_0 
              #                     3514 untrack temp_36_arithop_364_0 
              #                     3513 untrack temp_130_ptr_of_buf_60_374 
              #                     3512 untrack temp_125_cmp_370_0 
              #                     3511 untrack temp_30_array_init_ptr_364 
              #                     3510 untrack temp_129_arithop_374_0 
              #                     3509 untrack type_60_0 
              #                    occupy a0 with type_60_0
              #                    release a0 with type_60_0
              #                     3508 untrack temp_141_ele_of_mNull_364_382_0 
              #                     3507 untrack temp_118_arithop_366_0 
              #                     3506 untrack temp_119_cmp_366_0 
              #                     3505 untrack temp_137_ptr_of_buf_60_378 
              #                     3504 untrack temp_32_array_init_ptr_364 
              #                     3503 untrack temp_136_arithop_378_0 
              #                     3502 untrack temp_132_cmp_374_0 
              #                     3501 untrack temp_127_ele_of_mNull_364_374_0 
              #                     191   
              #                     193  temp_37_array_init_ptr_335 = GEP mFalse_335_0:Array:i32:[Some(5_0)] [] 
              #                    occupy a0 with temp_37_array_init_ptr_335
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1372
              #                    free a0
              #                     194   Call void memset_0(temp_37_array_init_ptr_335, 0_0, 20_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_37_array_init_ptr_335
              #                    store to temp_37_array_init_ptr_335 in mem offset legal
    sd      a0,1432(sp)
              #                    release a0 with temp_37_array_init_ptr_335
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_37_array_init_ptr_335_0
              #                    load from temp_37_array_init_ptr_335 in mem
    ld      a0,1432(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_20_0_0
    li      a2, 20
              #                    arg load ended


    call    memset
              #                     3565 untrack temp_37_array_init_ptr_335 
              #                     1623 mu mFalse_335_0:194 
              #                     1624 mFalse_335_1 = chi mFalse_335_0:194 
              #                     196  temp_38_array_init_ptr_335 = GEP mFalse_335_1:Array:i32:[Some(5_0)] [Some(1_0)] 
              #                    occupy a0 with temp_38_array_init_ptr_335
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 1
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1372
              #                    free a0
              #                     197  store 97_0:i32 temp_38_array_init_ptr_335:ptr->i32 
              #                    occupy a0 with temp_38_array_init_ptr_335
              #                    occupy a2 with 97_0
    li      a2, 97
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     198  mFalse_335_2 = chi mFalse_335_1:197 
              #                     200  temp_39_array_init_ptr_335 = GEP mFalse_335_2:Array:i32:[Some(5_0)] [Some(2_0)] 
              #                    occupy a3 with temp_39_array_init_ptr_335
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 2
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,1372
              #                    free a3
              #                     201  store 108_0:i32 temp_39_array_init_ptr_335:ptr->i32 
              #                    occupy a3 with temp_39_array_init_ptr_335
              #                    occupy a5 with 108_0
    li      a5, 108
    sw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     202  mFalse_335_3 = chi mFalse_335_2:201 
              #                     204  temp_40_array_init_ptr_335 = GEP mFalse_335_3:Array:i32:[Some(5_0)] [Some(3_0)] 
              #                    occupy a6 with temp_40_array_init_ptr_335
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 3
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,1372
              #                    free a6
              #                    occupy a6 with temp_40_array_init_ptr_335
              #                    store to temp_40_array_init_ptr_335 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_40_array_init_ptr_335
              #                     205  store 115_0:i32 temp_40_array_init_ptr_335:ptr->i32 
              #                    occupy a6 with temp_40_array_init_ptr_335
              #                    load from temp_40_array_init_ptr_335 in mem
    ld      a6,1408(sp)
              #                    occupy a7 with 115_0
    li      a7, 115
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                    occupy a6 with temp_40_array_init_ptr_335
              #                    store to temp_40_array_init_ptr_335 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_40_array_init_ptr_335
              #                     206  mFalse_335_4 = chi mFalse_335_3:205 
              #                     208  temp_41_array_init_ptr_335 = GEP mFalse_335_4:Array:i32:[Some(5_0)] [Some(0_0)] 
              #                    occupy a6 with temp_41_array_init_ptr_335
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 0
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,1372
              #                    free a6
              #                    occupy a6 with temp_41_array_init_ptr_335
              #                    store to temp_41_array_init_ptr_335 in mem offset legal
    sd      a6,1400(sp)
              #                    release a6 with temp_41_array_init_ptr_335
              #                     209  store 102_0:i32 temp_41_array_init_ptr_335:ptr->i32 
              #                    occupy a6 with temp_41_array_init_ptr_335
              #                    load from temp_41_array_init_ptr_335 in mem
    ld      a6,1400(sp)
              #                    occupy a7 with 102_0
    li      a7, 102
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                    occupy a6 with temp_41_array_init_ptr_335
              #                    store to temp_41_array_init_ptr_335 in mem offset legal
    sd      a6,1400(sp)
              #                    release a6 with temp_41_array_init_ptr_335
              #                     210  mFalse_335_5 = chi mFalse_335_4:209 
              #                     212  temp_42_array_init_ptr_335 = GEP mFalse_335_5:Array:i32:[Some(5_0)] [Some(4_0)] 
              #                    occupy a6 with temp_42_array_init_ptr_335
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 4
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,1372
              #                    free a6
              #                    occupy a6 with temp_42_array_init_ptr_335
              #                    store to temp_42_array_init_ptr_335 in mem offset legal
    sd      a6,1392(sp)
              #                    release a6 with temp_42_array_init_ptr_335
              #                     213  store 101_0:i32 temp_42_array_init_ptr_335:ptr->i32 
              #                    occupy a6 with temp_42_array_init_ptr_335
              #                    load from temp_42_array_init_ptr_335 in mem
    ld      a6,1392(sp)
              #                    occupy a7 with 101_0
    li      a7, 101
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                    occupy a6 with temp_42_array_init_ptr_335
              #                    store to temp_42_array_init_ptr_335 in mem offset legal
    sd      a6,1392(sp)
              #                    release a6 with temp_42_array_init_ptr_335
              #                     214  mFalse_335_6 = chi mFalse_335_5:213 
              #                          jump label: L42_0 
    j       .L42_0
              #                    regtab     a0:Freed { symidx: temp_38_array_init_ptr_335, tracked: true } |     a3:Freed { symidx: temp_39_array_init_ptr_335, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L42_0: 
.L42_0:
              #                     679  temp_147_value_from_ptr_337_0 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_147_value_from_ptr_337_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_147_value_from_ptr_337_0
              #                    store to temp_147_value_from_ptr_337_0 in mem offset legal
    sw      a2,1004(sp)
              #                    release a2 with temp_147_value_from_ptr_337_0
              #                    free a1
              #                     680  mu pos_0_11:679 
              #                     682  temp_148_arithop_337_0 = Add i32 temp_147_value_from_ptr_337_0, 4_0 
              #                    occupy a1 with temp_147_value_from_ptr_337_0
              #                    load from temp_147_value_from_ptr_337_0 in mem


    lw      a1,1004(sp)
              #                    occupy a2 with 4_0
    li      a2, 4
              #                    occupy a4 with temp_148_arithop_337_0
    ADDW    a4,a1,a2
              #                    free a1
              #                    occupy a1 with temp_147_value_from_ptr_337_0
              #                    store to temp_147_value_from_ptr_337_0 in mem offset legal
    sw      a1,1004(sp)
              #                    release a1 with temp_147_value_from_ptr_337_0
              #                    free a2
              #                    free a4
              #                    occupy a4 with temp_148_arithop_337_0
              #                    store to temp_148_arithop_337_0 in mem offset legal
    sw      a4,1000(sp)
              #                    release a4 with temp_148_arithop_337_0
              #                     684  temp_149_cmp_337_0 = icmp i32 Sge temp_148_arithop_337_0, len_60_0 
              #                    occupy a1 with temp_148_arithop_337_0
              #                    load from temp_148_arithop_337_0 in mem


    lw      a1,1000(sp)
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a4 with temp_149_cmp_337_0
    slt     a4,a1,a2
    xori    a4,a4,1
              #                    free a1
              #                    occupy a1 with temp_148_arithop_337_0
              #                    store to temp_148_arithop_337_0 in mem offset legal
    sw      a1,1000(sp)
              #                    release a1 with temp_148_arithop_337_0
              #                    free a2
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    free a4
              #                    occupy a4 with temp_149_cmp_337_0
              #                    store to temp_149_cmp_337_0 in mem offset legal
    sb      a4,999(sp)
              #                    release a4 with temp_149_cmp_337_0
              #                     3566 untrack len_60_0 
              #                     687  br i1 temp_149_cmp_337_0, label branch_true_338, label branch_false_338 
              #                    occupy a1 with temp_149_cmp_337_0
              #                    load from temp_149_cmp_337_0 in mem


    lb      a1,999(sp)
              #                    free a1
              #                    occupy a1 with temp_149_cmp_337_0
              #                    store to temp_149_cmp_337_0 in mem offset legal
    sb      a1,999(sp)
              #                    release a1 with temp_149_cmp_337_0
              #                    occupy a1 with temp_149_cmp_337_0
              #                    load from temp_149_cmp_337_0 in mem


    lb      a1,999(sp)
    bnez    a1, .branch_true_338
              #                    free a1
              #                    occupy a1 with temp_149_cmp_337_0
              #                    store to temp_149_cmp_337_0 in mem offset legal
    sb      a1,999(sp)
              #                    release a1 with temp_149_cmp_337_0
    j       .branch_false_338
              #                    regtab     a0:Freed { symidx: temp_38_array_init_ptr_335, tracked: true } |     a3:Freed { symidx: temp_39_array_init_ptr_335, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     685  label branch_true_338: 
.branch_true_338:
              #                     3599 untrack temp_175_ele_of_buf_60_353_0 
              #                     3598 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     3597 untrack temp_173_arithop_353_0 
              #                     3596 untrack temp_167_ptr_of_buf_60_349 
              #                     3595 untrack temp_147_value_from_ptr_337_0 
              #                     3594 untrack temp_155_cmp_341_0 
              #                     3593 untrack temp_39_array_init_ptr_335 
              #                    occupy a3 with temp_39_array_init_ptr_335
              #                    release a3 with temp_39_array_init_ptr_335
              #                     3592 untrack temp_159_arithop_345_0 
              #                     3591 untrack temp_149_cmp_337_0 
              #                     3590 untrack temp_153_ptr_of_buf_60_341 
              #                     3589 untrack temp_161_ele_of_buf_60_345_0 
              #                     3588 untrack temp_151_ele_of_mFalse_335_341_0 
              #                     3587 untrack temp_168_ele_of_buf_60_349_0 
              #                     3586 untrack temp_182_ele_of_buf_60_357_0 
              #                     3585 untrack temp_183_cmp_357_0 
              #                     3584 untrack temp_174_ptr_of_buf_60_353 
              #                     3583 untrack temp_176_cmp_353_0 
              #                     3582 untrack temp_41_array_init_ptr_335 
              #                     3581 untrack temp_42_array_init_ptr_335 
              #                     3580 untrack temp_181_ptr_of_buf_60_357 
              #                     3579 untrack temp_40_array_init_ptr_335 
              #                     3578 untrack temp_154_ele_of_buf_60_341_0 
              #                     3577 untrack buf_60 
              #                     3576 untrack temp_171_ele_of_mFalse_335_353_0 
              #                     3575 untrack temp_38_array_init_ptr_335 
              #                    occupy a0 with temp_38_array_init_ptr_335
              #                    release a0 with temp_38_array_init_ptr_335
              #                     3574 untrack temp_166_arithop_349_0 
              #                     3573 untrack temp_162_cmp_345_0 
              #                     3572 untrack temp_157_ele_of_mFalse_335_345_0 
              #                     3571 untrack temp_160_ptr_of_buf_60_345 
              #                     3570 untrack temp_148_arithop_337_0 
              #                     3569 untrack temp_164_ele_of_mFalse_335_349_0 
              #                     3568 untrack temp_169_cmp_349_0 
              #                     3567 untrack temp_44_arithop_335_0 
              #                     1625 mu pos_0_11:234 
              #                     234  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_38_array_init_ptr_335, tracked: true } |     a3:Freed { symidx: temp_39_array_init_ptr_335, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     686  label branch_false_338: 
.branch_false_338:
              #                     3600 untrack temp_149_cmp_337_0 
              #                     689  (nop) 
              #                     691  temp_151_ele_of_mFalse_335_341_0 = load temp_41_array_init_ptr_335:ptr->i32 
              #                    occupy a1 with temp_41_array_init_ptr_335
              #                    load from temp_41_array_init_ptr_335 in mem
    ld      a1,1400(sp)
              #                    occupy a2 with temp_151_ele_of_mFalse_335_341_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_151_ele_of_mFalse_335_341_0
              #                    store to temp_151_ele_of_mFalse_335_341_0 in mem offset legal
    sw      a2,980(sp)
              #                    release a2 with temp_151_ele_of_mFalse_335_341_0
              #                    free a1
              #                    occupy a1 with temp_41_array_init_ptr_335
              #                    store to temp_41_array_init_ptr_335 in mem offset legal
    sd      a1,1400(sp)
              #                    release a1 with temp_41_array_init_ptr_335
              #                     3603 untrack temp_41_array_init_ptr_335 
              #                     692  mu mFalse_335_6:691 
              #                     694  (nop) 
              #                     695  mu pos_0_11:694 
              #                     697  temp_153_ptr_of_buf_60_341 = GEP buf_60:Array:i32:[None] [Some(temp_147_value_from_ptr_337_0)] 
              #                    occupy a1 with temp_153_ptr_of_buf_60_341
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_147_value_from_ptr_337_0
              #                    load from temp_147_value_from_ptr_337_0 in mem


    lw      a4,1004(sp)
    mv      a2, a4
              #                    free a4
              #                    occupy a4 with temp_147_value_from_ptr_337_0
              #                    store to temp_147_value_from_ptr_337_0 in mem offset legal
    sw      a4,1004(sp)
              #                    release a4 with temp_147_value_from_ptr_337_0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a1,a1,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a1
              #                    occupy a1 with temp_153_ptr_of_buf_60_341
              #                    store to temp_153_ptr_of_buf_60_341 in mem offset legal
    sd      a1,968(sp)
              #                    release a1 with temp_153_ptr_of_buf_60_341
              #                     699  temp_154_ele_of_buf_60_341_0 = load temp_153_ptr_of_buf_60_341:ptr->i32 
              #                    occupy a1 with temp_153_ptr_of_buf_60_341
              #                    load from temp_153_ptr_of_buf_60_341 in mem
    ld      a1,968(sp)
              #                    occupy a2 with temp_154_ele_of_buf_60_341_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_154_ele_of_buf_60_341_0
              #                    store to temp_154_ele_of_buf_60_341_0 in mem offset legal
    sw      a2,964(sp)
              #                    release a2 with temp_154_ele_of_buf_60_341_0
              #                    free a1
              #                    occupy a1 with temp_153_ptr_of_buf_60_341
              #                    store to temp_153_ptr_of_buf_60_341 in mem offset legal
    sd      a1,968(sp)
              #                    release a1 with temp_153_ptr_of_buf_60_341
              #                     3602 untrack temp_153_ptr_of_buf_60_341 
              #                     700  mu buf_60:699 
              #                     702  temp_155_cmp_341_0 = icmp i32 Ne temp_154_ele_of_buf_60_341_0, temp_151_ele_of_mFalse_335_341_0 
              #                    occupy a1 with temp_154_ele_of_buf_60_341_0
              #                    load from temp_154_ele_of_buf_60_341_0 in mem


    lw      a1,964(sp)
              #                    occupy a2 with temp_151_ele_of_mFalse_335_341_0
              #                    load from temp_151_ele_of_mFalse_335_341_0 in mem


    lw      a2,980(sp)
              #                    occupy a4 with temp_155_cmp_341_0
    xor     a4,a1,a2
    snez    a4, a4
              #                    free a1
              #                    occupy a1 with temp_154_ele_of_buf_60_341_0
              #                    store to temp_154_ele_of_buf_60_341_0 in mem offset legal
    sw      a1,964(sp)
              #                    release a1 with temp_154_ele_of_buf_60_341_0
              #                    free a2
              #                    occupy a2 with temp_151_ele_of_mFalse_335_341_0
              #                    store to temp_151_ele_of_mFalse_335_341_0 in mem offset legal
    sw      a2,980(sp)
              #                    release a2 with temp_151_ele_of_mFalse_335_341_0
              #                    free a4
              #                    occupy a4 with temp_155_cmp_341_0
              #                    store to temp_155_cmp_341_0 in mem offset legal
    sb      a4,963(sp)
              #                    release a4 with temp_155_cmp_341_0
              #                     3604 untrack temp_154_ele_of_buf_60_341_0 
              #                     3601 untrack temp_151_ele_of_mFalse_335_341_0 
              #                     705  br i1 temp_155_cmp_341_0, label branch_true_342, label branch_false_342 
              #                    occupy a1 with temp_155_cmp_341_0
              #                    load from temp_155_cmp_341_0 in mem


    lb      a1,963(sp)
              #                    free a1
              #                    occupy a1 with temp_155_cmp_341_0
              #                    store to temp_155_cmp_341_0 in mem offset legal
    sb      a1,963(sp)
              #                    release a1 with temp_155_cmp_341_0
              #                    occupy a1 with temp_155_cmp_341_0
              #                    load from temp_155_cmp_341_0 in mem


    lb      a1,963(sp)
    bnez    a1, .branch_true_342
              #                    free a1
              #                    occupy a1 with temp_155_cmp_341_0
              #                    store to temp_155_cmp_341_0 in mem offset legal
    sb      a1,963(sp)
              #                    release a1 with temp_155_cmp_341_0
    j       .branch_false_342
              #                    regtab     a0:Freed { symidx: temp_38_array_init_ptr_335, tracked: true } |     a3:Freed { symidx: temp_39_array_init_ptr_335, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     703  label branch_true_342: 
.branch_true_342:
              #                     3632 untrack temp_38_array_init_ptr_335 
              #                    occupy a0 with temp_38_array_init_ptr_335
              #                    release a0 with temp_38_array_init_ptr_335
              #                     3631 untrack temp_42_array_init_ptr_335 
              #                     3630 untrack temp_157_ele_of_mFalse_335_345_0 
              #                     3629 untrack temp_181_ptr_of_buf_60_357 
              #                     3628 untrack temp_176_cmp_353_0 
              #                     3627 untrack temp_39_array_init_ptr_335 
              #                    occupy a3 with temp_39_array_init_ptr_335
              #                    release a3 with temp_39_array_init_ptr_335
              #                     3626 untrack temp_164_ele_of_mFalse_335_349_0 
              #                     3625 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     3624 untrack temp_147_value_from_ptr_337_0 
              #                     3623 untrack temp_160_ptr_of_buf_60_345 
              #                     3622 untrack temp_44_arithop_335_0 
              #                     3621 untrack temp_173_arithop_353_0 
              #                     3620 untrack temp_175_ele_of_buf_60_353_0 
              #                     3619 untrack temp_155_cmp_341_0 
              #                     3618 untrack temp_174_ptr_of_buf_60_353 
              #                     3617 untrack temp_161_ele_of_buf_60_345_0 
              #                     3616 untrack temp_162_cmp_345_0 
              #                     3615 untrack temp_167_ptr_of_buf_60_349 
              #                     3614 untrack temp_168_ele_of_buf_60_349_0 
              #                     3613 untrack temp_148_arithop_337_0 
              #                     3612 untrack temp_171_ele_of_mFalse_335_353_0 
              #                     3611 untrack temp_159_arithop_345_0 
              #                     3610 untrack temp_183_cmp_357_0 
              #                     3609 untrack temp_40_array_init_ptr_335 
              #                     3608 untrack temp_166_arithop_349_0 
              #                     3607 untrack temp_169_cmp_349_0 
              #                     3606 untrack buf_60 
              #                     3605 untrack temp_182_ele_of_buf_60_357_0 
              #                     1626 mu pos_0_11:232 
              #                     232  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_38_array_init_ptr_335, tracked: true } |     a3:Freed { symidx: temp_39_array_init_ptr_335, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     704  label branch_false_342: 
.branch_false_342:
              #                     3633 untrack temp_155_cmp_341_0 
              #                     707  (nop) 
              #                     709  temp_157_ele_of_mFalse_335_345_0 = load temp_38_array_init_ptr_335:ptr->i32 
              #                    occupy a0 with temp_38_array_init_ptr_335
              #                    occupy a1 with temp_157_ele_of_mFalse_335_345_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_157_ele_of_mFalse_335_345_0
              #                    store to temp_157_ele_of_mFalse_335_345_0 in mem offset legal
    sw      a1,948(sp)
              #                    release a1 with temp_157_ele_of_mFalse_335_345_0
              #                    free a0
              #                     3635 untrack temp_38_array_init_ptr_335 
              #                    occupy a0 with temp_38_array_init_ptr_335
              #                    release a0 with temp_38_array_init_ptr_335
              #                     710  mu mFalse_335_6:709 
              #                     712  (nop) 
              #                     713  mu pos_0_11:712 
              #                     715  temp_159_arithop_345_0 = Add i32 temp_147_value_from_ptr_337_0, 1_0 
              #                    occupy a0 with temp_147_value_from_ptr_337_0
              #                    load from temp_147_value_from_ptr_337_0 in mem


    lw      a0,1004(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_159_arithop_345_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    occupy a0 with temp_147_value_from_ptr_337_0
              #                    store to temp_147_value_from_ptr_337_0 in mem offset legal
    sw      a0,1004(sp)
              #                    release a0 with temp_147_value_from_ptr_337_0
              #                    free a1
              #                    free a2
              #                     717  temp_160_ptr_of_buf_60_345 = GEP buf_60:Array:i32:[None] [Some(temp_159_arithop_345_0)] 
              #                    occupy a0 with temp_160_ptr_of_buf_60_345
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_159_arithop_345_0
    mv      a1, a2
              #                    free a2
              #                    occupy a2 with temp_159_arithop_345_0
              #                    store to temp_159_arithop_345_0 in mem offset legal
    sw      a2,944(sp)
              #                    release a2 with temp_159_arithop_345_0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a1 with buf_60
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a1,1512(sp)
              #                    release a1 with buf_60
              #                    free a0
              #                     3638 untrack temp_159_arithop_345_0 
              #                     719  temp_161_ele_of_buf_60_345_0 = load temp_160_ptr_of_buf_60_345:ptr->i32 
              #                    occupy a0 with temp_160_ptr_of_buf_60_345
              #                    occupy a1 with temp_161_ele_of_buf_60_345_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_161_ele_of_buf_60_345_0
              #                    store to temp_161_ele_of_buf_60_345_0 in mem offset legal
    sw      a1,932(sp)
              #                    release a1 with temp_161_ele_of_buf_60_345_0
              #                    free a0
              #                     3634 untrack temp_160_ptr_of_buf_60_345 
              #                    occupy a0 with temp_160_ptr_of_buf_60_345
              #                    release a0 with temp_160_ptr_of_buf_60_345
              #                     720  mu buf_60:719 
              #                     722  temp_162_cmp_345_0 = icmp i32 Ne temp_161_ele_of_buf_60_345_0, temp_157_ele_of_mFalse_335_345_0 
              #                    occupy a0 with temp_161_ele_of_buf_60_345_0
              #                    load from temp_161_ele_of_buf_60_345_0 in mem


    lw      a0,932(sp)
              #                    occupy a1 with temp_157_ele_of_mFalse_335_345_0
              #                    load from temp_157_ele_of_mFalse_335_345_0 in mem


    lw      a1,948(sp)
              #                    occupy a2 with temp_162_cmp_345_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_161_ele_of_buf_60_345_0
              #                    store to temp_161_ele_of_buf_60_345_0 in mem offset legal
    sw      a0,932(sp)
              #                    release a0 with temp_161_ele_of_buf_60_345_0
              #                    free a1
              #                    occupy a1 with temp_157_ele_of_mFalse_335_345_0
              #                    store to temp_157_ele_of_mFalse_335_345_0 in mem offset legal
    sw      a1,948(sp)
              #                    release a1 with temp_157_ele_of_mFalse_335_345_0
              #                    free a2
              #                     3637 untrack temp_161_ele_of_buf_60_345_0 
              #                     3636 untrack temp_157_ele_of_mFalse_335_345_0 
              #                     725  br i1 temp_162_cmp_345_0, label branch_true_346, label branch_false_346 
              #                    occupy a2 with temp_162_cmp_345_0
              #                    free a2
              #                    occupy a2 with temp_162_cmp_345_0
    bnez    a2, .branch_true_346
              #                    free a2
    j       .branch_false_346
              #                    regtab     a2:Freed { symidx: temp_162_cmp_345_0, tracked: true } |     a3:Freed { symidx: temp_39_array_init_ptr_335, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     723  label branch_true_346: 
.branch_true_346:
              #                     3660 untrack temp_162_cmp_345_0 
              #                    occupy a2 with temp_162_cmp_345_0
              #                    release a2 with temp_162_cmp_345_0
              #                     3659 untrack temp_147_value_from_ptr_337_0 
              #                     3658 untrack temp_169_cmp_349_0 
              #                     3657 untrack temp_40_array_init_ptr_335 
              #                     3656 untrack temp_173_arithop_353_0 
              #                     3655 untrack temp_182_ele_of_buf_60_357_0 
              #                     3654 untrack temp_167_ptr_of_buf_60_349 
              #                     3653 untrack temp_164_ele_of_mFalse_335_349_0 
              #                     3652 untrack temp_174_ptr_of_buf_60_353 
              #                     3651 untrack temp_176_cmp_353_0 
              #                     3650 untrack temp_148_arithop_337_0 
              #                     3649 untrack temp_171_ele_of_mFalse_335_353_0 
              #                     3648 untrack temp_42_array_init_ptr_335 
              #                     3647 untrack temp_168_ele_of_buf_60_349_0 
              #                     3646 untrack buf_60 
              #                     3645 untrack temp_166_arithop_349_0 
              #                     3644 untrack temp_181_ptr_of_buf_60_357 
              #                     3643 untrack temp_39_array_init_ptr_335 
              #                    occupy a3 with temp_39_array_init_ptr_335
              #                    release a3 with temp_39_array_init_ptr_335
              #                     3642 untrack temp_175_ele_of_buf_60_353_0 
              #                     3641 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     3640 untrack temp_44_arithop_335_0 
              #                     3639 untrack temp_183_cmp_357_0 
              #                     1627 mu pos_0_11:230 
              #                     230  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_162_cmp_345_0, tracked: true } |     a3:Freed { symidx: temp_39_array_init_ptr_335, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     724  label branch_false_346: 
.branch_false_346:
              #                     3661 untrack temp_162_cmp_345_0 
              #                    occupy a2 with temp_162_cmp_345_0
              #                    release a2 with temp_162_cmp_345_0
              #                     727  (nop) 
              #                     729  temp_164_ele_of_mFalse_335_349_0 = load temp_39_array_init_ptr_335:ptr->i32 
              #                    occupy a3 with temp_39_array_init_ptr_335
              #                    occupy a0 with temp_164_ele_of_mFalse_335_349_0
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                     3665 untrack temp_39_array_init_ptr_335 
              #                    occupy a3 with temp_39_array_init_ptr_335
              #                    release a3 with temp_39_array_init_ptr_335
              #                     730  mu mFalse_335_6:729 
              #                     732  (nop) 
              #                     733  mu pos_0_11:732 
              #                     735  temp_166_arithop_349_0 = Add i32 temp_147_value_from_ptr_337_0, 2_0 
              #                    occupy a1 with temp_147_value_from_ptr_337_0
              #                    load from temp_147_value_from_ptr_337_0 in mem


    lw      a1,1004(sp)
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with temp_166_arithop_349_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    occupy a1 with temp_147_value_from_ptr_337_0
              #                    store to temp_147_value_from_ptr_337_0 in mem offset legal
    sw      a1,1004(sp)
              #                    release a1 with temp_147_value_from_ptr_337_0
              #                    free a2
              #                    free a3
              #                     737  temp_167_ptr_of_buf_60_349 = GEP buf_60:Array:i32:[None] [Some(temp_166_arithop_349_0)] 
              #                    occupy a1 with temp_167_ptr_of_buf_60_349
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_166_arithop_349_0
    mv      a2, a3
              #                    free a3
              #                    occupy a3 with temp_166_arithop_349_0
              #                    store to temp_166_arithop_349_0 in mem offset legal
    sw      a3,912(sp)
              #                    release a3 with temp_166_arithop_349_0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a1,a1,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a1
              #                     3664 untrack temp_166_arithop_349_0 
              #                     739  temp_168_ele_of_buf_60_349_0 = load temp_167_ptr_of_buf_60_349:ptr->i32 
              #                    occupy a1 with temp_167_ptr_of_buf_60_349
              #                    occupy a2 with temp_168_ele_of_buf_60_349_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_168_ele_of_buf_60_349_0
              #                    store to temp_168_ele_of_buf_60_349_0 in mem offset legal
    sw      a2,900(sp)
              #                    release a2 with temp_168_ele_of_buf_60_349_0
              #                    free a1
              #                     3662 untrack temp_167_ptr_of_buf_60_349 
              #                    occupy a1 with temp_167_ptr_of_buf_60_349
              #                    release a1 with temp_167_ptr_of_buf_60_349
              #                     740  mu buf_60:739 
              #                     742  temp_169_cmp_349_0 = icmp i32 Ne temp_168_ele_of_buf_60_349_0, temp_164_ele_of_mFalse_335_349_0 
              #                    occupy a1 with temp_168_ele_of_buf_60_349_0
              #                    load from temp_168_ele_of_buf_60_349_0 in mem


    lw      a1,900(sp)
              #                    occupy a0 with temp_164_ele_of_mFalse_335_349_0
              #                    occupy a2 with temp_169_cmp_349_0
    xor     a2,a1,a0
    snez    a2, a2
              #                    free a1
              #                    occupy a1 with temp_168_ele_of_buf_60_349_0
              #                    store to temp_168_ele_of_buf_60_349_0 in mem offset legal
    sw      a1,900(sp)
              #                    release a1 with temp_168_ele_of_buf_60_349_0
              #                    free a0
              #                    free a2
              #                     3666 untrack temp_168_ele_of_buf_60_349_0 
              #                     3663 untrack temp_164_ele_of_mFalse_335_349_0 
              #                    occupy a0 with temp_164_ele_of_mFalse_335_349_0
              #                    release a0 with temp_164_ele_of_mFalse_335_349_0
              #                     745  br i1 temp_169_cmp_349_0, label branch_true_350, label branch_false_350 
              #                    occupy a2 with temp_169_cmp_349_0
              #                    free a2
              #                    occupy a2 with temp_169_cmp_349_0
    bnez    a2, .branch_true_350
              #                    free a2
    j       .branch_false_350
              #                    regtab     a2:Freed { symidx: temp_169_cmp_349_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     743  label branch_true_350: 
.branch_true_350:
              #                     3682 untrack temp_174_ptr_of_buf_60_353 
              #                     3681 untrack temp_147_value_from_ptr_337_0 
              #                     3680 untrack temp_42_array_init_ptr_335 
              #                     3679 untrack temp_182_ele_of_buf_60_357_0 
              #                     3678 untrack temp_40_array_init_ptr_335 
              #                     3677 untrack temp_181_ptr_of_buf_60_357 
              #                     3676 untrack temp_169_cmp_349_0 
              #                    occupy a2 with temp_169_cmp_349_0
              #                    release a2 with temp_169_cmp_349_0
              #                     3675 untrack temp_183_cmp_357_0 
              #                     3674 untrack buf_60 
              #                     3673 untrack temp_173_arithop_353_0 
              #                     3672 untrack temp_171_ele_of_mFalse_335_353_0 
              #                     3671 untrack temp_44_arithop_335_0 
              #                     3670 untrack temp_176_cmp_353_0 
              #                     3669 untrack temp_175_ele_of_buf_60_353_0 
              #                     3668 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     3667 untrack temp_148_arithop_337_0 
              #                     1628 mu pos_0_11:228 
              #                     228  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_169_cmp_349_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     744  label branch_false_350: 
.branch_false_350:
              #                     3683 untrack temp_169_cmp_349_0 
              #                    occupy a2 with temp_169_cmp_349_0
              #                    release a2 with temp_169_cmp_349_0
              #                     747  (nop) 
              #                     749  temp_171_ele_of_mFalse_335_353_0 = load temp_40_array_init_ptr_335:ptr->i32 
              #                    occupy a0 with temp_40_array_init_ptr_335
              #                    load from temp_40_array_init_ptr_335 in mem
    ld      a0,1408(sp)
              #                    occupy a1 with temp_171_ele_of_mFalse_335_353_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     3684 untrack temp_40_array_init_ptr_335 
              #                    occupy a0 with temp_40_array_init_ptr_335
              #                    release a0 with temp_40_array_init_ptr_335
              #                     750  mu mFalse_335_6:749 
              #                     752  (nop) 
              #                     753  mu pos_0_11:752 
              #                     755  temp_173_arithop_353_0 = Add i32 temp_147_value_from_ptr_337_0, 3_0 
              #                    occupy a0 with temp_147_value_from_ptr_337_0
              #                    load from temp_147_value_from_ptr_337_0 in mem


    lw      a0,1004(sp)
              #                    occupy a2 with 3_0
    li      a2, 3
              #                    occupy a3 with temp_173_arithop_353_0
    ADDW    a3,a0,a2
              #                    free a0
              #                    occupy a0 with temp_147_value_from_ptr_337_0
              #                    store to temp_147_value_from_ptr_337_0 in mem offset legal
    sw      a0,1004(sp)
              #                    release a0 with temp_147_value_from_ptr_337_0
              #                    free a2
              #                    free a3
              #                     757  temp_174_ptr_of_buf_60_353 = GEP buf_60:Array:i32:[None] [Some(temp_173_arithop_353_0)] 
              #                    occupy a0 with temp_174_ptr_of_buf_60_353
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_173_arithop_353_0
    mv      a2, a3
              #                    free a3
              #                    occupy a3 with temp_173_arithop_353_0
              #                    store to temp_173_arithop_353_0 in mem offset legal
    sw      a3,880(sp)
              #                    release a3 with temp_173_arithop_353_0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a0
              #                     3686 untrack temp_173_arithop_353_0 
              #                     759  temp_175_ele_of_buf_60_353_0 = load temp_174_ptr_of_buf_60_353:ptr->i32 
              #                    occupy a0 with temp_174_ptr_of_buf_60_353
              #                    occupy a2 with temp_175_ele_of_buf_60_353_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_175_ele_of_buf_60_353_0
              #                    store to temp_175_ele_of_buf_60_353_0 in mem offset legal
    sw      a2,868(sp)
              #                    release a2 with temp_175_ele_of_buf_60_353_0
              #                    free a0
              #                     3687 untrack temp_174_ptr_of_buf_60_353 
              #                    occupy a0 with temp_174_ptr_of_buf_60_353
              #                    release a0 with temp_174_ptr_of_buf_60_353
              #                     760  mu buf_60:759 
              #                     762  temp_176_cmp_353_0 = icmp i32 Ne temp_175_ele_of_buf_60_353_0, temp_171_ele_of_mFalse_335_353_0 
              #                    occupy a0 with temp_175_ele_of_buf_60_353_0
              #                    load from temp_175_ele_of_buf_60_353_0 in mem


    lw      a0,868(sp)
              #                    occupy a1 with temp_171_ele_of_mFalse_335_353_0
              #                    occupy a2 with temp_176_cmp_353_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_175_ele_of_buf_60_353_0
              #                    store to temp_175_ele_of_buf_60_353_0 in mem offset legal
    sw      a0,868(sp)
              #                    release a0 with temp_175_ele_of_buf_60_353_0
              #                    free a1
              #                    free a2
              #                     3688 untrack temp_175_ele_of_buf_60_353_0 
              #                     3685 untrack temp_171_ele_of_mFalse_335_353_0 
              #                    occupy a1 with temp_171_ele_of_mFalse_335_353_0
              #                    release a1 with temp_171_ele_of_mFalse_335_353_0
              #                     765  br i1 temp_176_cmp_353_0, label branch_true_354, label branch_false_354 
              #                    occupy a2 with temp_176_cmp_353_0
              #                    free a2
              #                    occupy a2 with temp_176_cmp_353_0
    bnez    a2, .branch_true_354
              #                    free a2
    j       .branch_false_354
              #                    regtab     a2:Freed { symidx: temp_176_cmp_353_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     763  label branch_true_354: 
.branch_true_354:
              #                     3698 untrack temp_181_ptr_of_buf_60_357 
              #                     3697 untrack temp_44_arithop_335_0 
              #                     3696 untrack temp_147_value_from_ptr_337_0 
              #                     3695 untrack temp_148_arithop_337_0 
              #                     3694 untrack buf_60 
              #                     3693 untrack temp_42_array_init_ptr_335 
              #                     3692 untrack temp_183_cmp_357_0 
              #                     3691 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     3690 untrack temp_182_ele_of_buf_60_357_0 
              #                     3689 untrack temp_176_cmp_353_0 
              #                    occupy a2 with temp_176_cmp_353_0
              #                    release a2 with temp_176_cmp_353_0
              #                     1629 mu pos_0_11:226 
              #                     226  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_176_cmp_353_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     764  label branch_false_354: 
.branch_false_354:
              #                     3699 untrack temp_176_cmp_353_0 
              #                    occupy a2 with temp_176_cmp_353_0
              #                    release a2 with temp_176_cmp_353_0
              #                     767  (nop) 
              #                     769  temp_178_ele_of_mFalse_335_357_0 = load temp_42_array_init_ptr_335:ptr->i32 
              #                    occupy a0 with temp_42_array_init_ptr_335
              #                    load from temp_42_array_init_ptr_335 in mem
    ld      a0,1392(sp)
              #                    occupy a1 with temp_178_ele_of_mFalse_335_357_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     3702 untrack temp_42_array_init_ptr_335 
              #                    occupy a0 with temp_42_array_init_ptr_335
              #                    release a0 with temp_42_array_init_ptr_335
              #                     770  mu mFalse_335_6:769 
              #                     772  (nop) 
              #                     773  mu pos_0_11:772 
              #                     775  (nop) 
              #                     777  temp_181_ptr_of_buf_60_357 = GEP buf_60:Array:i32:[None] [Some(temp_148_arithop_337_0)] 
              #                    occupy a0 with temp_181_ptr_of_buf_60_357
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_148_arithop_337_0
              #                    load from temp_148_arithop_337_0 in mem


    lw      a3,1000(sp)
    mv      a2, a3
              #                    free a3
              #                    occupy a3 with temp_148_arithop_337_0
              #                    store to temp_148_arithop_337_0 in mem offset legal
    sw      a3,1000(sp)
              #                    release a3 with temp_148_arithop_337_0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a0
              #                     3704 untrack temp_148_arithop_337_0 
              #                     779  temp_182_ele_of_buf_60_357_0 = load temp_181_ptr_of_buf_60_357:ptr->i32 
              #                    occupy a0 with temp_181_ptr_of_buf_60_357
              #                    occupy a2 with temp_182_ele_of_buf_60_357_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_182_ele_of_buf_60_357_0
              #                    store to temp_182_ele_of_buf_60_357_0 in mem offset legal
    sw      a2,836(sp)
              #                    release a2 with temp_182_ele_of_buf_60_357_0
              #                    free a0
              #                     3700 untrack temp_181_ptr_of_buf_60_357 
              #                    occupy a0 with temp_181_ptr_of_buf_60_357
              #                    release a0 with temp_181_ptr_of_buf_60_357
              #                     780  mu buf_60:779 
              #                     3705 untrack buf_60 
              #                     782  temp_183_cmp_357_0 = icmp i32 Ne temp_182_ele_of_buf_60_357_0, temp_178_ele_of_mFalse_335_357_0 
              #                    occupy a0 with temp_182_ele_of_buf_60_357_0
              #                    load from temp_182_ele_of_buf_60_357_0 in mem


    lw      a0,836(sp)
              #                    occupy a1 with temp_178_ele_of_mFalse_335_357_0
              #                    occupy a2 with temp_183_cmp_357_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_182_ele_of_buf_60_357_0
              #                    store to temp_182_ele_of_buf_60_357_0 in mem offset legal
    sw      a0,836(sp)
              #                    release a0 with temp_182_ele_of_buf_60_357_0
              #                    free a1
              #                    free a2
              #                     3703 untrack temp_178_ele_of_mFalse_335_357_0 
              #                    occupy a1 with temp_178_ele_of_mFalse_335_357_0
              #                    release a1 with temp_178_ele_of_mFalse_335_357_0
              #                     3701 untrack temp_182_ele_of_buf_60_357_0 
              #                     785  br i1 temp_183_cmp_357_0, label branch_true_358, label branch_false_358 
              #                    occupy a2 with temp_183_cmp_357_0
              #                    free a2
              #                    occupy a2 with temp_183_cmp_357_0
    bnez    a2, .branch_true_358
              #                    free a2
    j       .branch_false_358
              #                    regtab     a2:Freed { symidx: temp_183_cmp_357_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     783  label branch_true_358: 
.branch_true_358:
              #                     3708 untrack temp_147_value_from_ptr_337_0 
              #                     3707 untrack temp_44_arithop_335_0 
              #                     3706 untrack temp_183_cmp_357_0 
              #                    occupy a2 with temp_183_cmp_357_0
              #                    release a2 with temp_183_cmp_357_0
              #                     1630 mu pos_0_11:224 
              #                     224  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_183_cmp_357_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     784  label branch_false_358: 
.branch_false_358:
              #                     3709 untrack temp_183_cmp_357_0 
              #                    occupy a2 with temp_183_cmp_357_0
              #                    release a2 with temp_183_cmp_357_0
              #                          jump label: gather_223 
    j       .gather_223
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     786  label gather_223: 
.gather_223:
              #                          jump label: gather_225 
    j       .gather_225
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     787  label gather_225: 
.gather_225:
              #                          jump label: gather_227 
    j       .gather_227
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     788  label gather_227: 
.gather_227:
              #                          jump label: gather_229 
    j       .gather_229
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     789  label gather_229: 
.gather_229:
              #                          jump label: gather_231 
    j       .gather_231
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     790  label gather_231: 
.gather_231:
              #                          jump label: L43_0 
    j       .L43_0
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                          label L43_0: 
.L43_0:
              #                     217  (nop) 
              #                     218  mu pos_0_11:217 
              #                     220  temp_44_arithop_335_0 = Add i32 temp_147_value_from_ptr_337_0, 5_0 
              #                    occupy a0 with temp_147_value_from_ptr_337_0
              #                    load from temp_147_value_from_ptr_337_0 in mem


    lw      a0,1004(sp)
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a2 with temp_44_arithop_335_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    occupy a0 with temp_147_value_from_ptr_337_0
              #                    store to temp_147_value_from_ptr_337_0 in mem offset legal
    sw      a0,1004(sp)
              #                    release a0 with temp_147_value_from_ptr_337_0
              #                    free a1
              #                    free a2
              #                     3711 untrack temp_147_value_from_ptr_337_0 
              #                     221  store temp_44_arithop_335_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a2 with temp_44_arithop_335_0
    sw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_44_arithop_335_0
              #                    store to temp_44_arithop_335_0 in mem offset legal
    sw      a2,1368(sp)
              #                    release a2 with temp_44_arithop_335_0
              #                    free a0
              #                     3710 untrack temp_44_arithop_335_0 
              #                     222  pos_0_87 = chi pos_0_11:221 
              #                          jump label: gather_254 
    j       .gather_254
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     577  label gather_254: 
.gather_254:
              #                          jump label: gather_256 
    j       .gather_256
              #                    regtab     a0:Freed { symidx: type_60_0, tracked: true } |     a2:Freed { symidx: temp_115_cmp_333_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     569  label branch_false_334: 
.branch_false_334:
              #                     3564 untrack temp_164_ele_of_mFalse_335_349_0 
              #                     3563 untrack temp_155_cmp_341_0 
              #                     3562 untrack temp_147_value_from_ptr_337_0 
              #                     3561 untrack temp_41_array_init_ptr_335 
              #                     3560 untrack temp_153_ptr_of_buf_60_341 
              #                     3559 untrack temp_115_cmp_333_0 
              #                    occupy a2 with temp_115_cmp_333_0
              #                    release a2 with temp_115_cmp_333_0
              #                     3558 untrack temp_161_ele_of_buf_60_345_0 
              #                     3557 untrack temp_148_arithop_337_0 
              #                     3556 untrack temp_183_cmp_357_0 
              #                     3555 untrack temp_38_array_init_ptr_335 
              #                     3554 untrack temp_151_ele_of_mFalse_335_341_0 
              #                     3553 untrack temp_37_array_init_ptr_335 
              #                     3552 untrack temp_166_arithop_349_0 
              #                     3551 untrack temp_160_ptr_of_buf_60_345 
              #                     3550 untrack temp_167_ptr_of_buf_60_349 
              #                     3549 untrack temp_39_array_init_ptr_335 
              #                     3548 untrack temp_178_ele_of_mFalse_335_357_0 
              #                     3547 untrack temp_40_array_init_ptr_335 
              #                     3546 untrack temp_149_cmp_337_0 
              #                     3545 untrack temp_168_ele_of_buf_60_349_0 
              #                     3544 untrack temp_159_arithop_345_0 
              #                     3543 untrack temp_162_cmp_345_0 
              #                     3542 untrack temp_154_ele_of_buf_60_341_0 
              #                     3541 untrack temp_44_arithop_335_0 
              #                     3540 untrack temp_182_ele_of_buf_60_357_0 
              #                     3539 untrack temp_174_ptr_of_buf_60_353 
              #                     3538 untrack temp_181_ptr_of_buf_60_357 
              #                     3537 untrack temp_169_cmp_349_0 
              #                     3536 untrack temp_175_ele_of_buf_60_353_0 
              #                     3535 untrack temp_176_cmp_353_0 
              #                     3534 untrack temp_42_array_init_ptr_335 
              #                     3533 untrack temp_173_arithop_353_0 
              #                     3532 untrack temp_157_ele_of_mFalse_335_345_0 
              #                     3531 untrack temp_171_ele_of_mFalse_335_353_0 
              #                     572  temp_116_cmp_362_0 = icmp i32 Eq type_60_0, 7_0 
              #                    occupy a0 with type_60_0
              #                    occupy a1 with 7_0
    li      a1, 7
              #                    occupy a2 with temp_116_cmp_362_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     3712 untrack type_60_0 
              #                    occupy a0 with type_60_0
              #                    release a0 with type_60_0
              #                     575  br i1 temp_116_cmp_362_0, label branch_true_363, label branch_false_363 
              #                    occupy a2 with temp_116_cmp_362_0
              #                    free a2
              #                    occupy a2 with temp_116_cmp_362_0
    bnez    a2, .branch_true_363
              #                    free a2
    j       .branch_false_363
              #                    regtab     a2:Freed { symidx: temp_116_cmp_362_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     573  label branch_true_363: 
.branch_true_363:
              #                     3713 untrack temp_116_cmp_362_0 
              #                    occupy a2 with temp_116_cmp_362_0
              #                    release a2 with temp_116_cmp_362_0
              #                     153   
              #                     155  temp_30_array_init_ptr_364 = GEP mNull_364_0:Array:i32:[Some(4_0)] [] 
              #                    occupy a0 with temp_30_array_init_ptr_364
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1448
              #                    free a0
              #                     156   Call void memset_0(temp_30_array_init_ptr_364, 0_0, 16_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_30_array_init_ptr_364
              #                    store to temp_30_array_init_ptr_364 in mem offset legal
    sd      a0,1496(sp)
              #                    release a0 with temp_30_array_init_ptr_364
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_array_init_ptr_364_0
              #                    load from temp_30_array_init_ptr_364 in mem
    ld      a0,1496(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_16_0_0
    li      a2, 16
              #                    arg load ended


    call    memset
              #                     3744 untrack temp_30_array_init_ptr_364 
              #                     1631 mu mNull_364_0:156 
              #                     1632 mNull_364_1 = chi mNull_364_0:156 
              #                     158  temp_31_array_init_ptr_364 = GEP mNull_364_1:Array:i32:[Some(4_0)] [Some(1_0)] 
              #                    occupy a0 with temp_31_array_init_ptr_364
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 1
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1448
              #                    free a0
              #                     159  store 117_0:i32 temp_31_array_init_ptr_364:ptr->i32 
              #                    occupy a0 with temp_31_array_init_ptr_364
              #                    occupy a2 with 117_0
    li      a2, 117
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     160  mNull_364_2 = chi mNull_364_1:159 
              #                     162  temp_32_array_init_ptr_364 = GEP mNull_364_2:Array:i32:[Some(4_0)] [Some(2_0)] 
              #                    occupy a3 with temp_32_array_init_ptr_364
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 2
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,1448
              #                    free a3
              #                     163  store 108_0:i32 temp_32_array_init_ptr_364:ptr->i32 
              #                    occupy a3 with temp_32_array_init_ptr_364
              #                    occupy a5 with 108_0
    li      a5, 108
    sw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     164  mNull_364_3 = chi mNull_364_2:163 
              #                     166  temp_33_array_init_ptr_364 = GEP mNull_364_3:Array:i32:[Some(4_0)] [Some(0_0)] 
              #                    occupy a5 with temp_33_array_init_ptr_364
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 0
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,1448
              #                    free a5
              #                    occupy a5 with temp_33_array_init_ptr_364
              #                    store to temp_33_array_init_ptr_364 in mem offset legal
    sd      a5,1472(sp)
              #                    release a5 with temp_33_array_init_ptr_364
              #                     167  store 110_0:i32 temp_33_array_init_ptr_364:ptr->i32 
              #                    occupy a5 with temp_33_array_init_ptr_364
              #                    load from temp_33_array_init_ptr_364 in mem
    ld      a5,1472(sp)
              #                    occupy a6 with 110_0
    li      a6, 110
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                    occupy a5 with temp_33_array_init_ptr_364
              #                    store to temp_33_array_init_ptr_364 in mem offset legal
    sd      a5,1472(sp)
              #                    release a5 with temp_33_array_init_ptr_364
              #                     168  mNull_364_4 = chi mNull_364_3:167 
              #                     170  temp_34_array_init_ptr_364 = GEP mNull_364_4:Array:i32:[Some(4_0)] [Some(3_0)] 
              #                    occupy a5 with temp_34_array_init_ptr_364
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 3
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,1448
              #                    free a5
              #                    occupy a5 with temp_34_array_init_ptr_364
              #                    store to temp_34_array_init_ptr_364 in mem offset legal
    sd      a5,1464(sp)
              #                    release a5 with temp_34_array_init_ptr_364
              #                     171  store 108_0:i32 temp_34_array_init_ptr_364:ptr->i32 
              #                    occupy a5 with temp_34_array_init_ptr_364
              #                    load from temp_34_array_init_ptr_364 in mem
    ld      a5,1464(sp)
              #                    occupy a6 with 108_0
    li      a6, 108
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                    occupy a5 with temp_34_array_init_ptr_364
              #                    store to temp_34_array_init_ptr_364 in mem offset legal
    sd      a5,1464(sp)
              #                    release a5 with temp_34_array_init_ptr_364
              #                     172  mNull_364_5 = chi mNull_364_4:171 
              #                          jump label: L44_0 
    j       .L44_0
              #                    regtab     a0:Freed { symidx: temp_31_array_init_ptr_364, tracked: true } |     a3:Freed { symidx: temp_32_array_init_ptr_364, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L44_0: 
.L44_0:
              #                     587  temp_117_value_from_ptr_366_0 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_117_value_from_ptr_366_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_117_value_from_ptr_366_0
              #                    store to temp_117_value_from_ptr_366_0 in mem offset legal
    sw      a2,1148(sp)
              #                    release a2 with temp_117_value_from_ptr_366_0
              #                    free a1
              #                     588  mu pos_0_11:587 
              #                     590  temp_118_arithop_366_0 = Add i32 temp_117_value_from_ptr_366_0, 3_0 
              #                    occupy a1 with temp_117_value_from_ptr_366_0
              #                    load from temp_117_value_from_ptr_366_0 in mem


    lw      a1,1148(sp)
              #                    occupy a2 with 3_0
    li      a2, 3
              #                    occupy a4 with temp_118_arithop_366_0
    ADDW    a4,a1,a2
              #                    free a1
              #                    occupy a1 with temp_117_value_from_ptr_366_0
              #                    store to temp_117_value_from_ptr_366_0 in mem offset legal
    sw      a1,1148(sp)
              #                    release a1 with temp_117_value_from_ptr_366_0
              #                    free a2
              #                    free a4
              #                    occupy a4 with temp_118_arithop_366_0
              #                    store to temp_118_arithop_366_0 in mem offset legal
    sw      a4,1144(sp)
              #                    release a4 with temp_118_arithop_366_0
              #                     592  temp_119_cmp_366_0 = icmp i32 Sge temp_118_arithop_366_0, len_60_0 
              #                    occupy a1 with temp_118_arithop_366_0
              #                    load from temp_118_arithop_366_0 in mem


    lw      a1,1144(sp)
              #                    occupy a2 with len_60_0
              #                    load from len_60_0 in mem


    lw      a2,1508(sp)
              #                    occupy a4 with temp_119_cmp_366_0
    slt     a4,a1,a2
    xori    a4,a4,1
              #                    free a1
              #                    occupy a1 with temp_118_arithop_366_0
              #                    store to temp_118_arithop_366_0 in mem offset legal
    sw      a1,1144(sp)
              #                    release a1 with temp_118_arithop_366_0
              #                    free a2
              #                    occupy a2 with len_60_0
              #                    store to len_60_0 in mem offset legal
    sw      a2,1508(sp)
              #                    release a2 with len_60_0
              #                    free a4
              #                    occupy a4 with temp_119_cmp_366_0
              #                    store to temp_119_cmp_366_0 in mem offset legal
    sb      a4,1143(sp)
              #                    release a4 with temp_119_cmp_366_0
              #                     3745 untrack len_60_0 
              #                     595  br i1 temp_119_cmp_366_0, label branch_true_367, label branch_false_367 
              #                    occupy a1 with temp_119_cmp_366_0
              #                    load from temp_119_cmp_366_0 in mem


    lb      a1,1143(sp)
              #                    free a1
              #                    occupy a1 with temp_119_cmp_366_0
              #                    store to temp_119_cmp_366_0 in mem offset legal
    sb      a1,1143(sp)
              #                    release a1 with temp_119_cmp_366_0
              #                    occupy a1 with temp_119_cmp_366_0
              #                    load from temp_119_cmp_366_0 in mem


    lb      a1,1143(sp)
    bnez    a1, .branch_true_367
              #                    free a1
              #                    occupy a1 with temp_119_cmp_366_0
              #                    store to temp_119_cmp_366_0 in mem offset legal
    sb      a1,1143(sp)
              #                    release a1 with temp_119_cmp_366_0
    j       .branch_false_367
              #                    regtab     a0:Freed { symidx: temp_31_array_init_ptr_364, tracked: true } |     a3:Freed { symidx: temp_32_array_init_ptr_364, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     593  label branch_true_367: 
.branch_true_367:
              #                     3772 untrack temp_132_cmp_374_0 
              #                     3771 untrack temp_119_cmp_366_0 
              #                     3770 untrack temp_36_arithop_364_0 
              #                     3769 untrack temp_34_array_init_ptr_364 
              #                     3768 untrack temp_137_ptr_of_buf_60_378 
              #                     3767 untrack temp_117_value_from_ptr_366_0 
              #                     3766 untrack temp_129_arithop_374_0 
              #                     3765 untrack temp_145_ele_of_buf_60_382_0 
              #                     3764 untrack temp_124_ele_of_buf_60_370_0 
              #                     3763 untrack temp_136_arithop_378_0 
              #                     3762 untrack temp_139_cmp_378_0 
              #                     3761 untrack temp_32_array_init_ptr_364 
              #                    occupy a3 with temp_32_array_init_ptr_364
              #                    release a3 with temp_32_array_init_ptr_364
              #                     3760 untrack temp_144_ptr_of_buf_60_382 
              #                     3759 untrack temp_138_ele_of_buf_60_378_0 
              #                     3758 untrack temp_123_ptr_of_buf_60_370 
              #                     3757 untrack temp_131_ele_of_buf_60_374_0 
              #                     3756 untrack temp_121_ele_of_mNull_364_370_0 
              #                     3755 untrack temp_125_cmp_370_0 
              #                     3754 untrack temp_127_ele_of_mNull_364_374_0 
              #                     3753 untrack temp_146_cmp_382_0 
              #                     3752 untrack temp_141_ele_of_mNull_364_382_0 
              #                     3751 untrack temp_31_array_init_ptr_364 
              #                    occupy a0 with temp_31_array_init_ptr_364
              #                    release a0 with temp_31_array_init_ptr_364
              #                     3750 untrack temp_118_arithop_366_0 
              #                     3749 untrack temp_134_ele_of_mNull_364_378_0 
              #                     3748 untrack temp_33_array_init_ptr_364 
              #                     3747 untrack temp_130_ptr_of_buf_60_374 
              #                     3746 untrack buf_60 
              #                     1633 mu pos_0_11:190 
              #                     190  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_31_array_init_ptr_364, tracked: true } |     a3:Freed { symidx: temp_32_array_init_ptr_364, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     594  label branch_false_367: 
.branch_false_367:
              #                     3773 untrack temp_119_cmp_366_0 
              #                     597  (nop) 
              #                     599  temp_121_ele_of_mNull_364_370_0 = load temp_33_array_init_ptr_364:ptr->i32 
              #                    occupy a1 with temp_33_array_init_ptr_364
              #                    load from temp_33_array_init_ptr_364 in mem
    ld      a1,1472(sp)
              #                    occupy a2 with temp_121_ele_of_mNull_364_370_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_121_ele_of_mNull_364_370_0
              #                    store to temp_121_ele_of_mNull_364_370_0 in mem offset legal
    sw      a2,1124(sp)
              #                    release a2 with temp_121_ele_of_mNull_364_370_0
              #                    free a1
              #                    occupy a1 with temp_33_array_init_ptr_364
              #                    store to temp_33_array_init_ptr_364 in mem offset legal
    sd      a1,1472(sp)
              #                    release a1 with temp_33_array_init_ptr_364
              #                     3777 untrack temp_33_array_init_ptr_364 
              #                     600  mu mNull_364_5:599 
              #                     602  (nop) 
              #                     603  mu pos_0_11:602 
              #                     605  temp_123_ptr_of_buf_60_370 = GEP buf_60:Array:i32:[None] [Some(temp_117_value_from_ptr_366_0)] 
              #                    occupy a1 with temp_123_ptr_of_buf_60_370
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_117_value_from_ptr_366_0
              #                    load from temp_117_value_from_ptr_366_0 in mem


    lw      a4,1148(sp)
    mv      a2, a4
              #                    free a4
              #                    occupy a4 with temp_117_value_from_ptr_366_0
              #                    store to temp_117_value_from_ptr_366_0 in mem offset legal
    sw      a4,1148(sp)
              #                    release a4 with temp_117_value_from_ptr_366_0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a1,a1,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a1
              #                    occupy a1 with temp_123_ptr_of_buf_60_370
              #                    store to temp_123_ptr_of_buf_60_370 in mem offset legal
    sd      a1,1112(sp)
              #                    release a1 with temp_123_ptr_of_buf_60_370
              #                     607  temp_124_ele_of_buf_60_370_0 = load temp_123_ptr_of_buf_60_370:ptr->i32 
              #                    occupy a1 with temp_123_ptr_of_buf_60_370
              #                    load from temp_123_ptr_of_buf_60_370 in mem
    ld      a1,1112(sp)
              #                    occupy a2 with temp_124_ele_of_buf_60_370_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_124_ele_of_buf_60_370_0
              #                    store to temp_124_ele_of_buf_60_370_0 in mem offset legal
    sw      a2,1108(sp)
              #                    release a2 with temp_124_ele_of_buf_60_370_0
              #                    free a1
              #                    occupy a1 with temp_123_ptr_of_buf_60_370
              #                    store to temp_123_ptr_of_buf_60_370 in mem offset legal
    sd      a1,1112(sp)
              #                    release a1 with temp_123_ptr_of_buf_60_370
              #                     3775 untrack temp_123_ptr_of_buf_60_370 
              #                     608  mu buf_60:607 
              #                     610  temp_125_cmp_370_0 = icmp i32 Ne temp_124_ele_of_buf_60_370_0, temp_121_ele_of_mNull_364_370_0 
              #                    occupy a1 with temp_124_ele_of_buf_60_370_0
              #                    load from temp_124_ele_of_buf_60_370_0 in mem


    lw      a1,1108(sp)
              #                    occupy a2 with temp_121_ele_of_mNull_364_370_0
              #                    load from temp_121_ele_of_mNull_364_370_0 in mem


    lw      a2,1124(sp)
              #                    occupy a4 with temp_125_cmp_370_0
    xor     a4,a1,a2
    snez    a4, a4
              #                    free a1
              #                    occupy a1 with temp_124_ele_of_buf_60_370_0
              #                    store to temp_124_ele_of_buf_60_370_0 in mem offset legal
    sw      a1,1108(sp)
              #                    release a1 with temp_124_ele_of_buf_60_370_0
              #                    free a2
              #                    occupy a2 with temp_121_ele_of_mNull_364_370_0
              #                    store to temp_121_ele_of_mNull_364_370_0 in mem offset legal
    sw      a2,1124(sp)
              #                    release a2 with temp_121_ele_of_mNull_364_370_0
              #                    free a4
              #                    occupy a4 with temp_125_cmp_370_0
              #                    store to temp_125_cmp_370_0 in mem offset legal
    sb      a4,1107(sp)
              #                    release a4 with temp_125_cmp_370_0
              #                     3776 untrack temp_124_ele_of_buf_60_370_0 
              #                     3774 untrack temp_121_ele_of_mNull_364_370_0 
              #                     613  br i1 temp_125_cmp_370_0, label branch_true_371, label branch_false_371 
              #                    occupy a1 with temp_125_cmp_370_0
              #                    load from temp_125_cmp_370_0 in mem


    lb      a1,1107(sp)
              #                    free a1
              #                    occupy a1 with temp_125_cmp_370_0
              #                    store to temp_125_cmp_370_0 in mem offset legal
    sb      a1,1107(sp)
              #                    release a1 with temp_125_cmp_370_0
              #                    occupy a1 with temp_125_cmp_370_0
              #                    load from temp_125_cmp_370_0 in mem


    lb      a1,1107(sp)
    bnez    a1, .branch_true_371
              #                    free a1
              #                    occupy a1 with temp_125_cmp_370_0
              #                    store to temp_125_cmp_370_0 in mem offset legal
    sb      a1,1107(sp)
              #                    release a1 with temp_125_cmp_370_0
    j       .branch_false_371
              #                    regtab     a0:Freed { symidx: temp_31_array_init_ptr_364, tracked: true } |     a3:Freed { symidx: temp_32_array_init_ptr_364, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     611  label branch_true_371: 
.branch_true_371:
              #                     3799 untrack temp_136_arithop_378_0 
              #                     3798 untrack temp_144_ptr_of_buf_60_382 
              #                     3797 untrack temp_138_ele_of_buf_60_378_0 
              #                     3796 untrack temp_131_ele_of_buf_60_374_0 
              #                     3795 untrack temp_32_array_init_ptr_364 
              #                    occupy a3 with temp_32_array_init_ptr_364
              #                    release a3 with temp_32_array_init_ptr_364
              #                     3794 untrack temp_139_cmp_378_0 
              #                     3793 untrack temp_134_ele_of_mNull_364_378_0 
              #                     3792 untrack temp_146_cmp_382_0 
              #                     3791 untrack temp_117_value_from_ptr_366_0 
              #                     3790 untrack temp_118_arithop_366_0 
              #                     3789 untrack temp_34_array_init_ptr_364 
              #                     3788 untrack temp_125_cmp_370_0 
              #                     3787 untrack temp_127_ele_of_mNull_364_374_0 
              #                     3786 untrack temp_141_ele_of_mNull_364_382_0 
              #                     3785 untrack temp_129_arithop_374_0 
              #                     3784 untrack temp_132_cmp_374_0 
              #                     3783 untrack temp_31_array_init_ptr_364 
              #                    occupy a0 with temp_31_array_init_ptr_364
              #                    release a0 with temp_31_array_init_ptr_364
              #                     3782 untrack temp_36_arithop_364_0 
              #                     3781 untrack temp_145_ele_of_buf_60_382_0 
              #                     3780 untrack temp_137_ptr_of_buf_60_378 
              #                     3779 untrack buf_60 
              #                     3778 untrack temp_130_ptr_of_buf_60_374 
              #                     1634 mu pos_0_11:188 
              #                     188  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_31_array_init_ptr_364, tracked: true } |     a3:Freed { symidx: temp_32_array_init_ptr_364, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     612  label branch_false_371: 
.branch_false_371:
              #                     3800 untrack temp_125_cmp_370_0 
              #                     615  (nop) 
              #                     617  temp_127_ele_of_mNull_364_374_0 = load temp_31_array_init_ptr_364:ptr->i32 
              #                    occupy a0 with temp_31_array_init_ptr_364
              #                    occupy a1 with temp_127_ele_of_mNull_364_374_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_127_ele_of_mNull_364_374_0
              #                    store to temp_127_ele_of_mNull_364_374_0 in mem offset legal
    sw      a1,1092(sp)
              #                    release a1 with temp_127_ele_of_mNull_364_374_0
              #                    free a0
              #                     3803 untrack temp_31_array_init_ptr_364 
              #                    occupy a0 with temp_31_array_init_ptr_364
              #                    release a0 with temp_31_array_init_ptr_364
              #                     618  mu mNull_364_5:617 
              #                     620  (nop) 
              #                     621  mu pos_0_11:620 
              #                     623  temp_129_arithop_374_0 = Add i32 temp_117_value_from_ptr_366_0, 1_0 
              #                    occupy a0 with temp_117_value_from_ptr_366_0
              #                    load from temp_117_value_from_ptr_366_0 in mem


    lw      a0,1148(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_129_arithop_374_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    occupy a0 with temp_117_value_from_ptr_366_0
              #                    store to temp_117_value_from_ptr_366_0 in mem offset legal
    sw      a0,1148(sp)
              #                    release a0 with temp_117_value_from_ptr_366_0
              #                    free a1
              #                    free a2
              #                     625  temp_130_ptr_of_buf_60_374 = GEP buf_60:Array:i32:[None] [Some(temp_129_arithop_374_0)] 
              #                    occupy a0 with temp_130_ptr_of_buf_60_374
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_129_arithop_374_0
    mv      a1, a2
              #                    free a2
              #                    occupy a2 with temp_129_arithop_374_0
              #                    store to temp_129_arithop_374_0 in mem offset legal
    sw      a2,1088(sp)
              #                    release a2 with temp_129_arithop_374_0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a1 with buf_60
              #                    load from buf_60 in mem
    ld      a1,1512(sp)
    add     a0,a0,a1
              #                    free a1
              #                    occupy a1 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a1,1512(sp)
              #                    release a1 with buf_60
              #                    free a0
              #                     3804 untrack temp_129_arithop_374_0 
              #                     627  temp_131_ele_of_buf_60_374_0 = load temp_130_ptr_of_buf_60_374:ptr->i32 
              #                    occupy a0 with temp_130_ptr_of_buf_60_374
              #                    occupy a1 with temp_131_ele_of_buf_60_374_0
    lw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_131_ele_of_buf_60_374_0
              #                    store to temp_131_ele_of_buf_60_374_0 in mem offset legal
    sw      a1,1076(sp)
              #                    release a1 with temp_131_ele_of_buf_60_374_0
              #                    free a0
              #                     3805 untrack temp_130_ptr_of_buf_60_374 
              #                    occupy a0 with temp_130_ptr_of_buf_60_374
              #                    release a0 with temp_130_ptr_of_buf_60_374
              #                     628  mu buf_60:627 
              #                     630  temp_132_cmp_374_0 = icmp i32 Ne temp_131_ele_of_buf_60_374_0, temp_127_ele_of_mNull_364_374_0 
              #                    occupy a0 with temp_131_ele_of_buf_60_374_0
              #                    load from temp_131_ele_of_buf_60_374_0 in mem


    lw      a0,1076(sp)
              #                    occupy a1 with temp_127_ele_of_mNull_364_374_0
              #                    load from temp_127_ele_of_mNull_364_374_0 in mem


    lw      a1,1092(sp)
              #                    occupy a2 with temp_132_cmp_374_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_131_ele_of_buf_60_374_0
              #                    store to temp_131_ele_of_buf_60_374_0 in mem offset legal
    sw      a0,1076(sp)
              #                    release a0 with temp_131_ele_of_buf_60_374_0
              #                    free a1
              #                    occupy a1 with temp_127_ele_of_mNull_364_374_0
              #                    store to temp_127_ele_of_mNull_364_374_0 in mem offset legal
    sw      a1,1092(sp)
              #                    release a1 with temp_127_ele_of_mNull_364_374_0
              #                    free a2
              #                     3802 untrack temp_131_ele_of_buf_60_374_0 
              #                     3801 untrack temp_127_ele_of_mNull_364_374_0 
              #                     633  br i1 temp_132_cmp_374_0, label branch_true_375, label branch_false_375 
              #                    occupy a2 with temp_132_cmp_374_0
              #                    free a2
              #                    occupy a2 with temp_132_cmp_374_0
    bnez    a2, .branch_true_375
              #                    free a2
    j       .branch_false_375
              #                    regtab     a2:Freed { symidx: temp_132_cmp_374_0, tracked: true } |     a3:Freed { symidx: temp_32_array_init_ptr_364, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     631  label branch_true_375: 
.branch_true_375:
              #                     3821 untrack temp_32_array_init_ptr_364 
              #                    occupy a3 with temp_32_array_init_ptr_364
              #                    release a3 with temp_32_array_init_ptr_364
              #                     3820 untrack temp_139_cmp_378_0 
              #                     3819 untrack temp_138_ele_of_buf_60_378_0 
              #                     3818 untrack temp_137_ptr_of_buf_60_378 
              #                     3817 untrack temp_146_cmp_382_0 
              #                     3816 untrack temp_145_ele_of_buf_60_382_0 
              #                     3815 untrack temp_117_value_from_ptr_366_0 
              #                     3814 untrack temp_132_cmp_374_0 
              #                    occupy a2 with temp_132_cmp_374_0
              #                    release a2 with temp_132_cmp_374_0
              #                     3813 untrack temp_136_arithop_378_0 
              #                     3812 untrack temp_144_ptr_of_buf_60_382 
              #                     3811 untrack temp_34_array_init_ptr_364 
              #                     3810 untrack temp_118_arithop_366_0 
              #                     3809 untrack temp_134_ele_of_mNull_364_378_0 
              #                     3808 untrack buf_60 
              #                     3807 untrack temp_36_arithop_364_0 
              #                     3806 untrack temp_141_ele_of_mNull_364_382_0 
              #                     1635 mu pos_0_11:186 
              #                     186  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_132_cmp_374_0, tracked: true } |     a3:Freed { symidx: temp_32_array_init_ptr_364, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     632  label branch_false_375: 
.branch_false_375:
              #                     3822 untrack temp_132_cmp_374_0 
              #                    occupy a2 with temp_132_cmp_374_0
              #                    release a2 with temp_132_cmp_374_0
              #                     635  (nop) 
              #                     637  temp_134_ele_of_mNull_364_378_0 = load temp_32_array_init_ptr_364:ptr->i32 
              #                    occupy a3 with temp_32_array_init_ptr_364
              #                    occupy a0 with temp_134_ele_of_mNull_364_378_0
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                     3825 untrack temp_32_array_init_ptr_364 
              #                    occupy a3 with temp_32_array_init_ptr_364
              #                    release a3 with temp_32_array_init_ptr_364
              #                     638  mu mNull_364_5:637 
              #                     640  (nop) 
              #                     641  mu pos_0_11:640 
              #                     643  temp_136_arithop_378_0 = Add i32 temp_117_value_from_ptr_366_0, 2_0 
              #                    occupy a1 with temp_117_value_from_ptr_366_0
              #                    load from temp_117_value_from_ptr_366_0 in mem


    lw      a1,1148(sp)
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with temp_136_arithop_378_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    occupy a1 with temp_117_value_from_ptr_366_0
              #                    store to temp_117_value_from_ptr_366_0 in mem offset legal
    sw      a1,1148(sp)
              #                    release a1 with temp_117_value_from_ptr_366_0
              #                    free a2
              #                    free a3
              #                     645  temp_137_ptr_of_buf_60_378 = GEP buf_60:Array:i32:[None] [Some(temp_136_arithop_378_0)] 
              #                    occupy a1 with temp_137_ptr_of_buf_60_378
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_136_arithop_378_0
    mv      a2, a3
              #                    free a3
              #                    occupy a3 with temp_136_arithop_378_0
              #                    store to temp_136_arithop_378_0 in mem offset legal
    sw      a3,1056(sp)
              #                    release a3 with temp_136_arithop_378_0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a1,a1,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a1
              #                     3827 untrack temp_136_arithop_378_0 
              #                     647  temp_138_ele_of_buf_60_378_0 = load temp_137_ptr_of_buf_60_378:ptr->i32 
              #                    occupy a1 with temp_137_ptr_of_buf_60_378
              #                    occupy a2 with temp_138_ele_of_buf_60_378_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_138_ele_of_buf_60_378_0
              #                    store to temp_138_ele_of_buf_60_378_0 in mem offset legal
    sw      a2,1044(sp)
              #                    release a2 with temp_138_ele_of_buf_60_378_0
              #                    free a1
              #                     3823 untrack temp_137_ptr_of_buf_60_378 
              #                    occupy a1 with temp_137_ptr_of_buf_60_378
              #                    release a1 with temp_137_ptr_of_buf_60_378
              #                     648  mu buf_60:647 
              #                     650  temp_139_cmp_378_0 = icmp i32 Ne temp_138_ele_of_buf_60_378_0, temp_134_ele_of_mNull_364_378_0 
              #                    occupy a1 with temp_138_ele_of_buf_60_378_0
              #                    load from temp_138_ele_of_buf_60_378_0 in mem


    lw      a1,1044(sp)
              #                    occupy a0 with temp_134_ele_of_mNull_364_378_0
              #                    occupy a2 with temp_139_cmp_378_0
    xor     a2,a1,a0
    snez    a2, a2
              #                    free a1
              #                    occupy a1 with temp_138_ele_of_buf_60_378_0
              #                    store to temp_138_ele_of_buf_60_378_0 in mem offset legal
    sw      a1,1044(sp)
              #                    release a1 with temp_138_ele_of_buf_60_378_0
              #                    free a0
              #                    free a2
              #                     3826 untrack temp_138_ele_of_buf_60_378_0 
              #                     3824 untrack temp_134_ele_of_mNull_364_378_0 
              #                    occupy a0 with temp_134_ele_of_mNull_364_378_0
              #                    release a0 with temp_134_ele_of_mNull_364_378_0
              #                     653  br i1 temp_139_cmp_378_0, label branch_true_379, label branch_false_379 
              #                    occupy a2 with temp_139_cmp_378_0
              #                    free a2
              #                    occupy a2 with temp_139_cmp_378_0
    bnez    a2, .branch_true_379
              #                    free a2
    j       .branch_false_379
              #                    regtab     a2:Freed { symidx: temp_139_cmp_378_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     651  label branch_true_379: 
.branch_true_379:
              #                     3837 untrack temp_144_ptr_of_buf_60_382 
              #                     3836 untrack temp_146_cmp_382_0 
              #                     3835 untrack temp_36_arithop_364_0 
              #                     3834 untrack temp_145_ele_of_buf_60_382_0 
              #                     3833 untrack temp_141_ele_of_mNull_364_382_0 
              #                     3832 untrack buf_60 
              #                     3831 untrack temp_34_array_init_ptr_364 
              #                     3830 untrack temp_117_value_from_ptr_366_0 
              #                     3829 untrack temp_118_arithop_366_0 
              #                     3828 untrack temp_139_cmp_378_0 
              #                    occupy a2 with temp_139_cmp_378_0
              #                    release a2 with temp_139_cmp_378_0
              #                     1636 mu pos_0_11:184 
              #                     184  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_139_cmp_378_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     652  label branch_false_379: 
.branch_false_379:
              #                     3838 untrack temp_139_cmp_378_0 
              #                    occupy a2 with temp_139_cmp_378_0
              #                    release a2 with temp_139_cmp_378_0
              #                     655  (nop) 
              #                     657  temp_141_ele_of_mNull_364_382_0 = load temp_34_array_init_ptr_364:ptr->i32 
              #                    occupy a0 with temp_34_array_init_ptr_364
              #                    load from temp_34_array_init_ptr_364 in mem
    ld      a0,1464(sp)
              #                    occupy a1 with temp_141_ele_of_mNull_364_382_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     3841 untrack temp_34_array_init_ptr_364 
              #                    occupy a0 with temp_34_array_init_ptr_364
              #                    release a0 with temp_34_array_init_ptr_364
              #                     658  mu mNull_364_5:657 
              #                     660  (nop) 
              #                     661  mu pos_0_11:660 
              #                     663  (nop) 
              #                     665  temp_144_ptr_of_buf_60_382 = GEP buf_60:Array:i32:[None] [Some(temp_118_arithop_366_0)] 
              #                    occupy a0 with temp_144_ptr_of_buf_60_382
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_118_arithop_366_0
              #                    load from temp_118_arithop_366_0 in mem


    lw      a3,1144(sp)
    mv      a2, a3
              #                    free a3
              #                    occupy a3 with temp_118_arithop_366_0
              #                    store to temp_118_arithop_366_0 in mem offset legal
    sw      a3,1144(sp)
              #                    release a3 with temp_118_arithop_366_0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with buf_60
              #                    load from buf_60 in mem
    ld      a2,1512(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with buf_60
              #                    store to buf_60 in mem offset legal
    sd      a2,1512(sp)
              #                    release a2 with buf_60
              #                    free a0
              #                     3842 untrack temp_118_arithop_366_0 
              #                     667  temp_145_ele_of_buf_60_382_0 = load temp_144_ptr_of_buf_60_382:ptr->i32 
              #                    occupy a0 with temp_144_ptr_of_buf_60_382
              #                    occupy a2 with temp_145_ele_of_buf_60_382_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_145_ele_of_buf_60_382_0
              #                    store to temp_145_ele_of_buf_60_382_0 in mem offset legal
    sw      a2,1012(sp)
              #                    release a2 with temp_145_ele_of_buf_60_382_0
              #                    free a0
              #                     3844 untrack temp_144_ptr_of_buf_60_382 
              #                    occupy a0 with temp_144_ptr_of_buf_60_382
              #                    release a0 with temp_144_ptr_of_buf_60_382
              #                     668  mu buf_60:667 
              #                     3840 untrack buf_60 
              #                     670  temp_146_cmp_382_0 = icmp i32 Ne temp_145_ele_of_buf_60_382_0, temp_141_ele_of_mNull_364_382_0 
              #                    occupy a0 with temp_145_ele_of_buf_60_382_0
              #                    load from temp_145_ele_of_buf_60_382_0 in mem


    lw      a0,1012(sp)
              #                    occupy a1 with temp_141_ele_of_mNull_364_382_0
              #                    occupy a2 with temp_146_cmp_382_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_145_ele_of_buf_60_382_0
              #                    store to temp_145_ele_of_buf_60_382_0 in mem offset legal
    sw      a0,1012(sp)
              #                    release a0 with temp_145_ele_of_buf_60_382_0
              #                    free a1
              #                    free a2
              #                     3843 untrack temp_145_ele_of_buf_60_382_0 
              #                     3839 untrack temp_141_ele_of_mNull_364_382_0 
              #                    occupy a1 with temp_141_ele_of_mNull_364_382_0
              #                    release a1 with temp_141_ele_of_mNull_364_382_0
              #                     673  br i1 temp_146_cmp_382_0, label branch_true_383, label branch_false_383 
              #                    occupy a2 with temp_146_cmp_382_0
              #                    free a2
              #                    occupy a2 with temp_146_cmp_382_0
    bnez    a2, .branch_true_383
              #                    free a2
    j       .branch_false_383
              #                    regtab     a2:Freed { symidx: temp_146_cmp_382_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     671  label branch_true_383: 
.branch_true_383:
              #                     3847 untrack temp_36_arithop_364_0 
              #                     3846 untrack temp_117_value_from_ptr_366_0 
              #                     3845 untrack temp_146_cmp_382_0 
              #                    occupy a2 with temp_146_cmp_382_0
              #                    release a2 with temp_146_cmp_382_0
              #                     1637 mu pos_0_11:182 
              #                     182  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_146_cmp_382_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     672  label branch_false_383: 
.branch_false_383:
              #                     3848 untrack temp_146_cmp_382_0 
              #                    occupy a2 with temp_146_cmp_382_0
              #                    release a2 with temp_146_cmp_382_0
              #                          jump label: gather_242 
    j       .gather_242
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     674  label gather_242: 
.gather_242:
              #                          jump label: gather_244 
    j       .gather_244
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     675  label gather_244: 
.gather_244:
              #                          jump label: gather_246 
    j       .gather_246
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     676  label gather_246: 
.gather_246:
              #                          jump label: gather_248 
    j       .gather_248
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     677  label gather_248: 
.gather_248:
              #                          jump label: L45_0 
    j       .L45_0
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                          label L45_0: 
.L45_0:
              #                     175  (nop) 
              #                     176  mu pos_0_11:175 
              #                     178  temp_36_arithop_364_0 = Add i32 temp_117_value_from_ptr_366_0, 4_0 
              #                    occupy a0 with temp_117_value_from_ptr_366_0
              #                    load from temp_117_value_from_ptr_366_0 in mem


    lw      a0,1148(sp)
              #                    occupy a1 with 4_0
    li      a1, 4
              #                    occupy a2 with temp_36_arithop_364_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    occupy a0 with temp_117_value_from_ptr_366_0
              #                    store to temp_117_value_from_ptr_366_0 in mem offset legal
    sw      a0,1148(sp)
              #                    release a0 with temp_117_value_from_ptr_366_0
              #                    free a1
              #                    free a2
              #                     3849 untrack temp_117_value_from_ptr_366_0 
              #                     179  store temp_36_arithop_364_0:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a2 with temp_36_arithop_364_0
    sw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_36_arithop_364_0
              #                    store to temp_36_arithop_364_0 in mem offset legal
    sw      a2,1444(sp)
              #                    release a2 with temp_36_arithop_364_0
              #                    free a0
              #                     3850 untrack temp_36_arithop_364_0 
              #                     180  pos_0_89 = chi pos_0_11:179 
              #                          jump label: gather_252 
    j       .gather_252
              #                    regtab  released_gpr_count:5,released_fpr_count:24
              #                     576  label gather_252: 
.gather_252:
              #                          jump label: gather_254 
    j       .gather_254
              #                    regtab     a2:Freed { symidx: temp_116_cmp_362_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     574  label branch_false_363: 
.branch_false_363:
              #                     3743 untrack temp_145_ele_of_buf_60_382_0 
              #                     3742 untrack temp_121_ele_of_mNull_364_370_0 
              #                     3741 untrack temp_124_ele_of_buf_60_370_0 
              #                     3740 untrack temp_118_arithop_366_0 
              #                     3739 untrack buf_60 
              #                     3738 untrack temp_130_ptr_of_buf_60_374 
              #                     3737 untrack temp_131_ele_of_buf_60_374_0 
              #                     3736 untrack temp_31_array_init_ptr_364 
              #                     3735 untrack temp_134_ele_of_mNull_364_378_0 
              #                     3734 untrack temp_117_value_from_ptr_366_0 
              #                     3733 untrack temp_144_ptr_of_buf_60_382 
              #                     3732 untrack temp_33_array_init_ptr_364 
              #                     3731 untrack temp_123_ptr_of_buf_60_370 
              #                     3730 untrack temp_146_cmp_382_0 
              #                     3729 untrack temp_137_ptr_of_buf_60_378 
              #                     3728 untrack temp_116_cmp_362_0 
              #                    occupy a2 with temp_116_cmp_362_0
              #                    release a2 with temp_116_cmp_362_0
              #                     3727 untrack temp_30_array_init_ptr_364 
              #                     3726 untrack temp_36_arithop_364_0 
              #                     3725 untrack temp_138_ele_of_buf_60_378_0 
              #                     3724 untrack temp_132_cmp_374_0 
              #                     3723 untrack len_60_0 
              #                     3722 untrack temp_129_arithop_374_0 
              #                     3721 untrack temp_139_cmp_378_0 
              #                     3720 untrack temp_127_ele_of_mNull_364_374_0 
              #                     3719 untrack temp_141_ele_of_mNull_364_382_0 
              #                     3718 untrack temp_119_cmp_366_0 
              #                     3717 untrack temp_32_array_init_ptr_364 
              #                     3716 untrack temp_125_cmp_370_0 
              #                     3715 untrack temp_34_array_init_ptr_364 
              #                     3714 untrack temp_136_arithop_378_0 
              #                     1638 mu pos_0_11:150 
              #                     150  ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     28   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 48|s0_main:8 at 40|temp_383_ret_of_getch _s391 _i0:4 at 36|get _s391 _i1:4 at 32|i _s391 _i1:4 at 28|temp_384_ret_of_detect_item _s391 _i0:4 at 24|temp_385_ptr_of_*buffer_0:8 at 16|temp_386_arithop _s396 _i0:4 at 12|temp_387_ret_of_getch _s396 _i0:4 at 8|temp_388_cmp _s394 _i0:1 at 7|temp_389_cmp _s403 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-56
              #                    store to ra_main_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     1639 pos_0_90 = chi pos_0_0:28 
              #                     1640 buffer_0_1 = chi buffer_0_0:28 
              #                     1471 alloc i32 [temp_383_ret_of_getch_391] 
              #                     1474 alloc i32 [get_391] 
              #                     1476 alloc i32 [i_391] 
              #                     1478 alloc i32 [temp_384_ret_of_detect_item_391] 
              #                     1481 alloc i32 [res_391] 
              #                     1497 alloc ptr->i32 [temp_385_ptr_of_*buffer_0_396] 
              #                     1501 alloc i32 [temp_386_arithop_396] 
              #                     1504 alloc i32 [temp_387_ret_of_getch_396] 
              #                     1507 alloc i1 [temp_388_cmp_394] 
              #                     1513 alloc i1 [temp_389_cmp_403] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     1472 temp_383_ret_of_getch_391_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     1473 (nop) 
              #                     1475 (nop) 
              #                     1688 get_391_1 = i32 temp_383_ret_of_getch_391_0 
              #                    occupy a0 with temp_383_ret_of_getch_391_0
              #                    occupy a1 with get_391_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     3851 untrack temp_383_ret_of_getch_391_0 
              #                    occupy a0 with temp_383_ret_of_getch_391_0
              #                    release a0 with temp_383_ret_of_getch_391_0
              #                     1689 i_391_1 = i32 0_0 
              #                    occupy a0 with i_391_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_395 
    j       .while.head_395
              #                    regtab     a0:Freed { symidx: i_391_1, tracked: true } |     a1:Freed { symidx: get_391_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     1509 label while.head_395: 
.while.head_395:
              #                     1508 temp_388_cmp_394_0 = icmp i32 Ne get_391_1, 35_0 
              #                    occupy a1 with get_391_1
              #                    occupy a2 with 35_0
    li      a2, 35
              #                    occupy a3 with temp_388_cmp_394_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     1512 br i1 temp_388_cmp_394_0, label while.body_395, label while.exit_395 
              #                    occupy a3 with temp_388_cmp_394_0
              #                    free a3
              #                    occupy a3 with temp_388_cmp_394_0
    bnez    a3, .while.body_395
              #                    free a3
    j       .while.exit_395
              #                    regtab     a0:Freed { symidx: i_391_1, tracked: true } |     a1:Freed { symidx: get_391_1, tracked: true } |     a3:Freed { symidx: temp_388_cmp_394_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     1510 label while.body_395: 
.while.body_395:
              #                     1498 temp_385_ptr_of_*buffer_0_396 = GEP *buffer_0:ptr->i32 [Some(i_391_1)] 
              #                    occupy a2 with temp_385_ptr_of_*buffer_0_396
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_391_1
    mv      a4, a0
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with *buffer_0
              #                       load label buffer as ptr to reg
    la      a5, buffer
              #                    occupy reg a5 with *buffer_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                     1499 store get_391_1:i32 temp_385_ptr_of_*buffer_0_396:ptr->i32 
              #                    occupy a2 with temp_385_ptr_of_*buffer_0_396
              #                    occupy a1 with get_391_1
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     1500 buffer_0_3 = chi buffer_0_2:1499 
              #                     1502 temp_386_arithop_396_0 = Add i32 i_391_1, 1_0 
              #                    occupy a0 with i_391_1
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_386_arithop_396_0
    ADDW    a7,a0,a6
              #                    free a0
              #                    free a6
              #                    free a7
              #                     1503 (nop) 
              #                     1505 temp_387_ret_of_getch_396_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with i_391_1
              #                    store to i_391_1 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with i_391_1
              #                    occupy a1 with get_391_1
              #                    store to get_391_1 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with get_391_1
              #                    occupy a2 with temp_385_ptr_of_*buffer_0_396
              #                    store to temp_385_ptr_of_*buffer_0_396 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_385_ptr_of_*buffer_0_396
              #                    occupy a3 with temp_388_cmp_394_0
              #                    store to temp_388_cmp_394_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_388_cmp_394_0
              #                    occupy a7 with temp_386_arithop_396_0
              #                    store to temp_386_arithop_396_0 in mem offset legal
    sw      a7,12(sp)
              #                    release a7 with temp_386_arithop_396_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     1506 (nop) 
              #                     1690 i_391_1 = i32 temp_386_arithop_396_0 
              #                    occupy a1 with temp_386_arithop_396_0
              #                    load from temp_386_arithop_396_0 in mem


    lw      a1,12(sp)
              #                    occupy a2 with i_391_1
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     1691 get_391_1 = i32 temp_387_ret_of_getch_396_0 
              #                    occupy a0 with temp_387_ret_of_getch_396_0
              #                    occupy a3 with get_391_1
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: while.head_395 
              #                    occupy a1 with temp_386_arithop_396_0
              #                    store to temp_386_arithop_396_0 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_386_arithop_396_0
              #                    occupy a3 with get_391_1
              #                    store to get_391_1 in mem offset legal
    sw      a3,32(sp)
              #                    release a3 with get_391_1
              #                    occupy a1 with get_391_1
              #                    load from get_391_1 in mem


    lw      a1,32(sp)
              #                    occupy a2 with i_391_1
              #                    store to i_391_1 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with i_391_1
              #                    occupy a0 with temp_387_ret_of_getch_396_0
              #                    store to temp_387_ret_of_getch_396_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_387_ret_of_getch_396_0
              #                    occupy a0 with i_391_1
              #                    load from i_391_1 in mem


    lw      a0,28(sp)
    j       .while.head_395
              #                    regtab     a0:Freed { symidx: i_391_1, tracked: true } |     a1:Freed { symidx: get_391_1, tracked: true } |     a3:Freed { symidx: temp_388_cmp_394_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     1511 label while.exit_395: 
.while.exit_395:
              #                     3852 untrack get_391_1 
              #                    occupy a1 with get_391_1
              #                    release a1 with get_391_1
              #                     1477  Call void skip_space_0(*buffer_0, i_391_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_391_1
              #                    store to i_391_1 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with i_391_1
              #                    occupy a3 with temp_388_cmp_394_0
              #                    store to temp_388_cmp_394_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_388_cmp_394_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*buffer_0_0
              #                       load label buffer as ptr to reg
    la      a0, buffer
              #                    occupy a1 with _anonymous_of_i_391_1_0
              #                    load from i_391_1 in mem


    lw      a1,28(sp)
              #                    arg load ended


    call    skip_space
              #                     1641 mu buffer_0_2:1477 
              #                     1642 mu pos_0_90:1477 
              #                     1643 pos_0_91 = chi pos_0_90:1477 
              #                     1644 buffer_0_4 = chi buffer_0_2:1477 
              #                     1479 temp_384_ret_of_detect_item_391_0 =  Call i32 detect_item_0(0_0, *buffer_0, i_391_1) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_*buffer_0_0
              #                       load label buffer as ptr to reg
    la      a1, buffer
              #                    occupy a2 with _anonymous_of_i_391_1_0
              #                    load from i_391_1 in mem


    lw      a2,28(sp)
              #                    arg load ended


    call    detect_item
              #                     1645 mu pos_0_91:1479 
              #                     1646 mu buffer_0_4:1479 
              #                     1647 pos_0_92 = chi pos_0_91:1479 
              #                     1648 buffer_0_5 = chi buffer_0_4:1479 
              #                     1480 (nop) 
              #                     1482  Call void skip_space_0(*buffer_0, i_391_1) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_384_ret_of_detect_item_391_0
              #                    store to temp_384_ret_of_detect_item_391_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_384_ret_of_detect_item_391_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*buffer_0_0
              #                       load label buffer as ptr to reg
    la      a0, buffer
              #                    occupy a1 with _anonymous_of_i_391_1_0
              #                    load from i_391_1 in mem


    lw      a1,28(sp)
              #                    arg load ended


    call    skip_space
              #                     3853 untrack i_391_1 
              #                     1649 mu buffer_0_5:1482 
              #                     1650 mu pos_0_92:1482 
              #                     1651 pos_0_93 = chi pos_0_92:1482 
              #                     1652 buffer_0_6 = chi buffer_0_5:1482 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     1514 temp_389_cmp_403_0 = icmp i32 Ne temp_384_ret_of_detect_item_391_0, 0_0 
              #                    occupy a0 with temp_384_ret_of_detect_item_391_0
              #                    load from temp_384_ret_of_detect_item_391_0 in mem


    lw      a0,24(sp)
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_389_cmp_403_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     3854 untrack temp_384_ret_of_detect_item_391_0 
              #                    occupy a0 with temp_384_ret_of_detect_item_391_0
              #                    release a0 with temp_384_ret_of_detect_item_391_0
              #                     1517 br i1 temp_389_cmp_403_0, label branch_true_404, label branch_false_404 
              #                    occupy a2 with temp_389_cmp_403_0
              #                    free a2
              #                    occupy a2 with temp_389_cmp_403_0
    bnez    a2, .branch_true_404
              #                    free a2
    j       .branch_false_404
              #                    regtab     a2:Freed { symidx: temp_389_cmp_403_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     1515 label branch_true_404: 
.branch_true_404:
              #                     3855 untrack temp_389_cmp_403_0 
              #                    occupy a2 with temp_389_cmp_403_0
              #                    release a2 with temp_389_cmp_403_0
              #                     1492  Call void putch_0(111_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_111_0_0
    li      a0, 111
              #                    arg load ended


    call    putch
              #                     1493  Call void putch_0(107_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_107_0_0
    li      a0, 107
              #                    arg load ended


    call    putch
              #                     1494  Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     1653 mu pos_0_93:1496 
              #                     1654 mu buffer_0_6:1496 
              #                     1496 ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_389_cmp_403_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     1516 label branch_false_404: 
.branch_false_404:
              #                     3856 untrack temp_389_cmp_403_0 
              #                    occupy a2 with temp_389_cmp_403_0
              #                    release a2 with temp_389_cmp_403_0
              #                     1483  Call void putch_0(110_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_110_0_0
    li      a0, 110
              #                    arg load ended


    call    putch
              #                     1484  Call void putch_0(111_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_111_0_0
    li      a0, 111
              #                    arg load ended


    call    putch
              #                     1485  Call void putch_0(116_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_116_0_0
    li      a0, 116
              #                    arg load ended


    call    putch
              #                     1486  Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     1487  Call void putch_0(111_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_111_0_0
    li      a0, 111
              #                    arg load ended


    call    putch
              #                     1488  Call void putch_0(107_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_107_0_0
    li      a0, 107
              #                    arg load ended


    call    putch
              #                     1489  Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     1655 mu pos_0_93:1491 
              #                     1656 mu buffer_0_6:1491 
              #                     1491 ret 1_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,56
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl buffer
              #                     21   global Array:i32:[Some(50000000_0)] buffer_0 
    .type buffer,@object
buffer:
    .zero 200000000
    .align 4
    .globl pos
              #                     17   global i32 pos_0 
    .type pos,@object
pos:
    .word 0
