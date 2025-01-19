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
              #                     16   Define FourWhile_0 "" -> FourWhile_ret_0 
    .globl FourWhile
    .type FourWhile,@function
FourWhile:
              #                    mem layout:|ra_FourWhile:8 at 112|s0_FourWhile:8 at 104|a _s17 _i0:4 at 100|a _s17 _i2:4 at 96|b _s17 _i0:4 at 92|b _s17 _i2:4 at 88|b _s17 _i3:4 at 84|c _s17 _i0:4 at 80|c _s17 _i2:4 at 76|c _s17 _i3:4 at 72|c _s17 _i4:4 at 68|d _s17 _i0:4 at 64|d _s17 _i2:4 at 60|d _s17 _i3:4 at 56|d _s17 _i4:4 at 52|d _s17 _i5:4 at 48|temp_0_arithop _s17 _i0:4 at 44|temp_1_arithop _s17 _i0:4 at 40|temp_2_arithop _s17 _i0:4 at 36|temp_3_arithop _s28 _i0:4 at 32|temp_4_arithop _s28 _i0:4 at 28|temp_5_arithop _s32 _i0:4 at 24|temp_6_arithop _s32 _i0:4 at 20|temp_7_arithop _s36 _i0:4 at 16|temp_8_arithop _s36 _i0:4 at 12|temp_9_arithop _s40 _i0:4 at 8|temp_10_cmp _s26 _i0:1 at 7|temp_11_cmp _s30 _i0:1 at 6|temp_12_cmp _s34 _i0:1 at 5|temp_13_cmp _s38 _i0:1 at 4|none:4 at 0
    addi    sp,sp,-120
              #                    store to ra_FourWhile_0 in mem offset legal
    sd      ra,112(sp)
              #                    store to s0_FourWhile_0 in mem offset legal
    sd      s0,104(sp)
    addi    s0,sp,120
              #                     18   alloc i32 [a_17] 
              #                     21   alloc i32 [b_17] 
              #                     23   alloc i32 [c_17] 
              #                     27   alloc i32 [d_17] 
              #                     31   alloc i32 [temp_0_arithop_17] 
              #                     33   alloc i32 [temp_1_arithop_17] 
              #                     35   alloc i32 [temp_2_arithop_17] 
              #                     38   alloc i32 [temp_3_arithop_28] 
              #                     41   alloc i32 [temp_4_arithop_28] 
              #                     44   alloc i32 [temp_5_arithop_32] 
              #                     47   alloc i32 [temp_6_arithop_32] 
              #                     50   alloc i32 [temp_7_arithop_36] 
              #                     53   alloc i32 [temp_8_arithop_36] 
              #                     56   alloc i32 [temp_9_arithop_40] 
              #                     59   alloc i1 [temp_10_cmp_26] 
              #                     67   alloc i1 [temp_11_cmp_30] 
              #                     73   alloc i1 [temp_12_cmp_34] 
              #                     79   alloc i1 [temp_13_cmp_38] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     19    
              #                     20   (nop) 
              #                     22    
              #                     24    
              #                     25   (nop) 
              #                     26   (nop) 
              #                     28    
              #                     29   (nop) 
              #                     101  a_17_2 = i32 5_0 
              #                    occupy a0 with a_17_2
    li      a0, 5
              #                    free a0
              #                     102  b_17_2 = i32 6_0 
              #                    occupy a1 with b_17_2
    li      a1, 6
              #                    free a1
              #                     103  c_17_2 = i32 7_0 
              #                    occupy a2 with c_17_2
    li      a2, 7
              #                    free a2
              #                     104  d_17_2 = i32 10_0 
              #                    occupy a3 with d_17_2
    li      a3, 10
              #                    free a3
              #                          jump label: while.head_27 
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     61   label while.head_27: 
.while.head_27:
              #                     60   temp_10_cmp_26_0 = icmp i32 Slt a_17_2, 20_0 
              #                    occupy a0 with a_17_2
              #                    occupy a4 with 20_0
    li      a4, 20
              #                    occupy a5 with temp_10_cmp_26_0
    slt     a5,a0,a4
              #                    free a0
              #                    free a4
              #                    free a5
              #                     64   br i1 temp_10_cmp_26_0, label while.body_27, label while.exit_27 
              #                    occupy a5 with temp_10_cmp_26_0
              #                    free a5
              #                    occupy a5 with temp_10_cmp_26_0
    bnez    a5, .while.body_27
              #                    free a5
    j       .while.exit_27
              #                    regtab     a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     62   label while.body_27: 
