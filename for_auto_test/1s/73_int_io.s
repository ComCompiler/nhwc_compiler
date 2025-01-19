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
              #                     19   Define my_getint_0 "" -> my_getint_ret_0 
    .globl my_getint
    .type my_getint,@function
my_getint:
              #                    mem layout:|ra_my_getint:8 at 64|s0_my_getint:8 at 56|sum _s18 _i1:4 at 52|sum _s18 _i2:4 at 48|c _s18 _i0:4 at 44|c _s18 _i1:4 at 40|c _s18 _i3:4 at 36|c _s18 _i4:4 at 32|c _s18 _i6:4 at 28|temp_0_ret_of_getch _s33 _i0:4 at 24|temp_1_arithop _s33 _i0:4 at 20|temp_2_arithop _s37 _i0:4 at 16|temp_3_arithop _s37 _i0:4 at 12|temp_4_ret_of_getch _s22 _i0:4 at 8|temp_5_arithop _s22 _i0:4 at 4|temp_8_cmp _s35 _i0:1 at 3|temp_9_cmp _s35 _i0:1 at 2|temp_10_cmp _s24 _i0:1 at 1|temp_11_cmp _s24 _i0:1 at 0
    addi    sp,sp,-72
              #                    store to ra_my_getint_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_my_getint_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     23   alloc i32 [sum_18] 
              #                     24   alloc i32 [c_18] 
              #                     29   alloc i32 [temp_0_ret_of_getch_33] 
              #                     31   alloc i32 [temp_1_arithop_33] 
              #                     34   alloc i32 [temp_2_arithop_37] 
              #                     36   alloc i32 [temp_3_arithop_37] 
              #                     39   alloc i32 [temp_4_ret_of_getch_22] 
              #                     41   alloc i32 [temp_5_arithop_22] 
              #                     44   alloc i1 [temp_6__480] 
              #                     50   alloc i1 [temp_7__660] 
              #                     58   alloc i1 [temp_8_cmp_35] 
              #                     60   alloc i1 [temp_9_cmp_35] 
              #                     69   alloc i1 [temp_10_cmp_24] 
              #                     71   alloc i1 [temp_11_cmp_24] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     22   (nop) 
              #                     25    
              #                     153  c_18_1 = i32 c_18_0 
              #                    occupy a0 with c_18_0
              #                    load from c_18_0 in mem


    lw      a0,44(sp)
              #                    occupy a1 with c_18_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     168  untrack c_18_0 
              #                    occupy a0 with c_18_0
              #                    release a0 with c_18_0
              #                          jump label: while.head_21 
    j       .while.head_21
              #                    regtab     a1:Freed { symidx: c_18_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     46   label while.head_21: 
.while.head_21:
              #                     45   (nop) 
              #                          jump label: while.body_21 
    j       .while.body_21
              #                    regtab     a1:Freed { symidx: c_18_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     47   label while.body_21: 
