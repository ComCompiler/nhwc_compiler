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
              #                     16   Define get_one_0 "a_16_0," -> get_one_ret_0 
    .globl get_one
    .type get_one,@function
get_one:
              #                    mem layout:|ra_get_one:8 at 16|s0_get_one:8 at 8|a _s16 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_get_one_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_get_one_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     20   ret 1_0 
              #                    load from ra_get_one_0 in mem
    ld      ra,16(sp)
              #                    load from s0_get_one_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with a_16_0
              #                    store to a_16_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with a_16_0
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define deepWhileBr_0 "a_20_0,b_20_0," -> deepWhileBr_ret_0 
    .globl deepWhileBr
    .type deepWhileBr,@function
deepWhileBr:
              #                    mem layout:|ra_deepWhileBr:8 at 64|s0_deepWhileBr:8 at 56|a _s20 _i0:4 at 52|b _s20 _i0:4 at 48|c _s22 _i0:4 at 44|c _s22 _i2:4 at 40|c _s22 _i5:4 at 36|c _s22 _i6:4 at 32|c _s22 _i7:4 at 28|temp_0_arithop _s22 _i0:4 at 24|d _s27 _i0:4 at 20|temp_1_arithop _s32 _i0:4 at 16|e _s36 _i0:4 at 12|temp_4_cmp _s25 _i0:1 at 11|temp_5_cmp _s30 _i0:1 at 10|temp_6_cmp _s34 _i0:1 at 9|none:1 at 8|temp_7_ret_of_get_one _s39 _i0:4 at 4|temp_8_cmp _s39 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-72
              #                    store to ra_deepWhileBr_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_deepWhileBr_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     23   alloc i32 [c_22] 
              #                     25   alloc i32 [temp_0_arithop_22] 
              #                     30   alloc i32 [d_27] 
              #                     33   alloc i32 [temp_1_arithop_32] 
              #                     36   alloc i32 [e_36] 
              #                     38   alloc i32 [temp_2_arithop_36] 
              #                     41   alloc i32 [temp_3_arithop_41] 
              #                     44   alloc i1 [temp_4_cmp_25] 
              #                     52   alloc i1 [temp_5_cmp_30] 
              #                     57   alloc i1 [temp_6_cmp_34] 
              #                     62   alloc i32 [temp_7_ret_of_get_one_39] 
              #                     64   alloc i1 [temp_8_cmp_39] 
              #                    regtab     a0:Freed { symidx: a_20_0, tracked: true } |     a1:Freed { symidx: b_20_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     24    
              #                     26   temp_0_arithop_22_0 = Add i32 a_20_0, b_20_0 
              #                    occupy a0 with a_20_0
              #                    occupy a1 with b_20_0
              #                    occupy a2 with temp_0_arithop_22_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     97   untrack a_20_0 
              #                    occupy a0 with a_20_0
              #                    release a0 with a_20_0
              #                     95   untrack b_20_0 
              #                    occupy a1 with b_20_0
              #                    release a1 with b_20_0
              #                     27   (nop) 
              #                     87   c_22_2 = i32 temp_0_arithop_22_0 
              #                    occupy a2 with temp_0_arithop_22_0
              #                    occupy a0 with c_22_2
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                     96   untrack temp_0_arithop_22_0 
              #                    occupy a2 with temp_0_arithop_22_0
              #                    release a2 with temp_0_arithop_22_0
              #                          jump label: while.head_26 
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: c_22_2, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     46   label while.head_26: 
.while.head_26:
              #                     45   temp_4_cmp_25_0 = icmp i32 Slt c_22_2, 75_0 
              #                    occupy a0 with c_22_2
              #                    occupy a1 with 75_0
    li      a1, 75
              #                    occupy a2 with temp_4_cmp_25_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     49   br i1 temp_4_cmp_25_0, label while.body_26, label while.exit_26 
              #                    occupy a2 with temp_4_cmp_25_0
              #                    free a2
              #                    occupy a2 with temp_4_cmp_25_0
    bnez    a2, .while.body_26
              #                    free a2
    j       .while.exit_26
              #                    regtab     a0:Freed { symidx: c_22_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_25_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     47   label while.body_26: 