.while.body_27:
              #                     39   temp_3_arithop_28_0 = Add i32 a_17_2, 3_0 
              #                    occupy a0 with a_17_2
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a6 with temp_3_arithop_28_0
    ADDW    a6,a0,a4
              #                    free a0
              #                    free a4
              #                    free a6
              #                     40   (nop) 
              #                     105  c_17_3 = i32 c_17_2 
              #                    occupy a2 with c_17_2
              #                    occupy a7 with c_17_3
    mv      a7, a2
              #                    free a2
              #                    free a7
              #                     106  b_17_3 = i32 b_17_2 
              #                    occupy a1 with b_17_2
              #                    occupy s1 with b_17_3
    mv      s1, a1
              #                    free a1
              #                    free s1
              #                     107  d_17_3 = i32 d_17_2 
              #                    occupy a3 with d_17_2
              #                    occupy s2 with d_17_3
    mv      s2, a3
              #                    free a3
              #                    free s2
              #                          jump label: while.head_31 
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28_0, tracked: true } |     a7:Freed { symidx: c_17_3, tracked: true } |     s1:Freed { symidx: b_17_3, tracked: true } |     s2:Freed { symidx: d_17_3, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     69   label while.head_31: 
.while.head_31:
              #                     68   temp_11_cmp_30_0 = icmp i32 Slt b_17_3, 10_0 
              #                    occupy s1 with b_17_3
              #                    occupy a4 with 10_0
    li      a4, 10
              #                    occupy s3 with temp_11_cmp_30_0
    slt     s3,s1,a4
              #                    free s1
              #                    free a4
              #                    free s3
              #                     72   br i1 temp_11_cmp_30_0, label while.body_31, label while.exit_31 
              #                    occupy s3 with temp_11_cmp_30_0
              #                    free s3
              #                    occupy s3 with temp_11_cmp_30_0
    bnez    s3, .while.body_31
              #                    free s3
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28_0, tracked: true } |     a7:Freed { symidx: c_17_3, tracked: true } |     s1:Freed { symidx: b_17_3, tracked: true } |     s2:Freed { symidx: d_17_3, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     70   label while.body_31: 
.while.body_31:
              #                     45   temp_5_arithop_32_0 = Add i32 b_17_3, 1_0 
              #                    occupy s1 with b_17_3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s4 with temp_5_arithop_32_0
    ADDW    s4,s1,a4
              #                    free s1
              #                    occupy s1 with b_17_3
              #                    store to b_17_3 in mem offset legal
    sw      s1,84(sp)
              #                    release s1 with b_17_3
              #                    free a4
              #                    free s4
              #                     46   (nop) 
              #                     108  c_17_4 = i32 c_17_3 
              #                    occupy a7 with c_17_3
              #                    occupy s1 with c_17_4
    mv      s1, a7
              #                    free a7
              #                    occupy a7 with c_17_3
              #                    store to c_17_3 in mem offset legal
    sw      a7,72(sp)
              #                    release a7 with c_17_3
              #                    free s1
              #                     109  d_17_4 = i32 d_17_3 
              #                    occupy s2 with d_17_3
              #                    occupy a7 with d_17_4
    mv      a7, s2
              #                    free s2
              #                    occupy s2 with d_17_3
              #                    store to d_17_3 in mem offset legal
    sw      s2,56(sp)
              #                    release s2 with d_17_3
              #                    free a7
              #                          jump label: while.head_35 
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28_0, tracked: true } |     a7:Freed { symidx: d_17_4, tracked: true } |     s1:Freed { symidx: c_17_4, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30_0, tracked: true } |     s4:Freed { symidx: temp_5_arithop_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     75   label while.head_35: 
.while.head_35:
              #                     74   temp_12_cmp_34_0 = icmp i32 Eq c_17_4, 7_0 
              #                    occupy s1 with c_17_4
              #                    occupy a4 with 7_0
    li      a4, 7
              #                    occupy s2 with temp_12_cmp_34_0
    xor     s2,s1,a4
    seqz    s2, s2
              #                    free s1
              #                    occupy s1 with c_17_4
              #                    store to c_17_4 in mem offset legal
    sw      s1,68(sp)
              #                    release s1 with c_17_4
              #                    free a4
              #                    free s2
              #                     78   br i1 temp_12_cmp_34_0, label while.body_35, label while.exit_35 
              #                    occupy s2 with temp_12_cmp_34_0
              #                    free s2
              #                    occupy s2 with temp_12_cmp_34_0
    bnez    s2, .while.body_35
              #                    free s2
    j       .while.exit_35
              #                    regtab     a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28_0, tracked: true } |     a7:Freed { symidx: d_17_4, tracked: true } |     s2:Freed { symidx: temp_12_cmp_34_0, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30_0, tracked: true } |     s4:Freed { symidx: temp_5_arithop_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     76   label while.body_35: 
.while.body_35:
              #                     51   temp_7_arithop_36_0 = Sub i32 c_17_4, 1_0 
              #                    occupy a4 with c_17_4
              #                    load from c_17_4 in mem


    lw      a4,68(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with temp_7_arithop_36_0
              #                    regtab:    a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a4:Occupied { symidx: c_17_4, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28_0, tracked: true } |     a7:Freed { symidx: d_17_4, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_12_cmp_34_0, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30_0, tracked: true } |     s4:Freed { symidx: temp_5_arithop_32_0, tracked: true } |     s5:Occupied { symidx: temp_7_arithop_36_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s5,a4,s1
              #                    free a4
              #                    occupy a4 with c_17_4
              #                    store to c_17_4 in mem offset legal
    sw      a4,68(sp)
              #                    release a4 with c_17_4
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_7_arithop_36_0
              #                    store to temp_7_arithop_36_0 in mem offset legal
    sw      s5,16(sp)
              #                    release s5 with temp_7_arithop_36_0
              #                     52   (nop) 
              #                     110  d_17_5 = i32 d_17_4 
              #                    occupy a7 with d_17_4
              #                    occupy a4 with d_17_5
    mv      a4, a7
              #                    free a7
              #                    occupy a7 with d_17_4
              #                    store to d_17_4 in mem offset legal
    sw      a7,52(sp)
              #                    release a7 with d_17_4
              #                    free a4
              #                          jump label: while.head_39 
    j       .while.head_39
              #                    regtab     a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a4:Freed { symidx: d_17_5, tracked: true } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28_0, tracked: true } |     s2:Freed { symidx: temp_12_cmp_34_0, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30_0, tracked: true } |     s4:Freed { symidx: temp_5_arithop_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     81   label while.head_39: 
.while.head_39:
              #                     80   temp_13_cmp_38_0 = icmp i32 Slt d_17_5, 20_0 
              #                    occupy a4 with d_17_5
              #                    occupy a7 with 20_0
    li      a7, 20
              #                    occupy s1 with temp_13_cmp_38_0
    slt     s1,a4,a7
              #                    free a4
              #                    occupy a4 with d_17_5
              #                    store to d_17_5 in mem offset legal
    sw      a4,48(sp)
              #                    release a4 with d_17_5
              #                    free a7
              #                    free s1
              #                     84   br i1 temp_13_cmp_38_0, label while.body_39, label while.exit_39 
              #                    occupy s1 with temp_13_cmp_38_0
              #                    free s1
              #                    occupy s1 with temp_13_cmp_38_0
    bnez    s1, .while.body_39
              #                    free s1
    j       .while.exit_39
              #                    regtab     a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28_0, tracked: true } |     s1:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_12_cmp_34_0, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30_0, tracked: true } |     s4:Freed { symidx: temp_5_arithop_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     82   label while.body_39: 
.while.body_39:
              #                     57   temp_9_arithop_40_0 = Add i32 d_17_5, 3_0 
              #                    occupy a4 with d_17_5
              #                    load from d_17_5 in mem


    lw      a4,48(sp)
              #                    occupy a7 with 3_0
    li      a7, 3
              #                    occupy s5 with temp_9_arithop_40_0
    ADDW    s5,a4,a7
              #                    free a4
              #                    occupy a4 with d_17_5
              #                    store to d_17_5 in mem offset legal
    sw      a4,48(sp)
              #                    release a4 with d_17_5
              #                    free a7
              #                    free s5
              #                    occupy s5 with temp_9_arithop_40_0
              #                    store to temp_9_arithop_40_0 in mem offset legal
    sw      s5,8(sp)
              #                    release s5 with temp_9_arithop_40_0
              #                     58   (nop) 
              #                     111  d_17_5 = i32 temp_9_arithop_40_0 
              #                    occupy a4 with temp_9_arithop_40_0
              #                    load from temp_9_arithop_40_0 in mem


    lw      a4,8(sp)
              #                    occupy a7 with d_17_5
    mv      a7, a4
              #                    free a4
              #                    occupy a4 with temp_9_arithop_40_0
              #                    store to temp_9_arithop_40_0 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_9_arithop_40_0
              #                    free a7
              #                    occupy a7 with d_17_5
              #                    store to d_17_5 in mem offset legal
    sw      a7,48(sp)
              #                    release a7 with d_17_5
              #                          jump label: while.head_39 
              #                    occupy s1 with temp_13_cmp_38_0
              #                    store to temp_13_cmp_38_0 in mem offset legal
    sb      s1,4(sp)
              #                    release s1 with temp_13_cmp_38_0
              #                    occupy a4 with d_17_5
              #                    load from d_17_5 in mem


    lw      a4,48(sp)
    j       .while.head_39
              #                    regtab     a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28_0, tracked: true } |     s1:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_12_cmp_34_0, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30_0, tracked: true } |     s4:Freed { symidx: temp_5_arithop_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     83   label while.exit_39: 
.while.exit_39:
              #                     54   temp_8_arithop_36_0 = Sub i32 d_17_5, 1_0 
              #                    occupy a4 with d_17_5
              #                    load from d_17_5 in mem


    lw      a4,48(sp)
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s5 with temp_8_arithop_36_0
              #                    regtab:    a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a4:Occupied { symidx: d_17_5, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28_0, tracked: true } |     a7:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Freed { symidx: temp_13_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_12_cmp_34_0, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30_0, tracked: true } |     s4:Freed { symidx: temp_5_arithop_32_0, tracked: true } |     s5:Occupied { symidx: temp_8_arithop_36_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s5,a4,a7
              #                    free a4
              #                    occupy a4 with d_17_5
              #                    store to d_17_5 in mem offset legal
    sw      a4,48(sp)
              #                    release a4 with d_17_5
              #                    free a7
              #                    free s5
              #                    occupy s5 with temp_8_arithop_36_0
              #                    store to temp_8_arithop_36_0 in mem offset legal
    sw      s5,12(sp)
              #                    release s5 with temp_8_arithop_36_0
              #                     55   (nop) 
              #                     112  d_17_4 = i32 temp_8_arithop_36_0 
              #                    occupy a4 with temp_8_arithop_36_0
              #                    load from temp_8_arithop_36_0 in mem


    lw      a4,12(sp)
              #                    occupy a7 with d_17_4
    mv      a7, a4
              #                    free a4
              #                    occupy a4 with temp_8_arithop_36_0
              #                    store to temp_8_arithop_36_0 in mem offset legal
    sw      a4,12(sp)
              #                    release a4 with temp_8_arithop_36_0
              #                    free a7
              #                    occupy a7 with d_17_4
              #                    store to d_17_4 in mem offset legal
    sw      a7,52(sp)
              #                    release a7 with d_17_4
              #                     113  c_17_4 = i32 temp_7_arithop_36_0 
              #                    occupy a4 with temp_7_arithop_36_0
              #                    load from temp_7_arithop_36_0 in mem


    lw      a4,16(sp)
              #                    occupy a7 with c_17_4
    mv      a7, a4
              #                    free a4
              #                    occupy a4 with temp_7_arithop_36_0
              #                    store to temp_7_arithop_36_0 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_7_arithop_36_0
              #                    free a7
              #                    occupy a7 with c_17_4
              #                    store to c_17_4 in mem offset legal
    sw      a7,68(sp)
              #                    release a7 with c_17_4
              #                          jump label: while.head_35 
              #                    occupy s2 with temp_12_cmp_34_0
              #                    store to temp_12_cmp_34_0 in mem offset legal
    sb      s2,5(sp)
              #                    release s2 with temp_12_cmp_34_0
              #                    occupy s1 with temp_13_cmp_38_0
              #                    store to temp_13_cmp_38_0 in mem offset legal
    sb      s1,4(sp)
              #                    release s1 with temp_13_cmp_38_0
              #                    occupy s1 with c_17_4
              #                    load from c_17_4 in mem


    lw      s1,68(sp)
              #                    occupy a7 with d_17_4
              #                    load from d_17_4 in mem


    lw      a7,52(sp)
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28_0, tracked: true } |     a7:Freed { symidx: d_17_4, tracked: true } |     s2:Freed { symidx: temp_12_cmp_34_0, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30_0, tracked: true } |     s4:Freed { symidx: temp_5_arithop_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     77   label while.exit_35: 
.while.exit_35:
              #                     48   temp_6_arithop_32_0 = Add i32 c_17_4, 1_0 
              #                    occupy a4 with c_17_4
              #                    load from c_17_4 in mem


    lw      a4,68(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with temp_6_arithop_32_0
    ADDW    s5,a4,s1
              #                    free a4
              #                    occupy a4 with c_17_4
              #                    store to c_17_4 in mem offset legal
    sw      a4,68(sp)
              #                    release a4 with c_17_4
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_6_arithop_32_0
              #                    store to temp_6_arithop_32_0 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_6_arithop_32_0
              #                     49   (nop) 
              #                     114  c_17_3 = i32 temp_6_arithop_32_0 
              #                    occupy a4 with temp_6_arithop_32_0
              #                    load from temp_6_arithop_32_0 in mem


    lw      a4,20(sp)
              #                    occupy s1 with c_17_3
    mv      s1, a4
              #                    free a4
              #                    occupy a4 with temp_6_arithop_32_0
              #                    store to temp_6_arithop_32_0 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_6_arithop_32_0
              #                    free s1
              #                    occupy s1 with c_17_3
              #                    store to c_17_3 in mem offset legal
    sw      s1,72(sp)
              #                    release s1 with c_17_3
              #                     115  d_17_3 = i32 d_17_4 
              #                    occupy a7 with d_17_4
              #                    occupy a4 with d_17_3
    mv      a4, a7
              #                    free a7
              #                    occupy a7 with d_17_4
              #                    store to d_17_4 in mem offset legal
    sw      a7,52(sp)
              #                    release a7 with d_17_4
              #                    free a4
              #                     116  b_17_3 = i32 temp_5_arithop_32_0 
              #                    occupy s4 with temp_5_arithop_32_0
              #                    occupy a7 with b_17_3
    mv      a7, s4
              #                    free s4
              #                    occupy s4 with temp_5_arithop_32_0
              #                    store to temp_5_arithop_32_0 in mem offset legal
    sw      s4,24(sp)
              #                    release s4 with temp_5_arithop_32_0
              #                    free a7
              #                          jump label: while.head_31 
              #                    occupy s2 with temp_12_cmp_34_0
              #                    store to temp_12_cmp_34_0 in mem offset legal
    sb      s2,5(sp)
              #                    release s2 with temp_12_cmp_34_0
              #                    occupy a4 with d_17_3
              #                    store to d_17_3 in mem offset legal
    sw      a4,56(sp)
              #                    release a4 with d_17_3
              #                    occupy s2 with d_17_3
              #                    load from d_17_3 in mem


    lw      s2,56(sp)
              #                    occupy a7 with b_17_3
              #                    store to b_17_3 in mem offset legal
    sw      a7,84(sp)
              #                    release a7 with b_17_3
              #                    occupy s1 with b_17_3
              #                    load from b_17_3 in mem


    lw      s1,84(sp)
              #                    occupy s3 with temp_11_cmp_30_0
              #                    store to temp_11_cmp_30_0 in mem offset legal
    sb      s3,6(sp)
              #                    release s3 with temp_11_cmp_30_0
              #                    occupy a7 with c_17_3
              #                    load from c_17_3 in mem


    lw      a7,72(sp)
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28_0, tracked: true } |     a7:Freed { symidx: c_17_3, tracked: true } |     s1:Freed { symidx: b_17_3, tracked: true } |     s2:Freed { symidx: d_17_3, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     71   label while.exit_31: 
.while.exit_31:
              #                     42   temp_4_arithop_28_0 = Sub i32 b_17_3, 2_0 
              #                    occupy s1 with b_17_3
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    occupy s4 with temp_4_arithop_28_0
              #                    regtab:    a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a4:Occupied { symidx: 2_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28_0, tracked: true } |     a7:Freed { symidx: c_17_3, tracked: true } |     s1:Occupied { symidx: b_17_3, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: d_17_3, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30_0, tracked: true } |     s4:Occupied { symidx: temp_4_arithop_28_0, tracked: true, occupy_count: 1 } |  released_gpr_count:4,released_fpr_count:24


    subw    s4,s1,a4
              #                    free s1
              #                    occupy s1 with b_17_3
              #                    store to b_17_3 in mem offset legal
    sw      s1,84(sp)
              #                    release s1 with b_17_3
              #                    free a4
              #                    free s4
              #                     43   (nop) 
              #                     117  b_17_2 = i32 temp_4_arithop_28_0 
              #                    occupy s4 with temp_4_arithop_28_0
              #                    occupy a1 with b_17_2
    mv      a1, s4
              #                    free s4
              #                    free a1
              #                     118  a_17_2 = i32 temp_3_arithop_28_0 
              #                    occupy a6 with temp_3_arithop_28_0
              #                    occupy a0 with a_17_2
    mv      a0, a6
              #                    free a6
              #                    free a0
              #                     119  d_17_2 = i32 d_17_3 
              #                    occupy s2 with d_17_3
              #                    occupy a3 with d_17_2
    mv      a3, s2
              #                    free s2
              #                    free a3
              #                     120  c_17_2 = i32 c_17_3 
              #                    occupy a7 with c_17_3
              #                    occupy a2 with c_17_2
    mv      a2, a7
              #                    free a7
              #                    free a2
              #                          jump label: while.head_27 
              #                    occupy a5 with temp_10_cmp_26_0
              #                    store to temp_10_cmp_26_0 in mem offset legal
    sb      a5,7(sp)
              #                    release a5 with temp_10_cmp_26_0
              #                    occupy a6 with temp_3_arithop_28_0
              #                    store to temp_3_arithop_28_0 in mem offset legal
    sw      a6,32(sp)
              #                    release a6 with temp_3_arithop_28_0
              #                    occupy s4 with temp_4_arithop_28_0
              #                    store to temp_4_arithop_28_0 in mem offset legal
    sw      s4,28(sp)
              #                    release s4 with temp_4_arithop_28_0
              #                    occupy s2 with d_17_3
              #                    store to d_17_3 in mem offset legal
    sw      s2,56(sp)
              #                    release s2 with d_17_3
              #                    occupy s3 with temp_11_cmp_30_0
              #                    store to temp_11_cmp_30_0 in mem offset legal
    sb      s3,6(sp)
              #                    release s3 with temp_11_cmp_30_0
              #                    occupy a7 with c_17_3
              #                    store to c_17_3 in mem offset legal
    sw      a7,72(sp)
              #                    release a7 with c_17_3
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: a_17_2, tracked: true } |     a1:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: c_17_2, tracked: true } |     a3:Freed { symidx: d_17_2, tracked: true } |     a5:Freed { symidx: temp_10_cmp_26_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     63   label while.exit_27: 
.while.exit_27:
              #                     32   temp_0_arithop_17_0 = Add i32 b_17_2, d_17_2 
              #                    occupy a1 with b_17_2
              #                    occupy a3 with d_17_2
              #                    occupy a4 with temp_0_arithop_17_0
    ADDW    a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                     125  untrack b_17_2 
              #                    occupy a1 with b_17_2
              #                    release a1 with b_17_2
              #                     121  untrack d_17_2 
              #                    occupy a3 with d_17_2
              #                    release a3 with d_17_2
              #                     34   temp_1_arithop_17_0 = Add i32 a_17_2, temp_0_arithop_17_0 
              #                    occupy a0 with a_17_2
              #                    occupy a4 with temp_0_arithop_17_0
              #                    occupy a1 with temp_1_arithop_17_0
    ADDW    a1,a0,a4
              #                    free a0
              #                    free a4
              #                    free a1
              #                     124  untrack a_17_2 
              #                    occupy a0 with a_17_2
              #                    release a0 with a_17_2
              #                     122  untrack temp_0_arithop_17_0 
              #                    occupy a4 with temp_0_arithop_17_0
              #                    release a4 with temp_0_arithop_17_0
              #                     36   temp_2_arithop_17_0 = Add i32 temp_1_arithop_17_0, c_17_2 
              #                    occupy a1 with temp_1_arithop_17_0
              #                    occupy a2 with c_17_2
              #                    occupy a0 with temp_2_arithop_17_0
    ADDW    a0,a1,a2
              #                    free a1
              #                    free a2
              #                    free a0
              #                     126  untrack temp_1_arithop_17_0 
              #                    occupy a1 with temp_1_arithop_17_0
              #                    release a1 with temp_1_arithop_17_0
              #                     123  untrack c_17_2 
              #                    occupy a2 with c_17_2
              #                    release a2 with c_17_2
              #                     37   ret temp_2_arithop_17_0 
              #                    load from ra_FourWhile_0 in mem
    ld      ra,112(sp)
              #                    load from s0_FourWhile_0 in mem
    ld      s0,104(sp)
              #                    occupy a0 with temp_2_arithop_17_0
              #                    store to temp_2_arithop_17_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_2_arithop_17_0
              #                    occupy a0 with temp_2_arithop_17_0
              #                    load from temp_2_arithop_17_0 in mem


    lw      a0,36(sp)
    addi    sp,sp,120
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_14_ret_of_FourWhile _s47 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     86   alloc i32 [temp_14_ret_of_FourWhile_47] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     87   temp_14_ret_of_FourWhile_47_0 =  Call i32 FourWhile_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    FourWhile
              #                     88   ret temp_14_ret_of_FourWhile_47_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with temp_14_ret_of_FourWhile_47_0
              #                    store to temp_14_ret_of_FourWhile_47_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_14_ret_of_FourWhile_47_0
              #                    occupy a0 with temp_14_ret_of_FourWhile_47_0
              #                    load from temp_14_ret_of_FourWhile_47_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
