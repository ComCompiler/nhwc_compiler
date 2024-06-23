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
              #                    regtab 
              #                          Define printans_0 [] -> printans_ret_0 
    .globl printans
    .type printans,@function
printans:
              #                    mem layout:|ra_printans:8 at 56|s0_printans:8 at 48|temp_0_ptr2globl:4 at 44|temp_1_arithop:4 at 40|i:4 at 36|temp_2_ptr2globl:4 at 32|temp_3_cmp:1 at 31|none:7 at 24|temp_4_array_ptr:8 at 16|temp_5_array_ele:4 at 12|temp_6_ptr2globl:4 at 8|temp_7_cmp:1 at 7|none:3 at 4|temp_8_arithop:4 at 0
    addi    sp,sp,-64
              #                    store to ra_printans_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_printans_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                          alloc i32 temp_0_ptr2globl_19 
              #                          alloc i32 temp_1_arithop_19 
              #                          alloc i32 i_19 
              #                          alloc i32 temp_2_ptr2globl_22 
              #                          alloc i1 temp_3_cmp_22 
              #                          alloc ptr->i32 temp_4_array_ptr_24 
              #                          alloc i32 temp_5_array_ele_24 
              #                          alloc i32 temp_6_ptr2globl_26 
              #                          alloc i1 temp_7_cmp_26 
              #                          alloc i32 temp_8_arithop_24 
              #                    regtab 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_0_ptr2globl_19:i32 
              #                          temp_0_ptr2globl_19 = load *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a1 with temp_0_ptr2globl_19
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_1_arithop_19:i32 
              #                          temp_1_arithop_19 = Add i32 temp_0_ptr2globl_19, 1_0 
              #                    occupy a1 with temp_0_ptr2globl_19
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_1_arithop_19
    add     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_1_arithop_19:i32 *sum_0:ptr->i32 
              #                    occupy a4 with *sum_0
              #                       load label sum as ptr to reg
    la      a4, sum
              #                    occupy reg a4 with *sum_0
              #                    occupy a3 with temp_1_arithop_19
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          i_19 = i32 1_0 
              #                    occupy a5 with i_19
    li      a5, 1
              #                    free a5
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_19, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19, tracked: true } |     a5:Freed { symidx: i_19, tracked: true } | 
              #                          label while.head_23: 
.while.head_23:
              #                          new_var temp_2_ptr2globl_22:i32 
              #                          temp_2_ptr2globl_22 = load *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a2 with temp_2_ptr2globl_22
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_3_cmp_22:i1 
              #                          temp_3_cmp_22 = icmp i32 Sle i_19, temp_2_ptr2globl_22 
              #                    occupy a5 with i_19
              #                    occupy a2 with temp_2_ptr2globl_22
              #                    occupy a4 with temp_3_cmp_22
    slt     a4,a2,a5
    xori    a4,a4,1
              #                    free a5
              #                    free a2
              #                    free a4
              #                          br i1 temp_3_cmp_22, label while.body_23, label while.exit_23 
              #                    occupy a4 with temp_3_cmp_22
              #                    free a4
              #                    occupy a4 with temp_3_cmp_22
    bnez    a4, .while.body_23
              #                    free a4
    j       .while.exit_23
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_19, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_22, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19, tracked: true } |     a4:Freed { symidx: temp_3_cmp_22, tracked: true } |     a5:Freed { symidx: i_19, tracked: true } | 
              #                          label while.body_23: 
.while.body_23:
              #                          new_var temp_4_array_ptr_24:ptr->i32 
              #                          temp_4_array_ptr_24 = getelementptr *ans_0:ptr->i32 [Some(i_19)] 
              #                    occupy a0 with temp_4_array_ptr_24
    li      a0, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a5 with i_19
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a6,a5
              #                    free a6
              #                    free a5
    add     a0,a0,a7
              #                    free a7
    slli a0,a0,2
              #                    occupy s1 with *ans_0
              #                       load label ans as ptr to reg
    la      s1, ans
              #                    occupy reg s1 with *ans_0
    add     a0,a0,s1
              #                    free s1
              #                    free a0
              #                          new_var temp_5_array_ele_24:i32 
              #                          temp_5_array_ele_24 = load temp_4_array_ptr_24:ptr->i32 
              #                    occupy a0 with temp_4_array_ptr_24
              #                    occupy s2 with temp_5_array_ele_24
    lw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                           Call void putint_0(temp_5_array_ele_24) 
              #                    saved register dumping to mem
              #                    store to temp_5_array_ele_24 in mem offset legal
    sw      s2,12(sp)
              #                    release s2 with temp_5_array_ele_24
              #                    store to temp_4_array_ptr_24 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_4_array_ptr_24
              #                    store to temp_0_ptr2globl_19 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with temp_0_ptr2globl_19
              #                    store to temp_2_ptr2globl_22 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with temp_2_ptr2globl_22
              #                    store to temp_1_arithop_19 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with temp_1_arithop_19
              #                    store to temp_3_cmp_22 in mem offset legal
    sb      a4,31(sp)
              #                    release a4 with temp_3_cmp_22
              #                    store to i_19 in mem offset legal
    sw      a5,36(sp)
              #                    release a5 with i_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_5_array_ele_24_0
              #                    load from temp_5_array_ele_24 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_6_ptr2globl_26:i32 
              #                          temp_6_ptr2globl_26 = load *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with temp_6_ptr2globl_26
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_7_cmp_26:i1 
              #                          temp_7_cmp_26 = icmp i32 Eq i_19, temp_6_ptr2globl_26 
              #                    occupy a2 with i_19
              #                    load from i_19 in mem


    lw      a2,36(sp)
              #                    occupy a1 with temp_6_ptr2globl_26
              #                    occupy a3 with temp_7_cmp_26
    xor     a3,a2,a1
    seqz    a3, a3
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_7_cmp_26, label branch_true_27, label branch_false_27 
              #                    occupy a3 with temp_7_cmp_26
              #                    free a3
              #                    occupy a3 with temp_7_cmp_26
    bnez    a3, .branch_true_27
              #                    free a3
    j       .branch_false_27
              #                    regtab     a1:Freed { symidx: temp_6_ptr2globl_26, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_7_cmp_26, tracked: true } | 
              #                          label branch_true_27: 
.branch_true_27:
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    store to temp_6_ptr2globl_26 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_6_ptr2globl_26
              #                    store to i_19 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_19
              #                    store to temp_7_cmp_26 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_7_cmp_26
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          ret 
              #                    load from ra_printans_0 in mem
    ld      ra,56(sp)
              #                    load from s0_printans_0 in mem
    ld      s0,48(sp)
    addi    sp,sp,64
    ret
              #                    regtab     a1:Freed { symidx: temp_6_ptr2globl_26, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_7_cmp_26, tracked: true } | 
              #                          label branch_false_27: 
.branch_false_27:
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    store to temp_6_ptr2globl_26 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_6_ptr2globl_26
              #                    store to i_19 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_19
              #                    store to temp_7_cmp_26 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_7_cmp_26
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab 
              #                          label L7_0: 
.L7_0:
              #                    regtab 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_8_arithop_24:i32 
              #                          temp_8_arithop_24 = Add i32 i_19, 1_0 
              #                    occupy a0 with i_19
              #                    load from i_19 in mem


    lw      a0,36(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_8_arithop_24
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_19 = i32 temp_8_arithop_24 
              #                    occupy a2 with temp_8_arithop_24
              #                    occupy a0 with i_19
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_23 
              #                    store to i_19 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_19
              #                    store to temp_8_arithop_24 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_8_arithop_24
              #                    occupy a5 with _anonymous_of_i_19_0
              #                    load from i_19 in mem


    lw      a5,36(sp)
              #                    occupy a1 with _anonymous_of_temp_0_ptr2globl_19_0
              #                    load from temp_0_ptr2globl_19 in mem


    lw      a1,44(sp)
              #                    occupy a3 with _anonymous_of_temp_1_arithop_19_0
              #                    load from temp_1_arithop_19 in mem


    lw      a3,40(sp)
    j       .while.head_23
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_19, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_22, tracked: true } |     a3:Freed { symidx: temp_1_arithop_19, tracked: true } |     a4:Freed { symidx: temp_3_cmp_22, tracked: true } |     a5:Freed { symidx: i_19, tracked: true } | 
              #                          label while.exit_23: 
