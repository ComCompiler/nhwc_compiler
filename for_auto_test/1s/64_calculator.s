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
              #                     33   Define isdigit_0 "x_24_0," -> isdigit_ret_0 
    .globl isdigit
    .type isdigit,@function
isdigit:
              #                    mem layout:|ra_isdigit:8 at 16|s0_isdigit:8 at 8|x _s24 _i0:4 at 4|temp_0_cmp _s27 _i0:1 at 3|temp_1_cmp _s27 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-24
              #                    store to ra_isdigit_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_isdigit_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     48   alloc i1 [temp_0_cmp_27] 
              #                     50   alloc i1 [temp_1_cmp_27] 
              #                    regtab     a0:Freed { symidx: x_24_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L28_0: 
.L28_0:
              #                     49   temp_0_cmp_27_0 = icmp i32 Sge x_24_0, 48_0 
              #                    occupy a0 with x_24_0
              #                    occupy a1 with 48_0
    li      a1, 48
              #                    occupy a2 with temp_0_cmp_27_0
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     57   br i1 temp_0_cmp_27_0, label branch_short_circuit_p_true_240, label branch_short_circuit_c_false_240 
              #                    occupy a2 with temp_0_cmp_27_0
              #                    free a2
              #                    occupy a2 with temp_0_cmp_27_0
    bnez    a2, .branch_short_circuit_p_true_240
              #                    free a2
    j       .branch_short_circuit_c_false_240
              #                    regtab     a0:Freed { symidx: x_24_0, tracked: true } |     a2:Freed { symidx: temp_0_cmp_27_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     54   label branch_short_circuit_p_true_240: 
.branch_short_circuit_p_true_240:
              #                     1472 untrack temp_0_cmp_27_0 
              #                    occupy a2 with temp_0_cmp_27_0
              #                    release a2 with temp_0_cmp_27_0
              #                     51   temp_1_cmp_27_0 = icmp i32 Sle x_24_0, 57_0 
              #                    occupy a0 with x_24_0
              #                    occupy a1 with 57_0
    li      a1, 57
              #                    occupy a2 with temp_1_cmp_27_0
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1473 untrack x_24_0 
              #                    occupy a0 with x_24_0
              #                    release a0 with x_24_0
              #                     56   br i1 temp_1_cmp_27_0, label branch_short_circuit_c_true_240, label branch_short_circuit_c_false_240 
              #                    occupy a2 with temp_1_cmp_27_0
              #                    free a2
              #                    occupy a2 with temp_1_cmp_27_0
    bnez    a2, .branch_short_circuit_c_true_240
              #                    free a2
              #                    occupy a0 with x_24_0
              #                    load from x_24_0 in mem


    lw      a0,4(sp)
              #                    occupy a2 with temp_1_cmp_27_0
              #                    store to temp_1_cmp_27_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_1_cmp_27_0
              #                    occupy a2 with temp_0_cmp_27_0
              #                    load from temp_0_cmp_27_0 in mem


    lb      a2,3(sp)
    j       .branch_short_circuit_c_false_240
              #                    regtab     a2:Freed { symidx: temp_1_cmp_27_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     52   label branch_short_circuit_c_true_240: 
.branch_short_circuit_c_true_240:
              #                     1474 untrack temp_1_cmp_27_0 
              #                    occupy a2 with temp_1_cmp_27_0
              #                    release a2 with temp_1_cmp_27_0
              #                     47   ret 1_0 
              #                    load from ra_isdigit_0 in mem
    ld      ra,16(sp)
              #                    load from s0_isdigit_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_24_0, tracked: true } |     a2:Freed { symidx: temp_0_cmp_27_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     53   label branch_short_circuit_c_false_240: 
.branch_short_circuit_c_false_240:
              #                     1475 untrack temp_1_cmp_27_0 
              #                     1471 untrack temp_1_cmp_27_0 
              #                     1470 untrack temp_0_cmp_27_0 
              #                    occupy a2 with temp_0_cmp_27_0
              #                    release a2 with temp_0_cmp_27_0
              #                     1469 untrack x_24_0 
              #                    occupy a0 with x_24_0
              #                    release a0 with x_24_0
              #                          jump label: L29_0 
    j       .L29_0
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                          label L29_0: 
.L29_0:
              #                     45   ret 0_0 
              #                    load from ra_isdigit_0 in mem
    ld      ra,16(sp)
              #                    load from s0_isdigit_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     34   Define power_0 "b_31_0,a_31_0," -> power_ret_0 
    .globl power
    .type power,@function
power:
              #                    mem layout:|ra_power:8 at 40|s0_power:8 at 32|b _s31 _i0:4 at 28|a _s31 _i0:4 at 24|a _s31 _i1:4 at 20|result _s33 _i1:4 at 16|temp_2_arithop _s37 _i0:4 at 12|temp_3_arithop _s37 _i0:4 at 8|temp_4_cmp _s35 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-48
              #                    store to ra_power_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_power_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     61   alloc i32 [result_33] 
              #                     64   alloc i32 [temp_2_arithop_37] 
              #                     67   alloc i32 [temp_3_arithop_37] 
              #                     70   alloc i1 [temp_4_cmp_35] 
              #                    regtab     a0:Freed { symidx: b_31_0, tracked: true } |     a1:Freed { symidx: a_31_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L27_0: 
.L27_0:
              #                     60   (nop) 
              #                     1443 a_31_1 = i32 a_31_0 
              #                    occupy a1 with a_31_0
              #                    occupy a2 with a_31_1
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     1476 untrack a_31_0 
              #                    occupy a1 with a_31_0
              #                    release a1 with a_31_0
              #                     1444 result_33_1 = i32 1_0 
              #                    occupy a1 with result_33_1
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_36 
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: b_31_0, tracked: true } |     a1:Freed { symidx: result_33_1, tracked: true } |     a2:Freed { symidx: a_31_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     72   label while.head_36: 
.while.head_36:
              #                     71   temp_4_cmp_35_0 = icmp i32 Ne a_31_1, 0_0 
              #                    occupy a2 with a_31_1
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_4_cmp_35_0
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                     75   br i1 temp_4_cmp_35_0, label while.body_36, label while.exit_36 
              #                    occupy a4 with temp_4_cmp_35_0
              #                    free a4
              #                    occupy a4 with temp_4_cmp_35_0
    bnez    a4, .while.body_36
              #                    free a4
    j       .while.exit_36
              #                    regtab     a0:Freed { symidx: b_31_0, tracked: true } |     a1:Freed { symidx: result_33_1, tracked: true } |     a2:Freed { symidx: a_31_1, tracked: true } |     a4:Freed { symidx: temp_4_cmp_35_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     73   label while.body_36: 
.while.body_36:
              #                     65   temp_2_arithop_37_0 = Mul i32 result_33_1, b_31_0 
              #                    occupy a3 with temp_2_arithop_37_0
              #                    occupy a1 with result_33_1
              #                    occupy a0 with b_31_0
    mulw    a3,a1,a0
              #                    free a1
              #                    free a0
              #                    free a3
              #                     66   (nop) 
              #                     68   temp_3_arithop_37_0 = Sub i32 a_31_1, 1_0 
              #                    occupy a2 with a_31_1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_3_arithop_37_0
              #                    regtab:    a0:Freed { symidx: b_31_0, tracked: true } |     a1:Freed { symidx: result_33_1, tracked: true } |     a2:Occupied { symidx: a_31_1, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_2_arithop_37_0, tracked: true } |     a4:Freed { symidx: temp_4_cmp_35_0, tracked: true } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Occupied { symidx: temp_3_arithop_37_0, tracked: true, occupy_count: 1 } |  released_gpr_count:11,released_fpr_count:24


    subw    a6,a2,a5
              #                    free a2
              #                    free a5
              #                    free a6
              #                     69   (nop) 
              #                     1445 a_31_1 = i32 temp_3_arithop_37_0 
              #                    occupy a6 with temp_3_arithop_37_0
              #                    occupy a2 with a_31_1
    mv      a2, a6
              #                    free a6
              #                    free a2
              #                     1446 result_33_1 = i32 temp_2_arithop_37_0 
              #                    occupy a3 with temp_2_arithop_37_0
              #                    occupy a1 with result_33_1
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_36 
              #                    occupy a4 with temp_4_cmp_35_0
              #                    store to temp_4_cmp_35_0 in mem offset legal
    sb      a4,7(sp)
              #                    release a4 with temp_4_cmp_35_0
              #                    occupy a6 with temp_3_arithop_37_0
              #                    store to temp_3_arithop_37_0 in mem offset legal
    sw      a6,8(sp)
              #                    release a6 with temp_3_arithop_37_0
              #                    occupy a3 with temp_2_arithop_37_0
              #                    store to temp_2_arithop_37_0 in mem offset legal
    sw      a3,12(sp)
              #                    release a3 with temp_2_arithop_37_0
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: b_31_0, tracked: true } |     a1:Freed { symidx: result_33_1, tracked: true } |     a2:Freed { symidx: a_31_1, tracked: true } |     a4:Freed { symidx: temp_4_cmp_35_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     74   label while.exit_36: 
.while.exit_36:
              #                     1478 untrack b_31_0 
              #                    occupy a0 with b_31_0
              #                    release a0 with b_31_0
              #                     1477 untrack a_31_1 
              #                    occupy a2 with a_31_1
              #                    release a2 with a_31_1
              #                     63   ret result_33_1 
              #                    load from ra_power_0 in mem
    ld      ra,40(sp)
              #                    load from s0_power_0 in mem
    ld      s0,32(sp)
              #                    occupy a1 with result_33_1
              #                    store to result_33_1 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with result_33_1
              #                    occupy a0 with result_33_1
              #                    load from result_33_1 in mem


    lw      a0,16(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     36   Define getstr_0 "get_41," -> getstr_ret_0 
    .globl getstr
    .type getstr,@function
getstr:
              #                    mem layout:|ra_getstr:8 at 80|s0_getstr:8 at 72|get:8 at 64|get:8 at 56|get:8 at 48|get:8 at 40|temp_5_ret_of_getch _s43 _i0:4 at 36|x _s43 _i1:4 at 32|length _s43 _i1:4 at 28|none:4 at 24|temp_6_ptr_of_get_41:8 at 16|temp_7_arithop _s48 _i0:4 at 12|temp_8_ret_of_getch _s48 _i0:4 at 8|temp_9_cmp _s46 _i0:1 at 7|temp_10_cmp _s46 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-88
              #                    store to ra_getstr_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_getstr_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                     78   alloc i32 [temp_5_ret_of_getch_43] 
              #                     81   alloc i32 [x_43] 
              #                     83   alloc i32 [length_43] 
              #                     86   alloc ptr->i32 [temp_6_ptr_of_get_41_48] 
              #                     90   alloc i32 [temp_7_arithop_48] 
              #                     93   alloc i32 [temp_8_ret_of_getch_48] 
              #                     96   alloc i1 [temp_9_cmp_46] 
              #                     98   alloc i1 [temp_10_cmp_46] 
              #                    regtab     a0:Freed { symidx: get_41, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L26_0: 
.L26_0:
              #                     35    
              #                     79   temp_5_ret_of_getch_43_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with get_41
              #                    store to get_41 in mem offset legal
    sd      a0,40(sp)
              #                    release a0 with get_41
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     80   (nop) 
              #                     82   (nop) 
              #                     1447 x_43_1 = i32 temp_5_ret_of_getch_43_0 
              #                    occupy a0 with temp_5_ret_of_getch_43_0
              #                    occupy a1 with x_43_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     1479 untrack temp_5_ret_of_getch_43_0 
              #                    occupy a0 with temp_5_ret_of_getch_43_0
              #                    release a0 with temp_5_ret_of_getch_43_0
              #                     1448 length_43_1 = i32 0_0 
              #                    occupy a0 with length_43_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_47 
    j       .while.head_47
              #                    regtab     a0:Freed { symidx: length_43_1, tracked: true } |     a1:Freed { symidx: x_43_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     105  label while.head_47: 
.while.head_47:
              #                     97   temp_9_cmp_46_0 = icmp i32 Ne x_43_1, 13_0 
              #                    occupy a1 with x_43_1
              #                    occupy a2 with 13_0
    li      a2, 13
              #                    occupy a3 with temp_9_cmp_46_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     106  br i1 temp_9_cmp_46_0, label branch_short_circuit_p_true_318, label branch_short_circuit_c_false_318 
              #                    occupy a3 with temp_9_cmp_46_0
              #                    free a3
              #                    occupy a3 with temp_9_cmp_46_0
    bnez    a3, .branch_short_circuit_p_true_318
              #                    free a3
    j       .branch_short_circuit_c_false_318
              #                    regtab     a0:Freed { symidx: length_43_1, tracked: true } |     a1:Freed { symidx: x_43_1, tracked: true } |     a3:Freed { symidx: temp_9_cmp_46_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     102  label branch_short_circuit_p_true_318: 
.branch_short_circuit_p_true_318:
              #                     99   temp_10_cmp_46_0 = icmp i32 Ne x_43_1, 10_0 
              #                    occupy a1 with x_43_1
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    occupy a4 with temp_10_cmp_46_0
    xor     a4,a1,a2
    snez    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                     104  br i1 temp_10_cmp_46_0, label branch_short_circuit_c_true_318, label branch_short_circuit_c_false_318 
              #                    occupy a4 with temp_10_cmp_46_0
              #                    free a4
              #                    occupy a4 with temp_10_cmp_46_0
    bnez    a4, .branch_short_circuit_c_true_318
              #                    free a4
              #                    occupy a4 with temp_10_cmp_46_0
              #                    store to temp_10_cmp_46_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_10_cmp_46_0
    j       .branch_short_circuit_c_false_318
              #                    regtab     a0:Freed { symidx: length_43_1, tracked: true } |     a1:Freed { symidx: x_43_1, tracked: true } |     a3:Freed { symidx: temp_9_cmp_46_0, tracked: true } |     a4:Freed { symidx: temp_10_cmp_46_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     100  label branch_short_circuit_c_true_318: 
.branch_short_circuit_c_true_318:
              #                     87   temp_6_ptr_of_get_41_48 = GEP get_41:ptr->i32 [Some(length_43_1)] 
              #                    occupy a2 with temp_6_ptr_of_get_41_48
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with length_43_1
    mv      a5, a0
              #                    free a0
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with get_41
              #                    load from get_41 in mem
    ld      a6,40(sp)
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                     88   store x_43_1:i32 temp_6_ptr_of_get_41_48:ptr->i32 
              #                    occupy a2 with temp_6_ptr_of_get_41_48
              #                    occupy a1 with x_43_1
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     89   get_41 = chi get_41:88 
              #                     91   temp_7_arithop_48_0 = Add i32 length_43_1, 1_0 
              #                    occupy a0 with length_43_1
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_7_arithop_48_0
    ADDW    s1,a0,a7
              #                    free a0
              #                    free a7
              #                    free s1
              #                     92   (nop) 
              #                     94   temp_8_ret_of_getch_48_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_7_arithop_48_0
              #                    store to temp_7_arithop_48_0 in mem offset legal
    sw      s1,12(sp)
              #                    release s1 with temp_7_arithop_48_0
              #                    occupy a0 with length_43_1
              #                    store to length_43_1 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with length_43_1
              #                    occupy a1 with x_43_1
              #                    store to x_43_1 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with x_43_1
              #                    occupy a2 with temp_6_ptr_of_get_41_48
              #                    store to temp_6_ptr_of_get_41_48 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_6_ptr_of_get_41_48
              #                    occupy a3 with temp_9_cmp_46_0
              #                    store to temp_9_cmp_46_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_9_cmp_46_0
              #                    occupy a4 with temp_10_cmp_46_0
              #                    store to temp_10_cmp_46_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_10_cmp_46_0
              #                    occupy a6 with get_41
              #                    store to get_41 in mem offset legal
    sd      a6,40(sp)
              #                    release a6 with get_41
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     95   (nop) 
              #                     1449 length_43_1 = i32 temp_7_arithop_48_0 
              #                    occupy a1 with temp_7_arithop_48_0
              #                    load from temp_7_arithop_48_0 in mem


    lw      a1,12(sp)
              #                    occupy a2 with length_43_1
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     1450 x_43_1 = i32 temp_8_ret_of_getch_48_0 
              #                    occupy a0 with temp_8_ret_of_getch_48_0
              #                    occupy a3 with x_43_1
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: while.head_47 
              #                    occupy a0 with temp_8_ret_of_getch_48_0
              #                    store to temp_8_ret_of_getch_48_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_8_ret_of_getch_48_0
              #                    occupy a2 with length_43_1
              #                    store to length_43_1 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with length_43_1
              #                    occupy a0 with length_43_1
              #                    load from length_43_1 in mem


    lw      a0,28(sp)
              #                    occupy a3 with x_43_1
              #                    store to x_43_1 in mem offset legal
    sw      a3,32(sp)
              #                    release a3 with x_43_1
              #                    occupy a1 with temp_7_arithop_48_0
              #                    store to temp_7_arithop_48_0 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_7_arithop_48_0
              #                    occupy a1 with x_43_1
              #                    load from x_43_1 in mem


    lw      a1,32(sp)
    j       .while.head_47
              #                    regtab     a0:Freed { symidx: length_43_1, tracked: true } |     a1:Freed { symidx: x_43_1, tracked: true } |     a3:Freed { symidx: temp_9_cmp_46_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     101  label branch_short_circuit_c_false_318: 
.branch_short_circuit_c_false_318:
              #                     1482 untrack x_43_1 
              #                    occupy a1 with x_43_1
              #                    release a1 with x_43_1
              #                     1480 untrack x_43_1 
              #                     1180 mu get_41:85 
              #                     1481 untrack get_41 
              #                     85   ret length_43_1 
              #                    load from ra_getstr_0 in mem
    ld      ra,80(sp)
              #                    load from s0_getstr_0 in mem
    ld      s0,72(sp)
              #                    occupy a0 with length_43_1
              #                    store to length_43_1 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with length_43_1
              #                    occupy a0 with length_43_1
              #                    load from length_43_1 in mem


    lw      a0,28(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     37   Define intpush_0 "x_53_0," -> intpush_ret_0 
    .globl intpush
    .type intpush,@function
intpush:
              #                    mem layout:|ra_intpush:8 at 32|s0_intpush:8 at 24|x _s53 _i0:4 at 20|temp_11_value_from_ptr _s55 _i0:4 at 16|temp_12_arithop _s55 _i0:4 at 12|temp_13_value_from_ptr _s55 _i0:4 at 8|temp_14_ptr_of_*ints_0:8 at 0
    addi    sp,sp,-40
              #                    store to ra_intpush_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_intpush_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     1181 intt_0_1 = chi intt_0_0:37 
              #                     1182 ints_0_1 = chi ints_0_0:37 
              #                     109  alloc i32 [temp_11_value_from_ptr_55] 
              #                     112  alloc i32 [temp_12_arithop_55] 
              #                     116  alloc i32 [temp_13_value_from_ptr_55] 
              #                     119  alloc ptr->i32 [temp_14_ptr_of_*ints_0_55] 
              #                    regtab     a0:Freed { symidx: x_53_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L25_0: 
.L25_0:
              #                     110  temp_11_value_from_ptr_55_0 = load *intt_0:ptr->i32 
              #                    occupy a1 with *intt_0
              #                       load label intt as ptr to reg
    la      a1, intt
              #                    occupy reg a1 with *intt_0
              #                    occupy a2 with temp_11_value_from_ptr_55_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     111  mu intt_0_1:110 
              #                     113  temp_12_arithop_55_0 = Add i32 temp_11_value_from_ptr_55_0, 1_0 
              #                    occupy a2 with temp_11_value_from_ptr_55_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_12_arithop_55_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     1483 untrack temp_11_value_from_ptr_55_0 
              #                    occupy a2 with temp_11_value_from_ptr_55_0
              #                    release a2 with temp_11_value_from_ptr_55_0
              #                     114  store temp_12_arithop_55_0:i32 *intt_0:ptr->i32 
              #                    occupy a2 with *intt_0
              #                       load label intt as ptr to reg
    la      a2, intt
              #                    occupy reg a2 with *intt_0
              #                    occupy a4 with temp_12_arithop_55_0
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     1487 untrack temp_12_arithop_55_0 
              #                    occupy a4 with temp_12_arithop_55_0
              #                    release a4 with temp_12_arithop_55_0
              #                     115  intt_0_2 = chi intt_0_1:114 
              #                     117  temp_13_value_from_ptr_55_0 = load *intt_0:ptr->i32 
              #                    occupy a4 with *intt_0
              #                       load label intt as ptr to reg
    la      a4, intt
              #                    occupy reg a4 with *intt_0
              #                    occupy a5 with temp_13_value_from_ptr_55_0
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     118  mu intt_0_2:117 
              #                     120  temp_14_ptr_of_*ints_0_55 = GEP *ints_0:ptr->i32 [Some(temp_13_value_from_ptr_55_0)] 
              #                    occupy a6 with temp_14_ptr_of_*ints_0_55
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_13_value_from_ptr_55_0
    mv      a7, a5
              #                    free a5
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy s1 with *ints_0
              #                       load label ints as ptr to reg
    la      s1, ints
              #                    occupy reg s1 with *ints_0
    add     a6,a6,s1
              #                    free s1
              #                    free a6
              #                     1485 untrack temp_13_value_from_ptr_55_0 
              #                    occupy a5 with temp_13_value_from_ptr_55_0
              #                    release a5 with temp_13_value_from_ptr_55_0
              #                     121  store x_53_0:i32 temp_14_ptr_of_*ints_0_55:ptr->i32 
              #                    occupy a6 with temp_14_ptr_of_*ints_0_55
              #                    occupy a0 with x_53_0
    sw      a0,0(a6)
              #                    free a0
              #                    free a6
              #                     1486 untrack temp_14_ptr_of_*ints_0_55 
              #                    occupy a6 with temp_14_ptr_of_*ints_0_55
              #                    release a6 with temp_14_ptr_of_*ints_0_55
              #                     1484 untrack x_53_0 
              #                    occupy a0 with x_53_0
              #                    release a0 with x_53_0
              #                     122  ints_0_2 = chi ints_0_1:121 
              #                          jump label: exit_20 
    j       .exit_20
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                     124  label exit_20: 
.exit_20:
              #                     1183 mu intt_0_2:123 
              #                     1184 mu ints_0_2:123 
              #                     123  ret 
              #                    load from ra_intpush_0 in mem
    ld      ra,32(sp)
              #                    load from s0_intpush_0 in mem
    ld      s0,24(sp)
    addi    sp,sp,40
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     38   Define chapush_0 "x_58_0," -> chapush_ret_0 
    .globl chapush
    .type chapush,@function
chapush:
              #                    mem layout:|ra_chapush:8 at 32|s0_chapush:8 at 24|x _s58 _i0:4 at 20|temp_15_value_from_ptr _s60 _i0:4 at 16|temp_16_arithop _s60 _i0:4 at 12|temp_17_value_from_ptr _s60 _i0:4 at 8|temp_18_ptr_of_*chas_0:8 at 0
    addi    sp,sp,-40
              #                    store to ra_chapush_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_chapush_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     1185 chat_0_1 = chi chat_0_0:38 
              #                     1186 chas_0_1 = chi chas_0_0:38 
              #                     125  alloc i32 [temp_15_value_from_ptr_60] 
              #                     128  alloc i32 [temp_16_arithop_60] 
              #                     132  alloc i32 [temp_17_value_from_ptr_60] 
              #                     135  alloc ptr->i32 [temp_18_ptr_of_*chas_0_60] 
              #                    regtab     a0:Freed { symidx: x_58_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L24_0: 
.L24_0:
              #                     126  temp_15_value_from_ptr_60_0 = load *chat_0:ptr->i32 
              #                    occupy a1 with *chat_0
              #                       load label chat as ptr to reg
    la      a1, chat
              #                    occupy reg a1 with *chat_0
              #                    occupy a2 with temp_15_value_from_ptr_60_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     127  mu chat_0_1:126 
              #                     129  temp_16_arithop_60_0 = Add i32 temp_15_value_from_ptr_60_0, 1_0 
              #                    occupy a2 with temp_15_value_from_ptr_60_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_16_arithop_60_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     1488 untrack temp_15_value_from_ptr_60_0 
              #                    occupy a2 with temp_15_value_from_ptr_60_0
              #                    release a2 with temp_15_value_from_ptr_60_0
              #                     130  store temp_16_arithop_60_0:i32 *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    occupy a4 with temp_16_arithop_60_0
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     1489 untrack temp_16_arithop_60_0 
              #                    occupy a4 with temp_16_arithop_60_0
              #                    release a4 with temp_16_arithop_60_0
              #                     131  chat_0_2 = chi chat_0_1:130 
              #                     133  temp_17_value_from_ptr_60_0 = load *chat_0:ptr->i32 
              #                    occupy a4 with *chat_0
              #                       load label chat as ptr to reg
    la      a4, chat
              #                    occupy reg a4 with *chat_0
              #                    occupy a5 with temp_17_value_from_ptr_60_0
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     134  mu chat_0_2:133 
              #                     136  temp_18_ptr_of_*chas_0_60 = GEP *chas_0:ptr->i32 [Some(temp_17_value_from_ptr_60_0)] 
              #                    occupy a6 with temp_18_ptr_of_*chas_0_60
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_17_value_from_ptr_60_0
    mv      a7, a5
              #                    free a5
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy s1 with *chas_0
              #                       load label chas as ptr to reg
    la      s1, chas
              #                    occupy reg s1 with *chas_0
    add     a6,a6,s1
              #                    free s1
              #                    free a6
              #                     1492 untrack temp_17_value_from_ptr_60_0 
              #                    occupy a5 with temp_17_value_from_ptr_60_0
              #                    release a5 with temp_17_value_from_ptr_60_0
              #                     137  store x_58_0:i32 temp_18_ptr_of_*chas_0_60:ptr->i32 
              #                    occupy a6 with temp_18_ptr_of_*chas_0_60
              #                    occupy a0 with x_58_0
    sw      a0,0(a6)
              #                    free a0
              #                    free a6
              #                     1491 untrack x_58_0 
              #                    occupy a0 with x_58_0
              #                    release a0 with x_58_0
              #                     1490 untrack temp_18_ptr_of_*chas_0_60 
              #                    occupy a6 with temp_18_ptr_of_*chas_0_60
              #                    release a6 with temp_18_ptr_of_*chas_0_60
              #                     138  chas_0_2 = chi chas_0_1:137 
              #                          jump label: exit_23 
    j       .exit_23
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                     140  label exit_23: 
.exit_23:
              #                     1187 mu chat_0_2:139 
              #                     1188 mu chas_0_2:139 
              #                     139  ret 
              #                    load from ra_chapush_0 in mem
    ld      ra,32(sp)
              #                    load from s0_chapush_0 in mem
    ld      s0,24(sp)
    addi    sp,sp,40
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     39   Define intpop_0 "" -> intpop_ret_0 
    .globl intpop
    .type intpop,@function
intpop:
              #                    mem layout:|ra_intpop:8 at 40|s0_intpop:8 at 32|temp_19_value_from_ptr _s64 _i0:4 at 28|temp_20_arithop _s64 _i0:4 at 24|temp_21_value_from_ptr _s64 _i0:4 at 20|temp_22_arithop _s64 _i0:4 at 16|temp_23_ptr_of_*ints_0:8 at 8|temp_24_ele_of_*ints_0 _s64 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_intpop_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_intpop_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     1189 intt_0_3 = chi intt_0_0:39 
              #                     141  alloc i32 [temp_19_value_from_ptr_64] 
              #                     144  alloc i32 [temp_20_arithop_64] 
              #                     149  alloc i32 [temp_21_value_from_ptr_64] 
              #                     152  alloc i32 [temp_22_arithop_64] 
              #                     154  alloc ptr->i32 [temp_23_ptr_of_*ints_0_64] 
              #                     156  alloc i32 [temp_24_ele_of_*ints_0_64] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L23_0: 
.L23_0:
              #                     142  temp_19_value_from_ptr_64_0 = load *intt_0:ptr->i32 
              #                    occupy a0 with *intt_0
              #                       load label intt as ptr to reg
    la      a0, intt
              #                    occupy reg a0 with *intt_0
              #                    occupy a1 with temp_19_value_from_ptr_64_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     143  mu intt_0_3:142 
              #                     145  temp_20_arithop_64_0 = Sub i32 temp_19_value_from_ptr_64_0, 1_0 
              #                    occupy a1 with temp_19_value_from_ptr_64_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_20_arithop_64_0
              #                    regtab:    a0:Freed { symidx: *intt_0, tracked: false } |     a1:Occupied { symidx: temp_19_value_from_ptr_64_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_20_arithop_64_0, tracked: true, occupy_count: 1 } |  released_gpr_count:15,released_fpr_count:24


    subw    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     1495 untrack temp_19_value_from_ptr_64_0 
              #                    occupy a1 with temp_19_value_from_ptr_64_0
              #                    release a1 with temp_19_value_from_ptr_64_0
              #                     146  store temp_20_arithop_64_0:i32 *intt_0:ptr->i32 
              #                    occupy a1 with *intt_0
              #                       load label intt as ptr to reg
    la      a1, intt
              #                    occupy reg a1 with *intt_0
              #                    occupy a3 with temp_20_arithop_64_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     1497 untrack temp_20_arithop_64_0 
              #                    occupy a3 with temp_20_arithop_64_0
              #                    release a3 with temp_20_arithop_64_0
              #                     147  intt_0_4 = chi intt_0_3:146 
              #                     150  temp_21_value_from_ptr_64_0 = load *intt_0:ptr->i32 
              #                    occupy a3 with *intt_0
              #                       load label intt as ptr to reg
    la      a3, intt
              #                    occupy reg a3 with *intt_0
              #                    occupy a4 with temp_21_value_from_ptr_64_0
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     151  mu intt_0_4:150 
              #                     153  temp_22_arithop_64_0 = Add i32 temp_21_value_from_ptr_64_0, 1_0 
              #                    occupy a4 with temp_21_value_from_ptr_64_0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a5 with temp_22_arithop_64_0
    ADDW    a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                     1496 untrack temp_21_value_from_ptr_64_0 
              #                    occupy a4 with temp_21_value_from_ptr_64_0
              #                    release a4 with temp_21_value_from_ptr_64_0
              #                     155  temp_23_ptr_of_*ints_0_64 = GEP *ints_0:Array:i32:[None] [Some(temp_22_arithop_64_0)] 
              #                    occupy a4 with temp_23_ptr_of_*ints_0_64
    li      a4, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_22_arithop_64_0
    mv      a6, a5
              #                    free a5
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *ints_0
              #                       load label ints as ptr to reg
    la      a7, ints
              #                    occupy reg a7 with *ints_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                     1494 untrack temp_22_arithop_64_0 
              #                    occupy a5 with temp_22_arithop_64_0
              #                    release a5 with temp_22_arithop_64_0
              #                     157  temp_24_ele_of_*ints_0_64_0 = load temp_23_ptr_of_*ints_0_64:ptr->i32 
              #                    occupy a4 with temp_23_ptr_of_*ints_0_64
              #                    occupy a5 with temp_24_ele_of_*ints_0_64_0
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     1493 untrack temp_23_ptr_of_*ints_0_64 
              #                    occupy a4 with temp_23_ptr_of_*ints_0_64
              #                    release a4 with temp_23_ptr_of_*ints_0_64
              #                     158  mu ints_0_0:157 
              #                     1190 mu intt_0_4:159 
              #                     159  ret temp_24_ele_of_*ints_0_64_0 
              #                    load from ra_intpop_0 in mem
    ld      ra,40(sp)
              #                    load from s0_intpop_0 in mem
    ld      s0,32(sp)
              #                    occupy a5 with temp_24_ele_of_*ints_0_64_0
              #                    store to temp_24_ele_of_*ints_0_64_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_24_ele_of_*ints_0_64_0
              #                    occupy a0 with temp_24_ele_of_*ints_0_64_0
              #                    load from temp_24_ele_of_*ints_0_64_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     40   Define chapop_0 "" -> chapop_ret_0 
    .globl chapop
    .type chapop,@function
chapop:
              #                    mem layout:|ra_chapop:8 at 40|s0_chapop:8 at 32|temp_25_value_from_ptr _s68 _i0:4 at 28|temp_26_arithop _s68 _i0:4 at 24|temp_27_value_from_ptr _s68 _i0:4 at 20|temp_28_arithop _s68 _i0:4 at 16|temp_29_ptr_of_*chas_0:8 at 8|temp_30_ele_of_*chas_0 _s68 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_chapop_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_chapop_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     1191 chat_0_3 = chi chat_0_0:40 
              #                     162  alloc i32 [temp_25_value_from_ptr_68] 
              #                     165  alloc i32 [temp_26_arithop_68] 
              #                     170  alloc i32 [temp_27_value_from_ptr_68] 
              #                     173  alloc i32 [temp_28_arithop_68] 
              #                     175  alloc ptr->i32 [temp_29_ptr_of_*chas_0_68] 
              #                     177  alloc i32 [temp_30_ele_of_*chas_0_68] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L22_0: 
.L22_0:
              #                     163  temp_25_value_from_ptr_68_0 = load *chat_0:ptr->i32 
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    occupy a1 with temp_25_value_from_ptr_68_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     164  mu chat_0_3:163 
              #                     166  temp_26_arithop_68_0 = Sub i32 temp_25_value_from_ptr_68_0, 1_0 
              #                    occupy a1 with temp_25_value_from_ptr_68_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_26_arithop_68_0
              #                    regtab:    a0:Freed { symidx: *chat_0, tracked: false } |     a1:Occupied { symidx: temp_25_value_from_ptr_68_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_26_arithop_68_0, tracked: true, occupy_count: 1 } |  released_gpr_count:15,released_fpr_count:24


    subw    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     1499 untrack temp_25_value_from_ptr_68_0 
              #                    occupy a1 with temp_25_value_from_ptr_68_0
              #                    release a1 with temp_25_value_from_ptr_68_0
              #                     167  store temp_26_arithop_68_0:i32 *chat_0:ptr->i32 
              #                    occupy a1 with *chat_0
              #                       load label chat as ptr to reg
    la      a1, chat
              #                    occupy reg a1 with *chat_0
              #                    occupy a3 with temp_26_arithop_68_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     1500 untrack temp_26_arithop_68_0 
              #                    occupy a3 with temp_26_arithop_68_0
              #                    release a3 with temp_26_arithop_68_0
              #                     168  chat_0_4 = chi chat_0_3:167 
              #                     171  temp_27_value_from_ptr_68_0 = load *chat_0:ptr->i32 
              #                    occupy a3 with *chat_0
              #                       load label chat as ptr to reg
    la      a3, chat
              #                    occupy reg a3 with *chat_0
              #                    occupy a4 with temp_27_value_from_ptr_68_0
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     172  mu chat_0_4:171 
              #                     174  temp_28_arithop_68_0 = Add i32 temp_27_value_from_ptr_68_0, 1_0 
              #                    occupy a4 with temp_27_value_from_ptr_68_0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a5 with temp_28_arithop_68_0
    ADDW    a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                     1498 untrack temp_27_value_from_ptr_68_0 
              #                    occupy a4 with temp_27_value_from_ptr_68_0
              #                    release a4 with temp_27_value_from_ptr_68_0
              #                     176  temp_29_ptr_of_*chas_0_68 = GEP *chas_0:Array:i32:[None] [Some(temp_28_arithop_68_0)] 
              #                    occupy a4 with temp_29_ptr_of_*chas_0_68
    li      a4, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_28_arithop_68_0
    mv      a6, a5
              #                    free a5
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *chas_0
              #                       load label chas as ptr to reg
    la      a7, chas
              #                    occupy reg a7 with *chas_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                     1501 untrack temp_28_arithop_68_0 
              #                    occupy a5 with temp_28_arithop_68_0
              #                    release a5 with temp_28_arithop_68_0
              #                     178  temp_30_ele_of_*chas_0_68_0 = load temp_29_ptr_of_*chas_0_68:ptr->i32 
              #                    occupy a4 with temp_29_ptr_of_*chas_0_68
              #                    occupy a5 with temp_30_ele_of_*chas_0_68_0
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     1502 untrack temp_29_ptr_of_*chas_0_68 
              #                    occupy a4 with temp_29_ptr_of_*chas_0_68
              #                    release a4 with temp_29_ptr_of_*chas_0_68
              #                     179  mu chas_0_0:178 
              #                     1192 mu chat_0_4:180 
              #                     180  ret temp_30_ele_of_*chas_0_68_0 
              #                    load from ra_chapop_0 in mem
    ld      ra,40(sp)
              #                    load from s0_chapop_0 in mem
    ld      s0,32(sp)
              #                    occupy a5 with temp_30_ele_of_*chas_0_68_0
              #                    store to temp_30_ele_of_*chas_0_68_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_30_ele_of_*chas_0_68_0
              #                    occupy a0 with temp_30_ele_of_*chas_0_68_0
              #                    load from temp_30_ele_of_*chas_0_68_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     41   Define intadd_0 "x_71_0," -> intadd_ret_0 
    .globl intadd
    .type intadd,@function
intadd:
              #                    mem layout:|ra_intadd:8 at 64|s0_intadd:8 at 56|x _s71 _i0:4 at 52|temp_31_value_from_ptr _s73 _i0:4 at 48|temp_32_ptr_of_*ints_0:8 at 40|temp_34_ptr_of_*ints_0:8 at 32|temp_35_ele_of_*ints_0 _s73 _i0:4 at 28|temp_36_arithop _s73 _i0:4 at 24|temp_38_ptr_of_*ints_0:8 at 16|temp_40_ptr_of_*ints_0:8 at 8|temp_41_ele_of_*ints_0 _s73 _i0:4 at 4|temp_42_arithop _s73 _i0:4 at 0
    addi    sp,sp,-72
              #                    store to ra_intadd_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_intadd_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     1193 ints_0_3 = chi ints_0_0:41 
              #                     183  alloc i32 [temp_31_value_from_ptr_73] 
              #                     186  alloc ptr->i32 [temp_32_ptr_of_*ints_0_73] 
              #                     188  alloc i32 [temp_33_value_from_ptr_73] 
              #                     191  alloc ptr->i32 [temp_34_ptr_of_*ints_0_73] 
              #                     193  alloc i32 [temp_35_ele_of_*ints_0_73] 
              #                     196  alloc i32 [temp_36_arithop_73] 
              #                     200  alloc i32 [temp_37_value_from_ptr_73] 
              #                     203  alloc ptr->i32 [temp_38_ptr_of_*ints_0_73] 
              #                     205  alloc i32 [temp_39_value_from_ptr_73] 
              #                     208  alloc ptr->i32 [temp_40_ptr_of_*ints_0_73] 
              #                     210  alloc i32 [temp_41_ele_of_*ints_0_73] 
              #                     213  alloc i32 [temp_42_arithop_73] 
              #                    regtab     a0:Freed { symidx: x_71_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L21_0: 
.L21_0:
              #                     184  temp_31_value_from_ptr_73_0 = load *intt_0:ptr->i32 
              #                    occupy a1 with *intt_0
              #                       load label intt as ptr to reg
    la      a1, intt
              #                    occupy reg a1 with *intt_0
              #                    occupy a2 with temp_31_value_from_ptr_73_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     185  mu intt_0_0:184 
              #                     187  temp_32_ptr_of_*ints_0_73 = GEP *ints_0:ptr->i32 [Some(temp_31_value_from_ptr_73_0)] 
              #                    occupy a3 with temp_32_ptr_of_*ints_0_73
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_31_value_from_ptr_73_0
    mv      a4, a2
              #                    free a2
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *ints_0
              #                       load label ints as ptr to reg
    la      a5, ints
              #                    occupy reg a5 with *ints_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     1503 untrack temp_31_value_from_ptr_73_0 
              #                    occupy a2 with temp_31_value_from_ptr_73_0
              #                    release a2 with temp_31_value_from_ptr_73_0
              #                     189  (nop) 
              #                     190  mu intt_0_0:189 
              #                     192  (nop) 
              #                     194  temp_35_ele_of_*ints_0_73_0 = load temp_32_ptr_of_*ints_0_73:ptr->i32 
              #                    occupy a3 with temp_32_ptr_of_*ints_0_73
              #                    occupy a2 with temp_35_ele_of_*ints_0_73_0
    lw      a2,0(a3)
              #                    free a2
              #                    free a3
              #                     195  mu ints_0_3:194 
              #                     197  temp_36_arithop_73_0 = Mul i32 temp_35_ele_of_*ints_0_73_0, 10_0 
              #                    occupy a6 with temp_36_arithop_73_0
              #                    occupy a2 with temp_35_ele_of_*ints_0_73_0
              #                    occupy a7 with 10_0
    li      a7, 10
    mulw    a6,a2,a7
              #                    free a2
              #                    free a7
              #                    free a6
              #                     1509 untrack temp_35_ele_of_*ints_0_73_0 
              #                    occupy a2 with temp_35_ele_of_*ints_0_73_0
              #                    release a2 with temp_35_ele_of_*ints_0_73_0
              #                     198  store temp_36_arithop_73_0:i32 temp_32_ptr_of_*ints_0_73:ptr->i32 
              #                    occupy a3 with temp_32_ptr_of_*ints_0_73
              #                    occupy a6 with temp_36_arithop_73_0
    sw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     1505 untrack temp_36_arithop_73_0 
              #                    occupy a6 with temp_36_arithop_73_0
              #                    release a6 with temp_36_arithop_73_0
              #                     199  ints_0_4 = chi ints_0_3:198 
              #                     201  (nop) 
              #                     202  mu intt_0_0:201 
              #                     204  (nop) 
              #                     206  (nop) 
              #                     207  mu intt_0_0:206 
              #                     209  (nop) 
              #                     211  temp_41_ele_of_*ints_0_73_0 = load temp_32_ptr_of_*ints_0_73:ptr->i32 
              #                    occupy a3 with temp_32_ptr_of_*ints_0_73
              #                    occupy a2 with temp_41_ele_of_*ints_0_73_0
    lw      a2,0(a3)
              #                    free a2
              #                    free a3
              #                     212  mu ints_0_4:211 
              #                     214  temp_42_arithop_73_0 = Add i32 temp_41_ele_of_*ints_0_73_0, x_71_0 
              #                    occupy a2 with temp_41_ele_of_*ints_0_73_0
              #                    occupy a0 with x_71_0
              #                    occupy a6 with temp_42_arithop_73_0
    ADDW    a6,a2,a0
              #                    free a2
              #                    free a0
              #                    free a6
              #                     1507 untrack temp_41_ele_of_*ints_0_73_0 
              #                    occupy a2 with temp_41_ele_of_*ints_0_73_0
              #                    release a2 with temp_41_ele_of_*ints_0_73_0
              #                     1504 untrack x_71_0 
              #                    occupy a0 with x_71_0
              #                    release a0 with x_71_0
              #                     215  store temp_42_arithop_73_0:i32 temp_32_ptr_of_*ints_0_73:ptr->i32 
              #                    occupy a3 with temp_32_ptr_of_*ints_0_73
              #                    occupy a6 with temp_42_arithop_73_0
    sw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     1508 untrack temp_42_arithop_73_0 
              #                    occupy a6 with temp_42_arithop_73_0
              #                    release a6 with temp_42_arithop_73_0
              #                     1506 untrack temp_32_ptr_of_*ints_0_73 
              #                    occupy a3 with temp_32_ptr_of_*ints_0_73
              #                    release a3 with temp_32_ptr_of_*ints_0_73
              #                     216  ints_0_5 = chi ints_0_4:215 
              #                          jump label: exit_32 
    j       .exit_32
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                     218  label exit_32: 
.exit_32:
              #                     1194 mu ints_0_5:217 
              #                     217  ret 
              #                    load from ra_intadd_0 in mem
    ld      ra,64(sp)
              #                    load from s0_intadd_0 in mem
    ld      s0,56(sp)
    addi    sp,sp,72
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     42   Define find_0 "" -> find_ret_0 
    .globl find
    .type find,@function
find:
              #                    mem layout:|ra_find:8 at 56|s0_find:8 at 48|temp_43_ret_of_chapop _s77 _i0:4 at 44|temp_44_value_from_ptr _s77 _i0:4 at 40|temp_45_ptr_of_*get2_0:8 at 32|temp_47_arithop _s77 _i0:4 at 28|none:4 at 24|temp_48_ptr_of_*get2_0:8 at 16|temp_49_value_from_ptr _s77 _i0:4 at 12|temp_51_arithop _s77 _i0:4 at 8|temp_52_value_from_ptr _s82 _i0:4 at 4|temp_53_cmp _s82 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-64
              #                    store to ra_find_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_find_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     1195 get2_0_1 = chi get2_0_0:42 
              #                     1196 chat_0_5 = chi chat_0_0:42 
              #                     1197 c_0_1 = chi c_0_0:42 
              #                     1198 ii_0_1 = chi ii_0_0:42 
              #                     219  alloc i32 [temp_43_ret_of_chapop_77] 
              #                     223  alloc i32 [temp_44_value_from_ptr_77] 
              #                     226  alloc ptr->i32 [temp_45_ptr_of_*get2_0_77] 
              #                     230  alloc i32 [temp_46_value_from_ptr_77] 
              #                     233  alloc i32 [temp_47_arithop_77] 
              #                     235  alloc ptr->i32 [temp_48_ptr_of_*get2_0_77] 
              #                     237  alloc i32 [temp_49_value_from_ptr_77] 
              #                     242  alloc i32 [temp_50_value_from_ptr_77] 
              #                     245  alloc i32 [temp_51_arithop_77] 
              #                     253  alloc i32 [temp_52_value_from_ptr_82] 
              #                     256  alloc i1 [temp_53_cmp_82] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L18_0: 
.L18_0:
              #                     220  temp_43_ret_of_chapop_77_0 =  Call i32 chapop_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    chapop
              #                     1199 mu chas_0_0:220 
              #                     1200 mu chat_0_5:220 
              #                     1201 chat_0_6 = chi chat_0_5:220 
              #                     221  store temp_43_ret_of_chapop_77_0:i32 *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a0 with temp_43_ret_of_chapop_77_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     1511 untrack temp_43_ret_of_chapop_77_0 
              #                    occupy a0 with temp_43_ret_of_chapop_77_0
              #                    release a0 with temp_43_ret_of_chapop_77_0
              #                     222  c_0_2 = chi c_0_1:221 
              #                     224  temp_44_value_from_ptr_77_0 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a2 with temp_44_value_from_ptr_77_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     225  mu ii_0_1:224 
              #                     227  temp_45_ptr_of_*get2_0_77 = GEP *get2_0:ptr->i32 [Some(temp_44_value_from_ptr_77_0)] 
              #                    occupy a3 with temp_45_ptr_of_*get2_0_77
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_44_value_from_ptr_77_0
    mv      a4, a2
              #                    free a2
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *get2_0
              #                       load label get2 as ptr to reg
    la      a5, get2
              #                    occupy reg a5 with *get2_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     228  store 32_0:i32 temp_45_ptr_of_*get2_0_77:ptr->i32 
              #                    occupy a3 with temp_45_ptr_of_*get2_0_77
              #                    occupy a6 with 32_0
    li      a6, 32
    sw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     1513 untrack temp_45_ptr_of_*get2_0_77 
              #                    occupy a3 with temp_45_ptr_of_*get2_0_77
              #                    release a3 with temp_45_ptr_of_*get2_0_77
              #                     229  get2_0_2 = chi get2_0_1:228 
              #                     231  (nop) 
              #                     232  mu ii_0_1:231 
              #                     234  temp_47_arithop_77_0 = Add i32 temp_44_value_from_ptr_77_0, 1_0 
              #                    occupy a2 with temp_44_value_from_ptr_77_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a7 with temp_47_arithop_77_0
    ADDW    a7,a2,a3
              #                    free a2
              #                    free a3
              #                    free a7
              #                     236  temp_48_ptr_of_*get2_0_77 = GEP *get2_0:ptr->i32 [Some(temp_47_arithop_77_0)] 
              #                    occupy s1 with temp_48_ptr_of_*get2_0_77
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with temp_47_arithop_77_0
    mv      s2, a7
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *get2_0
              #                       load label get2 as ptr to reg
    la      s3, get2
              #                    occupy reg s3 with *get2_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                     1516 untrack temp_47_arithop_77_0 
              #                    occupy a7 with temp_47_arithop_77_0
              #                    release a7 with temp_47_arithop_77_0
              #                     238  temp_49_value_from_ptr_77_0 = load *c_0:ptr->i32 
              #                    occupy a7 with *c_0
              #                       load label c as ptr to reg
    la      a7, c
              #                    occupy reg a7 with *c_0
              #                    occupy s4 with temp_49_value_from_ptr_77_0
    lw      s4,0(a7)
              #                    free s4
              #                    free a7
              #                     239  mu c_0_2:238 
              #                     240  store temp_49_value_from_ptr_77_0:i32 temp_48_ptr_of_*get2_0_77:ptr->i32 
              #                    occupy s1 with temp_48_ptr_of_*get2_0_77
              #                    occupy s4 with temp_49_value_from_ptr_77_0
    sw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                     1512 untrack temp_49_value_from_ptr_77_0 
              #                    occupy s4 with temp_49_value_from_ptr_77_0
              #                    release s4 with temp_49_value_from_ptr_77_0
              #                     1510 untrack temp_48_ptr_of_*get2_0_77 
              #                    occupy s1 with temp_48_ptr_of_*get2_0_77
              #                    release s1 with temp_48_ptr_of_*get2_0_77
              #                     241  get2_0_3 = chi get2_0_2:240 
              #                     243  (nop) 
              #                     244  mu ii_0_1:243 
              #                     246  temp_51_arithop_77_0 = Add i32 temp_44_value_from_ptr_77_0, 2_0 
              #                    occupy a2 with temp_44_value_from_ptr_77_0
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy s4 with temp_51_arithop_77_0
    ADDW    s4,a2,s1
              #                    free a2
              #                    free s1
              #                    free s4
              #                     1515 untrack temp_44_value_from_ptr_77_0 
              #                    occupy a2 with temp_44_value_from_ptr_77_0
              #                    release a2 with temp_44_value_from_ptr_77_0
              #                     247  store temp_51_arithop_77_0:i32 *ii_0:ptr->i32 
              #                    occupy a2 with *ii_0
              #                       load label ii as ptr to reg
    la      a2, ii
              #                    occupy reg a2 with *ii_0
              #                    occupy s4 with temp_51_arithop_77_0
    sw      s4,0(a2)
              #                    free s4
              #                    free a2
              #                     1514 untrack temp_51_arithop_77_0 
              #                    occupy s4 with temp_51_arithop_77_0
              #                    release s4 with temp_51_arithop_77_0
              #                     248  ii_0_2 = chi ii_0_1:247 
              #                          jump label: L19_0 
    j       .L19_0
              #                    regtab  released_gpr_count:8,released_fpr_count:24
              #                          label L19_0: 
.L19_0:
              #                     254  temp_52_value_from_ptr_82_0 = load *chat_0:ptr->i32 
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    occupy a1 with temp_52_value_from_ptr_82_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     255  mu chat_0_6:254 
              #                     257  temp_53_cmp_82_0 = icmp i32 Eq temp_52_value_from_ptr_82_0, 0_0 
              #                    occupy a1 with temp_52_value_from_ptr_82_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_53_cmp_82_0
    xor     a3,a1,a2
    seqz    a3, a3
              #                    free a1
              #                    occupy a1 with temp_52_value_from_ptr_82_0
              #                    store to temp_52_value_from_ptr_82_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_52_value_from_ptr_82_0
              #                    free a2
              #                    free a3
              #                     1517 untrack temp_52_value_from_ptr_82_0 
              #                     260  br i1 temp_53_cmp_82_0, label branch_true_83, label branch_false_83 
              #                    occupy a3 with temp_53_cmp_82_0
              #                    free a3
              #                    occupy a3 with temp_53_cmp_82_0
    bnez    a3, .branch_true_83
              #                    free a3
    j       .branch_false_83
              #                    regtab     a3:Freed { symidx: temp_53_cmp_82_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     258  label branch_true_83: 
.branch_true_83:
              #                     1518 untrack temp_53_cmp_82_0 
              #                    occupy a3 with temp_53_cmp_82_0
              #                    release a3 with temp_53_cmp_82_0
              #                     1202 mu get2_0_3:252 
              #                     1203 mu chat_0_6:252 
              #                     1204 mu c_0_2:252 
              #                     1205 mu ii_0_2:252 
              #                     252  ret 0_0 
              #                    load from ra_find_0 in mem
    ld      ra,56(sp)
              #                    load from s0_find_0 in mem
    ld      s0,48(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab     a3:Freed { symidx: temp_53_cmp_82_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     259  label branch_false_83: 
.branch_false_83:
              #                     1519 untrack temp_53_cmp_82_0 
              #                    occupy a3 with temp_53_cmp_82_0
              #                    release a3 with temp_53_cmp_82_0
              #                          jump label: L20_0 
    j       .L20_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L20_0: 
.L20_0:
              #                     1206 mu get2_0_3:250 
              #                     1207 mu chat_0_6:250 
              #                     1208 mu c_0_2:250 
              #                     1209 mu ii_0_2:250 
              #                     250  ret 1_0 
              #                    load from ra_find_0 in mem
    ld      ra,56(sp)
              #                    load from s0_find_0 in mem
    ld      s0,48(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     43   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 1112|s0_main:8 at 1104|temp_54_ret_of_getstr _s87 _i0:4 at 1100|temp_55_value_from_ptr _s87 _i0:4 at 1096|temp_56_ptr_of_*get2_0:8 at 1088|temp_57_ptr_of_*ints_0:8 at 1080|temp_58_ele_of_*ints_0 _s87 _i0:4 at 1076|temp_59_value_from_ptr _s181 _i0:4 at 1072|temp_60_arithop _s181 _i0:4 at 1068|none:4 at 1064|temp_62_ptr_of_*get2_0:8 at 1056|temp_64_arithop _s210 _i0:4 at 1052|temp_68_arithop _s210 _i0:4 at 1048|temp_72_ptr_of_*get2_0:8 at 1040|temp_74_arithop _s215 _i0:4 at 1036|temp_76_arithop _s215 _i0:4 at 1032|temp_77_ret_of_intpop _s184 _i0:4 at 1028|temp_78_ret_of_intpop _s184 _i0:4 at 1024|c _s184 _i0:4 at 1020|c _s184 _i2:4 at 1016|c _s184 _i4:4 at 1012|c _s184 _i6:4 at 1008|c _s184 _i8:4 at 1004|c _s184 _i10:4 at 1000|c _s184 _i12:4 at 996|temp_79_ret_of_power _s203 _i0:4 at 992|temp_80_arithop _s200 _i0:4 at 988|temp_81_arithop _s197 _i0:4 at 984|temp_82_arithop _s194 _i0:4 at 980|temp_83_arithop _s191 _i0:4 at 976|temp_84_arithop _s188 _i0:4 at 972|temp_85_ret_of_chapop _s172 _i0:4 at 968|temp_86_value_from_ptr _s172 _i0:4 at 964|none:4 at 960|temp_87_ptr_of_*get2_0:8 at 952|temp_89_arithop _s172 _i0:4 at 948|none:4 at 944|temp_90_ptr_of_*get2_0:8 at 936|temp_92_arithop _s172 _i0:4 at 932|temp_93_value_from_ptr _s99 _i0:4 at 928|temp_94_ptr_of_*get2_0:8 at 920|temp_96_arithop _s99 _i0:4 at 916|temp_98_arithop _s93 _i0:4 at 912|temp_99_ret_of_chapop _s108 _i0:4 at 908|temp_100_value_from_ptr _s112 _i0:4 at 904|temp_101_ptr_of_*get2_0:8 at 896|temp_103_arithop _s112 _i0:4 at 892|none:4 at 888|temp_104_ptr_of_*get2_0:8 at 880|temp_107_arithop _s112 _i0:4 at 876|temp_108_ret_of_chapop _s112 _i0:4 at 872|temp_109_value_from_ptr _s96 _i0:4 at 868|none:4 at 864|temp_110_ptr_of_*get2_0:8 at 856|temp_112_ptr_of_*get_0:8 at 848|temp_115_arithop _s96 _i0:4 at 844|temp_116_value_from_ptr _s91 _i0:4 at 840|temp_117_cmp _s91 _i0:1 at 839|none:3 at 836|temp_118_value_from_ptr _s170 _i0:4 at 832|temp_119_cmp _s170 _i0:1 at 831|none:3 at 828|temp_120_value_from_ptr _s179 _i0:4 at 824|temp_121_ptr_of_*get2_0:8 at 816|temp_122_ele_of_*get2_0 _s179 _i0:4 at 812|temp_123_cmp _s179 _i0:1 at 811|none:3 at 808|temp_125_ptr_of_*get2_0:8 at 800|temp_127_cmp _s182 _i0:1 at 799|none:7 at 792|temp_129_ptr_of_*get2_0:8 at 784|temp_131_cmp _s182 _i0:1 at 783|none:7 at 776|temp_133_ptr_of_*get2_0:8 at 768|temp_135_cmp _s182 _i0:1 at 767|none:7 at 760|temp_137_ptr_of_*get2_0:8 at 752|temp_139_cmp _s182 _i0:1 at 751|none:7 at 744|temp_141_ptr_of_*get2_0:8 at 736|temp_143_cmp _s182 _i0:1 at 735|none:7 at 728|temp_145_ptr_of_*get2_0:8 at 720|temp_147_cmp _s182 _i0:1 at 719|none:7 at 712|temp_149_ptr_of_*get2_0:8 at 704|temp_151_cmp _s208 _i0:1 at 703|none:3 at 700|temp_153_value_from_ptr _s213 _i0:4 at 696|temp_154_arithop _s213 _i0:4 at 692|none:4 at 688|temp_155_ptr_of_*get2_0:8 at 680|temp_156_ele_of_*get2_0 _s213 _i0:4 at 676|temp_157_cmp _s213 _i0:1 at 675|none:3 at 672|temp_159_ptr_of_*get2_0:8 at 664|temp_163_ptr_of_*get2_0:8 at 656|temp_165_cmp _s191 _i0:1 at 655|none:7 at 648|temp_167_ptr_of_*get2_0:8 at 640|temp_169_cmp _s194 _i0:1 at 639|none:7 at 632|temp_171_ptr_of_*get2_0:8 at 624|temp_173_cmp _s197 _i0:1 at 623|none:7 at 616|temp_175_ptr_of_*get2_0:8 at 608|temp_177_cmp _s200 _i0:1 at 607|none:7 at 600|temp_179_ptr_of_*get2_0:8 at 592|temp_181_cmp _s203 _i0:1 at 591|none:7 at 584|temp_183_ptr_of_*get_0:8 at 576|temp_184_ele_of_*get_0 _s94 _i0:4 at 572|temp_185_ret_of_isdigit _s94 _i0:4 at 568|temp_186_cmp _s94 _i0:1 at 567|none:7 at 560|temp_188_ptr_of_*get_0:8 at 552|temp_190_cmp _s100 _i0:1 at 551|none:7 at 544|temp_192_ptr_of_*get_0:8 at 536|temp_194_cmp _s103 _i0:1 at 535|none:7 at 528|temp_196_ptr_of_*get_0:8 at 520|temp_198_cmp _s106 _i0:1 at 519|none:7 at 512|temp_200_ptr_of_*get_0:8 at 504|temp_202_cmp _s117 _i0:1 at 503|none:7 at 496|temp_204_ptr_of_*get_0:8 at 488|temp_206_cmp _s127 _i0:1 at 487|none:7 at 480|temp_208_ptr_of_*get_0:8 at 472|temp_210_cmp _s137 _i0:1 at 471|none:7 at 464|temp_212_ptr_of_*get_0:8 at 456|temp_214_cmp _s147 _i0:1 at 455|none:7 at 448|temp_216_ptr_of_*get_0:8 at 440|temp_218_cmp _s157 _i0:1 at 439|none:3 at 436|temp_219_value_from_ptr _s160 _i0:4 at 432|temp_220_ptr_of_*chas_0:8 at 424|temp_221_ele_of_*chas_0 _s160 _i0:4 at 420|temp_222_cmp _s160 _i0:1 at 419|none:3 at 416|temp_224_ptr_of_*chas_0:8 at 408|temp_226_cmp _s160 _i0:1 at 407|none:7 at 400|temp_228_ptr_of_*chas_0:8 at 392|temp_230_cmp _s160 _i0:1 at 391|none:7 at 384|temp_232_ptr_of_*chas_0:8 at 376|temp_234_cmp _s160 _i0:1 at 375|none:3 at 372|temp_235_ret_of_find _s163 _i0:4 at 368|temp_236_cmp _s163 _i0:1 at 367|none:3 at 364|temp_237_value_from_ptr _s150 _i0:4 at 360|temp_238_ptr_of_*chas_0:8 at 352|temp_239_ele_of_*chas_0 _s150 _i0:4 at 348|temp_240_cmp _s150 _i0:1 at 347|none:3 at 344|temp_242_ptr_of_*chas_0:8 at 336|temp_244_cmp _s150 _i0:1 at 335|none:7 at 328|temp_246_ptr_of_*chas_0:8 at 320|temp_248_cmp _s150 _i0:1 at 319|none:7 at 312|temp_250_ptr_of_*chas_0:8 at 304|temp_252_cmp _s150 _i0:1 at 303|none:3 at 300|temp_253_ret_of_find _s153 _i0:4 at 296|temp_254_cmp _s153 _i0:1 at 295|none:3 at 292|temp_255_value_from_ptr _s140 _i0:4 at 288|temp_256_ptr_of_*chas_0:8 at 280|temp_257_ele_of_*chas_0 _s140 _i0:4 at 276|temp_258_cmp _s140 _i0:1 at 275|none:3 at 272|temp_260_ptr_of_*chas_0:8 at 264|temp_262_cmp _s140 _i0:1 at 263|none:7 at 256|temp_264_ptr_of_*chas_0:8 at 248|temp_266_cmp _s140 _i0:1 at 247|none:7 at 240|temp_268_ptr_of_*chas_0:8 at 232|temp_270_cmp _s140 _i0:1 at 231|none:3 at 228|temp_271_ret_of_find _s143 _i0:4 at 224|temp_272_cmp _s143 _i0:1 at 223|none:3 at 220|temp_273_value_from_ptr _s130 _i0:4 at 216|temp_274_ptr_of_*chas_0:8 at 208|temp_275_ele_of_*chas_0 _s130 _i0:4 at 204|temp_276_cmp _s130 _i0:1 at 203|none:3 at 200|temp_278_ptr_of_*chas_0:8 at 192|temp_280_cmp _s130 _i0:1 at 191|none:7 at 184|temp_282_ptr_of_*chas_0:8 at 176|temp_284_cmp _s130 _i0:1 at 175|none:7 at 168|temp_286_ptr_of_*chas_0:8 at 160|temp_288_cmp _s130 _i0:1 at 159|none:7 at 152|temp_290_ptr_of_*chas_0:8 at 144|temp_292_cmp _s130 _i0:1 at 143|none:7 at 136|temp_294_ptr_of_*chas_0:8 at 128|temp_296_cmp _s130 _i0:1 at 127|none:3 at 124|temp_297_ret_of_find _s133 _i0:4 at 120|temp_298_cmp _s133 _i0:1 at 119|none:3 at 116|temp_299_value_from_ptr _s120 _i0:4 at 112|temp_300_ptr_of_*chas_0:8 at 104|temp_301_ele_of_*chas_0 _s120 _i0:4 at 100|temp_302_cmp _s120 _i0:1 at 99|none:3 at 96|temp_304_ptr_of_*chas_0:8 at 88|temp_306_cmp _s120 _i0:1 at 87|none:7 at 80|temp_308_ptr_of_*chas_0:8 at 72|temp_310_cmp _s120 _i0:1 at 71|none:7 at 64|temp_312_ptr_of_*chas_0:8 at 56|temp_314_cmp _s120 _i0:1 at 55|none:7 at 48|temp_316_ptr_of_*chas_0:8 at 40|temp_318_cmp _s120 _i0:1 at 39|none:7 at 32|temp_320_ptr_of_*chas_0:8 at 24|temp_322_cmp _s120 _i0:1 at 23|none:3 at 20|temp_323_ret_of_find _s123 _i0:4 at 16|temp_324_cmp _s123 _i0:1 at 15|none:3 at 12|temp_325_value_from_ptr _s110 _i0:4 at 8|temp_326_cmp _s110 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-1120
              #                    store to ra_main_0 in mem offset legal
    sd      ra,1112(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,1104(sp)
    addi    s0,sp,1120
              #                     1210 intt_0_5 = chi intt_0_0:43 
              #                     1211 get2_0_4 = chi get2_0_0:43 
              #                     1212 chas_0_3 = chi chas_0_0:43 
              #                     1213 ii_0_3 = chi ii_0_0:43 
              #                     1214 i_0_1 = chi i_0_0:43 
              #                     1215 chat_0_7 = chi chat_0_0:43 
              #                     1216 ints_0_6 = chi ints_0_0:43 
              #                     1217 c_0_3 = chi c_0_0:43 
              #                     267  alloc i32 [temp_54_ret_of_getstr_87] 
              #                     270  alloc i32 [lengets_87] 
              #                     271  alloc i32 [temp_55_value_from_ptr_87] 
              #                     274  alloc ptr->i32 [temp_56_ptr_of_*get2_0_87] 
              #                     280  alloc ptr->i32 [temp_57_ptr_of_*ints_0_87] 
              #                     282  alloc i32 [temp_58_ele_of_*ints_0_87] 
              #                     288  alloc i32 [temp_59_value_from_ptr_181] 
              #                     291  alloc i32 [temp_60_arithop_181] 
              #                     295  alloc i32 [temp_61_value_from_ptr_210] 
              #                     298  alloc ptr->i32 [temp_62_ptr_of_*get2_0_210] 
              #                     300  alloc i32 [temp_63_ele_of_*get2_0_210] 
              #                     303  alloc i32 [temp_64_arithop_210] 
              #                     308  alloc i32 [temp_65_value_from_ptr_210] 
              #                     311  alloc i32 [temp_66_value_from_ptr_210] 
              #                     314  alloc i32 [temp_67_arithop_210] 
              #                     316  alloc i32 [temp_68_arithop_210] 
              #                     320  alloc i32 [temp_69_value_from_ptr_215] 
              #                     323  alloc i32 [temp_70_value_from_ptr_215] 
              #                     326  alloc i32 [temp_71_arithop_215] 
              #                     328  alloc ptr->i32 [temp_72_ptr_of_*get2_0_215] 
              #                     330  alloc i32 [temp_73_ele_of_*get2_0_215] 
              #                     333  alloc i32 [temp_74_arithop_215] 
              #                     336  alloc i32 [temp_75_value_from_ptr_215] 
              #                     339  alloc i32 [temp_76_arithop_215] 
              #                     343  alloc i32 [temp_77_ret_of_intpop_184] 
              #                     346  alloc i32 [a_184] 
              #                     347  alloc i32 [temp_78_ret_of_intpop_184] 
              #                     350  alloc i32 [b_184] 
              #                     351  alloc i32 [c_184] 
              #                     354  alloc i32 [temp_79_ret_of_power_203] 
              #                     357  alloc i32 [temp_80_arithop_200] 
              #                     360  alloc i32 [temp_81_arithop_197] 
              #                     363  alloc i32 [temp_82_arithop_194] 
              #                     366  alloc i32 [temp_83_arithop_191] 
              #                     369  alloc i32 [temp_84_arithop_188] 
              #                     372  alloc i32 [temp_85_ret_of_chapop_172] 
              #                     375  alloc i32 [c_172] 
              #                     376  alloc i32 [temp_86_value_from_ptr_172] 
              #                     379  alloc ptr->i32 [temp_87_ptr_of_*get2_0_172] 
              #                     383  alloc i32 [temp_88_value_from_ptr_172] 
              #                     386  alloc i32 [temp_89_arithop_172] 
              #                     388  alloc ptr->i32 [temp_90_ptr_of_*get2_0_172] 
              #                     392  alloc i32 [temp_91_value_from_ptr_172] 
              #                     395  alloc i32 [temp_92_arithop_172] 
              #                     399  alloc i32 [temp_93_value_from_ptr_99] 
              #                     402  alloc ptr->i32 [temp_94_ptr_of_*get2_0_99] 
              #                     406  alloc i32 [temp_95_value_from_ptr_99] 
              #                     409  alloc i32 [temp_96_arithop_99] 
              #                     413  alloc i32 [temp_97_value_from_ptr_93] 
              #                     416  alloc i32 [temp_98_arithop_93] 
              #                     425  alloc i32 [temp_99_ret_of_chapop_108] 
              #                     429  alloc i32 [temp_100_value_from_ptr_112] 
              #                     432  alloc ptr->i32 [temp_101_ptr_of_*get2_0_112] 
              #                     436  alloc i32 [temp_102_value_from_ptr_112] 
              #                     439  alloc i32 [temp_103_arithop_112] 
              #                     441  alloc ptr->i32 [temp_104_ptr_of_*get2_0_112] 
              #                     443  alloc i32 [temp_105_value_from_ptr_112] 
              #                     448  alloc i32 [temp_106_value_from_ptr_112] 
              #                     451  alloc i32 [temp_107_arithop_112] 
              #                     455  alloc i32 [temp_108_ret_of_chapop_112] 
              #                     461  alloc i32 [temp_109_value_from_ptr_96] 
              #                     464  alloc ptr->i32 [temp_110_ptr_of_*get2_0_96] 
              #                     466  alloc i32 [temp_111_value_from_ptr_96] 
              #                     469  alloc ptr->i32 [temp_112_ptr_of_*get_0_96] 
              #                     471  alloc i32 [temp_113_ele_of_*get_0_96] 
              #                     476  alloc i32 [temp_114_value_from_ptr_96] 
              #                     479  alloc i32 [temp_115_arithop_96] 
              #                     483  alloc i32 [temp_116_value_from_ptr_91] 
              #                     486  alloc i1 [temp_117_cmp_91] 
              #                     492  alloc i32 [temp_118_value_from_ptr_170] 
              #                     495  alloc i1 [temp_119_cmp_170] 
              #                     500  alloc i32 [temp_120_value_from_ptr_179] 
              #                     503  alloc ptr->i32 [temp_121_ptr_of_*get2_0_179] 
              #                     505  alloc i32 [temp_122_ele_of_*get2_0_179] 
              #                     508  alloc i1 [temp_123_cmp_179] 
              #                     516  alloc i32 [temp_124_value_from_ptr_182] 
              #                     519  alloc ptr->i32 [temp_125_ptr_of_*get2_0_182] 
              #                     521  alloc i32 [temp_126_ele_of_*get2_0_182] 
              #                     524  alloc i1 [temp_127_cmp_182] 
              #                     526  alloc i32 [temp_128_value_from_ptr_182] 
              #                     529  alloc ptr->i32 [temp_129_ptr_of_*get2_0_182] 
              #                     531  alloc i32 [temp_130_ele_of_*get2_0_182] 
              #                     534  alloc i1 [temp_131_cmp_182] 
              #                     536  alloc i32 [temp_132_value_from_ptr_182] 
              #                     539  alloc ptr->i32 [temp_133_ptr_of_*get2_0_182] 
              #                     541  alloc i32 [temp_134_ele_of_*get2_0_182] 
              #                     544  alloc i1 [temp_135_cmp_182] 
              #                     546  alloc i32 [temp_136_value_from_ptr_182] 
              #                     549  alloc ptr->i32 [temp_137_ptr_of_*get2_0_182] 
              #                     551  alloc i32 [temp_138_ele_of_*get2_0_182] 
              #                     554  alloc i1 [temp_139_cmp_182] 
              #                     556  alloc i32 [temp_140_value_from_ptr_182] 
              #                     559  alloc ptr->i32 [temp_141_ptr_of_*get2_0_182] 
              #                     561  alloc i32 [temp_142_ele_of_*get2_0_182] 
              #                     564  alloc i1 [temp_143_cmp_182] 
              #                     566  alloc i32 [temp_144_value_from_ptr_182] 
              #                     569  alloc ptr->i32 [temp_145_ptr_of_*get2_0_182] 
              #                     571  alloc i32 [temp_146_ele_of_*get2_0_182] 
              #                     574  alloc i1 [temp_147_cmp_182] 
              #                     594  alloc i32 [temp_148_value_from_ptr_208] 
              #                     597  alloc ptr->i32 [temp_149_ptr_of_*get2_0_208] 
              #                     599  alloc i32 [temp_150_ele_of_*get2_0_208] 
              #                     602  alloc i1 [temp_151_cmp_208] 
              #                     608  alloc i32 [temp_152_value_from_ptr_213] 
              #                     611  alloc i32 [temp_153_value_from_ptr_213] 
              #                     614  alloc i32 [temp_154_arithop_213] 
              #                     616  alloc ptr->i32 [temp_155_ptr_of_*get2_0_213] 
              #                     618  alloc i32 [temp_156_ele_of_*get2_0_213] 
              #                     621  alloc i1 [temp_157_cmp_213] 
              #                     627  alloc i32 [temp_158_value_from_ptr_188] 
              #                     630  alloc ptr->i32 [temp_159_ptr_of_*get2_0_188] 
              #                     632  alloc i32 [temp_160_ele_of_*get2_0_188] 
              #                     635  alloc i1 [temp_161_cmp_188] 
              #                     640  alloc i32 [temp_162_value_from_ptr_191] 
              #                     643  alloc ptr->i32 [temp_163_ptr_of_*get2_0_191] 
              #                     645  alloc i32 [temp_164_ele_of_*get2_0_191] 
              #                     648  alloc i1 [temp_165_cmp_191] 
              #                     653  alloc i32 [temp_166_value_from_ptr_194] 
              #                     656  alloc ptr->i32 [temp_167_ptr_of_*get2_0_194] 
              #                     658  alloc i32 [temp_168_ele_of_*get2_0_194] 
              #                     661  alloc i1 [temp_169_cmp_194] 
              #                     666  alloc i32 [temp_170_value_from_ptr_197] 
              #                     669  alloc ptr->i32 [temp_171_ptr_of_*get2_0_197] 
              #                     671  alloc i32 [temp_172_ele_of_*get2_0_197] 
              #                     674  alloc i1 [temp_173_cmp_197] 
              #                     679  alloc i32 [temp_174_value_from_ptr_200] 
              #                     682  alloc ptr->i32 [temp_175_ptr_of_*get2_0_200] 
              #                     684  alloc i32 [temp_176_ele_of_*get2_0_200] 
              #                     687  alloc i1 [temp_177_cmp_200] 
              #                     692  alloc i32 [temp_178_value_from_ptr_203] 
              #                     695  alloc ptr->i32 [temp_179_ptr_of_*get2_0_203] 
              #                     697  alloc i32 [temp_180_ele_of_*get2_0_203] 
              #                     700  alloc i1 [temp_181_cmp_203] 
              #                     705  alloc i32 [temp_182_value_from_ptr_94] 
              #                     708  alloc ptr->i32 [temp_183_ptr_of_*get_0_94] 
              #                     710  alloc i32 [temp_184_ele_of_*get_0_94] 
              #                     713  alloc i32 [temp_185_ret_of_isdigit_94] 
              #                     715  alloc i1 [temp_186_cmp_94] 
              #                     720  alloc i32 [temp_187_value_from_ptr_100] 
              #                     723  alloc ptr->i32 [temp_188_ptr_of_*get_0_100] 
              #                     725  alloc i32 [temp_189_ele_of_*get_0_100] 
              #                     728  alloc i1 [temp_190_cmp_100] 
              #                     733  alloc i32 [temp_191_value_from_ptr_103] 
              #                     736  alloc ptr->i32 [temp_192_ptr_of_*get_0_103] 
              #                     738  alloc i32 [temp_193_ele_of_*get_0_103] 
              #                     741  alloc i1 [temp_194_cmp_103] 
              #                     746  alloc i32 [temp_195_value_from_ptr_106] 
              #                     749  alloc ptr->i32 [temp_196_ptr_of_*get_0_106] 
              #                     751  alloc i32 [temp_197_ele_of_*get_0_106] 
              #                     754  alloc i1 [temp_198_cmp_106] 
              #                     759  alloc i32 [temp_199_value_from_ptr_117] 
              #                     762  alloc ptr->i32 [temp_200_ptr_of_*get_0_117] 
              #                     764  alloc i32 [temp_201_ele_of_*get_0_117] 
              #                     767  alloc i1 [temp_202_cmp_117] 
              #                     772  alloc i32 [temp_203_value_from_ptr_127] 
              #                     775  alloc ptr->i32 [temp_204_ptr_of_*get_0_127] 
              #                     777  alloc i32 [temp_205_ele_of_*get_0_127] 
              #                     780  alloc i1 [temp_206_cmp_127] 
              #                     785  alloc i32 [temp_207_value_from_ptr_137] 
              #                     788  alloc ptr->i32 [temp_208_ptr_of_*get_0_137] 
              #                     790  alloc i32 [temp_209_ele_of_*get_0_137] 
              #                     793  alloc i1 [temp_210_cmp_137] 
              #                     798  alloc i32 [temp_211_value_from_ptr_147] 
              #                     801  alloc ptr->i32 [temp_212_ptr_of_*get_0_147] 
              #                     803  alloc i32 [temp_213_ele_of_*get_0_147] 
              #                     806  alloc i1 [temp_214_cmp_147] 
              #                     811  alloc i32 [temp_215_value_from_ptr_157] 
              #                     814  alloc ptr->i32 [temp_216_ptr_of_*get_0_157] 
              #                     816  alloc i32 [temp_217_ele_of_*get_0_157] 
              #                     819  alloc i1 [temp_218_cmp_157] 
              #                     825  alloc i32 [temp_219_value_from_ptr_160] 
              #                     828  alloc ptr->i32 [temp_220_ptr_of_*chas_0_160] 
              #                     830  alloc i32 [temp_221_ele_of_*chas_0_160] 
              #                     833  alloc i1 [temp_222_cmp_160] 
              #                     835  alloc i32 [temp_223_value_from_ptr_160] 
              #                     838  alloc ptr->i32 [temp_224_ptr_of_*chas_0_160] 
              #                     840  alloc i32 [temp_225_ele_of_*chas_0_160] 
              #                     843  alloc i1 [temp_226_cmp_160] 
              #                     845  alloc i32 [temp_227_value_from_ptr_160] 
              #                     848  alloc ptr->i32 [temp_228_ptr_of_*chas_0_160] 
              #                     850  alloc i32 [temp_229_ele_of_*chas_0_160] 
              #                     853  alloc i1 [temp_230_cmp_160] 
              #                     855  alloc i32 [temp_231_value_from_ptr_160] 
              #                     858  alloc ptr->i32 [temp_232_ptr_of_*chas_0_160] 
              #                     860  alloc i32 [temp_233_ele_of_*chas_0_160] 
              #                     863  alloc i1 [temp_234_cmp_160] 
              #                     877  alloc i32 [temp_235_ret_of_find_163] 
              #                     879  alloc i1 [temp_236_cmp_163] 
              #                     884  alloc i32 [temp_237_value_from_ptr_150] 
              #                     887  alloc ptr->i32 [temp_238_ptr_of_*chas_0_150] 
              #                     889  alloc i32 [temp_239_ele_of_*chas_0_150] 
              #                     892  alloc i1 [temp_240_cmp_150] 
              #                     894  alloc i32 [temp_241_value_from_ptr_150] 
              #                     897  alloc ptr->i32 [temp_242_ptr_of_*chas_0_150] 
              #                     899  alloc i32 [temp_243_ele_of_*chas_0_150] 
              #                     902  alloc i1 [temp_244_cmp_150] 
              #                     904  alloc i32 [temp_245_value_from_ptr_150] 
              #                     907  alloc ptr->i32 [temp_246_ptr_of_*chas_0_150] 
              #                     909  alloc i32 [temp_247_ele_of_*chas_0_150] 
              #                     912  alloc i1 [temp_248_cmp_150] 
              #                     914  alloc i32 [temp_249_value_from_ptr_150] 
              #                     917  alloc ptr->i32 [temp_250_ptr_of_*chas_0_150] 
              #                     919  alloc i32 [temp_251_ele_of_*chas_0_150] 
              #                     922  alloc i1 [temp_252_cmp_150] 
              #                     936  alloc i32 [temp_253_ret_of_find_153] 
              #                     938  alloc i1 [temp_254_cmp_153] 
              #                     943  alloc i32 [temp_255_value_from_ptr_140] 
              #                     946  alloc ptr->i32 [temp_256_ptr_of_*chas_0_140] 
              #                     948  alloc i32 [temp_257_ele_of_*chas_0_140] 
              #                     951  alloc i1 [temp_258_cmp_140] 
              #                     953  alloc i32 [temp_259_value_from_ptr_140] 
              #                     956  alloc ptr->i32 [temp_260_ptr_of_*chas_0_140] 
              #                     958  alloc i32 [temp_261_ele_of_*chas_0_140] 
              #                     961  alloc i1 [temp_262_cmp_140] 
              #                     963  alloc i32 [temp_263_value_from_ptr_140] 
              #                     966  alloc ptr->i32 [temp_264_ptr_of_*chas_0_140] 
              #                     968  alloc i32 [temp_265_ele_of_*chas_0_140] 
              #                     971  alloc i1 [temp_266_cmp_140] 
              #                     973  alloc i32 [temp_267_value_from_ptr_140] 
              #                     976  alloc ptr->i32 [temp_268_ptr_of_*chas_0_140] 
              #                     978  alloc i32 [temp_269_ele_of_*chas_0_140] 
              #                     981  alloc i1 [temp_270_cmp_140] 
              #                     995  alloc i32 [temp_271_ret_of_find_143] 
              #                     997  alloc i1 [temp_272_cmp_143] 
              #                     1002 alloc i32 [temp_273_value_from_ptr_130] 
              #                     1005 alloc ptr->i32 [temp_274_ptr_of_*chas_0_130] 
              #                     1007 alloc i32 [temp_275_ele_of_*chas_0_130] 
              #                     1010 alloc i1 [temp_276_cmp_130] 
              #                     1012 alloc i32 [temp_277_value_from_ptr_130] 
              #                     1015 alloc ptr->i32 [temp_278_ptr_of_*chas_0_130] 
              #                     1017 alloc i32 [temp_279_ele_of_*chas_0_130] 
              #                     1020 alloc i1 [temp_280_cmp_130] 
              #                     1022 alloc i32 [temp_281_value_from_ptr_130] 
              #                     1025 alloc ptr->i32 [temp_282_ptr_of_*chas_0_130] 
              #                     1027 alloc i32 [temp_283_ele_of_*chas_0_130] 
              #                     1030 alloc i1 [temp_284_cmp_130] 
              #                     1032 alloc i32 [temp_285_value_from_ptr_130] 
              #                     1035 alloc ptr->i32 [temp_286_ptr_of_*chas_0_130] 
              #                     1037 alloc i32 [temp_287_ele_of_*chas_0_130] 
              #                     1040 alloc i1 [temp_288_cmp_130] 
              #                     1042 alloc i32 [temp_289_value_from_ptr_130] 
              #                     1045 alloc ptr->i32 [temp_290_ptr_of_*chas_0_130] 
              #                     1047 alloc i32 [temp_291_ele_of_*chas_0_130] 
              #                     1050 alloc i1 [temp_292_cmp_130] 
              #                     1052 alloc i32 [temp_293_value_from_ptr_130] 
              #                     1055 alloc ptr->i32 [temp_294_ptr_of_*chas_0_130] 
              #                     1057 alloc i32 [temp_295_ele_of_*chas_0_130] 
              #                     1060 alloc i1 [temp_296_cmp_130] 
              #                     1080 alloc i32 [temp_297_ret_of_find_133] 
              #                     1082 alloc i1 [temp_298_cmp_133] 
              #                     1087 alloc i32 [temp_299_value_from_ptr_120] 
              #                     1090 alloc ptr->i32 [temp_300_ptr_of_*chas_0_120] 
              #                     1092 alloc i32 [temp_301_ele_of_*chas_0_120] 
              #                     1095 alloc i1 [temp_302_cmp_120] 
              #                     1097 alloc i32 [temp_303_value_from_ptr_120] 
              #                     1100 alloc ptr->i32 [temp_304_ptr_of_*chas_0_120] 
              #                     1102 alloc i32 [temp_305_ele_of_*chas_0_120] 
              #                     1105 alloc i1 [temp_306_cmp_120] 
              #                     1107 alloc i32 [temp_307_value_from_ptr_120] 
              #                     1110 alloc ptr->i32 [temp_308_ptr_of_*chas_0_120] 
              #                     1112 alloc i32 [temp_309_ele_of_*chas_0_120] 
              #                     1115 alloc i1 [temp_310_cmp_120] 
              #                     1117 alloc i32 [temp_311_value_from_ptr_120] 
              #                     1120 alloc ptr->i32 [temp_312_ptr_of_*chas_0_120] 
              #                     1122 alloc i32 [temp_313_ele_of_*chas_0_120] 
              #                     1125 alloc i1 [temp_314_cmp_120] 
              #                     1127 alloc i32 [temp_315_value_from_ptr_120] 
              #                     1130 alloc ptr->i32 [temp_316_ptr_of_*chas_0_120] 
              #                     1132 alloc i32 [temp_317_ele_of_*chas_0_120] 
              #                     1135 alloc i1 [temp_318_cmp_120] 
              #                     1137 alloc i32 [temp_319_value_from_ptr_120] 
              #                     1140 alloc ptr->i32 [temp_320_ptr_of_*chas_0_120] 
              #                     1142 alloc i32 [temp_321_ele_of_*chas_0_120] 
              #                     1145 alloc i1 [temp_322_cmp_120] 
              #                     1165 alloc i32 [temp_323_ret_of_find_123] 
              #                     1167 alloc i1 [temp_324_cmp_123] 
              #                     1172 alloc i32 [temp_325_value_from_ptr_110] 
              #                     1175 alloc i1 [temp_326_cmp_110] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     263  store 0_0:i32 *intt_0:ptr->i32 
              #                    occupy a0 with *intt_0
              #                       load label intt as ptr to reg
    la      a0, intt
              #                    occupy reg a0 with *intt_0
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     264  intt_0_6 = chi intt_0_5:263 
              #                     265  store 0_0:i32 *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     266  chat_0_8 = chi chat_0_7:265 
              #                     268  temp_54_ret_of_getstr_87_0 =  Call i32 getstr_0(*get_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*get_0_0
              #                       load label get as ptr to reg
    la      a0, get
              #                    arg load ended


    call    getstr
              #                     1218 mu get_0_0:268 
              #                     1219 get_0_1 = chi get_0_0:268 
              #                     269  (nop) 
              #                          jump label: while.head_92 
    j       .while.head_92
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     488  label while.head_92: 
.while.head_92:
              #                     484  temp_116_value_from_ptr_91_0 = load *i_0:ptr->i32 
              #                    occupy a1 with *i_0
              #                       load label i as ptr to reg
    la      a1, i
              #                    occupy reg a1 with *i_0
              #                    occupy a2 with temp_116_value_from_ptr_91_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     485  mu i_0_2:484 
              #                     487  temp_117_cmp_91_0 = icmp i32 Slt temp_116_value_from_ptr_91_0, temp_54_ret_of_getstr_87_0 
              #                    occupy a2 with temp_116_value_from_ptr_91_0
              #                    occupy a0 with temp_54_ret_of_getstr_87_0
              #                    occupy a3 with temp_117_cmp_91_0
    slt     a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                     491  br i1 temp_117_cmp_91_0, label while.body_92, label while.exit_92 
              #                    occupy a3 with temp_117_cmp_91_0
              #                    free a3
              #                    occupy a3 with temp_117_cmp_91_0
    bnez    a3, .while.body_92
              #                    free a3
    j       .while.exit_92
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_116_value_from_ptr_91_0, tracked: true } |     a3:Freed { symidx: temp_117_cmp_91_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     489  label while.body_92: 
.while.body_92:
              #                     706  (nop) 
              #                     707  mu i_0_2:706 
              #                     709  temp_183_ptr_of_*get_0_94 = GEP *get_0:Array:i32:[None] [Some(temp_116_value_from_ptr_91_0)] 
              #                    occupy a1 with temp_183_ptr_of_*get_0_94
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_116_value_from_ptr_91_0
    mv      a4, a2
              #                    free a2
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a5 with *get_0
              #                       load label get as ptr to reg
    la      a5, get
              #                    occupy reg a5 with *get_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                     711  temp_184_ele_of_*get_0_94_0 = load temp_183_ptr_of_*get_0_94:ptr->i32 
              #                    occupy a1 with temp_183_ptr_of_*get_0_94
              #                    occupy a6 with temp_184_ele_of_*get_0_94_0
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                     712  mu get_0_1:711 
              #                     714  temp_185_ret_of_isdigit_94_0 =  Call i32 isdigit_0(temp_184_ele_of_*get_0_94_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_54_ret_of_getstr_87_0
              #                    store to temp_54_ret_of_getstr_87_0 in mem offset legal
    sw      a0,1100(sp)
              #                    release a0 with temp_54_ret_of_getstr_87_0
              #                    occupy a1 with temp_183_ptr_of_*get_0_94
              #                    store to temp_183_ptr_of_*get_0_94 in mem offset legal
    sd      a1,576(sp)
              #                    release a1 with temp_183_ptr_of_*get_0_94
              #                    occupy a2 with temp_116_value_from_ptr_91_0
              #                    store to temp_116_value_from_ptr_91_0 in mem offset legal
    sw      a2,840(sp)
              #                    release a2 with temp_116_value_from_ptr_91_0
              #                    occupy a3 with temp_117_cmp_91_0
              #                    store to temp_117_cmp_91_0 in mem offset legal
    sb      a3,839(sp)
              #                    release a3 with temp_117_cmp_91_0
              #                    occupy a6 with temp_184_ele_of_*get_0_94_0
              #                    store to temp_184_ele_of_*get_0_94_0 in mem offset legal
    sw      a6,572(sp)
              #                    release a6 with temp_184_ele_of_*get_0_94_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_184_ele_of_*get_0_94_0_0
              #                    load from temp_184_ele_of_*get_0_94_0 in mem


    lw      a0,572(sp)
              #                    arg load ended


    call    isdigit
              #                     716  temp_186_cmp_94_0 = icmp i32 Eq temp_185_ret_of_isdigit_94_0, 1_0 
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_186_cmp_94_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     719  br i1 temp_186_cmp_94_0, label branch_true_95, label branch_false_95 
              #                    occupy a2 with temp_186_cmp_94_0
              #                    free a2
              #                    occupy a2 with temp_186_cmp_94_0
    bnez    a2, .branch_true_95
              #                    free a2
    j       .branch_false_95
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     717  label branch_true_95: 
.branch_true_95:
              #                     1600 untrack temp_169_cmp_194_0 
              #                     1599 untrack temp_194_cmp_103_0 
              #                     1598 untrack temp_78_ret_of_intpop_184_0 
              #                     1597 untrack temp_99_ret_of_chapop_108_0 
              #                     1596 untrack temp_177_cmp_200_0 
              #                     1595 untrack temp_131_cmp_182_0 
              #                     1594 untrack temp_122_ele_of_*get2_0_179_0 
              #                     1593 untrack temp_64_arithop_210_0 
              #                     1592 untrack temp_77_ret_of_intpop_184_0 
              #                     1591 untrack temp_151_cmp_208_0 
              #                     1590 untrack temp_147_cmp_182_0 
              #                     1589 untrack temp_118_value_from_ptr_170_0 
              #                     1588 untrack temp_127_cmp_182_0 
              #                     1587 untrack temp_68_arithop_210_0 
              #                     1586 untrack temp_210_cmp_137_0 
              #                     1585 untrack temp_94_ptr_of_*get2_0_99 
              #                     1584 untrack temp_183_ptr_of_*get_0_94 
              #                     1583 untrack temp_120_value_from_ptr_179_0 
              #                     1582 untrack c_184_4 
              #                     1581 untrack c_184_2 
              #                     1580 untrack temp_90_ptr_of_*get2_0_172 
              #                     1579 untrack temp_79_ret_of_power_203_0 
              #                     1578 untrack c_184_12 
              #                     1577 untrack c_184_8 
              #                     1576 untrack c_184_6 
              #                     1575 untrack temp_80_arithop_200_0 
              #                     1574 untrack c_184_10 
              #                     1573 untrack c_184_0 
              #                     1572 untrack temp_117_cmp_91_0 
              #                     1571 untrack temp_181_cmp_203_0 
              #                     1570 untrack temp_185_ret_of_isdigit_94_0 
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                     1569 untrack temp_218_cmp_157_0 
              #                     1568 untrack temp_83_arithop_191_0 
              #                     1567 untrack temp_173_cmp_197_0 
              #                     1566 untrack temp_84_arithop_188_0 
              #                     1565 untrack temp_123_cmp_179_0 
              #                     1564 untrack temp_190_cmp_100_0 
              #                     1563 untrack temp_92_arithop_172_0 
              #                     1562 untrack temp_198_cmp_106_0 
              #                     1561 untrack temp_85_ret_of_chapop_172_0 
              #                     1560 untrack temp_143_cmp_182_0 
              #                     1559 untrack temp_214_cmp_147_0 
              #                     1558 untrack temp_89_arithop_172_0 
              #                     1557 untrack temp_86_value_from_ptr_172_0 
              #                     1556 untrack temp_165_cmp_191_0 
              #                     1555 untrack temp_135_cmp_182_0 
              #                     1554 untrack temp_139_cmp_182_0 
              #                     1553 untrack temp_121_ptr_of_*get2_0_179 
              #                     1552 untrack temp_59_value_from_ptr_181_0 
              #                     1551 untrack temp_93_value_from_ptr_99_0 
              #                     1550 untrack temp_60_arithop_181_0 
              #                     1549 untrack temp_82_arithop_194_0 
              #                     1548 untrack temp_81_arithop_197_0 
              #                     1547 untrack temp_202_cmp_117_0 
              #                     1546 untrack temp_96_arithop_99_0 
              #                     1545 untrack temp_119_cmp_170_0 
              #                     1544 untrack temp_87_ptr_of_*get2_0_172 
              #                     1543 untrack temp_186_cmp_94_0 
              #                    occupy a2 with temp_186_cmp_94_0
              #                    release a2 with temp_186_cmp_94_0
              #                     1542 untrack temp_206_cmp_127_0 
              #                     462  temp_109_value_from_ptr_96_0 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a1 with temp_109_value_from_ptr_96_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     463  mu ii_0_4:462 
              #                     465  temp_110_ptr_of_*get2_0_96 = GEP *get2_0:ptr->i32 [Some(temp_109_value_from_ptr_96_0)] 
              #                    occupy a2 with temp_110_ptr_of_*get2_0_96
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_109_value_from_ptr_96_0
    mv      a3, a1
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a4 with *get2_0
              #                       load label get2 as ptr to reg
    la      a4, get2
              #                    occupy reg a4 with *get2_0
    add     a2,a2,a4
              #                    free a4
              #                    free a2
              #                     467  (nop) 
              #                     468  mu i_0_2:467 
              #                     470  (nop) 
              #                     472  (nop) 
              #                     473  mu get_0_1:472 
              #                     474  store temp_184_ele_of_*get_0_94_0:i32 temp_110_ptr_of_*get2_0_96:ptr->i32 
              #                    occupy a2 with temp_110_ptr_of_*get2_0_96
              #                    occupy a5 with temp_184_ele_of_*get_0_94_0
              #                    load from temp_184_ele_of_*get_0_94_0 in mem


    lw      a5,572(sp)
    sw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     1604 untrack temp_110_ptr_of_*get2_0_96 
              #                    occupy a2 with temp_110_ptr_of_*get2_0_96
              #                    release a2 with temp_110_ptr_of_*get2_0_96
              #                     1602 untrack temp_184_ele_of_*get_0_94_0 
              #                    occupy a5 with temp_184_ele_of_*get_0_94_0
              #                    release a5 with temp_184_ele_of_*get_0_94_0
              #                     475  get2_0_6 = chi get2_0_5:474 
              #                     477  (nop) 
              #                     478  mu ii_0_4:477 
              #                     480  temp_115_arithop_96_0 = Add i32 temp_109_value_from_ptr_96_0, 1_0 
              #                    occupy a1 with temp_109_value_from_ptr_96_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a5 with temp_115_arithop_96_0
    ADDW    a5,a1,a2
              #                    free a1
              #                    free a2
              #                    free a5
              #                     1601 untrack temp_109_value_from_ptr_96_0 
              #                    occupy a1 with temp_109_value_from_ptr_96_0
              #                    release a1 with temp_109_value_from_ptr_96_0
              #                     481  store temp_115_arithop_96_0:i32 *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a5 with temp_115_arithop_96_0
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     1603 untrack temp_115_arithop_96_0 
              #                    occupy a5 with temp_115_arithop_96_0
              #                    release a5 with temp_115_arithop_96_0
              #                     482  ii_0_5 = chi ii_0_4:481 
              #                          jump label: gather_93 
    j       .gather_93
              #                    regtab  released_gpr_count:12,released_fpr_count:24
              #                     824  label gather_93: 
.gather_93:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:12,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     414  (nop) 
              #                     415  mu i_0_2:414 
              #                     417  temp_98_arithop_93_0 = Add i32 temp_116_value_from_ptr_91_0, 1_0 
              #                    occupy a0 with temp_116_value_from_ptr_91_0
              #                    load from temp_116_value_from_ptr_91_0 in mem


    lw      a0,840(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_98_arithop_93_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     418  store temp_98_arithop_93_0:i32 *i_0:ptr->i32 
              #                    occupy a3 with *i_0
              #                       load label i as ptr to reg
    la      a3, i
              #                    occupy reg a3 with *i_0
              #                    occupy a2 with temp_98_arithop_93_0
    sw      a2,0(a3)
              #                    free a2
              #                    free a3
              #                     419  i_0_3 = chi i_0_2:418 
              #                          jump label: while.head_92 
              #                    occupy a0 with temp_116_value_from_ptr_91_0
              #                    store to temp_116_value_from_ptr_91_0 in mem offset legal
    sw      a0,840(sp)
              #                    release a0 with temp_116_value_from_ptr_91_0
              #                    occupy a0 with temp_54_ret_of_getstr_87_0
              #                    load from temp_54_ret_of_getstr_87_0 in mem


    lw      a0,1100(sp)
              #                    occupy a2 with temp_98_arithop_93_0
              #                    store to temp_98_arithop_93_0 in mem offset legal
    sw      a2,912(sp)
              #                    release a2 with temp_98_arithop_93_0
    j       .while.head_92
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     718  label branch_false_95: 
.branch_false_95:
              #                     721  (nop) 
              #                     722  mu i_0_2:721 
              #                     724  (nop) 
              #                     726  (nop) 
              #                     727  mu get_0_1:726 
              #                     729  temp_190_cmp_100_0 = icmp i32 Eq temp_184_ele_of_*get_0_94_0, 40_0 
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    load from temp_184_ele_of_*get_0_94_0 in mem


    lw      a1,572(sp)
              #                    occupy a3 with 40_0
    li      a3, 40
              #                    occupy a4 with temp_190_cmp_100_0
    xor     a4,a1,a3
    seqz    a4, a4
              #                    free a1
              #                    free a3
              #                    free a4
              #                     732  br i1 temp_190_cmp_100_0, label branch_true_101, label branch_false_101 
              #                    occupy a4 with temp_190_cmp_100_0
              #                    free a4
              #                    occupy a4 with temp_190_cmp_100_0
    bnez    a4, .branch_true_101
              #                    free a4
    j       .branch_false_101
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     730  label branch_true_101: 
.branch_true_101:
              #                     1657 untrack temp_185_ret_of_isdigit_94_0 
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                     1656 untrack temp_118_value_from_ptr_170_0 
              #                     1655 untrack temp_122_ele_of_*get2_0_179_0 
              #                     1654 untrack temp_84_arithop_188_0 
              #                     1653 untrack temp_120_value_from_ptr_179_0 
              #                     1652 untrack temp_127_cmp_182_0 
              #                     1651 untrack temp_173_cmp_197_0 
              #                     1650 untrack temp_98_arithop_93_0 
              #                     1649 untrack temp_135_cmp_182_0 
              #                     1648 untrack temp_68_arithop_210_0 
              #                     1647 untrack temp_143_cmp_182_0 
              #                     1646 untrack temp_123_cmp_179_0 
              #                     1645 untrack temp_131_cmp_182_0 
              #                     1644 untrack temp_78_ret_of_intpop_184_0 
              #                     1643 untrack temp_87_ptr_of_*get2_0_172 
              #                     1642 untrack temp_83_arithop_191_0 
              #                     1641 untrack temp_147_cmp_182_0 
              #                     1640 untrack temp_121_ptr_of_*get2_0_179 
              #                     1639 untrack temp_116_value_from_ptr_91_0 
              #                     1638 untrack temp_82_arithop_194_0 
              #                     1637 untrack temp_115_arithop_96_0 
              #                     1636 untrack temp_89_arithop_172_0 
              #                     1635 untrack temp_190_cmp_100_0 
              #                    occupy a4 with temp_190_cmp_100_0
              #                    release a4 with temp_190_cmp_100_0
              #                     1634 untrack temp_151_cmp_208_0 
              #                     1633 untrack temp_90_ptr_of_*get2_0_172 
              #                     1632 untrack temp_186_cmp_94_0 
              #                    occupy a2 with temp_186_cmp_94_0
              #                    release a2 with temp_186_cmp_94_0
              #                     1631 untrack temp_109_value_from_ptr_96_0 
              #                     1630 untrack c_184_10 
              #                     1629 untrack c_184_0 
              #                     1628 untrack c_184_4 
              #                     1627 untrack c_184_2 
              #                     1626 untrack c_184_12 
              #                     1625 untrack c_184_8 
              #                     1624 untrack c_184_6 
              #                     1623 untrack temp_80_arithop_200_0 
              #                     1622 untrack temp_119_cmp_170_0 
              #                     1621 untrack temp_81_arithop_197_0 
              #                     1620 untrack temp_165_cmp_191_0 
              #                     1619 untrack temp_59_value_from_ptr_181_0 
              #                     1618 untrack temp_139_cmp_182_0 
              #                     1617 untrack temp_110_ptr_of_*get2_0_96 
              #                     1616 untrack temp_181_cmp_203_0 
              #                     1615 untrack temp_177_cmp_200_0 
              #                     1614 untrack temp_117_cmp_91_0 
              #                     1613 untrack temp_79_ret_of_power_203_0 
              #                     1612 untrack temp_183_ptr_of_*get_0_94 
              #                     1611 untrack temp_92_arithop_172_0 
              #                     1610 untrack temp_60_arithop_181_0 
              #                     1609 untrack temp_64_arithop_210_0 
              #                     1608 untrack temp_77_ret_of_intpop_184_0 
              #                     1607 untrack temp_169_cmp_194_0 
              #                     1606 untrack temp_85_ret_of_chapop_172_0 
              #                     1605 untrack temp_86_value_from_ptr_172_0 
              #                     460   Call void chapush_0(40_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    store to temp_184_ele_of_*get_0_94_0 in mem offset legal
    sw      a1,572(sp)
              #                    release a1 with temp_184_ele_of_*get_0_94_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_40_0_0
    li      a0, 40
              #                    arg load ended


    call    chapush
              #                     1220 mu chas_0_4:460 
              #                     1221 mu chat_0_9:460 
              #                     1222 chat_0_11 = chi chat_0_9:460 
              #                     1223 chas_0_6 = chi chas_0_4:460 
              #                          jump label: branch_false_101 
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    load from temp_184_ele_of_*get_0_94_0 in mem


    lw      a1,572(sp)
    j       .branch_false_101
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     731  label branch_false_101: 
.branch_false_101:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     734  (nop) 
              #                     735  mu i_0_2:734 
              #                     737  (nop) 
              #                     739  (nop) 
              #                     740  mu get_0_1:739 
              #                     742  temp_194_cmp_103_0 = icmp i32 Eq temp_184_ele_of_*get_0_94_0, 94_0 
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    occupy a3 with 94_0
    li      a3, 94
              #                    occupy a5 with temp_194_cmp_103_0
    xor     a5,a1,a3
    seqz    a5, a5
              #                    free a1
              #                    free a3
              #                    free a5
              #                     745  br i1 temp_194_cmp_103_0, label branch_true_104, label branch_false_104 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    free a5
              #                    occupy a5 with temp_194_cmp_103_0
    bnez    a5, .branch_true_104
              #                    free a5
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     743  label branch_true_104: 
.branch_true_104:
              #                     1711 untrack temp_122_ele_of_*get2_0_179_0 
              #                     1710 untrack temp_110_ptr_of_*get2_0_96 
              #                     1709 untrack temp_183_ptr_of_*get_0_94 
              #                     1708 untrack c_184_10 
              #                     1707 untrack c_184_0 
              #                     1706 untrack c_184_4 
              #                     1705 untrack c_184_2 
              #                     1704 untrack c_184_12 
              #                     1703 untrack c_184_8 
              #                     1702 untrack c_184_6 
              #                     1701 untrack temp_109_value_from_ptr_96_0 
              #                     1700 untrack temp_90_ptr_of_*get2_0_172 
              #                     1699 untrack temp_87_ptr_of_*get2_0_172 
              #                     1698 untrack temp_194_cmp_103_0 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    release a5 with temp_194_cmp_103_0
              #                     1697 untrack temp_151_cmp_208_0 
              #                     1696 untrack temp_185_ret_of_isdigit_94_0 
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                     1695 untrack temp_143_cmp_182_0 
              #                     1694 untrack temp_139_cmp_182_0 
              #                     1693 untrack temp_165_cmp_191_0 
              #                     1692 untrack temp_147_cmp_182_0 
              #                     1691 untrack temp_116_value_from_ptr_91_0 
              #                     1690 untrack temp_83_arithop_191_0 
              #                     1689 untrack temp_79_ret_of_power_203_0 
              #                     1688 untrack temp_84_arithop_188_0 
              #                     1687 untrack temp_190_cmp_100_0 
              #                    occupy a4 with temp_190_cmp_100_0
              #                    release a4 with temp_190_cmp_100_0
              #                     1686 untrack temp_78_ret_of_intpop_184_0 
              #                     1685 untrack temp_121_ptr_of_*get2_0_179 
              #                     1684 untrack temp_77_ret_of_intpop_184_0 
              #                     1683 untrack temp_131_cmp_182_0 
              #                     1682 untrack temp_181_cmp_203_0 
              #                     1681 untrack temp_59_value_from_ptr_181_0 
              #                     1680 untrack temp_173_cmp_197_0 
              #                     1679 untrack temp_89_arithop_172_0 
              #                     1678 untrack temp_60_arithop_181_0 
              #                     1677 untrack temp_82_arithop_194_0 
              #                     1676 untrack temp_115_arithop_96_0 
              #                     1675 untrack temp_85_ret_of_chapop_172_0 
              #                     1674 untrack temp_118_value_from_ptr_170_0 
              #                     1673 untrack temp_98_arithop_93_0 
              #                     1672 untrack temp_68_arithop_210_0 
              #                     1671 untrack temp_135_cmp_182_0 
              #                     1670 untrack temp_120_value_from_ptr_179_0 
              #                     1669 untrack temp_169_cmp_194_0 
              #                     1668 untrack temp_81_arithop_197_0 
              #                     1667 untrack temp_123_cmp_179_0 
              #                     1666 untrack temp_127_cmp_182_0 
              #                     1665 untrack temp_86_value_from_ptr_172_0 
              #                     1664 untrack temp_80_arithop_200_0 
              #                     1663 untrack temp_92_arithop_172_0 
              #                     1662 untrack temp_119_cmp_170_0 
              #                     1661 untrack temp_177_cmp_200_0 
              #                     1660 untrack temp_64_arithop_210_0 
              #                     1659 untrack temp_117_cmp_91_0 
              #                     1658 untrack temp_186_cmp_94_0 
              #                    occupy a2 with temp_186_cmp_94_0
              #                    release a2 with temp_186_cmp_94_0
              #                     459   Call void chapush_0(94_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    store to temp_184_ele_of_*get_0_94_0 in mem offset legal
    sw      a1,572(sp)
              #                    release a1 with temp_184_ele_of_*get_0_94_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_94_0_0
    li      a0, 94
              #                    arg load ended


    call    chapush
              #                     1224 mu chas_0_7:459 
              #                     1225 mu chat_0_12:459 
              #                     1226 chat_0_13 = chi chat_0_12:459 
              #                     1227 chas_0_8 = chi chas_0_7:459 
              #                          jump label: branch_false_104 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    load from temp_194_cmp_103_0 in mem


    lb      a5,535(sp)
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    load from temp_184_ele_of_*get_0_94_0 in mem


    lw      a1,572(sp)
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     744  label branch_false_104: 
.branch_false_104:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     747  (nop) 
              #                     748  mu i_0_2:747 
              #                     750  (nop) 
              #                     752  (nop) 
              #                     753  mu get_0_1:752 
              #                     755  temp_198_cmp_106_0 = icmp i32 Eq temp_184_ele_of_*get_0_94_0, 41_0 
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    occupy a3 with 41_0
    li      a3, 41
              #                    occupy a6 with temp_198_cmp_106_0
    xor     a6,a1,a3
    seqz    a6, a6
              #                    free a1
              #                    free a3
              #                    free a6
              #                     758  br i1 temp_198_cmp_106_0, label branch_true_107, label branch_false_107 
              #                    occupy a6 with temp_198_cmp_106_0
              #                    free a6
              #                    occupy a6 with temp_198_cmp_106_0
    bnez    a6, .branch_true_107
              #                    free a6
    j       .branch_false_107
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     756  label branch_true_107: 
.branch_true_107:
              #                     1766 untrack temp_120_value_from_ptr_179_0 
              #                     1765 untrack temp_83_arithop_191_0 
              #                     1764 untrack temp_119_cmp_170_0 
              #                     1763 untrack temp_122_ele_of_*get2_0_179_0 
              #                     1762 untrack temp_109_value_from_ptr_96_0 
              #                     1761 untrack temp_116_value_from_ptr_91_0 
              #                     1760 untrack temp_77_ret_of_intpop_184_0 
              #                     1759 untrack temp_169_cmp_194_0 
              #                     1758 untrack temp_121_ptr_of_*get2_0_179 
              #                     1757 untrack temp_190_cmp_100_0 
              #                    occupy a4 with temp_190_cmp_100_0
              #                    release a4 with temp_190_cmp_100_0
              #                     1756 untrack temp_81_arithop_197_0 
              #                     1755 untrack temp_90_ptr_of_*get2_0_172 
              #                     1754 untrack temp_68_arithop_210_0 
              #                     1753 untrack temp_89_arithop_172_0 
              #                     1752 untrack temp_82_arithop_194_0 
              #                     1751 untrack temp_127_cmp_182_0 
              #                     1750 untrack temp_181_cmp_203_0 
              #                     1749 untrack temp_185_ret_of_isdigit_94_0 
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                     1748 untrack temp_198_cmp_106_0 
              #                    occupy a6 with temp_198_cmp_106_0
              #                    release a6 with temp_198_cmp_106_0
              #                     1747 untrack temp_115_arithop_96_0 
              #                     1746 untrack temp_139_cmp_182_0 
              #                     1745 untrack temp_135_cmp_182_0 
              #                     1744 untrack c_184_10 
              #                     1743 untrack c_184_0 
              #                     1742 untrack c_184_4 
              #                     1741 untrack c_184_2 
              #                     1740 untrack c_184_12 
              #                     1739 untrack c_184_8 
              #                     1738 untrack c_184_6 
              #                     1737 untrack temp_86_value_from_ptr_172_0 
              #                     1736 untrack temp_80_arithop_200_0 
              #                     1735 untrack temp_123_cmp_179_0 
              #                     1734 untrack temp_98_arithop_93_0 
              #                     1733 untrack temp_79_ret_of_power_203_0 
              #                     1732 untrack temp_84_arithop_188_0 
              #                     1731 untrack temp_194_cmp_103_0 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    release a5 with temp_194_cmp_103_0
              #                     1730 untrack temp_87_ptr_of_*get2_0_172 
              #                     1729 untrack temp_64_arithop_210_0 
              #                     1728 untrack temp_78_ret_of_intpop_184_0 
              #                     1727 untrack temp_173_cmp_197_0 
              #                     1726 untrack temp_143_cmp_182_0 
              #                     1725 untrack temp_85_ret_of_chapop_172_0 
              #                     1724 untrack temp_177_cmp_200_0 
              #                     1723 untrack temp_60_arithop_181_0 
              #                     1722 untrack temp_59_value_from_ptr_181_0 
              #                     1721 untrack temp_131_cmp_182_0 
              #                     1720 untrack temp_186_cmp_94_0 
              #                    occupy a2 with temp_186_cmp_94_0
              #                    release a2 with temp_186_cmp_94_0
              #                     1719 untrack temp_118_value_from_ptr_170_0 
              #                     1718 untrack temp_165_cmp_191_0 
              #                     1717 untrack temp_151_cmp_208_0 
              #                     1716 untrack temp_92_arithop_172_0 
              #                     1715 untrack temp_147_cmp_182_0 
              #                     1714 untrack temp_117_cmp_91_0 
              #                     1713 untrack temp_183_ptr_of_*get_0_94 
              #                     1712 untrack temp_110_ptr_of_*get2_0_96 
              #                     426  temp_99_ret_of_chapop_108_0 =  Call i32 chapop_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    store to temp_184_ele_of_*get_0_94_0 in mem offset legal
    sw      a1,572(sp)
              #                    release a1 with temp_184_ele_of_*get_0_94_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    chapop
              #                     1228 mu chas_0_9:426 
              #                     1229 mu chat_0_14:426 
              #                     1230 chat_0_15 = chi chat_0_14:426 
              #                     427  store temp_99_ret_of_chapop_108_0:i32 *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a0 with temp_99_ret_of_chapop_108_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     1767 untrack temp_99_ret_of_chapop_108_0 
              #                    occupy a0 with temp_99_ret_of_chapop_108_0
              #                    release a0 with temp_99_ret_of_chapop_108_0
              #                     428  c_0_6 = chi c_0_4:427 
              #                          jump label: while.head_111 
    j       .while.head_111
              #                    regtab  released_gpr_count:13,released_fpr_count:24
              #                     1177 label while.head_111: 
.while.head_111:
              #                     1173 temp_325_value_from_ptr_110_0 = load *c_0:ptr->i32 
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
              #                    occupy a1 with temp_325_value_from_ptr_110_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     1174 mu c_0_7:1173 
              #                     1176 temp_326_cmp_110_0 = icmp i32 Ne temp_325_value_from_ptr_110_0, 40_0 
              #                    occupy a1 with temp_325_value_from_ptr_110_0
              #                    occupy a2 with 40_0
    li      a2, 40
              #                    occupy a3 with temp_326_cmp_110_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     1179 br i1 temp_326_cmp_110_0, label while.body_111, label branch_false_107 
              #                    occupy a3 with temp_326_cmp_110_0
              #                    free a3
              #                    occupy a3 with temp_326_cmp_110_0
    bnez    a3, .while.body_111
              #                    free a3
              #                    occupy a3 with temp_326_cmp_110_0
              #                    store to temp_326_cmp_110_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_326_cmp_110_0
              #                    occupy a5 with temp_194_cmp_103_0
              #                    load from temp_194_cmp_103_0 in mem


    lb      a5,535(sp)
              #                    occupy a6 with temp_198_cmp_106_0
              #                    load from temp_198_cmp_106_0 in mem


    lb      a6,519(sp)
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy a1 with temp_325_value_from_ptr_110_0
              #                    store to temp_325_value_from_ptr_110_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_325_value_from_ptr_110_0
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    load from temp_184_ele_of_*get_0_94_0 in mem


    lw      a1,572(sp)
    j       .branch_false_107
              #                    regtab     a1:Freed { symidx: temp_325_value_from_ptr_110_0, tracked: true } |     a3:Freed { symidx: temp_326_cmp_110_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1178 label while.body_111: 
.while.body_111:
              #                     430  temp_100_value_from_ptr_112_0 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a2 with temp_100_value_from_ptr_112_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     431  mu ii_0_7:430 
              #                     433  temp_101_ptr_of_*get2_0_112 = GEP *get2_0:ptr->i32 [Some(temp_100_value_from_ptr_112_0)] 
              #                    occupy a4 with temp_101_ptr_of_*get2_0_112
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_100_value_from_ptr_112_0
    mv      a5, a2
              #                    free a2
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *get2_0
              #                       load label get2 as ptr to reg
    la      a6, get2
              #                    occupy reg a6 with *get2_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     434  store 32_0:i32 temp_101_ptr_of_*get2_0_112:ptr->i32 
              #                    occupy a4 with temp_101_ptr_of_*get2_0_112
              #                    occupy a6 with 32_0
    li      a6, 32
    sw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                     435  get2_0_9 = chi get2_0_8:434 
              #                     437  (nop) 
              #                     438  mu ii_0_7:437 
              #                     440  temp_103_arithop_112_0 = Add i32 temp_100_value_from_ptr_112_0, 1_0 
              #                    occupy a2 with temp_100_value_from_ptr_112_0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_103_arithop_112_0
    ADDW    a7,a2,a6
              #                    free a2
              #                    occupy a2 with temp_100_value_from_ptr_112_0
              #                    store to temp_100_value_from_ptr_112_0 in mem offset legal
    sw      a2,904(sp)
              #                    release a2 with temp_100_value_from_ptr_112_0
              #                    free a6
              #                    free a7
              #                     442  temp_104_ptr_of_*get2_0_112 = GEP *get2_0:ptr->i32 [Some(temp_103_arithop_112_0)] 
              #                    occupy a2 with temp_104_ptr_of_*get2_0_112
    li      a2, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with temp_103_arithop_112_0
    mv      a6, a7
              #                    free a7
              #                    occupy a7 with temp_103_arithop_112_0
              #                    store to temp_103_arithop_112_0 in mem offset legal
    sw      a7,892(sp)
              #                    release a7 with temp_103_arithop_112_0
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
              #                    occupy a6 with *get2_0
              #                       load label get2 as ptr to reg
    la      a6, get2
              #                    occupy reg a6 with *get2_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                     444  (nop) 
              #                     445  mu c_0_7:444 
              #                     446  store temp_325_value_from_ptr_110_0:i32 temp_104_ptr_of_*get2_0_112:ptr->i32 
              #                    occupy a2 with temp_104_ptr_of_*get2_0_112
              #                    occupy a1 with temp_325_value_from_ptr_110_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     447  get2_0_10 = chi get2_0_9:446 
              #                     449  (nop) 
              #                     450  mu ii_0_7:449 
              #                     452  temp_107_arithop_112_0 = Add i32 temp_100_value_from_ptr_112_0, 2_0 
              #                    occupy a6 with temp_100_value_from_ptr_112_0
              #                    load from temp_100_value_from_ptr_112_0 in mem


    lw      a6,904(sp)
              #                    occupy a7 with 2_0
    li      a7, 2
              #                    occupy s1 with temp_107_arithop_112_0
    ADDW    s1,a6,a7
              #                    free a6
              #                    occupy a6 with temp_100_value_from_ptr_112_0
              #                    store to temp_100_value_from_ptr_112_0 in mem offset legal
    sw      a6,904(sp)
              #                    release a6 with temp_100_value_from_ptr_112_0
              #                    free a7
              #                    free s1
              #                    occupy s1 with temp_107_arithop_112_0
              #                    store to temp_107_arithop_112_0 in mem offset legal
    sw      s1,876(sp)
              #                    release s1 with temp_107_arithop_112_0
              #                     453  store temp_107_arithop_112_0:i32 *ii_0:ptr->i32 
              #                    occupy a6 with *ii_0
              #                       load label ii as ptr to reg
    la      a6, ii
              #                    occupy reg a6 with *ii_0
              #                    occupy a7 with temp_107_arithop_112_0
              #                    load from temp_107_arithop_112_0 in mem


    lw      a7,876(sp)
    sw      a7,0(a6)
              #                    free a7
              #                    occupy a7 with temp_107_arithop_112_0
              #                    store to temp_107_arithop_112_0 in mem offset legal
    sw      a7,876(sp)
              #                    release a7 with temp_107_arithop_112_0
              #                    free a6
              #                     454  ii_0_8 = chi ii_0_7:453 
              #                     456  temp_108_ret_of_chapop_112_0 =  Call i32 chapop_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_325_value_from_ptr_110_0
              #                    store to temp_325_value_from_ptr_110_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_325_value_from_ptr_110_0
              #                    occupy a2 with temp_104_ptr_of_*get2_0_112
              #                    store to temp_104_ptr_of_*get2_0_112 in mem offset legal
    sd      a2,880(sp)
              #                    release a2 with temp_104_ptr_of_*get2_0_112
              #                    occupy a3 with temp_326_cmp_110_0
              #                    store to temp_326_cmp_110_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_326_cmp_110_0
              #                    occupy a4 with temp_101_ptr_of_*get2_0_112
              #                    store to temp_101_ptr_of_*get2_0_112 in mem offset legal
    sd      a4,896(sp)
              #                    release a4 with temp_101_ptr_of_*get2_0_112
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    chapop
              #                     1231 mu chas_0_9:456 
              #                     1232 mu chat_0_16:456 
              #                     1233 chat_0_17 = chi chat_0_16:456 
              #                     457  store temp_108_ret_of_chapop_112_0:i32 *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a0 with temp_108_ret_of_chapop_112_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     458  c_0_8 = chi c_0_7:457 
              #                          jump label: while.head_111 
              #                    occupy a0 with temp_108_ret_of_chapop_112_0
              #                    store to temp_108_ret_of_chapop_112_0 in mem offset legal
    sw      a0,872(sp)
              #                    release a0 with temp_108_ret_of_chapop_112_0
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     757  label branch_false_107: 
.branch_false_107:
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     760  (nop) 
              #                     761  mu i_0_2:760 
              #                     763  (nop) 
              #                     765  (nop) 
              #                     766  mu get_0_1:765 
              #                     768  temp_202_cmp_117_0 = icmp i32 Eq temp_184_ele_of_*get_0_94_0, 43_0 
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    occupy a7 with temp_202_cmp_117_0
    xor     a7,a1,a3
    seqz    a7, a7
              #                    free a1
              #                    free a3
              #                    free a7
              #                     771  br i1 temp_202_cmp_117_0, label branch_true_118, label branch_false_118 
              #                    occupy a7 with temp_202_cmp_117_0
              #                    free a7
              #                    occupy a7 with temp_202_cmp_117_0
    bnez    a7, .branch_true_118
              #                    free a7
    j       .branch_false_118
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     769  label branch_true_118: 
.branch_true_118:
              #                     1782 untrack temp_326_cmp_110_0 
              #                     1781 untrack temp_104_ptr_of_*get2_0_112 
              #                     1780 untrack temp_101_ptr_of_*get2_0_112 
              #                     1779 untrack temp_156_ele_of_*get2_0_213_0 
              #                     1778 untrack temp_154_arithop_213_0 
              #                     1777 untrack temp_157_cmp_213_0 
              #                     1776 untrack temp_76_arithop_215_0 
              #                     1775 untrack temp_325_value_from_ptr_110_0 
              #                     1774 untrack temp_108_ret_of_chapop_112_0 
              #                     1773 untrack temp_100_value_from_ptr_112_0 
              #                     1772 untrack temp_103_arithop_112_0 
              #                     1771 untrack temp_153_value_from_ptr_213_0 
              #                     1770 untrack temp_155_ptr_of_*get2_0_213 
              #                     1769 untrack temp_107_arithop_112_0 
              #                     1768 untrack temp_74_arithop_215_0 
              #                     1088 temp_299_value_from_ptr_120_0 = load *chat_0:ptr->i32 
              #                    occupy a3 with *chat_0
              #                       load label chat as ptr to reg
    la      a3, chat
              #                    occupy reg a3 with *chat_0
              #                    occupy s1 with temp_299_value_from_ptr_120_0
    lw      s1,0(a3)
              #                    free s1
              #                    occupy s1 with temp_299_value_from_ptr_120_0
              #                    store to temp_299_value_from_ptr_120_0 in mem offset legal
    sw      s1,112(sp)
              #                    release s1 with temp_299_value_from_ptr_120_0
              #                    free a3
              #                     1089 mu chat_0_19:1088 
              #                     1091 temp_300_ptr_of_*chas_0_120 = GEP *chas_0:Array:i32:[None] [Some(temp_299_value_from_ptr_120_0)] 
              #                    occupy s1 with temp_300_ptr_of_*chas_0_120
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with temp_299_value_from_ptr_120_0
              #                    load from temp_299_value_from_ptr_120_0 in mem


    lw      s3,112(sp)
    mv      s2, s3
              #                    free s3
              #                    occupy s3 with temp_299_value_from_ptr_120_0
              #                    store to temp_299_value_from_ptr_120_0 in mem offset legal
    sw      s3,112(sp)
              #                    release s3 with temp_299_value_from_ptr_120_0
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s2 with *chas_0
              #                       load label chas as ptr to reg
    la      s2, chas
              #                    occupy reg s2 with *chas_0
    add     s1,s1,s2
              #                    free s2
              #                    free s1
              #                    occupy s1 with temp_300_ptr_of_*chas_0_120
              #                    store to temp_300_ptr_of_*chas_0_120 in mem offset legal
    sd      s1,104(sp)
              #                    release s1 with temp_300_ptr_of_*chas_0_120
              #                     1093 temp_301_ele_of_*chas_0_120_0 = load temp_300_ptr_of_*chas_0_120:ptr->i32 
              #                    occupy s1 with temp_300_ptr_of_*chas_0_120
              #                    load from temp_300_ptr_of_*chas_0_120 in mem
    ld      s1,104(sp)
              #                    occupy s2 with temp_301_ele_of_*chas_0_120_0
    lw      s2,0(s1)
              #                    free s2
              #                    occupy s2 with temp_301_ele_of_*chas_0_120_0
              #                    store to temp_301_ele_of_*chas_0_120_0 in mem offset legal
    sw      s2,100(sp)
              #                    release s2 with temp_301_ele_of_*chas_0_120_0
              #                    free s1
              #                    occupy s1 with temp_300_ptr_of_*chas_0_120
              #                    store to temp_300_ptr_of_*chas_0_120 in mem offset legal
    sd      s1,104(sp)
              #                    release s1 with temp_300_ptr_of_*chas_0_120
              #                     1094 mu chas_0_9:1093 
              #                     1096 temp_302_cmp_120_0 = icmp i32 Eq temp_301_ele_of_*chas_0_120_0, 43_0 
              #                    occupy s1 with temp_301_ele_of_*chas_0_120_0
              #                    load from temp_301_ele_of_*chas_0_120_0 in mem


    lw      s1,100(sp)
              #                    occupy s2 with 43_0
    li      s2, 43
              #                    occupy s3 with temp_302_cmp_120_0
    xor     s3,s1,s2
    seqz    s3, s3
              #                    free s1
              #                    occupy s1 with temp_301_ele_of_*chas_0_120_0
              #                    store to temp_301_ele_of_*chas_0_120_0 in mem offset legal
    sw      s1,100(sp)
              #                    release s1 with temp_301_ele_of_*chas_0_120_0
              #                    free s2
              #                    free s3
              #                    occupy s3 with temp_302_cmp_120_0
              #                    store to temp_302_cmp_120_0 in mem offset legal
    sb      s3,99(sp)
              #                    release s3 with temp_302_cmp_120_0
              #                     1164 br i1 temp_302_cmp_120_0, label branch_short_circuit_c_true_1075, label branch_short_circuit_p_false_1047 
              #                    occupy s1 with temp_302_cmp_120_0
              #                    load from temp_302_cmp_120_0 in mem


    lb      s1,99(sp)
              #                    free s1
              #                    occupy s1 with temp_302_cmp_120_0
              #                    store to temp_302_cmp_120_0 in mem offset legal
    sb      s1,99(sp)
              #                    release s1 with temp_302_cmp_120_0
              #                    occupy a3 with temp_302_cmp_120_0
              #                    load from temp_302_cmp_120_0 in mem


    lb      a3,99(sp)
    bnez    a3, .branch_short_circuit_c_true_1075
              #                    free a3
              #                    occupy a3 with temp_302_cmp_120_0
              #                    store to temp_302_cmp_120_0 in mem offset legal
    sb      a3,99(sp)
              #                    release a3 with temp_302_cmp_120_0
    j       .branch_short_circuit_p_false_1047
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1147 label branch_short_circuit_c_true_1075: 
.branch_short_circuit_c_true_1075:
              #                     1166 temp_323_ret_of_find_123_0 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    store to temp_185_ret_of_isdigit_94_0 in mem offset legal
    sw      a0,568(sp)
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    store to temp_184_ele_of_*get_0_94_0 in mem offset legal
    sw      a1,572(sp)
              #                    release a1 with temp_184_ele_of_*get_0_94_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    store to temp_186_cmp_94_0 in mem offset legal
    sb      a2,567(sp)
              #                    release a2 with temp_186_cmp_94_0
              #                    occupy a4 with temp_190_cmp_100_0
              #                    store to temp_190_cmp_100_0 in mem offset legal
    sb      a4,551(sp)
              #                    release a4 with temp_190_cmp_100_0
              #                    occupy a5 with temp_194_cmp_103_0
              #                    store to temp_194_cmp_103_0 in mem offset legal
    sb      a5,535(sp)
              #                    release a5 with temp_194_cmp_103_0
              #                    occupy a6 with temp_198_cmp_106_0
              #                    store to temp_198_cmp_106_0 in mem offset legal
    sb      a6,519(sp)
              #                    release a6 with temp_198_cmp_106_0
              #                    occupy a7 with temp_202_cmp_117_0
              #                    store to temp_202_cmp_117_0 in mem offset legal
    sb      a7,503(sp)
              #                    release a7 with temp_202_cmp_117_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                     1234 mu get2_0_12:1166 
              #                     1235 mu chas_0_9:1166 
              #                     1236 mu chat_0_19:1166 
              #                     1237 mu ii_0_10:1166 
              #                     1238 mu c_0_10:1166 
              #                     1239 get2_0_13 = chi get2_0_12:1166 
              #                     1240 chat_0_20 = chi chat_0_19:1166 
              #                     1241 c_0_11 = chi c_0_10:1166 
              #                     1242 ii_0_11 = chi ii_0_10:1166 
              #                     1168 temp_324_cmp_123_0 = icmp i32 Eq temp_323_ret_of_find_123_0, 0_0 
              #                    occupy a0 with temp_323_ret_of_find_123_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_324_cmp_123_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1171 br i1 temp_324_cmp_123_0, label branch_true_124, label branch_false_124 
              #                    occupy a2 with temp_324_cmp_123_0
              #                    free a2
              #                    occupy a2 with temp_324_cmp_123_0
    bnez    a2, .branch_true_124
              #                    free a2
    j       .branch_false_124
              #                    regtab     a0:Freed { symidx: temp_323_ret_of_find_123_0, tracked: true } |     a2:Freed { symidx: temp_324_cmp_123_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1169 label branch_true_124: 
.branch_true_124:
              #                     1793 untrack temp_301_ele_of_*chas_0_120_0 
              #                     1792 untrack temp_302_cmp_120_0 
              #                     1791 untrack temp_300_ptr_of_*chas_0_120 
              #                     1790 untrack temp_323_ret_of_find_123_0 
              #                    occupy a0 with temp_323_ret_of_find_123_0
              #                    release a0 with temp_323_ret_of_find_123_0
              #                     1789 untrack temp_314_cmp_120_0 
              #                     1788 untrack temp_310_cmp_120_0 
              #                     1787 untrack temp_324_cmp_123_0 
              #                    occupy a2 with temp_324_cmp_123_0
              #                    release a2 with temp_324_cmp_123_0
              #                     1786 untrack temp_306_cmp_120_0 
              #                     1785 untrack temp_322_cmp_120_0 
              #                     1784 untrack temp_299_value_from_ptr_120_0 
              #                     1783 untrack temp_318_cmp_120_0 
              #                          jump label: branch_short_circuit_c_false_1075 
    j       .branch_short_circuit_c_false_1075
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                     1148 label branch_short_circuit_c_false_1075: 
.branch_short_circuit_c_false_1075:
              #                     424   Call void chapush_0(43_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_43_0_0
    li      a0, 43
              #                    arg load ended


    call    chapush
              #                     1243 mu chas_0_9:424 
              #                     1244 mu chat_0_21:424 
              #                     1245 chat_0_22 = chi chat_0_21:424 
              #                     1246 chas_0_10 = chi chas_0_9:424 
              #                          jump label: branch_false_118 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    load from temp_194_cmp_103_0 in mem


    lb      a5,535(sp)
              #                    occupy a6 with temp_198_cmp_106_0
              #                    load from temp_198_cmp_106_0 in mem


    lb      a6,519(sp)
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a7 with temp_202_cmp_117_0
              #                    load from temp_202_cmp_117_0 in mem


    lb      a7,503(sp)
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    load from temp_184_ele_of_*get_0_94_0 in mem


    lw      a1,572(sp)
    j       .branch_false_118
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     770  label branch_false_118: 
.branch_false_118:
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     773  (nop) 
              #                     774  mu i_0_2:773 
              #                     776  (nop) 
              #                     778  (nop) 
              #                     779  mu get_0_1:778 
              #                     781  temp_206_cmp_127_0 = icmp i32 Eq temp_184_ele_of_*get_0_94_0, 45_0 
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    occupy s1 with temp_206_cmp_127_0
    xor     s1,a1,a3
    seqz    s1, s1
              #                    free a1
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    store to temp_184_ele_of_*get_0_94_0 in mem offset legal
    sw      a1,572(sp)
              #                    release a1 with temp_184_ele_of_*get_0_94_0
              #                    free a3
              #                    free s1
              #                     784  br i1 temp_206_cmp_127_0, label branch_true_128, label branch_false_128 
              #                    occupy s1 with temp_206_cmp_127_0
              #                    free s1
              #                    occupy s1 with temp_206_cmp_127_0
    bnez    s1, .branch_true_128
              #                    free s1
    j       .branch_false_128
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     782  label branch_true_128: 
.branch_true_128:
              #                     1857 untrack temp_155_ptr_of_*get2_0_213 
              #                     1856 untrack temp_157_cmp_213_0 
              #                     1855 untrack temp_322_cmp_120_0 
              #                     1854 untrack temp_302_cmp_120_0 
              #                     1853 untrack temp_306_cmp_120_0 
              #                     1852 untrack temp_325_value_from_ptr_110_0 
              #                     1851 untrack temp_323_ret_of_find_123_0 
              #                     1850 untrack temp_76_arithop_215_0 
              #                     1849 untrack temp_326_cmp_110_0 
              #                     1848 untrack temp_324_cmp_123_0 
              #                     1847 untrack temp_101_ptr_of_*get2_0_112 
              #                     1846 untrack temp_107_arithop_112_0 
              #                     1845 untrack temp_103_arithop_112_0 
              #                     1844 untrack temp_104_ptr_of_*get2_0_112 
              #                     1843 untrack temp_154_arithop_213_0 
              #                     1842 untrack temp_314_cmp_120_0 
              #                     1841 untrack temp_153_value_from_ptr_213_0 
              #                     1840 untrack temp_300_ptr_of_*chas_0_120 
              #                     1839 untrack temp_301_ele_of_*chas_0_120_0 
              #                     1838 untrack temp_74_arithop_215_0 
              #                     1837 untrack temp_108_ret_of_chapop_112_0 
              #                     1836 untrack temp_310_cmp_120_0 
              #                     1835 untrack temp_156_ele_of_*get2_0_213_0 
              #                     1834 untrack temp_318_cmp_120_0 
              #                     1833 untrack temp_299_value_from_ptr_120_0 
              #                     1832 untrack temp_100_value_from_ptr_112_0 
              #                     1003 temp_273_value_from_ptr_130_0 = load *chat_0:ptr->i32 
              #                    occupy a1 with *chat_0
              #                       load label chat as ptr to reg
    la      a1, chat
              #                    occupy reg a1 with *chat_0
              #                    occupy a3 with temp_273_value_from_ptr_130_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_273_value_from_ptr_130_0
              #                    store to temp_273_value_from_ptr_130_0 in mem offset legal
    sw      a3,216(sp)
              #                    release a3 with temp_273_value_from_ptr_130_0
              #                    free a1
              #                     1004 mu chat_0_24:1003 
              #                     1006 temp_274_ptr_of_*chas_0_130 = GEP *chas_0:Array:i32:[None] [Some(temp_273_value_from_ptr_130_0)] 
              #                    occupy a1 with temp_274_ptr_of_*chas_0_130
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with temp_273_value_from_ptr_130_0
              #                    load from temp_273_value_from_ptr_130_0 in mem


    lw      s2,216(sp)
    mv      a3, s2
              #                    free s2
              #                    occupy s2 with temp_273_value_from_ptr_130_0
              #                    store to temp_273_value_from_ptr_130_0 in mem offset legal
    sw      s2,216(sp)
              #                    release s2 with temp_273_value_from_ptr_130_0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a3 with *chas_0
              #                       load label chas as ptr to reg
    la      a3, chas
              #                    occupy reg a3 with *chas_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                    occupy a1 with temp_274_ptr_of_*chas_0_130
              #                    store to temp_274_ptr_of_*chas_0_130 in mem offset legal
    sd      a1,208(sp)
              #                    release a1 with temp_274_ptr_of_*chas_0_130
              #                     1008 temp_275_ele_of_*chas_0_130_0 = load temp_274_ptr_of_*chas_0_130:ptr->i32 
              #                    occupy a1 with temp_274_ptr_of_*chas_0_130
              #                    load from temp_274_ptr_of_*chas_0_130 in mem
    ld      a1,208(sp)
              #                    occupy a3 with temp_275_ele_of_*chas_0_130_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_275_ele_of_*chas_0_130_0
              #                    store to temp_275_ele_of_*chas_0_130_0 in mem offset legal
    sw      a3,204(sp)
              #                    release a3 with temp_275_ele_of_*chas_0_130_0
              #                    free a1
              #                    occupy a1 with temp_274_ptr_of_*chas_0_130
              #                    store to temp_274_ptr_of_*chas_0_130 in mem offset legal
    sd      a1,208(sp)
              #                    release a1 with temp_274_ptr_of_*chas_0_130
              #                     1009 mu chas_0_11:1008 
              #                     1011 temp_276_cmp_130_0 = icmp i32 Eq temp_275_ele_of_*chas_0_130_0, 43_0 
              #                    occupy a1 with temp_275_ele_of_*chas_0_130_0
              #                    load from temp_275_ele_of_*chas_0_130_0 in mem


    lw      a1,204(sp)
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    occupy s2 with temp_276_cmp_130_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_275_ele_of_*chas_0_130_0
              #                    store to temp_275_ele_of_*chas_0_130_0 in mem offset legal
    sw      a1,204(sp)
              #                    release a1 with temp_275_ele_of_*chas_0_130_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_276_cmp_130_0
              #                    store to temp_276_cmp_130_0 in mem offset legal
    sb      s2,203(sp)
              #                    release s2 with temp_276_cmp_130_0
              #                     1079 br i1 temp_276_cmp_130_0, label branch_short_circuit_c_true_1039, label branch_short_circuit_p_false_1011 
              #                    occupy a1 with temp_276_cmp_130_0
              #                    load from temp_276_cmp_130_0 in mem


    lb      a1,203(sp)
              #                    free a1
              #                    occupy a1 with temp_276_cmp_130_0
              #                    store to temp_276_cmp_130_0 in mem offset legal
    sb      a1,203(sp)
              #                    release a1 with temp_276_cmp_130_0
              #                    occupy a1 with temp_276_cmp_130_0
              #                    load from temp_276_cmp_130_0 in mem


    lb      a1,203(sp)
    bnez    a1, .branch_short_circuit_c_true_1039
              #                    free a1
              #                    occupy a1 with temp_276_cmp_130_0
              #                    store to temp_276_cmp_130_0 in mem offset legal
    sb      a1,203(sp)
              #                    release a1 with temp_276_cmp_130_0
    j       .branch_short_circuit_p_false_1011
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1062 label branch_short_circuit_c_true_1039: 
.branch_short_circuit_c_true_1039:
              #                     1081 temp_297_ret_of_find_133_0 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_206_cmp_127_0
              #                    store to temp_206_cmp_127_0 in mem offset legal
    sb      s1,487(sp)
              #                    release s1 with temp_206_cmp_127_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    store to temp_185_ret_of_isdigit_94_0 in mem offset legal
    sw      a0,568(sp)
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    store to temp_186_cmp_94_0 in mem offset legal
    sb      a2,567(sp)
              #                    release a2 with temp_186_cmp_94_0
              #                    occupy a4 with temp_190_cmp_100_0
              #                    store to temp_190_cmp_100_0 in mem offset legal
    sb      a4,551(sp)
              #                    release a4 with temp_190_cmp_100_0
              #                    occupy a5 with temp_194_cmp_103_0
              #                    store to temp_194_cmp_103_0 in mem offset legal
    sb      a5,535(sp)
              #                    release a5 with temp_194_cmp_103_0
              #                    occupy a6 with temp_198_cmp_106_0
              #                    store to temp_198_cmp_106_0 in mem offset legal
    sb      a6,519(sp)
              #                    release a6 with temp_198_cmp_106_0
              #                    occupy a7 with temp_202_cmp_117_0
              #                    store to temp_202_cmp_117_0 in mem offset legal
    sb      a7,503(sp)
              #                    release a7 with temp_202_cmp_117_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                     1247 mu get2_0_16:1081 
              #                     1248 mu chas_0_11:1081 
              #                     1249 mu chat_0_24:1081 
              #                     1250 mu ii_0_14:1081 
              #                     1251 mu c_0_14:1081 
              #                     1252 get2_0_17 = chi get2_0_16:1081 
              #                     1253 chat_0_25 = chi chat_0_24:1081 
              #                     1254 c_0_15 = chi c_0_14:1081 
              #                     1255 ii_0_15 = chi ii_0_14:1081 
              #                     1083 temp_298_cmp_133_0 = icmp i32 Eq temp_297_ret_of_find_133_0, 0_0 
              #                    occupy a0 with temp_297_ret_of_find_133_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_298_cmp_133_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1086 br i1 temp_298_cmp_133_0, label branch_true_134, label branch_false_134 
              #                    occupy a2 with temp_298_cmp_133_0
              #                    free a2
              #                    occupy a2 with temp_298_cmp_133_0
    bnez    a2, .branch_true_134
              #                    free a2
    j       .branch_false_134
              #                    regtab     a0:Freed { symidx: temp_297_ret_of_find_133_0, tracked: true } |     a2:Freed { symidx: temp_298_cmp_133_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1084 label branch_true_134: 
.branch_true_134:
              #                     1868 untrack temp_292_cmp_130_0 
              #                     1867 untrack temp_280_cmp_130_0 
              #                     1866 untrack temp_276_cmp_130_0 
              #                     1865 untrack temp_275_ele_of_*chas_0_130_0 
              #                     1864 untrack temp_288_cmp_130_0 
              #                     1863 untrack temp_273_value_from_ptr_130_0 
              #                     1862 untrack temp_284_cmp_130_0 
              #                     1861 untrack temp_274_ptr_of_*chas_0_130 
              #                     1860 untrack temp_296_cmp_130_0 
              #                     1859 untrack temp_297_ret_of_find_133_0 
              #                    occupy a0 with temp_297_ret_of_find_133_0
              #                    release a0 with temp_297_ret_of_find_133_0
              #                     1858 untrack temp_298_cmp_133_0 
              #                    occupy a2 with temp_298_cmp_133_0
              #                    release a2 with temp_298_cmp_133_0
              #                          jump label: branch_short_circuit_c_false_1039 
    j       .branch_short_circuit_c_false_1039
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                     1063 label branch_short_circuit_c_false_1039: 
.branch_short_circuit_c_false_1039:
              #                     423   Call void chapush_0(45_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_45_0_0
    li      a0, 45
              #                    arg load ended


    call    chapush
              #                     1256 mu chas_0_11:423 
              #                     1257 mu chat_0_26:423 
              #                     1258 chat_0_27 = chi chat_0_26:423 
              #                     1259 chas_0_12 = chi chas_0_11:423 
              #                          jump label: branch_false_128 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    load from temp_194_cmp_103_0 in mem


    lb      a5,535(sp)
              #                    occupy a6 with temp_198_cmp_106_0
              #                    load from temp_198_cmp_106_0 in mem


    lb      a6,519(sp)
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a7 with temp_202_cmp_117_0
              #                    load from temp_202_cmp_117_0 in mem


    lb      a7,503(sp)
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy s1 with temp_206_cmp_127_0
              #                    load from temp_206_cmp_127_0 in mem


    lb      s1,487(sp)
    j       .branch_false_128
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     783  label branch_false_128: 
.branch_false_128:
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     786  (nop) 
              #                     787  mu i_0_2:786 
              #                     789  (nop) 
              #                     791  (nop) 
              #                     792  mu get_0_1:791 
              #                     794  temp_210_cmp_137_0 = icmp i32 Eq temp_184_ele_of_*get_0_94_0, 42_0 
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    load from temp_184_ele_of_*get_0_94_0 in mem


    lw      a1,572(sp)
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    occupy s2 with temp_210_cmp_137_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    store to temp_184_ele_of_*get_0_94_0 in mem offset legal
    sw      a1,572(sp)
              #                    release a1 with temp_184_ele_of_*get_0_94_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_210_cmp_137_0
              #                    store to temp_210_cmp_137_0 in mem offset legal
    sb      s2,471(sp)
              #                    release s2 with temp_210_cmp_137_0
              #                     797  br i1 temp_210_cmp_137_0, label branch_true_138, label branch_false_138 
              #                    occupy a1 with temp_210_cmp_137_0
              #                    load from temp_210_cmp_137_0 in mem


    lb      a1,471(sp)
              #                    free a1
              #                    occupy a1 with temp_210_cmp_137_0
              #                    store to temp_210_cmp_137_0 in mem offset legal
    sb      a1,471(sp)
              #                    release a1 with temp_210_cmp_137_0
              #                    occupy a1 with temp_210_cmp_137_0
              #                    load from temp_210_cmp_137_0 in mem


    lb      a1,471(sp)
    bnez    a1, .branch_true_138
              #                    free a1
              #                    occupy a1 with temp_210_cmp_137_0
              #                    store to temp_210_cmp_137_0 in mem offset legal
    sb      a1,471(sp)
              #                    release a1 with temp_210_cmp_137_0
    j       .branch_false_138
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     795  label branch_true_138: 
.branch_true_138:
              #                     1932 untrack temp_300_ptr_of_*chas_0_120 
              #                     1931 untrack temp_288_cmp_130_0 
              #                     1930 untrack temp_314_cmp_120_0 
              #                     1929 untrack temp_302_cmp_120_0 
              #                     1928 untrack temp_322_cmp_120_0 
              #                     1927 untrack temp_275_ele_of_*chas_0_130_0 
              #                     1926 untrack temp_274_ptr_of_*chas_0_130 
              #                     1925 untrack temp_154_arithop_213_0 
              #                     1924 untrack temp_276_cmp_130_0 
              #                     1923 untrack temp_318_cmp_120_0 
              #                     1922 untrack temp_284_cmp_130_0 
              #                     1921 untrack temp_103_arithop_112_0 
              #                     1920 untrack temp_301_ele_of_*chas_0_120_0 
              #                     1919 untrack temp_296_cmp_130_0 
              #                     1918 untrack temp_157_cmp_213_0 
              #                     1917 untrack temp_299_value_from_ptr_120_0 
              #                     1916 untrack temp_76_arithop_215_0 
              #                     1915 untrack temp_107_arithop_112_0 
              #                     1914 untrack temp_280_cmp_130_0 
              #                     1913 untrack temp_297_ret_of_find_133_0 
              #                     1912 untrack temp_108_ret_of_chapop_112_0 
              #                     1911 untrack temp_324_cmp_123_0 
              #                     1910 untrack temp_74_arithop_215_0 
              #                     1909 untrack temp_273_value_from_ptr_130_0 
              #                     1908 untrack temp_325_value_from_ptr_110_0 
              #                     1907 untrack temp_292_cmp_130_0 
              #                     1906 untrack temp_155_ptr_of_*get2_0_213 
              #                     1905 untrack temp_306_cmp_120_0 
              #                     1904 untrack temp_153_value_from_ptr_213_0 
              #                     1903 untrack temp_298_cmp_133_0 
              #                     1902 untrack temp_323_ret_of_find_123_0 
              #                     1901 untrack temp_101_ptr_of_*get2_0_112 
              #                     1900 untrack temp_156_ele_of_*get2_0_213_0 
              #                     1899 untrack temp_100_value_from_ptr_112_0 
              #                     1898 untrack temp_310_cmp_120_0 
              #                     1897 untrack temp_104_ptr_of_*get2_0_112 
              #                     1896 untrack temp_326_cmp_110_0 
              #                     944  temp_255_value_from_ptr_140_0 = load *chat_0:ptr->i32 
              #                    occupy a1 with *chat_0
              #                       load label chat as ptr to reg
    la      a1, chat
              #                    occupy reg a1 with *chat_0
              #                    occupy a3 with temp_255_value_from_ptr_140_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_255_value_from_ptr_140_0
              #                    store to temp_255_value_from_ptr_140_0 in mem offset legal
    sw      a3,288(sp)
              #                    release a3 with temp_255_value_from_ptr_140_0
              #                    free a1
              #                     945  mu chat_0_29:944 
              #                     947  temp_256_ptr_of_*chas_0_140 = GEP *chas_0:Array:i32:[None] [Some(temp_255_value_from_ptr_140_0)] 
              #                    occupy a1 with temp_256_ptr_of_*chas_0_140
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with temp_255_value_from_ptr_140_0
              #                    load from temp_255_value_from_ptr_140_0 in mem


    lw      s2,288(sp)
    mv      a3, s2
              #                    free s2
              #                    occupy s2 with temp_255_value_from_ptr_140_0
              #                    store to temp_255_value_from_ptr_140_0 in mem offset legal
    sw      s2,288(sp)
              #                    release s2 with temp_255_value_from_ptr_140_0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a3 with *chas_0
              #                       load label chas as ptr to reg
    la      a3, chas
              #                    occupy reg a3 with *chas_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                    occupy a1 with temp_256_ptr_of_*chas_0_140
              #                    store to temp_256_ptr_of_*chas_0_140 in mem offset legal
    sd      a1,280(sp)
              #                    release a1 with temp_256_ptr_of_*chas_0_140
              #                     949  temp_257_ele_of_*chas_0_140_0 = load temp_256_ptr_of_*chas_0_140:ptr->i32 
              #                    occupy a1 with temp_256_ptr_of_*chas_0_140
              #                    load from temp_256_ptr_of_*chas_0_140 in mem
    ld      a1,280(sp)
              #                    occupy a3 with temp_257_ele_of_*chas_0_140_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_257_ele_of_*chas_0_140_0
              #                    store to temp_257_ele_of_*chas_0_140_0 in mem offset legal
    sw      a3,276(sp)
              #                    release a3 with temp_257_ele_of_*chas_0_140_0
              #                    free a1
              #                    occupy a1 with temp_256_ptr_of_*chas_0_140
              #                    store to temp_256_ptr_of_*chas_0_140 in mem offset legal
    sd      a1,280(sp)
              #                    release a1 with temp_256_ptr_of_*chas_0_140
              #                     950  mu chas_0_13:949 
              #                     952  temp_258_cmp_140_0 = icmp i32 Eq temp_257_ele_of_*chas_0_140_0, 42_0 
              #                    occupy a1 with temp_257_ele_of_*chas_0_140_0
              #                    load from temp_257_ele_of_*chas_0_140_0 in mem


    lw      a1,276(sp)
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    occupy s2 with temp_258_cmp_140_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_257_ele_of_*chas_0_140_0
              #                    store to temp_257_ele_of_*chas_0_140_0 in mem offset legal
    sw      a1,276(sp)
              #                    release a1 with temp_257_ele_of_*chas_0_140_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_258_cmp_140_0
              #                    store to temp_258_cmp_140_0 in mem offset legal
    sb      s2,275(sp)
              #                    release s2 with temp_258_cmp_140_0
              #                     994  br i1 temp_258_cmp_140_0, label branch_short_circuit_c_true_1003, label branch_short_circuit_p_false_989 
              #                    occupy a1 with temp_258_cmp_140_0
              #                    load from temp_258_cmp_140_0 in mem


    lb      a1,275(sp)
              #                    free a1
              #                    occupy a1 with temp_258_cmp_140_0
              #                    store to temp_258_cmp_140_0 in mem offset legal
    sb      a1,275(sp)
              #                    release a1 with temp_258_cmp_140_0
              #                    occupy a1 with temp_258_cmp_140_0
              #                    load from temp_258_cmp_140_0 in mem


    lb      a1,275(sp)
    bnez    a1, .branch_short_circuit_c_true_1003
              #                    free a1
              #                    occupy a1 with temp_258_cmp_140_0
              #                    store to temp_258_cmp_140_0 in mem offset legal
    sb      a1,275(sp)
              #                    release a1 with temp_258_cmp_140_0
    j       .branch_short_circuit_p_false_989
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     983  label branch_short_circuit_c_true_1003: 
.branch_short_circuit_c_true_1003:
              #                     996  temp_271_ret_of_find_143_0 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_206_cmp_127_0
              #                    store to temp_206_cmp_127_0 in mem offset legal
    sb      s1,487(sp)
              #                    release s1 with temp_206_cmp_127_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    store to temp_185_ret_of_isdigit_94_0 in mem offset legal
    sw      a0,568(sp)
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    store to temp_186_cmp_94_0 in mem offset legal
    sb      a2,567(sp)
              #                    release a2 with temp_186_cmp_94_0
              #                    occupy a4 with temp_190_cmp_100_0
              #                    store to temp_190_cmp_100_0 in mem offset legal
    sb      a4,551(sp)
              #                    release a4 with temp_190_cmp_100_0
              #                    occupy a5 with temp_194_cmp_103_0
              #                    store to temp_194_cmp_103_0 in mem offset legal
    sb      a5,535(sp)
              #                    release a5 with temp_194_cmp_103_0
              #                    occupy a6 with temp_198_cmp_106_0
              #                    store to temp_198_cmp_106_0 in mem offset legal
    sb      a6,519(sp)
              #                    release a6 with temp_198_cmp_106_0
              #                    occupy a7 with temp_202_cmp_117_0
              #                    store to temp_202_cmp_117_0 in mem offset legal
    sb      a7,503(sp)
              #                    release a7 with temp_202_cmp_117_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                     1260 mu get2_0_20:996 
              #                     1261 mu chas_0_13:996 
              #                     1262 mu chat_0_29:996 
              #                     1263 mu ii_0_18:996 
              #                     1264 mu c_0_18:996 
              #                     1265 get2_0_21 = chi get2_0_20:996 
              #                     1266 chat_0_30 = chi chat_0_29:996 
              #                     1267 c_0_19 = chi c_0_18:996 
              #                     1268 ii_0_19 = chi ii_0_18:996 
              #                     998  temp_272_cmp_143_0 = icmp i32 Eq temp_271_ret_of_find_143_0, 0_0 
              #                    occupy a0 with temp_271_ret_of_find_143_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_272_cmp_143_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1001 br i1 temp_272_cmp_143_0, label branch_true_144, label branch_false_144 
              #                    occupy a2 with temp_272_cmp_143_0
              #                    free a2
              #                    occupy a2 with temp_272_cmp_143_0
    bnez    a2, .branch_true_144
              #                    free a2
    j       .branch_false_144
              #                    regtab     a0:Freed { symidx: temp_271_ret_of_find_143_0, tracked: true } |     a2:Freed { symidx: temp_272_cmp_143_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     999  label branch_true_144: 
.branch_true_144:
              #                     1941 untrack temp_266_cmp_140_0 
              #                     1940 untrack temp_271_ret_of_find_143_0 
              #                    occupy a0 with temp_271_ret_of_find_143_0
              #                    release a0 with temp_271_ret_of_find_143_0
              #                     1939 untrack temp_262_cmp_140_0 
              #                     1938 untrack temp_258_cmp_140_0 
              #                     1937 untrack temp_256_ptr_of_*chas_0_140 
              #                     1936 untrack temp_255_value_from_ptr_140_0 
              #                     1935 untrack temp_270_cmp_140_0 
              #                     1934 untrack temp_257_ele_of_*chas_0_140_0 
              #                     1933 untrack temp_272_cmp_143_0 
              #                    occupy a2 with temp_272_cmp_143_0
              #                    release a2 with temp_272_cmp_143_0
              #                          jump label: branch_short_circuit_c_false_1003 
    j       .branch_short_circuit_c_false_1003
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                     984  label branch_short_circuit_c_false_1003: 
.branch_short_circuit_c_false_1003:
              #                     422   Call void chapush_0(42_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_42_0_0
    li      a0, 42
              #                    arg load ended


    call    chapush
              #                     1269 mu chas_0_13:422 
              #                     1270 mu chat_0_31:422 
              #                     1271 chat_0_32 = chi chat_0_31:422 
              #                     1272 chas_0_14 = chi chas_0_13:422 
              #                          jump label: branch_false_138 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    load from temp_194_cmp_103_0 in mem


    lb      a5,535(sp)
              #                    occupy a6 with temp_198_cmp_106_0
              #                    load from temp_198_cmp_106_0 in mem


    lb      a6,519(sp)
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a7 with temp_202_cmp_117_0
              #                    load from temp_202_cmp_117_0 in mem


    lb      a7,503(sp)
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy s1 with temp_206_cmp_127_0
              #                    load from temp_206_cmp_127_0 in mem


    lb      s1,487(sp)
    j       .branch_false_138
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     796  label branch_false_138: 
.branch_false_138:
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     799  (nop) 
              #                     800  mu i_0_2:799 
              #                     802  (nop) 
              #                     804  (nop) 
              #                     805  mu get_0_1:804 
              #                     807  temp_214_cmp_147_0 = icmp i32 Eq temp_184_ele_of_*get_0_94_0, 47_0 
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    load from temp_184_ele_of_*get_0_94_0 in mem


    lw      a1,572(sp)
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    occupy s2 with temp_214_cmp_147_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    store to temp_184_ele_of_*get_0_94_0 in mem offset legal
    sw      a1,572(sp)
              #                    release a1 with temp_184_ele_of_*get_0_94_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_214_cmp_147_0
              #                    store to temp_214_cmp_147_0 in mem offset legal
    sb      s2,455(sp)
              #                    release s2 with temp_214_cmp_147_0
              #                     810  br i1 temp_214_cmp_147_0, label branch_true_148, label branch_false_148 
              #                    occupy a1 with temp_214_cmp_147_0
              #                    load from temp_214_cmp_147_0 in mem


    lb      a1,455(sp)
              #                    free a1
              #                    occupy a1 with temp_214_cmp_147_0
              #                    store to temp_214_cmp_147_0 in mem offset legal
    sb      a1,455(sp)
              #                    release a1 with temp_214_cmp_147_0
              #                    occupy a1 with temp_214_cmp_147_0
              #                    load from temp_214_cmp_147_0 in mem


    lb      a1,455(sp)
    bnez    a1, .branch_true_148
              #                    free a1
              #                    occupy a1 with temp_214_cmp_147_0
              #                    store to temp_214_cmp_147_0 in mem offset legal
    sb      a1,455(sp)
              #                    release a1 with temp_214_cmp_147_0
    j       .branch_false_148
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     808  label branch_true_148: 
.branch_true_148:
              #                     2005 untrack temp_323_ret_of_find_123_0 
              #                     2004 untrack temp_270_cmp_140_0 
              #                     2003 untrack temp_255_value_from_ptr_140_0 
              #                     2002 untrack temp_300_ptr_of_*chas_0_120 
              #                     2001 untrack temp_288_cmp_130_0 
              #                     2000 untrack temp_298_cmp_133_0 
              #                     1999 untrack temp_257_ele_of_*chas_0_140_0 
              #                     1998 untrack temp_314_cmp_120_0 
              #                     1997 untrack temp_275_ele_of_*chas_0_130_0 
              #                     1996 untrack temp_271_ret_of_find_143_0 
              #                     1995 untrack temp_276_cmp_130_0 
              #                     1994 untrack temp_324_cmp_123_0 
              #                     1993 untrack temp_301_ele_of_*chas_0_120_0 
              #                     1992 untrack temp_297_ret_of_find_133_0 
              #                     1991 untrack temp_325_value_from_ptr_110_0 
              #                     1990 untrack temp_326_cmp_110_0 
              #                     1989 untrack temp_266_cmp_140_0 
              #                     1988 untrack temp_154_arithop_213_0 
              #                     1987 untrack temp_284_cmp_130_0 
              #                     1986 untrack temp_296_cmp_130_0 
              #                     1985 untrack temp_256_ptr_of_*chas_0_140 
              #                     1984 untrack temp_107_arithop_112_0 
              #                     1983 untrack temp_100_value_from_ptr_112_0 
              #                     1982 untrack temp_101_ptr_of_*get2_0_112 
              #                     1981 untrack temp_76_arithop_215_0 
              #                     1980 untrack temp_274_ptr_of_*chas_0_130 
              #                     1979 untrack temp_262_cmp_140_0 
              #                     1978 untrack temp_306_cmp_120_0 
              #                     1977 untrack temp_318_cmp_120_0 
              #                     1976 untrack temp_104_ptr_of_*get2_0_112 
              #                     1975 untrack temp_258_cmp_140_0 
              #                     1974 untrack temp_322_cmp_120_0 
              #                     1973 untrack temp_74_arithop_215_0 
              #                     1972 untrack temp_108_ret_of_chapop_112_0 
              #                     1971 untrack temp_292_cmp_130_0 
              #                     1970 untrack temp_302_cmp_120_0 
              #                     1969 untrack temp_156_ele_of_*get2_0_213_0 
              #                     1968 untrack temp_103_arithop_112_0 
              #                     1967 untrack temp_299_value_from_ptr_120_0 
              #                     1966 untrack temp_272_cmp_143_0 
              #                     1965 untrack temp_273_value_from_ptr_130_0 
              #                     1964 untrack temp_157_cmp_213_0 
              #                     1963 untrack temp_155_ptr_of_*get2_0_213 
              #                     1962 untrack temp_153_value_from_ptr_213_0 
              #                     1961 untrack temp_280_cmp_130_0 
              #                     1960 untrack temp_310_cmp_120_0 
              #                     885  temp_237_value_from_ptr_150_0 = load *chat_0:ptr->i32 
              #                    occupy a1 with *chat_0
              #                       load label chat as ptr to reg
    la      a1, chat
              #                    occupy reg a1 with *chat_0
              #                    occupy a3 with temp_237_value_from_ptr_150_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_237_value_from_ptr_150_0
              #                    store to temp_237_value_from_ptr_150_0 in mem offset legal
    sw      a3,360(sp)
              #                    release a3 with temp_237_value_from_ptr_150_0
              #                    free a1
              #                     886  mu chat_0_34:885 
              #                     888  temp_238_ptr_of_*chas_0_150 = GEP *chas_0:Array:i32:[None] [Some(temp_237_value_from_ptr_150_0)] 
              #                    occupy a1 with temp_238_ptr_of_*chas_0_150
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with temp_237_value_from_ptr_150_0
              #                    load from temp_237_value_from_ptr_150_0 in mem


    lw      s2,360(sp)
    mv      a3, s2
              #                    free s2
              #                    occupy s2 with temp_237_value_from_ptr_150_0
              #                    store to temp_237_value_from_ptr_150_0 in mem offset legal
    sw      s2,360(sp)
              #                    release s2 with temp_237_value_from_ptr_150_0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a3 with *chas_0
              #                       load label chas as ptr to reg
    la      a3, chas
              #                    occupy reg a3 with *chas_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                    occupy a1 with temp_238_ptr_of_*chas_0_150
              #                    store to temp_238_ptr_of_*chas_0_150 in mem offset legal
    sd      a1,352(sp)
              #                    release a1 with temp_238_ptr_of_*chas_0_150
              #                     890  temp_239_ele_of_*chas_0_150_0 = load temp_238_ptr_of_*chas_0_150:ptr->i32 
              #                    occupy a1 with temp_238_ptr_of_*chas_0_150
              #                    load from temp_238_ptr_of_*chas_0_150 in mem
    ld      a1,352(sp)
              #                    occupy a3 with temp_239_ele_of_*chas_0_150_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_239_ele_of_*chas_0_150_0
              #                    store to temp_239_ele_of_*chas_0_150_0 in mem offset legal
    sw      a3,348(sp)
              #                    release a3 with temp_239_ele_of_*chas_0_150_0
              #                    free a1
              #                    occupy a1 with temp_238_ptr_of_*chas_0_150
              #                    store to temp_238_ptr_of_*chas_0_150 in mem offset legal
    sd      a1,352(sp)
              #                    release a1 with temp_238_ptr_of_*chas_0_150
              #                     891  mu chas_0_15:890 
              #                     893  temp_240_cmp_150_0 = icmp i32 Eq temp_239_ele_of_*chas_0_150_0, 42_0 
              #                    occupy a1 with temp_239_ele_of_*chas_0_150_0
              #                    load from temp_239_ele_of_*chas_0_150_0 in mem


    lw      a1,348(sp)
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    occupy s2 with temp_240_cmp_150_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_239_ele_of_*chas_0_150_0
              #                    store to temp_239_ele_of_*chas_0_150_0 in mem offset legal
    sw      a1,348(sp)
              #                    release a1 with temp_239_ele_of_*chas_0_150_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_240_cmp_150_0
              #                    store to temp_240_cmp_150_0 in mem offset legal
    sb      s2,347(sp)
              #                    release s2 with temp_240_cmp_150_0
              #                     935  br i1 temp_240_cmp_150_0, label branch_short_circuit_c_true_981, label branch_short_circuit_p_false_967 
              #                    occupy a1 with temp_240_cmp_150_0
              #                    load from temp_240_cmp_150_0 in mem


    lb      a1,347(sp)
              #                    free a1
              #                    occupy a1 with temp_240_cmp_150_0
              #                    store to temp_240_cmp_150_0 in mem offset legal
    sb      a1,347(sp)
              #                    release a1 with temp_240_cmp_150_0
              #                    occupy a1 with temp_240_cmp_150_0
              #                    load from temp_240_cmp_150_0 in mem


    lb      a1,347(sp)
    bnez    a1, .branch_short_circuit_c_true_981
              #                    free a1
              #                    occupy a1 with temp_240_cmp_150_0
              #                    store to temp_240_cmp_150_0 in mem offset legal
    sb      a1,347(sp)
              #                    release a1 with temp_240_cmp_150_0
    j       .branch_short_circuit_p_false_967
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     924  label branch_short_circuit_c_true_981: 
.branch_short_circuit_c_true_981:
              #                     937  temp_253_ret_of_find_153_0 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_206_cmp_127_0
              #                    store to temp_206_cmp_127_0 in mem offset legal
    sb      s1,487(sp)
              #                    release s1 with temp_206_cmp_127_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    store to temp_185_ret_of_isdigit_94_0 in mem offset legal
    sw      a0,568(sp)
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    store to temp_186_cmp_94_0 in mem offset legal
    sb      a2,567(sp)
              #                    release a2 with temp_186_cmp_94_0
              #                    occupy a4 with temp_190_cmp_100_0
              #                    store to temp_190_cmp_100_0 in mem offset legal
    sb      a4,551(sp)
              #                    release a4 with temp_190_cmp_100_0
              #                    occupy a5 with temp_194_cmp_103_0
              #                    store to temp_194_cmp_103_0 in mem offset legal
    sb      a5,535(sp)
              #                    release a5 with temp_194_cmp_103_0
              #                    occupy a6 with temp_198_cmp_106_0
              #                    store to temp_198_cmp_106_0 in mem offset legal
    sb      a6,519(sp)
              #                    release a6 with temp_198_cmp_106_0
              #                    occupy a7 with temp_202_cmp_117_0
              #                    store to temp_202_cmp_117_0 in mem offset legal
    sb      a7,503(sp)
              #                    release a7 with temp_202_cmp_117_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                     1273 mu get2_0_24:937 
              #                     1274 mu chas_0_15:937 
              #                     1275 mu chat_0_34:937 
              #                     1276 mu ii_0_22:937 
              #                     1277 mu c_0_22:937 
              #                     1278 get2_0_25 = chi get2_0_24:937 
              #                     1279 chat_0_35 = chi chat_0_34:937 
              #                     1280 c_0_23 = chi c_0_22:937 
              #                     1281 ii_0_23 = chi ii_0_22:937 
              #                     939  temp_254_cmp_153_0 = icmp i32 Eq temp_253_ret_of_find_153_0, 0_0 
              #                    occupy a0 with temp_253_ret_of_find_153_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_254_cmp_153_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     942  br i1 temp_254_cmp_153_0, label branch_true_154, label branch_false_154 
              #                    occupy a2 with temp_254_cmp_153_0
              #                    free a2
              #                    occupy a2 with temp_254_cmp_153_0
    bnez    a2, .branch_true_154
              #                    free a2
    j       .branch_false_154
              #                    regtab     a0:Freed { symidx: temp_253_ret_of_find_153_0, tracked: true } |     a2:Freed { symidx: temp_254_cmp_153_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     940  label branch_true_154: 
.branch_true_154:
              #                     2014 untrack temp_252_cmp_150_0 
              #                     2013 untrack temp_238_ptr_of_*chas_0_150 
              #                     2012 untrack temp_244_cmp_150_0 
              #                     2011 untrack temp_239_ele_of_*chas_0_150_0 
              #                     2010 untrack temp_240_cmp_150_0 
              #                     2009 untrack temp_237_value_from_ptr_150_0 
              #                     2008 untrack temp_253_ret_of_find_153_0 
              #                    occupy a0 with temp_253_ret_of_find_153_0
              #                    release a0 with temp_253_ret_of_find_153_0
              #                     2007 untrack temp_254_cmp_153_0 
              #                    occupy a2 with temp_254_cmp_153_0
              #                    release a2 with temp_254_cmp_153_0
              #                     2006 untrack temp_248_cmp_150_0 
              #                          jump label: branch_short_circuit_c_false_981 
    j       .branch_short_circuit_c_false_981
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                     925  label branch_short_circuit_c_false_981: 
.branch_short_circuit_c_false_981:
              #                     421   Call void chapush_0(47_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_47_0_0
    li      a0, 47
              #                    arg load ended


    call    chapush
              #                     1282 mu chas_0_15:421 
              #                     1283 mu chat_0_36:421 
              #                     1284 chat_0_37 = chi chat_0_36:421 
              #                     1285 chas_0_16 = chi chas_0_15:421 
              #                          jump label: branch_false_148 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    load from temp_194_cmp_103_0 in mem


    lb      a5,535(sp)
              #                    occupy a6 with temp_198_cmp_106_0
              #                    load from temp_198_cmp_106_0 in mem


    lb      a6,519(sp)
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a7 with temp_202_cmp_117_0
              #                    load from temp_202_cmp_117_0 in mem


    lb      a7,503(sp)
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy s1 with temp_206_cmp_127_0
              #                    load from temp_206_cmp_127_0 in mem


    lb      s1,487(sp)
    j       .branch_false_148
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     809  label branch_false_148: 
.branch_false_148:
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     812  (nop) 
              #                     813  mu i_0_2:812 
              #                     815  (nop) 
              #                     817  (nop) 
              #                     818  mu get_0_1:817 
              #                     820  temp_218_cmp_157_0 = icmp i32 Eq temp_184_ele_of_*get_0_94_0, 37_0 
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    load from temp_184_ele_of_*get_0_94_0 in mem


    lw      a1,572(sp)
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    occupy s2 with temp_218_cmp_157_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    store to temp_184_ele_of_*get_0_94_0 in mem offset legal
    sw      a1,572(sp)
              #                    release a1 with temp_184_ele_of_*get_0_94_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_218_cmp_157_0
              #                    store to temp_218_cmp_157_0 in mem offset legal
    sb      s2,439(sp)
              #                    release s2 with temp_218_cmp_157_0
              #                     823  br i1 temp_218_cmp_157_0, label branch_true_158, label branch_false_158 
              #                    occupy a1 with temp_218_cmp_157_0
              #                    load from temp_218_cmp_157_0 in mem


    lb      a1,439(sp)
              #                    free a1
              #                    occupy a1 with temp_218_cmp_157_0
              #                    store to temp_218_cmp_157_0 in mem offset legal
    sb      a1,439(sp)
              #                    release a1 with temp_218_cmp_157_0
              #                    occupy a1 with temp_218_cmp_157_0
              #                    load from temp_218_cmp_157_0 in mem


    lb      a1,439(sp)
    bnez    a1, .branch_true_158
              #                    free a1
              #                    occupy a1 with temp_218_cmp_157_0
              #                    store to temp_218_cmp_157_0 in mem offset legal
    sb      a1,439(sp)
              #                    release a1 with temp_218_cmp_157_0
    j       .branch_false_158
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     821  label branch_true_158: 
.branch_true_158:
              #                     2078 untrack temp_306_cmp_120_0 
              #                     2077 untrack temp_248_cmp_150_0 
              #                     2076 untrack temp_300_ptr_of_*chas_0_120 
              #                     2075 untrack temp_255_value_from_ptr_140_0 
              #                     2074 untrack temp_322_cmp_120_0 
              #                     2073 untrack temp_108_ret_of_chapop_112_0 
              #                     2072 untrack temp_237_value_from_ptr_150_0 
              #                     2071 untrack temp_238_ptr_of_*chas_0_150 
              #                     2070 untrack temp_258_cmp_140_0 
              #                     2069 untrack temp_299_value_from_ptr_120_0 
              #                     2068 untrack temp_270_cmp_140_0 
              #                     2067 untrack temp_271_ret_of_find_143_0 
              #                     2066 untrack temp_244_cmp_150_0 
              #                     2065 untrack temp_74_arithop_215_0 
              #                     2064 untrack temp_314_cmp_120_0 
              #                     2063 untrack temp_302_cmp_120_0 
              #                     2062 untrack temp_256_ptr_of_*chas_0_140 
              #                     2061 untrack temp_288_cmp_130_0 
              #                     2060 untrack temp_76_arithop_215_0 
              #                     2059 untrack temp_155_ptr_of_*get2_0_213 
              #                     2058 untrack temp_275_ele_of_*chas_0_130_0 
              #                     2057 untrack temp_240_cmp_150_0 
              #                     2056 untrack temp_154_arithop_213_0 
              #                     2055 untrack temp_310_cmp_120_0 
              #                     2054 untrack temp_280_cmp_130_0 
              #                     2053 untrack temp_257_ele_of_*chas_0_140_0 
              #                     2052 untrack temp_266_cmp_140_0 
              #                     2051 untrack temp_252_cmp_150_0 
              #                     2050 untrack temp_104_ptr_of_*get2_0_112 
              #                     2049 untrack temp_325_value_from_ptr_110_0 
              #                     2048 untrack temp_276_cmp_130_0 
              #                     2047 untrack temp_254_cmp_153_0 
              #                     2046 untrack temp_157_cmp_213_0 
              #                     2045 untrack temp_153_value_from_ptr_213_0 
              #                     2044 untrack temp_103_arithop_112_0 
              #                     2043 untrack temp_100_value_from_ptr_112_0 
              #                     2042 untrack temp_297_ret_of_find_133_0 
              #                     2041 untrack temp_324_cmp_123_0 
              #                     2040 untrack temp_262_cmp_140_0 
              #                     2039 untrack temp_298_cmp_133_0 
              #                     2038 untrack temp_273_value_from_ptr_130_0 
              #                     2037 untrack temp_292_cmp_130_0 
              #                     2036 untrack temp_107_arithop_112_0 
              #                     2035 untrack temp_284_cmp_130_0 
              #                     2034 untrack temp_296_cmp_130_0 
              #                     2033 untrack temp_101_ptr_of_*get2_0_112 
              #                     2032 untrack temp_323_ret_of_find_123_0 
              #                     2031 untrack temp_253_ret_of_find_153_0 
              #                     2030 untrack temp_156_ele_of_*get2_0_213_0 
              #                     2029 untrack temp_318_cmp_120_0 
              #                     2028 untrack temp_301_ele_of_*chas_0_120_0 
              #                     2027 untrack temp_326_cmp_110_0 
              #                     2026 untrack temp_274_ptr_of_*chas_0_130 
              #                     2025 untrack temp_272_cmp_143_0 
              #                     2024 untrack temp_239_ele_of_*chas_0_150_0 
              #                     826  temp_219_value_from_ptr_160_0 = load *chat_0:ptr->i32 
              #                    occupy a1 with *chat_0
              #                       load label chat as ptr to reg
    la      a1, chat
              #                    occupy reg a1 with *chat_0
              #                    occupy a3 with temp_219_value_from_ptr_160_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_219_value_from_ptr_160_0
              #                    store to temp_219_value_from_ptr_160_0 in mem offset legal
    sw      a3,432(sp)
              #                    release a3 with temp_219_value_from_ptr_160_0
              #                    free a1
              #                     827  mu chat_0_39:826 
              #                     829  temp_220_ptr_of_*chas_0_160 = GEP *chas_0:Array:i32:[None] [Some(temp_219_value_from_ptr_160_0)] 
              #                    occupy a1 with temp_220_ptr_of_*chas_0_160
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with temp_219_value_from_ptr_160_0
              #                    load from temp_219_value_from_ptr_160_0 in mem


    lw      s2,432(sp)
    mv      a3, s2
              #                    free s2
              #                    occupy s2 with temp_219_value_from_ptr_160_0
              #                    store to temp_219_value_from_ptr_160_0 in mem offset legal
    sw      s2,432(sp)
              #                    release s2 with temp_219_value_from_ptr_160_0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a3 with *chas_0
              #                       load label chas as ptr to reg
    la      a3, chas
              #                    occupy reg a3 with *chas_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                    occupy a1 with temp_220_ptr_of_*chas_0_160
              #                    store to temp_220_ptr_of_*chas_0_160 in mem offset legal
    sd      a1,424(sp)
              #                    release a1 with temp_220_ptr_of_*chas_0_160
              #                     831  temp_221_ele_of_*chas_0_160_0 = load temp_220_ptr_of_*chas_0_160:ptr->i32 
              #                    occupy a1 with temp_220_ptr_of_*chas_0_160
              #                    load from temp_220_ptr_of_*chas_0_160 in mem
    ld      a1,424(sp)
              #                    occupy a3 with temp_221_ele_of_*chas_0_160_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_221_ele_of_*chas_0_160_0
              #                    store to temp_221_ele_of_*chas_0_160_0 in mem offset legal
    sw      a3,420(sp)
              #                    release a3 with temp_221_ele_of_*chas_0_160_0
              #                    free a1
              #                    occupy a1 with temp_220_ptr_of_*chas_0_160
              #                    store to temp_220_ptr_of_*chas_0_160 in mem offset legal
    sd      a1,424(sp)
              #                    release a1 with temp_220_ptr_of_*chas_0_160
              #                     832  mu chas_0_17:831 
              #                     834  temp_222_cmp_160_0 = icmp i32 Eq temp_221_ele_of_*chas_0_160_0, 42_0 
              #                    occupy a1 with temp_221_ele_of_*chas_0_160_0
              #                    load from temp_221_ele_of_*chas_0_160_0 in mem


    lw      a1,420(sp)
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    occupy s2 with temp_222_cmp_160_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_221_ele_of_*chas_0_160_0
              #                    store to temp_221_ele_of_*chas_0_160_0 in mem offset legal
    sw      a1,420(sp)
              #                    release a1 with temp_221_ele_of_*chas_0_160_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_222_cmp_160_0
              #                    store to temp_222_cmp_160_0 in mem offset legal
    sb      s2,419(sp)
              #                    release s2 with temp_222_cmp_160_0
              #                     876  br i1 temp_222_cmp_160_0, label branch_short_circuit_c_true_959, label branch_short_circuit_p_false_945 
              #                    occupy a1 with temp_222_cmp_160_0
              #                    load from temp_222_cmp_160_0 in mem


    lb      a1,419(sp)
              #                    free a1
              #                    occupy a1 with temp_222_cmp_160_0
              #                    store to temp_222_cmp_160_0 in mem offset legal
    sb      a1,419(sp)
              #                    release a1 with temp_222_cmp_160_0
              #                    occupy a1 with temp_222_cmp_160_0
              #                    load from temp_222_cmp_160_0 in mem


    lb      a1,419(sp)
    bnez    a1, .branch_short_circuit_c_true_959
              #                    free a1
              #                    occupy a1 with temp_222_cmp_160_0
              #                    store to temp_222_cmp_160_0 in mem offset legal
    sb      a1,419(sp)
              #                    release a1 with temp_222_cmp_160_0
    j       .branch_short_circuit_p_false_945
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     865  label branch_short_circuit_c_true_959: 
.branch_short_circuit_c_true_959:
              #                     878  temp_235_ret_of_find_163_0 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_206_cmp_127_0
              #                    store to temp_206_cmp_127_0 in mem offset legal
    sb      s1,487(sp)
              #                    release s1 with temp_206_cmp_127_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    store to temp_185_ret_of_isdigit_94_0 in mem offset legal
    sw      a0,568(sp)
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    store to temp_186_cmp_94_0 in mem offset legal
    sb      a2,567(sp)
              #                    release a2 with temp_186_cmp_94_0
              #                    occupy a4 with temp_190_cmp_100_0
              #                    store to temp_190_cmp_100_0 in mem offset legal
    sb      a4,551(sp)
              #                    release a4 with temp_190_cmp_100_0
              #                    occupy a5 with temp_194_cmp_103_0
              #                    store to temp_194_cmp_103_0 in mem offset legal
    sb      a5,535(sp)
              #                    release a5 with temp_194_cmp_103_0
              #                    occupy a6 with temp_198_cmp_106_0
              #                    store to temp_198_cmp_106_0 in mem offset legal
    sb      a6,519(sp)
              #                    release a6 with temp_198_cmp_106_0
              #                    occupy a7 with temp_202_cmp_117_0
              #                    store to temp_202_cmp_117_0 in mem offset legal
    sb      a7,503(sp)
              #                    release a7 with temp_202_cmp_117_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                     1286 mu get2_0_28:878 
              #                     1287 mu chas_0_17:878 
              #                     1288 mu chat_0_39:878 
              #                     1289 mu ii_0_26:878 
              #                     1290 mu c_0_26:878 
              #                     1291 get2_0_29 = chi get2_0_28:878 
              #                     1292 chat_0_40 = chi chat_0_39:878 
              #                     1293 c_0_27 = chi c_0_26:878 
              #                     1294 ii_0_27 = chi ii_0_26:878 
              #                     880  temp_236_cmp_163_0 = icmp i32 Eq temp_235_ret_of_find_163_0, 0_0 
              #                    occupy a0 with temp_235_ret_of_find_163_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_236_cmp_163_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     883  br i1 temp_236_cmp_163_0, label branch_true_164, label branch_false_164 
              #                    occupy a2 with temp_236_cmp_163_0
              #                    free a2
              #                    occupy a2 with temp_236_cmp_163_0
    bnez    a2, .branch_true_164
              #                    free a2
    j       .branch_false_164
              #                    regtab     a0:Freed { symidx: temp_235_ret_of_find_163_0, tracked: true } |     a2:Freed { symidx: temp_236_cmp_163_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     881  label branch_true_164: 
.branch_true_164:
              #                     2087 untrack temp_235_ret_of_find_163_0 
              #                    occupy a0 with temp_235_ret_of_find_163_0
              #                    release a0 with temp_235_ret_of_find_163_0
              #                     2086 untrack temp_236_cmp_163_0 
              #                    occupy a2 with temp_236_cmp_163_0
              #                    release a2 with temp_236_cmp_163_0
              #                     2085 untrack temp_221_ele_of_*chas_0_160_0 
              #                     2084 untrack temp_222_cmp_160_0 
              #                     2083 untrack temp_226_cmp_160_0 
              #                     2082 untrack temp_219_value_from_ptr_160_0 
              #                     2081 untrack temp_220_ptr_of_*chas_0_160 
              #                     2080 untrack temp_230_cmp_160_0 
              #                     2079 untrack temp_234_cmp_160_0 
              #                          jump label: branch_short_circuit_c_false_959 
    j       .branch_short_circuit_c_false_959
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                     866  label branch_short_circuit_c_false_959: 
.branch_short_circuit_c_false_959:
              #                     420   Call void chapush_0(37_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_37_0_0
    li      a0, 37
              #                    arg load ended


    call    chapush
              #                     1295 mu chas_0_17:420 
              #                     1296 mu chat_0_41:420 
              #                     1297 chat_0_42 = chi chat_0_41:420 
              #                     1298 chas_0_18 = chi chas_0_17:420 
              #                          jump label: branch_false_158 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    load from temp_194_cmp_103_0 in mem


    lb      a5,535(sp)
              #                    occupy a6 with temp_198_cmp_106_0
              #                    load from temp_198_cmp_106_0 in mem


    lb      a6,519(sp)
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a7 with temp_202_cmp_117_0
              #                    load from temp_202_cmp_117_0 in mem


    lb      a7,503(sp)
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy s1 with temp_206_cmp_127_0
              #                    load from temp_206_cmp_127_0 in mem


    lb      s1,487(sp)
    j       .branch_false_158
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     822  label branch_false_158: 
.branch_false_158:
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     400  temp_93_value_from_ptr_99_0 = load *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a3 with temp_93_value_from_ptr_99_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_93_value_from_ptr_99_0
              #                    store to temp_93_value_from_ptr_99_0 in mem offset legal
    sw      a3,928(sp)
              #                    release a3 with temp_93_value_from_ptr_99_0
              #                    free a1
              #                     401  mu ii_0_29:400 
              #                     403  temp_94_ptr_of_*get2_0_99 = GEP *get2_0:ptr->i32 [Some(temp_93_value_from_ptr_99_0)] 
              #                    occupy a1 with temp_94_ptr_of_*get2_0_99
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with temp_93_value_from_ptr_99_0
              #                    load from temp_93_value_from_ptr_99_0 in mem


    lw      s2,928(sp)
    mv      a3, s2
              #                    free s2
              #                    occupy s2 with temp_93_value_from_ptr_99_0
              #                    store to temp_93_value_from_ptr_99_0 in mem offset legal
    sw      s2,928(sp)
              #                    release s2 with temp_93_value_from_ptr_99_0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a3 with *get2_0
              #                       load label get2 as ptr to reg
    la      a3, get2
              #                    occupy reg a3 with *get2_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                    occupy a1 with temp_94_ptr_of_*get2_0_99
              #                    store to temp_94_ptr_of_*get2_0_99 in mem offset legal
    sd      a1,920(sp)
              #                    release a1 with temp_94_ptr_of_*get2_0_99
              #                     404  store 32_0:i32 temp_94_ptr_of_*get2_0_99:ptr->i32 
              #                    occupy a1 with temp_94_ptr_of_*get2_0_99
              #                    load from temp_94_ptr_of_*get2_0_99 in mem
    ld      a1,920(sp)
              #                    occupy a3 with 32_0
    li      a3, 32
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                    occupy a1 with temp_94_ptr_of_*get2_0_99
              #                    store to temp_94_ptr_of_*get2_0_99 in mem offset legal
    sd      a1,920(sp)
              #                    release a1 with temp_94_ptr_of_*get2_0_99
              #                     405  get2_0_32 = chi get2_0_31:404 
              #                     407  (nop) 
              #                     408  mu ii_0_29:407 
              #                     410  temp_96_arithop_99_0 = Add i32 temp_93_value_from_ptr_99_0, 1_0 
              #                    occupy a1 with temp_93_value_from_ptr_99_0
              #                    load from temp_93_value_from_ptr_99_0 in mem


    lw      a1,928(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy s2 with temp_96_arithop_99_0
    ADDW    s2,a1,a3
              #                    free a1
              #                    occupy a1 with temp_93_value_from_ptr_99_0
              #                    store to temp_93_value_from_ptr_99_0 in mem offset legal
    sw      a1,928(sp)
              #                    release a1 with temp_93_value_from_ptr_99_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_96_arithop_99_0
              #                    store to temp_96_arithop_99_0 in mem offset legal
    sw      s2,916(sp)
              #                    release s2 with temp_96_arithop_99_0
              #                     411  store temp_96_arithop_99_0:i32 *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a3 with temp_96_arithop_99_0
              #                    load from temp_96_arithop_99_0 in mem


    lw      a3,916(sp)
    sw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_96_arithop_99_0
              #                    store to temp_96_arithop_99_0 in mem offset legal
    sw      a3,916(sp)
              #                    release a3 with temp_96_arithop_99_0
              #                    free a1
              #                     412  ii_0_30 = chi ii_0_29:411 
              #                          jump label: gather_93 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    store to temp_194_cmp_103_0 in mem offset legal
    sb      a5,535(sp)
              #                    release a5 with temp_194_cmp_103_0
              #                    occupy a6 with temp_198_cmp_106_0
              #                    store to temp_198_cmp_106_0 in mem offset legal
    sb      a6,519(sp)
              #                    release a6 with temp_198_cmp_106_0
              #                    occupy a4 with temp_190_cmp_100_0
              #                    store to temp_190_cmp_100_0 in mem offset legal
    sb      a4,551(sp)
              #                    release a4 with temp_190_cmp_100_0
              #                    occupy a7 with temp_202_cmp_117_0
              #                    store to temp_202_cmp_117_0 in mem offset legal
    sb      a7,503(sp)
              #                    release a7 with temp_202_cmp_117_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    store to temp_185_ret_of_isdigit_94_0 in mem offset legal
    sw      a0,568(sp)
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    store to temp_186_cmp_94_0 in mem offset legal
    sb      a2,567(sp)
              #                    release a2 with temp_186_cmp_94_0
              #                    occupy s1 with temp_206_cmp_127_0
              #                    store to temp_206_cmp_127_0 in mem offset legal
    sb      s1,487(sp)
              #                    release s1 with temp_206_cmp_127_0
    j       .gather_93
              #                    regtab     a0:Freed { symidx: temp_235_ret_of_find_163_0, tracked: true } |     a2:Freed { symidx: temp_236_cmp_163_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     882  label branch_false_164: 
.branch_false_164:
              #                          jump label: branch_true_158 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    load from temp_194_cmp_103_0 in mem


    lb      a5,535(sp)
              #                    occupy a6 with temp_198_cmp_106_0
              #                    load from temp_198_cmp_106_0 in mem


    lb      a6,519(sp)
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a7 with temp_202_cmp_117_0
              #                    load from temp_202_cmp_117_0 in mem


    lb      a7,503(sp)
              #                    occupy a0 with temp_235_ret_of_find_163_0
              #                    store to temp_235_ret_of_find_163_0 in mem offset legal
    sw      a0,368(sp)
              #                    release a0 with temp_235_ret_of_find_163_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_236_cmp_163_0
              #                    store to temp_236_cmp_163_0 in mem offset legal
    sb      a2,367(sp)
              #                    release a2 with temp_236_cmp_163_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy s1 with temp_206_cmp_127_0
              #                    load from temp_206_cmp_127_0 in mem


    lb      s1,487(sp)
    j       .branch_true_158
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     873  label branch_short_circuit_p_false_945: 
.branch_short_circuit_p_false_945:
              #                     836  (nop) 
              #                     837  mu chat_0_39:836 
              #                     839  (nop) 
              #                     841  (nop) 
              #                     842  mu chas_0_17:841 
              #                     844  temp_226_cmp_160_0 = icmp i32 Eq temp_221_ele_of_*chas_0_160_0, 47_0 
              #                    occupy a1 with temp_221_ele_of_*chas_0_160_0
              #                    load from temp_221_ele_of_*chas_0_160_0 in mem


    lw      a1,420(sp)
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    occupy s2 with temp_226_cmp_160_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_221_ele_of_*chas_0_160_0
              #                    store to temp_221_ele_of_*chas_0_160_0 in mem offset legal
    sw      a1,420(sp)
              #                    release a1 with temp_221_ele_of_*chas_0_160_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_226_cmp_160_0
              #                    store to temp_226_cmp_160_0 in mem offset legal
    sb      s2,407(sp)
              #                    release s2 with temp_226_cmp_160_0
              #                     875  br i1 temp_226_cmp_160_0, label branch_short_circuit_c_true_959, label branch_short_circuit_p_false_952 
              #                    occupy a1 with temp_226_cmp_160_0
              #                    load from temp_226_cmp_160_0 in mem


    lb      a1,407(sp)
              #                    free a1
              #                    occupy a1 with temp_226_cmp_160_0
              #                    store to temp_226_cmp_160_0 in mem offset legal
    sb      a1,407(sp)
              #                    release a1 with temp_226_cmp_160_0
              #                    occupy a1 with temp_226_cmp_160_0
              #                    load from temp_226_cmp_160_0 in mem


    lb      a1,407(sp)
    bnez    a1, .branch_short_circuit_c_true_959
              #                    free a1
              #                    occupy a1 with temp_226_cmp_160_0
              #                    store to temp_226_cmp_160_0 in mem offset legal
    sb      a1,407(sp)
              #                    release a1 with temp_226_cmp_160_0
    j       .branch_short_circuit_p_false_952
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     870  label branch_short_circuit_p_false_952: 
.branch_short_circuit_p_false_952:
              #                     846  (nop) 
              #                     847  mu chat_0_39:846 
              #                     849  (nop) 
              #                     851  (nop) 
              #                     852  mu chas_0_17:851 
              #                     854  temp_230_cmp_160_0 = icmp i32 Eq temp_221_ele_of_*chas_0_160_0, 37_0 
              #                    occupy a1 with temp_221_ele_of_*chas_0_160_0
              #                    load from temp_221_ele_of_*chas_0_160_0 in mem


    lw      a1,420(sp)
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    occupy s2 with temp_230_cmp_160_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_221_ele_of_*chas_0_160_0
              #                    store to temp_221_ele_of_*chas_0_160_0 in mem offset legal
    sw      a1,420(sp)
              #                    release a1 with temp_221_ele_of_*chas_0_160_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_230_cmp_160_0
              #                    store to temp_230_cmp_160_0 in mem offset legal
    sb      s2,391(sp)
              #                    release s2 with temp_230_cmp_160_0
              #                     872  br i1 temp_230_cmp_160_0, label branch_short_circuit_c_true_959, label branch_short_circuit_p_false_959 
              #                    occupy a1 with temp_230_cmp_160_0
              #                    load from temp_230_cmp_160_0 in mem


    lb      a1,391(sp)
              #                    free a1
              #                    occupy a1 with temp_230_cmp_160_0
              #                    store to temp_230_cmp_160_0 in mem offset legal
    sb      a1,391(sp)
              #                    release a1 with temp_230_cmp_160_0
              #                    occupy a1 with temp_230_cmp_160_0
              #                    load from temp_230_cmp_160_0 in mem


    lb      a1,391(sp)
    bnez    a1, .branch_short_circuit_c_true_959
              #                    free a1
              #                    occupy a1 with temp_230_cmp_160_0
              #                    store to temp_230_cmp_160_0 in mem offset legal
    sb      a1,391(sp)
              #                    release a1 with temp_230_cmp_160_0
    j       .branch_short_circuit_p_false_959
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     867  label branch_short_circuit_p_false_959: 
.branch_short_circuit_p_false_959:
              #                     856  (nop) 
              #                     857  mu chat_0_39:856 
              #                     859  (nop) 
              #                     861  (nop) 
              #                     862  mu chas_0_17:861 
              #                     864  temp_234_cmp_160_0 = icmp i32 Eq temp_221_ele_of_*chas_0_160_0, 94_0 
              #                    occupy a1 with temp_221_ele_of_*chas_0_160_0
              #                    load from temp_221_ele_of_*chas_0_160_0 in mem


    lw      a1,420(sp)
              #                    occupy a3 with 94_0
    li      a3, 94
              #                    occupy s2 with temp_234_cmp_160_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_221_ele_of_*chas_0_160_0
              #                    store to temp_221_ele_of_*chas_0_160_0 in mem offset legal
    sw      a1,420(sp)
              #                    release a1 with temp_221_ele_of_*chas_0_160_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_234_cmp_160_0
              #                    store to temp_234_cmp_160_0 in mem offset legal
    sb      s2,375(sp)
              #                    release s2 with temp_234_cmp_160_0
              #                     869  br i1 temp_234_cmp_160_0, label branch_short_circuit_c_true_959, label branch_short_circuit_c_false_959 
              #                    occupy a1 with temp_234_cmp_160_0
              #                    load from temp_234_cmp_160_0 in mem


    lb      a1,375(sp)
              #                    free a1
              #                    occupy a1 with temp_234_cmp_160_0
              #                    store to temp_234_cmp_160_0 in mem offset legal
    sb      a1,375(sp)
              #                    release a1 with temp_234_cmp_160_0
              #                    occupy a1 with temp_234_cmp_160_0
              #                    load from temp_234_cmp_160_0 in mem


    lb      a1,375(sp)
    bnez    a1, .branch_short_circuit_c_true_959
              #                    free a1
              #                    occupy a1 with temp_234_cmp_160_0
              #                    store to temp_234_cmp_160_0 in mem offset legal
    sb      a1,375(sp)
              #                    release a1 with temp_234_cmp_160_0
              #                    occupy a5 with temp_194_cmp_103_0
              #                    store to temp_194_cmp_103_0 in mem offset legal
    sb      a5,535(sp)
              #                    release a5 with temp_194_cmp_103_0
              #                    occupy a6 with temp_198_cmp_106_0
              #                    store to temp_198_cmp_106_0 in mem offset legal
    sb      a6,519(sp)
              #                    release a6 with temp_198_cmp_106_0
              #                    occupy a4 with temp_190_cmp_100_0
              #                    store to temp_190_cmp_100_0 in mem offset legal
    sb      a4,551(sp)
              #                    release a4 with temp_190_cmp_100_0
              #                    occupy a7 with temp_202_cmp_117_0
              #                    store to temp_202_cmp_117_0 in mem offset legal
    sb      a7,503(sp)
              #                    release a7 with temp_202_cmp_117_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    store to temp_185_ret_of_isdigit_94_0 in mem offset legal
    sw      a0,568(sp)
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    store to temp_186_cmp_94_0 in mem offset legal
    sb      a2,567(sp)
              #                    release a2 with temp_186_cmp_94_0
              #                    occupy s1 with temp_206_cmp_127_0
              #                    store to temp_206_cmp_127_0 in mem offset legal
    sb      s1,487(sp)
              #                    release s1 with temp_206_cmp_127_0
    j       .branch_short_circuit_c_false_959
              #                    regtab     a0:Freed { symidx: temp_253_ret_of_find_153_0, tracked: true } |     a2:Freed { symidx: temp_254_cmp_153_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     941  label branch_false_154: 
.branch_false_154:
              #                     2023 untrack temp_220_ptr_of_*chas_0_160 
              #                     2022 untrack temp_236_cmp_163_0 
              #                     2021 untrack temp_230_cmp_160_0 
              #                     2020 untrack temp_235_ret_of_find_163_0 
              #                     2019 untrack temp_222_cmp_160_0 
              #                     2018 untrack temp_221_ele_of_*chas_0_160_0 
              #                     2017 untrack temp_219_value_from_ptr_160_0 
              #                     2016 untrack temp_226_cmp_160_0 
              #                     2015 untrack temp_234_cmp_160_0 
              #                          jump label: branch_true_148 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    load from temp_194_cmp_103_0 in mem


    lb      a5,535(sp)
              #                    occupy a6 with temp_198_cmp_106_0
              #                    load from temp_198_cmp_106_0 in mem


    lb      a6,519(sp)
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a7 with temp_202_cmp_117_0
              #                    load from temp_202_cmp_117_0 in mem


    lb      a7,503(sp)
              #                    occupy a0 with temp_253_ret_of_find_153_0
              #                    store to temp_253_ret_of_find_153_0 in mem offset legal
    sw      a0,296(sp)
              #                    release a0 with temp_253_ret_of_find_153_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_254_cmp_153_0
              #                    store to temp_254_cmp_153_0 in mem offset legal
    sb      a2,295(sp)
              #                    release a2 with temp_254_cmp_153_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy s1 with temp_206_cmp_127_0
              #                    load from temp_206_cmp_127_0 in mem


    lb      s1,487(sp)
    j       .branch_true_148
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     932  label branch_short_circuit_p_false_967: 
.branch_short_circuit_p_false_967:
              #                     895  (nop) 
              #                     896  mu chat_0_34:895 
              #                     898  (nop) 
              #                     900  (nop) 
              #                     901  mu chas_0_15:900 
              #                     903  temp_244_cmp_150_0 = icmp i32 Eq temp_239_ele_of_*chas_0_150_0, 47_0 
              #                    occupy a1 with temp_239_ele_of_*chas_0_150_0
              #                    load from temp_239_ele_of_*chas_0_150_0 in mem


    lw      a1,348(sp)
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    occupy s2 with temp_244_cmp_150_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_239_ele_of_*chas_0_150_0
              #                    store to temp_239_ele_of_*chas_0_150_0 in mem offset legal
    sw      a1,348(sp)
              #                    release a1 with temp_239_ele_of_*chas_0_150_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_244_cmp_150_0
              #                    store to temp_244_cmp_150_0 in mem offset legal
    sb      s2,335(sp)
              #                    release s2 with temp_244_cmp_150_0
              #                     934  br i1 temp_244_cmp_150_0, label branch_short_circuit_c_true_981, label branch_short_circuit_p_false_974 
              #                    occupy a1 with temp_244_cmp_150_0
              #                    load from temp_244_cmp_150_0 in mem


    lb      a1,335(sp)
              #                    free a1
              #                    occupy a1 with temp_244_cmp_150_0
              #                    store to temp_244_cmp_150_0 in mem offset legal
    sb      a1,335(sp)
              #                    release a1 with temp_244_cmp_150_0
              #                    occupy a1 with temp_244_cmp_150_0
              #                    load from temp_244_cmp_150_0 in mem


    lb      a1,335(sp)
    bnez    a1, .branch_short_circuit_c_true_981
              #                    free a1
              #                    occupy a1 with temp_244_cmp_150_0
              #                    store to temp_244_cmp_150_0 in mem offset legal
    sb      a1,335(sp)
              #                    release a1 with temp_244_cmp_150_0
    j       .branch_short_circuit_p_false_974
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     929  label branch_short_circuit_p_false_974: 
.branch_short_circuit_p_false_974:
              #                     905  (nop) 
              #                     906  mu chat_0_34:905 
              #                     908  (nop) 
              #                     910  (nop) 
              #                     911  mu chas_0_15:910 
              #                     913  temp_248_cmp_150_0 = icmp i32 Eq temp_239_ele_of_*chas_0_150_0, 37_0 
              #                    occupy a1 with temp_239_ele_of_*chas_0_150_0
              #                    load from temp_239_ele_of_*chas_0_150_0 in mem


    lw      a1,348(sp)
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    occupy s2 with temp_248_cmp_150_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_239_ele_of_*chas_0_150_0
              #                    store to temp_239_ele_of_*chas_0_150_0 in mem offset legal
    sw      a1,348(sp)
              #                    release a1 with temp_239_ele_of_*chas_0_150_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_248_cmp_150_0
              #                    store to temp_248_cmp_150_0 in mem offset legal
    sb      s2,319(sp)
              #                    release s2 with temp_248_cmp_150_0
              #                     931  br i1 temp_248_cmp_150_0, label branch_short_circuit_c_true_981, label branch_short_circuit_p_false_981 
              #                    occupy a1 with temp_248_cmp_150_0
              #                    load from temp_248_cmp_150_0 in mem


    lb      a1,319(sp)
              #                    free a1
              #                    occupy a1 with temp_248_cmp_150_0
              #                    store to temp_248_cmp_150_0 in mem offset legal
    sb      a1,319(sp)
              #                    release a1 with temp_248_cmp_150_0
              #                    occupy a1 with temp_248_cmp_150_0
              #                    load from temp_248_cmp_150_0 in mem


    lb      a1,319(sp)
    bnez    a1, .branch_short_circuit_c_true_981
              #                    free a1
              #                    occupy a1 with temp_248_cmp_150_0
              #                    store to temp_248_cmp_150_0 in mem offset legal
    sb      a1,319(sp)
              #                    release a1 with temp_248_cmp_150_0
    j       .branch_short_circuit_p_false_981
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     926  label branch_short_circuit_p_false_981: 
.branch_short_circuit_p_false_981:
              #                     915  (nop) 
              #                     916  mu chat_0_34:915 
              #                     918  (nop) 
              #                     920  (nop) 
              #                     921  mu chas_0_15:920 
              #                     923  temp_252_cmp_150_0 = icmp i32 Eq temp_239_ele_of_*chas_0_150_0, 94_0 
              #                    occupy a1 with temp_239_ele_of_*chas_0_150_0
              #                    load from temp_239_ele_of_*chas_0_150_0 in mem


    lw      a1,348(sp)
              #                    occupy a3 with 94_0
    li      a3, 94
              #                    occupy s2 with temp_252_cmp_150_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_239_ele_of_*chas_0_150_0
              #                    store to temp_239_ele_of_*chas_0_150_0 in mem offset legal
    sw      a1,348(sp)
              #                    release a1 with temp_239_ele_of_*chas_0_150_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_252_cmp_150_0
              #                    store to temp_252_cmp_150_0 in mem offset legal
    sb      s2,303(sp)
              #                    release s2 with temp_252_cmp_150_0
              #                     928  br i1 temp_252_cmp_150_0, label branch_short_circuit_c_true_981, label branch_short_circuit_c_false_981 
              #                    occupy a1 with temp_252_cmp_150_0
              #                    load from temp_252_cmp_150_0 in mem


    lb      a1,303(sp)
              #                    free a1
              #                    occupy a1 with temp_252_cmp_150_0
              #                    store to temp_252_cmp_150_0 in mem offset legal
    sb      a1,303(sp)
              #                    release a1 with temp_252_cmp_150_0
              #                    occupy a1 with temp_252_cmp_150_0
              #                    load from temp_252_cmp_150_0 in mem


    lb      a1,303(sp)
    bnez    a1, .branch_short_circuit_c_true_981
              #                    free a1
              #                    occupy a1 with temp_252_cmp_150_0
              #                    store to temp_252_cmp_150_0 in mem offset legal
    sb      a1,303(sp)
              #                    release a1 with temp_252_cmp_150_0
              #                    occupy a5 with temp_194_cmp_103_0
              #                    store to temp_194_cmp_103_0 in mem offset legal
    sb      a5,535(sp)
              #                    release a5 with temp_194_cmp_103_0
              #                    occupy a6 with temp_198_cmp_106_0
              #                    store to temp_198_cmp_106_0 in mem offset legal
    sb      a6,519(sp)
              #                    release a6 with temp_198_cmp_106_0
              #                    occupy a4 with temp_190_cmp_100_0
              #                    store to temp_190_cmp_100_0 in mem offset legal
    sb      a4,551(sp)
              #                    release a4 with temp_190_cmp_100_0
              #                    occupy a7 with temp_202_cmp_117_0
              #                    store to temp_202_cmp_117_0 in mem offset legal
    sb      a7,503(sp)
              #                    release a7 with temp_202_cmp_117_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    store to temp_185_ret_of_isdigit_94_0 in mem offset legal
    sw      a0,568(sp)
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    store to temp_186_cmp_94_0 in mem offset legal
    sb      a2,567(sp)
              #                    release a2 with temp_186_cmp_94_0
              #                    occupy s1 with temp_206_cmp_127_0
              #                    store to temp_206_cmp_127_0 in mem offset legal
    sb      s1,487(sp)
              #                    release s1 with temp_206_cmp_127_0
    j       .branch_short_circuit_c_false_981
              #                    regtab     a0:Freed { symidx: temp_271_ret_of_find_143_0, tracked: true } |     a2:Freed { symidx: temp_272_cmp_143_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1000 label branch_false_144: 
.branch_false_144:
              #                     1959 untrack temp_235_ret_of_find_163_0 
              #                     1958 untrack temp_219_value_from_ptr_160_0 
              #                     1957 untrack temp_252_cmp_150_0 
              #                     1956 untrack temp_226_cmp_160_0 
              #                     1955 untrack temp_222_cmp_160_0 
              #                     1954 untrack temp_220_ptr_of_*chas_0_160 
              #                     1953 untrack temp_240_cmp_150_0 
              #                     1952 untrack temp_238_ptr_of_*chas_0_150 
              #                     1951 untrack temp_234_cmp_160_0 
              #                     1950 untrack temp_230_cmp_160_0 
              #                     1949 untrack temp_221_ele_of_*chas_0_160_0 
              #                     1948 untrack temp_237_value_from_ptr_150_0 
              #                     1947 untrack temp_253_ret_of_find_153_0 
              #                     1946 untrack temp_239_ele_of_*chas_0_150_0 
              #                     1945 untrack temp_254_cmp_153_0 
              #                     1944 untrack temp_244_cmp_150_0 
              #                     1943 untrack temp_248_cmp_150_0 
              #                     1942 untrack temp_236_cmp_163_0 
              #                          jump label: branch_true_138 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    load from temp_194_cmp_103_0 in mem


    lb      a5,535(sp)
              #                    occupy a6 with temp_198_cmp_106_0
              #                    load from temp_198_cmp_106_0 in mem


    lb      a6,519(sp)
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a7 with temp_202_cmp_117_0
              #                    load from temp_202_cmp_117_0 in mem


    lb      a7,503(sp)
              #                    occupy a0 with temp_271_ret_of_find_143_0
              #                    store to temp_271_ret_of_find_143_0 in mem offset legal
    sw      a0,224(sp)
              #                    release a0 with temp_271_ret_of_find_143_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_272_cmp_143_0
              #                    store to temp_272_cmp_143_0 in mem offset legal
    sb      a2,223(sp)
              #                    release a2 with temp_272_cmp_143_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy s1 with temp_206_cmp_127_0
              #                    load from temp_206_cmp_127_0 in mem


    lb      s1,487(sp)
    j       .branch_true_138
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     991  label branch_short_circuit_p_false_989: 
.branch_short_circuit_p_false_989:
              #                     954  (nop) 
              #                     955  mu chat_0_29:954 
              #                     957  (nop) 
              #                     959  (nop) 
              #                     960  mu chas_0_13:959 
              #                     962  temp_262_cmp_140_0 = icmp i32 Eq temp_257_ele_of_*chas_0_140_0, 47_0 
              #                    occupy a1 with temp_257_ele_of_*chas_0_140_0
              #                    load from temp_257_ele_of_*chas_0_140_0 in mem


    lw      a1,276(sp)
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    occupy s2 with temp_262_cmp_140_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_257_ele_of_*chas_0_140_0
              #                    store to temp_257_ele_of_*chas_0_140_0 in mem offset legal
    sw      a1,276(sp)
              #                    release a1 with temp_257_ele_of_*chas_0_140_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_262_cmp_140_0
              #                    store to temp_262_cmp_140_0 in mem offset legal
    sb      s2,263(sp)
              #                    release s2 with temp_262_cmp_140_0
              #                     993  br i1 temp_262_cmp_140_0, label branch_short_circuit_c_true_1003, label branch_short_circuit_p_false_996 
              #                    occupy a1 with temp_262_cmp_140_0
              #                    load from temp_262_cmp_140_0 in mem


    lb      a1,263(sp)
              #                    free a1
              #                    occupy a1 with temp_262_cmp_140_0
              #                    store to temp_262_cmp_140_0 in mem offset legal
    sb      a1,263(sp)
              #                    release a1 with temp_262_cmp_140_0
              #                    occupy a1 with temp_262_cmp_140_0
              #                    load from temp_262_cmp_140_0 in mem


    lb      a1,263(sp)
    bnez    a1, .branch_short_circuit_c_true_1003
              #                    free a1
              #                    occupy a1 with temp_262_cmp_140_0
              #                    store to temp_262_cmp_140_0 in mem offset legal
    sb      a1,263(sp)
              #                    release a1 with temp_262_cmp_140_0
    j       .branch_short_circuit_p_false_996
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     988  label branch_short_circuit_p_false_996: 
.branch_short_circuit_p_false_996:
              #                     964  (nop) 
              #                     965  mu chat_0_29:964 
              #                     967  (nop) 
              #                     969  (nop) 
              #                     970  mu chas_0_13:969 
              #                     972  temp_266_cmp_140_0 = icmp i32 Eq temp_257_ele_of_*chas_0_140_0, 37_0 
              #                    occupy a1 with temp_257_ele_of_*chas_0_140_0
              #                    load from temp_257_ele_of_*chas_0_140_0 in mem


    lw      a1,276(sp)
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    occupy s2 with temp_266_cmp_140_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_257_ele_of_*chas_0_140_0
              #                    store to temp_257_ele_of_*chas_0_140_0 in mem offset legal
    sw      a1,276(sp)
              #                    release a1 with temp_257_ele_of_*chas_0_140_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_266_cmp_140_0
              #                    store to temp_266_cmp_140_0 in mem offset legal
    sb      s2,247(sp)
              #                    release s2 with temp_266_cmp_140_0
              #                     990  br i1 temp_266_cmp_140_0, label branch_short_circuit_c_true_1003, label branch_short_circuit_p_false_1003 
              #                    occupy a1 with temp_266_cmp_140_0
              #                    load from temp_266_cmp_140_0 in mem


    lb      a1,247(sp)
              #                    free a1
              #                    occupy a1 with temp_266_cmp_140_0
              #                    store to temp_266_cmp_140_0 in mem offset legal
    sb      a1,247(sp)
              #                    release a1 with temp_266_cmp_140_0
              #                    occupy a1 with temp_266_cmp_140_0
              #                    load from temp_266_cmp_140_0 in mem


    lb      a1,247(sp)
    bnez    a1, .branch_short_circuit_c_true_1003
              #                    free a1
              #                    occupy a1 with temp_266_cmp_140_0
              #                    store to temp_266_cmp_140_0 in mem offset legal
    sb      a1,247(sp)
              #                    release a1 with temp_266_cmp_140_0
    j       .branch_short_circuit_p_false_1003
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     985  label branch_short_circuit_p_false_1003: 
.branch_short_circuit_p_false_1003:
              #                     974  (nop) 
              #                     975  mu chat_0_29:974 
              #                     977  (nop) 
              #                     979  (nop) 
              #                     980  mu chas_0_13:979 
              #                     982  temp_270_cmp_140_0 = icmp i32 Eq temp_257_ele_of_*chas_0_140_0, 94_0 
              #                    occupy a1 with temp_257_ele_of_*chas_0_140_0
              #                    load from temp_257_ele_of_*chas_0_140_0 in mem


    lw      a1,276(sp)
              #                    occupy a3 with 94_0
    li      a3, 94
              #                    occupy s2 with temp_270_cmp_140_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_257_ele_of_*chas_0_140_0
              #                    store to temp_257_ele_of_*chas_0_140_0 in mem offset legal
    sw      a1,276(sp)
              #                    release a1 with temp_257_ele_of_*chas_0_140_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_270_cmp_140_0
              #                    store to temp_270_cmp_140_0 in mem offset legal
    sb      s2,231(sp)
              #                    release s2 with temp_270_cmp_140_0
              #                     987  br i1 temp_270_cmp_140_0, label branch_short_circuit_c_true_1003, label branch_short_circuit_c_false_1003 
              #                    occupy a1 with temp_270_cmp_140_0
              #                    load from temp_270_cmp_140_0 in mem


    lb      a1,231(sp)
              #                    free a1
              #                    occupy a1 with temp_270_cmp_140_0
              #                    store to temp_270_cmp_140_0 in mem offset legal
    sb      a1,231(sp)
              #                    release a1 with temp_270_cmp_140_0
              #                    occupy a1 with temp_270_cmp_140_0
              #                    load from temp_270_cmp_140_0 in mem


    lb      a1,231(sp)
    bnez    a1, .branch_short_circuit_c_true_1003
              #                    free a1
              #                    occupy a1 with temp_270_cmp_140_0
              #                    store to temp_270_cmp_140_0 in mem offset legal
    sb      a1,231(sp)
              #                    release a1 with temp_270_cmp_140_0
              #                    occupy a5 with temp_194_cmp_103_0
              #                    store to temp_194_cmp_103_0 in mem offset legal
    sb      a5,535(sp)
              #                    release a5 with temp_194_cmp_103_0
              #                    occupy a6 with temp_198_cmp_106_0
              #                    store to temp_198_cmp_106_0 in mem offset legal
    sb      a6,519(sp)
              #                    release a6 with temp_198_cmp_106_0
              #                    occupy a4 with temp_190_cmp_100_0
              #                    store to temp_190_cmp_100_0 in mem offset legal
    sb      a4,551(sp)
              #                    release a4 with temp_190_cmp_100_0
              #                    occupy a7 with temp_202_cmp_117_0
              #                    store to temp_202_cmp_117_0 in mem offset legal
    sb      a7,503(sp)
              #                    release a7 with temp_202_cmp_117_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    store to temp_185_ret_of_isdigit_94_0 in mem offset legal
    sw      a0,568(sp)
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    store to temp_186_cmp_94_0 in mem offset legal
    sb      a2,567(sp)
              #                    release a2 with temp_186_cmp_94_0
              #                    occupy s1 with temp_206_cmp_127_0
              #                    store to temp_206_cmp_127_0 in mem offset legal
    sb      s1,487(sp)
              #                    release s1 with temp_206_cmp_127_0
    j       .branch_short_circuit_c_false_1003
              #                    regtab     a0:Freed { symidx: temp_297_ret_of_find_133_0, tracked: true } |     a2:Freed { symidx: temp_298_cmp_133_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1085 label branch_false_134: 
.branch_false_134:
              #                     1895 untrack temp_272_cmp_143_0 
              #                     1894 untrack temp_255_value_from_ptr_140_0 
              #                     1893 untrack temp_238_ptr_of_*chas_0_150 
              #                     1892 untrack temp_222_cmp_160_0 
              #                     1891 untrack temp_254_cmp_153_0 
              #                     1890 untrack temp_239_ele_of_*chas_0_150_0 
              #                     1889 untrack temp_256_ptr_of_*chas_0_140 
              #                     1888 untrack temp_219_value_from_ptr_160_0 
              #                     1887 untrack temp_257_ele_of_*chas_0_140_0 
              #                     1886 untrack temp_234_cmp_160_0 
              #                     1885 untrack temp_220_ptr_of_*chas_0_160 
              #                     1884 untrack temp_236_cmp_163_0 
              #                     1883 untrack temp_237_value_from_ptr_150_0 
              #                     1882 untrack temp_252_cmp_150_0 
              #                     1881 untrack temp_248_cmp_150_0 
              #                     1880 untrack temp_230_cmp_160_0 
              #                     1879 untrack temp_240_cmp_150_0 
              #                     1878 untrack temp_253_ret_of_find_153_0 
              #                     1877 untrack temp_235_ret_of_find_163_0 
              #                     1876 untrack temp_266_cmp_140_0 
              #                     1875 untrack temp_221_ele_of_*chas_0_160_0 
              #                     1874 untrack temp_258_cmp_140_0 
              #                     1873 untrack temp_271_ret_of_find_143_0 
              #                     1872 untrack temp_262_cmp_140_0 
              #                     1871 untrack temp_244_cmp_150_0 
              #                     1870 untrack temp_226_cmp_160_0 
              #                     1869 untrack temp_270_cmp_140_0 
              #                          jump label: branch_true_128 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    load from temp_194_cmp_103_0 in mem


    lb      a5,535(sp)
              #                    occupy a6 with temp_198_cmp_106_0
              #                    load from temp_198_cmp_106_0 in mem


    lb      a6,519(sp)
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a7 with temp_202_cmp_117_0
              #                    load from temp_202_cmp_117_0 in mem


    lb      a7,503(sp)
              #                    occupy a0 with temp_297_ret_of_find_133_0
              #                    store to temp_297_ret_of_find_133_0 in mem offset legal
    sw      a0,120(sp)
              #                    release a0 with temp_297_ret_of_find_133_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_298_cmp_133_0
              #                    store to temp_298_cmp_133_0 in mem offset legal
    sb      a2,119(sp)
              #                    release a2 with temp_298_cmp_133_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy s1 with temp_206_cmp_127_0
              #                    load from temp_206_cmp_127_0 in mem


    lb      s1,487(sp)
    j       .branch_true_128
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1076 label branch_short_circuit_p_false_1011: 
.branch_short_circuit_p_false_1011:
              #                     1013 (nop) 
              #                     1014 mu chat_0_24:1013 
              #                     1016 (nop) 
              #                     1018 (nop) 
              #                     1019 mu chas_0_11:1018 
              #                     1021 temp_280_cmp_130_0 = icmp i32 Eq temp_275_ele_of_*chas_0_130_0, 45_0 
              #                    occupy a1 with temp_275_ele_of_*chas_0_130_0
              #                    load from temp_275_ele_of_*chas_0_130_0 in mem


    lw      a1,204(sp)
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    occupy s2 with temp_280_cmp_130_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_275_ele_of_*chas_0_130_0
              #                    store to temp_275_ele_of_*chas_0_130_0 in mem offset legal
    sw      a1,204(sp)
              #                    release a1 with temp_275_ele_of_*chas_0_130_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_280_cmp_130_0
              #                    store to temp_280_cmp_130_0 in mem offset legal
    sb      s2,191(sp)
              #                    release s2 with temp_280_cmp_130_0
              #                     1078 br i1 temp_280_cmp_130_0, label branch_short_circuit_c_true_1039, label branch_short_circuit_p_false_1018 
              #                    occupy a1 with temp_280_cmp_130_0
              #                    load from temp_280_cmp_130_0 in mem


    lb      a1,191(sp)
              #                    free a1
              #                    occupy a1 with temp_280_cmp_130_0
              #                    store to temp_280_cmp_130_0 in mem offset legal
    sb      a1,191(sp)
              #                    release a1 with temp_280_cmp_130_0
              #                    occupy a1 with temp_280_cmp_130_0
              #                    load from temp_280_cmp_130_0 in mem


    lb      a1,191(sp)
    bnez    a1, .branch_short_circuit_c_true_1039
              #                    free a1
              #                    occupy a1 with temp_280_cmp_130_0
              #                    store to temp_280_cmp_130_0 in mem offset legal
    sb      a1,191(sp)
              #                    release a1 with temp_280_cmp_130_0
    j       .branch_short_circuit_p_false_1018
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1073 label branch_short_circuit_p_false_1018: 
.branch_short_circuit_p_false_1018:
              #                     1023 (nop) 
              #                     1024 mu chat_0_24:1023 
              #                     1026 (nop) 
              #                     1028 (nop) 
              #                     1029 mu chas_0_11:1028 
              #                     1031 temp_284_cmp_130_0 = icmp i32 Eq temp_275_ele_of_*chas_0_130_0, 42_0 
              #                    occupy a1 with temp_275_ele_of_*chas_0_130_0
              #                    load from temp_275_ele_of_*chas_0_130_0 in mem


    lw      a1,204(sp)
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    occupy s2 with temp_284_cmp_130_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_275_ele_of_*chas_0_130_0
              #                    store to temp_275_ele_of_*chas_0_130_0 in mem offset legal
    sw      a1,204(sp)
              #                    release a1 with temp_275_ele_of_*chas_0_130_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_284_cmp_130_0
              #                    store to temp_284_cmp_130_0 in mem offset legal
    sb      s2,175(sp)
              #                    release s2 with temp_284_cmp_130_0
              #                     1075 br i1 temp_284_cmp_130_0, label branch_short_circuit_c_true_1039, label branch_short_circuit_p_false_1025 
              #                    occupy a1 with temp_284_cmp_130_0
              #                    load from temp_284_cmp_130_0 in mem


    lb      a1,175(sp)
              #                    free a1
              #                    occupy a1 with temp_284_cmp_130_0
              #                    store to temp_284_cmp_130_0 in mem offset legal
    sb      a1,175(sp)
              #                    release a1 with temp_284_cmp_130_0
              #                    occupy a1 with temp_284_cmp_130_0
              #                    load from temp_284_cmp_130_0 in mem


    lb      a1,175(sp)
    bnez    a1, .branch_short_circuit_c_true_1039
              #                    free a1
              #                    occupy a1 with temp_284_cmp_130_0
              #                    store to temp_284_cmp_130_0 in mem offset legal
    sb      a1,175(sp)
              #                    release a1 with temp_284_cmp_130_0
    j       .branch_short_circuit_p_false_1025
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1070 label branch_short_circuit_p_false_1025: 
.branch_short_circuit_p_false_1025:
              #                     1033 (nop) 
              #                     1034 mu chat_0_24:1033 
              #                     1036 (nop) 
              #                     1038 (nop) 
              #                     1039 mu chas_0_11:1038 
              #                     1041 temp_288_cmp_130_0 = icmp i32 Eq temp_275_ele_of_*chas_0_130_0, 47_0 
              #                    occupy a1 with temp_275_ele_of_*chas_0_130_0
              #                    load from temp_275_ele_of_*chas_0_130_0 in mem


    lw      a1,204(sp)
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    occupy s2 with temp_288_cmp_130_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_275_ele_of_*chas_0_130_0
              #                    store to temp_275_ele_of_*chas_0_130_0 in mem offset legal
    sw      a1,204(sp)
              #                    release a1 with temp_275_ele_of_*chas_0_130_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_288_cmp_130_0
              #                    store to temp_288_cmp_130_0 in mem offset legal
    sb      s2,159(sp)
              #                    release s2 with temp_288_cmp_130_0
              #                     1072 br i1 temp_288_cmp_130_0, label branch_short_circuit_c_true_1039, label branch_short_circuit_p_false_1032 
              #                    occupy a1 with temp_288_cmp_130_0
              #                    load from temp_288_cmp_130_0 in mem


    lb      a1,159(sp)
              #                    free a1
              #                    occupy a1 with temp_288_cmp_130_0
              #                    store to temp_288_cmp_130_0 in mem offset legal
    sb      a1,159(sp)
              #                    release a1 with temp_288_cmp_130_0
              #                    occupy a1 with temp_288_cmp_130_0
              #                    load from temp_288_cmp_130_0 in mem


    lb      a1,159(sp)
    bnez    a1, .branch_short_circuit_c_true_1039
              #                    free a1
              #                    occupy a1 with temp_288_cmp_130_0
              #                    store to temp_288_cmp_130_0 in mem offset legal
    sb      a1,159(sp)
              #                    release a1 with temp_288_cmp_130_0
    j       .branch_short_circuit_p_false_1032
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1067 label branch_short_circuit_p_false_1032: 
.branch_short_circuit_p_false_1032:
              #                     1043 (nop) 
              #                     1044 mu chat_0_24:1043 
              #                     1046 (nop) 
              #                     1048 (nop) 
              #                     1049 mu chas_0_11:1048 
              #                     1051 temp_292_cmp_130_0 = icmp i32 Eq temp_275_ele_of_*chas_0_130_0, 37_0 
              #                    occupy a1 with temp_275_ele_of_*chas_0_130_0
              #                    load from temp_275_ele_of_*chas_0_130_0 in mem


    lw      a1,204(sp)
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    occupy s2 with temp_292_cmp_130_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_275_ele_of_*chas_0_130_0
              #                    store to temp_275_ele_of_*chas_0_130_0 in mem offset legal
    sw      a1,204(sp)
              #                    release a1 with temp_275_ele_of_*chas_0_130_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_292_cmp_130_0
              #                    store to temp_292_cmp_130_0 in mem offset legal
    sb      s2,143(sp)
              #                    release s2 with temp_292_cmp_130_0
              #                     1069 br i1 temp_292_cmp_130_0, label branch_short_circuit_c_true_1039, label branch_short_circuit_p_false_1039 
              #                    occupy a1 with temp_292_cmp_130_0
              #                    load from temp_292_cmp_130_0 in mem


    lb      a1,143(sp)
              #                    free a1
              #                    occupy a1 with temp_292_cmp_130_0
              #                    store to temp_292_cmp_130_0 in mem offset legal
    sb      a1,143(sp)
              #                    release a1 with temp_292_cmp_130_0
              #                    occupy a1 with temp_292_cmp_130_0
              #                    load from temp_292_cmp_130_0 in mem


    lb      a1,143(sp)
    bnez    a1, .branch_short_circuit_c_true_1039
              #                    free a1
              #                    occupy a1 with temp_292_cmp_130_0
              #                    store to temp_292_cmp_130_0 in mem offset legal
    sb      a1,143(sp)
              #                    release a1 with temp_292_cmp_130_0
    j       .branch_short_circuit_p_false_1039
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |     s1:Freed { symidx: temp_206_cmp_127_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1064 label branch_short_circuit_p_false_1039: 
.branch_short_circuit_p_false_1039:
              #                     1053 (nop) 
              #                     1054 mu chat_0_24:1053 
              #                     1056 (nop) 
              #                     1058 (nop) 
              #                     1059 mu chas_0_11:1058 
              #                     1061 temp_296_cmp_130_0 = icmp i32 Eq temp_275_ele_of_*chas_0_130_0, 94_0 
              #                    occupy a1 with temp_275_ele_of_*chas_0_130_0
              #                    load from temp_275_ele_of_*chas_0_130_0 in mem


    lw      a1,204(sp)
              #                    occupy a3 with 94_0
    li      a3, 94
              #                    occupy s2 with temp_296_cmp_130_0
    xor     s2,a1,a3
    seqz    s2, s2
              #                    free a1
              #                    occupy a1 with temp_275_ele_of_*chas_0_130_0
              #                    store to temp_275_ele_of_*chas_0_130_0 in mem offset legal
    sw      a1,204(sp)
              #                    release a1 with temp_275_ele_of_*chas_0_130_0
              #                    free a3
              #                    free s2
              #                    occupy s2 with temp_296_cmp_130_0
              #                    store to temp_296_cmp_130_0 in mem offset legal
    sb      s2,127(sp)
              #                    release s2 with temp_296_cmp_130_0
              #                     1066 br i1 temp_296_cmp_130_0, label branch_short_circuit_c_true_1039, label branch_short_circuit_c_false_1039 
              #                    occupy a1 with temp_296_cmp_130_0
              #                    load from temp_296_cmp_130_0 in mem


    lb      a1,127(sp)
              #                    free a1
              #                    occupy a1 with temp_296_cmp_130_0
              #                    store to temp_296_cmp_130_0 in mem offset legal
    sb      a1,127(sp)
              #                    release a1 with temp_296_cmp_130_0
              #                    occupy a1 with temp_296_cmp_130_0
              #                    load from temp_296_cmp_130_0 in mem


    lb      a1,127(sp)
    bnez    a1, .branch_short_circuit_c_true_1039
              #                    free a1
              #                    occupy a1 with temp_296_cmp_130_0
              #                    store to temp_296_cmp_130_0 in mem offset legal
    sb      a1,127(sp)
              #                    release a1 with temp_296_cmp_130_0
              #                    occupy a5 with temp_194_cmp_103_0
              #                    store to temp_194_cmp_103_0 in mem offset legal
    sb      a5,535(sp)
              #                    release a5 with temp_194_cmp_103_0
              #                    occupy a6 with temp_198_cmp_106_0
              #                    store to temp_198_cmp_106_0 in mem offset legal
    sb      a6,519(sp)
              #                    release a6 with temp_198_cmp_106_0
              #                    occupy a4 with temp_190_cmp_100_0
              #                    store to temp_190_cmp_100_0 in mem offset legal
    sb      a4,551(sp)
              #                    release a4 with temp_190_cmp_100_0
              #                    occupy a7 with temp_202_cmp_117_0
              #                    store to temp_202_cmp_117_0 in mem offset legal
    sb      a7,503(sp)
              #                    release a7 with temp_202_cmp_117_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    store to temp_185_ret_of_isdigit_94_0 in mem offset legal
    sw      a0,568(sp)
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    store to temp_186_cmp_94_0 in mem offset legal
    sb      a2,567(sp)
              #                    release a2 with temp_186_cmp_94_0
              #                    occupy s1 with temp_206_cmp_127_0
              #                    store to temp_206_cmp_127_0 in mem offset legal
    sb      s1,487(sp)
              #                    release s1 with temp_206_cmp_127_0
    j       .branch_short_circuit_c_false_1039
              #                    regtab     a0:Freed { symidx: temp_323_ret_of_find_123_0, tracked: true } |     a2:Freed { symidx: temp_324_cmp_123_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1170 label branch_false_124: 
.branch_false_124:
              #                     1831 untrack temp_219_value_from_ptr_160_0 
              #                     1830 untrack temp_274_ptr_of_*chas_0_130 
              #                     1829 untrack temp_238_ptr_of_*chas_0_150 
              #                     1828 untrack temp_239_ele_of_*chas_0_150_0 
              #                     1827 untrack temp_284_cmp_130_0 
              #                     1826 untrack temp_230_cmp_160_0 
              #                     1825 untrack temp_256_ptr_of_*chas_0_140 
              #                     1824 untrack temp_270_cmp_140_0 
              #                     1823 untrack temp_275_ele_of_*chas_0_130_0 
              #                     1822 untrack temp_257_ele_of_*chas_0_140_0 
              #                     1821 untrack temp_276_cmp_130_0 
              #                     1820 untrack temp_248_cmp_150_0 
              #                     1819 untrack temp_296_cmp_130_0 
              #                     1818 untrack temp_234_cmp_160_0 
              #                     1817 untrack temp_237_value_from_ptr_150_0 
              #                     1816 untrack temp_266_cmp_140_0 
              #                     1815 untrack temp_273_value_from_ptr_130_0 
              #                     1814 untrack temp_236_cmp_163_0 
              #                     1813 untrack temp_240_cmp_150_0 
              #                     1812 untrack temp_244_cmp_150_0 
              #                     1811 untrack temp_253_ret_of_find_153_0 
              #                     1810 untrack temp_292_cmp_130_0 
              #                     1809 untrack temp_297_ret_of_find_133_0 
              #                     1808 untrack temp_271_ret_of_find_143_0 
              #                     1807 untrack temp_298_cmp_133_0 
              #                     1806 untrack temp_222_cmp_160_0 
              #                     1805 untrack temp_262_cmp_140_0 
              #                     1804 untrack temp_220_ptr_of_*chas_0_160 
              #                     1803 untrack temp_258_cmp_140_0 
              #                     1802 untrack temp_288_cmp_130_0 
              #                     1801 untrack temp_226_cmp_160_0 
              #                     1800 untrack temp_221_ele_of_*chas_0_160_0 
              #                     1799 untrack temp_235_ret_of_find_163_0 
              #                     1798 untrack temp_255_value_from_ptr_140_0 
              #                     1797 untrack temp_252_cmp_150_0 
              #                     1796 untrack temp_254_cmp_153_0 
              #                     1795 untrack temp_280_cmp_130_0 
              #                     1794 untrack temp_272_cmp_143_0 
              #                          jump label: branch_true_118 
              #                    occupy a5 with temp_194_cmp_103_0
              #                    load from temp_194_cmp_103_0 in mem


    lb      a5,535(sp)
              #                    occupy a6 with temp_198_cmp_106_0
              #                    load from temp_198_cmp_106_0 in mem


    lb      a6,519(sp)
              #                    occupy a4 with temp_190_cmp_100_0
              #                    load from temp_190_cmp_100_0 in mem


    lb      a4,551(sp)
              #                    occupy a7 with temp_202_cmp_117_0
              #                    load from temp_202_cmp_117_0 in mem


    lb      a7,503(sp)
              #                    occupy a0 with temp_323_ret_of_find_123_0
              #                    store to temp_323_ret_of_find_123_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_323_ret_of_find_123_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    load from temp_185_ret_of_isdigit_94_0 in mem


    lw      a0,568(sp)
              #                    occupy a2 with temp_324_cmp_123_0
              #                    store to temp_324_cmp_123_0 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_324_cmp_123_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    load from temp_186_cmp_94_0 in mem


    lb      a2,567(sp)
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    load from temp_184_ele_of_*get_0_94_0 in mem


    lw      a1,572(sp)
    j       .branch_true_118
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1161 label branch_short_circuit_p_false_1047: 
.branch_short_circuit_p_false_1047:
              #                     1098 (nop) 
              #                     1099 mu chat_0_19:1098 
              #                     1101 (nop) 
              #                     1103 (nop) 
              #                     1104 mu chas_0_9:1103 
              #                     1106 temp_306_cmp_120_0 = icmp i32 Eq temp_301_ele_of_*chas_0_120_0, 45_0 
              #                    occupy a3 with temp_301_ele_of_*chas_0_120_0
              #                    load from temp_301_ele_of_*chas_0_120_0 in mem


    lw      a3,100(sp)
              #                    occupy s1 with 45_0
    li      s1, 45
              #                    occupy s2 with temp_306_cmp_120_0
    xor     s2,a3,s1
    seqz    s2, s2
              #                    free a3
              #                    occupy a3 with temp_301_ele_of_*chas_0_120_0
              #                    store to temp_301_ele_of_*chas_0_120_0 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with temp_301_ele_of_*chas_0_120_0
              #                    free s1
              #                    free s2
              #                    occupy s2 with temp_306_cmp_120_0
              #                    store to temp_306_cmp_120_0 in mem offset legal
    sb      s2,87(sp)
              #                    release s2 with temp_306_cmp_120_0
              #                     1163 br i1 temp_306_cmp_120_0, label branch_short_circuit_c_true_1075, label branch_short_circuit_p_false_1054 
              #                    occupy a3 with temp_306_cmp_120_0
              #                    load from temp_306_cmp_120_0 in mem


    lb      a3,87(sp)
              #                    free a3
              #                    occupy a3 with temp_306_cmp_120_0
              #                    store to temp_306_cmp_120_0 in mem offset legal
    sb      a3,87(sp)
              #                    release a3 with temp_306_cmp_120_0
              #                    occupy a3 with temp_306_cmp_120_0
              #                    load from temp_306_cmp_120_0 in mem


    lb      a3,87(sp)
    bnez    a3, .branch_short_circuit_c_true_1075
              #                    free a3
              #                    occupy a3 with temp_306_cmp_120_0
              #                    store to temp_306_cmp_120_0 in mem offset legal
    sb      a3,87(sp)
              #                    release a3 with temp_306_cmp_120_0
    j       .branch_short_circuit_p_false_1054
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1158 label branch_short_circuit_p_false_1054: 
.branch_short_circuit_p_false_1054:
              #                     1108 (nop) 
              #                     1109 mu chat_0_19:1108 
              #                     1111 (nop) 
              #                     1113 (nop) 
              #                     1114 mu chas_0_9:1113 
              #                     1116 temp_310_cmp_120_0 = icmp i32 Eq temp_301_ele_of_*chas_0_120_0, 42_0 
              #                    occupy a3 with temp_301_ele_of_*chas_0_120_0
              #                    load from temp_301_ele_of_*chas_0_120_0 in mem


    lw      a3,100(sp)
              #                    occupy s1 with 42_0
    li      s1, 42
              #                    occupy s2 with temp_310_cmp_120_0
    xor     s2,a3,s1
    seqz    s2, s2
              #                    free a3
              #                    occupy a3 with temp_301_ele_of_*chas_0_120_0
              #                    store to temp_301_ele_of_*chas_0_120_0 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with temp_301_ele_of_*chas_0_120_0
              #                    free s1
              #                    free s2
              #                    occupy s2 with temp_310_cmp_120_0
              #                    store to temp_310_cmp_120_0 in mem offset legal
    sb      s2,71(sp)
              #                    release s2 with temp_310_cmp_120_0
              #                     1160 br i1 temp_310_cmp_120_0, label branch_short_circuit_c_true_1075, label branch_short_circuit_p_false_1061 
              #                    occupy a3 with temp_310_cmp_120_0
              #                    load from temp_310_cmp_120_0 in mem


    lb      a3,71(sp)
              #                    free a3
              #                    occupy a3 with temp_310_cmp_120_0
              #                    store to temp_310_cmp_120_0 in mem offset legal
    sb      a3,71(sp)
              #                    release a3 with temp_310_cmp_120_0
              #                    occupy a3 with temp_310_cmp_120_0
              #                    load from temp_310_cmp_120_0 in mem


    lb      a3,71(sp)
    bnez    a3, .branch_short_circuit_c_true_1075
              #                    free a3
              #                    occupy a3 with temp_310_cmp_120_0
              #                    store to temp_310_cmp_120_0 in mem offset legal
    sb      a3,71(sp)
              #                    release a3 with temp_310_cmp_120_0
    j       .branch_short_circuit_p_false_1061
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1155 label branch_short_circuit_p_false_1061: 
.branch_short_circuit_p_false_1061:
              #                     1118 (nop) 
              #                     1119 mu chat_0_19:1118 
              #                     1121 (nop) 
              #                     1123 (nop) 
              #                     1124 mu chas_0_9:1123 
              #                     1126 temp_314_cmp_120_0 = icmp i32 Eq temp_301_ele_of_*chas_0_120_0, 47_0 
              #                    occupy a3 with temp_301_ele_of_*chas_0_120_0
              #                    load from temp_301_ele_of_*chas_0_120_0 in mem


    lw      a3,100(sp)
              #                    occupy s1 with 47_0
    li      s1, 47
              #                    occupy s2 with temp_314_cmp_120_0
    xor     s2,a3,s1
    seqz    s2, s2
              #                    free a3
              #                    occupy a3 with temp_301_ele_of_*chas_0_120_0
              #                    store to temp_301_ele_of_*chas_0_120_0 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with temp_301_ele_of_*chas_0_120_0
              #                    free s1
              #                    free s2
              #                    occupy s2 with temp_314_cmp_120_0
              #                    store to temp_314_cmp_120_0 in mem offset legal
    sb      s2,55(sp)
              #                    release s2 with temp_314_cmp_120_0
              #                     1157 br i1 temp_314_cmp_120_0, label branch_short_circuit_c_true_1075, label branch_short_circuit_p_false_1068 
              #                    occupy a3 with temp_314_cmp_120_0
              #                    load from temp_314_cmp_120_0 in mem


    lb      a3,55(sp)
              #                    free a3
              #                    occupy a3 with temp_314_cmp_120_0
              #                    store to temp_314_cmp_120_0 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_314_cmp_120_0
              #                    occupy a3 with temp_314_cmp_120_0
              #                    load from temp_314_cmp_120_0 in mem


    lb      a3,55(sp)
    bnez    a3, .branch_short_circuit_c_true_1075
              #                    free a3
              #                    occupy a3 with temp_314_cmp_120_0
              #                    store to temp_314_cmp_120_0 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_314_cmp_120_0
    j       .branch_short_circuit_p_false_1068
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1152 label branch_short_circuit_p_false_1068: 
.branch_short_circuit_p_false_1068:
              #                     1128 (nop) 
              #                     1129 mu chat_0_19:1128 
              #                     1131 (nop) 
              #                     1133 (nop) 
              #                     1134 mu chas_0_9:1133 
              #                     1136 temp_318_cmp_120_0 = icmp i32 Eq temp_301_ele_of_*chas_0_120_0, 37_0 
              #                    occupy a3 with temp_301_ele_of_*chas_0_120_0
              #                    load from temp_301_ele_of_*chas_0_120_0 in mem


    lw      a3,100(sp)
              #                    occupy s1 with 37_0
    li      s1, 37
              #                    occupy s2 with temp_318_cmp_120_0
    xor     s2,a3,s1
    seqz    s2, s2
              #                    free a3
              #                    occupy a3 with temp_301_ele_of_*chas_0_120_0
              #                    store to temp_301_ele_of_*chas_0_120_0 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with temp_301_ele_of_*chas_0_120_0
              #                    free s1
              #                    free s2
              #                    occupy s2 with temp_318_cmp_120_0
              #                    store to temp_318_cmp_120_0 in mem offset legal
    sb      s2,39(sp)
              #                    release s2 with temp_318_cmp_120_0
              #                     1154 br i1 temp_318_cmp_120_0, label branch_short_circuit_c_true_1075, label branch_short_circuit_p_false_1075 
              #                    occupy a3 with temp_318_cmp_120_0
              #                    load from temp_318_cmp_120_0 in mem


    lb      a3,39(sp)
              #                    free a3
              #                    occupy a3 with temp_318_cmp_120_0
              #                    store to temp_318_cmp_120_0 in mem offset legal
    sb      a3,39(sp)
              #                    release a3 with temp_318_cmp_120_0
              #                    occupy a3 with temp_318_cmp_120_0
              #                    load from temp_318_cmp_120_0 in mem


    lb      a3,39(sp)
    bnez    a3, .branch_short_circuit_c_true_1075
              #                    free a3
              #                    occupy a3 with temp_318_cmp_120_0
              #                    store to temp_318_cmp_120_0 in mem offset legal
    sb      a3,39(sp)
              #                    release a3 with temp_318_cmp_120_0
    j       .branch_short_circuit_p_false_1075
              #                    regtab     a0:Freed { symidx: temp_185_ret_of_isdigit_94_0, tracked: true } |     a1:Freed { symidx: temp_184_ele_of_*get_0_94_0, tracked: true } |     a2:Freed { symidx: temp_186_cmp_94_0, tracked: true } |     a4:Freed { symidx: temp_190_cmp_100_0, tracked: true } |     a5:Freed { symidx: temp_194_cmp_103_0, tracked: true } |     a6:Freed { symidx: temp_198_cmp_106_0, tracked: true } |     a7:Freed { symidx: temp_202_cmp_117_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1149 label branch_short_circuit_p_false_1075: 
.branch_short_circuit_p_false_1075:
              #                     1138 (nop) 
              #                     1139 mu chat_0_19:1138 
              #                     1141 (nop) 
              #                     1143 (nop) 
              #                     1144 mu chas_0_9:1143 
              #                     1146 temp_322_cmp_120_0 = icmp i32 Eq temp_301_ele_of_*chas_0_120_0, 94_0 
              #                    occupy a3 with temp_301_ele_of_*chas_0_120_0
              #                    load from temp_301_ele_of_*chas_0_120_0 in mem


    lw      a3,100(sp)
              #                    occupy s1 with 94_0
    li      s1, 94
              #                    occupy s2 with temp_322_cmp_120_0
    xor     s2,a3,s1
    seqz    s2, s2
              #                    free a3
              #                    occupy a3 with temp_301_ele_of_*chas_0_120_0
              #                    store to temp_301_ele_of_*chas_0_120_0 in mem offset legal
    sw      a3,100(sp)
              #                    release a3 with temp_301_ele_of_*chas_0_120_0
              #                    free s1
              #                    free s2
              #                    occupy s2 with temp_322_cmp_120_0
              #                    store to temp_322_cmp_120_0 in mem offset legal
    sb      s2,23(sp)
              #                    release s2 with temp_322_cmp_120_0
              #                     1151 br i1 temp_322_cmp_120_0, label branch_short_circuit_c_true_1075, label branch_short_circuit_c_false_1075 
              #                    occupy a3 with temp_322_cmp_120_0
              #                    load from temp_322_cmp_120_0 in mem


    lb      a3,23(sp)
              #                    free a3
              #                    occupy a3 with temp_322_cmp_120_0
              #                    store to temp_322_cmp_120_0 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_322_cmp_120_0
              #                    occupy a3 with temp_322_cmp_120_0
              #                    load from temp_322_cmp_120_0 in mem


    lb      a3,23(sp)
    bnez    a3, .branch_short_circuit_c_true_1075
              #                    free a3
              #                    occupy a3 with temp_322_cmp_120_0
              #                    store to temp_322_cmp_120_0 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_322_cmp_120_0
              #                    occupy a5 with temp_194_cmp_103_0
              #                    store to temp_194_cmp_103_0 in mem offset legal
    sb      a5,535(sp)
              #                    release a5 with temp_194_cmp_103_0
              #                    occupy a6 with temp_198_cmp_106_0
              #                    store to temp_198_cmp_106_0 in mem offset legal
    sb      a6,519(sp)
              #                    release a6 with temp_198_cmp_106_0
              #                    occupy a4 with temp_190_cmp_100_0
              #                    store to temp_190_cmp_100_0 in mem offset legal
    sb      a4,551(sp)
              #                    release a4 with temp_190_cmp_100_0
              #                    occupy a7 with temp_202_cmp_117_0
              #                    store to temp_202_cmp_117_0 in mem offset legal
    sb      a7,503(sp)
              #                    release a7 with temp_202_cmp_117_0
              #                    occupy a0 with temp_185_ret_of_isdigit_94_0
              #                    store to temp_185_ret_of_isdigit_94_0 in mem offset legal
    sw      a0,568(sp)
              #                    release a0 with temp_185_ret_of_isdigit_94_0
              #                    occupy a2 with temp_186_cmp_94_0
              #                    store to temp_186_cmp_94_0 in mem offset legal
    sb      a2,567(sp)
              #                    release a2 with temp_186_cmp_94_0
              #                    occupy a1 with temp_184_ele_of_*get_0_94_0
              #                    store to temp_184_ele_of_*get_0_94_0 in mem offset legal
    sw      a1,572(sp)
              #                    release a1 with temp_184_ele_of_*get_0_94_0
    j       .branch_short_circuit_c_false_1075
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_116_value_from_ptr_91_0, tracked: true } |     a3:Freed { symidx: temp_117_cmp_91_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     490  label while.exit_92: 
.while.exit_92:
              #                     1541 untrack temp_185_ret_of_isdigit_94_0 
              #                     1540 untrack temp_98_arithop_93_0 
              #                     1539 untrack temp_117_cmp_91_0 
              #                    occupy a3 with temp_117_cmp_91_0
              #                    release a3 with temp_117_cmp_91_0
              #                     1538 untrack temp_109_value_from_ptr_96_0 
              #                     1537 untrack temp_99_ret_of_chapop_108_0 
              #                     1536 untrack temp_116_value_from_ptr_91_0 
              #                    occupy a2 with temp_116_value_from_ptr_91_0
              #                    release a2 with temp_116_value_from_ptr_91_0
              #                     1535 untrack temp_214_cmp_147_0 
              #                     1534 untrack temp_93_value_from_ptr_99_0 
              #                     1533 untrack temp_202_cmp_117_0 
              #                     1532 untrack temp_210_cmp_137_0 
              #                     1531 untrack temp_96_arithop_99_0 
              #                     1530 untrack temp_186_cmp_94_0 
              #                     1529 untrack temp_198_cmp_106_0 
              #                     1528 untrack temp_206_cmp_127_0 
              #                     1527 untrack temp_94_ptr_of_*get2_0_99 
              #                     1526 untrack temp_183_ptr_of_*get_0_94 
              #                     1525 untrack temp_184_ele_of_*get_0_94_0 
              #                     1524 untrack temp_190_cmp_100_0 
              #                     1523 untrack temp_110_ptr_of_*get2_0_96 
              #                     1522 untrack temp_218_cmp_157_0 
              #                     1521 untrack temp_194_cmp_103_0 
              #                     1520 untrack temp_115_arithop_96_0 
              #                     493  temp_118_value_from_ptr_170_0 = load *chat_0:ptr->i32 
              #                    occupy a1 with *chat_0
              #                       load label chat as ptr to reg
    la      a1, chat
              #                    occupy reg a1 with *chat_0
              #                    occupy a2 with temp_118_value_from_ptr_170_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     494  mu chat_0_44:493 
              #                     496  temp_119_cmp_170_0 = icmp i32 Sgt temp_118_value_from_ptr_170_0, 0_0 
              #                    occupy a2 with temp_118_value_from_ptr_170_0
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_119_cmp_170_0
    slt     a4,a3,a2
              #                    free a2
              #                    free a3
              #                    free a4
              #                     499  br i1 temp_119_cmp_170_0, label while.body_171, label while.exit_171 
              #                    occupy a4 with temp_119_cmp_170_0
              #                    free a4
              #                    occupy a4 with temp_119_cmp_170_0
    bnez    a4, .while.body_171
              #                    free a4
    j       .while.exit_171
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     497  label while.body_171: 
.while.body_171:
              #                     373  temp_85_ret_of_chapop_172_0 =  Call i32 chapop_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_54_ret_of_getstr_87_0
              #                    store to temp_54_ret_of_getstr_87_0 in mem offset legal
    sw      a0,1100(sp)
              #                    release a0 with temp_54_ret_of_getstr_87_0
              #                    occupy a2 with temp_118_value_from_ptr_170_0
              #                    store to temp_118_value_from_ptr_170_0 in mem offset legal
    sw      a2,832(sp)
              #                    release a2 with temp_118_value_from_ptr_170_0
              #                    occupy a4 with temp_119_cmp_170_0
              #                    store to temp_119_cmp_170_0 in mem offset legal
    sb      a4,831(sp)
              #                    release a4 with temp_119_cmp_170_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    chapop
              #                     1299 mu chas_0_4:373 
              #                     1300 mu chat_0_44:373 
              #                     1301 chat_0_45 = chi chat_0_44:373 
              #                     374  (nop) 
              #                     377  temp_86_value_from_ptr_172_0 = load *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a2 with temp_86_value_from_ptr_172_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     378  mu ii_0_31:377 
              #                     380  temp_87_ptr_of_*get2_0_172 = GEP *get2_0:ptr->i32 [Some(temp_86_value_from_ptr_172_0)] 
              #                    occupy a3 with temp_87_ptr_of_*get2_0_172
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_86_value_from_ptr_172_0
    mv      a4, a2
              #                    free a2
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *get2_0
              #                       load label get2 as ptr to reg
    la      a5, get2
              #                    occupy reg a5 with *get2_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     381  store 32_0:i32 temp_87_ptr_of_*get2_0_172:ptr->i32 
              #                    occupy a3 with temp_87_ptr_of_*get2_0_172
              #                    occupy a6 with 32_0
    li      a6, 32
    sw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     382  get2_0_34 = chi get2_0_33:381 
              #                     384  (nop) 
              #                     385  mu ii_0_31:384 
              #                     387  temp_89_arithop_172_0 = Add i32 temp_86_value_from_ptr_172_0, 1_0 
              #                    occupy a2 with temp_86_value_from_ptr_172_0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_89_arithop_172_0
    ADDW    s1,a2,a7
              #                    free a2
              #                    free a7
              #                    free s1
              #                     389  temp_90_ptr_of_*get2_0_172 = GEP *get2_0:ptr->i32 [Some(temp_89_arithop_172_0)] 
              #                    occupy s2 with temp_90_ptr_of_*get2_0_172
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with temp_89_arithop_172_0
    mv      s3, s1
              #                    free s1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy s4 with *get2_0
              #                       load label get2 as ptr to reg
    la      s4, get2
              #                    occupy reg s4 with *get2_0
    add     s2,s2,s4
              #                    free s4
              #                    free s2
              #                     390  store temp_85_ret_of_chapop_172_0:i32 temp_90_ptr_of_*get2_0_172:ptr->i32 
              #                    occupy s2 with temp_90_ptr_of_*get2_0_172
              #                    occupy a0 with temp_85_ret_of_chapop_172_0
    sw      a0,0(s2)
              #                    free a0
              #                    free s2
              #                     391  get2_0_35 = chi get2_0_34:390 
              #                     393  (nop) 
              #                     394  mu ii_0_31:393 
              #                     396  temp_92_arithop_172_0 = Add i32 temp_86_value_from_ptr_172_0, 2_0 
              #                    occupy a2 with temp_86_value_from_ptr_172_0
              #                    occupy s4 with 2_0
    li      s4, 2
              #                    occupy s5 with temp_92_arithop_172_0
    ADDW    s5,a2,s4
              #                    free a2
              #                    occupy a2 with temp_86_value_from_ptr_172_0
              #                    store to temp_86_value_from_ptr_172_0 in mem offset legal
    sw      a2,964(sp)
              #                    release a2 with temp_86_value_from_ptr_172_0
              #                    free s4
              #                    free s5
              #                     397  store temp_92_arithop_172_0:i32 *ii_0:ptr->i32 
              #                    occupy a2 with *ii_0
              #                       load label ii as ptr to reg
    la      a2, ii
              #                    occupy reg a2 with *ii_0
              #                    occupy s5 with temp_92_arithop_172_0
    sw      s5,0(a2)
              #                    free s5
              #                    occupy s5 with temp_92_arithop_172_0
              #                    store to temp_92_arithop_172_0 in mem offset legal
    sw      s5,932(sp)
              #                    release s5 with temp_92_arithop_172_0
              #                    free a2
              #                     398  ii_0_32 = chi ii_0_31:397 
              #                          jump label: while.exit_92 
              #                    occupy a3 with temp_87_ptr_of_*get2_0_172
              #                    store to temp_87_ptr_of_*get2_0_172 in mem offset legal
    sd      a3,952(sp)
              #                    release a3 with temp_87_ptr_of_*get2_0_172
              #                    occupy a3 with temp_117_cmp_91_0
              #                    load from temp_117_cmp_91_0 in mem


    lb      a3,839(sp)
              #                    occupy s2 with temp_90_ptr_of_*get2_0_172
              #                    store to temp_90_ptr_of_*get2_0_172 in mem offset legal
    sd      s2,936(sp)
              #                    release s2 with temp_90_ptr_of_*get2_0_172
              #                    occupy a0 with temp_85_ret_of_chapop_172_0
              #                    store to temp_85_ret_of_chapop_172_0 in mem offset legal
    sw      a0,968(sp)
              #                    release a0 with temp_85_ret_of_chapop_172_0
              #                    occupy a0 with temp_54_ret_of_getstr_87_0
              #                    load from temp_54_ret_of_getstr_87_0 in mem


    lw      a0,1100(sp)
              #                    occupy a2 with temp_116_value_from_ptr_91_0
              #                    load from temp_116_value_from_ptr_91_0 in mem


    lw      a2,840(sp)
              #                    occupy s1 with temp_89_arithop_172_0
              #                    store to temp_89_arithop_172_0 in mem offset legal
    sw      s1,948(sp)
              #                    release s1 with temp_89_arithop_172_0
    j       .while.exit_92
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     498  label while.exit_171: 
.while.exit_171:
              #                     272  temp_55_value_from_ptr_87_0 = load *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a3 with temp_55_value_from_ptr_87_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     273  mu ii_0_31:272 
              #                     275  temp_56_ptr_of_*get2_0_87 = GEP *get2_0:ptr->i32 [Some(temp_55_value_from_ptr_87_0)] 
              #                    occupy a5 with temp_56_ptr_of_*get2_0_87
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_55_value_from_ptr_87_0
    mv      a6, a3
              #                    free a3
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a7 with *get2_0
              #                       load label get2 as ptr to reg
    la      a7, get2
              #                    occupy reg a7 with *get2_0
    add     a5,a5,a7
              #                    free a7
              #                    free a5
              #                     2088 untrack temp_55_value_from_ptr_87_0 
              #                    occupy a3 with temp_55_value_from_ptr_87_0
              #                    release a3 with temp_55_value_from_ptr_87_0
              #                     276  store 64_0:i32 temp_56_ptr_of_*get2_0_87:ptr->i32 
              #                    occupy a5 with temp_56_ptr_of_*get2_0_87
              #                    occupy a3 with 64_0
    li      a3, 64
    sw      a3,0(a5)
              #                    free a3
              #                    free a5
              #                     2089 untrack temp_56_ptr_of_*get2_0_87 
              #                    occupy a5 with temp_56_ptr_of_*get2_0_87
              #                    release a5 with temp_56_ptr_of_*get2_0_87
              #                     277  get2_0_36 = chi get2_0_33:276 
              #                     278  store 1_0:i32 *i_0:ptr->i32 
              #                    occupy a5 with *i_0
              #                       load label i as ptr to reg
    la      a5, i
              #                    occupy reg a5 with *i_0
              #                    occupy s1 with 1_0
    li      s1, 1
    sw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                     279  i_0_4 = chi i_0_2:278 
              #                          jump label: while.head_180 
    j       .while.head_180
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     510  label while.head_180: 
.while.head_180:
              #                     501  temp_120_value_from_ptr_179_0 = load *i_0:ptr->i32 
              #                    occupy a1 with *i_0
              #                       load label i as ptr to reg
    la      a1, i
              #                    occupy reg a1 with *i_0
              #                    occupy a3 with temp_120_value_from_ptr_179_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     502  mu i_0_5:501 
              #                     504  temp_121_ptr_of_*get2_0_179 = GEP *get2_0:Array:i32:[None] [Some(temp_120_value_from_ptr_179_0)] 
              #                    occupy a5 with temp_121_ptr_of_*get2_0_179
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_120_value_from_ptr_179_0
    mv      a6, a3
              #                    free a3
              #                    occupy a3 with temp_120_value_from_ptr_179_0
              #                    store to temp_120_value_from_ptr_179_0 in mem offset legal
    sw      a3,824(sp)
              #                    release a3 with temp_120_value_from_ptr_179_0
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a3 with *get2_0
              #                       load label get2 as ptr to reg
    la      a3, get2
              #                    occupy reg a3 with *get2_0
    add     a5,a5,a3
              #                    free a3
              #                    free a5
              #                     506  temp_122_ele_of_*get2_0_179_0 = load temp_121_ptr_of_*get2_0_179:ptr->i32 
              #                    occupy a5 with temp_121_ptr_of_*get2_0_179
              #                    occupy a3 with temp_122_ele_of_*get2_0_179_0
    lw      a3,0(a5)
              #                    free a3
              #                    occupy a3 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a3,812(sp)
              #                    release a3 with temp_122_ele_of_*get2_0_179_0
              #                    free a5
              #                     507  mu get2_0_36:506 
              #                     509  temp_123_cmp_179_0 = icmp i32 Ne temp_122_ele_of_*get2_0_179_0, 64_0 
              #                    occupy a3 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a3,812(sp)
              #                    occupy a6 with 64_0
    li      a6, 64
              #                    occupy a7 with temp_123_cmp_179_0
    xor     a7,a3,a6
    snez    a7, a7
              #                    free a3
              #                    occupy a3 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a3,812(sp)
              #                    release a3 with temp_122_ele_of_*get2_0_179_0
              #                    free a6
              #                    free a7
              #                    occupy a7 with temp_123_cmp_179_0
              #                    store to temp_123_cmp_179_0 in mem offset legal
    sb      a7,811(sp)
              #                    release a7 with temp_123_cmp_179_0
              #                     513  br i1 temp_123_cmp_179_0, label while.body_180, label while.exit_180 
              #                    occupy a3 with temp_123_cmp_179_0
              #                    load from temp_123_cmp_179_0 in mem


    lb      a3,811(sp)
              #                    free a3
              #                    occupy a3 with temp_123_cmp_179_0
              #                    store to temp_123_cmp_179_0 in mem offset legal
    sb      a3,811(sp)
              #                    release a3 with temp_123_cmp_179_0
              #                    occupy a1 with temp_123_cmp_179_0
              #                    load from temp_123_cmp_179_0 in mem


    lb      a1,811(sp)
    bnez    a1, .while.body_180
              #                    free a1
              #                    occupy a1 with temp_123_cmp_179_0
              #                    store to temp_123_cmp_179_0 in mem offset legal
    sb      a1,811(sp)
              #                    release a1 with temp_123_cmp_179_0
    j       .while.exit_180
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |     a5:Freed { symidx: temp_121_ptr_of_*get2_0_179, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     511  label while.body_180: 
.while.body_180:
              #                     517  (nop) 
              #                     518  mu i_0_5:517 
              #                     520  (nop) 
              #                     522  (nop) 
              #                     523  mu get2_0_36:522 
              #                     525  temp_127_cmp_182_0 = icmp i32 Eq temp_122_ele_of_*get2_0_179_0, 43_0 
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a1,812(sp)
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    occupy a6 with temp_127_cmp_182_0
    xor     a6,a1,a3
    seqz    a6, a6
              #                    free a1
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a1,812(sp)
              #                    release a1 with temp_122_ele_of_*get2_0_179_0
              #                    free a3
              #                    free a6
              #                    occupy a6 with temp_127_cmp_182_0
              #                    store to temp_127_cmp_182_0 in mem offset legal
    sb      a6,799(sp)
              #                    release a6 with temp_127_cmp_182_0
              #                     593  br i1 temp_127_cmp_182_0, label branch_short_circuit_c_true_848, label branch_short_circuit_p_false_820 
              #                    occupy a1 with temp_127_cmp_182_0
              #                    load from temp_127_cmp_182_0 in mem


    lb      a1,799(sp)
              #                    free a1
              #                    occupy a1 with temp_127_cmp_182_0
              #                    store to temp_127_cmp_182_0 in mem offset legal
    sb      a1,799(sp)
              #                    release a1 with temp_127_cmp_182_0
              #                    occupy a1 with temp_127_cmp_182_0
              #                    load from temp_127_cmp_182_0 in mem


    lb      a1,799(sp)
    bnez    a1, .branch_short_circuit_c_true_848
              #                    free a1
              #                    occupy a1 with temp_127_cmp_182_0
              #                    store to temp_127_cmp_182_0 in mem offset legal
    sb      a1,799(sp)
              #                    release a1 with temp_127_cmp_182_0
    j       .branch_short_circuit_p_false_820
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |     a5:Freed { symidx: temp_121_ptr_of_*get2_0_179, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     576  label branch_short_circuit_c_true_848: 
.branch_short_circuit_c_true_848:
              #                     2209 untrack temp_120_value_from_ptr_179_0 
              #                     2208 untrack temp_147_cmp_182_0 
              #                     2207 untrack temp_131_cmp_182_0 
              #                     2206 untrack temp_139_cmp_182_0 
              #                     2205 untrack temp_68_arithop_210_0 
              #                     2204 untrack temp_123_cmp_179_0 
              #                     2203 untrack temp_151_cmp_208_0 
              #                     2202 untrack temp_121_ptr_of_*get2_0_179 
              #                    occupy a5 with temp_121_ptr_of_*get2_0_179
              #                    release a5 with temp_121_ptr_of_*get2_0_179
              #                     2201 untrack temp_135_cmp_182_0 
              #                     2200 untrack temp_143_cmp_182_0 
              #                     2199 untrack temp_64_arithop_210_0 
              #                     2198 untrack temp_120_value_from_ptr_179_0 
              #                     2197 untrack temp_151_cmp_208_0 
              #                     2196 untrack temp_135_cmp_182_0 
              #                     2195 untrack temp_64_arithop_210_0 
              #                     2194 untrack temp_68_arithop_210_0 
              #                     2193 untrack temp_139_cmp_182_0 
              #                     2192 untrack temp_121_ptr_of_*get2_0_179 
              #                     2191 untrack temp_143_cmp_182_0 
              #                     2190 untrack temp_131_cmp_182_0 
              #                     2189 untrack temp_147_cmp_182_0 
              #                     2188 untrack temp_123_cmp_179_0 
              #                     2187 untrack temp_64_arithop_210_0 
              #                     2186 untrack temp_139_cmp_182_0 
              #                     2185 untrack temp_68_arithop_210_0 
              #                     2184 untrack temp_151_cmp_208_0 
              #                     2183 untrack temp_123_cmp_179_0 
              #                     2182 untrack temp_143_cmp_182_0 
              #                     2181 untrack temp_120_value_from_ptr_179_0 
              #                     2180 untrack temp_147_cmp_182_0 
              #                     2179 untrack temp_135_cmp_182_0 
              #                     2178 untrack temp_131_cmp_182_0 
              #                     2177 untrack temp_121_ptr_of_*get2_0_179 
              #                     2176 untrack temp_131_cmp_182_0 
              #                     2175 untrack temp_121_ptr_of_*get2_0_179 
              #                     2174 untrack temp_64_arithop_210_0 
              #                     2173 untrack temp_68_arithop_210_0 
              #                     2172 untrack temp_143_cmp_182_0 
              #                     2171 untrack temp_120_value_from_ptr_179_0 
              #                     2170 untrack temp_123_cmp_179_0 
              #                     2169 untrack temp_147_cmp_182_0 
              #                     2168 untrack temp_139_cmp_182_0 
              #                     2167 untrack temp_151_cmp_208_0 
              #                     2166 untrack temp_135_cmp_182_0 
              #                     2165 untrack temp_135_cmp_182_0 
              #                     2164 untrack temp_131_cmp_182_0 
              #                     2163 untrack temp_64_arithop_210_0 
              #                     2162 untrack temp_121_ptr_of_*get2_0_179 
              #                     2161 untrack temp_143_cmp_182_0 
              #                     2160 untrack temp_123_cmp_179_0 
              #                     2159 untrack temp_68_arithop_210_0 
              #                     2158 untrack temp_151_cmp_208_0 
              #                     2157 untrack temp_120_value_from_ptr_179_0 
              #                     2156 untrack temp_147_cmp_182_0 
              #                     2155 untrack temp_139_cmp_182_0 
              #                     2100 untrack temp_143_cmp_182_0 
              #                     2099 untrack temp_151_cmp_208_0 
              #                     2098 untrack temp_68_arithop_210_0 
              #                     2097 untrack temp_123_cmp_179_0 
              #                     2096 untrack temp_121_ptr_of_*get2_0_179 
              #                     2095 untrack temp_131_cmp_182_0 
              #                     2094 untrack temp_147_cmp_182_0 
              #                     2093 untrack temp_64_arithop_210_0 
              #                     2092 untrack temp_139_cmp_182_0 
              #                     2091 untrack temp_135_cmp_182_0 
              #                     2090 untrack temp_120_value_from_ptr_179_0 
              #                     344  temp_77_ret_of_intpop_184_0 =  Call i32 intpop_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_54_ret_of_getstr_87_0
              #                    store to temp_54_ret_of_getstr_87_0 in mem offset legal
    sw      a0,1100(sp)
              #                    release a0 with temp_54_ret_of_getstr_87_0
              #                    occupy a2 with temp_118_value_from_ptr_170_0
              #                    store to temp_118_value_from_ptr_170_0 in mem offset legal
    sw      a2,832(sp)
              #                    release a2 with temp_118_value_from_ptr_170_0
              #                    occupy a4 with temp_119_cmp_170_0
              #                    store to temp_119_cmp_170_0 in mem offset legal
    sb      a4,831(sp)
              #                    release a4 with temp_119_cmp_170_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    intpop
              #                     1302 mu ints_0_7:344 
              #                     1303 mu intt_0_7:344 
              #                     1304 intt_0_8 = chi intt_0_7:344 
              #                     345  (nop) 
              #                     348  temp_78_ret_of_intpop_184_0 =  Call i32 intpop_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_77_ret_of_intpop_184_0
              #                    store to temp_77_ret_of_intpop_184_0 in mem offset legal
    sw      a0,1028(sp)
              #                    release a0 with temp_77_ret_of_intpop_184_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    intpop
              #                     1305 mu ints_0_7:348 
              #                     1306 mu intt_0_8:348 
              #                     1307 intt_0_9 = chi intt_0_8:348 
              #                     349  (nop) 
              #                     352   
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     628  (nop) 
              #                     629  mu i_0_5:628 
              #                     631  (nop) 
              #                     633  (nop) 
              #                     634  mu get2_0_36:633 
              #                     636  (nop) 
              #                     639  br i1 temp_127_cmp_182_0, label branch_true_189, label UP_42_0 
              #                    occupy a1 with temp_127_cmp_182_0
              #                    load from temp_127_cmp_182_0 in mem


    lb      a1,799(sp)
              #                    free a1
              #                    occupy a1 with temp_127_cmp_182_0
    bnez    a1, .branch_true_189
              #                    free a1
    j       .UP_42_0
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_127_cmp_182_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     637  label branch_true_189: 
.branch_true_189:
              #                     2104 untrack temp_60_arithop_181_0 
              #                     2103 untrack temp_59_value_from_ptr_181_0 
              #                     2102 untrack c_184_0 
              #                     2101 untrack temp_127_cmp_182_0 
              #                    occupy a1 with temp_127_cmp_182_0
              #                    release a1 with temp_127_cmp_182_0
              #                     370  temp_84_arithop_188_0 = Add i32 temp_77_ret_of_intpop_184_0, temp_78_ret_of_intpop_184_0 
              #                    occupy a1 with temp_77_ret_of_intpop_184_0
              #                    load from temp_77_ret_of_intpop_184_0 in mem


    lw      a1,1028(sp)
              #                    occupy a0 with temp_78_ret_of_intpop_184_0
              #                    occupy a2 with temp_84_arithop_188_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     371  (nop) 
              #                     1457 c_184_2 = i32 temp_84_arithop_188_0 
              #                    occupy a2 with temp_84_arithop_188_0
              #                    occupy a3 with c_184_2
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                     2107 untrack temp_84_arithop_188_0 
              #                    occupy a2 with temp_84_arithop_188_0
              #                    release a2 with temp_84_arithop_188_0
              #                          jump label: branch_false_189 
    j       .branch_false_189
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_2, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     638  label branch_false_189: 
.branch_false_189:
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_2, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     641  (nop) 
              #                     642  mu i_0_5:641 
              #                     644  (nop) 
              #                     646  (nop) 
              #                     647  mu get2_0_36:646 
              #                     649  temp_165_cmp_191_0 = icmp i32 Eq temp_122_ele_of_*get2_0_179_0, 45_0 
              #                    occupy a2 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a2,812(sp)
              #                    occupy a4 with 45_0
    li      a4, 45
              #                    occupy a5 with temp_165_cmp_191_0
    xor     a5,a2,a4
    seqz    a5, a5
              #                    free a2
              #                    occupy a2 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a2,812(sp)
              #                    release a2 with temp_122_ele_of_*get2_0_179_0
              #                    free a4
              #                    free a5
              #                     652  br i1 temp_165_cmp_191_0, label branch_true_192, label UP_35_0 
              #                    occupy a5 with temp_165_cmp_191_0
              #                    free a5
              #                    occupy a5 with temp_165_cmp_191_0
    bnez    a5, .branch_true_192
              #                    free a5
    j       .UP_35_0
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_2, tracked: true } |     a5:Freed { symidx: temp_165_cmp_191_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     650  label branch_true_192: 
.branch_true_192:
              #                     2111 untrack temp_165_cmp_191_0 
              #                    occupy a5 with temp_165_cmp_191_0
              #                    release a5 with temp_165_cmp_191_0
              #                     2110 untrack temp_60_arithop_181_0 
              #                     2109 untrack temp_59_value_from_ptr_181_0 
              #                     2108 untrack c_184_2 
              #                    occupy a3 with c_184_2
              #                    release a3 with c_184_2
              #                     367  temp_83_arithop_191_0 = Sub i32 temp_78_ret_of_intpop_184_0, temp_77_ret_of_intpop_184_0 
              #                    occupy a0 with temp_78_ret_of_intpop_184_0
              #                    occupy a1 with temp_77_ret_of_intpop_184_0
              #                    occupy a2 with temp_83_arithop_191_0
              #                    regtab:    a0:Occupied { symidx: temp_78_ret_of_intpop_184_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_77_ret_of_intpop_184_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_83_arithop_191_0, tracked: true, occupy_count: 1 } |  released_gpr_count:6,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     368  (nop) 
              #                     1458 c_184_4 = i32 temp_83_arithop_191_0 
              #                    occupy a2 with temp_83_arithop_191_0
              #                    occupy a3 with c_184_4
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                     2114 untrack temp_83_arithop_191_0 
              #                    occupy a2 with temp_83_arithop_191_0
              #                    release a2 with temp_83_arithop_191_0
              #                          jump label: branch_false_192 
    j       .branch_false_192
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_4, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     651  label branch_false_192: 
.branch_false_192:
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_4, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L12_0: 
.L12_0:
              #                     654  (nop) 
              #                     655  mu i_0_5:654 
              #                     657  (nop) 
              #                     659  (nop) 
              #                     660  mu get2_0_36:659 
              #                     662  temp_169_cmp_194_0 = icmp i32 Eq temp_122_ele_of_*get2_0_179_0, 42_0 
              #                    occupy a2 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a2,812(sp)
              #                    occupy a4 with 42_0
    li      a4, 42
              #                    occupy a5 with temp_169_cmp_194_0
    xor     a5,a2,a4
    seqz    a5, a5
              #                    free a2
              #                    occupy a2 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a2,812(sp)
              #                    release a2 with temp_122_ele_of_*get2_0_179_0
              #                    free a4
              #                    free a5
              #                     665  br i1 temp_169_cmp_194_0, label branch_true_195, label UP_29_0 
              #                    occupy a5 with temp_169_cmp_194_0
              #                    free a5
              #                    occupy a5 with temp_169_cmp_194_0
    bnez    a5, .branch_true_195
              #                    free a5
    j       .UP_29_0
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_4, tracked: true } |     a5:Freed { symidx: temp_169_cmp_194_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     663  label branch_true_195: 
.branch_true_195:
              #                     2118 untrack c_184_4 
              #                    occupy a3 with c_184_4
              #                    release a3 with c_184_4
              #                     2117 untrack temp_60_arithop_181_0 
              #                     2116 untrack temp_169_cmp_194_0 
              #                    occupy a5 with temp_169_cmp_194_0
              #                    release a5 with temp_169_cmp_194_0
              #                     2115 untrack temp_59_value_from_ptr_181_0 
              #                     364  temp_82_arithop_194_0 = Mul i32 temp_77_ret_of_intpop_184_0, temp_78_ret_of_intpop_184_0 
              #                    occupy a2 with temp_82_arithop_194_0
              #                    occupy a1 with temp_77_ret_of_intpop_184_0
              #                    occupy a0 with temp_78_ret_of_intpop_184_0
    mulw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     365  (nop) 
              #                     1459 c_184_6 = i32 temp_82_arithop_194_0 
              #                    occupy a2 with temp_82_arithop_194_0
              #                    occupy a3 with c_184_6
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                     2121 untrack temp_82_arithop_194_0 
              #                    occupy a2 with temp_82_arithop_194_0
              #                    release a2 with temp_82_arithop_194_0
              #                          jump label: branch_false_195 
    j       .branch_false_195
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_6, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     664  label branch_false_195: 
.branch_false_195:
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_6, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L13_0: 
.L13_0:
              #                     667  (nop) 
              #                     668  mu i_0_5:667 
              #                     670  (nop) 
              #                     672  (nop) 
              #                     673  mu get2_0_36:672 
              #                     675  temp_173_cmp_197_0 = icmp i32 Eq temp_122_ele_of_*get2_0_179_0, 47_0 
              #                    occupy a2 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a2,812(sp)
              #                    occupy a4 with 47_0
    li      a4, 47
              #                    occupy a5 with temp_173_cmp_197_0
    xor     a5,a2,a4
    seqz    a5, a5
              #                    free a2
              #                    occupy a2 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a2,812(sp)
              #                    release a2 with temp_122_ele_of_*get2_0_179_0
              #                    free a4
              #                    free a5
              #                     678  br i1 temp_173_cmp_197_0, label branch_true_198, label UP_26_0 
              #                    occupy a5 with temp_173_cmp_197_0
              #                    free a5
              #                    occupy a5 with temp_173_cmp_197_0
    bnez    a5, .branch_true_198
              #                    free a5
    j       .UP_26_0
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_6, tracked: true } |     a5:Freed { symidx: temp_173_cmp_197_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     676  label branch_true_198: 
.branch_true_198:
              #                     2125 untrack c_184_6 
              #                    occupy a3 with c_184_6
              #                    release a3 with c_184_6
              #                     2124 untrack temp_173_cmp_197_0 
              #                    occupy a5 with temp_173_cmp_197_0
              #                    release a5 with temp_173_cmp_197_0
              #                     2123 untrack temp_59_value_from_ptr_181_0 
              #                     2122 untrack temp_60_arithop_181_0 
              #                     361  temp_81_arithop_197_0 = Div i32 temp_78_ret_of_intpop_184_0, temp_77_ret_of_intpop_184_0 
              #                    occupy a0 with temp_78_ret_of_intpop_184_0
              #                    occupy a1 with temp_77_ret_of_intpop_184_0
              #                    occupy a2 with temp_81_arithop_197_0
    divw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     362  (nop) 
              #                     1460 c_184_8 = i32 temp_81_arithop_197_0 
              #                    occupy a2 with temp_81_arithop_197_0
              #                    occupy a3 with c_184_8
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                     2128 untrack temp_81_arithop_197_0 
              #                    occupy a2 with temp_81_arithop_197_0
              #                    release a2 with temp_81_arithop_197_0
              #                          jump label: branch_false_198 
    j       .branch_false_198
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_8, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     677  label branch_false_198: 
.branch_false_198:
              #                          jump label: L14_0 
    j       .L14_0
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_8, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L14_0: 
.L14_0:
              #                     680  (nop) 
              #                     681  mu i_0_5:680 
              #                     683  (nop) 
              #                     685  (nop) 
              #                     686  mu get2_0_36:685 
              #                     688  temp_177_cmp_200_0 = icmp i32 Eq temp_122_ele_of_*get2_0_179_0, 37_0 
              #                    occupy a2 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a2,812(sp)
              #                    occupy a4 with 37_0
    li      a4, 37
              #                    occupy a5 with temp_177_cmp_200_0
    xor     a5,a2,a4
    seqz    a5, a5
              #                    free a2
              #                    occupy a2 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a2,812(sp)
              #                    release a2 with temp_122_ele_of_*get2_0_179_0
              #                    free a4
              #                    free a5
              #                     691  br i1 temp_177_cmp_200_0, label branch_true_201, label UP_14_0 
              #                    occupy a5 with temp_177_cmp_200_0
              #                    free a5
              #                    occupy a5 with temp_177_cmp_200_0
    bnez    a5, .branch_true_201
              #                    free a5
    j       .UP_14_0
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_8, tracked: true } |     a5:Freed { symidx: temp_177_cmp_200_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     689  label branch_true_201: 
.branch_true_201:
              #                     2132 untrack temp_60_arithop_181_0 
              #                     2131 untrack temp_177_cmp_200_0 
              #                    occupy a5 with temp_177_cmp_200_0
              #                    release a5 with temp_177_cmp_200_0
              #                     2130 untrack temp_59_value_from_ptr_181_0 
              #                     2129 untrack c_184_8 
              #                    occupy a3 with c_184_8
              #                    release a3 with c_184_8
              #                     358  temp_80_arithop_200_0 = Mod i32 temp_78_ret_of_intpop_184_0, temp_77_ret_of_intpop_184_0 
              #                    occupy a0 with temp_78_ret_of_intpop_184_0
              #                    occupy a1 with temp_77_ret_of_intpop_184_0
              #                    occupy a2 with temp_80_arithop_200_0
    rem     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     359  (nop) 
              #                     1461 c_184_10 = i32 temp_80_arithop_200_0 
              #                    occupy a2 with temp_80_arithop_200_0
              #                    occupy a3 with c_184_10
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                     2135 untrack temp_80_arithop_200_0 
              #                    occupy a2 with temp_80_arithop_200_0
              #                    release a2 with temp_80_arithop_200_0
              #                          jump label: branch_false_201 
    j       .branch_false_201
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_10, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     690  label branch_false_201: 
.branch_false_201:
              #                          jump label: L15_0 
    j       .L15_0
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_10, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L15_0: 
.L15_0:
              #                     693  (nop) 
              #                     694  mu i_0_5:693 
              #                     696  (nop) 
              #                     698  (nop) 
              #                     699  mu get2_0_36:698 
              #                     701  temp_181_cmp_203_0 = icmp i32 Eq temp_122_ele_of_*get2_0_179_0, 94_0 
              #                    occupy a2 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a2,812(sp)
              #                    occupy a4 with 94_0
    li      a4, 94
              #                    occupy a5 with temp_181_cmp_203_0
    xor     a5,a2,a4
    seqz    a5, a5
              #                    free a2
              #                    occupy a2 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a2,812(sp)
              #                    release a2 with temp_122_ele_of_*get2_0_179_0
              #                    free a4
              #                    free a5
              #                     2136 untrack temp_122_ele_of_*get2_0_179_0 
              #                     704  br i1 temp_181_cmp_203_0, label branch_true_204, label UP_8_0 
              #                    occupy a5 with temp_181_cmp_203_0
              #                    free a5
              #                    occupy a5 with temp_181_cmp_203_0
    bnez    a5, .branch_true_204
              #                    free a5
    j       .UP_8_0
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_10, tracked: true } |     a5:Freed { symidx: temp_181_cmp_203_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     702  label branch_true_204: 
.branch_true_204:
              #                     2140 untrack temp_59_value_from_ptr_181_0 
              #                     2139 untrack c_184_10 
              #                    occupy a3 with c_184_10
              #                    release a3 with c_184_10
              #                     2138 untrack temp_60_arithop_181_0 
              #                     2137 untrack temp_181_cmp_203_0 
              #                    occupy a5 with temp_181_cmp_203_0
              #                    release a5 with temp_181_cmp_203_0
              #                     355  temp_79_ret_of_power_203_0 =  Call i32 power_0(temp_78_ret_of_intpop_184_0, temp_77_ret_of_intpop_184_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_78_ret_of_intpop_184_0
              #                    store to temp_78_ret_of_intpop_184_0 in mem offset legal
    sw      a0,1024(sp)
              #                    release a0 with temp_78_ret_of_intpop_184_0
              #                    occupy a1 with temp_77_ret_of_intpop_184_0
              #                    store to temp_77_ret_of_intpop_184_0 in mem offset legal
    sw      a1,1028(sp)
              #                    release a1 with temp_77_ret_of_intpop_184_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_78_ret_of_intpop_184_0_0
              #                    load from temp_78_ret_of_intpop_184_0 in mem


    lw      a0,1024(sp)
              #                    occupy a1 with _anonymous_of_temp_77_ret_of_intpop_184_0_0
              #                    load from temp_77_ret_of_intpop_184_0 in mem


    lw      a1,1028(sp)
              #                    arg load ended


    call    power
              #                     2147 untrack temp_77_ret_of_intpop_184_0 
              #                     2146 untrack temp_78_ret_of_intpop_184_0 
              #                     356  (nop) 
              #                     1462 c_184_12 = i32 temp_79_ret_of_power_203_0 
              #                    occupy a0 with temp_79_ret_of_power_203_0
              #                    occupy a1 with c_184_12
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     2145 untrack temp_79_ret_of_power_203_0 
              #                    occupy a0 with temp_79_ret_of_power_203_0
              #                    release a0 with temp_79_ret_of_power_203_0
              #                          jump label: branch_false_204 
    j       .branch_false_204
              #                    regtab     a1:Freed { symidx: c_184_12, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     703  label branch_false_204: 
.branch_false_204:
              #                          jump label: L16_0 
    j       .L16_0
              #                    regtab     a1:Freed { symidx: c_184_12, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                          label L16_0: 
.L16_0:
              #                     353   Call void intpush_0(c_184_12) 
              #                    saved register dumping to mem
              #                    occupy a1 with c_184_12
              #                    store to c_184_12 in mem offset legal
    sw      a1,996(sp)
              #                    release a1 with c_184_12
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_c_184_12_0
              #                    load from c_184_12 in mem


    lw      a0,996(sp)
              #                    arg load ended


    call    intpush
              #                     2148 untrack c_184_12 
              #                     1308 mu ints_0_7:353 
              #                     1309 mu intt_0_9:353 
              #                     1310 intt_0_10 = chi intt_0_9:353 
              #                     1311 ints_0_8 = chi ints_0_7:353 
              #                          jump label: gather_126 
    j       .gather_126
              #                    regtab  released_gpr_count:9,released_fpr_count:24
              #                     607  label gather_126: 
.gather_126:
              #                          jump label: L17_0 
    j       .L17_0
              #                    regtab  released_gpr_count:9,released_fpr_count:24
              #                          label L17_0: 
.L17_0:
              #                     289  temp_59_value_from_ptr_181_0 = load *i_0:ptr->i32 
              #                    occupy a0 with *i_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy reg a0 with *i_0
              #                    occupy a1 with temp_59_value_from_ptr_181_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     290  mu i_0_6:289 
              #                     292  temp_60_arithop_181_0 = Add i32 temp_59_value_from_ptr_181_0, 1_0 
              #                    occupy a1 with temp_59_value_from_ptr_181_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_60_arithop_181_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     293  store temp_60_arithop_181_0:i32 *i_0:ptr->i32 
              #                    occupy a4 with *i_0
              #                       load label i as ptr to reg
    la      a4, i
              #                    occupy reg a4 with *i_0
              #                    occupy a3 with temp_60_arithop_181_0
    sw      a3,0(a4)
              #                    free a3
              #                    occupy a3 with temp_60_arithop_181_0
              #                    store to temp_60_arithop_181_0 in mem offset legal
    sw      a3,1068(sp)
              #                    release a3 with temp_60_arithop_181_0
              #                    free a4
              #                     294  i_0_7 = chi i_0_6:293 
              #                          jump label: while.head_180 
              #                    occupy a4 with temp_119_cmp_170_0
              #                    load from temp_119_cmp_170_0 in mem


    lb      a4,831(sp)
              #                    occupy a0 with temp_54_ret_of_getstr_87_0
              #                    load from temp_54_ret_of_getstr_87_0 in mem


    lw      a0,1100(sp)
              #                    occupy a2 with temp_118_value_from_ptr_170_0
              #                    load from temp_118_value_from_ptr_170_0 in mem


    lw      a2,832(sp)
              #                    occupy a1 with temp_59_value_from_ptr_181_0
              #                    store to temp_59_value_from_ptr_181_0 in mem offset legal
    sw      a1,1072(sp)
              #                    release a1 with temp_59_value_from_ptr_181_0
    j       .while.head_180
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_10, tracked: true } |     a5:Freed { symidx: temp_181_cmp_203_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1456 label UP_8_0: 
.UP_8_0:
              #                     2144 untrack temp_78_ret_of_intpop_184_0 
              #                    occupy a0 with temp_78_ret_of_intpop_184_0
              #                    release a0 with temp_78_ret_of_intpop_184_0
              #                     2143 untrack temp_77_ret_of_intpop_184_0 
              #                    occupy a1 with temp_77_ret_of_intpop_184_0
              #                    release a1 with temp_77_ret_of_intpop_184_0
              #                     2142 untrack temp_79_ret_of_power_203_0 
              #                     2141 untrack temp_181_cmp_203_0 
              #                    occupy a5 with temp_181_cmp_203_0
              #                    release a5 with temp_181_cmp_203_0
              #                     1463 c_184_12 = i32 c_184_10 
              #                    occupy a3 with c_184_10
              #                    occupy a0 with c_184_12
    mv      a0, a3
              #                    free a3
              #                    free a0
              #                     2149 untrack c_184_10 
              #                    occupy a3 with c_184_10
              #                    release a3 with c_184_10
              #                          jump label: branch_false_204 
              #                    occupy a0 with c_184_12
              #                    store to c_184_12 in mem offset legal
    sw      a0,996(sp)
              #                    release a0 with c_184_12
              #                    occupy a1 with c_184_12
              #                    load from c_184_12 in mem


    lw      a1,996(sp)
    j       .branch_false_204
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_8, tracked: true } |     a5:Freed { symidx: temp_177_cmp_200_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1455 label UP_14_0: 
.UP_14_0:
              #                     2134 untrack temp_177_cmp_200_0 
              #                    occupy a5 with temp_177_cmp_200_0
              #                    release a5 with temp_177_cmp_200_0
              #                     2133 untrack temp_80_arithop_200_0 
              #                     1464 c_184_10 = i32 c_184_8 
              #                    occupy a3 with c_184_8
              #                    occupy a2 with c_184_10
    mv      a2, a3
              #                    free a3
              #                    free a2
              #                     2150 untrack c_184_8 
              #                    occupy a3 with c_184_8
              #                    release a3 with c_184_8
              #                          jump label: branch_false_201 
              #                    occupy a2 with c_184_10
              #                    store to c_184_10 in mem offset legal
    sw      a2,1000(sp)
              #                    release a2 with c_184_10
              #                    occupy a3 with c_184_10
              #                    load from c_184_10 in mem


    lw      a3,1000(sp)
    j       .branch_false_201
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_6, tracked: true } |     a5:Freed { symidx: temp_173_cmp_197_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1454 label UP_26_0: 
.UP_26_0:
              #                     2127 untrack temp_81_arithop_197_0 
              #                     2126 untrack temp_173_cmp_197_0 
              #                    occupy a5 with temp_173_cmp_197_0
              #                    release a5 with temp_173_cmp_197_0
              #                     1465 c_184_8 = i32 c_184_6 
              #                    occupy a3 with c_184_6
              #                    occupy a2 with c_184_8
    mv      a2, a3
              #                    free a3
              #                    free a2
              #                     2151 untrack c_184_6 
              #                    occupy a3 with c_184_6
              #                    release a3 with c_184_6
              #                          jump label: branch_false_198 
              #                    occupy a2 with c_184_8
              #                    store to c_184_8 in mem offset legal
    sw      a2,1004(sp)
              #                    release a2 with c_184_8
              #                    occupy a3 with c_184_8
              #                    load from c_184_8 in mem


    lw      a3,1004(sp)
    j       .branch_false_198
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_4, tracked: true } |     a5:Freed { symidx: temp_169_cmp_194_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1453 label UP_29_0: 
.UP_29_0:
              #                     2120 untrack temp_82_arithop_194_0 
              #                     2119 untrack temp_169_cmp_194_0 
              #                    occupy a5 with temp_169_cmp_194_0
              #                    release a5 with temp_169_cmp_194_0
              #                     1466 c_184_6 = i32 c_184_4 
              #                    occupy a3 with c_184_4
              #                    occupy a2 with c_184_6
    mv      a2, a3
              #                    free a3
              #                    free a2
              #                     2152 untrack c_184_4 
              #                    occupy a3 with c_184_4
              #                    release a3 with c_184_4
              #                          jump label: branch_false_195 
              #                    occupy a2 with c_184_6
              #                    store to c_184_6 in mem offset legal
    sw      a2,1008(sp)
              #                    release a2 with c_184_6
              #                    occupy a3 with c_184_6
              #                    load from c_184_6 in mem


    lw      a3,1008(sp)
    j       .branch_false_195
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_77_ret_of_intpop_184_0, tracked: true } |     a3:Freed { symidx: c_184_2, tracked: true } |     a5:Freed { symidx: temp_165_cmp_191_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1452 label UP_35_0: 
.UP_35_0:
              #                     2113 untrack temp_165_cmp_191_0 
              #                    occupy a5 with temp_165_cmp_191_0
              #                    release a5 with temp_165_cmp_191_0
              #                     2112 untrack temp_83_arithop_191_0 
              #                     1467 c_184_4 = i32 c_184_2 
              #                    occupy a3 with c_184_2
              #                    occupy a2 with c_184_4
    mv      a2, a3
              #                    free a3
              #                    free a2
              #                     2153 untrack c_184_2 
              #                    occupy a3 with c_184_2
              #                    release a3 with c_184_2
              #                          jump label: branch_false_192 
              #                    occupy a2 with c_184_4
              #                    store to c_184_4 in mem offset legal
    sw      a2,1012(sp)
              #                    release a2 with c_184_4
              #                    occupy a3 with c_184_4
              #                    load from c_184_4 in mem


    lw      a3,1012(sp)
    j       .branch_false_192
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_intpop_184_0, tracked: true } |     a1:Freed { symidx: temp_127_cmp_182_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     1451 label UP_42_0: 
.UP_42_0:
              #                     2106 untrack temp_84_arithop_188_0 
              #                     2105 untrack temp_127_cmp_182_0 
              #                    occupy a1 with temp_127_cmp_182_0
              #                    release a1 with temp_127_cmp_182_0
              #                     1468 c_184_2 = i32 c_184_0 
              #                    occupy a1 with c_184_0
              #                    load from c_184_0 in mem


    lw      a1,1020(sp)
              #                    occupy a2 with c_184_2
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     2154 untrack c_184_0 
              #                    occupy a1 with c_184_0
              #                    release a1 with c_184_0
              #                          jump label: branch_false_189 
              #                    occupy a2 with c_184_2
              #                    store to c_184_2 in mem offset legal
    sw      a2,1016(sp)
              #                    release a2 with c_184_2
              #                    occupy a3 with c_184_2
              #                    load from c_184_2 in mem


    lw      a3,1016(sp)
              #                    occupy a1 with temp_77_ret_of_intpop_184_0
              #                    load from temp_77_ret_of_intpop_184_0 in mem


    lw      a1,1028(sp)
    j       .branch_false_189
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |     a5:Freed { symidx: temp_121_ptr_of_*get2_0_179, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     590  label branch_short_circuit_p_false_820: 
.branch_short_circuit_p_false_820:
              #                     527  (nop) 
              #                     528  mu i_0_5:527 
              #                     530  (nop) 
              #                     532  (nop) 
              #                     533  mu get2_0_36:532 
              #                     535  temp_131_cmp_182_0 = icmp i32 Eq temp_122_ele_of_*get2_0_179_0, 45_0 
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a1,812(sp)
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    occupy a6 with temp_131_cmp_182_0
    xor     a6,a1,a3
    seqz    a6, a6
              #                    free a1
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a1,812(sp)
              #                    release a1 with temp_122_ele_of_*get2_0_179_0
              #                    free a3
              #                    free a6
              #                    occupy a6 with temp_131_cmp_182_0
              #                    store to temp_131_cmp_182_0 in mem offset legal
    sb      a6,783(sp)
              #                    release a6 with temp_131_cmp_182_0
              #                     592  br i1 temp_131_cmp_182_0, label branch_short_circuit_c_true_848, label branch_short_circuit_p_false_827 
              #                    occupy a1 with temp_131_cmp_182_0
              #                    load from temp_131_cmp_182_0 in mem


    lb      a1,783(sp)
              #                    free a1
              #                    occupy a1 with temp_131_cmp_182_0
              #                    store to temp_131_cmp_182_0 in mem offset legal
    sb      a1,783(sp)
              #                    release a1 with temp_131_cmp_182_0
              #                    occupy a1 with temp_131_cmp_182_0
              #                    load from temp_131_cmp_182_0 in mem


    lb      a1,783(sp)
    bnez    a1, .branch_short_circuit_c_true_848
              #                    free a1
              #                    occupy a1 with temp_131_cmp_182_0
              #                    store to temp_131_cmp_182_0 in mem offset legal
    sb      a1,783(sp)
              #                    release a1 with temp_131_cmp_182_0
    j       .branch_short_circuit_p_false_827
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |     a5:Freed { symidx: temp_121_ptr_of_*get2_0_179, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     587  label branch_short_circuit_p_false_827: 
.branch_short_circuit_p_false_827:
              #                     537  (nop) 
              #                     538  mu i_0_5:537 
              #                     540  (nop) 
              #                     542  (nop) 
              #                     543  mu get2_0_36:542 
              #                     545  temp_135_cmp_182_0 = icmp i32 Eq temp_122_ele_of_*get2_0_179_0, 42_0 
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a1,812(sp)
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    occupy a6 with temp_135_cmp_182_0
    xor     a6,a1,a3
    seqz    a6, a6
              #                    free a1
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a1,812(sp)
              #                    release a1 with temp_122_ele_of_*get2_0_179_0
              #                    free a3
              #                    free a6
              #                    occupy a6 with temp_135_cmp_182_0
              #                    store to temp_135_cmp_182_0 in mem offset legal
    sb      a6,767(sp)
              #                    release a6 with temp_135_cmp_182_0
              #                     589  br i1 temp_135_cmp_182_0, label branch_short_circuit_c_true_848, label branch_short_circuit_p_false_834 
              #                    occupy a1 with temp_135_cmp_182_0
              #                    load from temp_135_cmp_182_0 in mem


    lb      a1,767(sp)
              #                    free a1
              #                    occupy a1 with temp_135_cmp_182_0
              #                    store to temp_135_cmp_182_0 in mem offset legal
    sb      a1,767(sp)
              #                    release a1 with temp_135_cmp_182_0
              #                    occupy a1 with temp_135_cmp_182_0
              #                    load from temp_135_cmp_182_0 in mem


    lb      a1,767(sp)
    bnez    a1, .branch_short_circuit_c_true_848
              #                    free a1
              #                    occupy a1 with temp_135_cmp_182_0
              #                    store to temp_135_cmp_182_0 in mem offset legal
    sb      a1,767(sp)
              #                    release a1 with temp_135_cmp_182_0
    j       .branch_short_circuit_p_false_834
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |     a5:Freed { symidx: temp_121_ptr_of_*get2_0_179, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     584  label branch_short_circuit_p_false_834: 
.branch_short_circuit_p_false_834:
              #                     547  (nop) 
              #                     548  mu i_0_5:547 
              #                     550  (nop) 
              #                     552  (nop) 
              #                     553  mu get2_0_36:552 
              #                     555  temp_139_cmp_182_0 = icmp i32 Eq temp_122_ele_of_*get2_0_179_0, 47_0 
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a1,812(sp)
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    occupy a6 with temp_139_cmp_182_0
    xor     a6,a1,a3
    seqz    a6, a6
              #                    free a1
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a1,812(sp)
              #                    release a1 with temp_122_ele_of_*get2_0_179_0
              #                    free a3
              #                    free a6
              #                    occupy a6 with temp_139_cmp_182_0
              #                    store to temp_139_cmp_182_0 in mem offset legal
    sb      a6,751(sp)
              #                    release a6 with temp_139_cmp_182_0
              #                     586  br i1 temp_139_cmp_182_0, label branch_short_circuit_c_true_848, label branch_short_circuit_p_false_841 
              #                    occupy a1 with temp_139_cmp_182_0
              #                    load from temp_139_cmp_182_0 in mem


    lb      a1,751(sp)
              #                    free a1
              #                    occupy a1 with temp_139_cmp_182_0
              #                    store to temp_139_cmp_182_0 in mem offset legal
    sb      a1,751(sp)
              #                    release a1 with temp_139_cmp_182_0
              #                    occupy a1 with temp_139_cmp_182_0
              #                    load from temp_139_cmp_182_0 in mem


    lb      a1,751(sp)
    bnez    a1, .branch_short_circuit_c_true_848
              #                    free a1
              #                    occupy a1 with temp_139_cmp_182_0
              #                    store to temp_139_cmp_182_0 in mem offset legal
    sb      a1,751(sp)
              #                    release a1 with temp_139_cmp_182_0
    j       .branch_short_circuit_p_false_841
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |     a5:Freed { symidx: temp_121_ptr_of_*get2_0_179, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     581  label branch_short_circuit_p_false_841: 
.branch_short_circuit_p_false_841:
              #                     557  (nop) 
              #                     558  mu i_0_5:557 
              #                     560  (nop) 
              #                     562  (nop) 
              #                     563  mu get2_0_36:562 
              #                     565  temp_143_cmp_182_0 = icmp i32 Eq temp_122_ele_of_*get2_0_179_0, 37_0 
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a1,812(sp)
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    occupy a6 with temp_143_cmp_182_0
    xor     a6,a1,a3
    seqz    a6, a6
              #                    free a1
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a1,812(sp)
              #                    release a1 with temp_122_ele_of_*get2_0_179_0
              #                    free a3
              #                    free a6
              #                    occupy a6 with temp_143_cmp_182_0
              #                    store to temp_143_cmp_182_0 in mem offset legal
    sb      a6,735(sp)
              #                    release a6 with temp_143_cmp_182_0
              #                     583  br i1 temp_143_cmp_182_0, label branch_short_circuit_c_true_848, label branch_short_circuit_p_false_848 
              #                    occupy a1 with temp_143_cmp_182_0
              #                    load from temp_143_cmp_182_0 in mem


    lb      a1,735(sp)
              #                    free a1
              #                    occupy a1 with temp_143_cmp_182_0
              #                    store to temp_143_cmp_182_0 in mem offset legal
    sb      a1,735(sp)
              #                    release a1 with temp_143_cmp_182_0
              #                    occupy a1 with temp_143_cmp_182_0
              #                    load from temp_143_cmp_182_0 in mem


    lb      a1,735(sp)
    bnez    a1, .branch_short_circuit_c_true_848
              #                    free a1
              #                    occupy a1 with temp_143_cmp_182_0
              #                    store to temp_143_cmp_182_0 in mem offset legal
    sb      a1,735(sp)
              #                    release a1 with temp_143_cmp_182_0
    j       .branch_short_circuit_p_false_848
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |     a5:Freed { symidx: temp_121_ptr_of_*get2_0_179, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     578  label branch_short_circuit_p_false_848: 
.branch_short_circuit_p_false_848:
              #                     567  (nop) 
              #                     568  mu i_0_5:567 
              #                     570  (nop) 
              #                     572  (nop) 
              #                     573  mu get2_0_36:572 
              #                     575  temp_147_cmp_182_0 = icmp i32 Eq temp_122_ele_of_*get2_0_179_0, 94_0 
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a1,812(sp)
              #                    occupy a3 with 94_0
    li      a3, 94
              #                    occupy a6 with temp_147_cmp_182_0
    xor     a6,a1,a3
    seqz    a6, a6
              #                    free a1
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a1,812(sp)
              #                    release a1 with temp_122_ele_of_*get2_0_179_0
              #                    free a3
              #                    free a6
              #                    occupy a6 with temp_147_cmp_182_0
              #                    store to temp_147_cmp_182_0 in mem offset legal
    sb      a6,719(sp)
              #                    release a6 with temp_147_cmp_182_0
              #                     580  br i1 temp_147_cmp_182_0, label branch_short_circuit_c_true_848, label branch_short_circuit_c_false_848 
              #                    occupy a1 with temp_147_cmp_182_0
              #                    load from temp_147_cmp_182_0 in mem


    lb      a1,719(sp)
              #                    free a1
              #                    occupy a1 with temp_147_cmp_182_0
              #                    store to temp_147_cmp_182_0 in mem offset legal
    sb      a1,719(sp)
              #                    release a1 with temp_147_cmp_182_0
              #                    occupy a1 with temp_147_cmp_182_0
              #                    load from temp_147_cmp_182_0 in mem


    lb      a1,719(sp)
    bnez    a1, .branch_short_circuit_c_true_848
              #                    free a1
              #                    occupy a1 with temp_147_cmp_182_0
              #                    store to temp_147_cmp_182_0 in mem offset legal
    sb      a1,719(sp)
              #                    release a1 with temp_147_cmp_182_0
    j       .branch_short_circuit_c_false_848
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |     a5:Freed { symidx: temp_121_ptr_of_*get2_0_179, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     577  label branch_short_circuit_c_false_848: 
.branch_short_circuit_c_false_848:
              #                     595  (nop) 
              #                     596  mu i_0_5:595 
              #                     598  (nop) 
              #                     600  (nop) 
              #                     601  mu get2_0_36:600 
              #                     603  temp_151_cmp_208_0 = icmp i32 Ne temp_122_ele_of_*get2_0_179_0, 32_0 
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a1,812(sp)
              #                    occupy a3 with 32_0
    li      a3, 32
              #                    occupy a6 with temp_151_cmp_208_0
    xor     a6,a1,a3
    snez    a6, a6
              #                    free a1
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a1,812(sp)
              #                    release a1 with temp_122_ele_of_*get2_0_179_0
              #                    free a3
              #                    free a6
              #                    occupy a6 with temp_151_cmp_208_0
              #                    store to temp_151_cmp_208_0 in mem offset legal
    sb      a6,703(sp)
              #                    release a6 with temp_151_cmp_208_0
              #                     606  br i1 temp_151_cmp_208_0, label branch_true_209, label branch_false_209 
              #                    occupy a1 with temp_151_cmp_208_0
              #                    load from temp_151_cmp_208_0 in mem


    lb      a1,703(sp)
              #                    free a1
              #                    occupy a1 with temp_151_cmp_208_0
              #                    store to temp_151_cmp_208_0 in mem offset legal
    sb      a1,703(sp)
              #                    release a1 with temp_151_cmp_208_0
              #                    occupy a1 with temp_151_cmp_208_0
              #                    load from temp_151_cmp_208_0 in mem


    lb      a1,703(sp)
    bnez    a1, .branch_true_209
              #                    free a1
              #                    occupy a1 with temp_151_cmp_208_0
              #                    store to temp_151_cmp_208_0 in mem offset legal
    sb      a1,703(sp)
              #                    release a1 with temp_151_cmp_208_0
    j       .branch_false_209
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |     a5:Freed { symidx: temp_121_ptr_of_*get2_0_179, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     604  label branch_true_209: 
.branch_true_209:
              #                     2238 untrack temp_151_cmp_208_0 
              #                     2237 untrack temp_78_ret_of_intpop_184_0 
              #                     2236 untrack temp_84_arithop_188_0 
              #                     2235 untrack temp_127_cmp_182_0 
              #                     2234 untrack temp_177_cmp_200_0 
              #                     2233 untrack temp_81_arithop_197_0 
              #                     2232 untrack temp_147_cmp_182_0 
              #                     2231 untrack temp_169_cmp_194_0 
              #                     2230 untrack temp_135_cmp_182_0 
              #                     2229 untrack temp_181_cmp_203_0 
              #                     2228 untrack temp_77_ret_of_intpop_184_0 
              #                     2227 untrack temp_121_ptr_of_*get2_0_179 
              #                    occupy a5 with temp_121_ptr_of_*get2_0_179
              #                    release a5 with temp_121_ptr_of_*get2_0_179
              #                     2226 untrack c_184_0 
              #                     2225 untrack c_184_4 
              #                     2224 untrack c_184_2 
              #                     2223 untrack temp_165_cmp_191_0 
              #                     2222 untrack c_184_12 
              #                     2221 untrack temp_143_cmp_182_0 
              #                     2220 untrack temp_123_cmp_179_0 
              #                     2219 untrack temp_173_cmp_197_0 
              #                     2218 untrack c_184_8 
              #                     2217 untrack c_184_6 
              #                     2216 untrack c_184_10 
              #                     2215 untrack temp_83_arithop_191_0 
              #                     2214 untrack temp_79_ret_of_power_203_0 
              #                     2213 untrack temp_139_cmp_182_0 
              #                     2212 untrack temp_82_arithop_194_0 
              #                     2211 untrack temp_131_cmp_182_0 
              #                     2210 untrack temp_80_arithop_200_0 
              #                     296  (nop) 
              #                     297  mu i_0_5:296 
              #                     299  (nop) 
              #                     301  (nop) 
              #                     302  mu get2_0_36:301 
              #                     304  temp_64_arithop_210_0 = Sub i32 temp_122_ele_of_*get2_0_179_0, 48_0 
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    load from temp_122_ele_of_*get2_0_179_0 in mem


    lw      a1,812(sp)
              #                    occupy a3 with 48_0
    li      a3, 48
              #                    occupy a5 with temp_64_arithop_210_0
              #                    regtab:    a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a1:Occupied { symidx: temp_122_ele_of_*get2_0_179_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a3:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |     a5:Occupied { symidx: temp_64_arithop_210_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    a5,a1,a3
              #                    free a1
              #                    occupy a1 with temp_122_ele_of_*get2_0_179_0
              #                    store to temp_122_ele_of_*get2_0_179_0 in mem offset legal
    sw      a1,812(sp)
              #                    release a1 with temp_122_ele_of_*get2_0_179_0
              #                    free a3
              #                    free a5
              #                     2239 untrack temp_122_ele_of_*get2_0_179_0 
              #                     305   Call void intpush_0(temp_64_arithop_210_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_54_ret_of_getstr_87_0
              #                    store to temp_54_ret_of_getstr_87_0 in mem offset legal
    sw      a0,1100(sp)
              #                    release a0 with temp_54_ret_of_getstr_87_0
              #                    occupy a2 with temp_118_value_from_ptr_170_0
              #                    store to temp_118_value_from_ptr_170_0 in mem offset legal
    sw      a2,832(sp)
              #                    release a2 with temp_118_value_from_ptr_170_0
              #                    occupy a4 with temp_119_cmp_170_0
              #                    store to temp_119_cmp_170_0 in mem offset legal
    sb      a4,831(sp)
              #                    release a4 with temp_119_cmp_170_0
              #                    occupy a5 with temp_64_arithop_210_0
              #                    store to temp_64_arithop_210_0 in mem offset legal
    sw      a5,1052(sp)
              #                    release a5 with temp_64_arithop_210_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_64_arithop_210_0_0
              #                    load from temp_64_arithop_210_0 in mem


    lw      a0,1052(sp)
              #                    arg load ended


    call    intpush
              #                     2240 untrack temp_64_arithop_210_0 
              #                     1312 mu ints_0_7:305 
              #                     1313 mu intt_0_7:305 
              #                     1314 intt_0_12 = chi intt_0_7:305 
              #                     1315 ints_0_10 = chi ints_0_7:305 
              #                     306  store 1_0:i32 *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a1 with 1_0
    li      a1, 1
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     307  ii_0_35 = chi ii_0_33:306 
              #                     609  (nop) 
              #                     610  mu i_0_5:609 
              #                     321  (nop) 
              #                     322  mu i_0_5:321 
              #                          jump label: while.head_214 
    j       .while.head_214
              #                    regtab  released_gpr_count:7,released_fpr_count:24
              #                     623  label while.head_214: 
.while.head_214:
              #                     612  temp_153_value_from_ptr_213_0 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a1 with temp_153_value_from_ptr_213_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     613  mu ii_0_36:612 
              #                     615  temp_154_arithop_213_0 = Add i32 temp_120_value_from_ptr_179_0, temp_153_value_from_ptr_213_0 
              #                    occupy a2 with temp_120_value_from_ptr_179_0
              #                    load from temp_120_value_from_ptr_179_0 in mem


    lw      a2,824(sp)
              #                    occupy a1 with temp_153_value_from_ptr_213_0
              #                    occupy a3 with temp_154_arithop_213_0
    ADDW    a3,a2,a1
              #                    free a2
              #                    occupy a2 with temp_120_value_from_ptr_179_0
              #                    store to temp_120_value_from_ptr_179_0 in mem offset legal
    sw      a2,824(sp)
              #                    release a2 with temp_120_value_from_ptr_179_0
              #                    free a1
              #                    occupy a1 with temp_153_value_from_ptr_213_0
              #                    store to temp_153_value_from_ptr_213_0 in mem offset legal
    sw      a1,696(sp)
              #                    release a1 with temp_153_value_from_ptr_213_0
              #                    free a3
              #                     617  temp_155_ptr_of_*get2_0_213 = GEP *get2_0:Array:i32:[None] [Some(temp_154_arithop_213_0)] 
              #                    occupy a1 with temp_155_ptr_of_*get2_0_213
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_154_arithop_213_0
    mv      a2, a3
              #                    free a3
              #                    occupy a3 with temp_154_arithop_213_0
              #                    store to temp_154_arithop_213_0 in mem offset legal
    sw      a3,692(sp)
              #                    release a3 with temp_154_arithop_213_0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a2 with *get2_0
              #                       load label get2 as ptr to reg
    la      a2, get2
              #                    occupy reg a2 with *get2_0
    add     a1,a1,a2
              #                    free a2
              #                    free a1
              #                     619  temp_156_ele_of_*get2_0_213_0 = load temp_155_ptr_of_*get2_0_213:ptr->i32 
              #                    occupy a1 with temp_155_ptr_of_*get2_0_213
              #                    occupy a2 with temp_156_ele_of_*get2_0_213_0
    lw      a2,0(a1)
              #                    free a2
              #                    occupy a2 with temp_156_ele_of_*get2_0_213_0
              #                    store to temp_156_ele_of_*get2_0_213_0 in mem offset legal
    sw      a2,676(sp)
              #                    release a2 with temp_156_ele_of_*get2_0_213_0
              #                    free a1
              #                     620  mu get2_0_36:619 
              #                     622  temp_157_cmp_213_0 = icmp i32 Ne temp_156_ele_of_*get2_0_213_0, 32_0 
              #                    occupy a2 with temp_156_ele_of_*get2_0_213_0
              #                    load from temp_156_ele_of_*get2_0_213_0 in mem


    lw      a2,676(sp)
              #                    occupy a3 with 32_0
    li      a3, 32
              #                    occupy a4 with temp_157_cmp_213_0
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    occupy a2 with temp_156_ele_of_*get2_0_213_0
              #                    store to temp_156_ele_of_*get2_0_213_0 in mem offset legal
    sw      a2,676(sp)
              #                    release a2 with temp_156_ele_of_*get2_0_213_0
              #                    free a3
              #                    free a4
              #                    occupy a4 with temp_157_cmp_213_0
              #                    store to temp_157_cmp_213_0 in mem offset legal
    sb      a4,675(sp)
              #                    release a4 with temp_157_cmp_213_0
              #                     626  br i1 temp_157_cmp_213_0, label while.body_214, label while.exit_214 
              #                    occupy a2 with temp_157_cmp_213_0
              #                    load from temp_157_cmp_213_0 in mem


    lb      a2,675(sp)
              #                    free a2
              #                    occupy a2 with temp_157_cmp_213_0
              #                    store to temp_157_cmp_213_0 in mem offset legal
    sb      a2,675(sp)
              #                    release a2 with temp_157_cmp_213_0
              #                    occupy a0 with temp_157_cmp_213_0
              #                    load from temp_157_cmp_213_0 in mem


    lb      a0,675(sp)
    bnez    a0, .while.body_214
              #                    free a0
              #                    occupy a0 with temp_157_cmp_213_0
              #                    store to temp_157_cmp_213_0 in mem offset legal
    sb      a0,675(sp)
              #                    release a0 with temp_157_cmp_213_0
    j       .while.exit_214
              #                    regtab     a1:Freed { symidx: temp_155_ptr_of_*get2_0_213, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     624  label while.body_214: 
.while.body_214:
              #                     324  (nop) 
              #                     325  mu ii_0_36:324 
              #                     327  (nop) 
              #                     329  (nop) 
              #                     331  (nop) 
              #                     332  mu get2_0_36:331 
              #                     334  temp_74_arithop_215_0 = Sub i32 temp_156_ele_of_*get2_0_213_0, 48_0 
              #                    occupy a0 with temp_156_ele_of_*get2_0_213_0
              #                    load from temp_156_ele_of_*get2_0_213_0 in mem


    lw      a0,676(sp)
              #                    occupy a2 with 48_0
    li      a2, 48
              #                    occupy a3 with temp_74_arithop_215_0
              #                    regtab:    a0:Occupied { symidx: temp_156_ele_of_*get2_0_213_0, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_155_ptr_of_*get2_0_213, tracked: true } |     a2:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_74_arithop_215_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    a3,a0,a2
              #                    free a0
              #                    occupy a0 with temp_156_ele_of_*get2_0_213_0
              #                    store to temp_156_ele_of_*get2_0_213_0 in mem offset legal
    sw      a0,676(sp)
              #                    release a0 with temp_156_ele_of_*get2_0_213_0
              #                    free a2
              #                    free a3
              #                    occupy a3 with temp_74_arithop_215_0
              #                    store to temp_74_arithop_215_0 in mem offset legal
    sw      a3,1036(sp)
              #                    release a3 with temp_74_arithop_215_0
              #                     335   Call void intadd_0(temp_74_arithop_215_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_155_ptr_of_*get2_0_213
              #                    store to temp_155_ptr_of_*get2_0_213 in mem offset legal
    sd      a1,680(sp)
              #                    release a1 with temp_155_ptr_of_*get2_0_213
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_74_arithop_215_0_0
              #                    load from temp_74_arithop_215_0 in mem


    lw      a0,1036(sp)
              #                    arg load ended


    call    intadd
              #                     1316 mu ints_0_11:335 
              #                     1317 mu intt_0_12:335 
              #                     1318 ints_0_12 = chi ints_0_11:335 
              #                     337  (nop) 
              #                     338  mu ii_0_36:337 
              #                     340  temp_76_arithop_215_0 = Add i32 temp_153_value_from_ptr_213_0, 1_0 
              #                    occupy a0 with temp_153_value_from_ptr_213_0
              #                    load from temp_153_value_from_ptr_213_0 in mem


    lw      a0,696(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_76_arithop_215_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    occupy a0 with temp_153_value_from_ptr_213_0
              #                    store to temp_153_value_from_ptr_213_0 in mem offset legal
    sw      a0,696(sp)
              #                    release a0 with temp_153_value_from_ptr_213_0
              #                    free a1
              #                    free a2
              #                     341  store temp_76_arithop_215_0:i32 *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a2 with temp_76_arithop_215_0
    sw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_76_arithop_215_0
              #                    store to temp_76_arithop_215_0 in mem offset legal
    sw      a2,1032(sp)
              #                    release a2 with temp_76_arithop_215_0
              #                    free a0
              #                     342  ii_0_37 = chi ii_0_36:341 
              #                          jump label: while.head_214 
    j       .while.head_214
              #                    regtab     a1:Freed { symidx: temp_155_ptr_of_*get2_0_213, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     625  label while.exit_214: 
.while.exit_214:
              #                     2241 untrack temp_120_value_from_ptr_179_0 
              #                     309  (nop) 
              #                     310  mu i_0_5:309 
              #                     312  (nop) 
              #                     313  mu ii_0_36:312 
              #                     315  (nop) 
              #                     317  temp_68_arithop_210_0 = Sub i32 temp_154_arithop_213_0, 1_0 
              #                    occupy a0 with temp_154_arithop_213_0
              #                    load from temp_154_arithop_213_0 in mem


    lw      a0,692(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_68_arithop_210_0
              #                    regtab:    a0:Occupied { symidx: temp_154_arithop_213_0, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_155_ptr_of_*get2_0_213, tracked: true } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_68_arithop_210_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    a3,a0,a2
              #                    free a0
              #                    occupy a0 with temp_154_arithop_213_0
              #                    store to temp_154_arithop_213_0 in mem offset legal
    sw      a0,692(sp)
              #                    release a0 with temp_154_arithop_213_0
              #                    free a2
              #                    free a3
              #                    occupy a3 with temp_68_arithop_210_0
              #                    store to temp_68_arithop_210_0 in mem offset legal
    sw      a3,1048(sp)
              #                    release a3 with temp_68_arithop_210_0
              #                     318  store temp_68_arithop_210_0:i32 *i_0:ptr->i32 
              #                    occupy a0 with *i_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy reg a0 with *i_0
              #                    occupy a2 with temp_68_arithop_210_0
              #                    load from temp_68_arithop_210_0 in mem


    lw      a2,1048(sp)
    sw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_68_arithop_210_0
              #                    store to temp_68_arithop_210_0 in mem offset legal
    sw      a2,1048(sp)
              #                    release a2 with temp_68_arithop_210_0
              #                    free a0
              #                     2242 untrack temp_68_arithop_210_0 
              #                     319  i_0_8 = chi i_0_5:318 
              #                          jump label: branch_false_209 
              #                    occupy a5 with temp_121_ptr_of_*get2_0_179
              #                    load from temp_121_ptr_of_*get2_0_179 in mem
    ld      a5,816(sp)
              #                    occupy a4 with temp_119_cmp_170_0
              #                    load from temp_119_cmp_170_0 in mem


    lb      a4,831(sp)
              #                    occupy a0 with temp_54_ret_of_getstr_87_0
              #                    load from temp_54_ret_of_getstr_87_0 in mem


    lw      a0,1100(sp)
              #                    occupy a2 with temp_118_value_from_ptr_170_0
              #                    load from temp_118_value_from_ptr_170_0 in mem


    lw      a2,832(sp)
              #                    occupy a1 with temp_155_ptr_of_*get2_0_213
              #                    store to temp_155_ptr_of_*get2_0_213 in mem offset legal
    sd      a1,680(sp)
              #                    release a1 with temp_155_ptr_of_*get2_0_213
    j       .branch_false_209
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |     a5:Freed { symidx: temp_121_ptr_of_*get2_0_179, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     605  label branch_false_209: 
.branch_false_209:
              #                          jump label: gather_126 
              #                    occupy a5 with temp_121_ptr_of_*get2_0_179
              #                    store to temp_121_ptr_of_*get2_0_179 in mem offset legal
    sd      a5,816(sp)
              #                    release a5 with temp_121_ptr_of_*get2_0_179
              #                    occupy a4 with temp_119_cmp_170_0
              #                    store to temp_119_cmp_170_0 in mem offset legal
    sb      a4,831(sp)
              #                    release a4 with temp_119_cmp_170_0
              #                    occupy a0 with temp_54_ret_of_getstr_87_0
              #                    store to temp_54_ret_of_getstr_87_0 in mem offset legal
    sw      a0,1100(sp)
              #                    release a0 with temp_54_ret_of_getstr_87_0
              #                    occupy a2 with temp_118_value_from_ptr_170_0
              #                    store to temp_118_value_from_ptr_170_0 in mem offset legal
    sw      a2,832(sp)
              #                    release a2 with temp_118_value_from_ptr_170_0
    j       .gather_126
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_getstr_87_0, tracked: true } |     a2:Freed { symidx: temp_118_value_from_ptr_170_0, tracked: true } |     a4:Freed { symidx: temp_119_cmp_170_0, tracked: true } |     a5:Freed { symidx: temp_121_ptr_of_*get2_0_179, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     512  label while.exit_180: 
.while.exit_180:
              #                     281  temp_57_ptr_of_*ints_0_87 = GEP *ints_0:Array:i32:[None] [Some(1_0)] 
              #                    occupy a1 with temp_57_ptr_of_*ints_0_87
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 1
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a3 with *ints_0
              #                       load label ints as ptr to reg
    la      a3, ints
              #                    occupy reg a3 with *ints_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                    occupy a1 with temp_57_ptr_of_*ints_0_87
              #                    store to temp_57_ptr_of_*ints_0_87 in mem offset legal
    sd      a1,1080(sp)
              #                    release a1 with temp_57_ptr_of_*ints_0_87
              #                     283  temp_58_ele_of_*ints_0_87_0 = load temp_57_ptr_of_*ints_0_87:ptr->i32 
              #                    occupy a1 with temp_57_ptr_of_*ints_0_87
              #                    load from temp_57_ptr_of_*ints_0_87 in mem
    ld      a1,1080(sp)
              #                    occupy a3 with temp_58_ele_of_*ints_0_87_0
    lw      a3,0(a1)
              #                    free a3
              #                    occupy a3 with temp_58_ele_of_*ints_0_87_0
              #                    store to temp_58_ele_of_*ints_0_87_0 in mem offset legal
    sw      a3,1076(sp)
              #                    release a3 with temp_58_ele_of_*ints_0_87_0
              #                    free a1
              #                    occupy a1 with temp_57_ptr_of_*ints_0_87
              #                    store to temp_57_ptr_of_*ints_0_87 in mem offset legal
    sd      a1,1080(sp)
              #                    release a1 with temp_57_ptr_of_*ints_0_87
              #                     2243 untrack temp_57_ptr_of_*ints_0_87 
              #                     284  mu ints_0_7:283 
              #                     285   Call void putint_0(temp_58_ele_of_*ints_0_87_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_54_ret_of_getstr_87_0
              #                    store to temp_54_ret_of_getstr_87_0 in mem offset legal
    sw      a0,1100(sp)
              #                    release a0 with temp_54_ret_of_getstr_87_0
              #                    occupy a2 with temp_118_value_from_ptr_170_0
              #                    store to temp_118_value_from_ptr_170_0 in mem offset legal
    sw      a2,832(sp)
              #                    release a2 with temp_118_value_from_ptr_170_0
              #                    occupy a4 with temp_119_cmp_170_0
              #                    store to temp_119_cmp_170_0 in mem offset legal
    sb      a4,831(sp)
              #                    release a4 with temp_119_cmp_170_0
              #                    occupy a5 with temp_121_ptr_of_*get2_0_179
              #                    store to temp_121_ptr_of_*get2_0_179 in mem offset legal
    sd      a5,816(sp)
              #                    release a5 with temp_121_ptr_of_*get2_0_179
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_58_ele_of_*ints_0_87_0_0
              #                    load from temp_58_ele_of_*ints_0_87_0 in mem


    lw      a0,1076(sp)
              #                    arg load ended


    call    putint
              #                     2244 untrack temp_58_ele_of_*ints_0_87_0 
              #                     1319 mu intt_0_7:287 
              #                     1320 mu get2_0_36:287 
              #                     1321 mu chas_0_4:287 
              #                     1322 mu ii_0_33:287 
              #                     1323 mu i_0_5:287 
              #                     1324 mu chat_0_44:287 
              #                     1325 mu ints_0_7:287 
              #                     1326 mu c_0_4:287 
              #                     287  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,1112(sp)
              #                    load from s0_main_0 in mem
    ld      s0,1104(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1120
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl get2
              #                     31   global Array:i32:[Some(10000_0)] get2_0 
    .type get2,@object
get2:
    .zero 40000
    .align 4
    .globl get
              #                     29   global Array:i32:[Some(10000_0)] get_0 
    .type get,@object
get:
    .zero 40000
    .align 4
    .globl c
              #                     27   global i32 c_0 
    .type c,@object
c:
    .word 0
    .align 4
    .globl ii
              #                     26   global i32 ii_0 
    .type ii,@object
ii:
    .word 1
    .align 4
    .globl i
              #                     23   global i32 i_0 
    .type i,@object
i:
    .word 0
    .align 4
    .globl chat
              #                     20   global i32 chat_0 
    .type chat,@object
chat:
    .word 0
    .align 4
    .globl chas
              #                     19   global Array:i32:[Some(10000_0)] chas_0 
    .type chas,@object
chas:
    .zero 40000
    .align 4
    .globl intt
              #                     17   global i32 intt_0 
    .type intt,@object
intt:
    .word 0
    .align 4
    .globl ints
              #                     16   global Array:i32:[Some(10000_0)] ints_0 
    .type ints,@object
ints:
    .zero 40000
