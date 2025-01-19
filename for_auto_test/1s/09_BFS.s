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
              #                     39   Define quick_read_0 "" -> quick_read_ret_0 
    .globl quick_read
    .type quick_read,@function
quick_read:
              #                    mem layout:|ra_quick_read:8 at 64|s0_quick_read:8 at 56|temp_0_ret_of_getch _s22 _i0:4 at 52|ch _s22 _i1:4 at 48|ch _s22 _i3:4 at 44|x _s22 _i1:4 at 40|f _s22 _i1:4 at 36|f _s22 _i3:4 at 32|temp_1_ _s37 _i0:4 at 28|temp_2_arithop _s34 _i0:4 at 24|temp_3_arithop _s34 _i0:4 at 20|temp_4_arithop _s34 _i0:4 at 16|temp_5_ret_of_getch _s34 _i0:4 at 12|temp_6_ret_of_getch _s27 _i0:4 at 8|temp_7_cmp _s25 _i0:1 at 7|temp_8_cmp _s25 _i0:1 at 6|temp_9_cmp _s32 _i0:1 at 5|temp_10_cmp _s32 _i0:1 at 4|temp_11_ _s803 _i0:1 at 3|temp_12_cmp _s28 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-72
              #                    store to ra_quick_read_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_quick_read_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     46   alloc i32 [temp_0_ret_of_getch_22] 
              #                     49   alloc i32 [ch_22] 
              #                     51   alloc i32 [x_22] 
              #                     53   alloc i32 [f_22] 
              #                     57   alloc i32 [temp_1__37] 
              #                     60   alloc i32 [temp_2_arithop_34] 
              #                     62   alloc i32 [temp_3_arithop_34] 
              #                     64   alloc i32 [temp_4_arithop_34] 
              #                     67   alloc i32 [temp_5_ret_of_getch_34] 
              #                     70   alloc i32 [temp_6_ret_of_getch_27] 
              #                     74   alloc i1 [temp_7_cmp_25] 
              #                     76   alloc i1 [temp_8_cmp_25] 
              #                     85   alloc i1 [temp_9_cmp_32] 
              #                     87   alloc i1 [temp_10_cmp_32] 
              #                     95   alloc i1 [temp_11__803] 
              #                     103  alloc i1 [temp_12_cmp_28] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     47   temp_0_ret_of_getch_22_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     48   (nop) 
              #                     50   (nop) 
              #                     52   (nop) 
              #                     533  ch_22_1 = i32 temp_0_ret_of_getch_22_0 
              #                    occupy a0 with temp_0_ret_of_getch_22_0
              #                    occupy a1 with ch_22_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     557  untrack temp_0_ret_of_getch_22_0 
              #                    occupy a0 with temp_0_ret_of_getch_22_0
              #                    release a0 with temp_0_ret_of_getch_22_0
              #                     534  f_22_1 = i32 0_0 
              #                    occupy a0 with f_22_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_26 
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     83   label while.head_26: 
.while.head_26:
              #                     75   temp_7_cmp_25_0 = icmp i32 Slt ch_22_1, 48_0 
              #                    occupy a1 with ch_22_1
              #                    occupy a2 with 48_0
    li      a2, 48
              #                    occupy a3 with temp_7_cmp_25_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     84   br i1 temp_7_cmp_25_0, label branch_short_circuit_c_true_204, label branch_short_circuit_p_false_204 
              #                    occupy a3 with temp_7_cmp_25_0
              #                    free a3
              #                    occupy a3 with temp_7_cmp_25_0
    bnez    a3, .branch_short_circuit_c_true_204
              #                    free a3
    j       .branch_short_circuit_p_false_204
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     78   label branch_short_circuit_c_true_204: 
.branch_short_circuit_c_true_204:
              #                     104  temp_12_cmp_28_0 = icmp i32 Eq ch_22_1, 45_0 
              #                    occupy a1 with ch_22_1
              #                    occupy a2 with 45_0
    li      a2, 45
              #                    occupy a4 with temp_12_cmp_28_0
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     107  br i1 temp_12_cmp_28_0, label branch_true_29, label UP_48_0 
              #                    occupy a4 with temp_12_cmp_28_0
              #                    free a4
              #                    occupy a4 with temp_12_cmp_28_0
    bnez    a4, .branch_true_29
              #                    free a4
    j       .UP_48_0
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_28_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     105  label branch_true_29: 
.branch_true_29:
              #                     568  untrack temp_2_arithop_34_0 
              #                     567  untrack x_22_1 
              #                     566  untrack temp_5_ret_of_getch_34_0 
              #                     565  untrack temp_12_cmp_28_0 
              #                    occupy a4 with temp_12_cmp_28_0
              #                    release a4 with temp_12_cmp_28_0
              #                     564  untrack temp_9_cmp_32_0 
              #                     563  untrack temp_3_arithop_34_0 
              #                     562  untrack temp_8_cmp_25_0 
              #                     561  untrack temp_7_cmp_25_0 
              #                    occupy a3 with temp_7_cmp_25_0
              #                    release a3 with temp_7_cmp_25_0
              #                     560  untrack temp_4_arithop_34_0 
              #                     559  untrack ch_22_3 
              #                     558  untrack temp_10_cmp_32_0 
              #                     73   (nop) 
              #                     535  f_22_3 = i32 1_0 
              #                    occupy a2 with f_22_3
    li      a2, 1
              #                    free a2
              #                          jump label: branch_false_29 
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: f_22_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     106  label branch_false_29: 
.branch_false_29:
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: f_22_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     71   temp_6_ret_of_getch_27_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with f_22_1
              #                    store to f_22_1 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with f_22_1
              #                    occupy a1 with ch_22_1
              #                    store to ch_22_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_22_1
              #                    occupy a2 with f_22_3
              #                    store to f_22_3 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with f_22_3
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     72   (nop) 
              #                     536  f_22_1 = i32 f_22_3 
              #                    occupy a1 with f_22_3
              #                    load from f_22_3 in mem


    lw      a1,32(sp)
              #                    occupy a2 with f_22_1
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     537  ch_22_1 = i32 temp_6_ret_of_getch_27_0 
              #                    occupy a0 with temp_6_ret_of_getch_27_0
              #                    occupy a3 with ch_22_1
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: while.head_26 
              #                    occupy a3 with ch_22_1
              #                    store to ch_22_1 in mem offset legal
    sw      a3,48(sp)
              #                    release a3 with ch_22_1
              #                    occupy a0 with temp_6_ret_of_getch_27_0
              #                    store to temp_6_ret_of_getch_27_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_6_ret_of_getch_27_0
              #                    occupy a2 with f_22_1
              #                    store to f_22_1 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with f_22_1
              #                    occupy a0 with f_22_1
              #                    load from f_22_1 in mem


    lw      a0,36(sp)
              #                    occupy a1 with f_22_3
              #                    store to f_22_3 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with f_22_3
              #                    occupy a1 with ch_22_1
              #                    load from ch_22_1 in mem


    lw      a1,48(sp)
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_28_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     531  label UP_48_0: 
.UP_48_0:
              #                     538  f_22_3 = i32 f_22_1 
              #                    occupy a0 with f_22_1
              #                    occupy a2 with f_22_3
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: branch_false_29 
              #                    occupy a3 with temp_7_cmp_25_0
              #                    store to temp_7_cmp_25_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_7_cmp_25_0
              #                    occupy a4 with temp_12_cmp_28_0
              #                    store to temp_12_cmp_28_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_12_cmp_28_0
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     80   label branch_short_circuit_p_false_204: 
.branch_short_circuit_p_false_204:
              #                     77   temp_8_cmp_25_0 = icmp i32 Sgt ch_22_1, 57_0 
              #                    occupy a1 with ch_22_1
              #                    occupy a2 with 57_0
    li      a2, 57
              #                    occupy a4 with temp_8_cmp_25_0
    slt     a4,a2,a1
              #                    free a1
              #                    free a2
              #                    free a4
              #                     82   br i1 temp_8_cmp_25_0, label branch_short_circuit_c_true_204, label UP_30_0 
              #                    occupy a4 with temp_8_cmp_25_0
              #                    free a4
              #                    occupy a4 with temp_8_cmp_25_0
              #                    store to temp_8_cmp_25_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_8_cmp_25_0
              #                    occupy a2 with temp_8_cmp_25_0
              #                    load from temp_8_cmp_25_0 in mem


    lb      a2,6(sp)
    bnez    a2, .branch_short_circuit_c_true_204
              #                    free a2
    j       .UP_30_0
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: temp_8_cmp_25_0, tracked: true } |     a3:Freed { symidx: temp_7_cmp_25_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     532  label UP_30_0: 
.UP_30_0:
              #                     573  untrack temp_12_cmp_28_0 
              #                     572  untrack f_22_3 
              #                     571  untrack temp_6_ret_of_getch_27_0 
              #                     570  untrack temp_8_cmp_25_0 
              #                    occupy a2 with temp_8_cmp_25_0
              #                    release a2 with temp_8_cmp_25_0
              #                     569  untrack temp_7_cmp_25_0 
              #                    occupy a3 with temp_7_cmp_25_0
              #                    release a3 with temp_7_cmp_25_0
              #                     539  ch_22_3 = i32 ch_22_1 
              #                    occupy a1 with ch_22_1
              #                    occupy a2 with ch_22_3
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     540  x_22_1 = i32 0_0 
              #                    occupy a3 with x_22_1
    li      a3, 0
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_204 
    j       .branch_short_circuit_c_false_204
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     79   label branch_short_circuit_c_false_204: 
.branch_short_circuit_c_false_204:
              #                     86   temp_9_cmp_32_0 = icmp i32 Sge ch_22_3, 48_0 
              #                    occupy a2 with ch_22_3
              #                    occupy a4 with 48_0
    li      a4, 48
              #                    occupy a5 with temp_9_cmp_32_0
    slt     a5,a2,a4
    xori    a5,a5,1
              #                    free a2
              #                    free a4
              #                    free a5
              #                     94   br i1 temp_9_cmp_32_0, label branch_short_circuit_p_true_220, label branch_short_circuit_c_false_220 
              #                    occupy a5 with temp_9_cmp_32_0
              #                    free a5
              #                    occupy a5 with temp_9_cmp_32_0
    bnez    a5, .branch_short_circuit_p_true_220
              #                    free a5
    j       .branch_short_circuit_c_false_220
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     91   label branch_short_circuit_p_true_220: 
.branch_short_circuit_p_true_220:
              #                     88   temp_10_cmp_32_0 = icmp i32 Sle ch_22_3, 57_0 
              #                    occupy a2 with ch_22_3
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a6 with temp_10_cmp_32_0
    slt     a6,a4,a2
    xori    a6,a6,1
              #                    free a2
              #                    free a4
              #                    free a6
              #                     93   br i1 temp_10_cmp_32_0, label branch_short_circuit_c_true_220, label branch_short_circuit_c_false_220 
              #                    occupy a6 with temp_10_cmp_32_0
              #                    free a6
              #                    occupy a6 with temp_10_cmp_32_0
    bnez    a6, .branch_short_circuit_c_true_220
              #                    free a6
              #                    occupy a6 with temp_10_cmp_32_0
              #                    store to temp_10_cmp_32_0 in mem offset legal
    sb      a6,4(sp)
              #                    release a6 with temp_10_cmp_32_0
    j       .branch_short_circuit_c_false_220
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |     a6:Freed { symidx: temp_10_cmp_32_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     89   label branch_short_circuit_c_true_220: 
.branch_short_circuit_c_true_220:
              #                     61   temp_2_arithop_34_0 = Mul i32 x_22_1, 10_0 
              #                    occupy a4 with temp_2_arithop_34_0
              #                    occupy a3 with x_22_1
              #                    occupy a7 with 10_0
    li      a7, 10
    mulw    a4,a3,a7
              #                    free a3
              #                    free a7
              #                    free a4
              #                     63   temp_3_arithop_34_0 = Add i32 temp_2_arithop_34_0, ch_22_3 
              #                    occupy a4 with temp_2_arithop_34_0
              #                    occupy a2 with ch_22_3
              #                    occupy s1 with temp_3_arithop_34_0
    ADDW    s1,a4,a2
              #                    free a4
              #                    free a2
              #                    free s1
              #                     65   temp_4_arithop_34_0 = Sub i32 temp_3_arithop_34_0, 48_0 
              #                    occupy s1 with temp_3_arithop_34_0
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_4_arithop_34_0
              #                    regtab:    a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a4:Freed { symidx: temp_2_arithop_34_0, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |     a6:Freed { symidx: temp_10_cmp_32_0, tracked: true } |     a7:Freed { symidx: 10_0, tracked: false } |     s1:Occupied { symidx: temp_3_arithop_34_0, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_4_arithop_34_0, tracked: true, occupy_count: 1 } |  released_gpr_count:5,released_fpr_count:24


    subw    s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                     66   (nop) 
              #                     68   temp_5_ret_of_getch_34_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_3_arithop_34_0
              #                    store to temp_3_arithop_34_0 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with temp_3_arithop_34_0
              #                    occupy s3 with temp_4_arithop_34_0
              #                    store to temp_4_arithop_34_0 in mem offset legal
    sw      s3,16(sp)
              #                    release s3 with temp_4_arithop_34_0
              #                    occupy a0 with f_22_1
              #                    store to f_22_1 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with f_22_1
              #                    occupy a1 with ch_22_1
              #                    store to ch_22_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_22_1
              #                    occupy a2 with ch_22_3
              #                    store to ch_22_3 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with ch_22_3
              #                    occupy a3 with x_22_1
              #                    store to x_22_1 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with x_22_1
              #                    occupy a4 with temp_2_arithop_34_0
              #                    store to temp_2_arithop_34_0 in mem offset legal
    sw      a4,24(sp)
              #                    release a4 with temp_2_arithop_34_0
              #                    occupy a5 with temp_9_cmp_32_0
              #                    store to temp_9_cmp_32_0 in mem offset legal
    sb      a5,5(sp)
              #                    release a5 with temp_9_cmp_32_0
              #                    occupy a6 with temp_10_cmp_32_0
              #                    store to temp_10_cmp_32_0 in mem offset legal
    sb      a6,4(sp)
              #                    release a6 with temp_10_cmp_32_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     69   (nop) 
              #                     541  ch_22_3 = i32 temp_5_ret_of_getch_34_0 
              #                    occupy a0 with temp_5_ret_of_getch_34_0
              #                    occupy a1 with ch_22_3
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     542  x_22_1 = i32 temp_4_arithop_34_0 
              #                    occupy a2 with temp_4_arithop_34_0
              #                    load from temp_4_arithop_34_0 in mem


    lw      a2,16(sp)
              #                    occupy a3 with x_22_1
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_204 
              #                    occupy a0 with temp_5_ret_of_getch_34_0
              #                    store to temp_5_ret_of_getch_34_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_5_ret_of_getch_34_0
              #                    occupy a0 with f_22_1
              #                    load from f_22_1 in mem


    lw      a0,36(sp)
              #                    occupy a2 with temp_4_arithop_34_0
              #                    store to temp_4_arithop_34_0 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_4_arithop_34_0
              #                    occupy a1 with ch_22_3
              #                    store to ch_22_3 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with ch_22_3
              #                    occupy a2 with ch_22_3
              #                    load from ch_22_3 in mem


    lw      a2,44(sp)
              #                    occupy a1 with ch_22_1
              #                    load from ch_22_1 in mem


    lw      a1,48(sp)
    j       .branch_short_circuit_c_false_204
              #                    regtab     a0:Freed { symidx: f_22_1, tracked: true } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     90   label branch_short_circuit_c_false_220: 
.branch_short_circuit_c_false_220:
              #                     96   temp_11__803_0 = icmp i32 Ne f_22_1, 0_0 
              #                    occupy a0 with f_22_1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a6 with temp_11__803_0
    xor     a6,a0,a4
    snez    a6, a6
              #                    free a0
              #                    free a4
              #                    free a6
              #                     574  untrack f_22_1 
              #                    occupy a0 with f_22_1
              #                    release a0 with f_22_1
              #                     99   br i1 temp_11__803_0, label branch_true_38, label branch_false_38 
              #                    occupy a6 with temp_11__803_0
              #                    free a6
              #                    occupy a6 with temp_11__803_0
    bnez    a6, .branch_true_38
              #                    free a6
    j       .branch_false_38
              #                    regtab     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |     a6:Freed { symidx: temp_11__803_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     97   label branch_true_38: 
.branch_true_38:
              #                     575  untrack temp_11__803_0 
              #                    occupy a6 with temp_11__803_0
              #                    release a6 with temp_11__803_0
              #                     58   temp_1__37_0 = Sub i32 0_0, x_22_1 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a3 with x_22_1
              #                    occupy a4 with temp_1__37_0
              #                    regtab:    a0:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Occupied { symidx: x_22_1, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: temp_1__37_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24


    subw    a4,a0,a3
              #                    free a0
              #                    free a3
              #                    free a4
              #                     59   ret temp_1__37_0 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    occupy a4 with temp_1__37_0
              #                    store to temp_1__37_0 in mem offset legal
    sw      a4,28(sp)
              #                    release a4 with temp_1__37_0
              #                    occupy a0 with temp_1__37_0
              #                    load from temp_1__37_0 in mem


    lw      a0,28(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ch_22_1, tracked: true } |     a2:Freed { symidx: ch_22_3, tracked: true } |     a3:Freed { symidx: x_22_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_32_0, tracked: true } |     a6:Freed { symidx: temp_11__803_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     98   label branch_false_38: 
.branch_false_38:
              #                     577  untrack temp_1__37_0 
              #                     576  untrack temp_11__803_0 
              #                    occupy a6 with temp_11__803_0
              #                    release a6 with temp_11__803_0
              #                     55   ret x_22_1 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    occupy a3 with x_22_1
              #                    store to x_22_1 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with x_22_1
              #                    occupy a0 with x_22_1
              #                    load from x_22_1 in mem


    lw      a0,40(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     40   Define add_edge_0 "from_41_0,To_41_0," -> add_edge_ret_0 
    .globl add_edge
    .type add_edge,@function
add_edge:
              #                    mem layout:|ra_add_edge:8 at 120|s0_add_edge:8 at 112|from _s41 _i0:4 at 108|To _s41 _i0:4 at 104|temp_13_value_from_ptr _s43 _i0:4 at 100|none:4 at 96|temp_14_ptr_of_*to_0:8 at 88|temp_16_ptr_of_*next_0:8 at 80|temp_17_ptr_of_*head_0:8 at 72|temp_18_ele_of_*head_0 _s43 _i0:4 at 68|none:4 at 64|temp_19_ptr_of_*head_0:8 at 56|temp_22_arithop _s43 _i0:4 at 52|temp_23_value_from_ptr _s43 _i0:4 at 48|temp_24_ptr_of_*to_0:8 at 40|temp_26_ptr_of_*next_0:8 at 32|temp_27_ptr_of_*head_0:8 at 24|temp_28_ele_of_*head_0 _s43 _i0:4 at 20|none:4 at 16|temp_29_ptr_of_*head_0:8 at 8|temp_32_arithop _s43 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-128
              #                    store to ra_add_edge_0 in mem offset legal
    sd      ra,120(sp)
              #                    store to s0_add_edge_0 in mem offset legal
    sd      s0,112(sp)
    addi    s0,sp,128
              #                     412  cnt_0_1 = chi cnt_0_0:40 
              #                     413  next_0_1 = chi next_0_0:40 
              #                     414  to_0_1 = chi to_0_0:40 
              #                     415  head_0_1 = chi head_0_0:40 
              #                     108  alloc i32 [temp_13_value_from_ptr_43] 
              #                     111  alloc ptr->i32 [temp_14_ptr_of_*to_0_43] 
              #                     115  alloc i32 [temp_15_value_from_ptr_43] 
              #                     118  alloc ptr->i32 [temp_16_ptr_of_*next_0_43] 
              #                     120  alloc ptr->i32 [temp_17_ptr_of_*head_0_43] 
              #                     122  alloc i32 [temp_18_ele_of_*head_0_43] 
              #                     127  alloc ptr->i32 [temp_19_ptr_of_*head_0_43] 
              #                     129  alloc i32 [temp_20_value_from_ptr_43] 
              #                     134  alloc i32 [temp_21_value_from_ptr_43] 
              #                     137  alloc i32 [temp_22_arithop_43] 
              #                     141  alloc i32 [temp_23_value_from_ptr_43] 
              #                     144  alloc ptr->i32 [temp_24_ptr_of_*to_0_43] 
              #                     148  alloc i32 [temp_25_value_from_ptr_43] 
              #                     151  alloc ptr->i32 [temp_26_ptr_of_*next_0_43] 
              #                     153  alloc ptr->i32 [temp_27_ptr_of_*head_0_43] 
              #                     155  alloc i32 [temp_28_ele_of_*head_0_43] 
              #                     160  alloc ptr->i32 [temp_29_ptr_of_*head_0_43] 
              #                     162  alloc i32 [temp_30_value_from_ptr_43] 
              #                     167  alloc i32 [temp_31_value_from_ptr_43] 
              #                     170  alloc i32 [temp_32_arithop_43] 
              #                    regtab     a0:Freed { symidx: from_41_0, tracked: true } |     a1:Freed { symidx: To_41_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     109  temp_13_value_from_ptr_43_0 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a3 with temp_13_value_from_ptr_43_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     110  mu cnt_0_1:109 
              #                     112  temp_14_ptr_of_*to_0_43 = GEP *to_0:ptr->i32 [Some(temp_13_value_from_ptr_43_0)] 
              #                    occupy a4 with temp_14_ptr_of_*to_0_43
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_13_value_from_ptr_43_0
    mv      a5, a3
              #                    free a3
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *to_0
              #                       load label to as ptr to reg
    la      a6, to
              #                    occupy reg a6 with *to_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     113  store To_41_0:i32 temp_14_ptr_of_*to_0_43:ptr->i32 
              #                    occupy a4 with temp_14_ptr_of_*to_0_43
              #                    occupy a1 with To_41_0
    sw      a1,0(a4)
              #                    free a1
              #                    free a4
              #                     582  untrack temp_14_ptr_of_*to_0_43 
              #                    occupy a4 with temp_14_ptr_of_*to_0_43
              #                    release a4 with temp_14_ptr_of_*to_0_43
              #                     114  to_0_2 = chi to_0_1:113 
              #                     116  (nop) 
              #                     117  mu cnt_0_1:116 
              #                     119  temp_16_ptr_of_*next_0_43 = GEP *next_0:ptr->i32 [Some(temp_13_value_from_ptr_43_0)] 
              #                    occupy a4 with temp_16_ptr_of_*next_0_43
    li      a4, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_13_value_from_ptr_43_0
    mv      a7, a3
              #                    free a3
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
              #                    occupy s1 with *next_0
              #                       load label next as ptr to reg
    la      s1, next
              #                    occupy reg s1 with *next_0
    add     a4,a4,s1
              #                    free s1
              #                    free a4
              #                     121  temp_17_ptr_of_*head_0_43 = GEP *head_0:Array:i32:[None] [Some(from_41_0)] 
              #                    occupy s2 with temp_17_ptr_of_*head_0_43
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with from_41_0
    mv      s3, a0
              #                    free a0
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy s4 with *head_0
              #                       load label head as ptr to reg
    la      s4, head
              #                    occupy reg s4 with *head_0
    add     s2,s2,s4
              #                    free s4
              #                    free s2
              #                     123  temp_18_ele_of_*head_0_43_0 = load temp_17_ptr_of_*head_0_43:ptr->i32 
              #                    occupy s2 with temp_17_ptr_of_*head_0_43
              #                    occupy s5 with temp_18_ele_of_*head_0_43_0
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                     124  mu head_0_1:123 
              #                     125  store temp_18_ele_of_*head_0_43_0:i32 temp_16_ptr_of_*next_0_43:ptr->i32 
              #                    occupy a4 with temp_16_ptr_of_*next_0_43
              #                    occupy s5 with temp_18_ele_of_*head_0_43_0
    sw      s5,0(a4)
              #                    free s5
              #                    free a4
              #                     591  untrack temp_18_ele_of_*head_0_43_0 
              #                    occupy s5 with temp_18_ele_of_*head_0_43_0
              #                    release s5 with temp_18_ele_of_*head_0_43_0
              #                     589  untrack temp_16_ptr_of_*next_0_43 
              #                    occupy a4 with temp_16_ptr_of_*next_0_43
              #                    release a4 with temp_16_ptr_of_*next_0_43
              #                     126  next_0_2 = chi next_0_1:125 
              #                     128  (nop) 
              #                     130  (nop) 
              #                     131  mu cnt_0_1:130 
              #                     132  store temp_13_value_from_ptr_43_0:i32 temp_17_ptr_of_*head_0_43:ptr->i32 
              #                    occupy s2 with temp_17_ptr_of_*head_0_43
              #                    occupy a3 with temp_13_value_from_ptr_43_0
    sw      a3,0(s2)
              #                    free a3
              #                    free s2
              #                     583  untrack temp_17_ptr_of_*head_0_43 
              #                    occupy s2 with temp_17_ptr_of_*head_0_43
              #                    release s2 with temp_17_ptr_of_*head_0_43
              #                     133  head_0_2 = chi head_0_1:132 
              #                     135  (nop) 
              #                     136  mu cnt_0_1:135 
              #                     138  temp_22_arithop_43_0 = Add i32 temp_13_value_from_ptr_43_0, 1_0 
              #                    occupy a3 with temp_13_value_from_ptr_43_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s2 with temp_22_arithop_43_0
    ADDW    s2,a3,a4
              #                    free a3
              #                    free a4
              #                    free s2
              #                     584  untrack temp_13_value_from_ptr_43_0 
              #                    occupy a3 with temp_13_value_from_ptr_43_0
              #                    release a3 with temp_13_value_from_ptr_43_0
              #                     139  store temp_22_arithop_43_0:i32 *cnt_0:ptr->i32 
              #                    occupy a3 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a3, cnt
              #                    occupy reg a3 with *cnt_0
              #                    occupy s2 with temp_22_arithop_43_0
    sw      s2,0(a3)
              #                    free s2
              #                    free a3
              #                     590  untrack temp_22_arithop_43_0 
              #                    occupy s2 with temp_22_arithop_43_0
              #                    release s2 with temp_22_arithop_43_0
              #                     140  cnt_0_2 = chi cnt_0_1:139 
              #                     142  temp_23_value_from_ptr_43_0 = load *cnt_0:ptr->i32 
              #                    occupy s2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      s2, cnt
              #                    occupy reg s2 with *cnt_0
              #                    occupy s5 with temp_23_value_from_ptr_43_0
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                     143  mu cnt_0_2:142 
              #                     145  temp_24_ptr_of_*to_0_43 = GEP *to_0:ptr->i32 [Some(temp_23_value_from_ptr_43_0)] 
              #                    occupy s6 with temp_24_ptr_of_*to_0_43
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with temp_23_value_from_ptr_43_0
    mv      s7, s5
              #                    free s5
              #                    occupy s5 with temp_23_value_from_ptr_43_0
              #                    store to temp_23_value_from_ptr_43_0 in mem offset legal
    sw      s5,48(sp)
              #                    release s5 with temp_23_value_from_ptr_43_0
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s5 with *to_0
              #                       load label to as ptr to reg
    la      s5, to
              #                    occupy reg s5 with *to_0
    add     s6,s6,s5
              #                    free s5
              #                    free s6
              #                     146  store from_41_0:i32 temp_24_ptr_of_*to_0_43:ptr->i32 
              #                    occupy s6 with temp_24_ptr_of_*to_0_43
              #                    occupy a0 with from_41_0
    sw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                     581  untrack temp_24_ptr_of_*to_0_43 
              #                    occupy s6 with temp_24_ptr_of_*to_0_43
              #                    release s6 with temp_24_ptr_of_*to_0_43
              #                     580  untrack from_41_0 
              #                    occupy a0 with from_41_0
              #                    release a0 with from_41_0
              #                     147  to_0_3 = chi to_0_2:146 
              #                     149  (nop) 
              #                     150  mu cnt_0_2:149 
              #                     152  temp_26_ptr_of_*next_0_43 = GEP *next_0:ptr->i32 [Some(temp_23_value_from_ptr_43_0)] 
              #                    occupy a0 with temp_26_ptr_of_*next_0_43
    li      a0, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s6 with temp_23_value_from_ptr_43_0
              #                    load from temp_23_value_from_ptr_43_0 in mem


    lw      s6,48(sp)
    mv      s5, s6
              #                    free s6
              #                    occupy s6 with temp_23_value_from_ptr_43_0
              #                    store to temp_23_value_from_ptr_43_0 in mem offset legal
    sw      s6,48(sp)
              #                    release s6 with temp_23_value_from_ptr_43_0
    add     a0,a0,s5
              #                    free s5
    slli a0,a0,2
              #                    occupy s6 with *next_0
              #                       load label next as ptr to reg
    la      s6, next
              #                    occupy reg s6 with *next_0
    add     a0,a0,s6
              #                    free s6
              #                    free a0
              #                     154  temp_27_ptr_of_*head_0_43 = GEP *head_0:Array:i32:[None] [Some(To_41_0)] 
              #                    occupy s6 with temp_27_ptr_of_*head_0_43
    li      s6, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with To_41_0
    mv      s8, a1
              #                    free a1
              #                    occupy a1 with To_41_0
              #                    store to To_41_0 in mem offset legal
    sw      a1,104(sp)
              #                    release a1 with To_41_0
    add     s6,s6,s8
              #                    free s8
    slli s6,s6,2
              #                    occupy a1 with *head_0
              #                       load label head as ptr to reg
    la      a1, head
              #                    occupy reg a1 with *head_0
    add     s6,s6,a1
              #                    free a1
              #                    free s6
              #                     579  untrack To_41_0 
              #                     156  temp_28_ele_of_*head_0_43_0 = load temp_27_ptr_of_*head_0_43:ptr->i32 
              #                    occupy s6 with temp_27_ptr_of_*head_0_43
              #                    occupy a1 with temp_28_ele_of_*head_0_43_0
    lw      a1,0(s6)
              #                    free a1
              #                    occupy a1 with temp_28_ele_of_*head_0_43_0
              #                    store to temp_28_ele_of_*head_0_43_0 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_28_ele_of_*head_0_43_0
              #                    free s6
              #                     157  mu head_0_2:156 
              #                     158  store temp_28_ele_of_*head_0_43_0:i32 temp_26_ptr_of_*next_0_43:ptr->i32 
              #                    occupy a0 with temp_26_ptr_of_*next_0_43
              #                    occupy a1 with temp_28_ele_of_*head_0_43_0
              #                    load from temp_28_ele_of_*head_0_43_0 in mem


    lw      a1,20(sp)
    sw      a1,0(a0)
              #                    free a1
              #                    occupy a1 with temp_28_ele_of_*head_0_43_0
              #                    store to temp_28_ele_of_*head_0_43_0 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_28_ele_of_*head_0_43_0
              #                    free a0
              #                     587  untrack temp_28_ele_of_*head_0_43_0 
              #                     578  untrack temp_26_ptr_of_*next_0_43 
              #                    occupy a0 with temp_26_ptr_of_*next_0_43
              #                    release a0 with temp_26_ptr_of_*next_0_43
              #                     159  next_0_3 = chi next_0_2:158 
              #                     161  (nop) 
              #                     163  (nop) 
              #                     164  mu cnt_0_2:163 
              #                     165  store temp_23_value_from_ptr_43_0:i32 temp_27_ptr_of_*head_0_43:ptr->i32 
              #                    occupy s6 with temp_27_ptr_of_*head_0_43
              #                    occupy a0 with temp_23_value_from_ptr_43_0
              #                    load from temp_23_value_from_ptr_43_0 in mem


    lw      a0,48(sp)
    sw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                     585  untrack temp_27_ptr_of_*head_0_43 
              #                    occupy s6 with temp_27_ptr_of_*head_0_43
              #                    release s6 with temp_27_ptr_of_*head_0_43
              #                     166  head_0_3 = chi head_0_2:165 
              #                     168  (nop) 
              #                     169  mu cnt_0_2:168 
              #                     171  temp_32_arithop_43_0 = Add i32 temp_23_value_from_ptr_43_0, 1_0 
              #                    occupy a0 with temp_23_value_from_ptr_43_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a1 with temp_32_arithop_43_0
    ADDW    a1,a0,a4
              #                    free a0
              #                    free a4
              #                    free a1
              #                     588  untrack temp_23_value_from_ptr_43_0 
              #                    occupy a0 with temp_23_value_from_ptr_43_0
              #                    release a0 with temp_23_value_from_ptr_43_0
              #                     172  store temp_32_arithop_43_0:i32 *cnt_0:ptr->i32 
              #                    occupy a0 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a0, cnt
              #                    occupy reg a0 with *cnt_0
              #                    occupy a1 with temp_32_arithop_43_0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     586  untrack temp_32_arithop_43_0 
              #                    occupy a1 with temp_32_arithop_43_0
              #                    release a1 with temp_32_arithop_43_0
              #                     173  cnt_0_3 = chi cnt_0_2:172 
              #                          jump label: exit_16 
    j       .exit_16
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                     175  label exit_16: 
.exit_16:
              #                     416  mu cnt_0_3:174 
              #                     417  mu next_0_3:174 
              #                     418  mu to_0_3:174 
              #                     419  mu head_0_3:174 
              #                     174  ret 
              #                    load from ra_add_edge_0 in mem
    ld      ra,120(sp)
              #                    load from s0_add_edge_0 in mem
    ld      s0,112(sp)
    addi    sp,sp,128
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     41   Define init_0 "" -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 32|s0_init:8 at 24|i _s53 _i1:4 at 20|none:4 at 16|temp_33_ptr_of_*head_0:8 at 8|temp_34_arithop _s57 _i0:4 at 4|temp_35_cmp _s55 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-40
              #                    store to ra_init_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     420  head_0_4 = chi head_0_0:41 
              #                     177  alloc i32 [i_53] 
              #                     178  alloc ptr->i32 [temp_33_ptr_of_*head_0_57] 
              #                     182  alloc i32 [temp_34_arithop_57] 
              #                     185  alloc i1 [temp_35_cmp_55] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     176  (nop) 
              #                     543  i_53_1 = i32 0_0 
              #                    occupy a0 with i_53_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_56 
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: i_53_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     187  label while.head_56: 
.while.head_56:
              #                     186  temp_35_cmp_55_0 = icmp i32 Slt i_53_1, 1005_0 
              #                    occupy a0 with i_53_1
              #                    occupy a1 with 1005_0
    li      a1, 1005
              #                    occupy a2 with temp_35_cmp_55_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     190  br i1 temp_35_cmp_55_0, label while.body_56, label while.exit_56 
              #                    occupy a2 with temp_35_cmp_55_0
              #                    free a2
              #                    occupy a2 with temp_35_cmp_55_0
    bnez    a2, .while.body_56
              #                    free a2
    j       .while.exit_56
              #                    regtab     a0:Freed { symidx: i_53_1, tracked: true } |     a2:Freed { symidx: temp_35_cmp_55_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     188  label while.body_56: 
.while.body_56:
              #                     179  temp_33_ptr_of_*head_0_57 = GEP *head_0:ptr->i32 [Some(i_53_1)] 
              #                    occupy a1 with temp_33_ptr_of_*head_0_57
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_53_1
    mv      a3, a0
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *head_0
              #                       load label head as ptr to reg
    la      a4, head
              #                    occupy reg a4 with *head_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                     180  store -1_0:i32 temp_33_ptr_of_*head_0_57:ptr->i32 
              #                    occupy a1 with temp_33_ptr_of_*head_0_57
              #                    occupy a5 with -1_0
    li      a5, -1
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     181  head_0_6 = chi head_0_5:180 
              #                     183  temp_34_arithop_57_0 = Add i32 i_53_1, 1_0 
              #                    occupy a0 with i_53_1
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_34_arithop_57_0
    ADDW    a7,a0,a6
              #                    free a0
              #                    free a6
              #                    free a7
              #                     184  (nop) 
              #                     544  i_53_1 = i32 temp_34_arithop_57_0 
              #                    occupy a7 with temp_34_arithop_57_0
              #                    occupy a0 with i_53_1
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_56 
              #                    occupy a2 with temp_35_cmp_55_0
              #                    store to temp_35_cmp_55_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_35_cmp_55_0
              #                    occupy a7 with temp_34_arithop_57_0
              #                    store to temp_34_arithop_57_0 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_34_arithop_57_0
              #                    occupy a1 with temp_33_ptr_of_*head_0_57
              #                    store to temp_33_ptr_of_*head_0_57 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_33_ptr_of_*head_0_57
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: i_53_1, tracked: true } |     a2:Freed { symidx: temp_35_cmp_55_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     189  label while.exit_56: 
.while.exit_56:
              #                     592  untrack i_53_1 
              #                    occupy a0 with i_53_1
              #                    release a0 with i_53_1
              #                     421  mu head_0_5:191 
              #                     191  ret 
              #                    load from ra_init_0 in mem
    ld      ra,32(sp)
              #                    load from s0_init_0 in mem
    ld      s0,24(sp)
    addi    sp,sp,40
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     42   Define inqueue_0 "x_60_0," -> inqueue_ret_0 
    .globl inqueue
    .type inqueue,@function
inqueue:
              #                    mem layout:|ra_inqueue:8 at 48|s0_inqueue:8 at 40|x _s60 _i0:4 at 36|none:4 at 32|temp_36_ptr_of_*inq_0:8 at 24|temp_37_value_from_ptr _s62 _i0:4 at 20|temp_38_arithop _s62 _i0:4 at 16|temp_39_value_from_ptr _s62 _i0:4 at 12|none:4 at 8|temp_40_ptr_of_*que_0:8 at 0
    addi    sp,sp,-56
              #                    store to ra_inqueue_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_inqueue_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     422  inq_0_1 = chi inq_0_0:42 
              #                     423  tail_0_1 = chi tail_0_0:42 
              #                     424  que_0_1 = chi que_0_0:42 
              #                     192  alloc ptr->i32 [temp_36_ptr_of_*inq_0_62] 
              #                     196  alloc i32 [temp_37_value_from_ptr_62] 
              #                     199  alloc i32 [temp_38_arithop_62] 
              #                     203  alloc i32 [temp_39_value_from_ptr_62] 
              #                     206  alloc ptr->i32 [temp_40_ptr_of_*que_0_62] 
              #                    regtab     a0:Freed { symidx: x_60_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     193  temp_36_ptr_of_*inq_0_62 = GEP *inq_0:ptr->i32 [Some(x_60_0)] 
              #                    occupy a1 with temp_36_ptr_of_*inq_0_62
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with x_60_0
    mv      a2, a0
              #                    free a0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *inq_0
              #                       load label inq as ptr to reg
    la      a3, inq
              #                    occupy reg a3 with *inq_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     194  store 1_0:i32 temp_36_ptr_of_*inq_0_62:ptr->i32 
              #                    occupy a1 with temp_36_ptr_of_*inq_0_62
              #                    occupy a4 with 1_0
    li      a4, 1
    sw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     596  untrack temp_36_ptr_of_*inq_0_62 
              #                    occupy a1 with temp_36_ptr_of_*inq_0_62
              #                    release a1 with temp_36_ptr_of_*inq_0_62
              #                     195  inq_0_2 = chi inq_0_1:194 
              #                     197  temp_37_value_from_ptr_62_0 = load *tail_0:ptr->i32 
              #                    occupy a1 with *tail_0
              #                       load label tail as ptr to reg
    la      a1, tail
              #                    occupy reg a1 with *tail_0
              #                    occupy a5 with temp_37_value_from_ptr_62_0
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     198  mu tail_0_1:197 
              #                     200  temp_38_arithop_62_0 = Add i32 temp_37_value_from_ptr_62_0, 1_0 
              #                    occupy a5 with temp_37_value_from_ptr_62_0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a6 with temp_38_arithop_62_0
    ADDW    a6,a5,a4
              #                    free a5
              #                    free a4
              #                    free a6
              #                     595  untrack temp_37_value_from_ptr_62_0 
              #                    occupy a5 with temp_37_value_from_ptr_62_0
              #                    release a5 with temp_37_value_from_ptr_62_0
              #                     201  store temp_38_arithop_62_0:i32 *tail_0:ptr->i32 
              #                    occupy a5 with *tail_0
              #                       load label tail as ptr to reg
    la      a5, tail
              #                    occupy reg a5 with *tail_0
              #                    occupy a6 with temp_38_arithop_62_0
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                     597  untrack temp_38_arithop_62_0 
              #                    occupy a6 with temp_38_arithop_62_0
              #                    release a6 with temp_38_arithop_62_0
              #                     202  tail_0_2 = chi tail_0_1:201 
              #                     204  temp_39_value_from_ptr_62_0 = load *tail_0:ptr->i32 
              #                    occupy a6 with *tail_0
              #                       load label tail as ptr to reg
    la      a6, tail
              #                    occupy reg a6 with *tail_0
              #                    occupy a7 with temp_39_value_from_ptr_62_0
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                     205  mu tail_0_2:204 
              #                     207  temp_40_ptr_of_*que_0_62 = GEP *que_0:ptr->i32 [Some(temp_39_value_from_ptr_62_0)] 
              #                    occupy s1 with temp_40_ptr_of_*que_0_62
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with temp_39_value_from_ptr_62_0
    mv      s2, a7
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *que_0
              #                       load label que as ptr to reg
    la      s3, que
              #                    occupy reg s3 with *que_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                     598  untrack temp_39_value_from_ptr_62_0 
              #                    occupy a7 with temp_39_value_from_ptr_62_0
              #                    release a7 with temp_39_value_from_ptr_62_0
              #                     208  store x_60_0:i32 temp_40_ptr_of_*que_0_62:ptr->i32 
              #                    occupy s1 with temp_40_ptr_of_*que_0_62
              #                    occupy a0 with x_60_0
    sw      a0,0(s1)
              #                    free a0
              #                    free s1
              #                     594  untrack temp_40_ptr_of_*que_0_62 
              #                    occupy s1 with temp_40_ptr_of_*que_0_62
              #                    release s1 with temp_40_ptr_of_*que_0_62
              #                     593  untrack x_60_0 
              #                    occupy a0 with x_60_0
              #                    release a0 with x_60_0
              #                     209  que_0_2 = chi que_0_1:208 
              #                          jump label: exit_24 
    j       .exit_24
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                     211  label exit_24: 
.exit_24:
              #                     425  mu inq_0_2:210 
              #                     426  mu tail_0_2:210 
              #                     427  mu que_0_2:210 
              #                     210  ret 
              #                    load from ra_inqueue_0 in mem
    ld      ra,48(sp)
              #                    load from s0_inqueue_0 in mem
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     43   Define pop_queue_0 "" -> pop_queue_ret_0 
    .globl pop_queue
    .type pop_queue,@function
pop_queue:
              #                    mem layout:|ra_pop_queue:8 at 48|s0_pop_queue:8 at 40|temp_41_value_from_ptr _s67 _i0:4 at 36|temp_42_arithop _s67 _i0:4 at 32|temp_43_value_from_ptr _s67 _i0:4 at 28|none:4 at 24|temp_44_ptr_of_*que_0:8 at 16|temp_45_ele_of_*que_0 _s67 _i0:4 at 12|none:4 at 8|temp_47_ptr_of_*que_0:8 at 0
    addi    sp,sp,-56
              #                    store to ra_pop_queue_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_pop_queue_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     428  h_0_1 = chi h_0_0:43 
              #                     212  alloc i32 [temp_41_value_from_ptr_67] 
              #                     215  alloc i32 [temp_42_arithop_67] 
              #                     219  alloc i32 [temp_43_value_from_ptr_67] 
              #                     222  alloc ptr->i32 [temp_44_ptr_of_*que_0_67] 
              #                     224  alloc i32 [temp_45_ele_of_*que_0_67] 
              #                     228  alloc i32 [res_67] 
              #                     230  alloc i32 [temp_46_value_from_ptr_67] 
              #                     233  alloc ptr->i32 [temp_47_ptr_of_*que_0_67] 
              #                     235  alloc i32 [temp_48_ele_of_*que_0_67] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     213  temp_41_value_from_ptr_67_0 = load *h_0:ptr->i32 
              #                    occupy a0 with *h_0
              #                       load label h as ptr to reg
    la      a0, h
              #                    occupy reg a0 with *h_0
              #                    occupy a1 with temp_41_value_from_ptr_67_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     214  mu h_0_1:213 
              #                     216  temp_42_arithop_67_0 = Add i32 temp_41_value_from_ptr_67_0, 1_0 
              #                    occupy a1 with temp_41_value_from_ptr_67_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_42_arithop_67_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     601  untrack temp_41_value_from_ptr_67_0 
              #                    occupy a1 with temp_41_value_from_ptr_67_0
              #                    release a1 with temp_41_value_from_ptr_67_0
              #                     217  store temp_42_arithop_67_0:i32 *h_0:ptr->i32 
              #                    occupy a1 with *h_0
              #                       load label h as ptr to reg
    la      a1, h
              #                    occupy reg a1 with *h_0
              #                    occupy a3 with temp_42_arithop_67_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     599  untrack temp_42_arithop_67_0 
              #                    occupy a3 with temp_42_arithop_67_0
              #                    release a3 with temp_42_arithop_67_0
              #                     218  h_0_2 = chi h_0_1:217 
              #                     220  temp_43_value_from_ptr_67_0 = load *h_0:ptr->i32 
              #                    occupy a3 with *h_0
              #                       load label h as ptr to reg
    la      a3, h
              #                    occupy reg a3 with *h_0
              #                    occupy a4 with temp_43_value_from_ptr_67_0
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     221  mu h_0_2:220 
              #                     223  temp_44_ptr_of_*que_0_67 = GEP *que_0:Array:i32:[None] [Some(temp_43_value_from_ptr_67_0)] 
              #                    occupy a5 with temp_44_ptr_of_*que_0_67
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with temp_43_value_from_ptr_67_0
    mv      a6, a4
              #                    free a4
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a7 with *que_0
              #                       load label que as ptr to reg
    la      a7, que
              #                    occupy reg a7 with *que_0
    add     a5,a5,a7
              #                    free a7
              #                    free a5
              #                     602  untrack temp_43_value_from_ptr_67_0 
              #                    occupy a4 with temp_43_value_from_ptr_67_0
              #                    release a4 with temp_43_value_from_ptr_67_0
              #                     225  temp_45_ele_of_*que_0_67_0 = load temp_44_ptr_of_*que_0_67:ptr->i32 
              #                    occupy a5 with temp_44_ptr_of_*que_0_67
              #                    occupy a4 with temp_45_ele_of_*que_0_67_0
    lw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                     600  untrack temp_44_ptr_of_*que_0_67 
              #                    occupy a5 with temp_44_ptr_of_*que_0_67
              #                    release a5 with temp_44_ptr_of_*que_0_67
              #                     226  mu que_0_0:225 
              #                     227  (nop) 
              #                     231  (nop) 
              #                     232  mu h_0_2:231 
              #                     234  (nop) 
              #                     236  (nop) 
              #                     237  mu que_0_0:236 
              #                     429  mu h_0_2:238 
              #                     238  ret temp_45_ele_of_*que_0_67_0 
              #                    load from ra_pop_queue_0 in mem
    ld      ra,48(sp)
              #                    load from s0_pop_queue_0 in mem
    ld      s0,40(sp)
              #                    occupy a4 with temp_45_ele_of_*que_0_67_0
              #                    store to temp_45_ele_of_*que_0_67_0 in mem offset legal
    sw      a4,12(sp)
              #                    release a4 with temp_45_ele_of_*que_0_67_0
              #                    occupy a0 with temp_45_ele_of_*que_0_67_0
              #                    load from temp_45_ele_of_*que_0_67_0 in mem


    lw      a0,12(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     44   Define same_0 "s_71_0,t_71_0," -> same_ret_0 
    .globl same
    .type same,@function
same:
              #                    mem layout:|ra_same:8 at 152|s0_same:8 at 144|s _s71 _i0:4 at 140|t _s71 _i0:4 at 136|res _s73 _i1:4 at 132|res _s73 _i3:4 at 128|i _s73 _i1:4 at 124|none:4 at 120|temp_49_ptr_of_*que_0:8 at 112|temp_50_ele_of_*que_0 _s96 _i0:4 at 108|none:4 at 104|temp_51_ptr_of_*inq_0:8 at 96|temp_52_arithop _s96 _i0:4 at 92|temp_53_ret_of_pop_queue _s80 _i0:4 at 88|temp_54_ptr_of_*head_0:8 at 80|temp_55_ele_of_*head_0 _s80 _i0:4 at 76|i _s80 _i1:4 at 72|temp_56_ptr_of_*next_0:8 at 64|temp_57_ele_of_*next_0 _s88 _i0:4 at 60|none:4 at 56|temp_58_ptr_of_*to_0:8 at 48|temp_60_value_from_ptr _s78 _i0:4 at 44|temp_61_value_from_ptr _s78 _i0:4 at 40|temp_62_cmp _s78 _i0:1 at 39|temp_64_cmp _s94 _i0:1 at 38|temp_65_cmp _s82 _i0:1 at 37|temp_66_cmp _s86 _i0:1 at 36|none:4 at 32|temp_67_ptr_of_*to_0:8 at 24|temp_68_ele_of_*to_0 _s89 _i0:4 at 20|none:4 at 16|temp_69_ptr_of_*inq_0:8 at 8|temp_70_ele_of_*inq_0 _s89 _i0:4 at 4|temp_71_booltrans _s89 _i0:1 at 3|temp_72_logicnot _s89 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-160
              #                    store to ra_same_0 in mem offset legal
    sd      ra,152(sp)
              #                    store to s0_same_0 in mem offset legal
    sd      s0,144(sp)
    addi    s0,sp,160
              #                     430  h_0_3 = chi h_0_0:44 
              #                     431  que_0_3 = chi que_0_0:44 
              #                     432  tail_0_3 = chi tail_0_0:44 
              #                     433  inq_0_3 = chi inq_0_0:44 
              #                     247  alloc i32 [res_73] 
              #                     249  alloc i32 [i_73] 
              #                     252  alloc ptr->i32 [temp_49_ptr_of_*que_0_96] 
              #                     254  alloc i32 [temp_50_ele_of_*que_0_96] 
              #                     257  alloc ptr->i32 [temp_51_ptr_of_*inq_0_96] 
              #                     261  alloc i32 [temp_52_arithop_96] 
              #                     264  alloc i32 [temp_53_ret_of_pop_queue_80] 
              #                     267  alloc i32 [x_80] 
              #                     268  alloc ptr->i32 [temp_54_ptr_of_*head_0_80] 
              #                     270  alloc i32 [temp_55_ele_of_*head_0_80] 
              #                     274  alloc i32 [i_80] 
              #                     275  alloc ptr->i32 [temp_56_ptr_of_*next_0_88] 
              #                     277  alloc i32 [temp_57_ele_of_*next_0_88] 
              #                     281  alloc ptr->i32 [temp_58_ptr_of_*to_0_89] 
              #                     283  alloc i32 [temp_59_ele_of_*to_0_89] 
              #                     288  alloc i32 [temp_60_value_from_ptr_78] 
              #                     291  alloc i32 [temp_61_value_from_ptr_78] 
              #                     294  alloc i1 [temp_62_cmp_78] 
              #                     300  alloc i32 [temp_63_value_from_ptr_94] 
              #                     303  alloc i1 [temp_64_cmp_94] 
              #                     311  alloc i1 [temp_65_cmp_82] 
              #                     316  alloc i1 [temp_66_cmp_86] 
              #                     321  alloc ptr->i32 [temp_67_ptr_of_*to_0_89] 
              #                     323  alloc i32 [temp_68_ele_of_*to_0_89] 
              #                     326  alloc ptr->i32 [temp_69_ptr_of_*inq_0_89] 
              #                     328  alloc i32 [temp_70_ele_of_*inq_0_89] 
              #                     331  alloc i1 [temp_71_booltrans_89] 
              #                     333  alloc i1 [temp_72_logicnot_89] 
              #                    regtab     a0:Freed { symidx: s_71_0, tracked: true } |     a1:Freed { symidx: t_71_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     241  store 0_0:i32 *h_0:ptr->i32 
              #                    occupy a2 with *h_0
              #                       load label h as ptr to reg
    la      a2, h
              #                    occupy reg a2 with *h_0
              #                    occupy a3 with 0_0
    li      a3, 0
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     242  h_0_4 = chi h_0_3:241 
              #                     243  store 0_0:i32 *tail_0:ptr->i32 
              #                    occupy a4 with *tail_0
              #                       load label tail as ptr to reg
    la      a4, tail
              #                    occupy reg a4 with *tail_0
              #                    found literal reg Some(a3) already exist with 0_0
              #                    occupy a3 with 0_0
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                     244  tail_0_4 = chi tail_0_3:243 
              #                     245   Call void inqueue_0(s_71_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with s_71_0
              #                    store to s_71_0 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with s_71_0
              #                    occupy a1 with t_71_0
              #                    store to t_71_0 in mem offset legal
    sw      a1,136(sp)
              #                    release a1 with t_71_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_s_71_0_0
              #                    load from s_71_0 in mem


    lw      a0,140(sp)
              #                    arg load ended


    call    inqueue
              #                     603  untrack s_71_0 
              #                     434  mu tail_0_4:245 
              #                     435  mu que_0_3:245 
              #                     436  mu inq_0_3:245 
              #                     437  inq_0_4 = chi inq_0_3:245 
              #                     438  tail_0_5 = chi tail_0_4:245 
              #                     439  que_0_4 = chi que_0_3:245 
              #                     246  (nop) 
              #                     547  res_73_1 = i32 0_0 
              #                    occupy a0 with res_73_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_79 
    j       .while.head_79
              #                    regtab     a0:Freed { symidx: res_73_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     296  label while.head_79: 
.while.head_79:
              #                     289  temp_60_value_from_ptr_78_0 = load *tail_0:ptr->i32 
              #                    occupy a1 with *tail_0
              #                       load label tail as ptr to reg
    la      a1, tail
              #                    occupy reg a1 with *tail_0
              #                    occupy a2 with temp_60_value_from_ptr_78_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     290  mu tail_0_6:289 
              #                     292  temp_61_value_from_ptr_78_0 = load *h_0:ptr->i32 
              #                    occupy a3 with *h_0
              #                       load label h as ptr to reg
    la      a3, h
              #                    occupy reg a3 with *h_0
              #                    occupy a4 with temp_61_value_from_ptr_78_0
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     293  mu h_0_5:292 
              #                     295  temp_62_cmp_78_0 = icmp i32 Slt temp_61_value_from_ptr_78_0, temp_60_value_from_ptr_78_0 
              #                    occupy a4 with temp_61_value_from_ptr_78_0
              #                    occupy a2 with temp_60_value_from_ptr_78_0
              #                    occupy a5 with temp_62_cmp_78_0
    slt     a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                     299  br i1 temp_62_cmp_78_0, label while.body_79, label while.exit_79 
              #                    occupy a5 with temp_62_cmp_78_0
              #                    free a5
              #                    occupy a5 with temp_62_cmp_78_0
    bnez    a5, .while.body_79
              #                    free a5
    j       .while.exit_79
              #                    regtab     a0:Freed { symidx: res_73_1, tracked: true } |     a2:Freed { symidx: temp_60_value_from_ptr_78_0, tracked: true } |     a4:Freed { symidx: temp_61_value_from_ptr_78_0, tracked: true } |     a5:Freed { symidx: temp_62_cmp_78_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     297  label while.body_79: 
.while.body_79:
              #                     265  temp_53_ret_of_pop_queue_80_0 =  Call i32 pop_queue_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with res_73_1
              #                    store to res_73_1 in mem offset legal
    sw      a0,132(sp)
              #                    release a0 with res_73_1
              #                    occupy a2 with temp_60_value_from_ptr_78_0
              #                    store to temp_60_value_from_ptr_78_0 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with temp_60_value_from_ptr_78_0
              #                    occupy a4 with temp_61_value_from_ptr_78_0
              #                    store to temp_61_value_from_ptr_78_0 in mem offset legal
    sw      a4,40(sp)
              #                    release a4 with temp_61_value_from_ptr_78_0
              #                    occupy a5 with temp_62_cmp_78_0
              #                    store to temp_62_cmp_78_0 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_62_cmp_78_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    pop_queue
              #                     440  mu que_0_5:265 
              #                     441  mu h_0_5:265 
              #                     442  h_0_6 = chi h_0_5:265 
              #                     266  (nop) 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_pop_queue_80_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     312  temp_65_cmp_82_0 = icmp i32 Eq temp_53_ret_of_pop_queue_80_0, t_71_0 
              #                    occupy a0 with temp_53_ret_of_pop_queue_80_0
              #                    occupy a1 with t_71_0
              #                    load from t_71_0 in mem


    lw      a1,136(sp)
              #                    occupy a2 with temp_65_cmp_82_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     315  br i1 temp_65_cmp_82_0, label branch_true_83, label UP_14_0 
              #                    occupy a2 with temp_65_cmp_82_0
              #                    free a2
              #                    occupy a2 with temp_65_cmp_82_0
    bnez    a2, .branch_true_83
              #                    free a2
    j       .UP_14_0
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_pop_queue_80_0, tracked: true } |     a1:Freed { symidx: t_71_0, tracked: true } |     a2:Freed { symidx: temp_65_cmp_82_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     313  label branch_true_83: 
.branch_true_83:
              #                     613  untrack temp_62_cmp_78_0 
              #                     612  untrack temp_60_value_from_ptr_78_0 
              #                     611  untrack temp_65_cmp_82_0 
              #                    occupy a2 with temp_65_cmp_82_0
              #                    release a2 with temp_65_cmp_82_0
              #                     610  untrack temp_64_cmp_94_0 
              #                     609  untrack temp_50_ele_of_*que_0_96_0 
              #                     608  untrack temp_49_ptr_of_*que_0_96 
              #                     607  untrack temp_61_value_from_ptr_78_0 
              #                     606  untrack temp_52_arithop_96_0 
              #                     605  untrack temp_51_ptr_of_*inq_0_96 
              #                     287  (nop) 
              #                     548  res_73_3 = i32 1_0 
              #                    occupy a2 with res_73_3
    li      a2, 1
              #                    free a2
              #                          jump label: branch_false_83 
    j       .branch_false_83
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_pop_queue_80_0, tracked: true } |     a1:Freed { symidx: t_71_0, tracked: true } |     a2:Freed { symidx: res_73_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     314  label branch_false_83: 
.branch_false_83:
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_pop_queue_80_0, tracked: true } |     a1:Freed { symidx: t_71_0, tracked: true } |     a2:Freed { symidx: res_73_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     269  temp_54_ptr_of_*head_0_80 = GEP *head_0:Array:i32:[None] [Some(temp_53_ret_of_pop_queue_80_0)] 
              #                    occupy a3 with temp_54_ptr_of_*head_0_80
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with temp_53_ret_of_pop_queue_80_0
    mv      a4, a0
              #                    free a0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *head_0
              #                       load label head as ptr to reg
    la      a5, head
              #                    occupy reg a5 with *head_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     271  temp_55_ele_of_*head_0_80_0 = load temp_54_ptr_of_*head_0_80:ptr->i32 
              #                    occupy a3 with temp_54_ptr_of_*head_0_80
              #                    occupy a6 with temp_55_ele_of_*head_0_80_0
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     272  mu head_0_0:271 
              #                     273  (nop) 
              #                     549  i_80_1 = i32 temp_55_ele_of_*head_0_80_0 
              #                    occupy a6 with temp_55_ele_of_*head_0_80_0
              #                    occupy a7 with i_80_1
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                          jump label: while.head_87 
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_pop_queue_80_0, tracked: true } |     a1:Freed { symidx: t_71_0, tracked: true } |     a2:Freed { symidx: res_73_3, tracked: true } |     a3:Freed { symidx: temp_54_ptr_of_*head_0_80, tracked: true } |     a6:Freed { symidx: temp_55_ele_of_*head_0_80_0, tracked: true } |     a7:Freed { symidx: i_80_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     318  label while.head_87: 
.while.head_87:
              #                     317  temp_66_cmp_86_0 = icmp i32 Ne i_80_1, -1_0 
              #                    occupy a7 with i_80_1
              #                    occupy a4 with -1_0
    li      a4, -1
              #                    occupy a5 with temp_66_cmp_86_0
    xor     a5,a7,a4
    snez    a5, a5
              #                    free a7
              #                    free a4
              #                    free a5
              #                     320  br i1 temp_66_cmp_86_0, label while.body_87, label UP_27_0 
              #                    occupy a5 with temp_66_cmp_86_0
              #                    free a5
              #                    occupy a5 with temp_66_cmp_86_0
    bnez    a5, .while.body_87
              #                    free a5
    j       .UP_27_0
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_pop_queue_80_0, tracked: true } |     a1:Freed { symidx: t_71_0, tracked: true } |     a2:Freed { symidx: res_73_3, tracked: true } |     a3:Freed { symidx: temp_54_ptr_of_*head_0_80, tracked: true } |     a5:Freed { symidx: temp_66_cmp_86_0, tracked: true } |     a6:Freed { symidx: temp_55_ele_of_*head_0_80_0, tracked: true } |     a7:Freed { symidx: i_80_1, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     319  label while.body_87: 
.while.body_87:
              #                     322  temp_67_ptr_of_*to_0_89 = GEP *to_0:Array:i32:[None] [Some(i_80_1)] 
              #                    occupy a4 with temp_67_ptr_of_*to_0_89
    li      a4, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with i_80_1
    mv      s1, a7
              #                    free a7
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
              #                    occupy s2 with *to_0
              #                       load label to as ptr to reg
    la      s2, to
              #                    occupy reg s2 with *to_0
    add     a4,a4,s2
              #                    free s2
              #                    free a4
              #                     324  temp_68_ele_of_*to_0_89_0 = load temp_67_ptr_of_*to_0_89:ptr->i32 
              #                    occupy a4 with temp_67_ptr_of_*to_0_89
              #                    occupy s2 with temp_68_ele_of_*to_0_89_0
    lw      s2,0(a4)
              #                    free s2
              #                    occupy s2 with temp_68_ele_of_*to_0_89_0
              #                    store to temp_68_ele_of_*to_0_89_0 in mem offset legal
    sw      s2,20(sp)
              #                    release s2 with temp_68_ele_of_*to_0_89_0
              #                    free a4
              #                     325  mu to_0_0:324 
              #                     327  temp_69_ptr_of_*inq_0_89 = GEP *inq_0:Array:i32:[None] [Some(temp_68_ele_of_*to_0_89_0)] 
              #                    occupy s2 with temp_69_ptr_of_*inq_0_89
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with temp_68_ele_of_*to_0_89_0
              #                    load from temp_68_ele_of_*to_0_89_0 in mem


    lw      s4,20(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with temp_68_ele_of_*to_0_89_0
              #                    store to temp_68_ele_of_*to_0_89_0 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_68_ele_of_*to_0_89_0
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy s3 with *inq_0
              #                       load label inq as ptr to reg
    la      s3, inq
              #                    occupy reg s3 with *inq_0
    add     s2,s2,s3
              #                    free s3
              #                    free s2
              #                    occupy s2 with temp_69_ptr_of_*inq_0_89
              #                    store to temp_69_ptr_of_*inq_0_89 in mem offset legal
    sd      s2,8(sp)
              #                    release s2 with temp_69_ptr_of_*inq_0_89
              #                     329  temp_70_ele_of_*inq_0_89_0 = load temp_69_ptr_of_*inq_0_89:ptr->i32 
              #                    occupy s2 with temp_69_ptr_of_*inq_0_89
              #                    load from temp_69_ptr_of_*inq_0_89 in mem
    ld      s2,8(sp)
              #                    occupy s3 with temp_70_ele_of_*inq_0_89_0
    lw      s3,0(s2)
              #                    free s3
              #                    occupy s3 with temp_70_ele_of_*inq_0_89_0
              #                    store to temp_70_ele_of_*inq_0_89_0 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_70_ele_of_*inq_0_89_0
              #                    free s2
              #                    occupy s2 with temp_69_ptr_of_*inq_0_89
              #                    store to temp_69_ptr_of_*inq_0_89 in mem offset legal
    sd      s2,8(sp)
              #                    release s2 with temp_69_ptr_of_*inq_0_89
              #                     330  mu inq_0_6:329 
              #                     332  temp_71_booltrans_89_0 = icmp i32 Ne temp_70_ele_of_*inq_0_89_0, 0_0 
              #                    occupy s2 with temp_70_ele_of_*inq_0_89_0
              #                    load from temp_70_ele_of_*inq_0_89_0 in mem


    lw      s2,4(sp)
              #                    occupy s3 with 0_0
    li      s3, 0
              #                    occupy s4 with temp_71_booltrans_89_0
    xor     s4,s2,s3
    snez    s4, s4
              #                    free s2
              #                    occupy s2 with temp_70_ele_of_*inq_0_89_0
              #                    store to temp_70_ele_of_*inq_0_89_0 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_70_ele_of_*inq_0_89_0
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_71_booltrans_89_0
              #                    store to temp_71_booltrans_89_0 in mem offset legal
    sb      s4,3(sp)
              #                    release s4 with temp_71_booltrans_89_0
              #                     334  temp_72_logicnot_89_0 = xor i1 temp_71_booltrans_89_0, true 
              #                    occupy s2 with temp_71_booltrans_89_0
              #                    load from temp_71_booltrans_89_0 in mem


    lb      s2,3(sp)
              #                    occupy s3 with temp_72_logicnot_89_0
    seqz    s3, s2
              #                    free s2
              #                    occupy s2 with temp_71_booltrans_89_0
              #                    store to temp_71_booltrans_89_0 in mem offset legal
    sb      s2,3(sp)
              #                    release s2 with temp_71_booltrans_89_0
              #                    free s3
              #                    occupy s3 with temp_72_logicnot_89_0
              #                    store to temp_72_logicnot_89_0 in mem offset legal
    sb      s3,2(sp)
              #                    release s3 with temp_72_logicnot_89_0
              #                     337  br i1 temp_72_logicnot_89_0, label branch_true_90, label branch_false_90 
              #                    occupy s2 with temp_72_logicnot_89_0
              #                    load from temp_72_logicnot_89_0 in mem


    lb      s2,2(sp)
              #                    free s2
              #                    occupy s2 with temp_72_logicnot_89_0
              #                    store to temp_72_logicnot_89_0 in mem offset legal
    sb      s2,2(sp)
              #                    release s2 with temp_72_logicnot_89_0
              #                    occupy s1 with temp_72_logicnot_89_0
              #                    load from temp_72_logicnot_89_0 in mem


    lb      s1,2(sp)
    bnez    s1, .branch_true_90
              #                    free s1
              #                    occupy s1 with temp_72_logicnot_89_0
              #                    store to temp_72_logicnot_89_0 in mem offset legal
    sb      s1,2(sp)
              #                    release s1 with temp_72_logicnot_89_0
    j       .branch_false_90
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_pop_queue_80_0, tracked: true } |     a1:Freed { symidx: t_71_0, tracked: true } |     a2:Freed { symidx: res_73_3, tracked: true } |     a3:Freed { symidx: temp_54_ptr_of_*head_0_80, tracked: true } |     a4:Freed { symidx: temp_67_ptr_of_*to_0_89, tracked: true } |     a5:Freed { symidx: temp_66_cmp_86_0, tracked: true } |     a6:Freed { symidx: temp_55_ele_of_*head_0_80_0, tracked: true } |     a7:Freed { symidx: i_80_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     335  label branch_true_90: 
.branch_true_90:
              #                     619  untrack temp_66_cmp_86_0 
              #                    occupy a5 with temp_66_cmp_86_0
              #                    release a5 with temp_66_cmp_86_0
              #                     618  untrack temp_69_ptr_of_*inq_0_89 
              #                     617  untrack temp_71_booltrans_89_0 
              #                     616  untrack temp_67_ptr_of_*to_0_89 
              #                    occupy a4 with temp_67_ptr_of_*to_0_89
              #                    release a4 with temp_67_ptr_of_*to_0_89
              #                     615  untrack temp_72_logicnot_89_0 
              #                     614  untrack temp_70_ele_of_*inq_0_89_0 
              #                     282  (nop) 
              #                     284  (nop) 
              #                     285  mu to_0_0:284 
              #                     286   Call void inqueue_0(temp_68_ele_of_*to_0_89_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_53_ret_of_pop_queue_80_0
              #                    store to temp_53_ret_of_pop_queue_80_0 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_53_ret_of_pop_queue_80_0
              #                    occupy a1 with t_71_0
              #                    store to t_71_0 in mem offset legal
    sw      a1,136(sp)
              #                    release a1 with t_71_0
              #                    occupy a2 with res_73_3
              #                    store to res_73_3 in mem offset legal
    sw      a2,128(sp)
              #                    release a2 with res_73_3
              #                    occupy a3 with temp_54_ptr_of_*head_0_80
              #                    store to temp_54_ptr_of_*head_0_80 in mem offset legal
    sd      a3,80(sp)
              #                    release a3 with temp_54_ptr_of_*head_0_80
              #                    occupy a6 with temp_55_ele_of_*head_0_80_0
              #                    store to temp_55_ele_of_*head_0_80_0 in mem offset legal
    sw      a6,76(sp)
              #                    release a6 with temp_55_ele_of_*head_0_80_0
              #                    occupy a7 with i_80_1
              #                    store to i_80_1 in mem offset legal
    sw      a7,72(sp)
              #                    release a7 with i_80_1
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_68_ele_of_*to_0_89_0_0
              #                    load from temp_68_ele_of_*to_0_89_0 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    inqueue
              #                     620  untrack temp_68_ele_of_*to_0_89_0 
              #                     443  mu tail_0_7:286 
              #                     444  mu que_0_6:286 
              #                     445  mu inq_0_6:286 
              #                     446  inq_0_7 = chi inq_0_6:286 
              #                     447  tail_0_8 = chi tail_0_7:286 
              #                     448  que_0_7 = chi que_0_6:286 
              #                          jump label: branch_false_90 
              #                    occupy a7 with i_80_1
              #                    load from i_80_1 in mem


    lw      a7,72(sp)
              #                    occupy a6 with temp_55_ele_of_*head_0_80_0
              #                    load from temp_55_ele_of_*head_0_80_0 in mem


    lw      a6,76(sp)
              #                    occupy a5 with temp_66_cmp_86_0
              #                    load from temp_66_cmp_86_0 in mem


    lb      a5,36(sp)
              #                    occupy a1 with t_71_0
              #                    load from t_71_0 in mem


    lw      a1,136(sp)
              #                    occupy a3 with temp_54_ptr_of_*head_0_80
              #                    load from temp_54_ptr_of_*head_0_80 in mem
    ld      a3,80(sp)
              #                    occupy a0 with temp_53_ret_of_pop_queue_80_0
              #                    load from temp_53_ret_of_pop_queue_80_0 in mem


    lw      a0,88(sp)
              #                    occupy a4 with temp_67_ptr_of_*to_0_89
              #                    load from temp_67_ptr_of_*to_0_89 in mem
    ld      a4,24(sp)
              #                    occupy a2 with res_73_3
              #                    load from res_73_3 in mem


    lw      a2,128(sp)
    j       .branch_false_90
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_pop_queue_80_0, tracked: true } |     a1:Freed { symidx: t_71_0, tracked: true } |     a2:Freed { symidx: res_73_3, tracked: true } |     a3:Freed { symidx: temp_54_ptr_of_*head_0_80, tracked: true } |     a4:Freed { symidx: temp_67_ptr_of_*to_0_89, tracked: true } |     a5:Freed { symidx: temp_66_cmp_86_0, tracked: true } |     a6:Freed { symidx: temp_55_ele_of_*head_0_80_0, tracked: true } |     a7:Freed { symidx: i_80_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     336  label branch_false_90: 
.branch_false_90:
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_pop_queue_80_0, tracked: true } |     a1:Freed { symidx: t_71_0, tracked: true } |     a2:Freed { symidx: res_73_3, tracked: true } |     a3:Freed { symidx: temp_54_ptr_of_*head_0_80, tracked: true } |     a4:Freed { symidx: temp_67_ptr_of_*to_0_89, tracked: true } |     a5:Freed { symidx: temp_66_cmp_86_0, tracked: true } |     a6:Freed { symidx: temp_55_ele_of_*head_0_80_0, tracked: true } |     a7:Freed { symidx: i_80_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     276  temp_56_ptr_of_*next_0_88 = GEP *next_0:Array:i32:[None] [Some(i_80_1)] 
              #                    occupy s1 with temp_56_ptr_of_*next_0_88
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with i_80_1
    mv      s2, a7
              #                    free a7
              #                    occupy a7 with i_80_1
              #                    store to i_80_1 in mem offset legal
    sw      a7,72(sp)
              #                    release a7 with i_80_1
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy a7 with *next_0
              #                       load label next as ptr to reg
    la      a7, next
              #                    occupy reg a7 with *next_0
    add     s1,s1,a7
              #                    free a7
              #                    free s1
              #                     278  temp_57_ele_of_*next_0_88_0 = load temp_56_ptr_of_*next_0_88:ptr->i32 
              #                    occupy s1 with temp_56_ptr_of_*next_0_88
              #                    occupy a7 with temp_57_ele_of_*next_0_88_0
    lw      a7,0(s1)
              #                    free a7
              #                    occupy a7 with temp_57_ele_of_*next_0_88_0
              #                    store to temp_57_ele_of_*next_0_88_0 in mem offset legal
    sw      a7,60(sp)
              #                    release a7 with temp_57_ele_of_*next_0_88_0
              #                    free s1
              #                     279  mu next_0_0:278 
              #                     280  (nop) 
              #                     550  i_80_1 = i32 temp_57_ele_of_*next_0_88_0 
              #                    occupy a7 with temp_57_ele_of_*next_0_88_0
              #                    load from temp_57_ele_of_*next_0_88_0 in mem


    lw      a7,60(sp)
              #                    occupy s2 with i_80_1
    mv      s2, a7
              #                    free a7
              #                    occupy a7 with temp_57_ele_of_*next_0_88_0
              #                    store to temp_57_ele_of_*next_0_88_0 in mem offset legal
    sw      a7,60(sp)
              #                    release a7 with temp_57_ele_of_*next_0_88_0
              #                    free s2
              #                    occupy s2 with i_80_1
              #                    store to i_80_1 in mem offset legal
    sw      s2,72(sp)
              #                    release s2 with i_80_1
              #                          jump label: while.head_87 
              #                    occupy a7 with i_80_1
              #                    load from i_80_1 in mem


    lw      a7,72(sp)
              #                    occupy a5 with temp_66_cmp_86_0
              #                    store to temp_66_cmp_86_0 in mem offset legal
    sb      a5,36(sp)
              #                    release a5 with temp_66_cmp_86_0
              #                    occupy s1 with temp_56_ptr_of_*next_0_88
              #                    store to temp_56_ptr_of_*next_0_88 in mem offset legal
    sd      s1,64(sp)
              #                    release s1 with temp_56_ptr_of_*next_0_88
              #                    occupy a4 with temp_67_ptr_of_*to_0_89
              #                    store to temp_67_ptr_of_*to_0_89 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_67_ptr_of_*to_0_89
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_pop_queue_80_0, tracked: true } |     a1:Freed { symidx: t_71_0, tracked: true } |     a2:Freed { symidx: res_73_3, tracked: true } |     a3:Freed { symidx: temp_54_ptr_of_*head_0_80, tracked: true } |     a5:Freed { symidx: temp_66_cmp_86_0, tracked: true } |     a6:Freed { symidx: temp_55_ele_of_*head_0_80_0, tracked: true } |     a7:Freed { symidx: i_80_1, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     545  label UP_27_0: 
.UP_27_0:
              #                     551  res_73_1 = i32 res_73_3 
              #                    occupy a2 with res_73_3
              #                    occupy a4 with res_73_1
    mv      a4, a2
              #                    free a2
              #                    free a4
              #                          jump label: while.head_79 
              #                    occupy a7 with i_80_1
              #                    store to i_80_1 in mem offset legal
    sw      a7,72(sp)
              #                    release a7 with i_80_1
              #                    occupy a6 with temp_55_ele_of_*head_0_80_0
              #                    store to temp_55_ele_of_*head_0_80_0 in mem offset legal
    sw      a6,76(sp)
              #                    release a6 with temp_55_ele_of_*head_0_80_0
              #                    occupy a5 with temp_66_cmp_86_0
              #                    store to temp_66_cmp_86_0 in mem offset legal
    sb      a5,36(sp)
              #                    release a5 with temp_66_cmp_86_0
              #                    occupy a1 with t_71_0
              #                    store to t_71_0 in mem offset legal
    sw      a1,136(sp)
              #                    release a1 with t_71_0
              #                    occupy a3 with temp_54_ptr_of_*head_0_80
              #                    store to temp_54_ptr_of_*head_0_80 in mem offset legal
    sd      a3,80(sp)
              #                    release a3 with temp_54_ptr_of_*head_0_80
              #                    occupy a0 with temp_53_ret_of_pop_queue_80_0
              #                    store to temp_53_ret_of_pop_queue_80_0 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_53_ret_of_pop_queue_80_0
              #                    occupy a4 with res_73_1
              #                    store to res_73_1 in mem offset legal
    sw      a4,132(sp)
              #                    release a4 with res_73_1
              #                    occupy a0 with res_73_1
              #                    load from res_73_1 in mem


    lw      a0,132(sp)
              #                    occupy a2 with res_73_3
              #                    store to res_73_3 in mem offset legal
    sw      a2,128(sp)
              #                    release a2 with res_73_3
    j       .while.head_79
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_pop_queue_80_0, tracked: true } |     a1:Freed { symidx: t_71_0, tracked: true } |     a2:Freed { symidx: temp_65_cmp_82_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     546  label UP_14_0: 
.UP_14_0:
              #                     552  res_73_3 = i32 res_73_1 
              #                    occupy a3 with res_73_1
              #                    load from res_73_1 in mem


    lw      a3,132(sp)
              #                    occupy a4 with res_73_3
    mv      a4, a3
              #                    free a3
              #                    free a4
              #                          jump label: branch_false_83 
              #                    occupy a3 with res_73_1
              #                    store to res_73_1 in mem offset legal
    sw      a3,132(sp)
              #                    release a3 with res_73_1
              #                    occupy a4 with res_73_3
              #                    store to res_73_3 in mem offset legal
    sw      a4,128(sp)
              #                    release a4 with res_73_3
              #                    occupy a2 with temp_65_cmp_82_0
              #                    store to temp_65_cmp_82_0 in mem offset legal
    sb      a2,37(sp)
              #                    release a2 with temp_65_cmp_82_0
              #                    occupy a2 with res_73_3
              #                    load from res_73_3 in mem


    lw      a2,128(sp)
    j       .branch_false_83
              #                    regtab     a0:Freed { symidx: res_73_1, tracked: true } |     a2:Freed { symidx: temp_60_value_from_ptr_78_0, tracked: true } |     a4:Freed { symidx: temp_61_value_from_ptr_78_0, tracked: true } |     a5:Freed { symidx: temp_62_cmp_78_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     298  label while.exit_79: 
.while.exit_79:
              #                     604  untrack t_71_0 
              #                     248  (nop) 
              #                     301  (nop) 
              #                     302  mu tail_0_6:301 
              #                     553  i_73_1 = i32 0_0 
              #                    occupy a1 with i_73_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_95 
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: res_73_1, tracked: true } |     a1:Freed { symidx: i_73_1, tracked: true } |     a2:Freed { symidx: temp_60_value_from_ptr_78_0, tracked: true } |     a4:Freed { symidx: temp_61_value_from_ptr_78_0, tracked: true } |     a5:Freed { symidx: temp_62_cmp_78_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     305  label while.head_95: 
.while.head_95:
              #                     304  temp_64_cmp_94_0 = icmp i32 Sle i_73_1, temp_60_value_from_ptr_78_0 
              #                    occupy a1 with i_73_1
              #                    occupy a2 with temp_60_value_from_ptr_78_0
              #                    occupy a3 with temp_64_cmp_94_0
    slt     a3,a2,a1
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                     308  br i1 temp_64_cmp_94_0, label while.body_95, label while.exit_95 
              #                    occupy a3 with temp_64_cmp_94_0
              #                    free a3
              #                    occupy a3 with temp_64_cmp_94_0
    bnez    a3, .while.body_95
              #                    free a3
    j       .while.exit_95
              #                    regtab     a0:Freed { symidx: res_73_1, tracked: true } |     a1:Freed { symidx: i_73_1, tracked: true } |     a2:Freed { symidx: temp_60_value_from_ptr_78_0, tracked: true } |     a3:Freed { symidx: temp_64_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_61_value_from_ptr_78_0, tracked: true } |     a5:Freed { symidx: temp_62_cmp_78_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     306  label while.body_95: 
.while.body_95:
              #                     253  temp_49_ptr_of_*que_0_96 = GEP *que_0:Array:i32:[None] [Some(i_73_1)] 
              #                    occupy a6 with temp_49_ptr_of_*que_0_96
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_73_1
    mv      a7, a1
              #                    free a1
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy s1 with *que_0
              #                       load label que as ptr to reg
    la      s1, que
              #                    occupy reg s1 with *que_0
    add     a6,a6,s1
              #                    free s1
              #                    free a6
              #                     255  temp_50_ele_of_*que_0_96_0 = load temp_49_ptr_of_*que_0_96:ptr->i32 
              #                    occupy a6 with temp_49_ptr_of_*que_0_96
              #                    occupy s2 with temp_50_ele_of_*que_0_96_0
    lw      s2,0(a6)
              #                    free s2
              #                    free a6
              #                     256  mu que_0_5:255 
              #                     258  temp_51_ptr_of_*inq_0_96 = GEP *inq_0:ptr->i32 [Some(temp_50_ele_of_*que_0_96_0)] 
              #                    occupy s3 with temp_51_ptr_of_*inq_0_96
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with temp_50_ele_of_*que_0_96_0
    mv      s4, s2
              #                    free s2
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with *inq_0
              #                       load label inq as ptr to reg
    la      s5, inq
              #                    occupy reg s5 with *inq_0
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                     259  store 0_0:i32 temp_51_ptr_of_*inq_0_96:ptr->i32 
              #                    occupy s3 with temp_51_ptr_of_*inq_0_96
              #                    occupy s5 with 0_0
    li      s5, 0
    sw      s5,0(s3)
              #                    free s5
              #                    free s3
              #                     260  inq_0_10 = chi inq_0_9:259 
              #                     262  temp_52_arithop_96_0 = Add i32 i_73_1, 1_0 
              #                    occupy a1 with i_73_1
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with temp_52_arithop_96_0
    ADDW    s6,a1,s5
              #                    free a1
              #                    occupy a1 with i_73_1
              #                    store to i_73_1 in mem offset legal
    sw      a1,124(sp)
              #                    release a1 with i_73_1
              #                    free s5
              #                    free s6
              #                     263  (nop) 
              #                     554  i_73_1 = i32 temp_52_arithop_96_0 
              #                    occupy s6 with temp_52_arithop_96_0
              #                    occupy a1 with i_73_1
    mv      a1, s6
              #                    free s6
              #                    occupy s6 with temp_52_arithop_96_0
              #                    store to temp_52_arithop_96_0 in mem offset legal
    sw      s6,92(sp)
              #                    release s6 with temp_52_arithop_96_0
              #                    free a1
              #                          jump label: while.head_95 
              #                    occupy s2 with temp_50_ele_of_*que_0_96_0
              #                    store to temp_50_ele_of_*que_0_96_0 in mem offset legal
    sw      s2,108(sp)
              #                    release s2 with temp_50_ele_of_*que_0_96_0
              #                    occupy a6 with temp_49_ptr_of_*que_0_96
              #                    store to temp_49_ptr_of_*que_0_96 in mem offset legal
    sd      a6,112(sp)
              #                    release a6 with temp_49_ptr_of_*que_0_96
              #                    occupy a3 with temp_64_cmp_94_0
              #                    store to temp_64_cmp_94_0 in mem offset legal
    sb      a3,38(sp)
              #                    release a3 with temp_64_cmp_94_0
              #                    occupy s3 with temp_51_ptr_of_*inq_0_96
              #                    store to temp_51_ptr_of_*inq_0_96 in mem offset legal
    sd      s3,96(sp)
              #                    release s3 with temp_51_ptr_of_*inq_0_96
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: res_73_1, tracked: true } |     a1:Freed { symidx: i_73_1, tracked: true } |     a2:Freed { symidx: temp_60_value_from_ptr_78_0, tracked: true } |     a3:Freed { symidx: temp_64_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_61_value_from_ptr_78_0, tracked: true } |     a5:Freed { symidx: temp_62_cmp_78_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     307  label while.exit_95: 
.while.exit_95:
              #                     621  untrack i_73_1 
              #                    occupy a1 with i_73_1
              #                    release a1 with i_73_1
              #                     449  mu h_0_5:251 
              #                     450  mu que_0_5:251 
              #                     451  mu tail_0_6:251 
              #                     452  mu inq_0_9:251 
              #                     251  ret res_73_1 
              #                    load from ra_same_0 in mem
    ld      ra,152(sp)
              #                    load from s0_same_0 in mem
    ld      s0,144(sp)
              #                    occupy a0 with res_73_1
              #                    store to res_73_1 in mem offset legal
    sw      a0,132(sp)
              #                    release a0 with res_73_1
              #                    occupy a0 with res_73_1
              #                    load from res_73_1 in mem


    lw      a0,132(sp)
    addi    sp,sp,160
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     45   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 64|s0_main:8 at 56|temp_73_ret_of_quick_read _s101 _i0:4 at 52|temp_74_ret_of_quick_read _s101 _i0:4 at 48|temp_75_ret_of_getch _s107 _i0:4 at 44|ch _s107 _i1:4 at 40|temp_76_ret_of_quick_read _s119 _i0:4 at 36|temp_77_ret_of_quick_read _s119 _i0:4 at 32|temp_79_arithop _s107 _i0:4 at 28|temp_80_ret_of_quick_read _s115 _i0:4 at 24|temp_81_ret_of_quick_read _s115 _i0:4 at 20|temp_82_ret_of_same _s115 _i0:4 at 16|temp_83_ret_of_getch _s111 _i0:4 at 12|temp_84_value_from_ptr _s105 _i0:4 at 8|temp_85_ _s2966 _i0:1 at 7|temp_86_cmp _s109 _i0:1 at 6|temp_87_cmp _s109 _i0:1 at 5|temp_88_cmp _s113 _i0:1 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_main_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     453  cnt_0_4 = chi cnt_0_0:45 
              #                     454  h_0_7 = chi h_0_0:45 
              #                     455  tail_0_10 = chi tail_0_0:45 
              #                     456  m_0_1 = chi m_0_0:45 
              #                     457  head_0_7 = chi head_0_0:45 
              #                     458  n_0_1 = chi n_0_0:45 
              #                     459  to_0_4 = chi to_0_0:45 
              #                     460  inq_0_11 = chi inq_0_0:45 
              #                     461  next_0_4 = chi next_0_0:45 
              #                     462  que_0_9 = chi que_0_0:45 
              #                     338  alloc i32 [temp_73_ret_of_quick_read_101] 
              #                     342  alloc i32 [temp_74_ret_of_quick_read_101] 
              #                     349  alloc i32 [temp_75_ret_of_getch_107] 
              #                     352  alloc i32 [ch_107] 
              #                     353  alloc i32 [temp_76_ret_of_quick_read_119] 
              #                     356  alloc i32 [x_119] 
              #                     357  alloc i32 [temp_77_ret_of_quick_read_119] 
              #                     360  alloc i32 [y_119] 
              #                     362  alloc i32 [temp_78_value_from_ptr_107] 
              #                     365  alloc i32 [temp_79_arithop_107] 
              #                     369  alloc i32 [temp_80_ret_of_quick_read_115] 
              #                     372  alloc i32 [x_115] 
              #                     373  alloc i32 [temp_81_ret_of_quick_read_115] 
              #                     376  alloc i32 [y_115] 
              #                     377  alloc i32 [temp_82_ret_of_same_115] 
              #                     381  alloc i32 [temp_83_ret_of_getch_111] 
              #                     384  alloc i32 [temp_84_value_from_ptr_105] 
              #                     387  alloc i1 [temp_85__2966] 
              #                     395  alloc i1 [temp_86_cmp_109] 
              #                     397  alloc i1 [temp_87_cmp_109] 
              #                     406  alloc i1 [temp_88_cmp_113] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     339  temp_73_ret_of_quick_read_101_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     340  store temp_73_ret_of_quick_read_101_0:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_73_ret_of_quick_read_101_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     623  untrack temp_73_ret_of_quick_read_101_0 
              #                    occupy a0 with temp_73_ret_of_quick_read_101_0
              #                    release a0 with temp_73_ret_of_quick_read_101_0
              #                     341  n_0_2 = chi n_0_1:340 
              #                     343  temp_74_ret_of_quick_read_101_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     344  store temp_74_ret_of_quick_read_101_0:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_74_ret_of_quick_read_101_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     622  untrack temp_74_ret_of_quick_read_101_0 
              #                    occupy a0 with temp_74_ret_of_quick_read_101_0
              #                    release a0 with temp_74_ret_of_quick_read_101_0
              #                     345  m_0_2 = chi m_0_1:344 
              #                     346   Call void init_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    init
              #                     463  mu head_0_7:346 
              #                     464  head_0_8 = chi head_0_7:346 
              #                          jump label: while.head_106 
    j       .while.head_106
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     389  label while.head_106: 
.while.head_106:
              #                     385  temp_84_value_from_ptr_105_0 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_84_value_from_ptr_105_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     386  mu m_0_3:385 
              #                     388  temp_85__2966_0 = icmp i32 Ne temp_84_value_from_ptr_105_0, 0_0 
              #                    occupy a1 with temp_84_value_from_ptr_105_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_85__2966_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     392  br i1 temp_85__2966_0, label while.body_106, label while.exit_106 
              #                    occupy a3 with temp_85__2966_0
              #                    free a3
              #                    occupy a3 with temp_85__2966_0
    bnez    a3, .while.body_106
              #                    free a3
    j       .while.exit_106
              #                    regtab     a1:Freed { symidx: temp_84_value_from_ptr_105_0, tracked: true } |     a3:Freed { symidx: temp_85__2966_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     390  label while.body_106: 
.while.body_106:
              #                     350  temp_75_ret_of_getch_107_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_84_value_from_ptr_105_0
              #                    store to temp_84_value_from_ptr_105_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_84_value_from_ptr_105_0
              #                    occupy a3 with temp_85__2966_0
              #                    store to temp_85__2966_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_85__2966_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     351  (nop) 
              #                     555  ch_107_1 = i32 temp_75_ret_of_getch_107_0 
              #                    occupy a0 with temp_75_ret_of_getch_107_0
              #                    occupy a1 with ch_107_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_110 
    j       .while.head_110
              #                    regtab     a0:Freed { symidx: temp_75_ret_of_getch_107_0, tracked: true } |     a1:Freed { symidx: ch_107_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     404  label while.head_110: 
.while.head_110:
              #                     396  temp_86_cmp_109_0 = icmp i32 Ne ch_107_1, 81_0 
              #                    occupy a1 with ch_107_1
              #                    occupy a2 with 81_0
    li      a2, 81
              #                    occupy a3 with temp_86_cmp_109_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     405  br i1 temp_86_cmp_109_0, label branch_short_circuit_p_true_573, label branch_short_circuit_c_false_573 
              #                    occupy a3 with temp_86_cmp_109_0
              #                    free a3
              #                    occupy a3 with temp_86_cmp_109_0
    bnez    a3, .branch_short_circuit_p_true_573
              #                    free a3
    j       .branch_short_circuit_c_false_573
              #                    regtab     a0:Freed { symidx: temp_75_ret_of_getch_107_0, tracked: true } |     a1:Freed { symidx: ch_107_1, tracked: true } |     a3:Freed { symidx: temp_86_cmp_109_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     401  label branch_short_circuit_p_true_573: 
.branch_short_circuit_p_true_573:
              #                     398  temp_87_cmp_109_0 = icmp i32 Ne ch_107_1, 85_0 
              #                    occupy a1 with ch_107_1
              #                    occupy a2 with 85_0
    li      a2, 85
              #                    occupy a4 with temp_87_cmp_109_0
    xor     a4,a1,a2
    snez    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     403  br i1 temp_87_cmp_109_0, label branch_short_circuit_c_true_573, label branch_short_circuit_c_false_573 
              #                    occupy a4 with temp_87_cmp_109_0
              #                    free a4
              #                    occupy a4 with temp_87_cmp_109_0
    bnez    a4, .branch_short_circuit_c_true_573
              #                    free a4
              #                    occupy a4 with temp_87_cmp_109_0
              #                    store to temp_87_cmp_109_0 in mem offset legal
    sb      a4,5(sp)
              #                    release a4 with temp_87_cmp_109_0
    j       .branch_short_circuit_c_false_573
              #                    regtab     a0:Freed { symidx: temp_75_ret_of_getch_107_0, tracked: true } |     a1:Freed { symidx: ch_107_1, tracked: true } |     a3:Freed { symidx: temp_86_cmp_109_0, tracked: true } |     a4:Freed { symidx: temp_87_cmp_109_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     399  label branch_short_circuit_c_true_573: 
.branch_short_circuit_c_true_573:
              #                     382  temp_83_ret_of_getch_111_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_75_ret_of_getch_107_0
              #                    store to temp_75_ret_of_getch_107_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_75_ret_of_getch_107_0
              #                    occupy a1 with ch_107_1
              #                    store to ch_107_1 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with ch_107_1
              #                    occupy a3 with temp_86_cmp_109_0
              #                    store to temp_86_cmp_109_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_86_cmp_109_0
              #                    occupy a4 with temp_87_cmp_109_0
              #                    store to temp_87_cmp_109_0 in mem offset legal
    sb      a4,5(sp)
              #                    release a4 with temp_87_cmp_109_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     383  (nop) 
              #                     556  ch_107_1 = i32 temp_83_ret_of_getch_111_0 
              #                    occupy a0 with temp_83_ret_of_getch_111_0
              #                    occupy a1 with ch_107_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_110 
              #                    occupy a0 with temp_83_ret_of_getch_111_0
              #                    store to temp_83_ret_of_getch_111_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_83_ret_of_getch_111_0
              #                    occupy a0 with temp_75_ret_of_getch_107_0
              #                    load from temp_75_ret_of_getch_107_0 in mem


    lw      a0,44(sp)
    j       .while.head_110
              #                    regtab     a0:Freed { symidx: temp_75_ret_of_getch_107_0, tracked: true } |     a1:Freed { symidx: ch_107_1, tracked: true } |     a3:Freed { symidx: temp_86_cmp_109_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     400  label branch_short_circuit_c_false_573: 
.branch_short_circuit_c_false_573:
              #                     407  temp_88_cmp_113_0 = icmp i32 Eq ch_107_1, 81_0 
              #                    occupy a1 with ch_107_1
              #                    occupy a2 with 81_0
    li      a2, 81
              #                    occupy a4 with temp_88_cmp_113_0
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     410  br i1 temp_88_cmp_113_0, label branch_true_114, label branch_false_114 
              #                    occupy a4 with temp_88_cmp_113_0
              #                    free a4
              #                    occupy a4 with temp_88_cmp_113_0
    bnez    a4, .branch_true_114
              #                    free a4
    j       .branch_false_114
              #                    regtab     a0:Freed { symidx: temp_75_ret_of_getch_107_0, tracked: true } |     a1:Freed { symidx: ch_107_1, tracked: true } |     a3:Freed { symidx: temp_86_cmp_109_0, tracked: true } |     a4:Freed { symidx: temp_88_cmp_113_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     408  label branch_true_114: 
.branch_true_114:
              #                     629  untrack ch_107_1 
              #                    occupy a1 with ch_107_1
              #                    release a1 with ch_107_1
              #                     628  untrack temp_85__2966_0 
              #                     627  untrack temp_77_ret_of_quick_read_119_0 
              #                     626  untrack temp_75_ret_of_getch_107_0 
              #                    occupy a0 with temp_75_ret_of_getch_107_0
              #                    release a0 with temp_75_ret_of_getch_107_0
              #                     625  untrack temp_88_cmp_113_0 
              #                    occupy a4 with temp_88_cmp_113_0
              #                    release a4 with temp_88_cmp_113_0
              #                     624  untrack temp_76_ret_of_quick_read_119_0 
              #                     370  temp_80_ret_of_quick_read_115_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_86_cmp_109_0
              #                    store to temp_86_cmp_109_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_86_cmp_109_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     371  (nop) 
              #                     374  temp_81_ret_of_quick_read_115_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_80_ret_of_quick_read_115_0
              #                    store to temp_80_ret_of_quick_read_115_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_80_ret_of_quick_read_115_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     375  (nop) 
              #                     378  temp_82_ret_of_same_115_0 =  Call i32 same_0(temp_80_ret_of_quick_read_115_0, temp_81_ret_of_quick_read_115_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_81_ret_of_quick_read_115_0
              #                    store to temp_81_ret_of_quick_read_115_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_81_ret_of_quick_read_115_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_80_ret_of_quick_read_115_0_0
              #                    load from temp_80_ret_of_quick_read_115_0 in mem


    lw      a0,24(sp)
              #                    occupy a1 with _anonymous_of_temp_81_ret_of_quick_read_115_0_0
              #                    load from temp_81_ret_of_quick_read_115_0 in mem


    lw      a1,20(sp)
              #                    arg load ended


    call    same
              #                     631  untrack temp_81_ret_of_quick_read_115_0 
              #                     630  untrack temp_80_ret_of_quick_read_115_0 
              #                     465  mu tail_0_11:378 
              #                     466  mu h_0_8:378 
              #                     467  mu inq_0_12:378 
              #                     468  mu que_0_10:378 
              #                     469  h_0_9 = chi h_0_8:378 
              #                     470  que_0_11 = chi que_0_10:378 
              #                     471  tail_0_12 = chi tail_0_11:378 
              #                     472  inq_0_13 = chi inq_0_12:378 
              #                     379   Call void putint_0(temp_82_ret_of_same_115_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_82_ret_of_same_115_0
              #                    store to temp_82_ret_of_same_115_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_82_ret_of_same_115_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_82_ret_of_same_115_0_0
              #                    load from temp_82_ret_of_same_115_0 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putint
              #                     632  untrack temp_82_ret_of_same_115_0 
              #                     380   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: gather_56 
    j       .gather_56
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                     411  label gather_56: 
.gather_56:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     363  (nop) 
              #                     364  mu m_0_3:363 
              #                     366  temp_79_arithop_107_0 = Sub i32 temp_84_value_from_ptr_105_0, 1_0 
              #                    occupy a0 with temp_84_value_from_ptr_105_0
              #                    load from temp_84_value_from_ptr_105_0 in mem


    lw      a0,8(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_79_arithop_107_0
              #                    regtab:    a0:Occupied { symidx: temp_84_value_from_ptr_105_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_79_arithop_107_0, tracked: true, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     367  store temp_79_arithop_107_0:i32 *m_0:ptr->i32 
              #                    occupy a3 with *m_0
              #                       load label m as ptr to reg
    la      a3, m
              #                    occupy reg a3 with *m_0
              #                    occupy a2 with temp_79_arithop_107_0
    sw      a2,0(a3)
              #                    free a2
              #                    free a3
              #                     368  m_0_4 = chi m_0_3:367 
              #                          jump label: while.head_106 
              #                    occupy a0 with temp_84_value_from_ptr_105_0
              #                    store to temp_84_value_from_ptr_105_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_84_value_from_ptr_105_0
              #                    occupy a2 with temp_79_arithop_107_0
              #                    store to temp_79_arithop_107_0 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_79_arithop_107_0
    j       .while.head_106
              #                    regtab     a0:Freed { symidx: temp_75_ret_of_getch_107_0, tracked: true } |     a1:Freed { symidx: ch_107_1, tracked: true } |     a3:Freed { symidx: temp_86_cmp_109_0, tracked: true } |     a4:Freed { symidx: temp_88_cmp_113_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     409  label branch_false_114: 
.branch_false_114:
              #                     354  temp_76_ret_of_quick_read_119_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_75_ret_of_getch_107_0
              #                    store to temp_75_ret_of_getch_107_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_75_ret_of_getch_107_0
              #                    occupy a1 with ch_107_1
              #                    store to ch_107_1 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with ch_107_1
              #                    occupy a3 with temp_86_cmp_109_0
              #                    store to temp_86_cmp_109_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_86_cmp_109_0
              #                    occupy a4 with temp_88_cmp_113_0
              #                    store to temp_88_cmp_113_0 in mem offset legal
    sb      a4,4(sp)
              #                    release a4 with temp_88_cmp_113_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     355  (nop) 
              #                     358  temp_77_ret_of_quick_read_119_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_76_ret_of_quick_read_119_0
              #                    store to temp_76_ret_of_quick_read_119_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_76_ret_of_quick_read_119_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     359  (nop) 
              #                     361   Call void add_edge_0(temp_76_ret_of_quick_read_119_0, temp_77_ret_of_quick_read_119_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_77_ret_of_quick_read_119_0
              #                    store to temp_77_ret_of_quick_read_119_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_77_ret_of_quick_read_119_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_76_ret_of_quick_read_119_0_0
              #                    load from temp_76_ret_of_quick_read_119_0 in mem


    lw      a0,36(sp)
              #                    occupy a1 with _anonymous_of_temp_77_ret_of_quick_read_119_0_0
              #                    load from temp_77_ret_of_quick_read_119_0 in mem


    lw      a1,32(sp)
              #                    arg load ended


    call    add_edge
              #                     473  mu cnt_0_5:361 
              #                     474  mu next_0_5:361 
              #                     475  mu to_0_5:361 
              #                     476  mu head_0_9:361 
              #                     477  cnt_0_7 = chi cnt_0_5:361 
              #                     478  next_0_7 = chi next_0_5:361 
              #                     479  to_0_7 = chi to_0_5:361 
              #                     480  head_0_11 = chi head_0_9:361 
              #                          jump label: gather_56 
    j       .gather_56
              #                    regtab     a1:Freed { symidx: temp_84_value_from_ptr_105_0, tracked: true } |     a3:Freed { symidx: temp_85__2966_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     391  label while.exit_106: 
.while.exit_106:
              #                     481  mu cnt_0_5:348 
              #                     482  mu h_0_8:348 
              #                     483  mu tail_0_11:348 
              #                     484  mu m_0_3:348 
              #                     485  mu head_0_9:348 
              #                     486  mu n_0_2:348 
              #                     487  mu to_0_5:348 
              #                     488  mu inq_0_12:348 
              #                     489  mu next_0_5:348 
              #                     490  mu que_0_10:348 
              #                     348  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,64(sp)
              #                    load from s0_main_0 in mem
    ld      s0,56(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl inq
              #                     37   global Array:i32:[Some(1005_0)] inq_0 
    .type inq,@object
inq:
    .zero 4020
    .align 4
    .globl tail
              #                     35   global i32 tail_0 
    .type tail,@object
tail:
    .word 0
    .align 4
    .globl h
              #                     34   global i32 h_0 
    .type h,@object
h:
    .word 0
    .align 4
    .globl que
              #                     33   global Array:i32:[Some(1005_0)] que_0 
    .type que,@object
que:
    .zero 4020
    .align 4
    .globl cnt
              #                     31   global i32 cnt_0 
    .type cnt,@object
cnt:
    .word 0
    .align 4
    .globl head
              #                     28   global Array:i32:[Some(1005_0)] head_0 
    .type head,@object
head:
    .zero 4020
    .align 4
    .globl next
              #                     26   global Array:i32:[Some(5005_0)] next_0 
    .type next,@object
next:
    .zero 20020
    .align 4
    .globl to
              #                     24   global Array:i32:[Some(5005_0)] to_0 
    .type to,@object
to:
    .zero 20020
    .align 4
    .globl maxm
              #                     22   global i32 maxm_0 
    .type maxm,@object
maxm:
    .word 5005
    .align 4
    .globl maxn
              #                     19   global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 1005
    .align 4
    .globl m
              #                     16   global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
              #                     15   global i32 n_0 
    .type n,@object
n:
    .word 0