.while.exit_23:
              #                    regtab 
              #                          Define f_0 [step_33] -> f_ret_0 
    .globl f
    .type f,@function
f:
              #                    mem layout:|ra_f:8 at 224|s0_f:8 at 216|step:4 at 212|i:4 at 208|temp_9_ptr2globl:4 at 204|temp_10_cmp:1 at 203|none:3 at 200|temp_11_ptr2globl:4 at 196|temp_12_arithop:4 at 192|temp_13_arithop:4 at 188|none:4 at 184|temp_14_array_ptr:8 at 176|temp_15_array_ele:4 at 172|temp_16_booltrans:1 at 171|temp_17_logicnot:1 at 170|none:2 at 168|temp_18_arithop:4 at 164|none:4 at 160|temp_19_array_ptr:8 at 152|temp_20_array_ele:4 at 148|temp_21_cmp:1 at 147|temp_22_logic:1 at 146|none:2 at 144|temp_23_array_ptr:8 at 136|temp_24_array_ele:4 at 132|temp_25_cmp:1 at 131|temp_26_logic:1 at 130|none:2 at 128|temp_27_index_ptr:8 at 120|temp_28_ptr2globl:4 at 116|temp_29_cmp:1 at 115|none:3 at 112|temp_30_index_ptr:8 at 104|temp_31_arithop:4 at 100|none:4 at 96|temp_32_index_ptr:8 at 88|temp_33_ptr2globl:4 at 84|temp_34_arithop:4 at 80|temp_35_arithop:4 at 76|none:4 at 72|temp_36_index_ptr:8 at 64|temp_37_arithop:4 at 60|none:4 at 56|temp_38_index_ptr:8 at 48|temp_39_arithop:4 at 44|none:4 at 40|temp_40_index_ptr:8 at 32|temp_41_ptr2globl:4 at 28|temp_42_arithop:4 at 24|temp_43_arithop:4 at 20|none:4 at 16|temp_44_index_ptr:8 at 8|temp_45_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-232
              #                    store to ra_f_0 in mem offset legal
    sd      ra,224(sp)
              #                    store to s0_f_0 in mem offset legal
    sd      s0,216(sp)
    addi    s0,sp,232
              #                          alloc i32 i_35 
              #                          alloc i32 temp_9_ptr2globl_37 
              #                          alloc i1 temp_10_cmp_37 
              #                          alloc i32 temp_11_ptr2globl_40 
              #                          alloc i32 temp_12_arithop_40 
              #                          alloc i32 temp_13_arithop_40 
              #                          alloc ptr->i32 temp_14_array_ptr_40 
              #                          alloc i32 temp_15_array_ele_40 
              #                          alloc i1 temp_16_booltrans_40 
              #                          alloc i1 temp_17_logicnot_40 
              #                          alloc i32 temp_18_arithop_40 
              #                          alloc ptr->i32 temp_19_array_ptr_40 
              #                          alloc i32 temp_20_array_ele_40 
              #                          alloc i1 temp_21_cmp_40 
              #                          alloc i1 temp_22_logic_40 
              #                          alloc ptr->i32 temp_23_array_ptr_40 
              #                          alloc i32 temp_24_array_ele_40 
              #                          alloc i1 temp_25_cmp_40 
              #                          alloc i1 temp_26_logic_40 
              #                          alloc ptr->i32 temp_27_index_ptr_42 
              #                          alloc i32 temp_28_ptr2globl_44 
              #                          alloc i1 temp_29_cmp_44 
              #                          alloc ptr->i32 temp_30_index_ptr_42 
              #                          alloc i32 temp_31_arithop_42 
              #                          alloc ptr->i32 temp_32_index_ptr_42 
              #                          alloc i32 temp_33_ptr2globl_42 
              #                          alloc i32 temp_34_arithop_42 
              #                          alloc i32 temp_35_arithop_42 
              #                          alloc ptr->i32 temp_36_index_ptr_42 
              #                          alloc i32 temp_37_arithop_42 
              #                          alloc ptr->i32 temp_38_index_ptr_42 
              #                          alloc i32 temp_39_arithop_42 
              #                          alloc ptr->i32 temp_40_index_ptr_42 
              #                          alloc i32 temp_41_ptr2globl_42 
              #                          alloc i32 temp_42_arithop_42 
              #                          alloc i32 temp_43_arithop_42 
              #                          alloc ptr->i32 temp_44_index_ptr_42 
              #                          alloc i32 temp_45_arithop_39 
              #                    regtab     a0:Freed { symidx: step_33, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          i_35 = i32 1_0 
              #                    occupy a1 with i_35
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_38 
    j       .while.head_38
              #                    regtab     a0:Freed { symidx: step_33, tracked: true } |     a1:Freed { symidx: i_35, tracked: true } | 
              #                          label while.head_38: 
.while.head_38:
              #                          new_var temp_9_ptr2globl_37:i32 
              #                          temp_9_ptr2globl_37 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_9_ptr2globl_37
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_10_cmp_37:i1 
              #                          temp_10_cmp_37 = icmp i32 Sle i_35, temp_9_ptr2globl_37 
              #                    occupy a1 with i_35
              #                    occupy a3 with temp_9_ptr2globl_37
              #                    occupy a4 with temp_10_cmp_37
    slt     a4,a3,a1
    xori    a4,a4,1
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_10_cmp_37, label while.body_38, label while.exit_38 
              #                    occupy a4 with temp_10_cmp_37
              #                    free a4
              #                    occupy a4 with temp_10_cmp_37
    bnez    a4, .while.body_38
              #                    free a4
    j       .while.exit_38
              #                    regtab     a0:Freed { symidx: step_33, tracked: true } |     a1:Freed { symidx: i_35, tracked: true } |     a3:Freed { symidx: temp_9_ptr2globl_37, tracked: true } |     a4:Freed { symidx: temp_10_cmp_37, tracked: true } | 
              #                          label while.body_38: 
