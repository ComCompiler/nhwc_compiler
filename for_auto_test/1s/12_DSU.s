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
              #                     20   Define quick_read_0 "" -> quick_read_ret_0 
    .globl quick_read
    .type quick_read,@function
quick_read:
              #                    mem layout:|ra_quick_read:8 at 64|s0_quick_read:8 at 56|temp_0_ret_of_getch _s18 _i0:4 at 52|ch _s18 _i1:4 at 48|ch _s18 _i3:4 at 44|x _s18 _i1:4 at 40|f _s18 _i1:4 at 36|f _s18 _i3:4 at 32|temp_1_ _s33 _i0:4 at 28|temp_2_arithop _s30 _i0:4 at 24|temp_3_arithop _s30 _i0:4 at 20|temp_4_arithop _s30 _i0:4 at 16|temp_5_ret_of_getch _s30 _i0:4 at 12|temp_6_ret_of_getch _s23 _i0:4 at 8|temp_7_cmp _s21 _i0:1 at 7|temp_8_cmp _s21 _i0:1 at 6|temp_9_cmp _s28 _i0:1 at 5|temp_10_cmp _s28 _i0:1 at 4|temp_11_ _s803 _i0:1 at 3|temp_12_cmp _s24 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-72
              #                    store to ra_quick_read_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_quick_read_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     25   alloc i32 [temp_0_ret_of_getch_18] 
              #                     28   alloc i32 [ch_18] 
              #                     30   alloc i32 [x_18] 
              #                     32   alloc i32 [f_18] 
              #                     36   alloc i32 [temp_1__33] 
              #                     39   alloc i32 [temp_2_arithop_30] 
              #                     41   alloc i32 [temp_3_arithop_30] 
              #                     43   alloc i32 [temp_4_arithop_30] 
              #                     46   alloc i32 [temp_5_ret_of_getch_30] 
              #                     49   alloc i32 [temp_6_ret_of_getch_23] 
              #                     53   alloc i1 [temp_7_cmp_21] 
              #                     55   alloc i1 [temp_8_cmp_21] 
              #                     64   alloc i1 [temp_9_cmp_28] 
              #                     66   alloc i1 [temp_10_cmp_28] 
              #                     74   alloc i1 [temp_11__803] 
              #                     82   alloc i1 [temp_12_cmp_24] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     26   temp_0_ret_of_getch_18_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     27   (nop) 
              #                     29   (nop) 
              #                     31   (nop) 
              #                     274  ch_18_1 = i32 temp_0_ret_of_getch_18_0 
              #                    occupy a0 with temp_0_ret_of_getch_18_0
              #                    occupy a1 with ch_18_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     288  untrack temp_0_ret_of_getch_18_0 
              #                    occupy a0 with temp_0_ret_of_getch_18_0
              #                    release a0 with temp_0_ret_of_getch_18_0
              #                     275  f_18_1 = i32 0_0 
              #                    occupy a0 with f_18_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_22 
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     62   label while.head_22: 
.while.head_22:
              #                     54   temp_7_cmp_21_0 = icmp i32 Slt ch_18_1, 48_0 
              #                    occupy a1 with ch_18_1
              #                    occupy a2 with 48_0
    li      a2, 48
              #                    occupy a3 with temp_7_cmp_21_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     63   br i1 temp_7_cmp_21_0, label branch_short_circuit_c_true_154, label branch_short_circuit_p_false_154 
              #                    occupy a3 with temp_7_cmp_21_0
              #                    free a3
              #                    occupy a3 with temp_7_cmp_21_0
    bnez    a3, .branch_short_circuit_c_true_154
              #                    free a3
    j       .branch_short_circuit_p_false_154
              #                    regtab     a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_21_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     57   label branch_short_circuit_c_true_154: 
.branch_short_circuit_c_true_154:
              #                     83   temp_12_cmp_24_0 = icmp i32 Eq ch_18_1, 45_0 
              #                    occupy a1 with ch_18_1
              #                    occupy a2 with 45_0
    li      a2, 45
              #                    occupy a4 with temp_12_cmp_24_0
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     86   br i1 temp_12_cmp_24_0, label branch_true_25, label UP_33_0 
              #                    occupy a4 with temp_12_cmp_24_0
              #                    free a4
              #                    occupy a4 with temp_12_cmp_24_0
    bnez    a4, .branch_true_25
              #                    free a4
    j       .UP_33_0
              #                    regtab     a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_21_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_24_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     84   label branch_true_25: 
.branch_true_25:
              #                     299  untrack temp_8_cmp_21_0 
              #                     298  untrack x_18_1 
              #                     297  untrack temp_3_arithop_30_0 
              #                     296  untrack temp_9_cmp_28_0 
              #                     295  untrack temp_2_arithop_30_0 
              #                     294  untrack temp_4_arithop_30_0 
              #                     293  untrack temp_12_cmp_24_0 
              #                    occupy a4 with temp_12_cmp_24_0
              #                    release a4 with temp_12_cmp_24_0
              #                     292  untrack temp_7_cmp_21_0 
              #                    occupy a3 with temp_7_cmp_21_0
              #                    release a3 with temp_7_cmp_21_0
              #                     291  untrack ch_18_3 
              #                     290  untrack temp_10_cmp_28_0 
              #                     289  untrack temp_5_ret_of_getch_30_0 
              #                     52   (nop) 
              #                     276  f_18_3 = i32 1_0 
              #                    occupy a2 with f_18_3
    li      a2, 1
              #                    free a2
              #                          jump label: branch_false_25 
    j       .branch_false_25
              #                    regtab     a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a2:Freed { symidx: f_18_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     85   label branch_false_25: 