.while.body_26:
              #                     31    
              #                     32   (nop) 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: c_22_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_25_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     53   temp_5_cmp_30_0 = icmp i32 Slt c_22_2, 100_0 
              #                    occupy a0 with c_22_2
              #                    occupy a1 with 100_0
    li      a1, 100
              #                    occupy a3 with temp_5_cmp_30_0
    slt     a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     56   br i1 temp_5_cmp_30_0, label branch_true_31, label UP_2_0 
              #                    occupy a3 with temp_5_cmp_30_0
              #                    free a3
              #                    occupy a3 with temp_5_cmp_30_0
    bnez    a3, .branch_true_31
              #                    free a3
    j       .UP_2_0
              #                    regtab     a0:Freed { symidx: c_22_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_25_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_30_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     54   label branch_true_31: 
.branch_true_31:
              #                     34   temp_1_arithop_32_0 = Add i32 c_22_2, 42_0 
              #                    occupy a0 with c_22_2
              #                    occupy a1 with 42_0
    li      a1, 42
              #                    occupy a4 with temp_1_arithop_32_0
    ADDW    a4,a0,a1
              #                    free a0
              #                    free a1
              #                    free a4
              #                     35   (nop) 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: c_22_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_25_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_30_0, tracked: true } |     a4:Freed { symidx: temp_1_arithop_32_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     58   temp_6_cmp_34_0 = icmp i32 Sgt temp_1_arithop_32_0, 99_0 
              #                    occupy a4 with temp_1_arithop_32_0
              #                    occupy a1 with 99_0
    li      a1, 99
              #                    occupy a5 with temp_6_cmp_34_0
    slt     a5,a1,a4
              #                    free a4
              #                    free a1
              #                    free a5
              #                     61   br i1 temp_6_cmp_34_0, label branch_true_35, label UP_5_0 
              #                    occupy a5 with temp_6_cmp_34_0
              #                    free a5
              #                    occupy a5 with temp_6_cmp_34_0
    bnez    a5, .branch_true_35
              #                    free a5
    j       .UP_5_0
              #                    regtab     a0:Freed { symidx: c_22_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_25_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_30_0, tracked: true } |     a4:Freed { symidx: temp_1_arithop_32_0, tracked: true } |     a5:Freed { symidx: temp_6_cmp_34_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     59   label branch_true_35: 
.branch_true_35:
              #                     37    
              #                     39   (nop) 
              #                     40   (nop) 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: c_22_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_25_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_30_0, tracked: true } |     a4:Freed { symidx: temp_1_arithop_32_0, tracked: true } |     a5:Freed { symidx: temp_6_cmp_34_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     63   temp_7_ret_of_get_one_39_0 =  Call i32 get_one_0(0_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with c_22_2
              #                    store to c_22_2 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with c_22_2
              #                    occupy a2 with temp_4_cmp_25_0
              #                    store to temp_4_cmp_25_0 in mem offset legal
    sb      a2,11(sp)
              #                    release a2 with temp_4_cmp_25_0
              #                    occupy a3 with temp_5_cmp_30_0
              #                    store to temp_5_cmp_30_0 in mem offset legal
    sb      a3,10(sp)
              #                    release a3 with temp_5_cmp_30_0
              #                    occupy a4 with temp_1_arithop_32_0
              #                    store to temp_1_arithop_32_0 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_1_arithop_32_0
              #                    occupy a5 with temp_6_cmp_34_0
              #                    store to temp_6_cmp_34_0 in mem offset legal
    sb      a5,9(sp)
              #                    release a5 with temp_6_cmp_34_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    get_one
              #                     65   temp_8_cmp_39_0 = icmp i32 Eq temp_7_ret_of_get_one_39_0, 1_0 
              #                    occupy a0 with temp_7_ret_of_get_one_39_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_8_cmp_39_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     68   br i1 temp_8_cmp_39_0, label branch_true_40, label UP_20_0 
              #                    occupy a2 with temp_8_cmp_39_0
              #                    free a2
              #                    occupy a2 with temp_8_cmp_39_0
    bnez    a2, .branch_true_40
              #                    free a2
    j       .UP_20_0
              #                    regtab     a0:Freed { symidx: temp_7_ret_of_get_one_39_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_39_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     66   label branch_true_40: 