.while.body_21:
              #                     40   temp_4_ret_of_getch_22_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with c_18_1
              #                    store to c_18_1 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with c_18_1
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     42   temp_5_arithop_22_0 = Sub i32 temp_4_ret_of_getch_22_0, 48_0 
              #                    occupy a0 with temp_4_ret_of_getch_22_0
              #                    occupy a1 with 48_0
    li      a1, 48
              #                    occupy a2 with temp_5_arithop_22_0
              #                    regtab:    a0:Occupied { symidx: temp_4_ret_of_getch_22_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_5_arithop_22_0, tracked: true, occupy_count: 1 } |  released_gpr_count:16,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     43   (nop) 
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_getch_22_0, tracked: true } |     a2:Freed { symidx: temp_5_arithop_22_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     70   temp_10_cmp_24_0 = icmp i32 Slt temp_5_arithop_22_0, 0_0 
              #                    occupy a2 with temp_5_arithop_22_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a3 with temp_10_cmp_24_0
    slt     a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                     78   br i1 temp_10_cmp_24_0, label branch_short_circuit_c_true_142, label branch_short_circuit_p_false_142 
              #                    occupy a3 with temp_10_cmp_24_0
              #                    free a3
              #                    occupy a3 with temp_10_cmp_24_0
    bnez    a3, .branch_short_circuit_c_true_142
              #                    free a3
    j       .branch_short_circuit_p_false_142
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_getch_22_0, tracked: true } |     a2:Freed { symidx: temp_5_arithop_22_0, tracked: true } |     a3:Freed { symidx: temp_10_cmp_24_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     73   label branch_short_circuit_c_true_142: 
.branch_short_circuit_c_true_142:
              #                     154  c_18_1 = i32 temp_5_arithop_22_0 
              #                    occupy a2 with temp_5_arithop_22_0
              #                    occupy a1 with c_18_1
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                          jump label: while.head_21 
              #                    occupy a3 with temp_10_cmp_24_0
              #                    store to temp_10_cmp_24_0 in mem offset legal
    sb      a3,1(sp)
              #                    release a3 with temp_10_cmp_24_0
              #                    occupy a0 with temp_4_ret_of_getch_22_0
              #                    store to temp_4_ret_of_getch_22_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_4_ret_of_getch_22_0
              #                    occupy a2 with temp_5_arithop_22_0
              #                    store to temp_5_arithop_22_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_5_arithop_22_0
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_getch_22_0, tracked: true } |     a2:Freed { symidx: temp_5_arithop_22_0, tracked: true } |     a3:Freed { symidx: temp_10_cmp_24_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     75   label branch_short_circuit_p_false_142: 
.branch_short_circuit_p_false_142:
              #                     72   temp_11_cmp_24_0 = icmp i32 Sgt temp_5_arithop_22_0, 9_0 
              #                    occupy a2 with temp_5_arithop_22_0
              #                    occupy a1 with 9_0
    li      a1, 9
              #                    occupy a4 with temp_11_cmp_24_0
    slt     a4,a1,a2
              #                    free a2
              #                    free a1
              #                    free a4
              #                     77   br i1 temp_11_cmp_24_0, label branch_short_circuit_c_true_142, label branch_short_circuit_c_false_142 
              #                    occupy a4 with temp_11_cmp_24_0
              #                    free a4
              #                    occupy a4 with temp_11_cmp_24_0
              #                    store to temp_11_cmp_24_0 in mem offset legal
    sb      a4,0(sp)
              #                    release a4 with temp_11_cmp_24_0
              #                    occupy a1 with temp_11_cmp_24_0
              #                    load from temp_11_cmp_24_0 in mem


    lb      a1,0(sp)
    bnez    a1, .branch_short_circuit_c_true_142
              #                    free a1
    j       .branch_short_circuit_c_false_142
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_getch_22_0, tracked: true } |     a1:Freed { symidx: temp_11_cmp_24_0, tracked: true } |     a2:Freed { symidx: temp_5_arithop_22_0, tracked: true } |     a3:Freed { symidx: temp_10_cmp_24_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     74   label branch_short_circuit_c_false_142: 
.branch_short_circuit_c_false_142:
              #                     171  untrack temp_11_cmp_24_0 
              #                    occupy a1 with temp_11_cmp_24_0
              #                    release a1 with temp_11_cmp_24_0
              #                     170  untrack temp_10_cmp_24_0 
              #                    occupy a3 with temp_10_cmp_24_0
              #                    release a3 with temp_10_cmp_24_0
              #                     169  untrack temp_4_ret_of_getch_22_0 
              #                    occupy a0 with temp_4_ret_of_getch_22_0
              #                    release a0 with temp_4_ret_of_getch_22_0
              #                     155  c_18_3 = i32 temp_5_arithop_22_0 
              #                    occupy a2 with temp_5_arithop_22_0
              #                    occupy a0 with c_18_3
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                     172  untrack temp_5_arithop_22_0 
              #                    occupy a2 with temp_5_arithop_22_0
              #                    release a2 with temp_5_arithop_22_0
              #                          jump label: while.exit_21 
    j       .while.exit_21
              #                    regtab     a0:Freed { symidx: c_18_3, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     48   label while.exit_21: 
.while.exit_21:
              #                     26   sum_18_1 = i32 c_18_3 
              #                    occupy a0 with c_18_3
              #                    occupy a1 with sum_18_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     156  sum_18_2 = i32 sum_18_1 
              #                    occupy a1 with sum_18_1
              #                    occupy a2 with sum_18_2
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     173  untrack sum_18_1 
              #                    occupy a1 with sum_18_1
              #                    release a1 with sum_18_1
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: c_18_3, tracked: true } |     a2:Freed { symidx: sum_18_2, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     52   label while.head_32: 
.while.head_32:
              #                     174  untrack c_18_3 
              #                    occupy a0 with c_18_3
              #                    release a0 with c_18_3
              #                     51   (nop) 
              #                          jump label: while.body_32 
    j       .while.body_32
              #                    regtab     a2:Freed { symidx: sum_18_2, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     53   label while.body_32: 
.while.body_32:
              #                     30   temp_0_ret_of_getch_33_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a2 with sum_18_2
              #                    store to sum_18_2 in mem offset legal
    sw      a2,48(sp)
              #                    release a2 with sum_18_2
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     32   temp_1_arithop_33_0 = Sub i32 temp_0_ret_of_getch_33_0, 48_0 
              #                    occupy a0 with temp_0_ret_of_getch_33_0
              #                    occupy a1 with 48_0
    li      a1, 48
              #                    occupy a2 with temp_1_arithop_33_0
              #                    regtab:    a0:Occupied { symidx: temp_0_ret_of_getch_33_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_1_arithop_33_0, tracked: true, occupy_count: 1 } |  released_gpr_count:14,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     33   (nop) 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_33_0, tracked: true } |     a2:Freed { symidx: temp_1_arithop_33_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     59   temp_8_cmp_35_0 = icmp i32 Sge temp_1_arithop_33_0, 0_0 
              #                    occupy a2 with temp_1_arithop_33_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a3 with temp_8_cmp_35_0
    slt     a3,a2,a1
    xori    a3,a3,1
              #                    free a2
              #                    free a1
              #                    free a3
              #                     67   br i1 temp_8_cmp_35_0, label branch_short_circuit_p_true_144, label branch_short_circuit_c_false_144 
              #                    occupy a3 with temp_8_cmp_35_0
              #                    free a3
              #                    occupy a3 with temp_8_cmp_35_0
    bnez    a3, .branch_short_circuit_p_true_144
              #                    free a3
    j       .branch_short_circuit_c_false_144
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_33_0, tracked: true } |     a2:Freed { symidx: temp_1_arithop_33_0, tracked: true } |     a3:Freed { symidx: temp_8_cmp_35_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     64   label branch_short_circuit_p_true_144: 
.branch_short_circuit_p_true_144:
              #                     61   temp_9_cmp_35_0 = icmp i32 Sle temp_1_arithop_33_0, 9_0 
              #                    occupy a2 with temp_1_arithop_33_0
              #                    occupy a1 with 9_0
    li      a1, 9
              #                    occupy a4 with temp_9_cmp_35_0
    slt     a4,a1,a2
    xori    a4,a4,1
              #                    free a2
              #                    free a1
              #                    free a4
              #                     66   br i1 temp_9_cmp_35_0, label branch_short_circuit_c_true_144, label branch_short_circuit_c_false_144 
              #                    occupy a4 with temp_9_cmp_35_0
              #                    free a4
              #                    occupy a4 with temp_9_cmp_35_0
    bnez    a4, .branch_short_circuit_c_true_144
              #                    free a4
              #                    occupy a4 with temp_9_cmp_35_0
              #                    store to temp_9_cmp_35_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_9_cmp_35_0
    j       .branch_short_circuit_c_false_144
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_33_0, tracked: true } |     a2:Freed { symidx: temp_1_arithop_33_0, tracked: true } |     a3:Freed { symidx: temp_8_cmp_35_0, tracked: true } |     a4:Freed { symidx: temp_9_cmp_35_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     62   label branch_short_circuit_c_true_144: 
.branch_short_circuit_c_true_144:
              #                     35   temp_2_arithop_37_0 = Mul i32 sum_18_2, 10_0 
              #                    occupy a1 with temp_2_arithop_37_0
              #                    occupy a5 with sum_18_2
              #                    load from sum_18_2 in mem


    lw      a5,48(sp)
              #                    occupy a6 with 10_0
    li      a6, 10
    mulw    a1,a5,a6
              #                    free a5
              #                    free a6
              #                    free a1
              #                     37   temp_3_arithop_37_0 = Add i32 temp_2_arithop_37_0, temp_1_arithop_33_0 
              #                    occupy a1 with temp_2_arithop_37_0
              #                    occupy a2 with temp_1_arithop_33_0
              #                    occupy a7 with temp_3_arithop_37_0
    ADDW    a7,a1,a2
              #                    free a1
              #                    free a2
              #                    free a7
              #                     38   (nop) 
              #                          jump label: gather_15 
    j       .gather_15
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_33_0, tracked: true } |     a1:Freed { symidx: temp_2_arithop_37_0, tracked: true } |     a2:Freed { symidx: temp_1_arithop_33_0, tracked: true } |     a3:Freed { symidx: temp_8_cmp_35_0, tracked: true } |     a4:Freed { symidx: temp_9_cmp_35_0, tracked: true } |     a5:Freed { symidx: sum_18_2, tracked: true } |     a7:Freed { symidx: temp_3_arithop_37_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     68   label gather_15: 
.gather_15:
              #                     157  sum_18_2 = i32 temp_3_arithop_37_0 
              #                    occupy a7 with temp_3_arithop_37_0
              #                    occupy a5 with sum_18_2
    mv      a5, a7
              #                    free a7
              #                    free a5
              #                          jump label: while.head_32 
              #                    occupy a3 with temp_8_cmp_35_0
              #                    store to temp_8_cmp_35_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_8_cmp_35_0
              #                    occupy a7 with temp_3_arithop_37_0
              #                    store to temp_3_arithop_37_0 in mem offset legal
    sw      a7,12(sp)
              #                    release a7 with temp_3_arithop_37_0
              #                    occupy a0 with temp_0_ret_of_getch_33_0
              #                    store to temp_0_ret_of_getch_33_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_0_ret_of_getch_33_0
              #                    occupy a0 with c_18_3
              #                    load from c_18_3 in mem


    lw      a0,36(sp)
              #                    occupy a4 with temp_9_cmp_35_0
              #                    store to temp_9_cmp_35_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_9_cmp_35_0
              #                    occupy a5 with sum_18_2
              #                    store to sum_18_2 in mem offset legal
    sw      a5,48(sp)
              #                    release a5 with sum_18_2
              #                    occupy a2 with temp_1_arithop_33_0
              #                    store to temp_1_arithop_33_0 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with temp_1_arithop_33_0
              #                    occupy a2 with sum_18_2
              #                    load from sum_18_2 in mem


    lw      a2,48(sp)
              #                    occupy a1 with temp_2_arithop_37_0
              #                    store to temp_2_arithop_37_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_2_arithop_37_0
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_33_0, tracked: true } |     a2:Freed { symidx: temp_1_arithop_33_0, tracked: true } |     a3:Freed { symidx: temp_8_cmp_35_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     63   label branch_short_circuit_c_false_144: 
.branch_short_circuit_c_false_144:
              #                     186  untrack temp_8_cmp_35_0 
              #                    occupy a3 with temp_8_cmp_35_0
              #                    release a3 with temp_8_cmp_35_0
              #                     185  untrack temp_0_ret_of_getch_33_0 
              #                    occupy a0 with temp_0_ret_of_getch_33_0
              #                    release a0 with temp_0_ret_of_getch_33_0
              #                     184  untrack temp_3_arithop_37_0 
              #                     183  untrack temp_1_arithop_33_0 
              #                    occupy a2 with temp_1_arithop_33_0
              #                    release a2 with temp_1_arithop_33_0
              #                     182  untrack temp_9_cmp_35_0 
              #                     181  untrack temp_2_arithop_37_0 
              #                     180  untrack temp_9_cmp_35_0 
              #                     179  untrack temp_0_ret_of_getch_33_0 
              #                     178  untrack temp_8_cmp_35_0 
              #                     177  untrack temp_1_arithop_33_0 
              #                     176  untrack temp_2_arithop_37_0 
              #                     175  untrack temp_3_arithop_37_0 
              #                          jump label: while.exit_32 
    j       .while.exit_32
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                     54   label while.exit_32: 
.while.exit_32:
              #                     28   ret sum_18_2 
              #                    load from ra_my_getint_0 in mem
    ld      ra,64(sp)
              #                    load from s0_my_getint_0 in mem
    ld      s0,56(sp)
              #                    occupy a0 with sum_18_2
              #                    load from sum_18_2 in mem


    lw      a0,48(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: sum_18_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     152  label UP_26_0: 
.UP_26_0:
              #                     158  c_18_3 = i32 c_18_1 
              #                    occupy a1 with c_18_1
              #                    load from c_18_1 in mem


    lw      a1,40(sp)
              #                    occupy a2 with c_18_3
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     187  untrack c_18_1 
              #                    occupy a1 with c_18_1
              #                    release a1 with c_18_1
              #                          jump label: while.exit_21 
              #                    occupy a0 with sum_18_2
              #                    store to sum_18_2 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with sum_18_2
              #                    occupy a2 with c_18_3
              #                    store to c_18_3 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with c_18_3
              #                    occupy a0 with c_18_3
              #                    load from c_18_3 in mem


    lw      a0,36(sp)
    j       .while.exit_21
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define my_putint_0 "a_42_0," -> my_putint_ret_0 
    .globl my_putint
    .type my_putint,@function
my_putint:
              #                    mem layout:|ra_my_putint:8 at 144|s0_my_putint:8 at 136|a _s42 _i0:4 at 132|a _s42 _i1:4 at 128|b:64 at 64|i _s44 _i1:4 at 60|i _s44 _i3:4 at 56|temp_12_arithop _s54 _i0:4 at 52|none:4 at 48|temp_13_ptr_of_b_44:8 at 40|temp_14_ele_of_b_44 _s54 _i0:4 at 36|none:4 at 32|temp_15_ptr_of_b_44:8 at 24|temp_16_arithop _s48 _i0:4 at 20|temp_17_arithop _s48 _i0:4 at 16|temp_18_arithop _s48 _i0:4 at 12|temp_19_arithop _s48 _i0:4 at 8|temp_20_cmp _s46 _i0:1 at 7|temp_21_cmp _s52 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-152
              #                    store to ra_my_putint_0 in mem offset legal
    sd      ra,144(sp)
              #                    store to s0_my_putint_0 in mem offset legal
    sd      s0,136(sp)
    addi    s0,sp,152
              #                     81   alloc Array:i32:[Some(16_0)] [b_44] 
              #                     83   alloc i32 [i_44] 
              #                     84   alloc i32 [temp_12_arithop_54] 
              #                     87   alloc ptr->i32 [temp_13_ptr_of_b_44_54] 
              #                     89   alloc i32 [temp_14_ele_of_b_44_54] 
              #                     93   alloc ptr->i32 [temp_15_ptr_of_b_44_48] 
              #                     95   alloc i32 [temp_16_arithop_48] 
              #                     97   alloc i32 [temp_17_arithop_48] 
              #                     101  alloc i32 [temp_18_arithop_48] 
              #                     104  alloc i32 [temp_19_arithop_48] 
              #                     107  alloc i1 [temp_20_cmp_46] 
              #                     113  alloc i1 [temp_21_cmp_52] 
              #                    regtab     a0:Freed { symidx: a_42_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     80    
              #                     82   (nop) 
              #                     160  a_42_1 = i32 a_42_0 
              #                    occupy a0 with a_42_0
              #                    occupy a1 with a_42_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     188  untrack a_42_0 
              #                    occupy a0 with a_42_0
              #                    release a0 with a_42_0
              #                     161  i_44_1 = i32 0_0 
              #                    occupy a0 with i_44_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_47 
    j       .while.head_47
              #                    regtab     a0:Freed { symidx: i_44_1, tracked: true } |     a1:Freed { symidx: a_42_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     109  label while.head_47: 
.while.head_47:
              #                     108  temp_20_cmp_46_0 = icmp i32 Sgt a_42_1, 0_0 
              #                    occupy a1 with a_42_1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_20_cmp_46_0
    slt     a3,a2,a1
              #                    free a1
              #                    free a2
              #                    free a3
              #                     112  br i1 temp_20_cmp_46_0, label while.body_47, label UP_8_0 
              #                    occupy a3 with temp_20_cmp_46_0
              #                    free a3
              #                    occupy a3 with temp_20_cmp_46_0
    bnez    a3, .while.body_47
              #                    free a3
    j       .UP_8_0
              #                    regtab     a0:Freed { symidx: i_44_1, tracked: true } |     a1:Freed { symidx: a_42_1, tracked: true } |     a3:Freed { symidx: temp_20_cmp_46_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     110  label while.body_47: 
.while.body_47:
              #                     94   temp_15_ptr_of_b_44_48 = GEP b_44_1:Array:i32:[Some(16_0)] [Some(i_44_1)] 
              #                    occupy a2 with temp_15_ptr_of_b_44_48
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_44_1
    mv      a4, a0
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,64
              #                    free a2
              #                     96   temp_16_arithop_48_0 = Mod i32 a_42_1, 10_0 
              #                    occupy a1 with a_42_1
              #                    occupy a5 with 10_0
    li      a5, 10
              #                    occupy a6 with temp_16_arithop_48_0
    rem     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                     98   temp_17_arithop_48_0 = Add i32 temp_16_arithop_48_0, 48_0 
              #                    occupy a6 with temp_16_arithop_48_0
              #                    occupy a7 with 48_0
    li      a7, 48
              #                    occupy s1 with temp_17_arithop_48_0
    ADDW    s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                     99   store temp_17_arithop_48_0:i32 temp_15_ptr_of_b_44_48:ptr->i32 
              #                    occupy a2 with temp_15_ptr_of_b_44_48
              #                    occupy s1 with temp_17_arithop_48_0
    sw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                     100  b_44_2 = chi b_44_1:99 
              #                     102  temp_18_arithop_48_0 = Div i32 a_42_1, 10_0 
              #                    occupy a1 with a_42_1
              #                    found literal reg Some(a5) already exist with 10_0
              #                    occupy a5 with 10_0
              #                    occupy s2 with temp_18_arithop_48_0
    divw    s2,a1,a5
              #                    free a1
              #                    free a5
              #                    free s2
              #                     103  (nop) 
              #                     105  temp_19_arithop_48_0 = Add i32 i_44_1, 1_0 
              #                    occupy a0 with i_44_1
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_19_arithop_48_0
    ADDW    s4,a0,s3
              #                    free a0
              #                    free s3
              #                    free s4
              #                     106  (nop) 
              #                     162  a_42_1 = i32 temp_18_arithop_48_0 
              #                    occupy s2 with temp_18_arithop_48_0
              #                    occupy a1 with a_42_1
    mv      a1, s2
              #                    free s2
              #                    free a1
              #                     163  i_44_1 = i32 temp_19_arithop_48_0 
              #                    occupy s4 with temp_19_arithop_48_0
              #                    occupy a0 with i_44_1
    mv      a0, s4
              #                    free s4
              #                    free a0
              #                          jump label: while.head_47 
              #                    occupy s1 with temp_17_arithop_48_0
              #                    store to temp_17_arithop_48_0 in mem offset legal
    sw      s1,16(sp)
              #                    release s1 with temp_17_arithop_48_0
              #                    occupy s2 with temp_18_arithop_48_0
              #                    store to temp_18_arithop_48_0 in mem offset legal
    sw      s2,12(sp)
              #                    release s2 with temp_18_arithop_48_0
              #                    occupy a2 with temp_15_ptr_of_b_44_48
              #                    store to temp_15_ptr_of_b_44_48 in mem offset legal
    sd      a2,24(sp)
              #                    release a2 with temp_15_ptr_of_b_44_48
              #                    occupy a6 with temp_16_arithop_48_0
              #                    store to temp_16_arithop_48_0 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_16_arithop_48_0
              #                    occupy a3 with temp_20_cmp_46_0
              #                    store to temp_20_cmp_46_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_20_cmp_46_0
              #                    occupy s4 with temp_19_arithop_48_0
              #                    store to temp_19_arithop_48_0 in mem offset legal
    sw      s4,8(sp)
              #                    release s4 with temp_19_arithop_48_0
    j       .while.head_47
              #                    regtab     a0:Freed { symidx: i_44_1, tracked: true } |     a1:Freed { symidx: a_42_1, tracked: true } |     a3:Freed { symidx: temp_20_cmp_46_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     159  label UP_8_0: 
.UP_8_0:
              #                     194  untrack temp_20_cmp_46_0 
              #                    occupy a3 with temp_20_cmp_46_0
              #                    release a3 with temp_20_cmp_46_0
              #                     193  untrack temp_16_arithop_48_0 
              #                     192  untrack temp_15_ptr_of_b_44_48 
              #                     191  untrack temp_19_arithop_48_0 
              #                     190  untrack temp_18_arithop_48_0 
              #                     189  untrack temp_17_arithop_48_0 
              #                     164  i_44_3 = i32 i_44_1 
              #                    occupy a0 with i_44_1
              #                    occupy a2 with i_44_3
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: while.exit_47 
    j       .while.exit_47
              #                    regtab     a0:Freed { symidx: i_44_1, tracked: true } |     a1:Freed { symidx: a_42_1, tracked: true } |     a2:Freed { symidx: i_44_3, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     111  label while.exit_47: 
.while.exit_47:
              #                     114  temp_21_cmp_52_0 = icmp i32 Sgt i_44_3, 0_0 
              #                    occupy a2 with i_44_3
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_21_cmp_52_0
    slt     a4,a3,a2
              #                    free a2
              #                    free a3
              #                    free a4
              #                     117  br i1 temp_21_cmp_52_0, label while.body_53, label while.exit_53 
              #                    occupy a4 with temp_21_cmp_52_0
              #                    free a4
              #                    occupy a4 with temp_21_cmp_52_0
    bnez    a4, .while.body_53
              #                    free a4
    j       .while.exit_53
              #                    regtab     a0:Freed { symidx: i_44_1, tracked: true } |     a1:Freed { symidx: a_42_1, tracked: true } |     a2:Freed { symidx: i_44_3, tracked: true } |     a4:Freed { symidx: temp_21_cmp_52_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     115  label while.body_53: 
.while.body_53:
              #                     85   temp_12_arithop_54_0 = Sub i32 i_44_3, 1_0 
              #                    occupy a2 with i_44_3
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_12_arithop_54_0
              #                    regtab:    a0:Freed { symidx: i_44_1, tracked: true } |     a1:Freed { symidx: a_42_1, tracked: true } |     a2:Occupied { symidx: i_44_3, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_21_cmp_52_0, tracked: true } |     a5:Occupied { symidx: temp_12_arithop_54_0, tracked: true, occupy_count: 1 } |  released_gpr_count:11,released_fpr_count:24


    subw    a5,a2,a3
              #                    free a2
              #                    free a3
              #                    free a5
              #                     86   (nop) 
              #                     88   temp_13_ptr_of_b_44_54 = GEP b_44_1:Array:i32:[Some(16_0)] [Some(temp_12_arithop_54_0)] 
              #                    occupy a6 with temp_13_ptr_of_b_44_54
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_12_arithop_54_0
    mv      a7, a5
              #                    free a5
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,64
              #                    free a6
              #                     90   temp_14_ele_of_b_44_54_0 = load temp_13_ptr_of_b_44_54:ptr->i32 
              #                    occupy a6 with temp_13_ptr_of_b_44_54
              #                    occupy s1 with temp_14_ele_of_b_44_54_0
    lw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                     91   mu b_44_1:90 
              #                     92    Call void putch_0(temp_14_ele_of_b_44_54_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_14_ele_of_b_44_54_0
              #                    store to temp_14_ele_of_b_44_54_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_14_ele_of_b_44_54_0
              #                    occupy a0 with i_44_1
              #                    store to i_44_1 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with i_44_1
              #                    occupy a1 with a_42_1
              #                    store to a_42_1 in mem offset legal
    sw      a1,128(sp)
              #                    release a1 with a_42_1
              #                    occupy a2 with i_44_3
              #                    store to i_44_3 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with i_44_3
              #                    occupy a4 with temp_21_cmp_52_0
              #                    store to temp_21_cmp_52_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_21_cmp_52_0
              #                    occupy a5 with temp_12_arithop_54_0
              #                    store to temp_12_arithop_54_0 in mem offset legal
    sw      a5,52(sp)
              #                    release a5 with temp_12_arithop_54_0
              #                    occupy a6 with temp_13_ptr_of_b_44_54
              #                    store to temp_13_ptr_of_b_44_54 in mem offset legal
    sd      a6,40(sp)
              #                    release a6 with temp_13_ptr_of_b_44_54
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_14_ele_of_b_44_54_0_0
              #                    load from temp_14_ele_of_b_44_54_0 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    putch
              #                     165  i_44_3 = i32 temp_12_arithop_54_0 
              #                    occupy a0 with temp_12_arithop_54_0
              #                    load from temp_12_arithop_54_0 in mem


    lw      a0,52(sp)
              #                    occupy a1 with i_44_3
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.exit_47 
              #                    occupy a1 with i_44_3
              #                    store to i_44_3 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with i_44_3
              #                    occupy a2 with i_44_3
              #                    load from i_44_3 in mem


    lw      a2,56(sp)
              #                    occupy a1 with a_42_1
              #                    load from a_42_1 in mem


    lw      a1,128(sp)
              #                    occupy a0 with temp_12_arithop_54_0
              #                    store to temp_12_arithop_54_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_12_arithop_54_0
              #                    occupy a0 with i_44_1
              #                    load from i_44_1 in mem


    lw      a0,60(sp)
    j       .while.exit_47
              #                    regtab     a0:Freed { symidx: i_44_1, tracked: true } |     a1:Freed { symidx: a_42_1, tracked: true } |     a2:Freed { symidx: i_44_3, tracked: true } |     a4:Freed { symidx: temp_21_cmp_52_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     116  label while.exit_53: 
.while.exit_53:
              #                     118  ret 
              #                    load from ra_my_putint_0 in mem
    ld      ra,144(sp)
              #                    load from s0_my_putint_0 in mem
    ld      s0,136(sp)
    addi    sp,sp,152
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     21   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|temp_22_ret_of_my_getint _s58 _i0:4 at 20|n _s58 _i1:4 at 16|temp_23_ret_of_my_getint _s62 _i0:4 at 12|temp_24_arithop _s62 _i0:4 at 8|temp_25_cmp _s60 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     119  alloc i32 [temp_22_ret_of_my_getint_58] 
              #                     122  alloc i32 [n_58] 
              #                     125  alloc i32 [temp_23_ret_of_my_getint_62] 
              #                     128  alloc i32 [m_62] 
              #                     131  alloc i32 [temp_24_arithop_62] 
              #                     134  alloc i1 [temp_25_cmp_60] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     120  temp_22_ret_of_my_getint_58_0 =  Call i32 my_getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    my_getint
              #                     121  (nop) 
              #                     166  n_58_1 = i32 temp_22_ret_of_my_getint_58_0 
              #                    occupy a0 with temp_22_ret_of_my_getint_58_0
              #                    occupy a1 with n_58_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     195  untrack temp_22_ret_of_my_getint_58_0 
              #                    occupy a0 with temp_22_ret_of_my_getint_58_0
              #                    release a0 with temp_22_ret_of_my_getint_58_0
              #                          jump label: while.head_61 
    j       .while.head_61
              #                    regtab     a1:Freed { symidx: n_58_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     136  label while.head_61: 
.while.head_61:
              #                     135  temp_25_cmp_60_0 = icmp i32 Sgt n_58_1, 0_0 
              #                    occupy a1 with n_58_1
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with temp_25_cmp_60_0
    slt     a2,a0,a1
              #                    free a1
              #                    free a0
              #                    free a2
              #                     139  br i1 temp_25_cmp_60_0, label while.body_61, label while.exit_61 
              #                    occupy a2 with temp_25_cmp_60_0
              #                    free a2
              #                    occupy a2 with temp_25_cmp_60_0
    bnez    a2, .while.body_61
              #                    free a2
    j       .while.exit_61
              #                    regtab     a1:Freed { symidx: n_58_1, tracked: true } |     a2:Freed { symidx: temp_25_cmp_60_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     137  label while.body_61: 
.while.body_61:
              #                     126  temp_23_ret_of_my_getint_62_0 =  Call i32 my_getint_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with n_58_1
              #                    store to n_58_1 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with n_58_1
              #                    occupy a2 with temp_25_cmp_60_0
              #                    store to temp_25_cmp_60_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_25_cmp_60_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    my_getint
              #                     127  (nop) 
              #                     129   Call void my_putint_0(temp_23_ret_of_my_getint_62_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_23_ret_of_my_getint_62_0
              #                    store to temp_23_ret_of_my_getint_62_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_23_ret_of_my_getint_62_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_23_ret_of_my_getint_62_0_0
              #                    load from temp_23_ret_of_my_getint_62_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    my_putint
              #                     130   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     132  temp_24_arithop_62_0 = Sub i32 n_58_1, 1_0 
              #                    occupy a0 with n_58_1
              #                    load from n_58_1 in mem


    lw      a0,16(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_24_arithop_62_0
              #                    regtab:    a0:Occupied { symidx: n_58_1, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_24_arithop_62_0, tracked: true, occupy_count: 1 } |  released_gpr_count:15,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     133  (nop) 
              #                     167  n_58_1 = i32 temp_24_arithop_62_0 
              #                    occupy a2 with temp_24_arithop_62_0
              #                    occupy a0 with n_58_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_61 
              #                    occupy a2 with temp_24_arithop_62_0
              #                    store to temp_24_arithop_62_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_24_arithop_62_0
              #                    occupy a0 with n_58_1
              #                    store to n_58_1 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with n_58_1
              #                    occupy a1 with n_58_1
              #                    load from n_58_1 in mem


    lw      a1,16(sp)
    j       .while.head_61
              #                    regtab     a1:Freed { symidx: n_58_1, tracked: true } |     a2:Freed { symidx: temp_25_cmp_60_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     138  label while.exit_61: 
.while.exit_61:
              #                     196  untrack n_58_1 
              #                    occupy a1 with n_58_1
              #                    release a1 with n_58_1
              #                     124  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl ascii_0
              #                     17   global i32 ascii_0_0 
    .type ascii_0,@object
ascii_0:
    .word 48