.branch_false_25:
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a2:Freed { symidx: f_18_3, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     50   temp_6_ret_of_getch_23_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with f_18_1
              #                    store to f_18_1 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with f_18_1
              #                    occupy a1 with ch_18_1
              #                    store to ch_18_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_18_1
              #                    occupy a2 with f_18_3
              #                    store to f_18_3 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with f_18_3
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     51   (nop) 
              #                     277  ch_18_1 = i32 temp_6_ret_of_getch_23_0 
              #                    occupy a0 with temp_6_ret_of_getch_23_0
              #                    occupy a1 with ch_18_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     278  f_18_1 = i32 f_18_3 
              #                    occupy a2 with f_18_3
              #                    load from f_18_3 in mem


    lw      a2,32(sp)
              #                    occupy a3 with f_18_1
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: while.head_22 
              #                    occupy a2 with f_18_3
              #                    store to f_18_3 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with f_18_3
              #                    occupy a3 with f_18_1
              #                    store to f_18_1 in mem offset legal
    sw      a3,36(sp)
              #                    release a3 with f_18_1
              #                    occupy a0 with temp_6_ret_of_getch_23_0
              #                    store to temp_6_ret_of_getch_23_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_6_ret_of_getch_23_0
              #                    occupy a0 with f_18_1
              #                    load from f_18_1 in mem


    lw      a0,36(sp)
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_21_0, tracked: true } |     a4:Freed { symidx: temp_12_cmp_24_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     272  label UP_33_0: 
.UP_33_0:
              #                     279  f_18_3 = i32 f_18_1 
              #                    occupy a0 with f_18_1
              #                    occupy a2 with f_18_3
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: branch_false_25 
              #                    occupy a4 with temp_12_cmp_24_0
              #                    store to temp_12_cmp_24_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_12_cmp_24_0
              #                    occupy a3 with temp_7_cmp_21_0
              #                    store to temp_7_cmp_21_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_7_cmp_21_0
    j       .branch_false_25
              #                    regtab     a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a3:Freed { symidx: temp_7_cmp_21_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     59   label branch_short_circuit_p_false_154: 
.branch_short_circuit_p_false_154:
              #                     56   temp_8_cmp_21_0 = icmp i32 Sgt ch_18_1, 57_0 
              #                    occupy a1 with ch_18_1
              #                    occupy a2 with 57_0
    li      a2, 57
              #                    occupy a4 with temp_8_cmp_21_0
    slt     a4,a2,a1
              #                    free a1
              #                    free a2
              #                    free a4
              #                     61   br i1 temp_8_cmp_21_0, label branch_short_circuit_c_true_154, label UP_27_0 
              #                    occupy a4 with temp_8_cmp_21_0
              #                    free a4
              #                    occupy a4 with temp_8_cmp_21_0
              #                    store to temp_8_cmp_21_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_8_cmp_21_0
              #                    occupy a2 with temp_8_cmp_21_0
              #                    load from temp_8_cmp_21_0 in mem


    lb      a2,6(sp)
    bnez    a2, .branch_short_circuit_c_true_154
              #                    free a2
    j       .UP_27_0
              #                    regtab     a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a2:Freed { symidx: temp_8_cmp_21_0, tracked: true } |     a3:Freed { symidx: temp_7_cmp_21_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     273  label UP_27_0: 
.UP_27_0:
              #                     304  untrack temp_12_cmp_24_0 
              #                     303  untrack temp_8_cmp_21_0 
              #                    occupy a2 with temp_8_cmp_21_0
              #                    release a2 with temp_8_cmp_21_0
              #                     302  untrack f_18_3 
              #                     301  untrack temp_6_ret_of_getch_23_0 
              #                     300  untrack temp_7_cmp_21_0 
              #                    occupy a3 with temp_7_cmp_21_0
              #                    release a3 with temp_7_cmp_21_0
              #                     280  ch_18_3 = i32 ch_18_1 
              #                    occupy a1 with ch_18_1
              #                    occupy a2 with ch_18_3
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     281  x_18_1 = i32 0_0 
              #                    occupy a3 with x_18_1
    li      a3, 0
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_154 
    j       .branch_short_circuit_c_false_154
              #                    regtab     a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a2:Freed { symidx: ch_18_3, tracked: true } |     a3:Freed { symidx: x_18_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     58   label branch_short_circuit_c_false_154: 
.branch_short_circuit_c_false_154:
              #                     65   temp_9_cmp_28_0 = icmp i32 Sge ch_18_3, 48_0 
              #                    occupy a2 with ch_18_3
              #                    occupy a4 with 48_0
    li      a4, 48
              #                    occupy a5 with temp_9_cmp_28_0
    slt     a5,a2,a4
    xori    a5,a5,1
              #                    free a2
              #                    free a4
              #                    free a5
              #                     73   br i1 temp_9_cmp_28_0, label branch_short_circuit_p_true_170, label branch_short_circuit_c_false_170 
              #                    occupy a5 with temp_9_cmp_28_0
              #                    free a5
              #                    occupy a5 with temp_9_cmp_28_0
    bnez    a5, .branch_short_circuit_p_true_170
              #                    free a5
    j       .branch_short_circuit_c_false_170
              #                    regtab     a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a2:Freed { symidx: ch_18_3, tracked: true } |     a3:Freed { symidx: x_18_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_28_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     70   label branch_short_circuit_p_true_170: 
.branch_short_circuit_p_true_170:
              #                     67   temp_10_cmp_28_0 = icmp i32 Sle ch_18_3, 57_0 
              #                    occupy a2 with ch_18_3
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a6 with temp_10_cmp_28_0
    slt     a6,a4,a2
    xori    a6,a6,1
              #                    free a2
              #                    free a4
              #                    free a6
              #                     72   br i1 temp_10_cmp_28_0, label branch_short_circuit_c_true_170, label branch_short_circuit_c_false_170 
              #                    occupy a6 with temp_10_cmp_28_0
              #                    free a6
              #                    occupy a6 with temp_10_cmp_28_0
    bnez    a6, .branch_short_circuit_c_true_170
              #                    free a6
              #                    occupy a6 with temp_10_cmp_28_0
              #                    store to temp_10_cmp_28_0 in mem offset legal
    sb      a6,4(sp)
              #                    release a6 with temp_10_cmp_28_0
    j       .branch_short_circuit_c_false_170
              #                    regtab     a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a2:Freed { symidx: ch_18_3, tracked: true } |     a3:Freed { symidx: x_18_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_28_0, tracked: true } |     a6:Freed { symidx: temp_10_cmp_28_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     68   label branch_short_circuit_c_true_170: 
.branch_short_circuit_c_true_170:
              #                     40   temp_2_arithop_30_0 = Mul i32 x_18_1, 10_0 
              #                    occupy a4 with temp_2_arithop_30_0
              #                    occupy a3 with x_18_1
              #                    occupy a7 with 10_0
    li      a7, 10
    mulw    a4,a3,a7
              #                    free a3
              #                    free a7
              #                    free a4
              #                     42   temp_3_arithop_30_0 = Add i32 temp_2_arithop_30_0, ch_18_3 
              #                    occupy a4 with temp_2_arithop_30_0
              #                    occupy a2 with ch_18_3
              #                    occupy s1 with temp_3_arithop_30_0
    ADDW    s1,a4,a2
              #                    free a4
              #                    free a2
              #                    free s1
              #                     44   temp_4_arithop_30_0 = Sub i32 temp_3_arithop_30_0, 48_0 
              #                    occupy s1 with temp_3_arithop_30_0
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_4_arithop_30_0
              #                    regtab:    a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a2:Freed { symidx: ch_18_3, tracked: true } |     a3:Freed { symidx: x_18_1, tracked: true } |     a4:Freed { symidx: temp_2_arithop_30_0, tracked: true } |     a5:Freed { symidx: temp_9_cmp_28_0, tracked: true } |     a6:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     a7:Freed { symidx: 10_0, tracked: false } |     s1:Occupied { symidx: temp_3_arithop_30_0, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_4_arithop_30_0, tracked: true, occupy_count: 1 } |  released_gpr_count:5,released_fpr_count:24


    subw    s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                     45   (nop) 
              #                     47   temp_5_ret_of_getch_30_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_3_arithop_30_0
              #                    store to temp_3_arithop_30_0 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with temp_3_arithop_30_0
              #                    occupy s3 with temp_4_arithop_30_0
              #                    store to temp_4_arithop_30_0 in mem offset legal
    sw      s3,16(sp)
              #                    release s3 with temp_4_arithop_30_0
              #                    occupy a0 with f_18_1
              #                    store to f_18_1 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with f_18_1
              #                    occupy a1 with ch_18_1
              #                    store to ch_18_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_18_1
              #                    occupy a2 with ch_18_3
              #                    store to ch_18_3 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with ch_18_3
              #                    occupy a3 with x_18_1
              #                    store to x_18_1 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with x_18_1
              #                    occupy a4 with temp_2_arithop_30_0
              #                    store to temp_2_arithop_30_0 in mem offset legal
    sw      a4,24(sp)
              #                    release a4 with temp_2_arithop_30_0
              #                    occupy a5 with temp_9_cmp_28_0
              #                    store to temp_9_cmp_28_0 in mem offset legal
    sb      a5,5(sp)
              #                    release a5 with temp_9_cmp_28_0
              #                    occupy a6 with temp_10_cmp_28_0
              #                    store to temp_10_cmp_28_0 in mem offset legal
    sb      a6,4(sp)
              #                    release a6 with temp_10_cmp_28_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     48   (nop) 
              #                     282  x_18_1 = i32 temp_4_arithop_30_0 
              #                    occupy a1 with temp_4_arithop_30_0
              #                    load from temp_4_arithop_30_0 in mem


    lw      a1,16(sp)
              #                    occupy a2 with x_18_1
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     283  ch_18_3 = i32 temp_5_ret_of_getch_30_0 
              #                    occupy a0 with temp_5_ret_of_getch_30_0
              #                    occupy a3 with ch_18_3
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: branch_short_circuit_c_false_154 
              #                    occupy a2 with x_18_1
              #                    store to x_18_1 in mem offset legal
    sw      a2,40(sp)
              #                    release a2 with x_18_1
              #                    occupy a3 with ch_18_3
              #                    store to ch_18_3 in mem offset legal
    sw      a3,44(sp)
              #                    release a3 with ch_18_3
              #                    occupy a2 with ch_18_3
              #                    load from ch_18_3 in mem


    lw      a2,44(sp)
              #                    occupy a1 with temp_4_arithop_30_0
              #                    store to temp_4_arithop_30_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_4_arithop_30_0
              #                    occupy a1 with ch_18_1
              #                    load from ch_18_1 in mem


    lw      a1,48(sp)
              #                    occupy a3 with x_18_1
              #                    load from x_18_1 in mem


    lw      a3,40(sp)
              #                    occupy a0 with temp_5_ret_of_getch_30_0
              #                    store to temp_5_ret_of_getch_30_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_5_ret_of_getch_30_0
              #                    occupy a0 with f_18_1
              #                    load from f_18_1 in mem


    lw      a0,36(sp)
    j       .branch_short_circuit_c_false_154
              #                    regtab     a0:Freed { symidx: f_18_1, tracked: true } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a2:Freed { symidx: ch_18_3, tracked: true } |     a3:Freed { symidx: x_18_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_28_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     69   label branch_short_circuit_c_false_170: 
.branch_short_circuit_c_false_170:
              #                     75   temp_11__803_0 = icmp i32 Ne f_18_1, 0_0 
              #                    occupy a0 with f_18_1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a6 with temp_11__803_0
    xor     a6,a0,a4
    snez    a6, a6
              #                    free a0
              #                    free a4
              #                    free a6
              #                     305  untrack f_18_1 
              #                    occupy a0 with f_18_1
              #                    release a0 with f_18_1
              #                     78   br i1 temp_11__803_0, label branch_true_34, label branch_false_34 
              #                    occupy a6 with temp_11__803_0
              #                    free a6
              #                    occupy a6 with temp_11__803_0
    bnez    a6, .branch_true_34
              #                    free a6
    j       .branch_false_34
              #                    regtab     a1:Freed { symidx: ch_18_1, tracked: true } |     a2:Freed { symidx: ch_18_3, tracked: true } |     a3:Freed { symidx: x_18_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_28_0, tracked: true } |     a6:Freed { symidx: temp_11__803_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     76   label branch_true_34: 
.branch_true_34:
              #                     306  untrack temp_11__803_0 
              #                    occupy a6 with temp_11__803_0
              #                    release a6 with temp_11__803_0
              #                     37   temp_1__33_0 = Sub i32 0_0, x_18_1 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a3 with x_18_1
              #                    occupy a4 with temp_1__33_0
              #                    regtab:    a0:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a1:Freed { symidx: ch_18_1, tracked: true } |     a2:Freed { symidx: ch_18_3, tracked: true } |     a3:Occupied { symidx: x_18_1, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: temp_1__33_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_9_cmp_28_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24


    subw    a4,a0,a3
              #                    free a0
              #                    free a3
              #                    free a4
              #                     38   ret temp_1__33_0 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    occupy a4 with temp_1__33_0
              #                    store to temp_1__33_0 in mem offset legal
    sw      a4,28(sp)
              #                    release a4 with temp_1__33_0
              #                    occupy a0 with temp_1__33_0
              #                    load from temp_1__33_0 in mem


    lw      a0,28(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ch_18_1, tracked: true } |     a2:Freed { symidx: ch_18_3, tracked: true } |     a3:Freed { symidx: x_18_1, tracked: true } |     a5:Freed { symidx: temp_9_cmp_28_0, tracked: true } |     a6:Freed { symidx: temp_11__803_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     77   label branch_false_34: 
.branch_false_34:
              #                     308  untrack temp_11__803_0 
              #                    occupy a6 with temp_11__803_0
              #                    release a6 with temp_11__803_0
              #                     307  untrack temp_1__33_0 
              #                     34   ret x_18_1 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    occupy a3 with x_18_1
              #                    store to x_18_1 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with x_18_1
              #                    occupy a0 with x_18_1
              #                    load from x_18_1 in mem


    lw      a0,40(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     21   Define init_0 "" -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 40|s0_init:8 at 32|i _s38 _i1:4 at 28|none:4 at 24|temp_13_ptr_of_*fa_0:8 at 16|temp_14_arithop _s42 _i0:4 at 12|temp_15_value_from_ptr _s40 _i0:4 at 8|temp_16_cmp _s40 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-48
              #                    store to ra_init_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     232  fa_0_1 = chi fa_0_0:21 
              #                     88   alloc i32 [i_38] 
              #                     89   alloc ptr->i32 [temp_13_ptr_of_*fa_0_42] 
              #                     93   alloc i32 [temp_14_arithop_42] 
              #                     96   alloc i32 [temp_15_value_from_ptr_40] 
              #                     99   alloc i1 [temp_16_cmp_40] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     87   (nop) 
              #                     97   temp_15_value_from_ptr_40_0 = load *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with temp_15_value_from_ptr_40_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     98   mu n_0_0:97 
              #                     284  i_38_1 = i32 1_0 
              #                    occupy a2 with i_38_1
    li      a2, 1
              #                    free a2
              #                          jump label: while.head_41 
    j       .while.head_41
              #                    regtab     a1:Freed { symidx: temp_15_value_from_ptr_40_0, tracked: true } |     a2:Freed { symidx: i_38_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     101  label while.head_41: 
.while.head_41:
              #                     100  temp_16_cmp_40_0 = icmp i32 Sle i_38_1, temp_15_value_from_ptr_40_0 
              #                    occupy a2 with i_38_1
              #                    occupy a1 with temp_15_value_from_ptr_40_0
              #                    occupy a0 with temp_16_cmp_40_0
    slt     a0,a1,a2
    xori    a0,a0,1
              #                    free a2
              #                    free a1
              #                    free a0
              #                     104  br i1 temp_16_cmp_40_0, label while.body_41, label while.exit_41 
              #                    occupy a0 with temp_16_cmp_40_0
              #                    free a0
              #                    occupy a0 with temp_16_cmp_40_0
    bnez    a0, .while.body_41
              #                    free a0
    j       .while.exit_41
              #                    regtab     a0:Freed { symidx: temp_16_cmp_40_0, tracked: true } |     a1:Freed { symidx: temp_15_value_from_ptr_40_0, tracked: true } |     a2:Freed { symidx: i_38_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     102  label while.body_41: 
.while.body_41:
              #                     90   temp_13_ptr_of_*fa_0_42 = GEP *fa_0:ptr->i32 [Some(i_38_1)] 
              #                    occupy a3 with temp_13_ptr_of_*fa_0_42
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_38_1
    mv      a4, a2
              #                    free a2
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *fa_0
              #                       load label fa as ptr to reg
    la      a5, fa
              #                    occupy reg a5 with *fa_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     91   store i_38_1:i32 temp_13_ptr_of_*fa_0_42:ptr->i32 
              #                    occupy a3 with temp_13_ptr_of_*fa_0_42
              #                    occupy a2 with i_38_1
    sw      a2,0(a3)
              #                    free a2
              #                    free a3
              #                     92   fa_0_3 = chi fa_0_2:91 
              #                     94   temp_14_arithop_42_0 = Add i32 i_38_1, 1_0 
              #                    occupy a2 with i_38_1
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_14_arithop_42_0
    ADDW    a7,a2,a6
              #                    free a2
              #                    free a6
              #                    free a7
              #                     95   (nop) 
              #                     285  i_38_1 = i32 temp_14_arithop_42_0 
              #                    occupy a7 with temp_14_arithop_42_0
              #                    occupy a2 with i_38_1
    mv      a2, a7
              #                    free a7
              #                    free a2
              #                          jump label: while.head_41 
              #                    occupy a0 with temp_16_cmp_40_0
              #                    store to temp_16_cmp_40_0 in mem offset legal
    sb      a0,7(sp)
              #                    release a0 with temp_16_cmp_40_0
              #                    occupy a3 with temp_13_ptr_of_*fa_0_42
              #                    store to temp_13_ptr_of_*fa_0_42 in mem offset legal
    sd      a3,16(sp)
              #                    release a3 with temp_13_ptr_of_*fa_0_42
              #                    occupy a7 with temp_14_arithop_42_0
              #                    store to temp_14_arithop_42_0 in mem offset legal
    sw      a7,12(sp)
              #                    release a7 with temp_14_arithop_42_0
    j       .while.head_41
              #                    regtab     a0:Freed { symidx: temp_16_cmp_40_0, tracked: true } |     a1:Freed { symidx: temp_15_value_from_ptr_40_0, tracked: true } |     a2:Freed { symidx: i_38_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     103  label while.exit_41: 
.while.exit_41:
              #                     310  untrack temp_15_value_from_ptr_40_0 
              #                    occupy a1 with temp_15_value_from_ptr_40_0
              #                    release a1 with temp_15_value_from_ptr_40_0
              #                     309  untrack i_38_1 
              #                    occupy a2 with i_38_1
              #                    release a2 with i_38_1
              #                     233  mu fa_0_2:105 
              #                     105  ret 
              #                    load from ra_init_0 in mem
    ld      ra,40(sp)
              #                    load from s0_init_0 in mem
    ld      s0,32(sp)
    addi    sp,sp,48
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     22   Define find_0 "x_45_0," -> find_ret_0 
    .globl find
    .type find,@function
find:
              #                    mem layout:|ra_find:8 at 56|s0_find:8 at 48|x _s45 _i0:4 at 44|none:4 at 40|temp_17_ptr_of_*fa_0:8 at 32|temp_19_ret_of_find _s51 _i0:4 at 28|none:4 at 24|temp_20_ptr_of_*fa_0:8 at 16|temp_21_ptr_of_*fa_0:8 at 8|temp_22_ele_of_*fa_0 _s48 _i0:4 at 4|temp_23_cmp _s48 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-64
              #                    store to ra_find_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_find_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     234  fa_0_4 = chi fa_0_0:22 
              #                     106  alloc ptr->i32 [temp_17_ptr_of_*fa_0_51] 
              #                     108  alloc i32 [temp_18_ele_of_*fa_0_51] 
              #                     111  alloc i32 [temp_19_ret_of_find_51] 
              #                     114  alloc i32 [pa_51] 
              #                     115  alloc ptr->i32 [temp_20_ptr_of_*fa_0_51] 
              #                     123  alloc ptr->i32 [temp_21_ptr_of_*fa_0_48] 
              #                     125  alloc i32 [temp_22_ele_of_*fa_0_48] 
              #                     128  alloc i1 [temp_23_cmp_48] 
              #                    regtab     a0:Freed { symidx: x_45_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     124  temp_21_ptr_of_*fa_0_48 = GEP *fa_0:Array:i32:[None] [Some(x_45_0)] 
              #                    occupy a1 with temp_21_ptr_of_*fa_0_48
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with x_45_0
    mv      a2, a0
              #                    free a0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *fa_0
              #                       load label fa as ptr to reg
    la      a3, fa
              #                    occupy reg a3 with *fa_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     126  temp_22_ele_of_*fa_0_48_0 = load temp_21_ptr_of_*fa_0_48:ptr->i32 
              #                    occupy a1 with temp_21_ptr_of_*fa_0_48
              #                    occupy a4 with temp_22_ele_of_*fa_0_48_0
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     127  mu fa_0_4:126 
              #                     129  temp_23_cmp_48_0 = icmp i32 Eq temp_22_ele_of_*fa_0_48_0, x_45_0 
              #                    occupy a4 with temp_22_ele_of_*fa_0_48_0
              #                    occupy a0 with x_45_0
              #                    occupy a5 with temp_23_cmp_48_0
    xor     a5,a4,a0
    seqz    a5, a5
              #                    free a4
              #                    free a0
              #                    free a5
              #                     132  br i1 temp_23_cmp_48_0, label branch_true_49, label branch_false_49 
              #                    occupy a5 with temp_23_cmp_48_0
              #                    free a5
              #                    occupy a5 with temp_23_cmp_48_0
    bnez    a5, .branch_true_49
              #                    free a5
    j       .branch_false_49
              #                    regtab     a0:Freed { symidx: x_45_0, tracked: true } |     a1:Freed { symidx: temp_21_ptr_of_*fa_0_48, tracked: true } |     a4:Freed { symidx: temp_22_ele_of_*fa_0_48_0, tracked: true } |     a5:Freed { symidx: temp_23_cmp_48_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     130  label branch_true_49: 
.branch_true_49:
              #                     314  untrack temp_22_ele_of_*fa_0_48_0 
              #                    occupy a4 with temp_22_ele_of_*fa_0_48_0
              #                    release a4 with temp_22_ele_of_*fa_0_48_0
              #                     313  untrack temp_23_cmp_48_0 
              #                    occupy a5 with temp_23_cmp_48_0
              #                    release a5 with temp_23_cmp_48_0
              #                     312  untrack temp_21_ptr_of_*fa_0_48 
              #                    occupy a1 with temp_21_ptr_of_*fa_0_48
              #                    release a1 with temp_21_ptr_of_*fa_0_48
              #                     311  untrack temp_19_ret_of_find_51_0 
              #                     235  mu fa_0_4:122 
              #                     122  ret x_45_0 
              #                    load from ra_find_0 in mem
    ld      ra,56(sp)
              #                    load from s0_find_0 in mem
    ld      s0,48(sp)
              #                    occupy a0 with x_45_0
              #                    store to x_45_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with x_45_0
              #                    occupy a0 with x_45_0
              #                    load from x_45_0 in mem


    lw      a0,44(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_45_0, tracked: true } |     a1:Freed { symidx: temp_21_ptr_of_*fa_0_48, tracked: true } |     a4:Freed { symidx: temp_22_ele_of_*fa_0_48_0, tracked: true } |     a5:Freed { symidx: temp_23_cmp_48_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     131  label branch_false_49: 
.branch_false_49:
              #                     316  untrack temp_23_cmp_48_0 
              #                    occupy a5 with temp_23_cmp_48_0
              #                    release a5 with temp_23_cmp_48_0
              #                     315  untrack x_45_0 
              #                    occupy a0 with x_45_0
              #                    release a0 with x_45_0
              #                     107  (nop) 
              #                     109  (nop) 
              #                     110  mu fa_0_4:109 
              #                     112  temp_19_ret_of_find_51_0 =  Call i32 find_0(temp_22_ele_of_*fa_0_48_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_21_ptr_of_*fa_0_48
              #                    store to temp_21_ptr_of_*fa_0_48 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_21_ptr_of_*fa_0_48
              #                    occupy a4 with temp_22_ele_of_*fa_0_48_0
              #                    store to temp_22_ele_of_*fa_0_48_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_22_ele_of_*fa_0_48_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_22_ele_of_*fa_0_48_0_0
              #                    load from temp_22_ele_of_*fa_0_48_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    find
              #                     318  untrack temp_22_ele_of_*fa_0_48_0 
              #                     236  mu fa_0_4:112 
              #                     237  fa_0_5 = chi fa_0_4:112 
              #                     113  (nop) 
              #                     116  (nop) 
              #                     117  store temp_19_ret_of_find_51_0:i32 temp_21_ptr_of_*fa_0_48:ptr->i32 
              #                    occupy a1 with temp_21_ptr_of_*fa_0_48
              #                    load from temp_21_ptr_of_*fa_0_48 in mem
    ld      a1,8(sp)
              #                    occupy a0 with temp_19_ret_of_find_51_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     317  untrack temp_21_ptr_of_*fa_0_48 
              #                    occupy a1 with temp_21_ptr_of_*fa_0_48
              #                    release a1 with temp_21_ptr_of_*fa_0_48
              #                     118  fa_0_6 = chi fa_0_5:117 
              #                     238  mu fa_0_6:120 
              #                     120  ret temp_19_ret_of_find_51_0 
              #                    load from ra_find_0 in mem
    ld      ra,56(sp)
              #                    load from s0_find_0 in mem
    ld      s0,48(sp)
              #                    occupy a0 with temp_19_ret_of_find_51_0
              #                    store to temp_19_ret_of_find_51_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_19_ret_of_find_51_0
              #                    occupy a0 with temp_19_ret_of_find_51_0
              #                    load from temp_19_ret_of_find_51_0 in mem


    lw      a0,28(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     23   Define same_0 "x_55_0,y_55_0," -> same_ret_0 
    .globl same
    .type same,@function
same:
              #                    mem layout:|ra_same:8 at 32|s0_same:8 at 24|x _s55 _i0:4 at 20|y _s55 _i0:4 at 16|temp_24_ret_of_find _s58 _i0:4 at 12|temp_25_ret_of_find _s58 _i0:4 at 8|temp_26_cmp _s58 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-40
              #                    store to ra_same_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_same_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     239  fa_0_7 = chi fa_0_0:23 
              #                     140  alloc i32 [temp_24_ret_of_find_58] 
              #                     142  alloc i32 [temp_25_ret_of_find_58] 
              #                     144  alloc i1 [temp_26_cmp_58] 
              #                    regtab     a0:Freed { symidx: x_55_0, tracked: true } |     a1:Freed { symidx: y_55_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     141  temp_24_ret_of_find_58_0 =  Call i32 find_0(y_55_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with x_55_0
              #                    store to x_55_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with x_55_0
              #                    occupy a1 with y_55_0
              #                    store to y_55_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with y_55_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_y_55_0_0
              #                    load from y_55_0 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    find
              #                     322  untrack y_55_0 
              #                     240  mu fa_0_7:141 
              #                     241  fa_0_8 = chi fa_0_7:141 
              #                     143  temp_25_ret_of_find_58_0 =  Call i32 find_0(x_55_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_24_ret_of_find_58_0
              #                    store to temp_24_ret_of_find_58_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_24_ret_of_find_58_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_55_0_0
              #                    load from x_55_0 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    find
              #                     321  untrack x_55_0 
              #                     242  mu fa_0_8:143 
              #                     243  fa_0_9 = chi fa_0_8:143 
              #                     145  temp_26_cmp_58_0 = icmp i32 Eq temp_25_ret_of_find_58_0, temp_24_ret_of_find_58_0 
              #                    occupy a0 with temp_25_ret_of_find_58_0
              #                    occupy a1 with temp_24_ret_of_find_58_0
              #                    load from temp_24_ret_of_find_58_0 in mem


    lw      a1,12(sp)
              #                    occupy a2 with temp_26_cmp_58_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     320  untrack temp_25_ret_of_find_58_0 
              #                    occupy a0 with temp_25_ret_of_find_58_0
              #                    release a0 with temp_25_ret_of_find_58_0
              #                     319  untrack temp_24_ret_of_find_58_0 
              #                    occupy a1 with temp_24_ret_of_find_58_0
              #                    release a1 with temp_24_ret_of_find_58_0
              #                     148  br i1 temp_26_cmp_58_0, label branch_true_59, label branch_false_59 
              #                    occupy a2 with temp_26_cmp_58_0
              #                    free a2
              #                    occupy a2 with temp_26_cmp_58_0
    bnez    a2, .branch_true_59
              #                    free a2
    j       .branch_false_59
              #                    regtab     a2:Freed { symidx: temp_26_cmp_58_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     146  label branch_true_59: 
.branch_true_59:
              #                     323  untrack temp_26_cmp_58_0 
              #                    occupy a2 with temp_26_cmp_58_0
              #                    release a2 with temp_26_cmp_58_0
              #                     244  mu fa_0_9:139 
              #                     139  ret 1_0 
              #                    load from ra_same_0 in mem
    ld      ra,32(sp)
              #                    load from s0_same_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_26_cmp_58_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     147  label branch_false_59: 
.branch_false_59:
              #                     324  untrack temp_26_cmp_58_0 
              #                    occupy a2 with temp_26_cmp_58_0
              #                    release a2 with temp_26_cmp_58_0
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     245  mu fa_0_9:137 
              #                     137  ret 0_0 
              #                    load from ra_same_0 in mem
    ld      ra,32(sp)
              #                    load from s0_same_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     24   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 80|s0_main:8 at 72|temp_27_ret_of_quick_read _s63 _i0:4 at 68|temp_28_ret_of_quick_read _s63 _i0:4 at 64|temp_29_ret_of_getch _s69 _i0:4 at 60|ch _s69 _i1:4 at 56|temp_30_ret_of_quick_read _s81 _i0:4 at 52|temp_31_ret_of_find _s81 _i0:4 at 48|temp_32_ret_of_quick_read _s81 _i0:4 at 44|temp_33_ret_of_find _s81 _i0:4 at 40|temp_34_ptr_of_*fa_0:8 at 32|temp_36_arithop _s69 _i0:4 at 28|temp_37_ret_of_quick_read _s77 _i0:4 at 24|temp_38_ret_of_quick_read _s77 _i0:4 at 20|temp_39_ret_of_same _s77 _i0:4 at 16|temp_40_ret_of_getch _s73 _i0:4 at 12|temp_41_value_from_ptr _s67 _i0:4 at 8|temp_42_ _s1618 _i0:1 at 7|temp_43_cmp _s71 _i0:1 at 6|temp_44_cmp _s71 _i0:1 at 5|temp_45_cmp _s75 _i0:1 at 4|none:4 at 0
    addi    sp,sp,-88
              #                    store to ra_main_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                     246  n_0_1 = chi n_0_0:24 
              #                     247  m_0_1 = chi m_0_0:24 
              #                     248  fa_0_10 = chi fa_0_0:24 
              #                     151  alloc i32 [temp_27_ret_of_quick_read_63] 
              #                     155  alloc i32 [temp_28_ret_of_quick_read_63] 
              #                     162  alloc i32 [temp_29_ret_of_getch_69] 
              #                     165  alloc i32 [ch_69] 
              #                     166  alloc i32 [temp_30_ret_of_quick_read_81] 
              #                     168  alloc i32 [temp_31_ret_of_find_81] 
              #                     171  alloc i32 [x_81] 
              #                     172  alloc i32 [temp_32_ret_of_quick_read_81] 
              #                     174  alloc i32 [temp_33_ret_of_find_81] 
              #                     177  alloc i32 [y_81] 
              #                     178  alloc ptr->i32 [temp_34_ptr_of_*fa_0_81] 
              #                     182  alloc i32 [temp_35_value_from_ptr_69] 
              #                     185  alloc i32 [temp_36_arithop_69] 
              #                     189  alloc i32 [temp_37_ret_of_quick_read_77] 
              #                     192  alloc i32 [x_77] 
              #                     193  alloc i32 [temp_38_ret_of_quick_read_77] 
              #                     196  alloc i32 [y_77] 
              #                     197  alloc i32 [temp_39_ret_of_same_77] 
              #                     201  alloc i32 [temp_40_ret_of_getch_73] 
              #                     204  alloc i32 [temp_41_value_from_ptr_67] 
              #                     207  alloc i1 [temp_42__1618] 
              #                     215  alloc i1 [temp_43_cmp_71] 
              #                     217  alloc i1 [temp_44_cmp_71] 
              #                     226  alloc i1 [temp_45_cmp_75] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     152  temp_27_ret_of_quick_read_63_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     153  store temp_27_ret_of_quick_read_63_0:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_27_ret_of_quick_read_63_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     325  untrack temp_27_ret_of_quick_read_63_0 
              #                    occupy a0 with temp_27_ret_of_quick_read_63_0
              #                    release a0 with temp_27_ret_of_quick_read_63_0
              #                     154  n_0_2 = chi n_0_1:153 
              #                     156  temp_28_ret_of_quick_read_63_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     157  store temp_28_ret_of_quick_read_63_0:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_28_ret_of_quick_read_63_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     326  untrack temp_28_ret_of_quick_read_63_0 
              #                    occupy a0 with temp_28_ret_of_quick_read_63_0
              #                    release a0 with temp_28_ret_of_quick_read_63_0
              #                     158  m_0_2 = chi m_0_1:157 
              #                     159   Call void init_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    init
              #                     249  mu fa_0_10:159 
              #                     250  mu n_0_2:159 
              #                     251  fa_0_11 = chi fa_0_10:159 
              #                          jump label: while.head_68 
    j       .while.head_68
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     209  label while.head_68: 
.while.head_68:
              #                     205  temp_41_value_from_ptr_67_0 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_41_value_from_ptr_67_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     206  mu m_0_3:205 
              #                     208  temp_42__1618_0 = icmp i32 Ne temp_41_value_from_ptr_67_0, 0_0 
              #                    occupy a1 with temp_41_value_from_ptr_67_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_42__1618_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     212  br i1 temp_42__1618_0, label while.body_68, label while.exit_68 
              #                    occupy a3 with temp_42__1618_0
              #                    free a3
              #                    occupy a3 with temp_42__1618_0
    bnez    a3, .while.body_68
              #                    free a3
    j       .while.exit_68
              #                    regtab     a1:Freed { symidx: temp_41_value_from_ptr_67_0, tracked: true } |     a3:Freed { symidx: temp_42__1618_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     210  label while.body_68: 
.while.body_68:
              #                     163  temp_29_ret_of_getch_69_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_41_value_from_ptr_67_0
              #                    store to temp_41_value_from_ptr_67_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_41_value_from_ptr_67_0
              #                    occupy a3 with temp_42__1618_0
              #                    store to temp_42__1618_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_42__1618_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     164  (nop) 
              #                     286  ch_69_1 = i32 temp_29_ret_of_getch_69_0 
              #                    occupy a0 with temp_29_ret_of_getch_69_0
              #                    occupy a1 with ch_69_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_72 
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: temp_29_ret_of_getch_69_0, tracked: true } |     a1:Freed { symidx: ch_69_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     224  label while.head_72: 
.while.head_72:
              #                     216  temp_43_cmp_71_0 = icmp i32 Ne ch_69_1, 81_0 
              #                    occupy a1 with ch_69_1
              #                    occupy a2 with 81_0
    li      a2, 81
              #                    occupy a3 with temp_43_cmp_71_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     225  br i1 temp_43_cmp_71_0, label branch_short_circuit_p_true_356, label branch_short_circuit_c_false_356 
              #                    occupy a3 with temp_43_cmp_71_0
              #                    free a3
              #                    occupy a3 with temp_43_cmp_71_0
    bnez    a3, .branch_short_circuit_p_true_356
              #                    free a3
    j       .branch_short_circuit_c_false_356
              #                    regtab     a0:Freed { symidx: temp_29_ret_of_getch_69_0, tracked: true } |     a1:Freed { symidx: ch_69_1, tracked: true } |     a3:Freed { symidx: temp_43_cmp_71_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     221  label branch_short_circuit_p_true_356: 
.branch_short_circuit_p_true_356:
              #                     218  temp_44_cmp_71_0 = icmp i32 Ne ch_69_1, 85_0 
              #                    occupy a1 with ch_69_1
              #                    occupy a2 with 85_0
    li      a2, 85
              #                    occupy a4 with temp_44_cmp_71_0
    xor     a4,a1,a2
    snez    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     223  br i1 temp_44_cmp_71_0, label branch_short_circuit_c_true_356, label branch_short_circuit_c_false_356 
              #                    occupy a4 with temp_44_cmp_71_0
              #                    free a4
              #                    occupy a4 with temp_44_cmp_71_0
    bnez    a4, .branch_short_circuit_c_true_356
              #                    free a4
              #                    occupy a4 with temp_44_cmp_71_0
              #                    store to temp_44_cmp_71_0 in mem offset legal
    sb      a4,5(sp)
              #                    release a4 with temp_44_cmp_71_0
    j       .branch_short_circuit_c_false_356
              #                    regtab     a0:Freed { symidx: temp_29_ret_of_getch_69_0, tracked: true } |     a1:Freed { symidx: ch_69_1, tracked: true } |     a3:Freed { symidx: temp_43_cmp_71_0, tracked: true } |     a4:Freed { symidx: temp_44_cmp_71_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     219  label branch_short_circuit_c_true_356: 
.branch_short_circuit_c_true_356:
              #                     202  temp_40_ret_of_getch_73_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_29_ret_of_getch_69_0
              #                    store to temp_29_ret_of_getch_69_0 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_29_ret_of_getch_69_0
              #                    occupy a1 with ch_69_1
              #                    store to ch_69_1 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with ch_69_1
              #                    occupy a3 with temp_43_cmp_71_0
              #                    store to temp_43_cmp_71_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_43_cmp_71_0
              #                    occupy a4 with temp_44_cmp_71_0
              #                    store to temp_44_cmp_71_0 in mem offset legal
    sb      a4,5(sp)
              #                    release a4 with temp_44_cmp_71_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     203  (nop) 
              #                     287  ch_69_1 = i32 temp_40_ret_of_getch_73_0 
              #                    occupy a0 with temp_40_ret_of_getch_73_0
              #                    occupy a1 with ch_69_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_72 
              #                    occupy a0 with temp_40_ret_of_getch_73_0
              #                    store to temp_40_ret_of_getch_73_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_40_ret_of_getch_73_0
              #                    occupy a0 with temp_29_ret_of_getch_69_0
              #                    load from temp_29_ret_of_getch_69_0 in mem


    lw      a0,60(sp)
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: temp_29_ret_of_getch_69_0, tracked: true } |     a1:Freed { symidx: ch_69_1, tracked: true } |     a3:Freed { symidx: temp_43_cmp_71_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     220  label branch_short_circuit_c_false_356: 
.branch_short_circuit_c_false_356:
              #                     227  temp_45_cmp_75_0 = icmp i32 Eq ch_69_1, 81_0 
              #                    occupy a1 with ch_69_1
              #                    occupy a2 with 81_0
    li      a2, 81
              #                    occupy a4 with temp_45_cmp_75_0
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     230  br i1 temp_45_cmp_75_0, label branch_true_76, label branch_false_76 
              #                    occupy a4 with temp_45_cmp_75_0
              #                    free a4
              #                    occupy a4 with temp_45_cmp_75_0
    bnez    a4, .branch_true_76
              #                    free a4
    j       .branch_false_76
              #                    regtab     a0:Freed { symidx: temp_29_ret_of_getch_69_0, tracked: true } |     a1:Freed { symidx: ch_69_1, tracked: true } |     a3:Freed { symidx: temp_43_cmp_71_0, tracked: true } |     a4:Freed { symidx: temp_45_cmp_75_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     228  label branch_true_76: 
.branch_true_76:
              #                     335  untrack temp_33_ret_of_find_81_0 
              #                     334  untrack ch_69_1 
              #                    occupy a1 with ch_69_1
              #                    release a1 with ch_69_1
              #                     333  untrack temp_31_ret_of_find_81_0 
              #                     332  untrack temp_42__1618_0 
              #                     331  untrack temp_45_cmp_75_0 
              #                    occupy a4 with temp_45_cmp_75_0
              #                    release a4 with temp_45_cmp_75_0
              #                     330  untrack temp_34_ptr_of_*fa_0_81 
              #                     329  untrack temp_29_ret_of_getch_69_0 
              #                    occupy a0 with temp_29_ret_of_getch_69_0
              #                    release a0 with temp_29_ret_of_getch_69_0
              #                     328  untrack temp_32_ret_of_quick_read_81_0 
              #                     327  untrack temp_30_ret_of_quick_read_81_0 
              #                     190  temp_37_ret_of_quick_read_77_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_43_cmp_71_0
              #                    store to temp_43_cmp_71_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_43_cmp_71_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     191  (nop) 
              #                     194  temp_38_ret_of_quick_read_77_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_37_ret_of_quick_read_77_0
              #                    store to temp_37_ret_of_quick_read_77_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_37_ret_of_quick_read_77_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     195  (nop) 
              #                     198  temp_39_ret_of_same_77_0 =  Call i32 same_0(temp_37_ret_of_quick_read_77_0, temp_38_ret_of_quick_read_77_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_38_ret_of_quick_read_77_0
              #                    store to temp_38_ret_of_quick_read_77_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_38_ret_of_quick_read_77_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_37_ret_of_quick_read_77_0_0
              #                    load from temp_37_ret_of_quick_read_77_0 in mem


    lw      a0,24(sp)
              #                    occupy a1 with _anonymous_of_temp_38_ret_of_quick_read_77_0_0
              #                    load from temp_38_ret_of_quick_read_77_0 in mem


    lw      a1,20(sp)
              #                    arg load ended


    call    same
              #                     338  untrack temp_37_ret_of_quick_read_77_0 
              #                     336  untrack temp_38_ret_of_quick_read_77_0 
              #                     252  mu fa_0_12:198 
              #                     253  fa_0_13 = chi fa_0_12:198 
              #                     199   Call void putint_0(temp_39_ret_of_same_77_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_39_ret_of_same_77_0
              #                    store to temp_39_ret_of_same_77_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_39_ret_of_same_77_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_39_ret_of_same_77_0_0
              #                    load from temp_39_ret_of_same_77_0 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putint
              #                     337  untrack temp_39_ret_of_same_77_0 
              #                     200   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: gather_41 
    j       .gather_41
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                     231  label gather_41: 
.gather_41:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     183  (nop) 
              #                     184  mu m_0_3:183 
              #                     186  temp_36_arithop_69_0 = Sub i32 temp_41_value_from_ptr_67_0, 1_0 
              #                    occupy a0 with temp_41_value_from_ptr_67_0
              #                    load from temp_41_value_from_ptr_67_0 in mem


    lw      a0,8(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_36_arithop_69_0
              #                    regtab:    a0:Occupied { symidx: temp_41_value_from_ptr_67_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_36_arithop_69_0, tracked: true, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     187  store temp_36_arithop_69_0:i32 *m_0:ptr->i32 
              #                    occupy a3 with *m_0
              #                       load label m as ptr to reg
    la      a3, m
              #                    occupy reg a3 with *m_0
              #                    occupy a2 with temp_36_arithop_69_0
    sw      a2,0(a3)
              #                    free a2
              #                    free a3
              #                     188  m_0_4 = chi m_0_3:187 
              #                          jump label: while.head_68 
              #                    occupy a2 with temp_36_arithop_69_0
              #                    store to temp_36_arithop_69_0 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_36_arithop_69_0
              #                    occupy a0 with temp_41_value_from_ptr_67_0
              #                    store to temp_41_value_from_ptr_67_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_41_value_from_ptr_67_0
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: temp_29_ret_of_getch_69_0, tracked: true } |     a1:Freed { symidx: ch_69_1, tracked: true } |     a3:Freed { symidx: temp_43_cmp_71_0, tracked: true } |     a4:Freed { symidx: temp_45_cmp_75_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     229  label branch_false_76: 
.branch_false_76:
              #                     167  temp_30_ret_of_quick_read_81_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_29_ret_of_getch_69_0
              #                    store to temp_29_ret_of_getch_69_0 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_29_ret_of_getch_69_0
              #                    occupy a1 with ch_69_1
              #                    store to ch_69_1 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with ch_69_1
              #                    occupy a3 with temp_43_cmp_71_0
              #                    store to temp_43_cmp_71_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_43_cmp_71_0
              #                    occupy a4 with temp_45_cmp_75_0
              #                    store to temp_45_cmp_75_0 in mem offset legal
    sb      a4,4(sp)
              #                    release a4 with temp_45_cmp_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     169  temp_31_ret_of_find_81_0 =  Call i32 find_0(temp_30_ret_of_quick_read_81_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_30_ret_of_quick_read_81_0
              #                    store to temp_30_ret_of_quick_read_81_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_30_ret_of_quick_read_81_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_ret_of_quick_read_81_0_0
              #                    load from temp_30_ret_of_quick_read_81_0 in mem


    lw      a0,52(sp)
              #                    arg load ended


    call    find
              #                     254  mu fa_0_12:169 
              #                     255  fa_0_15 = chi fa_0_12:169 
              #                     170  (nop) 
              #                     173  temp_32_ret_of_quick_read_81_0 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_31_ret_of_find_81_0
              #                    store to temp_31_ret_of_find_81_0 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_31_ret_of_find_81_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                     175  temp_33_ret_of_find_81_0 =  Call i32 find_0(temp_32_ret_of_quick_read_81_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_32_ret_of_quick_read_81_0
              #                    store to temp_32_ret_of_quick_read_81_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_32_ret_of_quick_read_81_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_32_ret_of_quick_read_81_0_0
              #                    load from temp_32_ret_of_quick_read_81_0 in mem


    lw      a0,44(sp)
              #                    arg load ended


    call    find
              #                     256  mu fa_0_15:175 
              #                     257  fa_0_16 = chi fa_0_15:175 
              #                     176  (nop) 
              #                     179  temp_34_ptr_of_*fa_0_81 = GEP *fa_0:ptr->i32 [Some(temp_31_ret_of_find_81_0)] 
              #                    occupy a1 with temp_34_ptr_of_*fa_0_81
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_31_ret_of_find_81_0
              #                    load from temp_31_ret_of_find_81_0 in mem


    lw      a3,48(sp)
    mv      a2, a3
              #                    free a3
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a4 with *fa_0
              #                       load label fa as ptr to reg
    la      a4, fa
              #                    occupy reg a4 with *fa_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                     180  store temp_33_ret_of_find_81_0:i32 temp_34_ptr_of_*fa_0_81:ptr->i32 
              #                    occupy a1 with temp_34_ptr_of_*fa_0_81
              #                    occupy a0 with temp_33_ret_of_find_81_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     181  fa_0_17 = chi fa_0_16:180 
              #                          jump label: gather_41 
              #                    occupy a3 with temp_31_ret_of_find_81_0
              #                    store to temp_31_ret_of_find_81_0 in mem offset legal
    sw      a3,48(sp)
              #                    release a3 with temp_31_ret_of_find_81_0
              #                    occupy a0 with temp_33_ret_of_find_81_0
              #                    store to temp_33_ret_of_find_81_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_33_ret_of_find_81_0
              #                    occupy a1 with temp_34_ptr_of_*fa_0_81
              #                    store to temp_34_ptr_of_*fa_0_81 in mem offset legal
    sd      a1,32(sp)
              #                    release a1 with temp_34_ptr_of_*fa_0_81
    j       .gather_41
              #                    regtab     a1:Freed { symidx: temp_41_value_from_ptr_67_0, tracked: true } |     a3:Freed { symidx: temp_42__1618_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     211  label while.exit_68: 
.while.exit_68:
              #                     258  mu n_0_2:161 
              #                     259  mu m_0_3:161 
              #                     260  mu fa_0_12:161 
              #                     161  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,80(sp)
              #                    load from s0_main_0 in mem
    ld      s0,72(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,88
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl fa
              #                     18   global Array:i32:[Some(100005_0)] fa_0 
    .type fa,@object
fa:
    .zero 400020
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
