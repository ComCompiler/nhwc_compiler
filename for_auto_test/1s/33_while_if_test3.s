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
              #                     16   Define deepWhileBr_0 "a_16_0,b_16_0," -> deepWhileBr_ret_0 
    .globl deepWhileBr
    .type deepWhileBr,@function
deepWhileBr:
              #                    mem layout:|ra_deepWhileBr:8 at 56|s0_deepWhileBr:8 at 48|a _s16 _i0:4 at 44|b _s16 _i0:4 at 40|c _s18 _i0:4 at 36|c _s18 _i2:4 at 32|c _s18 _i5:4 at 28|c _s18 _i6:4 at 24|c _s18 _i7:4 at 20|temp_0_arithop _s18 _i0:4 at 16|d _s23 _i0:4 at 12|temp_1_arithop _s28 _i0:4 at 8|e _s32 _i0:4 at 4|temp_4_cmp _s21 _i0:1 at 3|temp_5_cmp _s26 _i0:1 at 2|temp_6_cmp _s30 _i0:1 at 1|none:1 at 0
    addi    sp,sp,-64
              #                    store to ra_deepWhileBr_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_deepWhileBr_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     18   alloc i32 [c_18] 
              #                     20   alloc i32 [temp_0_arithop_18] 
              #                     25   alloc i32 [d_23] 
              #                     28   alloc i32 [temp_1_arithop_28] 
              #                     31   alloc i32 [e_32] 
              #                     33   alloc i32 [temp_2_arithop_32] 
              #                     36   alloc i32 [temp_3_arithop_37] 
              #                     39   alloc i1 [temp_4_cmp_21] 
              #                     47   alloc i1 [temp_5_cmp_26] 
              #                     52   alloc i1 [temp_6_cmp_30] 
              #                    regtab     a0:Freed { symidx: a_16_0, tracked: true } |     a1:Freed { symidx: b_16_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     19    
              #                     21   temp_0_arithop_18_0 = Add i32 a_16_0, b_16_0 
              #                    occupy a0 with a_16_0
              #                    occupy a1 with b_16_0
              #                    occupy a2 with temp_0_arithop_18_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     86   untrack b_16_0 
              #                    occupy a1 with b_16_0
              #                    release a1 with b_16_0
              #                     85   untrack a_16_0 
              #                    occupy a0 with a_16_0
              #                    release a0 with a_16_0
              #                     22   (nop) 
              #                     76   c_18_2 = i32 temp_0_arithop_18_0 
              #                    occupy a2 with temp_0_arithop_18_0
              #                    occupy a0 with c_18_2
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                     84   untrack temp_0_arithop_18_0 
              #                    occupy a2 with temp_0_arithop_18_0
              #                    release a2 with temp_0_arithop_18_0
              #                          jump label: while.head_22 
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     41   label while.head_22: 
.while.head_22:
              #                     40   temp_4_cmp_21_0 = icmp i32 Slt c_18_2, 75_0 
              #                    occupy a0 with c_18_2
              #                    occupy a1 with 75_0
    li      a1, 75
              #                    occupy a2 with temp_4_cmp_21_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     44   br i1 temp_4_cmp_21_0, label while.body_22, label while.exit_22 
              #                    occupy a2 with temp_4_cmp_21_0
              #                    free a2
              #                    occupy a2 with temp_4_cmp_21_0
    bnez    a2, .while.body_22
              #                    free a2
    j       .while.exit_22
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     42   label while.body_22: 
.while.body_22:
              #                     26    
              #                     27   (nop) 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     48   temp_5_cmp_26_0 = icmp i32 Slt c_18_2, 100_0 
              #                    occupy a0 with c_18_2
              #                    occupy a1 with 100_0
    li      a1, 100
              #                    occupy a3 with temp_5_cmp_26_0
    slt     a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     51   br i1 temp_5_cmp_26_0, label branch_true_27, label UP_19_0 
              #                    occupy a3 with temp_5_cmp_26_0
              #                    free a3
              #                    occupy a3 with temp_5_cmp_26_0
    bnez    a3, .branch_true_27
              #                    free a3
    j       .UP_19_0
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_26_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     49   label branch_true_27: 
.branch_true_27:
              #                     29   temp_1_arithop_28_0 = Add i32 c_18_2, 42_0 
              #                    occupy a0 with c_18_2
              #                    occupy a1 with 42_0
    li      a1, 42
              #                    occupy a4 with temp_1_arithop_28_0
    ADDW    a4,a0,a1
              #                    free a0
              #                    free a1
              #                    free a4
              #                     30   (nop) 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_26_0, tracked: true } |     a4:Freed { symidx: temp_1_arithop_28_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     53   temp_6_cmp_30_0 = icmp i32 Sgt temp_1_arithop_28_0, 99_0 
              #                    occupy a4 with temp_1_arithop_28_0
              #                    occupy a1 with 99_0
    li      a1, 99
              #                    occupy a5 with temp_6_cmp_30_0
    slt     a5,a1,a4
              #                    free a4
              #                    free a1
              #                    free a5
              #                     56   br i1 temp_6_cmp_30_0, label branch_true_31, label UP_2_0 
              #                    occupy a5 with temp_6_cmp_30_0
              #                    free a5
              #                    occupy a5 with temp_6_cmp_30_0
    bnez    a5, .branch_true_31
              #                    free a5
    j       .UP_2_0
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_26_0, tracked: true } |     a4:Freed { symidx: temp_1_arithop_28_0, tracked: true } |     a5:Freed { symidx: temp_6_cmp_30_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     54   label branch_true_31: 
.branch_true_31:
              #                     32    
              #                     34   (nop) 
              #                     35   (nop) 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_26_0, tracked: true } |     a4:Freed { symidx: temp_1_arithop_28_0, tracked: true } |     a5:Freed { symidx: temp_6_cmp_30_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                          jump label: branch_true_36 
    j       .branch_true_36
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_26_0, tracked: true } |     a4:Freed { symidx: temp_1_arithop_28_0, tracked: true } |     a5:Freed { symidx: temp_6_cmp_30_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     57   label branch_true_36: 
.branch_true_36:
              #                     37   (nop) 
              #                     38   (nop) 
              #                     77   c_18_5 = i32 168_0 
              #                    occupy a1 with c_18_5
    li      a1, 168
              #                    free a1
              #                          jump label: branch_false_36 
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a1:Freed { symidx: c_18_5, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_26_0, tracked: true } |     a4:Freed { symidx: temp_1_arithop_28_0, tracked: true } |     a5:Freed { symidx: temp_6_cmp_30_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     58   label branch_false_36: 
.branch_false_36:
              #                     78   c_18_6 = i32 c_18_5 
              #                    occupy a1 with c_18_5
              #                    occupy a6 with c_18_6
    mv      a6, a1
              #                    free a1
              #                    free a6
              #                          jump label: branch_false_31 
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a1:Freed { symidx: c_18_5, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_26_0, tracked: true } |     a4:Freed { symidx: temp_1_arithop_28_0, tracked: true } |     a5:Freed { symidx: temp_6_cmp_30_0, tracked: true } |     a6:Freed { symidx: c_18_6, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     55   label branch_false_31: 
.branch_false_31:
              #                     79   c_18_7 = i32 c_18_6 
              #                    occupy a6 with c_18_6
              #                    occupy a7 with c_18_7
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                          jump label: branch_false_27 
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a1:Freed { symidx: c_18_5, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_26_0, tracked: true } |     a4:Freed { symidx: temp_1_arithop_28_0, tracked: true } |     a5:Freed { symidx: temp_6_cmp_30_0, tracked: true } |     a6:Freed { symidx: c_18_6, tracked: true } |     a7:Freed { symidx: c_18_7, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     50   label branch_false_27: 
.branch_false_27:
              #                     80   c_18_2 = i32 c_18_7 
              #                    occupy a7 with c_18_7
              #                    occupy a0 with c_18_2
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_22 
              #                    occupy a5 with temp_6_cmp_30_0
              #                    store to temp_6_cmp_30_0 in mem offset legal
    sb      a5,1(sp)
              #                    release a5 with temp_6_cmp_30_0
              #                    occupy a4 with temp_1_arithop_28_0
              #                    store to temp_1_arithop_28_0 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_1_arithop_28_0
              #                    occupy a1 with c_18_5
              #                    store to c_18_5 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with c_18_5
              #                    occupy a7 with c_18_7
              #                    store to c_18_7 in mem offset legal
    sw      a7,20(sp)
              #                    release a7 with c_18_7
              #                    occupy a3 with temp_5_cmp_26_0
              #                    store to temp_5_cmp_26_0 in mem offset legal
    sb      a3,2(sp)
              #                    release a3 with temp_5_cmp_26_0
              #                    occupy a2 with temp_4_cmp_21_0
              #                    store to temp_4_cmp_21_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_4_cmp_21_0
              #                    occupy a6 with c_18_6
              #                    store to c_18_6 in mem offset legal
    sw      a6,24(sp)
              #                    release a6 with c_18_6
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     73   label UP_17_0: 
.UP_17_0:
              #                     81   c_18_5 = i32 temp_1_arithop_28_0 
              #                    occupy a1 with temp_1_arithop_28_0
              #                    load from temp_1_arithop_28_0 in mem


    lw      a1,8(sp)
              #                    occupy a2 with c_18_5
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          jump label: branch_false_36 
              #                    occupy a5 with temp_6_cmp_30_0
              #                    load from temp_6_cmp_30_0 in mem


    lb      a5,1(sp)
              #                    occupy a1 with temp_1_arithop_28_0
              #                    store to temp_1_arithop_28_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_1_arithop_28_0
              #                    occupy a4 with temp_1_arithop_28_0
              #                    load from temp_1_arithop_28_0 in mem


    lw      a4,8(sp)
              #                    occupy a2 with c_18_5
              #                    store to c_18_5 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with c_18_5
              #                    occupy a1 with c_18_5
              #                    load from c_18_5 in mem


    lw      a1,28(sp)
              #                    occupy a3 with temp_5_cmp_26_0
              #                    load from temp_5_cmp_26_0 in mem


    lb      a3,2(sp)
              #                    occupy a2 with temp_4_cmp_21_0
              #                    load from temp_4_cmp_21_0 in mem


    lb      a2,3(sp)
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_26_0, tracked: true } |     a4:Freed { symidx: temp_1_arithop_28_0, tracked: true } |     a5:Freed { symidx: temp_6_cmp_30_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     74   label UP_2_0: 
.UP_2_0:
              #                     82   c_18_6 = i32 temp_1_arithop_28_0 
              #                    occupy a4 with temp_1_arithop_28_0
              #                    occupy a1 with c_18_6
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: branch_false_31 
              #                    occupy a1 with c_18_6
              #                    store to c_18_6 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with c_18_6
              #                    occupy a1 with c_18_5
              #                    load from c_18_5 in mem


    lw      a1,28(sp)
              #                    occupy a6 with c_18_6
              #                    load from c_18_6 in mem


    lw      a6,24(sp)
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |     a3:Freed { symidx: temp_5_cmp_26_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     75   label UP_19_0: 
.UP_19_0:
              #                     83   c_18_7 = i32 c_18_2 
              #                    occupy a0 with c_18_2
              #                    occupy a1 with c_18_7
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: branch_false_27 
              #                    occupy a5 with temp_6_cmp_30_0
              #                    load from temp_6_cmp_30_0 in mem


    lb      a5,1(sp)
              #                    occupy a4 with temp_1_arithop_28_0
              #                    load from temp_1_arithop_28_0 in mem


    lw      a4,8(sp)
              #                    occupy a1 with c_18_7
              #                    store to c_18_7 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with c_18_7
              #                    occupy a1 with c_18_5
              #                    load from c_18_5 in mem


    lw      a1,28(sp)
              #                    occupy a7 with c_18_7
              #                    load from c_18_7 in mem


    lw      a7,20(sp)
              #                    occupy a6 with c_18_6
              #                    load from c_18_6 in mem


    lw      a6,24(sp)
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: c_18_2, tracked: true } |     a2:Freed { symidx: temp_4_cmp_21_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     43   label while.exit_22: 
.while.exit_22:
              #                     24   ret c_18_2 
              #                    load from ra_deepWhileBr_0 in mem
    ld      ra,56(sp)
              #                    load from s0_deepWhileBr_0 in mem
    ld      s0,48(sp)
              #                    occupy a0 with c_18_2
              #                    store to c_18_2 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with c_18_2
              #                    occupy a0 with c_18_2
              #                    load from c_18_2 in mem


    lw      a0,32(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|p _s41 _i0:4 at 4|temp_7_ret_of_deepWhileBr _s41 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     60   alloc i32 [p_41] 
              #                     64   alloc i32 [temp_7_ret_of_deepWhileBr_41] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     61    
              #                     62   (nop) 
              #                     65   temp_7_ret_of_deepWhileBr_41_0 =  Call i32 deepWhileBr_0(2_0, 2_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_2_0_0
    li      a1, 2
              #                    arg load ended


    call    deepWhileBr
              #                     66   ret temp_7_ret_of_deepWhileBr_41_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with temp_7_ret_of_deepWhileBr_41_0
              #                    store to temp_7_ret_of_deepWhileBr_41_0 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_7_ret_of_deepWhileBr_41_0
              #                    occupy a0 with temp_7_ret_of_deepWhileBr_41_0
              #                    load from temp_7_ret_of_deepWhileBr_41_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