.branch_true_40:
              #                     104  untrack temp_4_cmp_25_0 
              #                     103  untrack temp_1_arithop_32_0 
              #                     102  untrack temp_8_cmp_39_0 
              #                    occupy a2 with temp_8_cmp_39_0
              #                    release a2 with temp_8_cmp_39_0
              #                     101  untrack temp_6_cmp_34_0 
              #                     100  untrack temp_5_cmp_30_0 
              #                     99   untrack c_22_7 
              #                     98   untrack temp_7_ret_of_get_one_39_0 
              #                    occupy a0 with temp_7_ret_of_get_one_39_0
              #                    release a0 with temp_7_ret_of_get_one_39_0
              #                     42   (nop) 
              #                     43   (nop) 
              #                     88   c_22_5 = i32 168_0 
              #                    occupy a0 with c_22_5
    li      a0, 168
              #                    free a0
              #                          jump label: branch_false_40 
    j       .branch_false_40
              #                    regtab     a0:Freed { symidx: c_22_5, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     67   label branch_false_40: 
.branch_false_40:
              #                     89   c_22_6 = i32 c_22_5 
              #                    occupy a0 with c_22_5
              #                    occupy a1 with c_22_6
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: branch_false_35 
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: c_22_5, tracked: true } |     a1:Freed { symidx: c_22_6, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     60   label branch_false_35: 
.branch_false_35:
              #                     90   c_22_7 = i32 c_22_6 
              #                    occupy a1 with c_22_6
              #                    occupy a2 with c_22_7
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          jump label: branch_false_31 
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: c_22_5, tracked: true } |     a1:Freed { symidx: c_22_6, tracked: true } |     a2:Freed { symidx: c_22_7, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     55   label branch_false_31: 
.branch_false_31:
              #                     91   c_22_2 = i32 c_22_7 
              #                    occupy a2 with c_22_7
              #                    occupy a3 with c_22_2
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: while.head_26 
              #                    occupy a1 with c_22_6
              #                    store to c_22_6 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with c_22_6
              #                    occupy a0 with c_22_5
              #                    store to c_22_5 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with c_22_5
              #                    occupy a3 with c_22_2
              #                    store to c_22_2 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with c_22_2
              #                    occupy a0 with c_22_2
              #                    load from c_22_2 in mem


    lw      a0,40(sp)
              #                    occupy a2 with c_22_7
              #                    store to c_22_7 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with c_22_7
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: temp_7_ret_of_get_one_39_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_39_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     84   label UP_20_0: 
.UP_20_0:
              #                     92   c_22_5 = i32 temp_1_arithop_32_0 
              #                    occupy a1 with temp_1_arithop_32_0
              #                    load from temp_1_arithop_32_0 in mem


    lw      a1,16(sp)
              #                    occupy a3 with c_22_5
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                          jump label: branch_false_40 
              #                    occupy a1 with temp_1_arithop_32_0
              #                    store to temp_1_arithop_32_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_1_arithop_32_0
              #                    occupy a0 with temp_7_ret_of_get_one_39_0
              #                    store to temp_7_ret_of_get_one_39_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_7_ret_of_get_one_39_0
              #                    occupy a3 with c_22_5
              #                    store to c_22_5 in mem offset legal
    sw      a3,36(sp)
              #                    release a3 with c_22_5
              #                    occupy a0 with c_22_5
              #                    load from c_22_5 in mem


    lw      a0,36(sp)
              #                    occupy a2 with temp_8_cmp_39_0
              #                    store to temp_8_cmp_39_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_8_cmp_39_0
    j       .branch_false_40
              #                    regtab     a0:Freed { symidx: c_22_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_25_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_30_0, tracked: true } |     a4:Freed { symidx: temp_1_arithop_32_0, tracked: true } |     a5:Freed { symidx: temp_6_cmp_34_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     85   label UP_5_0: 
.UP_5_0:
              #                     93   c_22_6 = i32 temp_1_arithop_32_0 
              #                    occupy a4 with temp_1_arithop_32_0
              #                    occupy a1 with c_22_6
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: branch_false_35 
              #                    occupy a0 with c_22_2
              #                    store to c_22_2 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with c_22_2
              #                    occupy a0 with c_22_5
              #                    load from c_22_5 in mem


    lw      a0,36(sp)
              #                    occupy a3 with temp_5_cmp_30_0
              #                    store to temp_5_cmp_30_0 in mem offset legal
    sb      a3,10(sp)
              #                    release a3 with temp_5_cmp_30_0
              #                    occupy a5 with temp_6_cmp_34_0
              #                    store to temp_6_cmp_34_0 in mem offset legal
    sb      a5,9(sp)
              #                    release a5 with temp_6_cmp_34_0
              #                    occupy a4 with temp_1_arithop_32_0
              #                    store to temp_1_arithop_32_0 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_1_arithop_32_0
              #                    occupy a2 with temp_4_cmp_25_0
              #                    store to temp_4_cmp_25_0 in mem offset legal
    sb      a2,11(sp)
              #                    release a2 with temp_4_cmp_25_0
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: c_22_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_25_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_30_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     86   label UP_2_0: 
.UP_2_0:
              #                     94   c_22_7 = i32 c_22_2 
              #                    occupy a0 with c_22_2
              #                    occupy a1 with c_22_7
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: branch_false_31 
              #                    occupy a1 with c_22_7
              #                    store to c_22_7 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with c_22_7
              #                    occupy a1 with c_22_6
              #                    load from c_22_6 in mem


    lw      a1,32(sp)
              #                    occupy a0 with c_22_2
              #                    store to c_22_2 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with c_22_2
              #                    occupy a0 with c_22_5
              #                    load from c_22_5 in mem


    lw      a0,36(sp)
              #                    occupy a3 with temp_5_cmp_30_0
              #                    store to temp_5_cmp_30_0 in mem offset legal
    sb      a3,10(sp)
              #                    release a3 with temp_5_cmp_30_0
              #                    occupy a2 with temp_4_cmp_25_0
              #                    store to temp_4_cmp_25_0 in mem offset legal
    sb      a2,11(sp)
              #                    release a2 with temp_4_cmp_25_0
              #                    occupy a2 with c_22_7
              #                    load from c_22_7 in mem


    lw      a2,28(sp)
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: c_22_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_25_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     48   label while.exit_26: 
.while.exit_26:
              #                     29   ret c_22_2 
              #                    load from ra_deepWhileBr_0 in mem
    ld      ra,64(sp)
              #                    load from s0_deepWhileBr_0 in mem
    ld      s0,56(sp)
              #                    occupy a0 with c_22_2
              #                    store to c_22_2 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with c_22_2
              #                    occupy a0 with c_22_2
              #                    load from c_22_2 in mem


    lw      a0,40(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     18   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|p _s45 _i0:4 at 4|temp_9_ret_of_deepWhileBr _s45 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     69   alloc i32 [p_45] 
              #                     72   alloc i32 [temp_9_ret_of_deepWhileBr_45] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     70    
              #                     71   (nop) 
              #                     73   temp_9_ret_of_deepWhileBr_45_0 =  Call i32 deepWhileBr_0(2_0, 2_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_2_0_0
    li      a1, 2
              #                    arg load ended


    call    deepWhileBr
              #                     74   (nop) 
              #                     75    Call void putint_0(temp_9_ret_of_deepWhileBr_45_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_9_ret_of_deepWhileBr_45_0
              #                    store to temp_9_ret_of_deepWhileBr_45_0 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_9_ret_of_deepWhileBr_45_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_9_ret_of_deepWhileBr_45_0_0
              #                    load from temp_9_ret_of_deepWhileBr_45_0 in mem


    lw      a0,0(sp)
              #                    arg load ended


    call    putint
              #                     105  untrack temp_9_ret_of_deepWhileBr_45_0 
              #                     77   ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