.while.body_38:
              #                          new_var temp_11_ptr2globl_40:i32 
              #                          temp_11_ptr2globl_40 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a5 with temp_11_ptr2globl_40
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          new_var temp_12_arithop_40:i32 
              #                          temp_12_arithop_40 = Add i32 temp_11_ptr2globl_40, step_33 
              #                    occupy a5 with temp_11_ptr2globl_40
              #                    occupy a0 with step_33
              #                    occupy a6 with temp_12_arithop_40
    add     a6,a5,a0
              #                    free a5
              #                    free a0
              #                    free a6
              #                          new_var temp_13_arithop_40:i32 
              #                          temp_13_arithop_40 = Sub i32 temp_12_arithop_40, i_35 
              #                    occupy a6 with temp_12_arithop_40
              #                    occupy a1 with i_35
              #                    occupy a7 with temp_13_arithop_40
              #                    regtab:    a0:Freed { symidx: step_33, tracked: true } |     a1:Occupied { symidx: i_35, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: *n_0, tracked: false } |     a3:Freed { symidx: temp_9_ptr2globl_37, tracked: true } |     a4:Freed { symidx: temp_10_cmp_37, tracked: true } |     a5:Freed { symidx: temp_11_ptr2globl_40, tracked: true } |     a6:Occupied { symidx: temp_12_arithop_40, tracked: true, occupy_count: 1 } |     a7:Occupied { symidx: temp_13_arithop_40, tracked: true, occupy_count: 1 } | 


    sub     a7,a6,a1
              #                    free a6
              #                    free a1
              #                    free a7
              #                          new_var temp_14_array_ptr_40:ptr->i32 
              #                          temp_14_array_ptr_40 = getelementptr *line2_0:ptr->i32 [Some(temp_13_arithop_40)] 
              #                    occupy s1 with temp_14_array_ptr_40
    li      s1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a7 with temp_13_arithop_40
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,s2,a7
              #                    free s2
              #                    free a7
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy s4 with *line2_0
              #                       load label line2 as ptr to reg
    la      s4, line2
              #                    occupy reg s4 with *line2_0
    add     s1,s1,s4
              #                    free s4
              #                    free s1
              #                          new_var temp_15_array_ele_40:i32 
              #                          temp_15_array_ele_40 = load temp_14_array_ptr_40:ptr->i32 
              #                    occupy s1 with temp_14_array_ptr_40
              #                    occupy s5 with temp_15_array_ele_40
    lw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          new_var temp_16_booltrans_40:i1 
              #                          temp_16_booltrans_40 = icmp i1 Ne temp_15_array_ele_40, 0_0 
              #                    occupy s5 with temp_15_array_ele_40
              #                    occupy s6 with 0_0
    li      s6, 0
              #                    occupy s7 with temp_16_booltrans_40
    xor     s7,s5,s6
    snez    s7, s7
              #                    free s5
              #                    free s6
              #                    free s7
              #                          new_var temp_17_logicnot_40:i1 
              #                          temp_17_logicnot_40 = xor i1 temp_16_booltrans_40, true 
              #                    occupy s7 with temp_16_booltrans_40
              #                    occupy s8 with temp_17_logicnot_40
    seqz    s8, s7
              #                    free s7
              #                    free s8
              #                          new_var temp_18_arithop_40:i32 
              #                          temp_18_arithop_40 = Add i32 step_33, i_35 
              #                    occupy a0 with step_33
              #                    occupy a1 with i_35
              #                    occupy s9 with temp_18_arithop_40
    add     s9,a0,a1
              #                    free a0
              #                    free a1
              #                    free s9
              #                          new_var temp_19_array_ptr_40:ptr->i32 
              #                          temp_19_array_ptr_40 = getelementptr *line1_0:ptr->i32 [Some(temp_18_arithop_40)] 
              #                    occupy s10 with temp_19_array_ptr_40
    li      s10, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s9 with temp_18_arithop_40
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s2,s9
              #                    free s2
              #                    free s9
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
              #                    occupy a2 with *line1_0
              #                       load label line1 as ptr to reg
    la      a2, line1
              #                    occupy reg a2 with *line1_0
    add     s10,s10,a2
              #                    free a2
              #                    free s10
              #                          new_var temp_20_array_ele_40:i32 
              #                          temp_20_array_ele_40 = load temp_19_array_ptr_40:ptr->i32 
              #                    occupy s10 with temp_19_array_ptr_40
              #                    occupy a2 with temp_20_array_ele_40
    lw      a2,0(s10)
              #                    free a2
              #                    free s10
              #                          new_var temp_21_cmp_40:i1 
              #                          temp_21_cmp_40 = icmp i32 Eq temp_20_array_ele_40, 0_0 
              #                    occupy a2 with temp_20_array_ele_40
              #                    found literal reg Some(s6) already exist with 0_0
              #                    occupy s6 with 0_0
              #                    occupy s2 with temp_21_cmp_40
    xor     s2,a2,s6
    seqz    s2, s2
              #                    free a2
              #                    free s6
              #                    free s2
              #                          new_var temp_22_logic_40:i1 
              #                          temp_22_logic_40 = And i1 temp_21_cmp_40, temp_17_logicnot_40 
              #                    occupy s2 with temp_21_cmp_40
              #                    occupy s8 with temp_17_logicnot_40
              #                    occupy s3 with temp_22_logic_40
    and     s3,s2,s8
              #                    free s2
              #                    free s8
              #                    free s3
              #                          new_var temp_23_array_ptr_40:ptr->i32 
              #                          temp_23_array_ptr_40 = getelementptr *row_0:ptr->i32 [Some(i_35)] 
              #                    occupy s4 with temp_23_array_ptr_40
    li      s4, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a1 with i_35
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s6,a1
              #                    free s6
              #                    free a1
    add     s4,s4,s11
              #                    free s11
    slli s4,s4,2
              #                    occupy s6 with *row_0
              #                       load label row as ptr to reg
    la      s6, row
              #                    occupy reg s6 with *row_0
    add     s4,s4,s6
              #                    free s6
              #                    free s4
              #                          new_var temp_24_array_ele_40:i32 
              #                          temp_24_array_ele_40 = load temp_23_array_ptr_40:ptr->i32 
              #                    occupy s4 with temp_23_array_ptr_40
              #                    occupy s6 with temp_24_array_ele_40
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          new_var temp_25_cmp_40:i1 
              #                          temp_25_cmp_40 = icmp i32 Ne temp_24_array_ele_40, 1_0 
              #                    occupy s6 with temp_24_array_ele_40
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to step_33 in mem offset legal
    sw      a0,212(sp)
              #                    release a0 with step_33
              #                    occupy a0 with temp_25_cmp_40
    xor     a0,s6,s11
    snez    a0, a0
              #                    free s6
              #                    free s11
              #                    free a0
              #                          new_var temp_26_logic_40:i1 
              #                          temp_26_logic_40 = And i1 temp_25_cmp_40, temp_22_logic_40 
              #                    occupy a0 with temp_25_cmp_40
              #                    occupy s3 with temp_22_logic_40
              #                    occupy s11 with temp_26_logic_40
    and     s11,a0,s3
              #                    free a0
              #                    free s3
              #                    free s11
              #                          br i1 temp_26_logic_40, label branch_true_41, label branch_false_41 
              #                    occupy s11 with temp_26_logic_40
              #                    free s11
              #                    store to temp_22_logic_40 in mem offset legal
    sb      s3,146(sp)
              #                    release s3 with temp_22_logic_40
              #                    occupy s11 with temp_26_logic_40
    bnez    s11, .branch_true_41
              #                    free s11
    j       .branch_false_41
              #                    regtab     a0:Freed { symidx: temp_25_cmp_40, tracked: true } |     a1:Freed { symidx: i_35, tracked: true } |     a2:Freed { symidx: temp_20_array_ele_40, tracked: true } |     a3:Freed { symidx: temp_9_ptr2globl_37, tracked: true } |     a4:Freed { symidx: temp_10_cmp_37, tracked: true } |     a5:Freed { symidx: temp_11_ptr2globl_40, tracked: true } |     a6:Freed { symidx: temp_12_arithop_40, tracked: true } |     a7:Freed { symidx: temp_13_arithop_40, tracked: true } |     s10:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     s11:Freed { symidx: temp_26_logic_40, tracked: true } |     s1:Freed { symidx: temp_14_array_ptr_40, tracked: true } |     s2:Freed { symidx: temp_21_cmp_40, tracked: true } |     s4:Freed { symidx: temp_23_array_ptr_40, tracked: true } |     s5:Freed { symidx: temp_15_array_ele_40, tracked: true } |     s6:Freed { symidx: temp_24_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_16_booltrans_40, tracked: true } |     s8:Freed { symidx: temp_17_logicnot_40, tracked: true } |     s9:Freed { symidx: temp_18_arithop_40, tracked: true } | 
              #                          label branch_true_41: 
.branch_true_41:
              #                          new_var temp_27_index_ptr_42:ptr->i32 
              #                          temp_27_index_ptr_42 = getelementptr *ans_0:ptr->i32 [Some(step_33)] 
              #                    occupy s3 with temp_27_index_ptr_42
    li      s3, 0
              #                    store to temp_25_cmp_40 in mem offset legal
    sb      a0,131(sp)
              #                    release a0 with temp_25_cmp_40
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to i_35 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with i_35
              #                    occupy a1 with step_33
              #                    load from step_33 in mem


    lw      a1,212(sp)
              #                    store to temp_20_array_ele_40 in mem offset legal
    sw      a2,148(sp)
              #                    release a2 with temp_20_array_ele_40
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s3,s3,a2
              #                    free a2
    slli s3,s3,2
              #                    occupy a0 with *ans_0
              #                       load label ans as ptr to reg
    la      a0, ans
              #                    occupy reg a0 with *ans_0
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          store i_35:i32 temp_27_index_ptr_42:ptr->i32 
              #                    occupy s3 with temp_27_index_ptr_42
              #                    occupy a0 with i_35
              #                    load from i_35 in mem


    lw      a0,208(sp)
    sw      a0,0(s3)
              #                    free a0
              #                    free s3
              #                          mu *ans_0:140 
              #                          *ans_0 = chi *ans_0:140 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: i_35, tracked: true } |     a1:Freed { symidx: step_33, tracked: true } |     a3:Freed { symidx: temp_9_ptr2globl_37, tracked: true } |     a4:Freed { symidx: temp_10_cmp_37, tracked: true } |     a5:Freed { symidx: temp_11_ptr2globl_40, tracked: true } |     a6:Freed { symidx: temp_12_arithop_40, tracked: true } |     a7:Freed { symidx: temp_13_arithop_40, tracked: true } |     s10:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     s11:Freed { symidx: temp_26_logic_40, tracked: true } |     s1:Freed { symidx: temp_14_array_ptr_40, tracked: true } |     s2:Freed { symidx: temp_21_cmp_40, tracked: true } |     s3:Freed { symidx: temp_27_index_ptr_42, tracked: true } |     s4:Freed { symidx: temp_23_array_ptr_40, tracked: true } |     s5:Freed { symidx: temp_15_array_ele_40, tracked: true } |     s6:Freed { symidx: temp_24_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_16_booltrans_40, tracked: true } |     s8:Freed { symidx: temp_17_logicnot_40, tracked: true } |     s9:Freed { symidx: temp_18_arithop_40, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_28_ptr2globl_44:i32 
              #                          temp_28_ptr2globl_44 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    store to i_35 in mem offset legal
    sw      a0,208(sp)
              #                    release a0 with i_35
              #                    occupy a0 with temp_28_ptr2globl_44
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_29_cmp_44:i1 
              #                          temp_29_cmp_44 = icmp i32 Eq step_33, temp_28_ptr2globl_44 
              #                    occupy a1 with step_33
              #                    occupy a0 with temp_28_ptr2globl_44
              #                    occupy a2 with temp_29_cmp_44
    xor     a2,a1,a0
    seqz    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                          br i1 temp_29_cmp_44, label branch_true_45, label branch_false_45 
              #                    occupy a2 with temp_29_cmp_44
              #                    free a2
              #                    store to temp_27_index_ptr_42 in mem offset legal
    sd      s3,120(sp)
              #                    release s3 with temp_27_index_ptr_42
              #                    occupy a2 with temp_29_cmp_44
    bnez    a2, .branch_true_45
              #                    free a2
    j       .branch_false_45
              #                    regtab     a0:Freed { symidx: temp_28_ptr2globl_44, tracked: true } |     a1:Freed { symidx: step_33, tracked: true } |     a2:Freed { symidx: temp_29_cmp_44, tracked: true } |     a3:Freed { symidx: temp_9_ptr2globl_37, tracked: true } |     a4:Freed { symidx: temp_10_cmp_37, tracked: true } |     a5:Freed { symidx: temp_11_ptr2globl_40, tracked: true } |     a6:Freed { symidx: temp_12_arithop_40, tracked: true } |     a7:Freed { symidx: temp_13_arithop_40, tracked: true } |     s10:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     s11:Freed { symidx: temp_26_logic_40, tracked: true } |     s1:Freed { symidx: temp_14_array_ptr_40, tracked: true } |     s2:Freed { symidx: temp_21_cmp_40, tracked: true } |     s4:Freed { symidx: temp_23_array_ptr_40, tracked: true } |     s5:Freed { symidx: temp_15_array_ele_40, tracked: true } |     s6:Freed { symidx: temp_24_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_16_booltrans_40, tracked: true } |     s8:Freed { symidx: temp_17_logicnot_40, tracked: true } |     s9:Freed { symidx: temp_18_arithop_40, tracked: true } | 
              #                          label branch_true_45: 
.branch_true_45:
              #                           Call void printans_0() 
              #                    saved register dumping to mem
              #                    store to temp_14_array_ptr_40 in mem offset legal
    sd      s1,176(sp)
              #                    release s1 with temp_14_array_ptr_40
              #                    store to temp_21_cmp_40 in mem offset legal
    sb      s2,147(sp)
              #                    release s2 with temp_21_cmp_40
              #                    store to temp_23_array_ptr_40 in mem offset legal
    sd      s4,136(sp)
              #                    release s4 with temp_23_array_ptr_40
              #                    store to temp_15_array_ele_40 in mem offset legal
    sw      s5,172(sp)
              #                    release s5 with temp_15_array_ele_40
              #                    store to temp_24_array_ele_40 in mem offset legal
    sw      s6,132(sp)
              #                    release s6 with temp_24_array_ele_40
              #                    store to temp_16_booltrans_40 in mem offset legal
    sb      s7,171(sp)
              #                    release s7 with temp_16_booltrans_40
              #                    store to temp_17_logicnot_40 in mem offset legal
    sb      s8,170(sp)
              #                    release s8 with temp_17_logicnot_40
              #                    store to temp_18_arithop_40 in mem offset legal
    sw      s9,164(sp)
              #                    release s9 with temp_18_arithop_40
              #                    store to temp_19_array_ptr_40 in mem offset legal
    sd      s10,152(sp)
              #                    release s10 with temp_19_array_ptr_40
              #                    store to temp_26_logic_40 in mem offset legal
    sb      s11,130(sp)
              #                    release s11 with temp_26_logic_40
              #                    store to temp_28_ptr2globl_44 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_28_ptr2globl_44
              #                    store to step_33 in mem offset legal
    sw      a1,212(sp)
              #                    release a1 with step_33
              #                    store to temp_29_cmp_44 in mem offset legal
    sb      a2,115(sp)
              #                    release a2 with temp_29_cmp_44
              #                    store to temp_9_ptr2globl_37 in mem offset legal
    sw      a3,204(sp)
              #                    release a3 with temp_9_ptr2globl_37
              #                    store to temp_10_cmp_37 in mem offset legal
    sb      a4,203(sp)
              #                    release a4 with temp_10_cmp_37
              #                    store to temp_11_ptr2globl_40 in mem offset legal
    sw      a5,196(sp)
              #                    release a5 with temp_11_ptr2globl_40
              #                    store to temp_12_arithop_40 in mem offset legal
    sw      a6,192(sp)
              #                    release a6 with temp_12_arithop_40
              #                    store to temp_13_arithop_40 in mem offset legal
    sw      a7,188(sp)
              #                    release a7 with temp_13_arithop_40
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    printans
              #                          jump label: branch_false_45 
              #                    occupy s5 with _anonymous_of_temp_15_array_ele_40_0
              #                    load from temp_15_array_ele_40 in mem


    lw      s5,172(sp)
              #                    occupy a4 with _anonymous_of_temp_10_cmp_37_0
              #                    load from temp_10_cmp_37 in mem
    lb      a4,203(sp)
              #                    occupy a1 with _anonymous_of_step_33_0
              #                    load from step_33 in mem


    lw      a1,212(sp)
              #                    occupy a2 with _anonymous_of_temp_29_cmp_44_0
              #                    load from temp_29_cmp_44 in mem
    lb      a2,115(sp)
              #                    occupy a7 with _anonymous_of_temp_13_arithop_40_0
              #                    load from temp_13_arithop_40 in mem


    lw      a7,188(sp)
              #                    occupy s1 with _anonymous_of_temp_14_array_ptr_40_0
              #                    load from temp_14_array_ptr_40 in mem
    ld      s1,176(sp)
              #                    occupy a6 with _anonymous_of_temp_12_arithop_40_0
              #                    load from temp_12_arithop_40 in mem


    lw      a6,192(sp)
              #                    occupy s11 with _anonymous_of_temp_26_logic_40_0
              #                    load from temp_26_logic_40 in mem
    lb      s11,130(sp)
              #                    occupy s7 with _anonymous_of_temp_16_booltrans_40_0
              #                    load from temp_16_booltrans_40 in mem
    lb      s7,171(sp)
              #                    occupy a3 with _anonymous_of_temp_9_ptr2globl_37_0
              #                    load from temp_9_ptr2globl_37 in mem


    lw      a3,204(sp)
              #                    occupy s8 with _anonymous_of_temp_17_logicnot_40_0
              #                    load from temp_17_logicnot_40 in mem
    lb      s8,170(sp)
              #                    occupy s6 with _anonymous_of_temp_24_array_ele_40_0
              #                    load from temp_24_array_ele_40 in mem


    lw      s6,132(sp)
              #                    occupy a0 with _anonymous_of_temp_28_ptr2globl_44_0
              #                    load from temp_28_ptr2globl_44 in mem


    lw      a0,116(sp)
              #                    occupy s4 with _anonymous_of_temp_23_array_ptr_40_0
              #                    load from temp_23_array_ptr_40 in mem
    ld      s4,136(sp)
              #                    occupy s10 with _anonymous_of_temp_19_array_ptr_40_0
              #                    load from temp_19_array_ptr_40 in mem
    ld      s10,152(sp)
              #                    occupy s2 with _anonymous_of_temp_21_cmp_40_0
              #                    load from temp_21_cmp_40 in mem
    lb      s2,147(sp)
              #                    occupy a5 with _anonymous_of_temp_11_ptr2globl_40_0
              #                    load from temp_11_ptr2globl_40 in mem


    lw      a5,196(sp)
              #                    occupy s9 with _anonymous_of_temp_18_arithop_40_0
              #                    load from temp_18_arithop_40 in mem


    lw      s9,164(sp)
    j       .branch_false_45
              #                    regtab     a0:Freed { symidx: temp_28_ptr2globl_44, tracked: true } |     a1:Freed { symidx: step_33, tracked: true } |     a2:Freed { symidx: temp_29_cmp_44, tracked: true } |     a3:Freed { symidx: temp_9_ptr2globl_37, tracked: true } |     a4:Freed { symidx: temp_10_cmp_37, tracked: true } |     a5:Freed { symidx: temp_11_ptr2globl_40, tracked: true } |     a6:Freed { symidx: temp_12_arithop_40, tracked: true } |     a7:Freed { symidx: temp_13_arithop_40, tracked: true } |     s10:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     s11:Freed { symidx: temp_26_logic_40, tracked: true } |     s1:Freed { symidx: temp_14_array_ptr_40, tracked: true } |     s2:Freed { symidx: temp_21_cmp_40, tracked: true } |     s4:Freed { symidx: temp_23_array_ptr_40, tracked: true } |     s5:Freed { symidx: temp_15_array_ele_40, tracked: true } |     s6:Freed { symidx: temp_24_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_16_booltrans_40, tracked: true } |     s8:Freed { symidx: temp_17_logicnot_40, tracked: true } |     s9:Freed { symidx: temp_18_arithop_40, tracked: true } | 
              #                          label branch_false_45: 
.branch_false_45:
              #                    regtab     a0:Freed { symidx: temp_28_ptr2globl_44, tracked: true } |     a1:Freed { symidx: step_33, tracked: true } |     a2:Freed { symidx: temp_29_cmp_44, tracked: true } |     a3:Freed { symidx: temp_9_ptr2globl_37, tracked: true } |     a4:Freed { symidx: temp_10_cmp_37, tracked: true } |     a5:Freed { symidx: temp_11_ptr2globl_40, tracked: true } |     a6:Freed { symidx: temp_12_arithop_40, tracked: true } |     a7:Freed { symidx: temp_13_arithop_40, tracked: true } |     s10:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     s11:Freed { symidx: temp_26_logic_40, tracked: true } |     s1:Freed { symidx: temp_14_array_ptr_40, tracked: true } |     s2:Freed { symidx: temp_21_cmp_40, tracked: true } |     s4:Freed { symidx: temp_23_array_ptr_40, tracked: true } |     s5:Freed { symidx: temp_15_array_ele_40, tracked: true } |     s6:Freed { symidx: temp_24_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_16_booltrans_40, tracked: true } |     s8:Freed { symidx: temp_17_logicnot_40, tracked: true } |     s9:Freed { symidx: temp_18_arithop_40, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_30_index_ptr_42:ptr->i32 
              #                          temp_30_index_ptr_42 = getelementptr *row_0:ptr->i32 [Some(i_35)] 
              #                    occupy s3 with temp_30_index_ptr_42
    li      s3, 0
              #                    store to temp_28_ptr2globl_44 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_28_ptr2globl_44
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to step_33 in mem offset legal
    sw      a1,212(sp)
              #                    release a1 with step_33
              #                    occupy a1 with i_35
              #                    load from i_35 in mem


    lw      a1,208(sp)
              #                    store to temp_29_cmp_44 in mem offset legal
    sb      a2,115(sp)
              #                    release a2 with temp_29_cmp_44
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s3,s3,a2
              #                    free a2
    slli s3,s3,2
              #                    occupy a0 with *row_0
              #                       load label row as ptr to reg
    la      a0, row
              #                    occupy reg a0 with *row_0
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          store 1_0:i32 temp_30_index_ptr_42:ptr->i32 
              #                    occupy s3 with temp_30_index_ptr_42
              #                    occupy a0 with 1_0
    li      a0, 1
    sw      a0,0(s3)
              #                    free a0
              #                    free s3
              #                          mu *row_0:156 
              #                          *row_0 = chi *row_0:156 
              #                          new_var temp_31_arithop_42:i32 
              #                          temp_31_arithop_42 = Add i32 step_33, i_35 
              #                    occupy a0 with step_33
              #                    load from step_33 in mem


    lw      a0,212(sp)
              #                    occupy a1 with i_35
              #                    occupy a2 with temp_31_arithop_42
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_32_index_ptr_42:ptr->i32 
              #                          temp_32_index_ptr_42 = getelementptr *line1_0:ptr->i32 [Some(temp_31_arithop_42)] 
              #                    store to step_33 in mem offset legal
    sw      a0,212(sp)
              #                    release a0 with step_33
              #                    occupy a0 with temp_32_index_ptr_42
    li      a0, 0
              #                    store to i_35 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with i_35
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_31_arithop_42
              #                    store to temp_9_ptr2globl_37 in mem offset legal
    sw      a3,204(sp)
              #                    release a3 with temp_9_ptr2globl_37
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *line1_0
              #                       load label line1 as ptr to reg
    la      a1, line1
              #                    occupy reg a1 with *line1_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          store 1_0:i32 temp_32_index_ptr_42:ptr->i32 
              #                    occupy a0 with temp_32_index_ptr_42
              #                    occupy a1 with 1_0
    li      a1, 1
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu *line1_0:165 
              #                          *line1_0 = chi *line1_0:165 
              #                          new_var temp_33_ptr2globl_42:i32 
              #                          temp_33_ptr2globl_42 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a3 with temp_33_ptr2globl_42
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_34_arithop_42:i32 
              #                          temp_34_arithop_42 = Add i32 temp_33_ptr2globl_42, step_33 
              #                    occupy a3 with temp_33_ptr2globl_42
              #                    occupy a1 with step_33
              #                    load from step_33 in mem


    lw      a1,212(sp)
              #                    store to temp_32_index_ptr_42 in mem offset legal
    sd      a0,88(sp)
              #                    release a0 with temp_32_index_ptr_42
              #                    occupy a0 with temp_34_arithop_42
    add     a0,a3,a1
              #                    free a3
              #                    free a1
              #                    free a0
              #                          new_var temp_35_arithop_42:i32 
              #                          temp_35_arithop_42 = Sub i32 temp_34_arithop_42, i_35 
              #                    occupy a0 with temp_34_arithop_42
              #                    store to step_33 in mem offset legal
    sw      a1,212(sp)
              #                    release a1 with step_33
              #                    occupy a1 with i_35
              #                    load from i_35 in mem


    lw      a1,208(sp)
              #                    store to temp_31_arithop_42 in mem offset legal
    sw      a2,100(sp)
              #                    release a2 with temp_31_arithop_42
              #                    occupy a2 with temp_35_arithop_42
              #                    regtab:    a0:Occupied { symidx: temp_34_arithop_42, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: i_35, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_35_arithop_42, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_33_ptr2globl_42, tracked: true } |     a4:Freed { symidx: temp_10_cmp_37, tracked: true } |     a5:Freed { symidx: temp_11_ptr2globl_40, tracked: true } |     a6:Freed { symidx: temp_12_arithop_40, tracked: true } |     a7:Freed { symidx: temp_13_arithop_40, tracked: true } |     s10:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     s11:Freed { symidx: temp_26_logic_40, tracked: true } |     s1:Freed { symidx: temp_14_array_ptr_40, tracked: true } |     s2:Freed { symidx: temp_21_cmp_40, tracked: true } |     s3:Freed { symidx: temp_30_index_ptr_42, tracked: true } |     s4:Freed { symidx: temp_23_array_ptr_40, tracked: true } |     s5:Freed { symidx: temp_15_array_ele_40, tracked: true } |     s6:Freed { symidx: temp_24_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_16_booltrans_40, tracked: true } |     s8:Freed { symidx: temp_17_logicnot_40, tracked: true } |     s9:Freed { symidx: temp_18_arithop_40, tracked: true } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_36_index_ptr_42:ptr->i32 
              #                          temp_36_index_ptr_42 = getelementptr *line2_0:ptr->i32 [Some(temp_35_arithop_42)] 
              #                    store to temp_34_arithop_42 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with temp_34_arithop_42
              #                    occupy a0 with temp_36_index_ptr_42
    li      a0, 0
              #                    store to i_35 in mem offset legal
    sw      a1,208(sp)
              #                    release a1 with i_35
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_35_arithop_42
              #                    store to temp_33_ptr2globl_42 in mem offset legal
    sw      a3,84(sp)
              #                    release a3 with temp_33_ptr2globl_42
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *line2_0
              #                       load label line2 as ptr to reg
    la      a1, line2
              #                    occupy reg a1 with *line2_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          store 1_0:i32 temp_36_index_ptr_42:ptr->i32 
              #                    occupy a0 with temp_36_index_ptr_42
              #                    occupy a1 with 1_0
    li      a1, 1
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu *line2_0:180 
              #                          *line2_0 = chi *line2_0:180 
              #                          new_var temp_37_arithop_42:i32 
              #                          temp_37_arithop_42 = Add i32 step_33, 1_0 
              #                    occupy a1 with step_33
              #                    load from step_33 in mem


    lw      a1,212(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    store to temp_36_index_ptr_42 in mem offset legal
    sd      a0,64(sp)
              #                    release a0 with temp_36_index_ptr_42
              #                    occupy a0 with temp_37_arithop_42
    add     a0,a1,a3
              #                    free a1
              #                    free a3
              #                    free a0
              #                           Call void f_0(temp_37_arithop_42) 
              #                    saved register dumping to mem
              #                    store to temp_14_array_ptr_40 in mem offset legal
    sd      s1,176(sp)
              #                    release s1 with temp_14_array_ptr_40
              #                    store to temp_21_cmp_40 in mem offset legal
    sb      s2,147(sp)
              #                    release s2 with temp_21_cmp_40
              #                    store to temp_30_index_ptr_42 in mem offset legal
    sd      s3,104(sp)
              #                    release s3 with temp_30_index_ptr_42
              #                    store to temp_23_array_ptr_40 in mem offset legal
    sd      s4,136(sp)
              #                    release s4 with temp_23_array_ptr_40
              #                    store to temp_15_array_ele_40 in mem offset legal
    sw      s5,172(sp)
              #                    release s5 with temp_15_array_ele_40
              #                    store to temp_24_array_ele_40 in mem offset legal
    sw      s6,132(sp)
              #                    release s6 with temp_24_array_ele_40
              #                    store to temp_16_booltrans_40 in mem offset legal
    sb      s7,171(sp)
              #                    release s7 with temp_16_booltrans_40
              #                    store to temp_17_logicnot_40 in mem offset legal
    sb      s8,170(sp)
              #                    release s8 with temp_17_logicnot_40
              #                    store to temp_18_arithop_40 in mem offset legal
    sw      s9,164(sp)
              #                    release s9 with temp_18_arithop_40
              #                    store to temp_19_array_ptr_40 in mem offset legal
    sd      s10,152(sp)
              #                    release s10 with temp_19_array_ptr_40
              #                    store to temp_26_logic_40 in mem offset legal
    sb      s11,130(sp)
              #                    release s11 with temp_26_logic_40
              #                    store to temp_37_arithop_42 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_37_arithop_42
              #                    store to step_33 in mem offset legal
    sw      a1,212(sp)
              #                    release a1 with step_33
              #                    store to temp_35_arithop_42 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with temp_35_arithop_42
              #                    store to temp_10_cmp_37 in mem offset legal
    sb      a4,203(sp)
              #                    release a4 with temp_10_cmp_37
              #                    store to temp_11_ptr2globl_40 in mem offset legal
    sw      a5,196(sp)
              #                    release a5 with temp_11_ptr2globl_40
              #                    store to temp_12_arithop_40 in mem offset legal
    sw      a6,192(sp)
              #                    release a6 with temp_12_arithop_40
              #                    store to temp_13_arithop_40 in mem offset legal
    sw      a7,188(sp)
              #                    release a7 with temp_13_arithop_40
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_37_arithop_42_0
              #                    load from temp_37_arithop_42 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    f
              #                          new_var temp_38_index_ptr_42:ptr->i32 
              #                          temp_38_index_ptr_42 = getelementptr *row_0:ptr->i32 [Some(i_35)] 
              #                    occupy a0 with temp_38_index_ptr_42
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with i_35
              #                    load from i_35 in mem


    lw      a2,208(sp)
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *row_0
              #                       load label row as ptr to reg
    la      a4, row
              #                    occupy reg a4 with *row_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          store 0_0:i32 temp_38_index_ptr_42:ptr->i32 
              #                    occupy a0 with temp_38_index_ptr_42
              #                    occupy a5 with 0_0
    li      a5, 0
    sw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                          mu *row_0:190 
              #                          *row_0 = chi *row_0:190 
              #                          new_var temp_39_arithop_42:i32 
              #                          temp_39_arithop_42 = Add i32 step_33, i_35 
              #                    occupy a6 with step_33
              #                    load from step_33 in mem


    lw      a6,212(sp)
              #                    occupy a2 with i_35
              #                    occupy a7 with temp_39_arithop_42
    add     a7,a6,a2
              #                    free a6
              #                    free a2
              #                    free a7
              #                          new_var temp_40_index_ptr_42:ptr->i32 
              #                          temp_40_index_ptr_42 = getelementptr *line1_0:ptr->i32 [Some(temp_39_arithop_42)] 
              #                    occupy s1 with temp_40_index_ptr_42
    li      s1, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy a7 with temp_39_arithop_42
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a1,a7
              #                    free a1
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *line1_0
              #                       load label line1 as ptr to reg
    la      s3, line1
              #                    occupy reg s3 with *line1_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          store 0_0:i32 temp_40_index_ptr_42:ptr->i32 
              #                    occupy s1 with temp_40_index_ptr_42
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
    sw      a5,0(s1)
              #                    free a5
              #                    free s1
              #                          mu *line1_0:199 
              #                          *line1_0 = chi *line1_0:199 
              #                          new_var temp_41_ptr2globl_42:i32 
              #                          temp_41_ptr2globl_42 = load *n_0:ptr->i32 
              #                    occupy s4 with *n_0
              #                       load label n as ptr to reg
    la      s4, n
              #                    occupy reg s4 with *n_0
              #                    occupy s5 with temp_41_ptr2globl_42
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_42_arithop_42:i32 
              #                          temp_42_arithop_42 = Add i32 temp_41_ptr2globl_42, step_33 
              #                    occupy s5 with temp_41_ptr2globl_42
              #                    occupy a6 with step_33
              #                    occupy s6 with temp_42_arithop_42
    add     s6,s5,a6
              #                    free s5
              #                    free a6
              #                    free s6
              #                          new_var temp_43_arithop_42:i32 
              #                          temp_43_arithop_42 = Sub i32 temp_42_arithop_42, i_35 
              #                    occupy s6 with temp_42_arithop_42
              #                    occupy a2 with i_35
              #                    occupy s7 with temp_43_arithop_42
              #                    regtab:    a0:Freed { symidx: temp_38_index_ptr_42, tracked: true } |     a1:Freed { symidx: 1_0, tracked: false } |     a2:Occupied { symidx: i_35, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a4:Freed { symidx: *row_0, tracked: false } |     a5:Freed { symidx: 0_0, tracked: false } |     a6:Freed { symidx: step_33, tracked: true } |     a7:Freed { symidx: temp_39_arithop_42, tracked: true } |     s1:Freed { symidx: temp_40_index_ptr_42, tracked: true } |     s2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s3:Freed { symidx: *line1_0, tracked: false } |     s4:Freed { symidx: *n_0, tracked: false } |     s5:Freed { symidx: temp_41_ptr2globl_42, tracked: true } |     s6:Occupied { symidx: temp_42_arithop_42, tracked: true, occupy_count: 1 } |     s7:Occupied { symidx: temp_43_arithop_42, tracked: true, occupy_count: 1 } | 


    sub     s7,s6,a2
              #                    free s6
              #                    free a2
              #                    free s7
              #                          new_var temp_44_index_ptr_42:ptr->i32 
              #                          temp_44_index_ptr_42 = getelementptr *line2_0:ptr->i32 [Some(temp_43_arithop_42)] 
              #                    occupy s8 with temp_44_index_ptr_42
    li      s8, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy s7 with temp_43_arithop_42
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a1,s7
              #                    free a1
              #                    free s7
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
              #                    occupy s10 with *line2_0
              #                       load label line2 as ptr to reg
    la      s10, line2
              #                    occupy reg s10 with *line2_0
    add     s8,s8,s10
              #                    free s10
              #                    free s8
              #                          store 0_0:i32 temp_44_index_ptr_42:ptr->i32 
              #                    occupy s8 with temp_44_index_ptr_42
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
    sw      a5,0(s8)
              #                    free a5
              #                    free s8
              #                          mu *line2_0:214 
              #                          *line2_0 = chi *line2_0:214 
              #                          jump label: branch_false_41 
              #                    store to temp_41_ptr2globl_42 in mem offset legal
    sw      s5,28(sp)
              #                    release s5 with temp_41_ptr2globl_42
              #                    store to i_35 in mem offset legal
    sw      a2,208(sp)
              #                    release a2 with i_35
              #                    store to temp_39_arithop_42 in mem offset legal
    sw      a7,44(sp)
              #                    release a7 with temp_39_arithop_42
              #                    store to temp_40_index_ptr_42 in mem offset legal
    sd      s1,32(sp)
              #                    release s1 with temp_40_index_ptr_42
              #                    store to step_33 in mem offset legal
    sw      a6,212(sp)
              #                    release a6 with step_33
              #                    store to temp_43_arithop_42 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with temp_43_arithop_42
              #                    store to temp_44_index_ptr_42 in mem offset legal
    sd      s8,8(sp)
              #                    release s8 with temp_44_index_ptr_42
              #                    store to temp_42_arithop_42 in mem offset legal
    sw      s6,24(sp)
              #                    release s6 with temp_42_arithop_42
              #                    store to temp_38_index_ptr_42 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with temp_38_index_ptr_42
              #                    occupy s5 with _anonymous_of_temp_15_array_ele_40_0
              #                    load from temp_15_array_ele_40 in mem


    lw      s5,172(sp)
              #                    occupy a4 with _anonymous_of_temp_10_cmp_37_0
              #                    load from temp_10_cmp_37 in mem
    lb      a4,203(sp)
              #                    occupy a1 with _anonymous_of_i_35_0
              #                    load from i_35 in mem


    lw      a1,208(sp)
              #                    occupy a2 with _anonymous_of_temp_20_array_ele_40_0
              #                    load from temp_20_array_ele_40 in mem


    lw      a2,148(sp)
              #                    occupy a7 with _anonymous_of_temp_13_arithop_40_0
              #                    load from temp_13_arithop_40 in mem


    lw      a7,188(sp)
              #                    occupy s1 with _anonymous_of_temp_14_array_ptr_40_0
              #                    load from temp_14_array_ptr_40 in mem
    ld      s1,176(sp)
              #                    occupy a6 with _anonymous_of_temp_12_arithop_40_0
              #                    load from temp_12_arithop_40 in mem


    lw      a6,192(sp)
              #                    occupy s11 with _anonymous_of_temp_26_logic_40_0
              #                    load from temp_26_logic_40 in mem
    lb      s11,130(sp)
              #                    occupy s7 with _anonymous_of_temp_16_booltrans_40_0
              #                    load from temp_16_booltrans_40 in mem
    lb      s7,171(sp)
              #                    occupy a3 with _anonymous_of_temp_9_ptr2globl_37_0
              #                    load from temp_9_ptr2globl_37 in mem


    lw      a3,204(sp)
              #                    occupy s8 with _anonymous_of_temp_17_logicnot_40_0
              #                    load from temp_17_logicnot_40 in mem
    lb      s8,170(sp)
              #                    occupy s6 with _anonymous_of_temp_24_array_ele_40_0
              #                    load from temp_24_array_ele_40 in mem


    lw      s6,132(sp)
              #                    occupy a0 with _anonymous_of_temp_25_cmp_40_0
              #                    load from temp_25_cmp_40 in mem
    lb      a0,131(sp)
              #                    occupy s4 with _anonymous_of_temp_23_array_ptr_40_0
              #                    load from temp_23_array_ptr_40 in mem
    ld      s4,136(sp)
              #                    occupy s10 with _anonymous_of_temp_19_array_ptr_40_0
              #                    load from temp_19_array_ptr_40 in mem
    ld      s10,152(sp)
              #                    occupy s2 with _anonymous_of_temp_21_cmp_40_0
              #                    load from temp_21_cmp_40 in mem
    lb      s2,147(sp)
              #                    occupy a5 with _anonymous_of_temp_11_ptr2globl_40_0
              #                    load from temp_11_ptr2globl_40 in mem


    lw      a5,196(sp)
              #                    occupy s9 with _anonymous_of_temp_18_arithop_40_0
              #                    load from temp_18_arithop_40 in mem


    lw      s9,164(sp)
    j       .branch_false_41
              #                    regtab     a0:Freed { symidx: temp_25_cmp_40, tracked: true } |     a1:Freed { symidx: i_35, tracked: true } |     a2:Freed { symidx: temp_20_array_ele_40, tracked: true } |     a3:Freed { symidx: temp_9_ptr2globl_37, tracked: true } |     a4:Freed { symidx: temp_10_cmp_37, tracked: true } |     a5:Freed { symidx: temp_11_ptr2globl_40, tracked: true } |     a6:Freed { symidx: temp_12_arithop_40, tracked: true } |     a7:Freed { symidx: temp_13_arithop_40, tracked: true } |     s10:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     s11:Freed { symidx: temp_26_logic_40, tracked: true } |     s1:Freed { symidx: temp_14_array_ptr_40, tracked: true } |     s2:Freed { symidx: temp_21_cmp_40, tracked: true } |     s4:Freed { symidx: temp_23_array_ptr_40, tracked: true } |     s5:Freed { symidx: temp_15_array_ele_40, tracked: true } |     s6:Freed { symidx: temp_24_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_16_booltrans_40, tracked: true } |     s8:Freed { symidx: temp_17_logicnot_40, tracked: true } |     s9:Freed { symidx: temp_18_arithop_40, tracked: true } | 
              #                          label branch_false_41: 
.branch_false_41:
              #                    regtab     a0:Freed { symidx: temp_25_cmp_40, tracked: true } |     a1:Freed { symidx: i_35, tracked: true } |     a2:Freed { symidx: temp_20_array_ele_40, tracked: true } |     a3:Freed { symidx: temp_9_ptr2globl_37, tracked: true } |     a4:Freed { symidx: temp_10_cmp_37, tracked: true } |     a5:Freed { symidx: temp_11_ptr2globl_40, tracked: true } |     a6:Freed { symidx: temp_12_arithop_40, tracked: true } |     a7:Freed { symidx: temp_13_arithop_40, tracked: true } |     s10:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     s11:Freed { symidx: temp_26_logic_40, tracked: true } |     s1:Freed { symidx: temp_14_array_ptr_40, tracked: true } |     s2:Freed { symidx: temp_21_cmp_40, tracked: true } |     s4:Freed { symidx: temp_23_array_ptr_40, tracked: true } |     s5:Freed { symidx: temp_15_array_ele_40, tracked: true } |     s6:Freed { symidx: temp_24_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_16_booltrans_40, tracked: true } |     s8:Freed { symidx: temp_17_logicnot_40, tracked: true } |     s9:Freed { symidx: temp_18_arithop_40, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_45_arithop_39:i32 
              #                          temp_45_arithop_39 = Add i32 i_35, 1_0 
              #                    occupy a1 with i_35
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    store to temp_25_cmp_40 in mem offset legal
    sb      a0,131(sp)
              #                    release a0 with temp_25_cmp_40
              #                    occupy a0 with temp_45_arithop_39
    add     a0,a1,s3
              #                    free a1
              #                    free s3
              #                    free a0
              #                          i_35 = i32 temp_45_arithop_39 
              #                    occupy a0 with temp_45_arithop_39
              #                    occupy a1 with i_35
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_38 
              #                    store to temp_15_array_ele_40 in mem offset legal
    sw      s5,172(sp)
              #                    release s5 with temp_15_array_ele_40
              #                    store to temp_10_cmp_37 in mem offset legal
    sb      a4,203(sp)
              #                    release a4 with temp_10_cmp_37
              #                    store to temp_20_array_ele_40 in mem offset legal
    sw      a2,148(sp)
              #                    release a2 with temp_20_array_ele_40
              #                    store to temp_13_arithop_40 in mem offset legal
    sw      a7,188(sp)
              #                    release a7 with temp_13_arithop_40
              #                    store to temp_14_array_ptr_40 in mem offset legal
    sd      s1,176(sp)
              #                    release s1 with temp_14_array_ptr_40
              #                    store to temp_12_arithop_40 in mem offset legal
    sw      a6,192(sp)
              #                    release a6 with temp_12_arithop_40
              #                    store to temp_26_logic_40 in mem offset legal
    sb      s11,130(sp)
              #                    release s11 with temp_26_logic_40
              #                    store to temp_16_booltrans_40 in mem offset legal
    sb      s7,171(sp)
              #                    release s7 with temp_16_booltrans_40
              #                    store to temp_9_ptr2globl_37 in mem offset legal
    sw      a3,204(sp)
              #                    release a3 with temp_9_ptr2globl_37
              #                    store to temp_17_logicnot_40 in mem offset legal
    sb      s8,170(sp)
              #                    release s8 with temp_17_logicnot_40
              #                    store to temp_24_array_ele_40 in mem offset legal
    sw      s6,132(sp)
              #                    release s6 with temp_24_array_ele_40
              #                    store to temp_45_arithop_39 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_45_arithop_39
              #                    store to temp_23_array_ptr_40 in mem offset legal
    sd      s4,136(sp)
              #                    release s4 with temp_23_array_ptr_40
              #                    store to temp_19_array_ptr_40 in mem offset legal
    sd      s10,152(sp)
              #                    release s10 with temp_19_array_ptr_40
              #                    store to temp_21_cmp_40 in mem offset legal
    sb      s2,147(sp)
              #                    release s2 with temp_21_cmp_40
              #                    store to temp_11_ptr2globl_40 in mem offset legal
    sw      a5,196(sp)
              #                    release a5 with temp_11_ptr2globl_40
              #                    store to temp_18_arithop_40 in mem offset legal
    sw      s9,164(sp)
              #                    release s9 with temp_18_arithop_40
              #                    occupy a0 with _anonymous_of_step_33_0
              #                    load from step_33 in mem


    lw      a0,212(sp)
    j       .while.head_38
              #                    regtab     a0:Freed { symidx: step_33, tracked: true } |     a1:Freed { symidx: i_35, tracked: true } |     a3:Freed { symidx: temp_9_ptr2globl_37, tracked: true } |     a4:Freed { symidx: temp_10_cmp_37, tracked: true } | 
              #                          label while.exit_38: 
.while.exit_38:
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|temp_46_ret_of_getint:4 at 20|N:4 at 16|temp_47_cmp:1 at 15|none:3 at 12|temp_48_ret_of_getint:4 at 8|temp_49_arithop:4 at 4|temp_50_ptr2globl:4 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 temp_46_ret_of_getint_56 
              #                          alloc i32 N_56 
              #                          alloc i1 temp_47_cmp_58 
              #                          alloc i32 temp_48_ret_of_getint_60 
              #                          alloc i32 temp_49_arithop_60 
              #                          alloc i32 temp_50_ptr2globl_56 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_46_ret_of_getint_56:i32 
              #                          temp_46_ret_of_getint_56 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_46_ret_of_getint_56 in mem offset legal
    sw      a0,20(sp)
              #                          N_56 = i32 temp_46_ret_of_getint_56 
              #                    occupy a0 with temp_46_ret_of_getint_56
              #                    occupy a1 with N_56
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_59 
    j       .while.head_59
              #                    regtab     a0:Freed { symidx: temp_46_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: N_56, tracked: true } | 
              #                          label while.head_59: 
.while.head_59:
              #                          new_var temp_47_cmp_58:i1 
              #                          temp_47_cmp_58 = icmp i32 Sgt N_56, 0_0 
              #                    occupy a1 with N_56
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_47_cmp_58
    slt     a3,a2,a1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_47_cmp_58, label while.body_59, label while.exit_59 
              #                    occupy a3 with temp_47_cmp_58
              #                    free a3
              #                    occupy a3 with temp_47_cmp_58
    bnez    a3, .while.body_59
              #                    free a3
    j       .while.exit_59
              #                    regtab     a0:Freed { symidx: temp_46_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: N_56, tracked: true } |     a3:Freed { symidx: temp_47_cmp_58, tracked: true } | 
              #                          label while.body_59: 
.while.body_59:
              #                          new_var temp_48_ret_of_getint_60:i32 
              #                          temp_48_ret_of_getint_60 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_46_ret_of_getint_56 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_46_ret_of_getint_56
              #                    store to N_56 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with N_56
              #                    store to temp_47_cmp_58 in mem offset legal
    sb      a3,15(sp)
              #                    release a3 with temp_47_cmp_58
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_48_ret_of_getint_60 in mem offset legal
    sw      a0,8(sp)
              #                          store temp_48_ret_of_getint_60:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_48_ret_of_getint_60
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                           Call void f_0(1_0) 
              #                    saved register dumping to mem
              #                    store to temp_48_ret_of_getint_60 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_48_ret_of_getint_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    f
              #                          new_var temp_49_arithop_60:i32 
              #                          temp_49_arithop_60 = Sub i32 N_56, 1_0 
              #                    occupy a0 with N_56
              #                    load from N_56 in mem


    lw      a0,16(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_49_arithop_60
              #                    regtab:    a0:Occupied { symidx: N_56, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_49_arithop_60, tracked: true, occupy_count: 1 } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          N_56 = i32 temp_49_arithop_60 
              #                    occupy a2 with temp_49_arithop_60
              #                    occupy a0 with N_56
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_59 
              #                    store to N_56 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with N_56
              #                    store to temp_49_arithop_60 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_49_arithop_60
              #                    occupy a0 with _anonymous_of_temp_46_ret_of_getint_56_0
              #                    load from temp_46_ret_of_getint_56 in mem


    lw      a0,20(sp)
              #                    occupy a1 with _anonymous_of_N_56_0
              #                    load from N_56 in mem


    lw      a1,16(sp)
    j       .while.head_59
              #                    regtab     a0:Freed { symidx: temp_46_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: N_56, tracked: true } |     a3:Freed { symidx: temp_47_cmp_58, tracked: true } | 
              #                          label while.exit_59: 
.while.exit_59:
              #                          new_var temp_50_ptr2globl_56:i32 
              #                          temp_50_ptr2globl_56 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a4 with temp_50_ptr2globl_56
    lw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                          ret temp_50_ptr2globl_56 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    store to temp_50_ptr2globl_56 in mem offset legal
    sw      a4,0(sp)
              #                    release a4 with temp_50_ptr2globl_56
              #                    store to temp_46_ret_of_getint_56 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_46_ret_of_getint_56
              #                    occupy a0 with temp_50_ptr2globl_56
              #                    load from temp_50_ptr2globl_56 in mem


    lw      a0,0(sp)
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: N_56, tracked: true } |     a3:Freed { symidx: temp_47_cmp_58, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl line2
              #                          global Array:i32:[Some(100_0)] line2_0 
    .type line2,@object
line2:
    .zero 400
    .align 4
    .globl line1
              #                          global Array:i32:[Some(50_0)] line1_0 
    .type line1,@object
line1:
    .zero 200
    .align 4
    .globl row
              #                          global Array:i32:[Some(50_0)] row_0 
    .type row,@object
row:
    .zero 200
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl sum
              #                          global i32 sum_0 
    .type sum,@object
sum:
    .word 0
    .align 4
    .globl ans
              #                          global Array:i32:[Some(50_0)] ans_0 
    .type ans,@object
ans:
    .zero 200
