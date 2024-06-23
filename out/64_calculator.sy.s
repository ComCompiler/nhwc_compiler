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
              #                          Define isdigit_0 [x_24] -> isdigit_ret_0 
    .globl isdigit
    .type isdigit,@function
isdigit:
              #                    mem layout:|ra_isdigit:8 at 16|s0_isdigit:8 at 8|x:4 at 4|temp_0_cmp:1 at 3|temp_1_cmp:1 at 2|temp_2_logic:1 at 1|none:1 at 0
    addi    sp,sp,-24
              #                    store to ra_isdigit_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_isdigit_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i1 temp_0_cmp_27 
              #                          alloc i1 temp_1_cmp_27 
              #                          alloc i1 temp_2_logic_27 
              #                    regtab     a0:Freed { symidx: x_24, tracked: true } | 
              #                          label L30_0: 
.L30_0:
              #                          new_var temp_0_cmp_27:i1 
              #                          temp_0_cmp_27 = icmp i32 Sle x_24, 57_0 
              #                    occupy a0 with x_24
              #                    occupy a1 with 57_0
    li      a1, 57
              #                    occupy a2 with temp_0_cmp_27
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_1_cmp_27:i1 
              #                          temp_1_cmp_27 = icmp i32 Sge x_24, 48_0 
              #                    occupy a0 with x_24
              #                    occupy a3 with 48_0
    li      a3, 48
              #                    occupy a4 with temp_1_cmp_27
    slt     a4,a0,a3
    xori    a4,a4,1
              #                    free a0
              #                    free a3
              #                    free a4
              #                          new_var temp_2_logic_27:i1 
              #                          temp_2_logic_27 = And i1 temp_1_cmp_27, temp_0_cmp_27 
              #                    occupy a4 with temp_1_cmp_27
              #                    occupy a2 with temp_0_cmp_27
              #                    occupy a5 with temp_2_logic_27
    and     a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                          br i1 temp_2_logic_27, label branch_true_28, label branch_false_28 
              #                    occupy a5 with temp_2_logic_27
              #                    free a5
              #                    occupy a5 with temp_2_logic_27
    bnez    a5, .branch_true_28
              #                    free a5
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: x_24, tracked: true } |     a2:Freed { symidx: temp_0_cmp_27, tracked: true } |     a4:Freed { symidx: temp_1_cmp_27, tracked: true } |     a5:Freed { symidx: temp_2_logic_27, tracked: true } | 
              #                          label branch_true_28: 
.branch_true_28:
              #                          ret 1_0 
              #                    load from ra_isdigit_0 in mem
    ld      ra,16(sp)
              #                    load from s0_isdigit_0 in mem
    ld      s0,8(sp)
              #                    store to x_24 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with x_24
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_24, tracked: true } |     a2:Freed { symidx: temp_0_cmp_27, tracked: true } |     a4:Freed { symidx: temp_1_cmp_27, tracked: true } |     a5:Freed { symidx: temp_2_logic_27, tracked: true } | 
              #                          label branch_false_28: 
.branch_false_28:
              #                    regtab     a0:Freed { symidx: x_24, tracked: true } |     a2:Freed { symidx: temp_0_cmp_27, tracked: true } |     a4:Freed { symidx: temp_1_cmp_27, tracked: true } |     a5:Freed { symidx: temp_2_logic_27, tracked: true } | 
              #                          label L31_0: 
.L31_0:
              #                          ret 0_0 
              #                    load from ra_isdigit_0 in mem
    ld      ra,16(sp)
              #                    load from s0_isdigit_0 in mem
    ld      s0,8(sp)
              #                    store to x_24 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with x_24
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_0_cmp_27, tracked: true } |     a4:Freed { symidx: temp_1_cmp_27, tracked: true } |     a5:Freed { symidx: temp_2_logic_27, tracked: true } | 
              #                    regtab 
              #                          Define power_0 [b_31, a_31] -> power_ret_0 
    .globl power
    .type power,@function
power:
              #                    mem layout:|ra_power:8 at 32|s0_power:8 at 24|b:4 at 20|a:4 at 16|result:4 at 12|temp_3_cmp:1 at 11|none:3 at 8|temp_4_arithop:4 at 4|temp_5_arithop:4 at 0
    addi    sp,sp,-40
              #                    store to ra_power_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_power_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 result_33 
              #                          alloc i1 temp_3_cmp_35 
              #                          alloc i32 temp_4_arithop_37 
              #                          alloc i32 temp_5_arithop_37 
              #                    regtab     a0:Freed { symidx: b_31, tracked: true } |     a1:Freed { symidx: a_31, tracked: true } | 
              #                          label L29_0: 
.L29_0:
              #                          result_33 = i32 1_0 
              #                    occupy a2 with result_33
    li      a2, 1
              #                    free a2
              #                          jump label: while.head_36 
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: b_31, tracked: true } |     a1:Freed { symidx: a_31, tracked: true } |     a2:Freed { symidx: result_33, tracked: true } | 
              #                          label while.head_36: 
.while.head_36:
              #                          new_var temp_3_cmp_35:i1 
              #                          temp_3_cmp_35 = icmp i32 Ne a_31, 0_0 
              #                    occupy a1 with a_31
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_3_cmp_35
    xor     a4,a1,a3
    snez    a4, a4
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_3_cmp_35, label while.body_36, label while.exit_36 
              #                    occupy a4 with temp_3_cmp_35
              #                    free a4
              #                    occupy a4 with temp_3_cmp_35
    bnez    a4, .while.body_36
              #                    free a4
    j       .while.exit_36
              #                    regtab     a0:Freed { symidx: b_31, tracked: true } |     a1:Freed { symidx: a_31, tracked: true } |     a2:Freed { symidx: result_33, tracked: true } |     a4:Freed { symidx: temp_3_cmp_35, tracked: true } | 
              #                          label while.body_36: 
.while.body_36:
              #                          new_var temp_4_arithop_37:i32 
              #                          temp_4_arithop_37 = Mul i32 result_33, b_31 
              #                    occupy a2 with result_33
              #                    occupy a0 with b_31
              #                    occupy a3 with temp_4_arithop_37
    mul     a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                          result_33 = i32 temp_4_arithop_37 
              #                    occupy a3 with temp_4_arithop_37
              #                    occupy a2 with result_33
    mv      a2, a3
              #                    free a3
              #                    free a2
              #                          new_var temp_5_arithop_37:i32 
              #                          temp_5_arithop_37 = Sub i32 a_31, 1_0 
              #                    occupy a1 with a_31
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_5_arithop_37
              #                    regtab:    a0:Freed { symidx: b_31, tracked: true } |     a1:Occupied { symidx: a_31, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: result_33, tracked: true } |     a3:Freed { symidx: temp_4_arithop_37, tracked: true } |     a4:Freed { symidx: temp_3_cmp_35, tracked: true } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Occupied { symidx: temp_5_arithop_37, tracked: true, occupy_count: 1 } | 


    sub     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                          a_31 = i32 temp_5_arithop_37 
              #                    occupy a6 with temp_5_arithop_37
              #                    occupy a1 with a_31
    mv      a1, a6
              #                    free a6
              #                    free a1
              #                          jump label: while.head_36 
              #                    store to temp_4_arithop_37 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_4_arithop_37
              #                    store to temp_5_arithop_37 in mem offset legal
    sw      a6,0(sp)
              #                    release a6 with temp_5_arithop_37
              #                    store to temp_3_cmp_35 in mem offset legal
    sb      a4,11(sp)
              #                    release a4 with temp_3_cmp_35
    j       .while.head_36
              #                    regtab     a0:Freed { symidx: b_31, tracked: true } |     a1:Freed { symidx: a_31, tracked: true } |     a2:Freed { symidx: result_33, tracked: true } |     a4:Freed { symidx: temp_3_cmp_35, tracked: true } | 
              #                          label while.exit_36: 
.while.exit_36:
              #                          ret result_33 
              #                    load from ra_power_0 in mem
    ld      ra,32(sp)
              #                    load from s0_power_0 in mem
    ld      s0,24(sp)
              #                    store to result_33 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with result_33
              #                    store to b_31 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with b_31
              #                    occupy a0 with result_33
              #                    load from result_33 in mem


    lw      a0,12(sp)
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: a_31, tracked: true } |     a4:Freed { symidx: temp_3_cmp_35, tracked: true } | 
              #                    regtab 
              #                          Define getstr_0 [get_41] -> getstr_ret_0 
    .globl getstr
    .type getstr,@function
getstr:
              #                    mem layout:|ra_getstr:8 at 48|s0_getstr:8 at 40|get:8 at 32|temp_6_ret_of_getch:4 at 28|x:4 at 24|length:4 at 20|temp_7_cmp:1 at 19|temp_8_cmp:1 at 18|temp_9_logic:1 at 17|none:1 at 16|temp_10_index_ptr:8 at 8|temp_11_arithop:4 at 4|temp_12_ret_of_getch:4 at 0
    addi    sp,sp,-56
              #                    store to ra_getstr_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_getstr_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          new_var get_41:ptr->i32 
              #                          alloc i32 temp_6_ret_of_getch_43 
              #                          alloc i32 x_43 
              #                          alloc i32 length_43 
              #                          alloc i1 temp_7_cmp_46 
              #                          alloc i1 temp_8_cmp_46 
              #                          alloc i1 temp_9_logic_46 
              #                          alloc ptr->i32 temp_10_index_ptr_48 
              #                          alloc i32 temp_11_arithop_48 
              #                          alloc i32 temp_12_ret_of_getch_48 
              #                    regtab     a0:Freed { symidx: get_41, tracked: true } | 
              #                          label L28_0: 
.L28_0:
              #                          new_var temp_6_ret_of_getch_43:i32 
              #                          temp_6_ret_of_getch_43 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to get_41 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with get_41
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_6_ret_of_getch_43 in mem offset legal
    sw      a0,28(sp)
              #                          x_43 = i32 temp_6_ret_of_getch_43 
              #                    occupy a0 with temp_6_ret_of_getch_43
              #                    occupy a1 with x_43
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          length_43 = i32 0_0 
              #                    occupy a2 with length_43
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_47 
    j       .while.head_47
              #                    regtab     a0:Freed { symidx: temp_6_ret_of_getch_43, tracked: true } |     a1:Freed { symidx: x_43, tracked: true } |     a2:Freed { symidx: length_43, tracked: true } | 
              #                          label while.head_47: 
.while.head_47:
              #                          new_var temp_7_cmp_46:i1 
              #                          temp_7_cmp_46 = icmp i32 Ne x_43, 10_0 
              #                    occupy a1 with x_43
              #                    occupy a3 with 10_0
    li      a3, 10
              #                    occupy a4 with temp_7_cmp_46
    xor     a4,a1,a3
    snez    a4, a4
              #                    free a1
              #                    free a3
              #                    free a4
              #                          new_var temp_8_cmp_46:i1 
              #                          temp_8_cmp_46 = icmp i32 Ne x_43, 13_0 
              #                    occupy a1 with x_43
              #                    occupy a5 with 13_0
    li      a5, 13
              #                    occupy a6 with temp_8_cmp_46
    xor     a6,a1,a5
    snez    a6, a6
              #                    free a1
              #                    free a5
              #                    free a6
              #                          new_var temp_9_logic_46:i1 
              #                          temp_9_logic_46 = And i1 temp_8_cmp_46, temp_7_cmp_46 
              #                    occupy a6 with temp_8_cmp_46
              #                    occupy a4 with temp_7_cmp_46
              #                    occupy a7 with temp_9_logic_46
    and     a7,a6,a4
              #                    free a6
              #                    free a4
              #                    free a7
              #                          br i1 temp_9_logic_46, label while.body_47, label while.exit_47 
              #                    occupy a7 with temp_9_logic_46
              #                    free a7
              #                    occupy a7 with temp_9_logic_46
    bnez    a7, .while.body_47
              #                    free a7
    j       .while.exit_47
              #                    regtab     a0:Freed { symidx: temp_6_ret_of_getch_43, tracked: true } |     a1:Freed { symidx: x_43, tracked: true } |     a2:Freed { symidx: length_43, tracked: true } |     a4:Freed { symidx: temp_7_cmp_46, tracked: true } |     a6:Freed { symidx: temp_8_cmp_46, tracked: true } |     a7:Freed { symidx: temp_9_logic_46, tracked: true } | 
              #                          label while.body_47: 
.while.body_47:
              #                          new_var temp_10_index_ptr_48:ptr->i32 
              #                          temp_10_index_ptr_48 = getelementptr get_41:ptr->i32 [Some(length_43)] 
              #                    occupy a3 with temp_10_index_ptr_48
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with length_43
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a5,a2
              #                    free a5
              #                    free a2
    add     a3,a3,s1
              #                    free s1
    slli a3,a3,2
              #                    occupy s2 with get_41
              #                    load from get_41 in mem
    ld      s2,32(sp)
    add     a3,a3,s2
              #                    free s2
              #                    free a3
              #                          store x_43:i32 temp_10_index_ptr_48:ptr->i32 
              #                    occupy a3 with temp_10_index_ptr_48
              #                    occupy a1 with x_43
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                          mu get_41:101 
              #                          get_41 = chi get_41:101 
              #                          new_var temp_11_arithop_48:i32 
              #                          temp_11_arithop_48 = Add i32 length_43, 1_0 
              #                    occupy a2 with length_43
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s3 with temp_11_arithop_48
    add     s3,a2,a5
              #                    free a2
              #                    free a5
              #                    free s3
              #                          length_43 = i32 temp_11_arithop_48 
              #                    occupy s3 with temp_11_arithop_48
              #                    occupy a2 with length_43
    mv      a2, s3
              #                    free s3
              #                    free a2
              #                          new_var temp_12_ret_of_getch_48:i32 
              #                          temp_12_ret_of_getch_48 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to get_41 in mem offset legal
    sd      s2,32(sp)
              #                    release s2 with get_41
              #                    store to temp_11_arithop_48 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_11_arithop_48
              #                    store to temp_6_ret_of_getch_43 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_6_ret_of_getch_43
              #                    store to x_43 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with x_43
              #                    store to length_43 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with length_43
              #                    store to temp_10_index_ptr_48 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_10_index_ptr_48
              #                    store to temp_7_cmp_46 in mem offset legal
    sb      a4,19(sp)
              #                    release a4 with temp_7_cmp_46
              #                    store to temp_8_cmp_46 in mem offset legal
    sb      a6,18(sp)
              #                    release a6 with temp_8_cmp_46
              #                    store to temp_9_logic_46 in mem offset legal
    sb      a7,17(sp)
              #                    release a7 with temp_9_logic_46
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_12_ret_of_getch_48 in mem offset legal
    sw      a0,0(sp)
              #                          x_43 = i32 temp_12_ret_of_getch_48 
              #                    occupy a0 with temp_12_ret_of_getch_48
              #                    occupy a1 with x_43
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_47 
              #                    store to temp_12_ret_of_getch_48 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_12_ret_of_getch_48
              #                    occupy a2 with _anonymous_of_length_43_0
              #                    load from length_43 in mem


    lw      a2,20(sp)
              #                    occupy a0 with _anonymous_of_temp_6_ret_of_getch_43_0
              #                    load from temp_6_ret_of_getch_43 in mem


    lw      a0,28(sp)
    j       .while.head_47
              #                    regtab     a0:Freed { symidx: temp_6_ret_of_getch_43, tracked: true } |     a1:Freed { symidx: x_43, tracked: true } |     a2:Freed { symidx: length_43, tracked: true } |     a4:Freed { symidx: temp_7_cmp_46, tracked: true } |     a6:Freed { symidx: temp_8_cmp_46, tracked: true } |     a7:Freed { symidx: temp_9_logic_46, tracked: true } | 
              #                          label while.exit_47: 
.while.exit_47:
              #                          ret length_43 
              #                    load from ra_getstr_0 in mem
    ld      ra,48(sp)
              #                    load from s0_getstr_0 in mem
    ld      s0,40(sp)
              #                    store to length_43 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with length_43
              #                    store to temp_6_ret_of_getch_43 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_6_ret_of_getch_43
              #                    occupy a0 with length_43
              #                    load from length_43 in mem


    lw      a0,20(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: x_43, tracked: true } |     a4:Freed { symidx: temp_7_cmp_46, tracked: true } |     a6:Freed { symidx: temp_8_cmp_46, tracked: true } |     a7:Freed { symidx: temp_9_logic_46, tracked: true } | 
              #                    regtab 
              #                          Define intpush_0 [x_53] -> intpush_ret_0 
    .globl intpush
    .type intpush,@function
intpush:
              #                    mem layout:|ra_intpush:8 at 32|s0_intpush:8 at 24|x:4 at 20|temp_13_ptr2globl:4 at 16|temp_14_arithop:4 at 12|temp_15_ptr2globl:4 at 8|temp_16_index_ptr:8 at 0
    addi    sp,sp,-40
              #                    store to ra_intpush_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_intpush_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 temp_13_ptr2globl_55 
              #                          alloc i32 temp_14_arithop_55 
              #                          alloc i32 temp_15_ptr2globl_55 
              #                          alloc ptr->i32 temp_16_index_ptr_55 
              #                    regtab     a0:Freed { symidx: x_53, tracked: true } | 
              #                          label L27_0: 
.L27_0:
              #                          new_var temp_13_ptr2globl_55:i32 
              #                          temp_13_ptr2globl_55 = load *intt_0:ptr->i32 
              #                    occupy a1 with *intt_0
              #                       load label intt as ptr to reg
    la      a1, intt
              #                    occupy reg a1 with *intt_0
              #                    occupy a2 with temp_13_ptr2globl_55
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_14_arithop_55:i32 
              #                          temp_14_arithop_55 = Add i32 temp_13_ptr2globl_55, 1_0 
              #                    occupy a2 with temp_13_ptr2globl_55
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_14_arithop_55
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          store temp_14_arithop_55:i32 *intt_0:ptr->i32 
              #                    occupy a5 with *intt_0
              #                       load label intt as ptr to reg
    la      a5, intt
              #                    occupy reg a5 with *intt_0
              #                    occupy a4 with temp_14_arithop_55
    sw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                          new_var temp_15_ptr2globl_55:i32 
              #                          temp_15_ptr2globl_55 = load *intt_0:ptr->i32 
              #                    occupy a6 with *intt_0
              #                       load label intt as ptr to reg
    la      a6, intt
              #                    occupy reg a6 with *intt_0
              #                    occupy a7 with temp_15_ptr2globl_55
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_16_index_ptr_55:ptr->i32 
              #                          temp_16_index_ptr_55 = getelementptr *ints_0:ptr->i32 [Some(temp_15_ptr2globl_55)] 
              #                    occupy s1 with temp_16_index_ptr_55
    li      s1, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a7 with temp_15_ptr2globl_55
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a3,a7
              #                    free a3
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *ints_0
              #                       load label ints as ptr to reg
    la      s3, ints
              #                    occupy reg s3 with *ints_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          store x_53:i32 temp_16_index_ptr_55:ptr->i32 
              #                    occupy s1 with temp_16_index_ptr_55
              #                    occupy a0 with x_53
    sw      a0,0(s1)
              #                    free a0
              #                    free s1
              #                          mu *ints_0:127 
              #                          *ints_0 = chi *ints_0:127 
              #                    regtab     a0:Freed { symidx: x_53, tracked: true } |     a2:Freed { symidx: temp_13_ptr2globl_55, tracked: true } |     a4:Freed { symidx: temp_14_arithop_55, tracked: true } |     a7:Freed { symidx: temp_15_ptr2globl_55, tracked: true } |     s1:Freed { symidx: temp_16_index_ptr_55, tracked: true } | 
              #                    regtab 
              #                          Define chapush_0 [x_58] -> chapush_ret_0 
    .globl chapush
    .type chapush,@function
chapush:
              #                    mem layout:|ra_chapush:8 at 32|s0_chapush:8 at 24|x:4 at 20|temp_17_ptr2globl:4 at 16|temp_18_arithop:4 at 12|temp_19_ptr2globl:4 at 8|temp_20_index_ptr:8 at 0
    addi    sp,sp,-40
              #                    store to ra_chapush_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_chapush_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 temp_17_ptr2globl_60 
              #                          alloc i32 temp_18_arithop_60 
              #                          alloc i32 temp_19_ptr2globl_60 
              #                          alloc ptr->i32 temp_20_index_ptr_60 
              #                    regtab     a0:Freed { symidx: x_58, tracked: true } | 
              #                          label L26_0: 
.L26_0:
              #                          new_var temp_17_ptr2globl_60:i32 
              #                          temp_17_ptr2globl_60 = load *chat_0:ptr->i32 
              #                    occupy a1 with *chat_0
              #                       load label chat as ptr to reg
    la      a1, chat
              #                    occupy reg a1 with *chat_0
              #                    occupy a2 with temp_17_ptr2globl_60
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_18_arithop_60:i32 
              #                          temp_18_arithop_60 = Add i32 temp_17_ptr2globl_60, 1_0 
              #                    occupy a2 with temp_17_ptr2globl_60
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_18_arithop_60
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          store temp_18_arithop_60:i32 *chat_0:ptr->i32 
              #                    occupy a5 with *chat_0
              #                       load label chat as ptr to reg
    la      a5, chat
              #                    occupy reg a5 with *chat_0
              #                    occupy a4 with temp_18_arithop_60
    sw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                          new_var temp_19_ptr2globl_60:i32 
              #                          temp_19_ptr2globl_60 = load *chat_0:ptr->i32 
              #                    occupy a6 with *chat_0
              #                       load label chat as ptr to reg
    la      a6, chat
              #                    occupy reg a6 with *chat_0
              #                    occupy a7 with temp_19_ptr2globl_60
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_20_index_ptr_60:ptr->i32 
              #                          temp_20_index_ptr_60 = getelementptr *chas_0:ptr->i32 [Some(temp_19_ptr2globl_60)] 
              #                    occupy s1 with temp_20_index_ptr_60
    li      s1, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a7 with temp_19_ptr2globl_60
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a3,a7
              #                    free a3
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *chas_0
              #                       load label chas as ptr to reg
    la      s3, chas
              #                    occupy reg s3 with *chas_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          store x_58:i32 temp_20_index_ptr_60:ptr->i32 
              #                    occupy s1 with temp_20_index_ptr_60
              #                    occupy a0 with x_58
    sw      a0,0(s1)
              #                    free a0
              #                    free s1
              #                          mu *chas_0:143 
              #                          *chas_0 = chi *chas_0:143 
              #                    regtab     a0:Freed { symidx: x_58, tracked: true } |     a2:Freed { symidx: temp_17_ptr2globl_60, tracked: true } |     a4:Freed { symidx: temp_18_arithop_60, tracked: true } |     a7:Freed { symidx: temp_19_ptr2globl_60, tracked: true } |     s1:Freed { symidx: temp_20_index_ptr_60, tracked: true } | 
              #                    regtab 
              #                          Define intpop_0 [] -> intpop_ret_0 
    .globl intpop
    .type intpop,@function
intpop:
              #                    mem layout:|ra_intpop:8 at 40|s0_intpop:8 at 32|temp_21_ptr2globl:4 at 28|temp_22_arithop:4 at 24|temp_23_ptr2globl:4 at 20|temp_24_arithop:4 at 16|temp_25_array_ptr:8 at 8|temp_26_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_intpop_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_intpop_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 temp_21_ptr2globl_64 
              #                          alloc i32 temp_22_arithop_64 
              #                          alloc i32 temp_23_ptr2globl_64 
              #                          alloc i32 temp_24_arithop_64 
              #                          alloc ptr->i32 temp_25_array_ptr_64 
              #                          alloc i32 temp_26_array_ele_64 
              #                    regtab 
              #                          label L25_0: 
.L25_0:
              #                          new_var temp_21_ptr2globl_64:i32 
              #                          temp_21_ptr2globl_64 = load *intt_0:ptr->i32 
              #                    occupy a0 with *intt_0
              #                       load label intt as ptr to reg
    la      a0, intt
              #                    occupy reg a0 with *intt_0
              #                    occupy a1 with temp_21_ptr2globl_64
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_22_arithop_64:i32 
              #                          temp_22_arithop_64 = Sub i32 temp_21_ptr2globl_64, 1_0 
              #                    occupy a1 with temp_21_ptr2globl_64
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_22_arithop_64
              #                    regtab:    a0:Freed { symidx: *intt_0, tracked: false } |     a1:Occupied { symidx: temp_21_ptr2globl_64, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_22_arithop_64, tracked: true, occupy_count: 1 } | 


    sub     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_22_arithop_64:i32 *intt_0:ptr->i32 
              #                    occupy a4 with *intt_0
              #                       load label intt as ptr to reg
    la      a4, intt
              #                    occupy reg a4 with *intt_0
              #                    occupy a3 with temp_22_arithop_64
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          new_var temp_23_ptr2globl_64:i32 
              #                          temp_23_ptr2globl_64 = load *intt_0:ptr->i32 
              #                    occupy a5 with *intt_0
              #                       load label intt as ptr to reg
    la      a5, intt
              #                    occupy reg a5 with *intt_0
              #                    occupy a6 with temp_23_ptr2globl_64
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_24_arithop_64:i32 
              #                          temp_24_arithop_64 = Add i32 temp_23_ptr2globl_64, 1_0 
              #                    occupy a6 with temp_23_ptr2globl_64
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a7 with temp_24_arithop_64
    add     a7,a6,a2
              #                    free a6
              #                    free a2
              #                    free a7
              #                          new_var temp_25_array_ptr_64:ptr->i32 
              #                          temp_25_array_ptr_64 = getelementptr *ints_0:ptr->i32 [Some(temp_24_arithop_64)] 
              #                    occupy s1 with temp_25_array_ptr_64
    li      s1, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a7 with temp_24_arithop_64
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a2,a7
              #                    free a2
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *ints_0
              #                       load label ints as ptr to reg
    la      s3, ints
              #                    occupy reg s3 with *ints_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          new_var temp_26_array_ele_64:i32 
              #                          temp_26_array_ele_64 = load temp_25_array_ptr_64:ptr->i32 
              #                    occupy s1 with temp_25_array_ptr_64
              #                    occupy s4 with temp_26_array_ele_64
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          ret temp_26_array_ele_64 
              #                    load from ra_intpop_0 in mem
    ld      ra,40(sp)
              #                    load from s0_intpop_0 in mem
    ld      s0,32(sp)
              #                    store to temp_26_array_ele_64 in mem offset legal
    sw      s4,4(sp)
              #                    release s4 with temp_26_array_ele_64
              #                    occupy a0 with temp_26_array_ele_64
              #                    load from temp_26_array_ele_64 in mem


    lw      a0,4(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_21_ptr2globl_64, tracked: true } |     a3:Freed { symidx: temp_22_arithop_64, tracked: true } |     a6:Freed { symidx: temp_23_ptr2globl_64, tracked: true } |     a7:Freed { symidx: temp_24_arithop_64, tracked: true } |     s1:Freed { symidx: temp_25_array_ptr_64, tracked: true } | 
              #                    regtab 
              #                          Define chapop_0 [] -> chapop_ret_0 
    .globl chapop
    .type chapop,@function
chapop:
              #                    mem layout:|ra_chapop:8 at 40|s0_chapop:8 at 32|temp_27_ptr2globl:4 at 28|temp_28_arithop:4 at 24|temp_29_ptr2globl:4 at 20|temp_30_arithop:4 at 16|temp_31_array_ptr:8 at 8|temp_32_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_chapop_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_chapop_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 temp_27_ptr2globl_68 
              #                          alloc i32 temp_28_arithop_68 
              #                          alloc i32 temp_29_ptr2globl_68 
              #                          alloc i32 temp_30_arithop_68 
              #                          alloc ptr->i32 temp_31_array_ptr_68 
              #                          alloc i32 temp_32_array_ele_68 
              #                    regtab 
              #                          label L24_0: 
.L24_0:
              #                          new_var temp_27_ptr2globl_68:i32 
              #                          temp_27_ptr2globl_68 = load *chat_0:ptr->i32 
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    occupy a1 with temp_27_ptr2globl_68
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_28_arithop_68:i32 
              #                          temp_28_arithop_68 = Sub i32 temp_27_ptr2globl_68, 1_0 
              #                    occupy a1 with temp_27_ptr2globl_68
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_28_arithop_68
              #                    regtab:    a0:Freed { symidx: *chat_0, tracked: false } |     a1:Occupied { symidx: temp_27_ptr2globl_68, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_28_arithop_68, tracked: true, occupy_count: 1 } | 


    sub     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_28_arithop_68:i32 *chat_0:ptr->i32 
              #                    occupy a4 with *chat_0
              #                       load label chat as ptr to reg
    la      a4, chat
              #                    occupy reg a4 with *chat_0
              #                    occupy a3 with temp_28_arithop_68
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          new_var temp_29_ptr2globl_68:i32 
              #                          temp_29_ptr2globl_68 = load *chat_0:ptr->i32 
              #                    occupy a5 with *chat_0
              #                       load label chat as ptr to reg
    la      a5, chat
              #                    occupy reg a5 with *chat_0
              #                    occupy a6 with temp_29_ptr2globl_68
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_30_arithop_68:i32 
              #                          temp_30_arithop_68 = Add i32 temp_29_ptr2globl_68, 1_0 
              #                    occupy a6 with temp_29_ptr2globl_68
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a7 with temp_30_arithop_68
    add     a7,a6,a2
              #                    free a6
              #                    free a2
              #                    free a7
              #                          new_var temp_31_array_ptr_68:ptr->i32 
              #                          temp_31_array_ptr_68 = getelementptr *chas_0:ptr->i32 [Some(temp_30_arithop_68)] 
              #                    occupy s1 with temp_31_array_ptr_68
    li      s1, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a7 with temp_30_arithop_68
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a2,a7
              #                    free a2
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *chas_0
              #                       load label chas as ptr to reg
    la      s3, chas
              #                    occupy reg s3 with *chas_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          new_var temp_32_array_ele_68:i32 
              #                          temp_32_array_ele_68 = load temp_31_array_ptr_68:ptr->i32 
              #                    occupy s1 with temp_31_array_ptr_68
              #                    occupy s4 with temp_32_array_ele_68
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          ret temp_32_array_ele_68 
              #                    load from ra_chapop_0 in mem
    ld      ra,40(sp)
              #                    load from s0_chapop_0 in mem
    ld      s0,32(sp)
              #                    store to temp_32_array_ele_68 in mem offset legal
    sw      s4,4(sp)
              #                    release s4 with temp_32_array_ele_68
              #                    occupy a0 with temp_32_array_ele_68
              #                    load from temp_32_array_ele_68 in mem


    lw      a0,4(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_27_ptr2globl_68, tracked: true } |     a3:Freed { symidx: temp_28_arithop_68, tracked: true } |     a6:Freed { symidx: temp_29_ptr2globl_68, tracked: true } |     a7:Freed { symidx: temp_30_arithop_68, tracked: true } |     s1:Freed { symidx: temp_31_array_ptr_68, tracked: true } | 
              #                    regtab 
              #                          Define intadd_0 [x_71] -> intadd_ret_0 
    .globl intadd
    .type intadd,@function
intadd:
              #                    mem layout:|ra_intadd:8 at 88|s0_intadd:8 at 80|x:4 at 76|temp_33_ptr2globl:4 at 72|temp_34_index_ptr:8 at 64|temp_35_ptr2globl:4 at 60|none:4 at 56|temp_36_array_ptr:8 at 48|temp_37_array_ele:4 at 44|temp_38_arithop:4 at 40|temp_39_ptr2globl:4 at 36|none:4 at 32|temp_40_index_ptr:8 at 24|temp_41_ptr2globl:4 at 20|none:4 at 16|temp_42_array_ptr:8 at 8|temp_43_array_ele:4 at 4|temp_44_arithop:4 at 0
    addi    sp,sp,-96
              #                    store to ra_intadd_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_intadd_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                          alloc i32 temp_33_ptr2globl_73 
              #                          alloc ptr->i32 temp_34_index_ptr_73 
              #                          alloc i32 temp_35_ptr2globl_73 
              #                          alloc ptr->i32 temp_36_array_ptr_73 
              #                          alloc i32 temp_37_array_ele_73 
              #                          alloc i32 temp_38_arithop_73 
              #                          alloc i32 temp_39_ptr2globl_73 
              #                          alloc ptr->i32 temp_40_index_ptr_73 
              #                          alloc i32 temp_41_ptr2globl_73 
              #                          alloc ptr->i32 temp_42_array_ptr_73 
              #                          alloc i32 temp_43_array_ele_73 
              #                          alloc i32 temp_44_arithop_73 
              #                    regtab     a0:Freed { symidx: x_71, tracked: true } | 
              #                          label L23_0: 
.L23_0:
              #                          new_var temp_33_ptr2globl_73:i32 
              #                          temp_33_ptr2globl_73 = load *intt_0:ptr->i32 
              #                    occupy a1 with *intt_0
              #                       load label intt as ptr to reg
    la      a1, intt
              #                    occupy reg a1 with *intt_0
              #                    occupy a2 with temp_33_ptr2globl_73
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_34_index_ptr_73:ptr->i32 
              #                          temp_34_index_ptr_73 = getelementptr *ints_0:ptr->i32 [Some(temp_33_ptr2globl_73)] 
              #                    occupy a3 with temp_34_index_ptr_73
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a2 with temp_33_ptr2globl_73
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a2
              #                    free a4
              #                    free a2
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a6 with *ints_0
              #                       load label ints as ptr to reg
    la      a6, ints
              #                    occupy reg a6 with *ints_0
    add     a3,a3,a6
              #                    free a6
              #                    free a3
              #                          new_var temp_35_ptr2globl_73:i32 
              #                          temp_35_ptr2globl_73 = load *intt_0:ptr->i32 
              #                    occupy a7 with *intt_0
              #                       load label intt as ptr to reg
    la      a7, intt
              #                    occupy reg a7 with *intt_0
              #                    occupy s1 with temp_35_ptr2globl_73
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_36_array_ptr_73:ptr->i32 
              #                          temp_36_array_ptr_73 = getelementptr *ints_0:ptr->i32 [Some(temp_35_ptr2globl_73)] 
              #                    occupy s2 with temp_36_array_ptr_73
    li      s2, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s1 with temp_35_ptr2globl_73
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a4,s1
              #                    free a4
              #                    free s1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy s4 with *ints_0
              #                       load label ints as ptr to reg
    la      s4, ints
              #                    occupy reg s4 with *ints_0
    add     s2,s2,s4
              #                    free s4
              #                    free s2
              #                          new_var temp_37_array_ele_73:i32 
              #                          temp_37_array_ele_73 = load temp_36_array_ptr_73:ptr->i32 
              #                    occupy s2 with temp_36_array_ptr_73
              #                    occupy s5 with temp_37_array_ele_73
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          new_var temp_38_arithop_73:i32 
              #                          temp_38_arithop_73 = Mul i32 temp_37_array_ele_73, 10_0 
              #                    occupy s5 with temp_37_array_ele_73
              #                    occupy s6 with 10_0
    li      s6, 10
              #                    occupy s7 with temp_38_arithop_73
    mul     s7,s5,s6
              #                    free s5
              #                    free s6
              #                    free s7
              #                          store temp_38_arithop_73:i32 temp_34_index_ptr_73:ptr->i32 
              #                    occupy a3 with temp_34_index_ptr_73
              #                    occupy s7 with temp_38_arithop_73
    sw      s7,0(a3)
              #                    free s7
              #                    free a3
              #                          mu *ints_0:206 
              #                          *ints_0 = chi *ints_0:206 
              #                          new_var temp_39_ptr2globl_73:i32 
              #                          temp_39_ptr2globl_73 = load *intt_0:ptr->i32 
              #                    occupy s8 with *intt_0
              #                       load label intt as ptr to reg
    la      s8, intt
              #                    occupy reg s8 with *intt_0
              #                    occupy s9 with temp_39_ptr2globl_73
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_40_index_ptr_73:ptr->i32 
              #                          temp_40_index_ptr_73 = getelementptr *ints_0:ptr->i32 [Some(temp_39_ptr2globl_73)] 
              #                    occupy s10 with temp_40_index_ptr_73
    li      s10, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s9 with temp_39_ptr2globl_73
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a4,s9
              #                    free a4
              #                    free s9
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
              #                    occupy a1 with *ints_0
              #                       load label ints as ptr to reg
    la      a1, ints
              #                    occupy reg a1 with *ints_0
    add     s10,s10,a1
              #                    free a1
              #                    free s10
              #                          new_var temp_41_ptr2globl_73:i32 
              #                          temp_41_ptr2globl_73 = load *intt_0:ptr->i32 
              #                    occupy a1 with *intt_0
              #                       load label intt as ptr to reg
    la      a1, intt
              #                    occupy reg a1 with *intt_0
              #                    occupy a4 with temp_41_ptr2globl_73
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                          new_var temp_42_array_ptr_73:ptr->i32 
              #                          temp_42_array_ptr_73 = getelementptr *ints_0:ptr->i32 [Some(temp_41_ptr2globl_73)] 
              #                    occupy a1 with temp_42_array_ptr_73
    li      a1, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a4 with temp_41_ptr2globl_73
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a4
              #                    free a5
              #                    free a4
    add     a1,a1,a6
              #                    free a6
    slli a1,a1,2
              #                    occupy a5 with *ints_0
              #                       load label ints as ptr to reg
    la      a5, ints
              #                    occupy reg a5 with *ints_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                          new_var temp_43_array_ele_73:i32 
              #                          temp_43_array_ele_73 = load temp_42_array_ptr_73:ptr->i32 
              #                    occupy a1 with temp_42_array_ptr_73
              #                    occupy a5 with temp_43_array_ele_73
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_44_arithop_73:i32 
              #                          temp_44_arithop_73 = Add i32 temp_43_array_ele_73, x_71 
              #                    occupy a5 with temp_43_array_ele_73
              #                    occupy a0 with x_71
              #                    occupy a6 with temp_44_arithop_73
    add     a6,a5,a0
              #                    free a5
              #                    free a0
              #                    free a6
              #                          store temp_44_arithop_73:i32 temp_40_index_ptr_73:ptr->i32 
              #                    occupy s10 with temp_40_index_ptr_73
              #                    occupy a6 with temp_44_arithop_73
    sw      a6,0(s10)
              #                    free a6
              #                    free s10
              #                          mu *ints_0:227 
              #                          *ints_0 = chi *ints_0:227 
              #                    regtab     a0:Freed { symidx: x_71, tracked: true } |     a1:Freed { symidx: temp_42_array_ptr_73, tracked: true } |     a2:Freed { symidx: temp_33_ptr2globl_73, tracked: true } |     a3:Freed { symidx: temp_34_index_ptr_73, tracked: true } |     a4:Freed { symidx: temp_41_ptr2globl_73, tracked: true } |     a5:Freed { symidx: temp_43_array_ele_73, tracked: true } |     a6:Freed { symidx: temp_44_arithop_73, tracked: true } |     s10:Freed { symidx: temp_40_index_ptr_73, tracked: true } |     s1:Freed { symidx: temp_35_ptr2globl_73, tracked: true } |     s2:Freed { symidx: temp_36_array_ptr_73, tracked: true } |     s5:Freed { symidx: temp_37_array_ele_73, tracked: true } |     s7:Freed { symidx: temp_38_arithop_73, tracked: true } |     s9:Freed { symidx: temp_39_ptr2globl_73, tracked: true } | 
              #                    regtab 
              #                          Define find_0 [] -> find_ret_0 
    .globl find
    .type find,@function
find:
              #                    mem layout:|ra_find:8 at 64|s0_find:8 at 56|temp_45_ret_of_chapop:4 at 52|temp_46_ptr2globl:4 at 48|temp_47_index_ptr:8 at 40|temp_48_ptr2globl:4 at 36|temp_49_arithop:4 at 32|temp_50_index_ptr:8 at 24|temp_51_ptr2globl:4 at 20|temp_52_ptr2globl:4 at 16|temp_53_arithop:4 at 12|temp_54_ptr2globl:4 at 8|temp_55_cmp:1 at 7|none:7 at 0
    addi    sp,sp,-72
              #                    store to ra_find_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_find_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc i32 temp_45_ret_of_chapop_77 
              #                          alloc i32 temp_46_ptr2globl_77 
              #                          alloc ptr->i32 temp_47_index_ptr_77 
              #                          alloc i32 temp_48_ptr2globl_77 
              #                          alloc i32 temp_49_arithop_77 
              #                          alloc ptr->i32 temp_50_index_ptr_77 
              #                          alloc i32 temp_51_ptr2globl_77 
              #                          alloc i32 temp_52_ptr2globl_77 
              #                          alloc i32 temp_53_arithop_77 
              #                          alloc i32 temp_54_ptr2globl_82 
              #                          alloc i1 temp_55_cmp_82 
              #                    regtab 
              #                          label L20_0: 
.L20_0:
              #                          new_var temp_45_ret_of_chapop_77:i32 
              #                          temp_45_ret_of_chapop_77 =  Call i32 chapop_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    chapop
              #                    store to temp_45_ret_of_chapop_77 in mem offset legal
    sw      a0,52(sp)
              #                          store temp_45_ret_of_chapop_77:i32 *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a0 with temp_45_ret_of_chapop_77
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_46_ptr2globl_77:i32 
              #                          temp_46_ptr2globl_77 = load *ii_0:ptr->i32 
              #                    occupy a2 with *ii_0
              #                       load label ii as ptr to reg
    la      a2, ii
              #                    occupy reg a2 with *ii_0
              #                    occupy a3 with temp_46_ptr2globl_77
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_47_index_ptr_77:ptr->i32 
              #                          temp_47_index_ptr_77 = getelementptr *get2_0:ptr->i32 [Some(temp_46_ptr2globl_77)] 
              #                    occupy a4 with temp_47_index_ptr_77
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_46_ptr2globl_77
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a3
              #                    free a5
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *get2_0
              #                       load label get2 as ptr to reg
    la      a7, get2
              #                    occupy reg a7 with *get2_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store 32_0:i32 temp_47_index_ptr_77:ptr->i32 
              #                    occupy a4 with temp_47_index_ptr_77
              #                    occupy s1 with 32_0
    li      s1, 32
    sw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          mu *get2_0:240 
              #                          *get2_0 = chi *get2_0:240 
              #                          new_var temp_48_ptr2globl_77:i32 
              #                          temp_48_ptr2globl_77 = load *ii_0:ptr->i32 
              #                    occupy s2 with *ii_0
              #                       load label ii as ptr to reg
    la      s2, ii
              #                    occupy reg s2 with *ii_0
              #                    occupy s3 with temp_48_ptr2globl_77
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_49_arithop_77:i32 
              #                          temp_49_arithop_77 = Add i32 temp_48_ptr2globl_77, 1_0 
              #                    occupy s3 with temp_48_ptr2globl_77
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s4 with temp_49_arithop_77
    add     s4,s3,a5
              #                    free s3
              #                    free a5
              #                    free s4
              #                          new_var temp_50_index_ptr_77:ptr->i32 
              #                          temp_50_index_ptr_77 = getelementptr *get2_0:ptr->i32 [Some(temp_49_arithop_77)] 
              #                    occupy s5 with temp_50_index_ptr_77
    li      s5, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s4 with temp_49_arithop_77
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a5,s4
              #                    free a5
              #                    free s4
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy s7 with *get2_0
              #                       load label get2 as ptr to reg
    la      s7, get2
              #                    occupy reg s7 with *get2_0
    add     s5,s5,s7
              #                    free s7
              #                    free s5
              #                          new_var temp_51_ptr2globl_77:i32 
              #                          temp_51_ptr2globl_77 = load *c_0:ptr->i32 
              #                    occupy s8 with *c_0
              #                       load label c as ptr to reg
    la      s8, c
              #                    occupy reg s8 with *c_0
              #                    occupy s9 with temp_51_ptr2globl_77
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          store temp_51_ptr2globl_77:i32 temp_50_index_ptr_77:ptr->i32 
              #                    occupy s5 with temp_50_index_ptr_77
              #                    occupy s9 with temp_51_ptr2globl_77
    sw      s9,0(s5)
              #                    free s9
              #                    free s5
              #                          mu *get2_0:255 
              #                          *get2_0 = chi *get2_0:255 
              #                          new_var temp_52_ptr2globl_77:i32 
              #                          temp_52_ptr2globl_77 = load *ii_0:ptr->i32 
              #                    occupy s10 with *ii_0
              #                       load label ii as ptr to reg
    la      s10, ii
              #                    occupy reg s10 with *ii_0
              #                    occupy s11 with temp_52_ptr2globl_77
    lw      s11,0(s10)
              #                    free s11
              #                    free s10
              #                          new_var temp_53_arithop_77:i32 
              #                          temp_53_arithop_77 = Add i32 temp_52_ptr2globl_77, 2_0 
              #                    occupy s11 with temp_52_ptr2globl_77
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with temp_53_arithop_77
    add     a2,s11,a1
              #                    free s11
              #                    free a1
              #                    free a2
              #                          store temp_53_arithop_77:i32 *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a2 with temp_53_arithop_77
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          jump label: L21_0 
    j       .L21_0
              #                    regtab     a0:Freed { symidx: temp_45_ret_of_chapop_77, tracked: true } |     a2:Freed { symidx: temp_53_arithop_77, tracked: true } |     a3:Freed { symidx: temp_46_ptr2globl_77, tracked: true } |     a4:Freed { symidx: temp_47_index_ptr_77, tracked: true } |     s11:Freed { symidx: temp_52_ptr2globl_77, tracked: true } |     s3:Freed { symidx: temp_48_ptr2globl_77, tracked: true } |     s4:Freed { symidx: temp_49_arithop_77, tracked: true } |     s5:Freed { symidx: temp_50_index_ptr_77, tracked: true } |     s9:Freed { symidx: temp_51_ptr2globl_77, tracked: true } | 
              #                          label L21_0: 
.L21_0:
              #                          new_var temp_54_ptr2globl_82:i32 
              #                          temp_54_ptr2globl_82 = load *chat_0:ptr->i32 
              #                    occupy a1 with *chat_0
              #                       load label chat as ptr to reg
    la      a1, chat
              #                    occupy reg a1 with *chat_0
              #                    occupy a5 with temp_54_ptr2globl_82
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_55_cmp_82:i1 
              #                          temp_55_cmp_82 = icmp i32 Eq temp_54_ptr2globl_82, 0_0 
              #                    occupy a5 with temp_54_ptr2globl_82
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with temp_55_cmp_82
    xor     a7,a5,a6
    seqz    a7, a7
              #                    free a5
              #                    free a6
              #                    free a7
              #                          br i1 temp_55_cmp_82, label branch_true_83, label branch_false_83 
              #                    occupy a7 with temp_55_cmp_82
              #                    free a7
              #                    occupy a7 with temp_55_cmp_82
    bnez    a7, .branch_true_83
              #                    free a7
    j       .branch_false_83
              #                    regtab     a0:Freed { symidx: temp_45_ret_of_chapop_77, tracked: true } |     a2:Freed { symidx: temp_53_arithop_77, tracked: true } |     a3:Freed { symidx: temp_46_ptr2globl_77, tracked: true } |     a4:Freed { symidx: temp_47_index_ptr_77, tracked: true } |     a5:Freed { symidx: temp_54_ptr2globl_82, tracked: true } |     a7:Freed { symidx: temp_55_cmp_82, tracked: true } |     s11:Freed { symidx: temp_52_ptr2globl_77, tracked: true } |     s3:Freed { symidx: temp_48_ptr2globl_77, tracked: true } |     s4:Freed { symidx: temp_49_arithop_77, tracked: true } |     s5:Freed { symidx: temp_50_index_ptr_77, tracked: true } |     s9:Freed { symidx: temp_51_ptr2globl_77, tracked: true } | 
              #                          label branch_true_83: 
.branch_true_83:
              #                          ret 0_0 
              #                    load from ra_find_0 in mem
    ld      ra,64(sp)
              #                    load from s0_find_0 in mem
    ld      s0,56(sp)
              #                    store to temp_45_ret_of_chapop_77 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_45_ret_of_chapop_77
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_45_ret_of_chapop_77, tracked: true } |     a2:Freed { symidx: temp_53_arithop_77, tracked: true } |     a3:Freed { symidx: temp_46_ptr2globl_77, tracked: true } |     a4:Freed { symidx: temp_47_index_ptr_77, tracked: true } |     a5:Freed { symidx: temp_54_ptr2globl_82, tracked: true } |     a7:Freed { symidx: temp_55_cmp_82, tracked: true } |     s11:Freed { symidx: temp_52_ptr2globl_77, tracked: true } |     s3:Freed { symidx: temp_48_ptr2globl_77, tracked: true } |     s4:Freed { symidx: temp_49_arithop_77, tracked: true } |     s5:Freed { symidx: temp_50_index_ptr_77, tracked: true } |     s9:Freed { symidx: temp_51_ptr2globl_77, tracked: true } | 
              #                          label branch_false_83: 
.branch_false_83:
              #                    regtab     a0:Freed { symidx: temp_45_ret_of_chapop_77, tracked: true } |     a2:Freed { symidx: temp_53_arithop_77, tracked: true } |     a3:Freed { symidx: temp_46_ptr2globl_77, tracked: true } |     a4:Freed { symidx: temp_47_index_ptr_77, tracked: true } |     a5:Freed { symidx: temp_54_ptr2globl_82, tracked: true } |     a7:Freed { symidx: temp_55_cmp_82, tracked: true } |     s11:Freed { symidx: temp_52_ptr2globl_77, tracked: true } |     s3:Freed { symidx: temp_48_ptr2globl_77, tracked: true } |     s4:Freed { symidx: temp_49_arithop_77, tracked: true } |     s5:Freed { symidx: temp_50_index_ptr_77, tracked: true } |     s9:Freed { symidx: temp_51_ptr2globl_77, tracked: true } | 
              #                          label L22_0: 
.L22_0:
              #                          ret 1_0 
              #                    load from ra_find_0 in mem
    ld      ra,64(sp)
              #                    load from s0_find_0 in mem
    ld      s0,56(sp)
              #                    store to temp_45_ret_of_chapop_77 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_45_ret_of_chapop_77
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_53_arithop_77, tracked: true } |     a3:Freed { symidx: temp_46_ptr2globl_77, tracked: true } |     a4:Freed { symidx: temp_47_index_ptr_77, tracked: true } |     a5:Freed { symidx: temp_54_ptr2globl_82, tracked: true } |     a7:Freed { symidx: temp_55_cmp_82, tracked: true } |     s11:Freed { symidx: temp_52_ptr2globl_77, tracked: true } |     s3:Freed { symidx: temp_48_ptr2globl_77, tracked: true } |     s4:Freed { symidx: temp_49_arithop_77, tracked: true } |     s5:Freed { symidx: temp_50_index_ptr_77, tracked: true } |     s9:Freed { symidx: temp_51_ptr2globl_77, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 1544|s0_main:8 at 1536|temp_56_ret_of_getstr:4 at 1532|lengets:4 at 1528|temp_57_ptr2globl:4 at 1524|temp_58_cmp:1 at 1523|none:3 at 1520|temp_59_ptr2globl:4 at 1516|none:4 at 1512|temp_60_array_ptr:8 at 1504|temp_61_array_ele:4 at 1500|temp_62_ret_of_isdigit:4 at 1496|temp_63_cmp:1 at 1495|none:3 at 1492|temp_64_ptr2globl:4 at 1488|temp_65_index_ptr:8 at 1480|temp_66_ptr2globl:4 at 1476|none:4 at 1472|temp_67_array_ptr:8 at 1464|temp_68_array_ele:4 at 1460|temp_69_ptr2globl:4 at 1456|temp_70_arithop:4 at 1452|temp_71_ptr2globl:4 at 1448|temp_72_arithop:4 at 1444|temp_73_ptr2globl:4 at 1440|temp_74_array_ptr:8 at 1432|temp_75_array_ele:4 at 1428|temp_76_cmp:1 at 1427|none:3 at 1424|temp_77_ptr2globl:4 at 1420|none:4 at 1416|temp_78_array_ptr:8 at 1408|temp_79_array_ele:4 at 1404|temp_80_cmp:1 at 1403|none:3 at 1400|temp_81_ptr2globl:4 at 1396|none:4 at 1392|temp_82_array_ptr:8 at 1384|temp_83_array_ele:4 at 1380|temp_84_cmp:1 at 1379|none:3 at 1376|temp_85_ret_of_chapop:4 at 1372|temp_86_ptr2globl:4 at 1368|temp_87_cmp:1 at 1367|none:3 at 1364|temp_88_ptr2globl:4 at 1360|temp_89_index_ptr:8 at 1352|temp_90_ptr2globl:4 at 1348|temp_91_arithop:4 at 1344|temp_92_index_ptr:8 at 1336|temp_93_ptr2globl:4 at 1332|temp_94_ptr2globl:4 at 1328|temp_95_arithop:4 at 1324|temp_96_ret_of_chapop:4 at 1320|temp_97_ptr2globl:4 at 1316|none:4 at 1312|temp_98_array_ptr:8 at 1304|temp_99_array_ele:4 at 1300|temp_100_cmp:1 at 1299|none:3 at 1296|temp_101_ptr2globl:4 at 1292|none:4 at 1288|temp_102_array_ptr:8 at 1280|temp_103_array_ele:4 at 1276|temp_104_cmp:1 at 1275|none:3 at 1272|temp_105_ptr2globl:4 at 1268|none:4 at 1264|temp_106_array_ptr:8 at 1256|temp_107_array_ele:4 at 1252|temp_108_cmp:1 at 1251|temp_109_logic:1 at 1250|none:2 at 1248|temp_110_ptr2globl:4 at 1244|none:4 at 1240|temp_111_array_ptr:8 at 1232|temp_112_array_ele:4 at 1228|temp_113_cmp:1 at 1227|temp_114_logic:1 at 1226|none:2 at 1224|temp_115_ptr2globl:4 at 1220|none:4 at 1216|temp_116_array_ptr:8 at 1208|temp_117_array_ele:4 at 1204|temp_118_cmp:1 at 1203|temp_119_logic:1 at 1202|none:2 at 1200|temp_120_ptr2globl:4 at 1196|none:4 at 1192|temp_121_array_ptr:8 at 1184|temp_122_array_ele:4 at 1180|temp_123_cmp:1 at 1179|temp_124_logic:1 at 1178|none:2 at 1176|temp_125_ptr2globl:4 at 1172|none:4 at 1168|temp_126_array_ptr:8 at 1160|temp_127_array_ele:4 at 1156|temp_128_cmp:1 at 1155|temp_129_logic:1 at 1154|none:2 at 1152|temp_130_ret_of_find:4 at 1148|temp_131_cmp:1 at 1147|none:3 at 1144|temp_132_ptr2globl:4 at 1140|none:4 at 1136|temp_133_array_ptr:8 at 1128|temp_134_array_ele:4 at 1124|temp_135_cmp:1 at 1123|none:3 at 1120|temp_136_ptr2globl:4 at 1116|none:4 at 1112|temp_137_array_ptr:8 at 1104|temp_138_array_ele:4 at 1100|temp_139_cmp:1 at 1099|none:3 at 1096|temp_140_ptr2globl:4 at 1092|none:4 at 1088|temp_141_array_ptr:8 at 1080|temp_142_array_ele:4 at 1076|temp_143_cmp:1 at 1075|temp_144_logic:1 at 1074|none:2 at 1072|temp_145_ptr2globl:4 at 1068|none:4 at 1064|temp_146_array_ptr:8 at 1056|temp_147_array_ele:4 at 1052|temp_148_cmp:1 at 1051|temp_149_logic:1 at 1050|none:2 at 1048|temp_150_ptr2globl:4 at 1044|none:4 at 1040|temp_151_array_ptr:8 at 1032|temp_152_array_ele:4 at 1028|temp_153_cmp:1 at 1027|temp_154_logic:1 at 1026|none:2 at 1024|temp_155_ptr2globl:4 at 1020|none:4 at 1016|temp_156_array_ptr:8 at 1008|temp_157_array_ele:4 at 1004|temp_158_cmp:1 at 1003|temp_159_logic:1 at 1002|none:2 at 1000|temp_160_ptr2globl:4 at 996|none:4 at 992|temp_161_array_ptr:8 at 984|temp_162_array_ele:4 at 980|temp_163_cmp:1 at 979|temp_164_logic:1 at 978|none:2 at 976|temp_165_ret_of_find:4 at 972|temp_166_cmp:1 at 971|none:3 at 968|temp_167_ptr2globl:4 at 964|none:4 at 960|temp_168_array_ptr:8 at 952|temp_169_array_ele:4 at 948|temp_170_cmp:1 at 947|none:3 at 944|temp_171_ptr2globl:4 at 940|none:4 at 936|temp_172_array_ptr:8 at 928|temp_173_array_ele:4 at 924|temp_174_cmp:1 at 923|none:3 at 920|temp_175_ptr2globl:4 at 916|none:4 at 912|temp_176_array_ptr:8 at 904|temp_177_array_ele:4 at 900|temp_178_cmp:1 at 899|temp_179_logic:1 at 898|none:2 at 896|temp_180_ptr2globl:4 at 892|none:4 at 888|temp_181_array_ptr:8 at 880|temp_182_array_ele:4 at 876|temp_183_cmp:1 at 875|temp_184_logic:1 at 874|none:2 at 872|temp_185_ptr2globl:4 at 868|none:4 at 864|temp_186_array_ptr:8 at 856|temp_187_array_ele:4 at 852|temp_188_cmp:1 at 851|temp_189_logic:1 at 850|none:2 at 848|temp_190_ret_of_find:4 at 844|temp_191_cmp:1 at 843|none:3 at 840|temp_192_ptr2globl:4 at 836|none:4 at 832|temp_193_array_ptr:8 at 824|temp_194_array_ele:4 at 820|temp_195_cmp:1 at 819|none:3 at 816|temp_196_ptr2globl:4 at 812|none:4 at 808|temp_197_array_ptr:8 at 800|temp_198_array_ele:4 at 796|temp_199_cmp:1 at 795|none:3 at 792|temp_200_ptr2globl:4 at 788|none:4 at 784|temp_201_array_ptr:8 at 776|temp_202_array_ele:4 at 772|temp_203_cmp:1 at 771|temp_204_logic:1 at 770|none:2 at 768|temp_205_ptr2globl:4 at 764|none:4 at 760|temp_206_array_ptr:8 at 752|temp_207_array_ele:4 at 748|temp_208_cmp:1 at 747|temp_209_logic:1 at 746|none:2 at 744|temp_210_ptr2globl:4 at 740|none:4 at 736|temp_211_array_ptr:8 at 728|temp_212_array_ele:4 at 724|temp_213_cmp:1 at 723|temp_214_logic:1 at 722|none:2 at 720|temp_215_ret_of_find:4 at 716|temp_216_cmp:1 at 715|none:3 at 712|temp_217_ptr2globl:4 at 708|none:4 at 704|temp_218_array_ptr:8 at 696|temp_219_array_ele:4 at 692|temp_220_cmp:1 at 691|none:3 at 688|temp_221_ptr2globl:4 at 684|none:4 at 680|temp_222_array_ptr:8 at 672|temp_223_array_ele:4 at 668|temp_224_cmp:1 at 667|none:3 at 664|temp_225_ptr2globl:4 at 660|none:4 at 656|temp_226_array_ptr:8 at 648|temp_227_array_ele:4 at 644|temp_228_cmp:1 at 643|temp_229_logic:1 at 642|none:2 at 640|temp_230_ptr2globl:4 at 636|none:4 at 632|temp_231_array_ptr:8 at 624|temp_232_array_ele:4 at 620|temp_233_cmp:1 at 619|temp_234_logic:1 at 618|none:2 at 616|temp_235_ptr2globl:4 at 612|none:4 at 608|temp_236_array_ptr:8 at 600|temp_237_array_ele:4 at 596|temp_238_cmp:1 at 595|temp_239_logic:1 at 594|none:2 at 592|temp_240_ret_of_find:4 at 588|temp_241_cmp:1 at 587|none:3 at 584|temp_242_ptr2globl:4 at 580|none:4 at 576|temp_243_index_ptr:8 at 568|temp_244_ptr2globl:4 at 564|temp_245_arithop:4 at 560|temp_246_ptr2globl:4 at 556|temp_247_cmp:1 at 555|none:3 at 552|temp_248_ret_of_chapop:4 at 548|c:4 at 544|temp_249_ptr2globl:4 at 540|none:4 at 536|temp_250_index_ptr:8 at 528|temp_251_ptr2globl:4 at 524|temp_252_arithop:4 at 520|temp_253_index_ptr:8 at 512|temp_254_ptr2globl:4 at 508|temp_255_arithop:4 at 504|temp_256_ptr2globl:4 at 500|none:4 at 496|temp_257_index_ptr:8 at 488|temp_258_ptr2globl:4 at 484|none:4 at 480|temp_259_array_ptr:8 at 472|temp_260_array_ele:4 at 468|temp_261_cmp:1 at 467|none:3 at 464|temp_262_ptr2globl:4 at 460|none:4 at 456|temp_263_array_ptr:8 at 448|temp_264_array_ele:4 at 444|temp_265_cmp:1 at 443|none:3 at 440|temp_266_ptr2globl:4 at 436|none:4 at 432|temp_267_array_ptr:8 at 424|temp_268_array_ele:4 at 420|temp_269_cmp:1 at 419|temp_270_logic:1 at 418|none:2 at 416|temp_271_ptr2globl:4 at 412|none:4 at 408|temp_272_array_ptr:8 at 400|temp_273_array_ele:4 at 396|temp_274_cmp:1 at 395|temp_275_logic:1 at 394|none:2 at 392|temp_276_ptr2globl:4 at 388|none:4 at 384|temp_277_array_ptr:8 at 376|temp_278_array_ele:4 at 372|temp_279_cmp:1 at 371|temp_280_logic:1 at 370|none:2 at 368|temp_281_ptr2globl:4 at 364|none:4 at 360|temp_282_array_ptr:8 at 352|temp_283_array_ele:4 at 348|temp_284_cmp:1 at 347|temp_285_logic:1 at 346|none:2 at 344|temp_286_ptr2globl:4 at 340|none:4 at 336|temp_287_array_ptr:8 at 328|temp_288_array_ele:4 at 324|temp_289_cmp:1 at 323|temp_290_logic:1 at 322|none:2 at 320|temp_291_ret_of_intpop:4 at 316|a:4 at 312|temp_292_ret_of_intpop:4 at 308|b:4 at 304|c:4 at 300|temp_293_ptr2globl:4 at 296|temp_294_array_ptr:8 at 288|temp_295_array_ele:4 at 284|temp_296_cmp:1 at 283|none:3 at 280|temp_297_arithop:4 at 276|temp_298_ptr2globl:4 at 272|temp_299_array_ptr:8 at 264|temp_300_array_ele:4 at 260|temp_301_cmp:1 at 259|none:3 at 256|temp_302_arithop:4 at 252|temp_303_ptr2globl:4 at 248|temp_304_array_ptr:8 at 240|temp_305_array_ele:4 at 236|temp_306_cmp:1 at 235|none:3 at 232|temp_307_arithop:4 at 228|temp_308_ptr2globl:4 at 224|temp_309_array_ptr:8 at 216|temp_310_array_ele:4 at 212|temp_311_cmp:1 at 211|none:3 at 208|temp_312_arithop:4 at 204|temp_313_ptr2globl:4 at 200|temp_314_array_ptr:8 at 192|temp_315_array_ele:4 at 188|temp_316_cmp:1 at 187|none:3 at 184|temp_317_arithop:4 at 180|temp_318_ptr2globl:4 at 176|temp_319_array_ptr:8 at 168|temp_320_array_ele:4 at 164|temp_321_cmp:1 at 163|none:3 at 160|temp_322_ret_of_power:4 at 156|temp_323_ptr2globl:4 at 152|temp_324_arithop:4 at 148|temp_325_ptr2globl:4 at 144|temp_326_array_ptr:8 at 136|temp_327_array_ele:4 at 132|temp_328_cmp:1 at 131|none:3 at 128|temp_329_ptr2globl:4 at 124|none:4 at 120|temp_330_array_ptr:8 at 112|temp_331_array_ele:4 at 108|temp_332_arithop:4 at 104|temp_333_ptr2globl:4 at 100|temp_334_ptr2globl:4 at 96|temp_335_arithop:4 at 92|none:4 at 88|temp_336_array_ptr:8 at 80|temp_337_array_ele:4 at 76|temp_338_cmp:1 at 75|none:3 at 72|temp_339_ptr2globl:4 at 68|temp_340_ptr2globl:4 at 64|temp_341_arithop:4 at 60|none:4 at 56|temp_342_array_ptr:8 at 48|temp_343_array_ele:4 at 44|temp_344_arithop:4 at 40|temp_345_ptr2globl:4 at 36|temp_346_arithop:4 at 32|temp_347_ptr2globl:4 at 28|temp_348_ptr2globl:4 at 24|temp_349_arithop:4 at 20|temp_350_arithop:4 at 16|temp_351_array_ptr:8 at 8|temp_352_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-1552
              #                    store to ra_main_0 in mem offset legal
    sd      ra,1544(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,1536(sp)
    addi    s0,sp,1552
              #                          alloc i32 temp_56_ret_of_getstr_87 
              #                          alloc i32 lengets_87 
              #                          alloc i32 temp_57_ptr2globl_91 
              #                          alloc i1 temp_58_cmp_91 
              #                          alloc i32 temp_59_ptr2globl_94 
              #                          alloc ptr->i32 temp_60_array_ptr_94 
              #                          alloc i32 temp_61_array_ele_94 
              #                          alloc i32 temp_62_ret_of_isdigit_94 
              #                          alloc i1 temp_63_cmp_94 
              #                          alloc i32 temp_64_ptr2globl_96 
              #                          alloc ptr->i32 temp_65_index_ptr_96 
              #                          alloc i32 temp_66_ptr2globl_96 
              #                          alloc ptr->i32 temp_67_array_ptr_96 
              #                          alloc i32 temp_68_array_ele_96 
              #                          alloc i32 temp_69_ptr2globl_96 
              #                          alloc i32 temp_70_arithop_96 
              #                          alloc i32 temp_71_ptr2globl_93 
              #                          alloc i32 temp_72_arithop_93 
              #                          alloc i32 temp_73_ptr2globl_100 
              #                          alloc ptr->i32 temp_74_array_ptr_100 
              #                          alloc i32 temp_75_array_ele_100 
              #                          alloc i1 temp_76_cmp_100 
              #                          alloc i32 temp_77_ptr2globl_103 
              #                          alloc ptr->i32 temp_78_array_ptr_103 
              #                          alloc i32 temp_79_array_ele_103 
              #                          alloc i1 temp_80_cmp_103 
              #                          alloc i32 temp_81_ptr2globl_106 
              #                          alloc ptr->i32 temp_82_array_ptr_106 
              #                          alloc i32 temp_83_array_ele_106 
              #                          alloc i1 temp_84_cmp_106 
              #                          alloc i32 temp_85_ret_of_chapop_108 
              #                          alloc i32 temp_86_ptr2globl_110 
              #                          alloc i1 temp_87_cmp_110 
              #                          alloc i32 temp_88_ptr2globl_112 
              #                          alloc ptr->i32 temp_89_index_ptr_112 
              #                          alloc i32 temp_90_ptr2globl_112 
              #                          alloc i32 temp_91_arithop_112 
              #                          alloc ptr->i32 temp_92_index_ptr_112 
              #                          alloc i32 temp_93_ptr2globl_112 
              #                          alloc i32 temp_94_ptr2globl_112 
              #                          alloc i32 temp_95_arithop_112 
              #                          alloc i32 temp_96_ret_of_chapop_112 
              #                          alloc i32 temp_97_ptr2globl_117 
              #                          alloc ptr->i32 temp_98_array_ptr_117 
              #                          alloc i32 temp_99_array_ele_117 
              #                          alloc i1 temp_100_cmp_117 
              #                          alloc i32 temp_101_ptr2globl_120 
              #                          alloc ptr->i32 temp_102_array_ptr_120 
              #                          alloc i32 temp_103_array_ele_120 
              #                          alloc i1 temp_104_cmp_120 
              #                          alloc i32 temp_105_ptr2globl_120 
              #                          alloc ptr->i32 temp_106_array_ptr_120 
              #                          alloc i32 temp_107_array_ele_120 
              #                          alloc i1 temp_108_cmp_120 
              #                          alloc i1 temp_109_logic_120 
              #                          alloc i32 temp_110_ptr2globl_120 
              #                          alloc ptr->i32 temp_111_array_ptr_120 
              #                          alloc i32 temp_112_array_ele_120 
              #                          alloc i1 temp_113_cmp_120 
              #                          alloc i1 temp_114_logic_120 
              #                          alloc i32 temp_115_ptr2globl_120 
              #                          alloc ptr->i32 temp_116_array_ptr_120 
              #                          alloc i32 temp_117_array_ele_120 
              #                          alloc i1 temp_118_cmp_120 
              #                          alloc i1 temp_119_logic_120 
              #                          alloc i32 temp_120_ptr2globl_120 
              #                          alloc ptr->i32 temp_121_array_ptr_120 
              #                          alloc i32 temp_122_array_ele_120 
              #                          alloc i1 temp_123_cmp_120 
              #                          alloc i1 temp_124_logic_120 
              #                          alloc i32 temp_125_ptr2globl_120 
              #                          alloc ptr->i32 temp_126_array_ptr_120 
              #                          alloc i32 temp_127_array_ele_120 
              #                          alloc i1 temp_128_cmp_120 
              #                          alloc i1 temp_129_logic_120 
              #                          alloc i32 temp_130_ret_of_find_123 
              #                          alloc i1 temp_131_cmp_123 
              #                          alloc i32 temp_132_ptr2globl_127 
              #                          alloc ptr->i32 temp_133_array_ptr_127 
              #                          alloc i32 temp_134_array_ele_127 
              #                          alloc i1 temp_135_cmp_127 
              #                          alloc i32 temp_136_ptr2globl_130 
              #                          alloc ptr->i32 temp_137_array_ptr_130 
              #                          alloc i32 temp_138_array_ele_130 
              #                          alloc i1 temp_139_cmp_130 
              #                          alloc i32 temp_140_ptr2globl_130 
              #                          alloc ptr->i32 temp_141_array_ptr_130 
              #                          alloc i32 temp_142_array_ele_130 
              #                          alloc i1 temp_143_cmp_130 
              #                          alloc i1 temp_144_logic_130 
              #                          alloc i32 temp_145_ptr2globl_130 
              #                          alloc ptr->i32 temp_146_array_ptr_130 
              #                          alloc i32 temp_147_array_ele_130 
              #                          alloc i1 temp_148_cmp_130 
              #                          alloc i1 temp_149_logic_130 
              #                          alloc i32 temp_150_ptr2globl_130 
              #                          alloc ptr->i32 temp_151_array_ptr_130 
              #                          alloc i32 temp_152_array_ele_130 
              #                          alloc i1 temp_153_cmp_130 
              #                          alloc i1 temp_154_logic_130 
              #                          alloc i32 temp_155_ptr2globl_130 
              #                          alloc ptr->i32 temp_156_array_ptr_130 
              #                          alloc i32 temp_157_array_ele_130 
              #                          alloc i1 temp_158_cmp_130 
              #                          alloc i1 temp_159_logic_130 
              #                          alloc i32 temp_160_ptr2globl_130 
              #                          alloc ptr->i32 temp_161_array_ptr_130 
              #                          alloc i32 temp_162_array_ele_130 
              #                          alloc i1 temp_163_cmp_130 
              #                          alloc i1 temp_164_logic_130 
              #                          alloc i32 temp_165_ret_of_find_133 
              #                          alloc i1 temp_166_cmp_133 
              #                          alloc i32 temp_167_ptr2globl_137 
              #                          alloc ptr->i32 temp_168_array_ptr_137 
              #                          alloc i32 temp_169_array_ele_137 
              #                          alloc i1 temp_170_cmp_137 
              #                          alloc i32 temp_171_ptr2globl_140 
              #                          alloc ptr->i32 temp_172_array_ptr_140 
              #                          alloc i32 temp_173_array_ele_140 
              #                          alloc i1 temp_174_cmp_140 
              #                          alloc i32 temp_175_ptr2globl_140 
              #                          alloc ptr->i32 temp_176_array_ptr_140 
              #                          alloc i32 temp_177_array_ele_140 
              #                          alloc i1 temp_178_cmp_140 
              #                          alloc i1 temp_179_logic_140 
              #                          alloc i32 temp_180_ptr2globl_140 
              #                          alloc ptr->i32 temp_181_array_ptr_140 
              #                          alloc i32 temp_182_array_ele_140 
              #                          alloc i1 temp_183_cmp_140 
              #                          alloc i1 temp_184_logic_140 
              #                          alloc i32 temp_185_ptr2globl_140 
              #                          alloc ptr->i32 temp_186_array_ptr_140 
              #                          alloc i32 temp_187_array_ele_140 
              #                          alloc i1 temp_188_cmp_140 
              #                          alloc i1 temp_189_logic_140 
              #                          alloc i32 temp_190_ret_of_find_143 
              #                          alloc i1 temp_191_cmp_143 
              #                          alloc i32 temp_192_ptr2globl_147 
              #                          alloc ptr->i32 temp_193_array_ptr_147 
              #                          alloc i32 temp_194_array_ele_147 
              #                          alloc i1 temp_195_cmp_147 
              #                          alloc i32 temp_196_ptr2globl_150 
              #                          alloc ptr->i32 temp_197_array_ptr_150 
              #                          alloc i32 temp_198_array_ele_150 
              #                          alloc i1 temp_199_cmp_150 
              #                          alloc i32 temp_200_ptr2globl_150 
              #                          alloc ptr->i32 temp_201_array_ptr_150 
              #                          alloc i32 temp_202_array_ele_150 
              #                          alloc i1 temp_203_cmp_150 
              #                          alloc i1 temp_204_logic_150 
              #                          alloc i32 temp_205_ptr2globl_150 
              #                          alloc ptr->i32 temp_206_array_ptr_150 
              #                          alloc i32 temp_207_array_ele_150 
              #                          alloc i1 temp_208_cmp_150 
              #                          alloc i1 temp_209_logic_150 
              #                          alloc i32 temp_210_ptr2globl_150 
              #                          alloc ptr->i32 temp_211_array_ptr_150 
              #                          alloc i32 temp_212_array_ele_150 
              #                          alloc i1 temp_213_cmp_150 
              #                          alloc i1 temp_214_logic_150 
              #                          alloc i32 temp_215_ret_of_find_153 
              #                          alloc i1 temp_216_cmp_153 
              #                          alloc i32 temp_217_ptr2globl_157 
              #                          alloc ptr->i32 temp_218_array_ptr_157 
              #                          alloc i32 temp_219_array_ele_157 
              #                          alloc i1 temp_220_cmp_157 
              #                          alloc i32 temp_221_ptr2globl_160 
              #                          alloc ptr->i32 temp_222_array_ptr_160 
              #                          alloc i32 temp_223_array_ele_160 
              #                          alloc i1 temp_224_cmp_160 
              #                          alloc i32 temp_225_ptr2globl_160 
              #                          alloc ptr->i32 temp_226_array_ptr_160 
              #                          alloc i32 temp_227_array_ele_160 
              #                          alloc i1 temp_228_cmp_160 
              #                          alloc i1 temp_229_logic_160 
              #                          alloc i32 temp_230_ptr2globl_160 
              #                          alloc ptr->i32 temp_231_array_ptr_160 
              #                          alloc i32 temp_232_array_ele_160 
              #                          alloc i1 temp_233_cmp_160 
              #                          alloc i1 temp_234_logic_160 
              #                          alloc i32 temp_235_ptr2globl_160 
              #                          alloc ptr->i32 temp_236_array_ptr_160 
              #                          alloc i32 temp_237_array_ele_160 
              #                          alloc i1 temp_238_cmp_160 
              #                          alloc i1 temp_239_logic_160 
              #                          alloc i32 temp_240_ret_of_find_163 
              #                          alloc i1 temp_241_cmp_163 
              #                          alloc i32 temp_242_ptr2globl_99 
              #                          alloc ptr->i32 temp_243_index_ptr_99 
              #                          alloc i32 temp_244_ptr2globl_99 
              #                          alloc i32 temp_245_arithop_99 
              #                          alloc i32 temp_246_ptr2globl_170 
              #                          alloc i1 temp_247_cmp_170 
              #                          alloc i32 temp_248_ret_of_chapop_172 
              #                          alloc i32 c_172 
              #                          alloc i32 temp_249_ptr2globl_172 
              #                          alloc ptr->i32 temp_250_index_ptr_172 
              #                          alloc i32 temp_251_ptr2globl_172 
              #                          alloc i32 temp_252_arithop_172 
              #                          alloc ptr->i32 temp_253_index_ptr_172 
              #                          alloc i32 temp_254_ptr2globl_172 
              #                          alloc i32 temp_255_arithop_172 
              #                          alloc i32 temp_256_ptr2globl_87 
              #                          alloc ptr->i32 temp_257_index_ptr_87 
              #                          alloc i32 temp_258_ptr2globl_179 
              #                          alloc ptr->i32 temp_259_array_ptr_179 
              #                          alloc i32 temp_260_array_ele_179 
              #                          alloc i1 temp_261_cmp_179 
              #                          alloc i32 temp_262_ptr2globl_182 
              #                          alloc ptr->i32 temp_263_array_ptr_182 
              #                          alloc i32 temp_264_array_ele_182 
              #                          alloc i1 temp_265_cmp_182 
              #                          alloc i32 temp_266_ptr2globl_182 
              #                          alloc ptr->i32 temp_267_array_ptr_182 
              #                          alloc i32 temp_268_array_ele_182 
              #                          alloc i1 temp_269_cmp_182 
              #                          alloc i1 temp_270_logic_182 
              #                          alloc i32 temp_271_ptr2globl_182 
              #                          alloc ptr->i32 temp_272_array_ptr_182 
              #                          alloc i32 temp_273_array_ele_182 
              #                          alloc i1 temp_274_cmp_182 
              #                          alloc i1 temp_275_logic_182 
              #                          alloc i32 temp_276_ptr2globl_182 
              #                          alloc ptr->i32 temp_277_array_ptr_182 
              #                          alloc i32 temp_278_array_ele_182 
              #                          alloc i1 temp_279_cmp_182 
              #                          alloc i1 temp_280_logic_182 
              #                          alloc i32 temp_281_ptr2globl_182 
              #                          alloc ptr->i32 temp_282_array_ptr_182 
              #                          alloc i32 temp_283_array_ele_182 
              #                          alloc i1 temp_284_cmp_182 
              #                          alloc i1 temp_285_logic_182 
              #                          alloc i32 temp_286_ptr2globl_182 
              #                          alloc ptr->i32 temp_287_array_ptr_182 
              #                          alloc i32 temp_288_array_ele_182 
              #                          alloc i1 temp_289_cmp_182 
              #                          alloc i1 temp_290_logic_182 
              #                          alloc i32 temp_291_ret_of_intpop_184 
              #                          alloc i32 a_184 
              #                          alloc i32 temp_292_ret_of_intpop_184 
              #                          alloc i32 b_184 
              #                          alloc i32 c_184 
              #                          alloc i32 temp_293_ptr2globl_188 
              #                          alloc ptr->i32 temp_294_array_ptr_188 
              #                          alloc i32 temp_295_array_ele_188 
              #                          alloc i1 temp_296_cmp_188 
              #                          alloc i32 temp_297_arithop_188 
              #                          alloc i32 temp_298_ptr2globl_191 
              #                          alloc ptr->i32 temp_299_array_ptr_191 
              #                          alloc i32 temp_300_array_ele_191 
              #                          alloc i1 temp_301_cmp_191 
              #                          alloc i32 temp_302_arithop_191 
              #                          alloc i32 temp_303_ptr2globl_194 
              #                          alloc ptr->i32 temp_304_array_ptr_194 
              #                          alloc i32 temp_305_array_ele_194 
              #                          alloc i1 temp_306_cmp_194 
              #                          alloc i32 temp_307_arithop_194 
              #                          alloc i32 temp_308_ptr2globl_197 
              #                          alloc ptr->i32 temp_309_array_ptr_197 
              #                          alloc i32 temp_310_array_ele_197 
              #                          alloc i1 temp_311_cmp_197 
              #                          alloc i32 temp_312_arithop_197 
              #                          alloc i32 temp_313_ptr2globl_200 
              #                          alloc ptr->i32 temp_314_array_ptr_200 
              #                          alloc i32 temp_315_array_ele_200 
              #                          alloc i1 temp_316_cmp_200 
              #                          alloc i32 temp_317_arithop_200 
              #                          alloc i32 temp_318_ptr2globl_203 
              #                          alloc ptr->i32 temp_319_array_ptr_203 
              #                          alloc i32 temp_320_array_ele_203 
              #                          alloc i1 temp_321_cmp_203 
              #                          alloc i32 temp_322_ret_of_power_203 
              #                          alloc i32 temp_323_ptr2globl_181 
              #                          alloc i32 temp_324_arithop_181 
              #                          alloc i32 temp_325_ptr2globl_208 
              #                          alloc ptr->i32 temp_326_array_ptr_208 
              #                          alloc i32 temp_327_array_ele_208 
              #                          alloc i1 temp_328_cmp_208 
              #                          alloc i32 temp_329_ptr2globl_210 
              #                          alloc ptr->i32 temp_330_array_ptr_210 
              #                          alloc i32 temp_331_array_ele_210 
              #                          alloc i32 temp_332_arithop_210 
              #                          alloc i32 temp_333_ptr2globl_213 
              #                          alloc i32 temp_334_ptr2globl_213 
              #                          alloc i32 temp_335_arithop_213 
              #                          alloc ptr->i32 temp_336_array_ptr_213 
              #                          alloc i32 temp_337_array_ele_213 
              #                          alloc i1 temp_338_cmp_213 
              #                          alloc i32 temp_339_ptr2globl_215 
              #                          alloc i32 temp_340_ptr2globl_215 
              #                          alloc i32 temp_341_arithop_215 
              #                          alloc ptr->i32 temp_342_array_ptr_215 
              #                          alloc i32 temp_343_array_ele_215 
              #                          alloc i32 temp_344_arithop_215 
              #                          alloc i32 temp_345_ptr2globl_215 
              #                          alloc i32 temp_346_arithop_215 
              #                          alloc i32 temp_347_ptr2globl_210 
              #                          alloc i32 temp_348_ptr2globl_210 
              #                          alloc i32 temp_349_arithop_210 
              #                          alloc i32 temp_350_arithop_210 
              #                          alloc ptr->i32 temp_351_array_ptr_87 
              #                          alloc i32 temp_352_array_ele_87 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          store 0_0:i32 *intt_0:ptr->i32 
              #                    occupy a0 with *intt_0
              #                       load label intt as ptr to reg
    la      a0, intt
              #                    occupy reg a0 with *intt_0
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          store 0_0:i32 *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                          new_var temp_56_ret_of_getstr_87:i32 
              #                          temp_56_ret_of_getstr_87 =  Call i32 getstr_0(*get_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*get_0_0
              #                       load label get as ptr to reg
    la      a0, get
              #                    arg load ended


    call    getstr
              #                    store to temp_56_ret_of_getstr_87 in mem offset legal
    sw      a0,1532(sp)
              #                          lengets_87 = i32 temp_56_ret_of_getstr_87 
              #                    occupy a0 with temp_56_ret_of_getstr_87
              #                    occupy a1 with lengets_87
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_92 
    j       .while.head_92
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: lengets_87, tracked: true } | 
              #                          label while.head_92: 
.while.head_92:
              #                          new_var temp_57_ptr2globl_91:i32 
              #                          temp_57_ptr2globl_91 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy a3 with temp_57_ptr2globl_91
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_58_cmp_91:i1 
              #                          temp_58_cmp_91 = icmp i32 Slt temp_57_ptr2globl_91, lengets_87 
              #                    occupy a3 with temp_57_ptr2globl_91
              #                    occupy a1 with lengets_87
              #                    occupy a4 with temp_58_cmp_91
    slt     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          br i1 temp_58_cmp_91, label while.body_92, label while.exit_92 
              #                    occupy a4 with temp_58_cmp_91
              #                    free a4
              #                    occupy a4 with temp_58_cmp_91
    bnez    a4, .while.body_92
              #                    free a4
    j       .while.exit_92
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: lengets_87, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_91, tracked: true } |     a4:Freed { symidx: temp_58_cmp_91, tracked: true } | 
              #                          label while.body_92: 
.while.body_92:
              #                          new_var temp_59_ptr2globl_94:i32 
              #                          temp_59_ptr2globl_94 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy a5 with temp_59_ptr2globl_94
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          new_var temp_60_array_ptr_94:ptr->i32 
              #                          temp_60_array_ptr_94 = getelementptr *get_0:ptr->i32 [Some(temp_59_ptr2globl_94)] 
              #                    occupy a6 with temp_60_array_ptr_94
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a5 with temp_59_ptr2globl_94
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a7,a5
              #                    free a7
              #                    free a5
    add     a6,a6,s1
              #                    free s1
    slli a6,a6,2
              #                    occupy s2 with *get_0
              #                       load label get as ptr to reg
    la      s2, get
              #                    occupy reg s2 with *get_0
    add     a6,a6,s2
              #                    free s2
              #                    free a6
              #                          new_var temp_61_array_ele_94:i32 
              #                          temp_61_array_ele_94 = load temp_60_array_ptr_94:ptr->i32 
              #                    occupy a6 with temp_60_array_ptr_94
              #                    occupy s3 with temp_61_array_ele_94
    lw      s3,0(a6)
              #                    free s3
              #                    free a6
              #                          new_var temp_62_ret_of_isdigit_94:i32 
              #                          temp_62_ret_of_isdigit_94 =  Call i32 isdigit_0(temp_61_array_ele_94) 
              #                    saved register dumping to mem
              #                    store to temp_61_array_ele_94 in mem offset legal
    sw      s3,1500(sp)
              #                    release s3 with temp_61_array_ele_94
              #                    store to temp_56_ret_of_getstr_87 in mem offset legal
    sw      a0,1532(sp)
              #                    release a0 with temp_56_ret_of_getstr_87
              #                    store to lengets_87 in mem offset legal
    sw      a1,1528(sp)
              #                    release a1 with lengets_87
              #                    store to temp_57_ptr2globl_91 in mem offset legal
    sw      a3,1524(sp)
              #                    release a3 with temp_57_ptr2globl_91
              #                    store to temp_58_cmp_91 in mem offset legal
    sb      a4,1523(sp)
              #                    release a4 with temp_58_cmp_91
              #                    store to temp_59_ptr2globl_94 in mem offset legal
    sw      a5,1516(sp)
              #                    release a5 with temp_59_ptr2globl_94
              #                    store to temp_60_array_ptr_94 in mem offset legal
    sd      a6,1504(sp)
              #                    release a6 with temp_60_array_ptr_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_61_array_ele_94_0
              #                    load from temp_61_array_ele_94 in mem


    lw      a0,1500(sp)
              #                    arg load ended


    call    isdigit
              #                    store to temp_62_ret_of_isdigit_94 in mem offset legal
    sw      a0,1496(sp)
              #                          new_var temp_63_cmp_94:i1 
              #                          temp_63_cmp_94 = icmp i32 Eq temp_62_ret_of_isdigit_94, 1_0 
              #                    occupy a0 with temp_62_ret_of_isdigit_94
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_63_cmp_94
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_63_cmp_94, label branch_true_95, label branch_false_95 
              #                    occupy a2 with temp_63_cmp_94
              #                    free a2
              #                    occupy a2 with temp_63_cmp_94
    bnez    a2, .branch_true_95
              #                    free a2
    j       .branch_false_95
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } | 
              #                          label branch_true_95: 
.branch_true_95:
              #                          new_var temp_64_ptr2globl_96:i32 
              #                          temp_64_ptr2globl_96 = load *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a3 with temp_64_ptr2globl_96
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_65_index_ptr_96:ptr->i32 
              #                          temp_65_index_ptr_96 = getelementptr *get2_0:ptr->i32 [Some(temp_64_ptr2globl_96)] 
              #                    occupy a4 with temp_65_index_ptr_96
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_64_ptr2globl_96
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a3
              #                    free a5
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *get2_0
              #                       load label get2 as ptr to reg
    la      a7, get2
              #                    occupy reg a7 with *get2_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          new_var temp_66_ptr2globl_96:i32 
              #                          temp_66_ptr2globl_96 = load *i_0:ptr->i32 
              #                    occupy s1 with *i_0
              #                       load label i as ptr to reg
    la      s1, i
              #                    occupy reg s1 with *i_0
              #                    occupy s2 with temp_66_ptr2globl_96
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_67_array_ptr_96:ptr->i32 
              #                          temp_67_array_ptr_96 = getelementptr *get_0:ptr->i32 [Some(temp_66_ptr2globl_96)] 
              #                    occupy s3 with temp_67_array_ptr_96
    li      s3, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s2 with temp_66_ptr2globl_96
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a5,s2
              #                    free a5
              #                    free s2
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with *get_0
              #                       load label get as ptr to reg
    la      s5, get
              #                    occupy reg s5 with *get_0
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                          new_var temp_68_array_ele_96:i32 
              #                          temp_68_array_ele_96 = load temp_67_array_ptr_96:ptr->i32 
              #                    occupy s3 with temp_67_array_ptr_96
              #                    occupy s6 with temp_68_array_ele_96
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          store temp_68_array_ele_96:i32 temp_65_index_ptr_96:ptr->i32 
              #                    occupy a4 with temp_65_index_ptr_96
              #                    occupy s6 with temp_68_array_ele_96
    sw      s6,0(a4)
              #                    free s6
              #                    free a4
              #                          mu *get2_0:329 
              #                          *get2_0 = chi *get2_0:329 
              #                          new_var temp_69_ptr2globl_96:i32 
              #                          temp_69_ptr2globl_96 = load *ii_0:ptr->i32 
              #                    occupy s7 with *ii_0
              #                       load label ii as ptr to reg
    la      s7, ii
              #                    occupy reg s7 with *ii_0
              #                    occupy s8 with temp_69_ptr2globl_96
    lw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                          new_var temp_70_arithop_96:i32 
              #                          temp_70_arithop_96 = Add i32 temp_69_ptr2globl_96, 1_0 
              #                    occupy s8 with temp_69_ptr2globl_96
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s9 with temp_70_arithop_96
    add     s9,s8,a5
              #                    free s8
              #                    free a5
              #                    free s9
              #                          store temp_70_arithop_96:i32 *ii_0:ptr->i32 
              #                    occupy s10 with *ii_0
              #                       load label ii as ptr to reg
    la      s10, ii
              #                    occupy reg s10 with *ii_0
              #                    occupy s9 with temp_70_arithop_96
    sw      s9,0(s10)
              #                    free s9
              #                    free s10
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } | 
              #                          label branch_false_95: 
.branch_false_95:
              #                          new_var temp_73_ptr2globl_100:i32 
              #                          temp_73_ptr2globl_100 = load *i_0:ptr->i32 
              #                    occupy a1 with *i_0
              #                       load label i as ptr to reg
    la      a1, i
              #                    occupy reg a1 with *i_0
              #                    occupy a3 with temp_73_ptr2globl_100
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_74_array_ptr_100:ptr->i32 
              #                          temp_74_array_ptr_100 = getelementptr *get_0:ptr->i32 [Some(temp_73_ptr2globl_100)] 
              #                    occupy a4 with temp_74_array_ptr_100
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_73_ptr2globl_100
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a3
              #                    free a5
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *get_0
              #                       load label get as ptr to reg
    la      a7, get
              #                    occupy reg a7 with *get_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          new_var temp_75_array_ele_100:i32 
              #                          temp_75_array_ele_100 = load temp_74_array_ptr_100:ptr->i32 
              #                    occupy a4 with temp_74_array_ptr_100
              #                    occupy s1 with temp_75_array_ele_100
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          new_var temp_76_cmp_100:i1 
              #                          temp_76_cmp_100 = icmp i32 Eq temp_75_array_ele_100, 40_0 
              #                    occupy s1 with temp_75_array_ele_100
              #                    occupy s2 with 40_0
    li      s2, 40
              #                    occupy s3 with temp_76_cmp_100
    xor     s3,s1,s2
    seqz    s3, s3
              #                    free s1
              #                    free s2
              #                    free s3
              #                          br i1 temp_76_cmp_100, label branch_true_101, label branch_false_101 
              #                    occupy s3 with temp_76_cmp_100
              #                    free s3
              #                    occupy s3 with temp_76_cmp_100
    bnez    s3, .branch_true_101
              #                    free s3
    j       .branch_false_101
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } | 
              #                          label branch_true_101: 
.branch_true_101:
              #                           Call void chapush_0(40_0) 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_62_ret_of_isdigit_94 in mem offset legal
    sw      a0,1496(sp)
              #                    release a0 with temp_62_ret_of_isdigit_94
              #                    store to temp_63_cmp_94 in mem offset legal
    sb      a2,1495(sp)
              #                    release a2 with temp_63_cmp_94
              #                    store to temp_73_ptr2globl_100 in mem offset legal
    sw      a3,1440(sp)
              #                    release a3 with temp_73_ptr2globl_100
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_40_0_0
    li      a0, 40
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_101 
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a0 with _anonymous_of_temp_62_ret_of_isdigit_94_0
              #                    load from temp_62_ret_of_isdigit_94 in mem


    lw      a0,1496(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy a2 with _anonymous_of_temp_63_cmp_94_0
              #                    load from temp_63_cmp_94 in mem
    lb      a2,1495(sp)
              #                    occupy a3 with _anonymous_of_temp_73_ptr2globl_100_0
              #                    load from temp_73_ptr2globl_100 in mem


    lw      a3,1440(sp)
    j       .branch_false_101
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } | 
              #                          label branch_false_101: 
.branch_false_101:
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_77_ptr2globl_103:i32 
              #                          temp_77_ptr2globl_103 = load *i_0:ptr->i32 
              #                    occupy a1 with *i_0
              #                       load label i as ptr to reg
    la      a1, i
              #                    occupy reg a1 with *i_0
              #                    occupy a5 with temp_77_ptr2globl_103
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_78_array_ptr_103:ptr->i32 
              #                          temp_78_array_ptr_103 = getelementptr *get_0:ptr->i32 [Some(temp_77_ptr2globl_103)] 
              #                    occupy a6 with temp_78_array_ptr_103
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a5 with temp_77_ptr2globl_103
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a7,a5
              #                    free a7
              #                    free a5
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
              #                    occupy s4 with *get_0
              #                       load label get as ptr to reg
    la      s4, get
              #                    occupy reg s4 with *get_0
    add     a6,a6,s4
              #                    free s4
              #                    free a6
              #                          new_var temp_79_array_ele_103:i32 
              #                          temp_79_array_ele_103 = load temp_78_array_ptr_103:ptr->i32 
              #                    occupy a6 with temp_78_array_ptr_103
              #                    occupy s5 with temp_79_array_ele_103
    lw      s5,0(a6)
              #                    free s5
              #                    free a6
              #                          new_var temp_80_cmp_103:i1 
              #                          temp_80_cmp_103 = icmp i32 Eq temp_79_array_ele_103, 94_0 
              #                    occupy s5 with temp_79_array_ele_103
              #                    occupy s6 with 94_0
    li      s6, 94
              #                    occupy s7 with temp_80_cmp_103
    xor     s7,s5,s6
    seqz    s7, s7
              #                    free s5
              #                    free s6
              #                    free s7
              #                          br i1 temp_80_cmp_103, label branch_true_104, label branch_false_104 
              #                    occupy s7 with temp_80_cmp_103
              #                    free s7
              #                    occupy s7 with temp_80_cmp_103
    bnez    s7, .branch_true_104
              #                    free s7
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } | 
              #                          label branch_true_104: 
.branch_true_104:
              #                           Call void chapush_0(94_0) 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_62_ret_of_isdigit_94 in mem offset legal
    sw      a0,1496(sp)
              #                    release a0 with temp_62_ret_of_isdigit_94
              #                    store to temp_63_cmp_94 in mem offset legal
    sb      a2,1495(sp)
              #                    release a2 with temp_63_cmp_94
              #                    store to temp_73_ptr2globl_100 in mem offset legal
    sw      a3,1440(sp)
              #                    release a3 with temp_73_ptr2globl_100
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_77_ptr2globl_103 in mem offset legal
    sw      a5,1420(sp)
              #                    release a5 with temp_77_ptr2globl_103
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_94_0_0
    li      a0, 94
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_104 
              #                    occupy a5 with _anonymous_of_temp_77_ptr2globl_103_0
              #                    load from temp_77_ptr2globl_103 in mem


    lw      a5,1420(sp)
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy a0 with _anonymous_of_temp_62_ret_of_isdigit_94_0
              #                    load from temp_62_ret_of_isdigit_94 in mem


    lw      a0,1496(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy a2 with _anonymous_of_temp_63_cmp_94_0
              #                    load from temp_63_cmp_94 in mem
    lb      a2,1495(sp)
              #                    occupy a3 with _anonymous_of_temp_73_ptr2globl_100_0
              #                    load from temp_73_ptr2globl_100 in mem


    lw      a3,1440(sp)
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } | 
              #                          label branch_false_104: 
.branch_false_104:
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_81_ptr2globl_106:i32 
              #                          temp_81_ptr2globl_106 = load *i_0:ptr->i32 
              #                    occupy a1 with *i_0
              #                       load label i as ptr to reg
    la      a1, i
              #                    occupy reg a1 with *i_0
              #                    occupy a7 with temp_81_ptr2globl_106
    lw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                          new_var temp_82_array_ptr_106:ptr->i32 
              #                          temp_82_array_ptr_106 = getelementptr *get_0:ptr->i32 [Some(temp_81_ptr2globl_106)] 
              #                    occupy s2 with temp_82_array_ptr_106
    li      s2, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a7 with temp_81_ptr2globl_106
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s4,a7
              #                    free s4
              #                    free a7
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
              #                    occupy s8 with *get_0
              #                       load label get as ptr to reg
    la      s8, get
              #                    occupy reg s8 with *get_0
    add     s2,s2,s8
              #                    free s8
              #                    free s2
              #                          new_var temp_83_array_ele_106:i32 
              #                          temp_83_array_ele_106 = load temp_82_array_ptr_106:ptr->i32 
              #                    occupy s2 with temp_82_array_ptr_106
              #                    occupy s9 with temp_83_array_ele_106
    lw      s9,0(s2)
              #                    free s9
              #                    free s2
              #                          new_var temp_84_cmp_106:i1 
              #                          temp_84_cmp_106 = icmp i32 Eq temp_83_array_ele_106, 41_0 
              #                    occupy s9 with temp_83_array_ele_106
              #                    occupy s10 with 41_0
    li      s10, 41
              #                    occupy s11 with temp_84_cmp_106
    xor     s11,s9,s10
    seqz    s11, s11
              #                    free s9
              #                    free s10
              #                    free s11
              #                          br i1 temp_84_cmp_106, label branch_true_107, label branch_false_107 
              #                    occupy s11 with temp_84_cmp_106
              #                    free s11
              #                    occupy s11 with temp_84_cmp_106
    bnez    s11, .branch_true_107
              #                    free s11
    j       .branch_false_107
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label branch_true_107: 
.branch_true_107:
              #                          new_var temp_85_ret_of_chapop_108:i32 
              #                          temp_85_ret_of_chapop_108 =  Call i32 chapop_0() 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_82_array_ptr_106 in mem offset legal
    sd      s2,1384(sp)
              #                    release s2 with temp_82_array_ptr_106
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_83_array_ele_106 in mem offset legal
    sw      s9,1380(sp)
              #                    release s9 with temp_83_array_ele_106
              #                    store to temp_84_cmp_106 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_84_cmp_106
              #                    store to temp_62_ret_of_isdigit_94 in mem offset legal
    sw      a0,1496(sp)
              #                    release a0 with temp_62_ret_of_isdigit_94
              #                    store to temp_63_cmp_94 in mem offset legal
    sb      a2,1495(sp)
              #                    release a2 with temp_63_cmp_94
              #                    store to temp_73_ptr2globl_100 in mem offset legal
    sw      a3,1440(sp)
              #                    release a3 with temp_73_ptr2globl_100
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_77_ptr2globl_103 in mem offset legal
    sw      a5,1420(sp)
              #                    release a5 with temp_77_ptr2globl_103
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    store to temp_81_ptr2globl_106 in mem offset legal
    sw      a7,1396(sp)
              #                    release a7 with temp_81_ptr2globl_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    chapop
              #                    store to temp_85_ret_of_chapop_108 in mem offset legal
    sw      a0,1372(sp)
              #                          store temp_85_ret_of_chapop_108:i32 *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a0 with temp_85_ret_of_chapop_108
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          jump label: while.head_111 
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: temp_85_ret_of_chapop_108, tracked: true } | 
              #                          label while.head_111: 
.while.head_111:
              #                          new_var temp_86_ptr2globl_110:i32 
              #                          temp_86_ptr2globl_110 = load *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a2 with temp_86_ptr2globl_110
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_87_cmp_110:i1 
              #                          temp_87_cmp_110 = icmp i32 Ne temp_86_ptr2globl_110, 40_0 
              #                    occupy a2 with temp_86_ptr2globl_110
              #                    occupy a3 with 40_0
    li      a3, 40
              #                    occupy a4 with temp_87_cmp_110
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_87_cmp_110, label while.body_111, label branch_false_107 
              #                    occupy a4 with temp_87_cmp_110
              #                    free a4
              #                    occupy a4 with temp_87_cmp_110
    bnez    a4, .while.body_111
              #                    free a4
              #                    store to temp_85_ret_of_chapop_108 in mem offset legal
    sw      a0,1372(sp)
              #                    release a0 with temp_85_ret_of_chapop_108
              #                    store to temp_87_cmp_110 in mem offset legal
    sb      a4,1367(sp)
              #                    release a4 with temp_87_cmp_110
              #                    store to temp_86_ptr2globl_110 in mem offset legal
    sw      a2,1368(sp)
              #                    release a2 with temp_86_ptr2globl_110
              #                    occupy a5 with _anonymous_of_temp_77_ptr2globl_103_0
              #                    load from temp_77_ptr2globl_103 in mem


    lw      a5,1420(sp)
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy a0 with _anonymous_of_temp_62_ret_of_isdigit_94_0
              #                    load from temp_62_ret_of_isdigit_94 in mem


    lw      a0,1496(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy a2 with _anonymous_of_temp_63_cmp_94_0
              #                    load from temp_63_cmp_94 in mem
    lb      a2,1495(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
              #                    occupy a3 with _anonymous_of_temp_73_ptr2globl_100_0
              #                    load from temp_73_ptr2globl_100 in mem


    lw      a3,1440(sp)
    j       .branch_false_107
              #                    regtab     a0:Freed { symidx: temp_85_ret_of_chapop_108, tracked: true } |     a2:Freed { symidx: temp_86_ptr2globl_110, tracked: true } |     a4:Freed { symidx: temp_87_cmp_110, tracked: true } | 
              #                          label while.body_111: 
.while.body_111:
              #                          new_var temp_88_ptr2globl_112:i32 
              #                          temp_88_ptr2globl_112 = load *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a3 with temp_88_ptr2globl_112
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_89_index_ptr_112:ptr->i32 
              #                          temp_89_index_ptr_112 = getelementptr *get2_0:ptr->i32 [Some(temp_88_ptr2globl_112)] 
              #                    occupy a5 with temp_89_index_ptr_112
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a3 with temp_88_ptr2globl_112
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a6,a3
              #                    free a6
              #                    free a3
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with *get2_0
              #                       load label get2 as ptr to reg
    la      s1, get2
              #                    occupy reg s1 with *get2_0
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          store 32_0:i32 temp_89_index_ptr_112:ptr->i32 
              #                    occupy a5 with temp_89_index_ptr_112
              #                    occupy s2 with 32_0
    li      s2, 32
    sw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          mu *get2_0:413 
              #                          *get2_0 = chi *get2_0:413 
              #                          new_var temp_90_ptr2globl_112:i32 
              #                          temp_90_ptr2globl_112 = load *ii_0:ptr->i32 
              #                    occupy s3 with *ii_0
              #                       load label ii as ptr to reg
    la      s3, ii
              #                    occupy reg s3 with *ii_0
              #                    occupy s4 with temp_90_ptr2globl_112
    lw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          new_var temp_91_arithop_112:i32 
              #                          temp_91_arithop_112 = Add i32 temp_90_ptr2globl_112, 1_0 
              #                    occupy s4 with temp_90_ptr2globl_112
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s5 with temp_91_arithop_112
    add     s5,s4,a6
              #                    free s4
              #                    free a6
              #                    free s5
              #                          new_var temp_92_index_ptr_112:ptr->i32 
              #                          temp_92_index_ptr_112 = getelementptr *get2_0:ptr->i32 [Some(temp_91_arithop_112)] 
              #                    occupy s6 with temp_92_index_ptr_112
    li      s6, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s5 with temp_91_arithop_112
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a6,s5
              #                    free a6
              #                    free s5
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s8 with *get2_0
              #                       load label get2 as ptr to reg
    la      s8, get2
              #                    occupy reg s8 with *get2_0
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          new_var temp_93_ptr2globl_112:i32 
              #                          temp_93_ptr2globl_112 = load *c_0:ptr->i32 
              #                    occupy s9 with *c_0
              #                       load label c as ptr to reg
    la      s9, c
              #                    occupy reg s9 with *c_0
              #                    occupy s10 with temp_93_ptr2globl_112
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          store temp_93_ptr2globl_112:i32 temp_92_index_ptr_112:ptr->i32 
              #                    occupy s6 with temp_92_index_ptr_112
              #                    occupy s10 with temp_93_ptr2globl_112
    sw      s10,0(s6)
              #                    free s10
              #                    free s6
              #                          mu *get2_0:428 
              #                          *get2_0 = chi *get2_0:428 
              #                          new_var temp_94_ptr2globl_112:i32 
              #                          temp_94_ptr2globl_112 = load *ii_0:ptr->i32 
              #                    occupy s11 with *ii_0
              #                       load label ii as ptr to reg
    la      s11, ii
              #                    occupy reg s11 with *ii_0
              #                    occupy a1 with temp_94_ptr2globl_112
    lw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          new_var temp_95_arithop_112:i32 
              #                          temp_95_arithop_112 = Add i32 temp_94_ptr2globl_112, 2_0 
              #                    occupy a1 with temp_94_ptr2globl_112
              #                    occupy a6 with 2_0
    li      a6, 2
              #                    occupy a7 with temp_95_arithop_112
    add     a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                          store temp_95_arithop_112:i32 *ii_0:ptr->i32 
              #                    occupy a6 with *ii_0
              #                       load label ii as ptr to reg
    la      a6, ii
              #                    occupy reg a6 with *ii_0
              #                    occupy a7 with temp_95_arithop_112
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_96_ret_of_chapop_112:i32 
              #                          temp_96_ret_of_chapop_112 =  Call i32 chapop_0() 
              #                    saved register dumping to mem
              #                    store to temp_90_ptr2globl_112 in mem offset legal
    sw      s4,1348(sp)
              #                    release s4 with temp_90_ptr2globl_112
              #                    store to temp_91_arithop_112 in mem offset legal
    sw      s5,1344(sp)
              #                    release s5 with temp_91_arithop_112
              #                    store to temp_92_index_ptr_112 in mem offset legal
    sd      s6,1336(sp)
              #                    release s6 with temp_92_index_ptr_112
              #                    store to temp_93_ptr2globl_112 in mem offset legal
    sw      s10,1332(sp)
              #                    release s10 with temp_93_ptr2globl_112
              #                    store to temp_85_ret_of_chapop_108 in mem offset legal
    sw      a0,1372(sp)
              #                    release a0 with temp_85_ret_of_chapop_108
              #                    store to temp_94_ptr2globl_112 in mem offset legal
    sw      a1,1328(sp)
              #                    release a1 with temp_94_ptr2globl_112
              #                    store to temp_86_ptr2globl_110 in mem offset legal
    sw      a2,1368(sp)
              #                    release a2 with temp_86_ptr2globl_110
              #                    store to temp_88_ptr2globl_112 in mem offset legal
    sw      a3,1360(sp)
              #                    release a3 with temp_88_ptr2globl_112
              #                    store to temp_87_cmp_110 in mem offset legal
    sb      a4,1367(sp)
              #                    release a4 with temp_87_cmp_110
              #                    store to temp_89_index_ptr_112 in mem offset legal
    sd      a5,1352(sp)
              #                    release a5 with temp_89_index_ptr_112
              #                    store to temp_95_arithop_112 in mem offset legal
    sw      a7,1324(sp)
              #                    release a7 with temp_95_arithop_112
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    chapop
              #                    store to temp_96_ret_of_chapop_112 in mem offset legal
    sw      a0,1320(sp)
              #                          store temp_96_ret_of_chapop_112:i32 *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a0 with temp_96_ret_of_chapop_112
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          jump label: while.head_111 
              #                    store to temp_96_ret_of_chapop_112 in mem offset legal
    sw      a0,1320(sp)
              #                    release a0 with temp_96_ret_of_chapop_112
              #                    occupy a0 with _anonymous_of_temp_85_ret_of_chapop_108_0
              #                    load from temp_85_ret_of_chapop_108 in mem


    lw      a0,1372(sp)
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label branch_false_107: 
.branch_false_107:
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_97_ptr2globl_117:i32 
              #                          temp_97_ptr2globl_117 = load *i_0:ptr->i32 
              #                    occupy a1 with *i_0
              #                       load label i as ptr to reg
    la      a1, i
              #                    occupy reg a1 with *i_0
              #                    occupy s4 with temp_97_ptr2globl_117
    lw      s4,0(a1)
              #                    free s4
              #                    free a1
              #                          new_var temp_98_array_ptr_117:ptr->i32 
              #                          temp_98_array_ptr_117 = getelementptr *get_0:ptr->i32 [Some(temp_97_ptr2globl_117)] 
              #                    occupy s6 with temp_98_array_ptr_117
    li      s6, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s4 with temp_97_ptr2globl_117
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,s8,s4
              #                    free s8
              #                    free s4
    add     s6,s6,s10
              #                    free s10
    slli s6,s6,2
              #                    occupy a1 with *get_0
              #                       load label get as ptr to reg
    la      a1, get
              #                    occupy reg a1 with *get_0
    add     s6,s6,a1
              #                    free a1
              #                    free s6
              #                          new_var temp_99_array_ele_117:i32 
              #                          temp_99_array_ele_117 = load temp_98_array_ptr_117:ptr->i32 
              #                    occupy s6 with temp_98_array_ptr_117
              #                    occupy a1 with temp_99_array_ele_117
    lw      a1,0(s6)
              #                    free a1
              #                    free s6
              #                          new_var temp_100_cmp_117:i1 
              #                          temp_100_cmp_117 = icmp i32 Eq temp_99_array_ele_117, 43_0 
              #                    occupy a1 with temp_99_array_ele_117
              #                    occupy s8 with 43_0
    li      s8, 43
              #                    occupy s10 with temp_100_cmp_117
    xor     s10,a1,s8
    seqz    s10, s10
              #                    free a1
              #                    free s8
              #                    free s10
              #                          br i1 temp_100_cmp_117, label branch_true_118, label branch_false_118 
              #                    occupy s10 with temp_100_cmp_117
              #                    free s10
              #                    occupy s10 with temp_100_cmp_117
    bnez    s10, .branch_true_118
              #                    free s10
    j       .branch_false_118
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a1:Freed { symidx: temp_99_array_ele_117, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label branch_true_118: 
.branch_true_118:
              #                          new_var temp_101_ptr2globl_120:i32 
              #                          temp_101_ptr2globl_120 = load *chat_0:ptr->i32 
              #                    occupy s8 with *chat_0
              #                       load label chat as ptr to reg
    la      s8, chat
              #                    occupy reg s8 with *chat_0
              #                    store to temp_62_ret_of_isdigit_94 in mem offset legal
    sw      a0,1496(sp)
              #                    release a0 with temp_62_ret_of_isdigit_94
              #                    occupy a0 with temp_101_ptr2globl_120
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_102_array_ptr_120:ptr->i32 
              #                          temp_102_array_ptr_120 = getelementptr *chas_0:ptr->i32 [Some(temp_101_ptr2globl_120)] 
              #                    occupy s8 with temp_102_array_ptr_120
    li      s8, 0
              #                    store to temp_101_ptr2globl_120 in mem offset legal
    sw      a0,1292(sp)
              #                    release a0 with temp_101_ptr2globl_120
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_99_array_ele_117 in mem offset legal
    sw      a1,1300(sp)
              #                    release a1 with temp_99_array_ele_117
              #                    occupy a1 with temp_101_ptr2globl_120
              #                    load from temp_101_ptr2globl_120 in mem


    lw      a1,1292(sp)
              #                    store to temp_63_cmp_94 in mem offset legal
    sb      a2,1495(sp)
              #                    release a2 with temp_63_cmp_94
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s8,s8,a2
              #                    free a2
    slli s8,s8,2
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
    add     s8,s8,a0
              #                    free a0
              #                    free s8
              #                          new_var temp_103_array_ele_120:i32 
              #                          temp_103_array_ele_120 = load temp_102_array_ptr_120:ptr->i32 
              #                    occupy s8 with temp_102_array_ptr_120
              #                    occupy a0 with temp_103_array_ele_120
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_104_cmp_120:i1 
              #                          temp_104_cmp_120 = icmp i32 Eq temp_103_array_ele_120, 94_0 
              #                    occupy a0 with temp_103_array_ele_120
              #                    occupy a2 with 94_0
    li      a2, 94
              #                    store to temp_101_ptr2globl_120 in mem offset legal
    sw      a1,1292(sp)
              #                    release a1 with temp_101_ptr2globl_120
              #                    occupy a1 with temp_104_cmp_120
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_105_ptr2globl_120:i32 
              #                          temp_105_ptr2globl_120 = load *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    store to temp_103_array_ele_120 in mem offset legal
    sw      a0,1276(sp)
              #                    release a0 with temp_103_array_ele_120
              #                    occupy a0 with temp_105_ptr2globl_120
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_106_array_ptr_120:ptr->i32 
              #                          temp_106_array_ptr_120 = getelementptr *chas_0:ptr->i32 [Some(temp_105_ptr2globl_120)] 
              #                    occupy a2 with temp_106_array_ptr_120
    li      a2, 0
              #                    store to temp_105_ptr2globl_120 in mem offset legal
    sw      a0,1268(sp)
              #                    release a0 with temp_105_ptr2globl_120
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_104_cmp_120 in mem offset legal
    sb      a1,1275(sp)
              #                    release a1 with temp_104_cmp_120
              #                    occupy a1 with temp_105_ptr2globl_120
              #                    load from temp_105_ptr2globl_120 in mem


    lw      a1,1268(sp)
              #                    store to temp_73_ptr2globl_100 in mem offset legal
    sw      a3,1440(sp)
              #                    release a3 with temp_73_ptr2globl_100
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_107_array_ele_120:i32 
              #                          temp_107_array_ele_120 = load temp_106_array_ptr_120:ptr->i32 
              #                    occupy a2 with temp_106_array_ptr_120
              #                    occupy a0 with temp_107_array_ele_120
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_108_cmp_120:i1 
              #                          temp_108_cmp_120 = icmp i32 Eq temp_107_array_ele_120, 37_0 
              #                    occupy a0 with temp_107_array_ele_120
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    store to temp_105_ptr2globl_120 in mem offset legal
    sw      a1,1268(sp)
              #                    release a1 with temp_105_ptr2globl_120
              #                    occupy a1 with temp_108_cmp_120
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_109_logic_120:i1 
              #                          temp_109_logic_120 = Or i1 temp_108_cmp_120, temp_104_cmp_120 
              #                    occupy a1 with temp_108_cmp_120
              #                    occupy a3 with temp_104_cmp_120
              #                    load from temp_104_cmp_120 in mem
    lb      a3,1275(sp)
              #                    occupy a3 with temp_104_cmp_120
              #                    free a1
              #                    free a3
              #                    free a3
              #                          new_var temp_110_ptr2globl_120:i32 
              #                          temp_110_ptr2globl_120 = load *chat_0:ptr->i32 
              #                    store to temp_107_array_ele_120 in mem offset legal
    sw      a0,1252(sp)
              #                    release a0 with temp_107_array_ele_120
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_108_cmp_120 in mem offset legal
    sb      a1,1251(sp)
              #                    release a1 with temp_108_cmp_120
              #                    occupy a1 with temp_110_ptr2globl_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_111_array_ptr_120:ptr->i32 
              #                          temp_111_array_ptr_120 = getelementptr *chas_0:ptr->i32 [Some(temp_110_ptr2globl_120)] 
              #                    occupy a0 with temp_111_array_ptr_120
    li      a0, 0
              #                    store to temp_110_ptr2globl_120 in mem offset legal
    sw      a1,1244(sp)
              #                    release a1 with temp_110_ptr2globl_120
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_106_array_ptr_120 in mem offset legal
    sd      a2,1256(sp)
              #                    release a2 with temp_106_array_ptr_120
              #                    occupy a2 with temp_110_ptr2globl_120
              #                    load from temp_110_ptr2globl_120 in mem


    lw      a2,1244(sp)
              #                    store to temp_104_cmp_120 in mem offset legal
    sb      a3,1275(sp)
              #                    release a3 with temp_104_cmp_120
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_112_array_ele_120:i32 
              #                          temp_112_array_ele_120 = load temp_111_array_ptr_120:ptr->i32 
              #                    occupy a0 with temp_111_array_ptr_120
              #                    occupy a1 with temp_112_array_ele_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_113_cmp_120:i1 
              #                          temp_113_cmp_120 = icmp i32 Eq temp_112_array_ele_120, 47_0 
              #                    occupy a1 with temp_112_array_ele_120
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    store to temp_111_array_ptr_120 in mem offset legal
    sd      a0,1232(sp)
              #                    release a0 with temp_111_array_ptr_120
              #                    occupy a0 with temp_113_cmp_120
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_114_logic_120:i1 
              #                          temp_114_logic_120 = Or i1 temp_113_cmp_120, temp_109_logic_120 
              #                    occupy a0 with temp_113_cmp_120
              #                    occupy a3 with temp_109_logic_120
              #                    load from temp_109_logic_120 in mem
    lb      a3,1250(sp)
              #                    occupy a3 with temp_109_logic_120
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_115_ptr2globl_120:i32 
              #                          temp_115_ptr2globl_120 = load *chat_0:ptr->i32 
              #                    store to temp_113_cmp_120 in mem offset legal
    sb      a0,1227(sp)
              #                    release a0 with temp_113_cmp_120
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_112_array_ele_120 in mem offset legal
    sw      a1,1228(sp)
              #                    release a1 with temp_112_array_ele_120
              #                    occupy a1 with temp_115_ptr2globl_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_116_array_ptr_120:ptr->i32 
              #                          temp_116_array_ptr_120 = getelementptr *chas_0:ptr->i32 [Some(temp_115_ptr2globl_120)] 
              #                    occupy a0 with temp_116_array_ptr_120
    li      a0, 0
              #                    store to temp_115_ptr2globl_120 in mem offset legal
    sw      a1,1220(sp)
              #                    release a1 with temp_115_ptr2globl_120
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_110_ptr2globl_120 in mem offset legal
    sw      a2,1244(sp)
              #                    release a2 with temp_110_ptr2globl_120
              #                    occupy a2 with temp_115_ptr2globl_120
              #                    load from temp_115_ptr2globl_120 in mem


    lw      a2,1220(sp)
              #                    store to temp_109_logic_120 in mem offset legal
    sb      a3,1250(sp)
              #                    release a3 with temp_109_logic_120
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_117_array_ele_120:i32 
              #                          temp_117_array_ele_120 = load temp_116_array_ptr_120:ptr->i32 
              #                    occupy a0 with temp_116_array_ptr_120
              #                    occupy a1 with temp_117_array_ele_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_118_cmp_120:i1 
              #                          temp_118_cmp_120 = icmp i32 Eq temp_117_array_ele_120, 42_0 
              #                    occupy a1 with temp_117_array_ele_120
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_116_array_ptr_120 in mem offset legal
    sd      a0,1208(sp)
              #                    release a0 with temp_116_array_ptr_120
              #                    occupy a0 with temp_118_cmp_120
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_119_logic_120:i1 
              #                          temp_119_logic_120 = Or i1 temp_118_cmp_120, temp_114_logic_120 
              #                    occupy a0 with temp_118_cmp_120
              #                    occupy a3 with temp_114_logic_120
              #                    load from temp_114_logic_120 in mem
    lb      a3,1226(sp)
              #                    occupy a3 with temp_114_logic_120
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_120_ptr2globl_120:i32 
              #                          temp_120_ptr2globl_120 = load *chat_0:ptr->i32 
              #                    store to temp_118_cmp_120 in mem offset legal
    sb      a0,1203(sp)
              #                    release a0 with temp_118_cmp_120
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_117_array_ele_120 in mem offset legal
    sw      a1,1204(sp)
              #                    release a1 with temp_117_array_ele_120
              #                    occupy a1 with temp_120_ptr2globl_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_121_array_ptr_120:ptr->i32 
              #                          temp_121_array_ptr_120 = getelementptr *chas_0:ptr->i32 [Some(temp_120_ptr2globl_120)] 
              #                    occupy a0 with temp_121_array_ptr_120
    li      a0, 0
              #                    store to temp_120_ptr2globl_120 in mem offset legal
    sw      a1,1196(sp)
              #                    release a1 with temp_120_ptr2globl_120
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_115_ptr2globl_120 in mem offset legal
    sw      a2,1220(sp)
              #                    release a2 with temp_115_ptr2globl_120
              #                    occupy a2 with temp_120_ptr2globl_120
              #                    load from temp_120_ptr2globl_120 in mem


    lw      a2,1196(sp)
              #                    store to temp_114_logic_120 in mem offset legal
    sb      a3,1226(sp)
              #                    release a3 with temp_114_logic_120
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_122_array_ele_120:i32 
              #                          temp_122_array_ele_120 = load temp_121_array_ptr_120:ptr->i32 
              #                    occupy a0 with temp_121_array_ptr_120
              #                    occupy a1 with temp_122_array_ele_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_123_cmp_120:i1 
              #                          temp_123_cmp_120 = icmp i32 Eq temp_122_array_ele_120, 45_0 
              #                    occupy a1 with temp_122_array_ele_120
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    store to temp_121_array_ptr_120 in mem offset legal
    sd      a0,1184(sp)
              #                    release a0 with temp_121_array_ptr_120
              #                    occupy a0 with temp_123_cmp_120
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_124_logic_120:i1 
              #                          temp_124_logic_120 = Or i1 temp_123_cmp_120, temp_119_logic_120 
              #                    occupy a0 with temp_123_cmp_120
              #                    occupy a3 with temp_119_logic_120
              #                    load from temp_119_logic_120 in mem
    lb      a3,1202(sp)
              #                    occupy a3 with temp_119_logic_120
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_125_ptr2globl_120:i32 
              #                          temp_125_ptr2globl_120 = load *chat_0:ptr->i32 
              #                    store to temp_123_cmp_120 in mem offset legal
    sb      a0,1179(sp)
              #                    release a0 with temp_123_cmp_120
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_122_array_ele_120 in mem offset legal
    sw      a1,1180(sp)
              #                    release a1 with temp_122_array_ele_120
              #                    occupy a1 with temp_125_ptr2globl_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_126_array_ptr_120:ptr->i32 
              #                          temp_126_array_ptr_120 = getelementptr *chas_0:ptr->i32 [Some(temp_125_ptr2globl_120)] 
              #                    occupy a0 with temp_126_array_ptr_120
    li      a0, 0
              #                    store to temp_125_ptr2globl_120 in mem offset legal
    sw      a1,1172(sp)
              #                    release a1 with temp_125_ptr2globl_120
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_120_ptr2globl_120 in mem offset legal
    sw      a2,1196(sp)
              #                    release a2 with temp_120_ptr2globl_120
              #                    occupy a2 with temp_125_ptr2globl_120
              #                    load from temp_125_ptr2globl_120 in mem


    lw      a2,1172(sp)
              #                    store to temp_119_logic_120 in mem offset legal
    sb      a3,1202(sp)
              #                    release a3 with temp_119_logic_120
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_127_array_ele_120:i32 
              #                          temp_127_array_ele_120 = load temp_126_array_ptr_120:ptr->i32 
              #                    occupy a0 with temp_126_array_ptr_120
              #                    occupy a1 with temp_127_array_ele_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_128_cmp_120:i1 
              #                          temp_128_cmp_120 = icmp i32 Eq temp_127_array_ele_120, 43_0 
              #                    occupy a1 with temp_127_array_ele_120
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    store to temp_126_array_ptr_120 in mem offset legal
    sd      a0,1160(sp)
              #                    release a0 with temp_126_array_ptr_120
              #                    occupy a0 with temp_128_cmp_120
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_129_logic_120:i1 
              #                          temp_129_logic_120 = Or i1 temp_128_cmp_120, temp_124_logic_120 
              #                    occupy a0 with temp_128_cmp_120
              #                    occupy a3 with temp_124_logic_120
              #                    load from temp_124_logic_120 in mem
    lb      a3,1178(sp)
              #                    occupy a3 with temp_124_logic_120
              #                    free a0
              #                    free a3
              #                    free a3
              #                          br i1 temp_129_logic_120, label while.body_121, label while.exit_121 
              #                    store to temp_128_cmp_120 in mem offset legal
    sb      a0,1155(sp)
              #                    release a0 with temp_128_cmp_120
              #                    occupy a0 with temp_129_logic_120
              #                    load from temp_129_logic_120 in mem
    lb      a0,1154(sp)
              #                    free a0
              #                    store to temp_77_ptr2globl_103 in mem offset legal
    sw      a5,1420(sp)
              #                    release a5 with temp_77_ptr2globl_103
              #                    occupy a0 with temp_129_logic_120
    bnez    a0, .while.body_121
              #                    free a0
    j       .while.exit_121
              #                    regtab     a0:Freed { symidx: temp_129_logic_120, tracked: true } |     a1:Freed { symidx: temp_127_array_ele_120, tracked: true } |     a2:Freed { symidx: temp_125_ptr2globl_120, tracked: true } |     a3:Freed { symidx: temp_124_logic_120, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_102_array_ptr_120, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label while.body_121: 
.while.body_121:
              #                          new_var temp_130_ret_of_find_123:i32 
              #                          temp_130_ret_of_find_123 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_82_array_ptr_106 in mem offset legal
    sd      s2,1384(sp)
              #                    release s2 with temp_82_array_ptr_106
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_97_ptr2globl_117 in mem offset legal
    sw      s4,1316(sp)
              #                    release s4 with temp_97_ptr2globl_117
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_98_array_ptr_117 in mem offset legal
    sd      s6,1304(sp)
              #                    release s6 with temp_98_array_ptr_117
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_102_array_ptr_120 in mem offset legal
    sd      s8,1280(sp)
              #                    release s8 with temp_102_array_ptr_120
              #                    store to temp_83_array_ele_106 in mem offset legal
    sw      s9,1380(sp)
              #                    release s9 with temp_83_array_ele_106
              #                    store to temp_100_cmp_117 in mem offset legal
    sb      s10,1299(sp)
              #                    release s10 with temp_100_cmp_117
              #                    store to temp_84_cmp_106 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_84_cmp_106
              #                    store to temp_129_logic_120 in mem offset legal
    sb      a0,1154(sp)
              #                    release a0 with temp_129_logic_120
              #                    store to temp_127_array_ele_120 in mem offset legal
    sw      a1,1156(sp)
              #                    release a1 with temp_127_array_ele_120
              #                    store to temp_125_ptr2globl_120 in mem offset legal
    sw      a2,1172(sp)
              #                    release a2 with temp_125_ptr2globl_120
              #                    store to temp_124_logic_120 in mem offset legal
    sb      a3,1178(sp)
              #                    release a3 with temp_124_logic_120
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    store to temp_81_ptr2globl_106 in mem offset legal
    sw      a7,1396(sp)
              #                    release a7 with temp_81_ptr2globl_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                    store to temp_130_ret_of_find_123 in mem offset legal
    sw      a0,1148(sp)
              #                          new_var temp_131_cmp_123:i1 
              #                          temp_131_cmp_123 = icmp i32 Eq temp_130_ret_of_find_123, 0_0 
              #                    occupy a0 with temp_130_ret_of_find_123
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_131_cmp_123
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_131_cmp_123, label branch_true_124, label branch_false_124 
              #                    occupy a2 with temp_131_cmp_123
              #                    free a2
              #                    occupy a2 with temp_131_cmp_123
    bnez    a2, .branch_true_124
              #                    free a2
    j       .branch_false_124
              #                    regtab     a0:Freed { symidx: temp_130_ret_of_find_123, tracked: true } |     a2:Freed { symidx: temp_131_cmp_123, tracked: true } | 
              #                          label branch_true_124: 
.branch_true_124:
              #                          jump label: while.exit_121 
              #                    store to temp_130_ret_of_find_123 in mem offset legal
    sw      a0,1148(sp)
              #                    release a0 with temp_130_ret_of_find_123
              #                    store to temp_131_cmp_123 in mem offset legal
    sb      a2,1147(sp)
              #                    release a2 with temp_131_cmp_123
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_129_logic_120_0
              #                    load from temp_129_logic_120 in mem
    lb      a0,1154(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_102_array_ptr_120_0
              #                    load from temp_102_array_ptr_120 in mem
    ld      s8,1280(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_127_array_ele_120_0
              #                    load from temp_127_array_ele_120 in mem


    lw      a1,1156(sp)
              #                    occupy a2 with _anonymous_of_temp_125_ptr2globl_120_0
              #                    load from temp_125_ptr2globl_120 in mem


    lw      a2,1172(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
              #                    occupy a3 with _anonymous_of_temp_124_logic_120_0
              #                    load from temp_124_logic_120 in mem
    lb      a3,1178(sp)
    j       .while.exit_121
              #                    regtab     a0:Freed { symidx: temp_129_logic_120, tracked: true } |     a1:Freed { symidx: temp_127_array_ele_120, tracked: true } |     a2:Freed { symidx: temp_125_ptr2globl_120, tracked: true } |     a3:Freed { symidx: temp_124_logic_120, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_102_array_ptr_120, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label while.exit_121: 
.while.exit_121:
              #                           Call void chapush_0(43_0) 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_82_array_ptr_106 in mem offset legal
    sd      s2,1384(sp)
              #                    release s2 with temp_82_array_ptr_106
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_97_ptr2globl_117 in mem offset legal
    sw      s4,1316(sp)
              #                    release s4 with temp_97_ptr2globl_117
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_98_array_ptr_117 in mem offset legal
    sd      s6,1304(sp)
              #                    release s6 with temp_98_array_ptr_117
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_102_array_ptr_120 in mem offset legal
    sd      s8,1280(sp)
              #                    release s8 with temp_102_array_ptr_120
              #                    store to temp_83_array_ele_106 in mem offset legal
    sw      s9,1380(sp)
              #                    release s9 with temp_83_array_ele_106
              #                    store to temp_100_cmp_117 in mem offset legal
    sb      s10,1299(sp)
              #                    release s10 with temp_100_cmp_117
              #                    store to temp_84_cmp_106 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_84_cmp_106
              #                    store to temp_129_logic_120 in mem offset legal
    sb      a0,1154(sp)
              #                    release a0 with temp_129_logic_120
              #                    store to temp_127_array_ele_120 in mem offset legal
    sw      a1,1156(sp)
              #                    release a1 with temp_127_array_ele_120
              #                    store to temp_125_ptr2globl_120 in mem offset legal
    sw      a2,1172(sp)
              #                    release a2 with temp_125_ptr2globl_120
              #                    store to temp_124_logic_120 in mem offset legal
    sb      a3,1178(sp)
              #                    release a3 with temp_124_logic_120
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    store to temp_81_ptr2globl_106 in mem offset legal
    sw      a7,1396(sp)
              #                    release a7 with temp_81_ptr2globl_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_43_0_0
    li      a0, 43
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_118 
              #                    occupy a5 with _anonymous_of_temp_77_ptr2globl_103_0
              #                    load from temp_77_ptr2globl_103 in mem


    lw      a5,1420(sp)
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_62_ret_of_isdigit_94_0
              #                    load from temp_62_ret_of_isdigit_94 in mem


    lw      a0,1496(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_99_array_ele_117_0
              #                    load from temp_99_array_ele_117 in mem


    lw      a1,1300(sp)
              #                    occupy a2 with _anonymous_of_temp_63_cmp_94_0
              #                    load from temp_63_cmp_94 in mem
    lb      a2,1495(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
              #                    occupy a3 with _anonymous_of_temp_73_ptr2globl_100_0
              #                    load from temp_73_ptr2globl_100 in mem


    lw      a3,1440(sp)
    j       .branch_false_118
              #                    regtab     a0:Freed { symidx: temp_130_ret_of_find_123, tracked: true } |     a2:Freed { symidx: temp_131_cmp_123, tracked: true } | 
              #                          label branch_false_124: 
.branch_false_124:
              #                          jump label: branch_true_118 
              #                    store to temp_130_ret_of_find_123 in mem offset legal
    sw      a0,1148(sp)
              #                    release a0 with temp_130_ret_of_find_123
              #                    store to temp_131_cmp_123 in mem offset legal
    sb      a2,1147(sp)
              #                    release a2 with temp_131_cmp_123
              #                    occupy a5 with _anonymous_of_temp_77_ptr2globl_103_0
              #                    load from temp_77_ptr2globl_103 in mem


    lw      a5,1420(sp)
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_62_ret_of_isdigit_94_0
              #                    load from temp_62_ret_of_isdigit_94 in mem


    lw      a0,1496(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_99_array_ele_117_0
              #                    load from temp_99_array_ele_117 in mem


    lw      a1,1300(sp)
              #                    occupy a2 with _anonymous_of_temp_63_cmp_94_0
              #                    load from temp_63_cmp_94 in mem
    lb      a2,1495(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
              #                    occupy a3 with _anonymous_of_temp_73_ptr2globl_100_0
              #                    load from temp_73_ptr2globl_100 in mem


    lw      a3,1440(sp)
    j       .branch_true_118
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a1:Freed { symidx: temp_99_array_ele_117, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label branch_false_118: 
.branch_false_118:
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a1:Freed { symidx: temp_99_array_ele_117, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_132_ptr2globl_127:i32 
              #                          temp_132_ptr2globl_127 = load *i_0:ptr->i32 
              #                    occupy s8 with *i_0
              #                       load label i as ptr to reg
    la      s8, i
              #                    occupy reg s8 with *i_0
              #                    store to temp_62_ret_of_isdigit_94 in mem offset legal
    sw      a0,1496(sp)
              #                    release a0 with temp_62_ret_of_isdigit_94
              #                    occupy a0 with temp_132_ptr2globl_127
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_133_array_ptr_127:ptr->i32 
              #                          temp_133_array_ptr_127 = getelementptr *get_0:ptr->i32 [Some(temp_132_ptr2globl_127)] 
              #                    occupy s8 with temp_133_array_ptr_127
    li      s8, 0
              #                    store to temp_132_ptr2globl_127 in mem offset legal
    sw      a0,1140(sp)
              #                    release a0 with temp_132_ptr2globl_127
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_99_array_ele_117 in mem offset legal
    sw      a1,1300(sp)
              #                    release a1 with temp_99_array_ele_117
              #                    occupy a1 with temp_132_ptr2globl_127
              #                    load from temp_132_ptr2globl_127 in mem


    lw      a1,1140(sp)
              #                    store to temp_63_cmp_94 in mem offset legal
    sb      a2,1495(sp)
              #                    release a2 with temp_63_cmp_94
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s8,s8,a2
              #                    free a2
    slli s8,s8,2
              #                    occupy a0 with *get_0
              #                       load label get as ptr to reg
    la      a0, get
              #                    occupy reg a0 with *get_0
    add     s8,s8,a0
              #                    free a0
              #                    free s8
              #                          new_var temp_134_array_ele_127:i32 
              #                          temp_134_array_ele_127 = load temp_133_array_ptr_127:ptr->i32 
              #                    occupy s8 with temp_133_array_ptr_127
              #                    occupy a0 with temp_134_array_ele_127
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_135_cmp_127:i1 
              #                          temp_135_cmp_127 = icmp i32 Eq temp_134_array_ele_127, 45_0 
              #                    occupy a0 with temp_134_array_ele_127
              #                    occupy a2 with 45_0
    li      a2, 45
              #                    store to temp_132_ptr2globl_127 in mem offset legal
    sw      a1,1140(sp)
              #                    release a1 with temp_132_ptr2globl_127
              #                    occupy a1 with temp_135_cmp_127
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_135_cmp_127, label branch_true_128, label branch_false_128 
              #                    occupy a1 with temp_135_cmp_127
              #                    free a1
              #                    occupy a1 with temp_135_cmp_127
    bnez    a1, .branch_true_128
              #                    free a1
    j       .branch_false_128
              #                    regtab     a0:Freed { symidx: temp_134_array_ele_127, tracked: true } |     a1:Freed { symidx: temp_135_cmp_127, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label branch_true_128: 
.branch_true_128:
              #                          new_var temp_136_ptr2globl_130:i32 
              #                          temp_136_ptr2globl_130 = load *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    store to temp_134_array_ele_127 in mem offset legal
    sw      a0,1124(sp)
              #                    release a0 with temp_134_array_ele_127
              #                    occupy a0 with temp_136_ptr2globl_130
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_137_array_ptr_130:ptr->i32 
              #                          temp_137_array_ptr_130 = getelementptr *chas_0:ptr->i32 [Some(temp_136_ptr2globl_130)] 
              #                    occupy a2 with temp_137_array_ptr_130
    li      a2, 0
              #                    store to temp_136_ptr2globl_130 in mem offset legal
    sw      a0,1116(sp)
              #                    release a0 with temp_136_ptr2globl_130
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_135_cmp_127 in mem offset legal
    sb      a1,1123(sp)
              #                    release a1 with temp_135_cmp_127
              #                    occupy a1 with temp_136_ptr2globl_130
              #                    load from temp_136_ptr2globl_130 in mem


    lw      a1,1116(sp)
              #                    store to temp_73_ptr2globl_100 in mem offset legal
    sw      a3,1440(sp)
              #                    release a3 with temp_73_ptr2globl_100
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_138_array_ele_130:i32 
              #                          temp_138_array_ele_130 = load temp_137_array_ptr_130:ptr->i32 
              #                    occupy a2 with temp_137_array_ptr_130
              #                    occupy a0 with temp_138_array_ele_130
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_139_cmp_130:i1 
              #                          temp_139_cmp_130 = icmp i32 Eq temp_138_array_ele_130, 94_0 
              #                    occupy a0 with temp_138_array_ele_130
              #                    occupy a3 with 94_0
    li      a3, 94
              #                    store to temp_136_ptr2globl_130 in mem offset legal
    sw      a1,1116(sp)
              #                    release a1 with temp_136_ptr2globl_130
              #                    occupy a1 with temp_139_cmp_130
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_140_ptr2globl_130:i32 
              #                          temp_140_ptr2globl_130 = load *chat_0:ptr->i32 
              #                    occupy a3 with *chat_0
              #                       load label chat as ptr to reg
    la      a3, chat
              #                    occupy reg a3 with *chat_0
              #                    store to temp_138_array_ele_130 in mem offset legal
    sw      a0,1100(sp)
              #                    release a0 with temp_138_array_ele_130
              #                    occupy a0 with temp_140_ptr2globl_130
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_141_array_ptr_130:ptr->i32 
              #                          temp_141_array_ptr_130 = getelementptr *chas_0:ptr->i32 [Some(temp_140_ptr2globl_130)] 
              #                    occupy a3 with temp_141_array_ptr_130
    li      a3, 0
              #                    store to temp_140_ptr2globl_130 in mem offset legal
    sw      a0,1092(sp)
              #                    release a0 with temp_140_ptr2globl_130
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_139_cmp_130 in mem offset legal
    sb      a1,1099(sp)
              #                    release a1 with temp_139_cmp_130
              #                    occupy a1 with temp_140_ptr2globl_130
              #                    load from temp_140_ptr2globl_130 in mem


    lw      a1,1092(sp)
              #                    store to temp_137_array_ptr_130 in mem offset legal
    sd      a2,1104(sp)
              #                    release a2 with temp_137_array_ptr_130
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_142_array_ele_130:i32 
              #                          temp_142_array_ele_130 = load temp_141_array_ptr_130:ptr->i32 
              #                    occupy a3 with temp_141_array_ptr_130
              #                    occupy a0 with temp_142_array_ele_130
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_143_cmp_130:i1 
              #                          temp_143_cmp_130 = icmp i32 Eq temp_142_array_ele_130, 37_0 
              #                    occupy a0 with temp_142_array_ele_130
              #                    occupy a2 with 37_0
    li      a2, 37
              #                    store to temp_140_ptr2globl_130 in mem offset legal
    sw      a1,1092(sp)
              #                    release a1 with temp_140_ptr2globl_130
              #                    occupy a1 with temp_143_cmp_130
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_144_logic_130:i1 
              #                          temp_144_logic_130 = Or i1 temp_143_cmp_130, temp_139_cmp_130 
              #                    occupy a1 with temp_143_cmp_130
              #                    occupy a2 with temp_139_cmp_130
              #                    load from temp_139_cmp_130 in mem
    lb      a2,1099(sp)
              #                    occupy a2 with temp_139_cmp_130
              #                    free a1
              #                    free a2
              #                    free a2
              #                          new_var temp_145_ptr2globl_130:i32 
              #                          temp_145_ptr2globl_130 = load *chat_0:ptr->i32 
              #                    store to temp_142_array_ele_130 in mem offset legal
    sw      a0,1076(sp)
              #                    release a0 with temp_142_array_ele_130
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_143_cmp_130 in mem offset legal
    sb      a1,1075(sp)
              #                    release a1 with temp_143_cmp_130
              #                    occupy a1 with temp_145_ptr2globl_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_146_array_ptr_130:ptr->i32 
              #                          temp_146_array_ptr_130 = getelementptr *chas_0:ptr->i32 [Some(temp_145_ptr2globl_130)] 
              #                    occupy a0 with temp_146_array_ptr_130
    li      a0, 0
              #                    store to temp_145_ptr2globl_130 in mem offset legal
    sw      a1,1068(sp)
              #                    release a1 with temp_145_ptr2globl_130
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_139_cmp_130 in mem offset legal
    sb      a2,1099(sp)
              #                    release a2 with temp_139_cmp_130
              #                    occupy a2 with temp_145_ptr2globl_130
              #                    load from temp_145_ptr2globl_130 in mem


    lw      a2,1068(sp)
              #                    store to temp_141_array_ptr_130 in mem offset legal
    sd      a3,1080(sp)
              #                    release a3 with temp_141_array_ptr_130
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_147_array_ele_130:i32 
              #                          temp_147_array_ele_130 = load temp_146_array_ptr_130:ptr->i32 
              #                    occupy a0 with temp_146_array_ptr_130
              #                    occupy a1 with temp_147_array_ele_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_148_cmp_130:i1 
              #                          temp_148_cmp_130 = icmp i32 Eq temp_147_array_ele_130, 47_0 
              #                    occupy a1 with temp_147_array_ele_130
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    store to temp_146_array_ptr_130 in mem offset legal
    sd      a0,1056(sp)
              #                    release a0 with temp_146_array_ptr_130
              #                    occupy a0 with temp_148_cmp_130
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_149_logic_130:i1 
              #                          temp_149_logic_130 = Or i1 temp_148_cmp_130, temp_144_logic_130 
              #                    occupy a0 with temp_148_cmp_130
              #                    occupy a3 with temp_144_logic_130
              #                    load from temp_144_logic_130 in mem
    lb      a3,1074(sp)
              #                    occupy a3 with temp_144_logic_130
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_150_ptr2globl_130:i32 
              #                          temp_150_ptr2globl_130 = load *chat_0:ptr->i32 
              #                    store to temp_148_cmp_130 in mem offset legal
    sb      a0,1051(sp)
              #                    release a0 with temp_148_cmp_130
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_147_array_ele_130 in mem offset legal
    sw      a1,1052(sp)
              #                    release a1 with temp_147_array_ele_130
              #                    occupy a1 with temp_150_ptr2globl_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_151_array_ptr_130:ptr->i32 
              #                          temp_151_array_ptr_130 = getelementptr *chas_0:ptr->i32 [Some(temp_150_ptr2globl_130)] 
              #                    occupy a0 with temp_151_array_ptr_130
    li      a0, 0
              #                    store to temp_150_ptr2globl_130 in mem offset legal
    sw      a1,1044(sp)
              #                    release a1 with temp_150_ptr2globl_130
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_145_ptr2globl_130 in mem offset legal
    sw      a2,1068(sp)
              #                    release a2 with temp_145_ptr2globl_130
              #                    occupy a2 with temp_150_ptr2globl_130
              #                    load from temp_150_ptr2globl_130 in mem


    lw      a2,1044(sp)
              #                    store to temp_144_logic_130 in mem offset legal
    sb      a3,1074(sp)
              #                    release a3 with temp_144_logic_130
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_152_array_ele_130:i32 
              #                          temp_152_array_ele_130 = load temp_151_array_ptr_130:ptr->i32 
              #                    occupy a0 with temp_151_array_ptr_130
              #                    occupy a1 with temp_152_array_ele_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_153_cmp_130:i1 
              #                          temp_153_cmp_130 = icmp i32 Eq temp_152_array_ele_130, 42_0 
              #                    occupy a1 with temp_152_array_ele_130
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_151_array_ptr_130 in mem offset legal
    sd      a0,1032(sp)
              #                    release a0 with temp_151_array_ptr_130
              #                    occupy a0 with temp_153_cmp_130
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_154_logic_130:i1 
              #                          temp_154_logic_130 = Or i1 temp_153_cmp_130, temp_149_logic_130 
              #                    occupy a0 with temp_153_cmp_130
              #                    occupy a3 with temp_149_logic_130
              #                    load from temp_149_logic_130 in mem
    lb      a3,1050(sp)
              #                    occupy a3 with temp_149_logic_130
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_155_ptr2globl_130:i32 
              #                          temp_155_ptr2globl_130 = load *chat_0:ptr->i32 
              #                    store to temp_153_cmp_130 in mem offset legal
    sb      a0,1027(sp)
              #                    release a0 with temp_153_cmp_130
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_152_array_ele_130 in mem offset legal
    sw      a1,1028(sp)
              #                    release a1 with temp_152_array_ele_130
              #                    occupy a1 with temp_155_ptr2globl_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_156_array_ptr_130:ptr->i32 
              #                          temp_156_array_ptr_130 = getelementptr *chas_0:ptr->i32 [Some(temp_155_ptr2globl_130)] 
              #                    occupy a0 with temp_156_array_ptr_130
    li      a0, 0
              #                    store to temp_155_ptr2globl_130 in mem offset legal
    sw      a1,1020(sp)
              #                    release a1 with temp_155_ptr2globl_130
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_150_ptr2globl_130 in mem offset legal
    sw      a2,1044(sp)
              #                    release a2 with temp_150_ptr2globl_130
              #                    occupy a2 with temp_155_ptr2globl_130
              #                    load from temp_155_ptr2globl_130 in mem


    lw      a2,1020(sp)
              #                    store to temp_149_logic_130 in mem offset legal
    sb      a3,1050(sp)
              #                    release a3 with temp_149_logic_130
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_157_array_ele_130:i32 
              #                          temp_157_array_ele_130 = load temp_156_array_ptr_130:ptr->i32 
              #                    occupy a0 with temp_156_array_ptr_130
              #                    occupy a1 with temp_157_array_ele_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_158_cmp_130:i1 
              #                          temp_158_cmp_130 = icmp i32 Eq temp_157_array_ele_130, 45_0 
              #                    occupy a1 with temp_157_array_ele_130
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    store to temp_156_array_ptr_130 in mem offset legal
    sd      a0,1008(sp)
              #                    release a0 with temp_156_array_ptr_130
              #                    occupy a0 with temp_158_cmp_130
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_159_logic_130:i1 
              #                          temp_159_logic_130 = Or i1 temp_158_cmp_130, temp_154_logic_130 
              #                    occupy a0 with temp_158_cmp_130
              #                    occupy a3 with temp_154_logic_130
              #                    load from temp_154_logic_130 in mem
    lb      a3,1026(sp)
              #                    occupy a3 with temp_154_logic_130
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_160_ptr2globl_130:i32 
              #                          temp_160_ptr2globl_130 = load *chat_0:ptr->i32 
              #                    store to temp_158_cmp_130 in mem offset legal
    sb      a0,1003(sp)
              #                    release a0 with temp_158_cmp_130
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_157_array_ele_130 in mem offset legal
    sw      a1,1004(sp)
              #                    release a1 with temp_157_array_ele_130
              #                    occupy a1 with temp_160_ptr2globl_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_161_array_ptr_130:ptr->i32 
              #                          temp_161_array_ptr_130 = getelementptr *chas_0:ptr->i32 [Some(temp_160_ptr2globl_130)] 
              #                    occupy a0 with temp_161_array_ptr_130
    li      a0, 0
              #                    store to temp_160_ptr2globl_130 in mem offset legal
    sw      a1,996(sp)
              #                    release a1 with temp_160_ptr2globl_130
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_155_ptr2globl_130 in mem offset legal
    sw      a2,1020(sp)
              #                    release a2 with temp_155_ptr2globl_130
              #                    occupy a2 with temp_160_ptr2globl_130
              #                    load from temp_160_ptr2globl_130 in mem


    lw      a2,996(sp)
              #                    store to temp_154_logic_130 in mem offset legal
    sb      a3,1026(sp)
              #                    release a3 with temp_154_logic_130
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_162_array_ele_130:i32 
              #                          temp_162_array_ele_130 = load temp_161_array_ptr_130:ptr->i32 
              #                    occupy a0 with temp_161_array_ptr_130
              #                    occupy a1 with temp_162_array_ele_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_163_cmp_130:i1 
              #                          temp_163_cmp_130 = icmp i32 Eq temp_162_array_ele_130, 43_0 
              #                    occupy a1 with temp_162_array_ele_130
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    store to temp_161_array_ptr_130 in mem offset legal
    sd      a0,984(sp)
              #                    release a0 with temp_161_array_ptr_130
              #                    occupy a0 with temp_163_cmp_130
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_164_logic_130:i1 
              #                          temp_164_logic_130 = Or i1 temp_163_cmp_130, temp_159_logic_130 
              #                    occupy a0 with temp_163_cmp_130
              #                    occupy a3 with temp_159_logic_130
              #                    load from temp_159_logic_130 in mem
    lb      a3,1002(sp)
              #                    occupy a3 with temp_159_logic_130
              #                    free a0
              #                    free a3
              #                    free a3
              #                          br i1 temp_164_logic_130, label while.body_131, label while.exit_131 
              #                    store to temp_163_cmp_130 in mem offset legal
    sb      a0,979(sp)
              #                    release a0 with temp_163_cmp_130
              #                    occupy a0 with temp_164_logic_130
              #                    load from temp_164_logic_130 in mem
    lb      a0,978(sp)
              #                    free a0
              #                    store to temp_77_ptr2globl_103 in mem offset legal
    sw      a5,1420(sp)
              #                    release a5 with temp_77_ptr2globl_103
              #                    occupy a0 with temp_164_logic_130
    bnez    a0, .while.body_131
              #                    free a0
    j       .while.exit_131
              #                    regtab     a0:Freed { symidx: temp_164_logic_130, tracked: true } |     a1:Freed { symidx: temp_162_array_ele_130, tracked: true } |     a2:Freed { symidx: temp_160_ptr2globl_130, tracked: true } |     a3:Freed { symidx: temp_159_logic_130, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label while.body_131: 
.while.body_131:
              #                          new_var temp_165_ret_of_find_133:i32 
              #                          temp_165_ret_of_find_133 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_82_array_ptr_106 in mem offset legal
    sd      s2,1384(sp)
              #                    release s2 with temp_82_array_ptr_106
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_97_ptr2globl_117 in mem offset legal
    sw      s4,1316(sp)
              #                    release s4 with temp_97_ptr2globl_117
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_98_array_ptr_117 in mem offset legal
    sd      s6,1304(sp)
              #                    release s6 with temp_98_array_ptr_117
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_133_array_ptr_127 in mem offset legal
    sd      s8,1128(sp)
              #                    release s8 with temp_133_array_ptr_127
              #                    store to temp_83_array_ele_106 in mem offset legal
    sw      s9,1380(sp)
              #                    release s9 with temp_83_array_ele_106
              #                    store to temp_100_cmp_117 in mem offset legal
    sb      s10,1299(sp)
              #                    release s10 with temp_100_cmp_117
              #                    store to temp_84_cmp_106 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_84_cmp_106
              #                    store to temp_164_logic_130 in mem offset legal
    sb      a0,978(sp)
              #                    release a0 with temp_164_logic_130
              #                    store to temp_162_array_ele_130 in mem offset legal
    sw      a1,980(sp)
              #                    release a1 with temp_162_array_ele_130
              #                    store to temp_160_ptr2globl_130 in mem offset legal
    sw      a2,996(sp)
              #                    release a2 with temp_160_ptr2globl_130
              #                    store to temp_159_logic_130 in mem offset legal
    sb      a3,1002(sp)
              #                    release a3 with temp_159_logic_130
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    store to temp_81_ptr2globl_106 in mem offset legal
    sw      a7,1396(sp)
              #                    release a7 with temp_81_ptr2globl_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                    store to temp_165_ret_of_find_133 in mem offset legal
    sw      a0,972(sp)
              #                          new_var temp_166_cmp_133:i1 
              #                          temp_166_cmp_133 = icmp i32 Eq temp_165_ret_of_find_133, 0_0 
              #                    occupy a0 with temp_165_ret_of_find_133
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_166_cmp_133
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_166_cmp_133, label branch_true_134, label branch_false_134 
              #                    occupy a2 with temp_166_cmp_133
              #                    free a2
              #                    occupy a2 with temp_166_cmp_133
    bnez    a2, .branch_true_134
              #                    free a2
    j       .branch_false_134
              #                    regtab     a0:Freed { symidx: temp_165_ret_of_find_133, tracked: true } |     a2:Freed { symidx: temp_166_cmp_133, tracked: true } | 
              #                          label branch_true_134: 
.branch_true_134:
              #                          jump label: while.exit_131 
              #                    store to temp_165_ret_of_find_133 in mem offset legal
    sw      a0,972(sp)
              #                    release a0 with temp_165_ret_of_find_133
              #                    store to temp_166_cmp_133 in mem offset legal
    sb      a2,971(sp)
              #                    release a2 with temp_166_cmp_133
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_164_logic_130_0
              #                    load from temp_164_logic_130 in mem
    lb      a0,978(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_133_array_ptr_127_0
              #                    load from temp_133_array_ptr_127 in mem
    ld      s8,1128(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_162_array_ele_130_0
              #                    load from temp_162_array_ele_130 in mem


    lw      a1,980(sp)
              #                    occupy a2 with _anonymous_of_temp_160_ptr2globl_130_0
              #                    load from temp_160_ptr2globl_130 in mem


    lw      a2,996(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
              #                    occupy a3 with _anonymous_of_temp_159_logic_130_0
              #                    load from temp_159_logic_130 in mem
    lb      a3,1002(sp)
    j       .while.exit_131
              #                    regtab     a0:Freed { symidx: temp_164_logic_130, tracked: true } |     a1:Freed { symidx: temp_162_array_ele_130, tracked: true } |     a2:Freed { symidx: temp_160_ptr2globl_130, tracked: true } |     a3:Freed { symidx: temp_159_logic_130, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label while.exit_131: 
.while.exit_131:
              #                           Call void chapush_0(45_0) 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_82_array_ptr_106 in mem offset legal
    sd      s2,1384(sp)
              #                    release s2 with temp_82_array_ptr_106
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_97_ptr2globl_117 in mem offset legal
    sw      s4,1316(sp)
              #                    release s4 with temp_97_ptr2globl_117
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_98_array_ptr_117 in mem offset legal
    sd      s6,1304(sp)
              #                    release s6 with temp_98_array_ptr_117
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_133_array_ptr_127 in mem offset legal
    sd      s8,1128(sp)
              #                    release s8 with temp_133_array_ptr_127
              #                    store to temp_83_array_ele_106 in mem offset legal
    sw      s9,1380(sp)
              #                    release s9 with temp_83_array_ele_106
              #                    store to temp_100_cmp_117 in mem offset legal
    sb      s10,1299(sp)
              #                    release s10 with temp_100_cmp_117
              #                    store to temp_84_cmp_106 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_84_cmp_106
              #                    store to temp_164_logic_130 in mem offset legal
    sb      a0,978(sp)
              #                    release a0 with temp_164_logic_130
              #                    store to temp_162_array_ele_130 in mem offset legal
    sw      a1,980(sp)
              #                    release a1 with temp_162_array_ele_130
              #                    store to temp_160_ptr2globl_130 in mem offset legal
    sw      a2,996(sp)
              #                    release a2 with temp_160_ptr2globl_130
              #                    store to temp_159_logic_130 in mem offset legal
    sb      a3,1002(sp)
              #                    release a3 with temp_159_logic_130
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    store to temp_81_ptr2globl_106 in mem offset legal
    sw      a7,1396(sp)
              #                    release a7 with temp_81_ptr2globl_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_45_0_0
    li      a0, 45
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_128 
              #                    occupy a5 with _anonymous_of_temp_77_ptr2globl_103_0
              #                    load from temp_77_ptr2globl_103 in mem


    lw      a5,1420(sp)
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_134_array_ele_127_0
              #                    load from temp_134_array_ele_127 in mem


    lw      a0,1124(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_133_array_ptr_127_0
              #                    load from temp_133_array_ptr_127 in mem
    ld      s8,1128(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_135_cmp_127_0
              #                    load from temp_135_cmp_127 in mem
    lb      a1,1123(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
              #                    occupy a3 with _anonymous_of_temp_73_ptr2globl_100_0
              #                    load from temp_73_ptr2globl_100 in mem


    lw      a3,1440(sp)
    j       .branch_false_128
              #                    regtab     a0:Freed { symidx: temp_165_ret_of_find_133, tracked: true } |     a2:Freed { symidx: temp_166_cmp_133, tracked: true } | 
              #                          label branch_false_134: 
.branch_false_134:
              #                          jump label: branch_true_128 
              #                    store to temp_165_ret_of_find_133 in mem offset legal
    sw      a0,972(sp)
              #                    release a0 with temp_165_ret_of_find_133
              #                    store to temp_166_cmp_133 in mem offset legal
    sb      a2,971(sp)
              #                    release a2 with temp_166_cmp_133
              #                    occupy a5 with _anonymous_of_temp_77_ptr2globl_103_0
              #                    load from temp_77_ptr2globl_103 in mem


    lw      a5,1420(sp)
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_134_array_ele_127_0
              #                    load from temp_134_array_ele_127 in mem


    lw      a0,1124(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_133_array_ptr_127_0
              #                    load from temp_133_array_ptr_127 in mem
    ld      s8,1128(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_135_cmp_127_0
              #                    load from temp_135_cmp_127 in mem
    lb      a1,1123(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
              #                    occupy a3 with _anonymous_of_temp_73_ptr2globl_100_0
              #                    load from temp_73_ptr2globl_100 in mem


    lw      a3,1440(sp)
    j       .branch_true_128
              #                    regtab     a0:Freed { symidx: temp_134_array_ele_127, tracked: true } |     a1:Freed { symidx: temp_135_cmp_127, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label branch_false_128: 
.branch_false_128:
              #                    regtab     a0:Freed { symidx: temp_134_array_ele_127, tracked: true } |     a1:Freed { symidx: temp_135_cmp_127, tracked: true } |     a3:Freed { symidx: temp_73_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_167_ptr2globl_137:i32 
              #                          temp_167_ptr2globl_137 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    store to temp_134_array_ele_127 in mem offset legal
    sw      a0,1124(sp)
              #                    release a0 with temp_134_array_ele_127
              #                    occupy a0 with temp_167_ptr2globl_137
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_168_array_ptr_137:ptr->i32 
              #                          temp_168_array_ptr_137 = getelementptr *get_0:ptr->i32 [Some(temp_167_ptr2globl_137)] 
              #                    occupy a2 with temp_168_array_ptr_137
    li      a2, 0
              #                    store to temp_167_ptr2globl_137 in mem offset legal
    sw      a0,964(sp)
              #                    release a0 with temp_167_ptr2globl_137
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_135_cmp_127 in mem offset legal
    sb      a1,1123(sp)
              #                    release a1 with temp_135_cmp_127
              #                    occupy a1 with temp_167_ptr2globl_137
              #                    load from temp_167_ptr2globl_137 in mem


    lw      a1,964(sp)
              #                    store to temp_73_ptr2globl_100 in mem offset legal
    sw      a3,1440(sp)
              #                    release a3 with temp_73_ptr2globl_100
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *get_0
              #                       load label get as ptr to reg
    la      a0, get
              #                    occupy reg a0 with *get_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_169_array_ele_137:i32 
              #                          temp_169_array_ele_137 = load temp_168_array_ptr_137:ptr->i32 
              #                    occupy a2 with temp_168_array_ptr_137
              #                    occupy a0 with temp_169_array_ele_137
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_170_cmp_137:i1 
              #                          temp_170_cmp_137 = icmp i32 Eq temp_169_array_ele_137, 42_0 
              #                    occupy a0 with temp_169_array_ele_137
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_167_ptr2globl_137 in mem offset legal
    sw      a1,964(sp)
              #                    release a1 with temp_167_ptr2globl_137
              #                    occupy a1 with temp_170_cmp_137
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          br i1 temp_170_cmp_137, label branch_true_138, label branch_false_138 
              #                    occupy a1 with temp_170_cmp_137
              #                    free a1
              #                    occupy a1 with temp_170_cmp_137
    bnez    a1, .branch_true_138
              #                    free a1
    j       .branch_false_138
              #                    regtab     a0:Freed { symidx: temp_169_array_ele_137, tracked: true } |     a1:Freed { symidx: temp_170_cmp_137, tracked: true } |     a2:Freed { symidx: temp_168_array_ptr_137, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label branch_true_138: 
.branch_true_138:
              #                          new_var temp_171_ptr2globl_140:i32 
              #                          temp_171_ptr2globl_140 = load *chat_0:ptr->i32 
              #                    occupy a3 with *chat_0
              #                       load label chat as ptr to reg
    la      a3, chat
              #                    occupy reg a3 with *chat_0
              #                    store to temp_169_array_ele_137 in mem offset legal
    sw      a0,948(sp)
              #                    release a0 with temp_169_array_ele_137
              #                    occupy a0 with temp_171_ptr2globl_140
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_172_array_ptr_140:ptr->i32 
              #                          temp_172_array_ptr_140 = getelementptr *chas_0:ptr->i32 [Some(temp_171_ptr2globl_140)] 
              #                    occupy a3 with temp_172_array_ptr_140
    li      a3, 0
              #                    store to temp_171_ptr2globl_140 in mem offset legal
    sw      a0,940(sp)
              #                    release a0 with temp_171_ptr2globl_140
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_170_cmp_137 in mem offset legal
    sb      a1,947(sp)
              #                    release a1 with temp_170_cmp_137
              #                    occupy a1 with temp_171_ptr2globl_140
              #                    load from temp_171_ptr2globl_140 in mem


    lw      a1,940(sp)
              #                    store to temp_168_array_ptr_137 in mem offset legal
    sd      a2,952(sp)
              #                    release a2 with temp_168_array_ptr_137
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_173_array_ele_140:i32 
              #                          temp_173_array_ele_140 = load temp_172_array_ptr_140:ptr->i32 
              #                    occupy a3 with temp_172_array_ptr_140
              #                    occupy a0 with temp_173_array_ele_140
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_174_cmp_140:i1 
              #                          temp_174_cmp_140 = icmp i32 Eq temp_173_array_ele_140, 94_0 
              #                    occupy a0 with temp_173_array_ele_140
              #                    occupy a2 with 94_0
    li      a2, 94
              #                    store to temp_171_ptr2globl_140 in mem offset legal
    sw      a1,940(sp)
              #                    release a1 with temp_171_ptr2globl_140
              #                    occupy a1 with temp_174_cmp_140
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_175_ptr2globl_140:i32 
              #                          temp_175_ptr2globl_140 = load *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    store to temp_173_array_ele_140 in mem offset legal
    sw      a0,924(sp)
              #                    release a0 with temp_173_array_ele_140
              #                    occupy a0 with temp_175_ptr2globl_140
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_176_array_ptr_140:ptr->i32 
              #                          temp_176_array_ptr_140 = getelementptr *chas_0:ptr->i32 [Some(temp_175_ptr2globl_140)] 
              #                    occupy a2 with temp_176_array_ptr_140
    li      a2, 0
              #                    store to temp_175_ptr2globl_140 in mem offset legal
    sw      a0,916(sp)
              #                    release a0 with temp_175_ptr2globl_140
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_174_cmp_140 in mem offset legal
    sb      a1,923(sp)
              #                    release a1 with temp_174_cmp_140
              #                    occupy a1 with temp_175_ptr2globl_140
              #                    load from temp_175_ptr2globl_140 in mem


    lw      a1,916(sp)
              #                    store to temp_172_array_ptr_140 in mem offset legal
    sd      a3,928(sp)
              #                    release a3 with temp_172_array_ptr_140
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_177_array_ele_140:i32 
              #                          temp_177_array_ele_140 = load temp_176_array_ptr_140:ptr->i32 
              #                    occupy a2 with temp_176_array_ptr_140
              #                    occupy a0 with temp_177_array_ele_140
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_178_cmp_140:i1 
              #                          temp_178_cmp_140 = icmp i32 Eq temp_177_array_ele_140, 37_0 
              #                    occupy a0 with temp_177_array_ele_140
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    store to temp_175_ptr2globl_140 in mem offset legal
    sw      a1,916(sp)
              #                    release a1 with temp_175_ptr2globl_140
              #                    occupy a1 with temp_178_cmp_140
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_179_logic_140:i1 
              #                          temp_179_logic_140 = Or i1 temp_178_cmp_140, temp_174_cmp_140 
              #                    occupy a1 with temp_178_cmp_140
              #                    occupy a3 with temp_174_cmp_140
              #                    load from temp_174_cmp_140 in mem
    lb      a3,923(sp)
              #                    occupy a3 with temp_174_cmp_140
              #                    free a1
              #                    free a3
              #                    free a3
              #                          new_var temp_180_ptr2globl_140:i32 
              #                          temp_180_ptr2globl_140 = load *chat_0:ptr->i32 
              #                    store to temp_177_array_ele_140 in mem offset legal
    sw      a0,900(sp)
              #                    release a0 with temp_177_array_ele_140
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_178_cmp_140 in mem offset legal
    sb      a1,899(sp)
              #                    release a1 with temp_178_cmp_140
              #                    occupy a1 with temp_180_ptr2globl_140
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_181_array_ptr_140:ptr->i32 
              #                          temp_181_array_ptr_140 = getelementptr *chas_0:ptr->i32 [Some(temp_180_ptr2globl_140)] 
              #                    occupy a0 with temp_181_array_ptr_140
    li      a0, 0
              #                    store to temp_180_ptr2globl_140 in mem offset legal
    sw      a1,892(sp)
              #                    release a1 with temp_180_ptr2globl_140
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_176_array_ptr_140 in mem offset legal
    sd      a2,904(sp)
              #                    release a2 with temp_176_array_ptr_140
              #                    occupy a2 with temp_180_ptr2globl_140
              #                    load from temp_180_ptr2globl_140 in mem


    lw      a2,892(sp)
              #                    store to temp_174_cmp_140 in mem offset legal
    sb      a3,923(sp)
              #                    release a3 with temp_174_cmp_140
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_182_array_ele_140:i32 
              #                          temp_182_array_ele_140 = load temp_181_array_ptr_140:ptr->i32 
              #                    occupy a0 with temp_181_array_ptr_140
              #                    occupy a1 with temp_182_array_ele_140
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_183_cmp_140:i1 
              #                          temp_183_cmp_140 = icmp i32 Eq temp_182_array_ele_140, 47_0 
              #                    occupy a1 with temp_182_array_ele_140
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    store to temp_181_array_ptr_140 in mem offset legal
    sd      a0,880(sp)
              #                    release a0 with temp_181_array_ptr_140
              #                    occupy a0 with temp_183_cmp_140
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_184_logic_140:i1 
              #                          temp_184_logic_140 = Or i1 temp_183_cmp_140, temp_179_logic_140 
              #                    occupy a0 with temp_183_cmp_140
              #                    occupy a3 with temp_179_logic_140
              #                    load from temp_179_logic_140 in mem
    lb      a3,898(sp)
              #                    occupy a3 with temp_179_logic_140
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_185_ptr2globl_140:i32 
              #                          temp_185_ptr2globl_140 = load *chat_0:ptr->i32 
              #                    store to temp_183_cmp_140 in mem offset legal
    sb      a0,875(sp)
              #                    release a0 with temp_183_cmp_140
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_182_array_ele_140 in mem offset legal
    sw      a1,876(sp)
              #                    release a1 with temp_182_array_ele_140
              #                    occupy a1 with temp_185_ptr2globl_140
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_186_array_ptr_140:ptr->i32 
              #                          temp_186_array_ptr_140 = getelementptr *chas_0:ptr->i32 [Some(temp_185_ptr2globl_140)] 
              #                    occupy a0 with temp_186_array_ptr_140
    li      a0, 0
              #                    store to temp_185_ptr2globl_140 in mem offset legal
    sw      a1,868(sp)
              #                    release a1 with temp_185_ptr2globl_140
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_180_ptr2globl_140 in mem offset legal
    sw      a2,892(sp)
              #                    release a2 with temp_180_ptr2globl_140
              #                    occupy a2 with temp_185_ptr2globl_140
              #                    load from temp_185_ptr2globl_140 in mem


    lw      a2,868(sp)
              #                    store to temp_179_logic_140 in mem offset legal
    sb      a3,898(sp)
              #                    release a3 with temp_179_logic_140
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_187_array_ele_140:i32 
              #                          temp_187_array_ele_140 = load temp_186_array_ptr_140:ptr->i32 
              #                    occupy a0 with temp_186_array_ptr_140
              #                    occupy a1 with temp_187_array_ele_140
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_188_cmp_140:i1 
              #                          temp_188_cmp_140 = icmp i32 Eq temp_187_array_ele_140, 42_0 
              #                    occupy a1 with temp_187_array_ele_140
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_186_array_ptr_140 in mem offset legal
    sd      a0,856(sp)
              #                    release a0 with temp_186_array_ptr_140
              #                    occupy a0 with temp_188_cmp_140
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_189_logic_140:i1 
              #                          temp_189_logic_140 = Or i1 temp_188_cmp_140, temp_184_logic_140 
              #                    occupy a0 with temp_188_cmp_140
              #                    occupy a3 with temp_184_logic_140
              #                    load from temp_184_logic_140 in mem
    lb      a3,874(sp)
              #                    occupy a3 with temp_184_logic_140
              #                    free a0
              #                    free a3
              #                    free a3
              #                          br i1 temp_189_logic_140, label while.body_141, label while.exit_141 
              #                    store to temp_188_cmp_140 in mem offset legal
    sb      a0,851(sp)
              #                    release a0 with temp_188_cmp_140
              #                    occupy a0 with temp_189_logic_140
              #                    load from temp_189_logic_140 in mem
    lb      a0,850(sp)
              #                    free a0
              #                    store to temp_77_ptr2globl_103 in mem offset legal
    sw      a5,1420(sp)
              #                    release a5 with temp_77_ptr2globl_103
              #                    occupy a0 with temp_189_logic_140
    bnez    a0, .while.body_141
              #                    free a0
    j       .while.exit_141
              #                    regtab     a0:Freed { symidx: temp_189_logic_140, tracked: true } |     a1:Freed { symidx: temp_187_array_ele_140, tracked: true } |     a2:Freed { symidx: temp_185_ptr2globl_140, tracked: true } |     a3:Freed { symidx: temp_184_logic_140, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label while.body_141: 
.while.body_141:
              #                          new_var temp_190_ret_of_find_143:i32 
              #                          temp_190_ret_of_find_143 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_82_array_ptr_106 in mem offset legal
    sd      s2,1384(sp)
              #                    release s2 with temp_82_array_ptr_106
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_97_ptr2globl_117 in mem offset legal
    sw      s4,1316(sp)
              #                    release s4 with temp_97_ptr2globl_117
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_98_array_ptr_117 in mem offset legal
    sd      s6,1304(sp)
              #                    release s6 with temp_98_array_ptr_117
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_133_array_ptr_127 in mem offset legal
    sd      s8,1128(sp)
              #                    release s8 with temp_133_array_ptr_127
              #                    store to temp_83_array_ele_106 in mem offset legal
    sw      s9,1380(sp)
              #                    release s9 with temp_83_array_ele_106
              #                    store to temp_100_cmp_117 in mem offset legal
    sb      s10,1299(sp)
              #                    release s10 with temp_100_cmp_117
              #                    store to temp_84_cmp_106 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_84_cmp_106
              #                    store to temp_189_logic_140 in mem offset legal
    sb      a0,850(sp)
              #                    release a0 with temp_189_logic_140
              #                    store to temp_187_array_ele_140 in mem offset legal
    sw      a1,852(sp)
              #                    release a1 with temp_187_array_ele_140
              #                    store to temp_185_ptr2globl_140 in mem offset legal
    sw      a2,868(sp)
              #                    release a2 with temp_185_ptr2globl_140
              #                    store to temp_184_logic_140 in mem offset legal
    sb      a3,874(sp)
              #                    release a3 with temp_184_logic_140
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    store to temp_81_ptr2globl_106 in mem offset legal
    sw      a7,1396(sp)
              #                    release a7 with temp_81_ptr2globl_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                    store to temp_190_ret_of_find_143 in mem offset legal
    sw      a0,844(sp)
              #                          new_var temp_191_cmp_143:i1 
              #                          temp_191_cmp_143 = icmp i32 Eq temp_190_ret_of_find_143, 0_0 
              #                    occupy a0 with temp_190_ret_of_find_143
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_191_cmp_143
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_191_cmp_143, label branch_true_144, label branch_false_144 
              #                    occupy a2 with temp_191_cmp_143
              #                    free a2
              #                    occupy a2 with temp_191_cmp_143
    bnez    a2, .branch_true_144
              #                    free a2
    j       .branch_false_144
              #                    regtab     a0:Freed { symidx: temp_190_ret_of_find_143, tracked: true } |     a2:Freed { symidx: temp_191_cmp_143, tracked: true } | 
              #                          label branch_true_144: 
.branch_true_144:
              #                          jump label: while.exit_141 
              #                    store to temp_190_ret_of_find_143 in mem offset legal
    sw      a0,844(sp)
              #                    release a0 with temp_190_ret_of_find_143
              #                    store to temp_191_cmp_143 in mem offset legal
    sb      a2,843(sp)
              #                    release a2 with temp_191_cmp_143
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_189_logic_140_0
              #                    load from temp_189_logic_140 in mem
    lb      a0,850(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_133_array_ptr_127_0
              #                    load from temp_133_array_ptr_127 in mem
    ld      s8,1128(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_187_array_ele_140_0
              #                    load from temp_187_array_ele_140 in mem


    lw      a1,852(sp)
              #                    occupy a2 with _anonymous_of_temp_185_ptr2globl_140_0
              #                    load from temp_185_ptr2globl_140 in mem


    lw      a2,868(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
              #                    occupy a3 with _anonymous_of_temp_184_logic_140_0
              #                    load from temp_184_logic_140 in mem
    lb      a3,874(sp)
    j       .while.exit_141
              #                    regtab     a0:Freed { symidx: temp_189_logic_140, tracked: true } |     a1:Freed { symidx: temp_187_array_ele_140, tracked: true } |     a2:Freed { symidx: temp_185_ptr2globl_140, tracked: true } |     a3:Freed { symidx: temp_184_logic_140, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label while.exit_141: 
.while.exit_141:
              #                           Call void chapush_0(42_0) 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_82_array_ptr_106 in mem offset legal
    sd      s2,1384(sp)
              #                    release s2 with temp_82_array_ptr_106
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_97_ptr2globl_117 in mem offset legal
    sw      s4,1316(sp)
              #                    release s4 with temp_97_ptr2globl_117
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_98_array_ptr_117 in mem offset legal
    sd      s6,1304(sp)
              #                    release s6 with temp_98_array_ptr_117
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_133_array_ptr_127 in mem offset legal
    sd      s8,1128(sp)
              #                    release s8 with temp_133_array_ptr_127
              #                    store to temp_83_array_ele_106 in mem offset legal
    sw      s9,1380(sp)
              #                    release s9 with temp_83_array_ele_106
              #                    store to temp_100_cmp_117 in mem offset legal
    sb      s10,1299(sp)
              #                    release s10 with temp_100_cmp_117
              #                    store to temp_84_cmp_106 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_84_cmp_106
              #                    store to temp_189_logic_140 in mem offset legal
    sb      a0,850(sp)
              #                    release a0 with temp_189_logic_140
              #                    store to temp_187_array_ele_140 in mem offset legal
    sw      a1,852(sp)
              #                    release a1 with temp_187_array_ele_140
              #                    store to temp_185_ptr2globl_140 in mem offset legal
    sw      a2,868(sp)
              #                    release a2 with temp_185_ptr2globl_140
              #                    store to temp_184_logic_140 in mem offset legal
    sb      a3,874(sp)
              #                    release a3 with temp_184_logic_140
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    store to temp_81_ptr2globl_106 in mem offset legal
    sw      a7,1396(sp)
              #                    release a7 with temp_81_ptr2globl_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_42_0_0
    li      a0, 42
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_138 
              #                    occupy a5 with _anonymous_of_temp_77_ptr2globl_103_0
              #                    load from temp_77_ptr2globl_103 in mem


    lw      a5,1420(sp)
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_169_array_ele_137_0
              #                    load from temp_169_array_ele_137 in mem


    lw      a0,948(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_133_array_ptr_127_0
              #                    load from temp_133_array_ptr_127 in mem
    ld      s8,1128(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_170_cmp_137_0
              #                    load from temp_170_cmp_137 in mem
    lb      a1,947(sp)
              #                    occupy a2 with _anonymous_of_temp_168_array_ptr_137_0
              #                    load from temp_168_array_ptr_137 in mem
    ld      a2,952(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
    j       .branch_false_138
              #                    regtab     a0:Freed { symidx: temp_190_ret_of_find_143, tracked: true } |     a2:Freed { symidx: temp_191_cmp_143, tracked: true } | 
              #                          label branch_false_144: 
.branch_false_144:
              #                          jump label: branch_true_138 
              #                    store to temp_190_ret_of_find_143 in mem offset legal
    sw      a0,844(sp)
              #                    release a0 with temp_190_ret_of_find_143
              #                    store to temp_191_cmp_143 in mem offset legal
    sb      a2,843(sp)
              #                    release a2 with temp_191_cmp_143
              #                    occupy a5 with _anonymous_of_temp_77_ptr2globl_103_0
              #                    load from temp_77_ptr2globl_103 in mem


    lw      a5,1420(sp)
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_169_array_ele_137_0
              #                    load from temp_169_array_ele_137 in mem


    lw      a0,948(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_133_array_ptr_127_0
              #                    load from temp_133_array_ptr_127 in mem
    ld      s8,1128(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_170_cmp_137_0
              #                    load from temp_170_cmp_137 in mem
    lb      a1,947(sp)
              #                    occupy a2 with _anonymous_of_temp_168_array_ptr_137_0
              #                    load from temp_168_array_ptr_137 in mem
    ld      a2,952(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
    j       .branch_true_138
              #                    regtab     a0:Freed { symidx: temp_169_array_ele_137, tracked: true } |     a1:Freed { symidx: temp_170_cmp_137, tracked: true } |     a2:Freed { symidx: temp_168_array_ptr_137, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label branch_false_138: 
.branch_false_138:
              #                    regtab     a0:Freed { symidx: temp_169_array_ele_137, tracked: true } |     a1:Freed { symidx: temp_170_cmp_137, tracked: true } |     a2:Freed { symidx: temp_168_array_ptr_137, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_192_ptr2globl_147:i32 
              #                          temp_192_ptr2globl_147 = load *i_0:ptr->i32 
              #                    occupy a3 with *i_0
              #                       load label i as ptr to reg
    la      a3, i
              #                    occupy reg a3 with *i_0
              #                    store to temp_169_array_ele_137 in mem offset legal
    sw      a0,948(sp)
              #                    release a0 with temp_169_array_ele_137
              #                    occupy a0 with temp_192_ptr2globl_147
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_193_array_ptr_147:ptr->i32 
              #                          temp_193_array_ptr_147 = getelementptr *get_0:ptr->i32 [Some(temp_192_ptr2globl_147)] 
              #                    occupy a3 with temp_193_array_ptr_147
    li      a3, 0
              #                    store to temp_192_ptr2globl_147 in mem offset legal
    sw      a0,836(sp)
              #                    release a0 with temp_192_ptr2globl_147
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_170_cmp_137 in mem offset legal
    sb      a1,947(sp)
              #                    release a1 with temp_170_cmp_137
              #                    occupy a1 with temp_192_ptr2globl_147
              #                    load from temp_192_ptr2globl_147 in mem


    lw      a1,836(sp)
              #                    store to temp_168_array_ptr_137 in mem offset legal
    sd      a2,952(sp)
              #                    release a2 with temp_168_array_ptr_137
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with *get_0
              #                       load label get as ptr to reg
    la      a0, get
              #                    occupy reg a0 with *get_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_194_array_ele_147:i32 
              #                          temp_194_array_ele_147 = load temp_193_array_ptr_147:ptr->i32 
              #                    occupy a3 with temp_193_array_ptr_147
              #                    occupy a0 with temp_194_array_ele_147
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_195_cmp_147:i1 
              #                          temp_195_cmp_147 = icmp i32 Eq temp_194_array_ele_147, 47_0 
              #                    occupy a0 with temp_194_array_ele_147
              #                    occupy a2 with 47_0
    li      a2, 47
              #                    store to temp_192_ptr2globl_147 in mem offset legal
    sw      a1,836(sp)
              #                    release a1 with temp_192_ptr2globl_147
              #                    occupy a1 with temp_195_cmp_147
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_195_cmp_147, label branch_true_148, label branch_false_148 
              #                    occupy a1 with temp_195_cmp_147
              #                    free a1
              #                    occupy a1 with temp_195_cmp_147
    bnez    a1, .branch_true_148
              #                    free a1
    j       .branch_false_148
              #                    regtab     a0:Freed { symidx: temp_194_array_ele_147, tracked: true } |     a1:Freed { symidx: temp_195_cmp_147, tracked: true } |     a3:Freed { symidx: temp_193_array_ptr_147, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label branch_true_148: 
.branch_true_148:
              #                          new_var temp_196_ptr2globl_150:i32 
              #                          temp_196_ptr2globl_150 = load *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    store to temp_194_array_ele_147 in mem offset legal
    sw      a0,820(sp)
              #                    release a0 with temp_194_array_ele_147
              #                    occupy a0 with temp_196_ptr2globl_150
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_197_array_ptr_150:ptr->i32 
              #                          temp_197_array_ptr_150 = getelementptr *chas_0:ptr->i32 [Some(temp_196_ptr2globl_150)] 
              #                    occupy a2 with temp_197_array_ptr_150
    li      a2, 0
              #                    store to temp_196_ptr2globl_150 in mem offset legal
    sw      a0,812(sp)
              #                    release a0 with temp_196_ptr2globl_150
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_195_cmp_147 in mem offset legal
    sb      a1,819(sp)
              #                    release a1 with temp_195_cmp_147
              #                    occupy a1 with temp_196_ptr2globl_150
              #                    load from temp_196_ptr2globl_150 in mem


    lw      a1,812(sp)
              #                    store to temp_193_array_ptr_147 in mem offset legal
    sd      a3,824(sp)
              #                    release a3 with temp_193_array_ptr_147
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_198_array_ele_150:i32 
              #                          temp_198_array_ele_150 = load temp_197_array_ptr_150:ptr->i32 
              #                    occupy a2 with temp_197_array_ptr_150
              #                    occupy a0 with temp_198_array_ele_150
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_199_cmp_150:i1 
              #                          temp_199_cmp_150 = icmp i32 Eq temp_198_array_ele_150, 94_0 
              #                    occupy a0 with temp_198_array_ele_150
              #                    occupy a3 with 94_0
    li      a3, 94
              #                    store to temp_196_ptr2globl_150 in mem offset legal
    sw      a1,812(sp)
              #                    release a1 with temp_196_ptr2globl_150
              #                    occupy a1 with temp_199_cmp_150
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_200_ptr2globl_150:i32 
              #                          temp_200_ptr2globl_150 = load *chat_0:ptr->i32 
              #                    occupy a3 with *chat_0
              #                       load label chat as ptr to reg
    la      a3, chat
              #                    occupy reg a3 with *chat_0
              #                    store to temp_198_array_ele_150 in mem offset legal
    sw      a0,796(sp)
              #                    release a0 with temp_198_array_ele_150
              #                    occupy a0 with temp_200_ptr2globl_150
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_201_array_ptr_150:ptr->i32 
              #                          temp_201_array_ptr_150 = getelementptr *chas_0:ptr->i32 [Some(temp_200_ptr2globl_150)] 
              #                    occupy a3 with temp_201_array_ptr_150
    li      a3, 0
              #                    store to temp_200_ptr2globl_150 in mem offset legal
    sw      a0,788(sp)
              #                    release a0 with temp_200_ptr2globl_150
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_199_cmp_150 in mem offset legal
    sb      a1,795(sp)
              #                    release a1 with temp_199_cmp_150
              #                    occupy a1 with temp_200_ptr2globl_150
              #                    load from temp_200_ptr2globl_150 in mem


    lw      a1,788(sp)
              #                    store to temp_197_array_ptr_150 in mem offset legal
    sd      a2,800(sp)
              #                    release a2 with temp_197_array_ptr_150
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_202_array_ele_150:i32 
              #                          temp_202_array_ele_150 = load temp_201_array_ptr_150:ptr->i32 
              #                    occupy a3 with temp_201_array_ptr_150
              #                    occupy a0 with temp_202_array_ele_150
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_203_cmp_150:i1 
              #                          temp_203_cmp_150 = icmp i32 Eq temp_202_array_ele_150, 37_0 
              #                    occupy a0 with temp_202_array_ele_150
              #                    occupy a2 with 37_0
    li      a2, 37
              #                    store to temp_200_ptr2globl_150 in mem offset legal
    sw      a1,788(sp)
              #                    release a1 with temp_200_ptr2globl_150
              #                    occupy a1 with temp_203_cmp_150
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_204_logic_150:i1 
              #                          temp_204_logic_150 = Or i1 temp_203_cmp_150, temp_199_cmp_150 
              #                    occupy a1 with temp_203_cmp_150
              #                    occupy a2 with temp_199_cmp_150
              #                    load from temp_199_cmp_150 in mem
    lb      a2,795(sp)
              #                    occupy a2 with temp_199_cmp_150
              #                    free a1
              #                    free a2
              #                    free a2
              #                          new_var temp_205_ptr2globl_150:i32 
              #                          temp_205_ptr2globl_150 = load *chat_0:ptr->i32 
              #                    store to temp_202_array_ele_150 in mem offset legal
    sw      a0,772(sp)
              #                    release a0 with temp_202_array_ele_150
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_203_cmp_150 in mem offset legal
    sb      a1,771(sp)
              #                    release a1 with temp_203_cmp_150
              #                    occupy a1 with temp_205_ptr2globl_150
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_206_array_ptr_150:ptr->i32 
              #                          temp_206_array_ptr_150 = getelementptr *chas_0:ptr->i32 [Some(temp_205_ptr2globl_150)] 
              #                    occupy a0 with temp_206_array_ptr_150
    li      a0, 0
              #                    store to temp_205_ptr2globl_150 in mem offset legal
    sw      a1,764(sp)
              #                    release a1 with temp_205_ptr2globl_150
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_199_cmp_150 in mem offset legal
    sb      a2,795(sp)
              #                    release a2 with temp_199_cmp_150
              #                    occupy a2 with temp_205_ptr2globl_150
              #                    load from temp_205_ptr2globl_150 in mem


    lw      a2,764(sp)
              #                    store to temp_201_array_ptr_150 in mem offset legal
    sd      a3,776(sp)
              #                    release a3 with temp_201_array_ptr_150
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_207_array_ele_150:i32 
              #                          temp_207_array_ele_150 = load temp_206_array_ptr_150:ptr->i32 
              #                    occupy a0 with temp_206_array_ptr_150
              #                    occupy a1 with temp_207_array_ele_150
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_208_cmp_150:i1 
              #                          temp_208_cmp_150 = icmp i32 Eq temp_207_array_ele_150, 47_0 
              #                    occupy a1 with temp_207_array_ele_150
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    store to temp_206_array_ptr_150 in mem offset legal
    sd      a0,752(sp)
              #                    release a0 with temp_206_array_ptr_150
              #                    occupy a0 with temp_208_cmp_150
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_209_logic_150:i1 
              #                          temp_209_logic_150 = Or i1 temp_208_cmp_150, temp_204_logic_150 
              #                    occupy a0 with temp_208_cmp_150
              #                    occupy a3 with temp_204_logic_150
              #                    load from temp_204_logic_150 in mem
    lb      a3,770(sp)
              #                    occupy a3 with temp_204_logic_150
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_210_ptr2globl_150:i32 
              #                          temp_210_ptr2globl_150 = load *chat_0:ptr->i32 
              #                    store to temp_208_cmp_150 in mem offset legal
    sb      a0,747(sp)
              #                    release a0 with temp_208_cmp_150
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_207_array_ele_150 in mem offset legal
    sw      a1,748(sp)
              #                    release a1 with temp_207_array_ele_150
              #                    occupy a1 with temp_210_ptr2globl_150
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_211_array_ptr_150:ptr->i32 
              #                          temp_211_array_ptr_150 = getelementptr *chas_0:ptr->i32 [Some(temp_210_ptr2globl_150)] 
              #                    occupy a0 with temp_211_array_ptr_150
    li      a0, 0
              #                    store to temp_210_ptr2globl_150 in mem offset legal
    sw      a1,740(sp)
              #                    release a1 with temp_210_ptr2globl_150
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_205_ptr2globl_150 in mem offset legal
    sw      a2,764(sp)
              #                    release a2 with temp_205_ptr2globl_150
              #                    occupy a2 with temp_210_ptr2globl_150
              #                    load from temp_210_ptr2globl_150 in mem


    lw      a2,740(sp)
              #                    store to temp_204_logic_150 in mem offset legal
    sb      a3,770(sp)
              #                    release a3 with temp_204_logic_150
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_212_array_ele_150:i32 
              #                          temp_212_array_ele_150 = load temp_211_array_ptr_150:ptr->i32 
              #                    occupy a0 with temp_211_array_ptr_150
              #                    occupy a1 with temp_212_array_ele_150
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_213_cmp_150:i1 
              #                          temp_213_cmp_150 = icmp i32 Eq temp_212_array_ele_150, 42_0 
              #                    occupy a1 with temp_212_array_ele_150
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_211_array_ptr_150 in mem offset legal
    sd      a0,728(sp)
              #                    release a0 with temp_211_array_ptr_150
              #                    occupy a0 with temp_213_cmp_150
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_214_logic_150:i1 
              #                          temp_214_logic_150 = Or i1 temp_213_cmp_150, temp_209_logic_150 
              #                    occupy a0 with temp_213_cmp_150
              #                    occupy a3 with temp_209_logic_150
              #                    load from temp_209_logic_150 in mem
    lb      a3,746(sp)
              #                    occupy a3 with temp_209_logic_150
              #                    free a0
              #                    free a3
              #                    free a3
              #                          br i1 temp_214_logic_150, label while.body_151, label while.exit_151 
              #                    store to temp_213_cmp_150 in mem offset legal
    sb      a0,723(sp)
              #                    release a0 with temp_213_cmp_150
              #                    occupy a0 with temp_214_logic_150
              #                    load from temp_214_logic_150 in mem
    lb      a0,722(sp)
              #                    free a0
              #                    store to temp_77_ptr2globl_103 in mem offset legal
    sw      a5,1420(sp)
              #                    release a5 with temp_77_ptr2globl_103
              #                    occupy a0 with temp_214_logic_150
    bnez    a0, .while.body_151
              #                    free a0
    j       .while.exit_151
              #                    regtab     a0:Freed { symidx: temp_214_logic_150, tracked: true } |     a1:Freed { symidx: temp_212_array_ele_150, tracked: true } |     a2:Freed { symidx: temp_210_ptr2globl_150, tracked: true } |     a3:Freed { symidx: temp_209_logic_150, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label while.body_151: 
.while.body_151:
              #                          new_var temp_215_ret_of_find_153:i32 
              #                          temp_215_ret_of_find_153 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_82_array_ptr_106 in mem offset legal
    sd      s2,1384(sp)
              #                    release s2 with temp_82_array_ptr_106
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_97_ptr2globl_117 in mem offset legal
    sw      s4,1316(sp)
              #                    release s4 with temp_97_ptr2globl_117
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_98_array_ptr_117 in mem offset legal
    sd      s6,1304(sp)
              #                    release s6 with temp_98_array_ptr_117
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_133_array_ptr_127 in mem offset legal
    sd      s8,1128(sp)
              #                    release s8 with temp_133_array_ptr_127
              #                    store to temp_83_array_ele_106 in mem offset legal
    sw      s9,1380(sp)
              #                    release s9 with temp_83_array_ele_106
              #                    store to temp_100_cmp_117 in mem offset legal
    sb      s10,1299(sp)
              #                    release s10 with temp_100_cmp_117
              #                    store to temp_84_cmp_106 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_84_cmp_106
              #                    store to temp_214_logic_150 in mem offset legal
    sb      a0,722(sp)
              #                    release a0 with temp_214_logic_150
              #                    store to temp_212_array_ele_150 in mem offset legal
    sw      a1,724(sp)
              #                    release a1 with temp_212_array_ele_150
              #                    store to temp_210_ptr2globl_150 in mem offset legal
    sw      a2,740(sp)
              #                    release a2 with temp_210_ptr2globl_150
              #                    store to temp_209_logic_150 in mem offset legal
    sb      a3,746(sp)
              #                    release a3 with temp_209_logic_150
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    store to temp_81_ptr2globl_106 in mem offset legal
    sw      a7,1396(sp)
              #                    release a7 with temp_81_ptr2globl_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                    store to temp_215_ret_of_find_153 in mem offset legal
    sw      a0,716(sp)
              #                          new_var temp_216_cmp_153:i1 
              #                          temp_216_cmp_153 = icmp i32 Eq temp_215_ret_of_find_153, 0_0 
              #                    occupy a0 with temp_215_ret_of_find_153
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_216_cmp_153
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_216_cmp_153, label branch_true_154, label branch_false_154 
              #                    occupy a2 with temp_216_cmp_153
              #                    free a2
              #                    occupy a2 with temp_216_cmp_153
    bnez    a2, .branch_true_154
              #                    free a2
    j       .branch_false_154
              #                    regtab     a0:Freed { symidx: temp_215_ret_of_find_153, tracked: true } |     a2:Freed { symidx: temp_216_cmp_153, tracked: true } | 
              #                          label branch_true_154: 
.branch_true_154:
              #                          jump label: while.exit_151 
              #                    store to temp_215_ret_of_find_153 in mem offset legal
    sw      a0,716(sp)
              #                    release a0 with temp_215_ret_of_find_153
              #                    store to temp_216_cmp_153 in mem offset legal
    sb      a2,715(sp)
              #                    release a2 with temp_216_cmp_153
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_214_logic_150_0
              #                    load from temp_214_logic_150 in mem
    lb      a0,722(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_133_array_ptr_127_0
              #                    load from temp_133_array_ptr_127 in mem
    ld      s8,1128(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_212_array_ele_150_0
              #                    load from temp_212_array_ele_150 in mem


    lw      a1,724(sp)
              #                    occupy a2 with _anonymous_of_temp_210_ptr2globl_150_0
              #                    load from temp_210_ptr2globl_150 in mem


    lw      a2,740(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
              #                    occupy a3 with _anonymous_of_temp_209_logic_150_0
              #                    load from temp_209_logic_150 in mem
    lb      a3,746(sp)
    j       .while.exit_151
              #                    regtab     a0:Freed { symidx: temp_214_logic_150, tracked: true } |     a1:Freed { symidx: temp_212_array_ele_150, tracked: true } |     a2:Freed { symidx: temp_210_ptr2globl_150, tracked: true } |     a3:Freed { symidx: temp_209_logic_150, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label while.exit_151: 
.while.exit_151:
              #                           Call void chapush_0(47_0) 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_82_array_ptr_106 in mem offset legal
    sd      s2,1384(sp)
              #                    release s2 with temp_82_array_ptr_106
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_97_ptr2globl_117 in mem offset legal
    sw      s4,1316(sp)
              #                    release s4 with temp_97_ptr2globl_117
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_98_array_ptr_117 in mem offset legal
    sd      s6,1304(sp)
              #                    release s6 with temp_98_array_ptr_117
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_133_array_ptr_127 in mem offset legal
    sd      s8,1128(sp)
              #                    release s8 with temp_133_array_ptr_127
              #                    store to temp_83_array_ele_106 in mem offset legal
    sw      s9,1380(sp)
              #                    release s9 with temp_83_array_ele_106
              #                    store to temp_100_cmp_117 in mem offset legal
    sb      s10,1299(sp)
              #                    release s10 with temp_100_cmp_117
              #                    store to temp_84_cmp_106 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_84_cmp_106
              #                    store to temp_214_logic_150 in mem offset legal
    sb      a0,722(sp)
              #                    release a0 with temp_214_logic_150
              #                    store to temp_212_array_ele_150 in mem offset legal
    sw      a1,724(sp)
              #                    release a1 with temp_212_array_ele_150
              #                    store to temp_210_ptr2globl_150 in mem offset legal
    sw      a2,740(sp)
              #                    release a2 with temp_210_ptr2globl_150
              #                    store to temp_209_logic_150 in mem offset legal
    sb      a3,746(sp)
              #                    release a3 with temp_209_logic_150
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    store to temp_81_ptr2globl_106 in mem offset legal
    sw      a7,1396(sp)
              #                    release a7 with temp_81_ptr2globl_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_47_0_0
    li      a0, 47
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_148 
              #                    occupy a5 with _anonymous_of_temp_77_ptr2globl_103_0
              #                    load from temp_77_ptr2globl_103 in mem


    lw      a5,1420(sp)
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_194_array_ele_147_0
              #                    load from temp_194_array_ele_147 in mem


    lw      a0,820(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_133_array_ptr_127_0
              #                    load from temp_133_array_ptr_127 in mem
    ld      s8,1128(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_195_cmp_147_0
              #                    load from temp_195_cmp_147 in mem
    lb      a1,819(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
              #                    occupy a3 with _anonymous_of_temp_193_array_ptr_147_0
              #                    load from temp_193_array_ptr_147 in mem
    ld      a3,824(sp)
    j       .branch_false_148
              #                    regtab     a0:Freed { symidx: temp_215_ret_of_find_153, tracked: true } |     a2:Freed { symidx: temp_216_cmp_153, tracked: true } | 
              #                          label branch_false_154: 
.branch_false_154:
              #                          jump label: branch_true_148 
              #                    store to temp_215_ret_of_find_153 in mem offset legal
    sw      a0,716(sp)
              #                    release a0 with temp_215_ret_of_find_153
              #                    store to temp_216_cmp_153 in mem offset legal
    sb      a2,715(sp)
              #                    release a2 with temp_216_cmp_153
              #                    occupy a5 with _anonymous_of_temp_77_ptr2globl_103_0
              #                    load from temp_77_ptr2globl_103 in mem


    lw      a5,1420(sp)
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_194_array_ele_147_0
              #                    load from temp_194_array_ele_147 in mem


    lw      a0,820(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_133_array_ptr_127_0
              #                    load from temp_133_array_ptr_127 in mem
    ld      s8,1128(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_195_cmp_147_0
              #                    load from temp_195_cmp_147 in mem
    lb      a1,819(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
              #                    occupy a3 with _anonymous_of_temp_193_array_ptr_147_0
              #                    load from temp_193_array_ptr_147 in mem
    ld      a3,824(sp)
    j       .branch_true_148
              #                    regtab     a0:Freed { symidx: temp_194_array_ele_147, tracked: true } |     a1:Freed { symidx: temp_195_cmp_147, tracked: true } |     a3:Freed { symidx: temp_193_array_ptr_147, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label branch_false_148: 
.branch_false_148:
              #                    regtab     a0:Freed { symidx: temp_194_array_ele_147, tracked: true } |     a1:Freed { symidx: temp_195_cmp_147, tracked: true } |     a3:Freed { symidx: temp_193_array_ptr_147, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_217_ptr2globl_157:i32 
              #                          temp_217_ptr2globl_157 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    store to temp_194_array_ele_147 in mem offset legal
    sw      a0,820(sp)
              #                    release a0 with temp_194_array_ele_147
              #                    occupy a0 with temp_217_ptr2globl_157
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_218_array_ptr_157:ptr->i32 
              #                          temp_218_array_ptr_157 = getelementptr *get_0:ptr->i32 [Some(temp_217_ptr2globl_157)] 
              #                    occupy a2 with temp_218_array_ptr_157
    li      a2, 0
              #                    store to temp_217_ptr2globl_157 in mem offset legal
    sw      a0,708(sp)
              #                    release a0 with temp_217_ptr2globl_157
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_195_cmp_147 in mem offset legal
    sb      a1,819(sp)
              #                    release a1 with temp_195_cmp_147
              #                    occupy a1 with temp_217_ptr2globl_157
              #                    load from temp_217_ptr2globl_157 in mem


    lw      a1,708(sp)
              #                    store to temp_193_array_ptr_147 in mem offset legal
    sd      a3,824(sp)
              #                    release a3 with temp_193_array_ptr_147
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *get_0
              #                       load label get as ptr to reg
    la      a0, get
              #                    occupy reg a0 with *get_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_219_array_ele_157:i32 
              #                          temp_219_array_ele_157 = load temp_218_array_ptr_157:ptr->i32 
              #                    occupy a2 with temp_218_array_ptr_157
              #                    occupy a0 with temp_219_array_ele_157
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_220_cmp_157:i1 
              #                          temp_220_cmp_157 = icmp i32 Eq temp_219_array_ele_157, 37_0 
              #                    occupy a0 with temp_219_array_ele_157
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    store to temp_217_ptr2globl_157 in mem offset legal
    sw      a1,708(sp)
              #                    release a1 with temp_217_ptr2globl_157
              #                    occupy a1 with temp_220_cmp_157
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          br i1 temp_220_cmp_157, label branch_true_158, label branch_false_158 
              #                    occupy a1 with temp_220_cmp_157
              #                    free a1
              #                    occupy a1 with temp_220_cmp_157
    bnez    a1, .branch_true_158
              #                    free a1
    j       .branch_false_158
              #                    regtab     a0:Freed { symidx: temp_219_array_ele_157, tracked: true } |     a1:Freed { symidx: temp_220_cmp_157, tracked: true } |     a2:Freed { symidx: temp_218_array_ptr_157, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label branch_true_158: 
.branch_true_158:
              #                          new_var temp_221_ptr2globl_160:i32 
              #                          temp_221_ptr2globl_160 = load *chat_0:ptr->i32 
              #                    occupy a3 with *chat_0
              #                       load label chat as ptr to reg
    la      a3, chat
              #                    occupy reg a3 with *chat_0
              #                    store to temp_219_array_ele_157 in mem offset legal
    sw      a0,692(sp)
              #                    release a0 with temp_219_array_ele_157
              #                    occupy a0 with temp_221_ptr2globl_160
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_222_array_ptr_160:ptr->i32 
              #                          temp_222_array_ptr_160 = getelementptr *chas_0:ptr->i32 [Some(temp_221_ptr2globl_160)] 
              #                    occupy a3 with temp_222_array_ptr_160
    li      a3, 0
              #                    store to temp_221_ptr2globl_160 in mem offset legal
    sw      a0,684(sp)
              #                    release a0 with temp_221_ptr2globl_160
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_220_cmp_157 in mem offset legal
    sb      a1,691(sp)
              #                    release a1 with temp_220_cmp_157
              #                    occupy a1 with temp_221_ptr2globl_160
              #                    load from temp_221_ptr2globl_160 in mem


    lw      a1,684(sp)
              #                    store to temp_218_array_ptr_157 in mem offset legal
    sd      a2,696(sp)
              #                    release a2 with temp_218_array_ptr_157
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_223_array_ele_160:i32 
              #                          temp_223_array_ele_160 = load temp_222_array_ptr_160:ptr->i32 
              #                    occupy a3 with temp_222_array_ptr_160
              #                    occupy a0 with temp_223_array_ele_160
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_224_cmp_160:i1 
              #                          temp_224_cmp_160 = icmp i32 Eq temp_223_array_ele_160, 94_0 
              #                    occupy a0 with temp_223_array_ele_160
              #                    occupy a2 with 94_0
    li      a2, 94
              #                    store to temp_221_ptr2globl_160 in mem offset legal
    sw      a1,684(sp)
              #                    release a1 with temp_221_ptr2globl_160
              #                    occupy a1 with temp_224_cmp_160
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_225_ptr2globl_160:i32 
              #                          temp_225_ptr2globl_160 = load *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    store to temp_223_array_ele_160 in mem offset legal
    sw      a0,668(sp)
              #                    release a0 with temp_223_array_ele_160
              #                    occupy a0 with temp_225_ptr2globl_160
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_226_array_ptr_160:ptr->i32 
              #                          temp_226_array_ptr_160 = getelementptr *chas_0:ptr->i32 [Some(temp_225_ptr2globl_160)] 
              #                    occupy a2 with temp_226_array_ptr_160
    li      a2, 0
              #                    store to temp_225_ptr2globl_160 in mem offset legal
    sw      a0,660(sp)
              #                    release a0 with temp_225_ptr2globl_160
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_224_cmp_160 in mem offset legal
    sb      a1,667(sp)
              #                    release a1 with temp_224_cmp_160
              #                    occupy a1 with temp_225_ptr2globl_160
              #                    load from temp_225_ptr2globl_160 in mem


    lw      a1,660(sp)
              #                    store to temp_222_array_ptr_160 in mem offset legal
    sd      a3,672(sp)
              #                    release a3 with temp_222_array_ptr_160
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_227_array_ele_160:i32 
              #                          temp_227_array_ele_160 = load temp_226_array_ptr_160:ptr->i32 
              #                    occupy a2 with temp_226_array_ptr_160
              #                    occupy a0 with temp_227_array_ele_160
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_228_cmp_160:i1 
              #                          temp_228_cmp_160 = icmp i32 Eq temp_227_array_ele_160, 37_0 
              #                    occupy a0 with temp_227_array_ele_160
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    store to temp_225_ptr2globl_160 in mem offset legal
    sw      a1,660(sp)
              #                    release a1 with temp_225_ptr2globl_160
              #                    occupy a1 with temp_228_cmp_160
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_229_logic_160:i1 
              #                          temp_229_logic_160 = Or i1 temp_228_cmp_160, temp_224_cmp_160 
              #                    occupy a1 with temp_228_cmp_160
              #                    occupy a3 with temp_224_cmp_160
              #                    load from temp_224_cmp_160 in mem
    lb      a3,667(sp)
              #                    occupy a3 with temp_224_cmp_160
              #                    free a1
              #                    free a3
              #                    free a3
              #                          new_var temp_230_ptr2globl_160:i32 
              #                          temp_230_ptr2globl_160 = load *chat_0:ptr->i32 
              #                    store to temp_227_array_ele_160 in mem offset legal
    sw      a0,644(sp)
              #                    release a0 with temp_227_array_ele_160
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_228_cmp_160 in mem offset legal
    sb      a1,643(sp)
              #                    release a1 with temp_228_cmp_160
              #                    occupy a1 with temp_230_ptr2globl_160
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_231_array_ptr_160:ptr->i32 
              #                          temp_231_array_ptr_160 = getelementptr *chas_0:ptr->i32 [Some(temp_230_ptr2globl_160)] 
              #                    occupy a0 with temp_231_array_ptr_160
    li      a0, 0
              #                    store to temp_230_ptr2globl_160 in mem offset legal
    sw      a1,636(sp)
              #                    release a1 with temp_230_ptr2globl_160
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_226_array_ptr_160 in mem offset legal
    sd      a2,648(sp)
              #                    release a2 with temp_226_array_ptr_160
              #                    occupy a2 with temp_230_ptr2globl_160
              #                    load from temp_230_ptr2globl_160 in mem


    lw      a2,636(sp)
              #                    store to temp_224_cmp_160 in mem offset legal
    sb      a3,667(sp)
              #                    release a3 with temp_224_cmp_160
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_232_array_ele_160:i32 
              #                          temp_232_array_ele_160 = load temp_231_array_ptr_160:ptr->i32 
              #                    occupy a0 with temp_231_array_ptr_160
              #                    occupy a1 with temp_232_array_ele_160
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_233_cmp_160:i1 
              #                          temp_233_cmp_160 = icmp i32 Eq temp_232_array_ele_160, 47_0 
              #                    occupy a1 with temp_232_array_ele_160
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    store to temp_231_array_ptr_160 in mem offset legal
    sd      a0,624(sp)
              #                    release a0 with temp_231_array_ptr_160
              #                    occupy a0 with temp_233_cmp_160
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_234_logic_160:i1 
              #                          temp_234_logic_160 = Or i1 temp_233_cmp_160, temp_229_logic_160 
              #                    occupy a0 with temp_233_cmp_160
              #                    occupy a3 with temp_229_logic_160
              #                    load from temp_229_logic_160 in mem
    lb      a3,642(sp)
              #                    occupy a3 with temp_229_logic_160
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_235_ptr2globl_160:i32 
              #                          temp_235_ptr2globl_160 = load *chat_0:ptr->i32 
              #                    store to temp_233_cmp_160 in mem offset legal
    sb      a0,619(sp)
              #                    release a0 with temp_233_cmp_160
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_232_array_ele_160 in mem offset legal
    sw      a1,620(sp)
              #                    release a1 with temp_232_array_ele_160
              #                    occupy a1 with temp_235_ptr2globl_160
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_236_array_ptr_160:ptr->i32 
              #                          temp_236_array_ptr_160 = getelementptr *chas_0:ptr->i32 [Some(temp_235_ptr2globl_160)] 
              #                    occupy a0 with temp_236_array_ptr_160
    li      a0, 0
              #                    store to temp_235_ptr2globl_160 in mem offset legal
    sw      a1,612(sp)
              #                    release a1 with temp_235_ptr2globl_160
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_230_ptr2globl_160 in mem offset legal
    sw      a2,636(sp)
              #                    release a2 with temp_230_ptr2globl_160
              #                    occupy a2 with temp_235_ptr2globl_160
              #                    load from temp_235_ptr2globl_160 in mem


    lw      a2,612(sp)
              #                    store to temp_229_logic_160 in mem offset legal
    sb      a3,642(sp)
              #                    release a3 with temp_229_logic_160
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *chas_0
              #                       load label chas as ptr to reg
    la      a1, chas
              #                    occupy reg a1 with *chas_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_237_array_ele_160:i32 
              #                          temp_237_array_ele_160 = load temp_236_array_ptr_160:ptr->i32 
              #                    occupy a0 with temp_236_array_ptr_160
              #                    occupy a1 with temp_237_array_ele_160
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_238_cmp_160:i1 
              #                          temp_238_cmp_160 = icmp i32 Eq temp_237_array_ele_160, 42_0 
              #                    occupy a1 with temp_237_array_ele_160
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_236_array_ptr_160 in mem offset legal
    sd      a0,600(sp)
              #                    release a0 with temp_236_array_ptr_160
              #                    occupy a0 with temp_238_cmp_160
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_239_logic_160:i1 
              #                          temp_239_logic_160 = Or i1 temp_238_cmp_160, temp_234_logic_160 
              #                    occupy a0 with temp_238_cmp_160
              #                    occupy a3 with temp_234_logic_160
              #                    load from temp_234_logic_160 in mem
    lb      a3,618(sp)
              #                    occupy a3 with temp_234_logic_160
              #                    free a0
              #                    free a3
              #                    free a3
              #                          br i1 temp_239_logic_160, label while.body_161, label while.exit_161 
              #                    store to temp_238_cmp_160 in mem offset legal
    sb      a0,595(sp)
              #                    release a0 with temp_238_cmp_160
              #                    occupy a0 with temp_239_logic_160
              #                    load from temp_239_logic_160 in mem
    lb      a0,594(sp)
              #                    free a0
              #                    store to temp_77_ptr2globl_103 in mem offset legal
    sw      a5,1420(sp)
              #                    release a5 with temp_77_ptr2globl_103
              #                    occupy a0 with temp_239_logic_160
    bnez    a0, .while.body_161
              #                    free a0
    j       .while.exit_161
              #                    regtab     a0:Freed { symidx: temp_239_logic_160, tracked: true } |     a1:Freed { symidx: temp_237_array_ele_160, tracked: true } |     a2:Freed { symidx: temp_235_ptr2globl_160, tracked: true } |     a3:Freed { symidx: temp_234_logic_160, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label while.body_161: 
.while.body_161:
              #                          new_var temp_240_ret_of_find_163:i32 
              #                          temp_240_ret_of_find_163 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_82_array_ptr_106 in mem offset legal
    sd      s2,1384(sp)
              #                    release s2 with temp_82_array_ptr_106
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_97_ptr2globl_117 in mem offset legal
    sw      s4,1316(sp)
              #                    release s4 with temp_97_ptr2globl_117
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_98_array_ptr_117 in mem offset legal
    sd      s6,1304(sp)
              #                    release s6 with temp_98_array_ptr_117
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_133_array_ptr_127 in mem offset legal
    sd      s8,1128(sp)
              #                    release s8 with temp_133_array_ptr_127
              #                    store to temp_83_array_ele_106 in mem offset legal
    sw      s9,1380(sp)
              #                    release s9 with temp_83_array_ele_106
              #                    store to temp_100_cmp_117 in mem offset legal
    sb      s10,1299(sp)
              #                    release s10 with temp_100_cmp_117
              #                    store to temp_84_cmp_106 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_84_cmp_106
              #                    store to temp_239_logic_160 in mem offset legal
    sb      a0,594(sp)
              #                    release a0 with temp_239_logic_160
              #                    store to temp_237_array_ele_160 in mem offset legal
    sw      a1,596(sp)
              #                    release a1 with temp_237_array_ele_160
              #                    store to temp_235_ptr2globl_160 in mem offset legal
    sw      a2,612(sp)
              #                    release a2 with temp_235_ptr2globl_160
              #                    store to temp_234_logic_160 in mem offset legal
    sb      a3,618(sp)
              #                    release a3 with temp_234_logic_160
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    store to temp_81_ptr2globl_106 in mem offset legal
    sw      a7,1396(sp)
              #                    release a7 with temp_81_ptr2globl_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                    store to temp_240_ret_of_find_163 in mem offset legal
    sw      a0,588(sp)
              #                          new_var temp_241_cmp_163:i1 
              #                          temp_241_cmp_163 = icmp i32 Eq temp_240_ret_of_find_163, 0_0 
              #                    occupy a0 with temp_240_ret_of_find_163
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_241_cmp_163
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_241_cmp_163, label branch_true_164, label branch_false_164 
              #                    occupy a2 with temp_241_cmp_163
              #                    free a2
              #                    occupy a2 with temp_241_cmp_163
    bnez    a2, .branch_true_164
              #                    free a2
    j       .branch_false_164
              #                    regtab     a0:Freed { symidx: temp_240_ret_of_find_163, tracked: true } |     a2:Freed { symidx: temp_241_cmp_163, tracked: true } | 
              #                          label branch_true_164: 
.branch_true_164:
              #                          jump label: while.exit_161 
              #                    store to temp_240_ret_of_find_163 in mem offset legal
    sw      a0,588(sp)
              #                    release a0 with temp_240_ret_of_find_163
              #                    store to temp_241_cmp_163 in mem offset legal
    sb      a2,587(sp)
              #                    release a2 with temp_241_cmp_163
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_239_logic_160_0
              #                    load from temp_239_logic_160 in mem
    lb      a0,594(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_133_array_ptr_127_0
              #                    load from temp_133_array_ptr_127 in mem
    ld      s8,1128(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_237_array_ele_160_0
              #                    load from temp_237_array_ele_160 in mem


    lw      a1,596(sp)
              #                    occupy a2 with _anonymous_of_temp_235_ptr2globl_160_0
              #                    load from temp_235_ptr2globl_160 in mem


    lw      a2,612(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
              #                    occupy a3 with _anonymous_of_temp_234_logic_160_0
              #                    load from temp_234_logic_160 in mem
    lb      a3,618(sp)
    j       .while.exit_161
              #                    regtab     a0:Freed { symidx: temp_239_logic_160, tracked: true } |     a1:Freed { symidx: temp_237_array_ele_160, tracked: true } |     a2:Freed { symidx: temp_235_ptr2globl_160, tracked: true } |     a3:Freed { symidx: temp_234_logic_160, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label while.exit_161: 
.while.exit_161:
              #                           Call void chapush_0(37_0) 
              #                    saved register dumping to mem
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_82_array_ptr_106 in mem offset legal
    sd      s2,1384(sp)
              #                    release s2 with temp_82_array_ptr_106
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_97_ptr2globl_117 in mem offset legal
    sw      s4,1316(sp)
              #                    release s4 with temp_97_ptr2globl_117
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_98_array_ptr_117 in mem offset legal
    sd      s6,1304(sp)
              #                    release s6 with temp_98_array_ptr_117
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_133_array_ptr_127 in mem offset legal
    sd      s8,1128(sp)
              #                    release s8 with temp_133_array_ptr_127
              #                    store to temp_83_array_ele_106 in mem offset legal
    sw      s9,1380(sp)
              #                    release s9 with temp_83_array_ele_106
              #                    store to temp_100_cmp_117 in mem offset legal
    sb      s10,1299(sp)
              #                    release s10 with temp_100_cmp_117
              #                    store to temp_84_cmp_106 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_84_cmp_106
              #                    store to temp_239_logic_160 in mem offset legal
    sb      a0,594(sp)
              #                    release a0 with temp_239_logic_160
              #                    store to temp_237_array_ele_160 in mem offset legal
    sw      a1,596(sp)
              #                    release a1 with temp_237_array_ele_160
              #                    store to temp_235_ptr2globl_160 in mem offset legal
    sw      a2,612(sp)
              #                    release a2 with temp_235_ptr2globl_160
              #                    store to temp_234_logic_160 in mem offset legal
    sb      a3,618(sp)
              #                    release a3 with temp_234_logic_160
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    store to temp_81_ptr2globl_106 in mem offset legal
    sw      a7,1396(sp)
              #                    release a7 with temp_81_ptr2globl_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_37_0_0
    li      a0, 37
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_158 
              #                    occupy a5 with _anonymous_of_temp_77_ptr2globl_103_0
              #                    load from temp_77_ptr2globl_103 in mem


    lw      a5,1420(sp)
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_219_array_ele_157_0
              #                    load from temp_219_array_ele_157 in mem


    lw      a0,692(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_133_array_ptr_127_0
              #                    load from temp_133_array_ptr_127 in mem
    ld      s8,1128(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_220_cmp_157_0
              #                    load from temp_220_cmp_157 in mem
    lb      a1,691(sp)
              #                    occupy a2 with _anonymous_of_temp_218_array_ptr_157_0
              #                    load from temp_218_array_ptr_157 in mem
    ld      a2,696(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
    j       .branch_false_158
              #                    regtab     a0:Freed { symidx: temp_240_ret_of_find_163, tracked: true } |     a2:Freed { symidx: temp_241_cmp_163, tracked: true } | 
              #                          label branch_false_164: 
.branch_false_164:
              #                          jump label: branch_true_158 
              #                    store to temp_240_ret_of_find_163 in mem offset legal
    sw      a0,588(sp)
              #                    release a0 with temp_240_ret_of_find_163
              #                    store to temp_241_cmp_163 in mem offset legal
    sb      a2,587(sp)
              #                    release a2 with temp_241_cmp_163
              #                    occupy a5 with _anonymous_of_temp_77_ptr2globl_103_0
              #                    load from temp_77_ptr2globl_103 in mem


    lw      a5,1420(sp)
              #                    occupy s5 with _anonymous_of_temp_79_array_ele_103_0
              #                    load from temp_79_array_ele_103 in mem


    lw      s5,1404(sp)
              #                    occupy s1 with _anonymous_of_temp_75_array_ele_100_0
              #                    load from temp_75_array_ele_100 in mem


    lw      s1,1428(sp)
              #                    occupy a6 with _anonymous_of_temp_78_array_ptr_103_0
              #                    load from temp_78_array_ptr_103 in mem
    ld      a6,1408(sp)
              #                    occupy s10 with _anonymous_of_temp_100_cmp_117_0
              #                    load from temp_100_cmp_117 in mem
    lb      s10,1299(sp)
              #                    occupy a0 with _anonymous_of_temp_219_array_ele_157_0
              #                    load from temp_219_array_ele_157 in mem


    lw      a0,692(sp)
              #                    occupy a4 with _anonymous_of_temp_74_array_ptr_100_0
              #                    load from temp_74_array_ptr_100 in mem
    ld      a4,1432(sp)
              #                    occupy s9 with _anonymous_of_temp_83_array_ele_106_0
              #                    load from temp_83_array_ele_106 in mem


    lw      s9,1380(sp)
              #                    occupy s7 with _anonymous_of_temp_80_cmp_103_0
              #                    load from temp_80_cmp_103 in mem
    lb      s7,1403(sp)
              #                    occupy s11 with _anonymous_of_temp_84_cmp_106_0
              #                    load from temp_84_cmp_106 in mem
    lb      s11,1379(sp)
              #                    occupy s3 with _anonymous_of_temp_76_cmp_100_0
              #                    load from temp_76_cmp_100 in mem
    lb      s3,1427(sp)
              #                    occupy s8 with _anonymous_of_temp_133_array_ptr_127_0
              #                    load from temp_133_array_ptr_127 in mem
    ld      s8,1128(sp)
              #                    occupy s4 with _anonymous_of_temp_97_ptr2globl_117_0
              #                    load from temp_97_ptr2globl_117 in mem


    lw      s4,1316(sp)
              #                    occupy s6 with _anonymous_of_temp_98_array_ptr_117_0
              #                    load from temp_98_array_ptr_117 in mem
    ld      s6,1304(sp)
              #                    occupy a1 with _anonymous_of_temp_220_cmp_157_0
              #                    load from temp_220_cmp_157 in mem
    lb      a1,691(sp)
              #                    occupy a2 with _anonymous_of_temp_218_array_ptr_157_0
              #                    load from temp_218_array_ptr_157 in mem
    ld      a2,696(sp)
              #                    occupy s2 with _anonymous_of_temp_82_array_ptr_106_0
              #                    load from temp_82_array_ptr_106 in mem
    ld      s2,1384(sp)
              #                    occupy a7 with _anonymous_of_temp_81_ptr2globl_106_0
              #                    load from temp_81_ptr2globl_106 in mem


    lw      a7,1396(sp)
    j       .branch_true_158
              #                    regtab     a0:Freed { symidx: temp_219_array_ele_157, tracked: true } |     a1:Freed { symidx: temp_220_cmp_157, tracked: true } |     a2:Freed { symidx: temp_218_array_ptr_157, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label branch_false_158: 
.branch_false_158:
              #                    regtab     a0:Freed { symidx: temp_219_array_ele_157, tracked: true } |     a1:Freed { symidx: temp_220_cmp_157, tracked: true } |     a2:Freed { symidx: temp_218_array_ptr_157, tracked: true } |     a4:Freed { symidx: temp_74_array_ptr_100, tracked: true } |     a5:Freed { symidx: temp_77_ptr2globl_103, tracked: true } |     a6:Freed { symidx: temp_78_array_ptr_103, tracked: true } |     a7:Freed { symidx: temp_81_ptr2globl_106, tracked: true } |     s10:Freed { symidx: temp_100_cmp_117, tracked: true } |     s11:Freed { symidx: temp_84_cmp_106, tracked: true } |     s1:Freed { symidx: temp_75_array_ele_100, tracked: true } |     s2:Freed { symidx: temp_82_array_ptr_106, tracked: true } |     s3:Freed { symidx: temp_76_cmp_100, tracked: true } |     s4:Freed { symidx: temp_97_ptr2globl_117, tracked: true } |     s5:Freed { symidx: temp_79_array_ele_103, tracked: true } |     s6:Freed { symidx: temp_98_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_80_cmp_103, tracked: true } |     s8:Freed { symidx: temp_133_array_ptr_127, tracked: true } |     s9:Freed { symidx: temp_83_array_ele_106, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_242_ptr2globl_99:i32 
              #                          temp_242_ptr2globl_99 = load *ii_0:ptr->i32 
              #                    occupy a3 with *ii_0
              #                       load label ii as ptr to reg
    la      a3, ii
              #                    occupy reg a3 with *ii_0
              #                    store to temp_219_array_ele_157 in mem offset legal
    sw      a0,692(sp)
              #                    release a0 with temp_219_array_ele_157
              #                    occupy a0 with temp_242_ptr2globl_99
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_243_index_ptr_99:ptr->i32 
              #                          temp_243_index_ptr_99 = getelementptr *get2_0:ptr->i32 [Some(temp_242_ptr2globl_99)] 
              #                    occupy a3 with temp_243_index_ptr_99
    li      a3, 0
              #                    store to temp_242_ptr2globl_99 in mem offset legal
    sw      a0,580(sp)
              #                    release a0 with temp_242_ptr2globl_99
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_220_cmp_157 in mem offset legal
    sb      a1,691(sp)
              #                    release a1 with temp_220_cmp_157
              #                    occupy a1 with temp_242_ptr2globl_99
              #                    load from temp_242_ptr2globl_99 in mem


    lw      a1,580(sp)
              #                    store to temp_218_array_ptr_157 in mem offset legal
    sd      a2,696(sp)
              #                    release a2 with temp_218_array_ptr_157
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with *get2_0
              #                       load label get2 as ptr to reg
    la      a0, get2
              #                    occupy reg a0 with *get2_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          store 32_0:i32 temp_243_index_ptr_99:ptr->i32 
              #                    occupy a3 with temp_243_index_ptr_99
              #                    occupy a0 with 32_0
    li      a0, 32
    sw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          mu *get2_0:943 
              #                          *get2_0 = chi *get2_0:943 
              #                          new_var temp_244_ptr2globl_99:i32 
              #                          temp_244_ptr2globl_99 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a2 with temp_244_ptr2globl_99
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_245_arithop_99:i32 
              #                          temp_245_arithop_99 = Add i32 temp_244_ptr2globl_99, 1_0 
              #                    occupy a2 with temp_244_ptr2globl_99
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_242_ptr2globl_99 in mem offset legal
    sw      a1,580(sp)
              #                    release a1 with temp_242_ptr2globl_99
              #                    occupy a1 with temp_245_arithop_99
    add     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          store temp_245_arithop_99:i32 *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a1 with temp_245_arithop_99
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          jump label: L9_0 
              #                    store to temp_77_ptr2globl_103 in mem offset legal
    sw      a5,1420(sp)
              #                    release a5 with temp_77_ptr2globl_103
              #                    store to temp_79_array_ele_103 in mem offset legal
    sw      s5,1404(sp)
              #                    release s5 with temp_79_array_ele_103
              #                    store to temp_75_array_ele_100 in mem offset legal
    sw      s1,1428(sp)
              #                    release s1 with temp_75_array_ele_100
              #                    store to temp_78_array_ptr_103 in mem offset legal
    sd      a6,1408(sp)
              #                    release a6 with temp_78_array_ptr_103
              #                    store to temp_100_cmp_117 in mem offset legal
    sb      s10,1299(sp)
              #                    release s10 with temp_100_cmp_117
              #                    store to temp_74_array_ptr_100 in mem offset legal
    sd      a4,1432(sp)
              #                    release a4 with temp_74_array_ptr_100
              #                    store to temp_83_array_ele_106 in mem offset legal
    sw      s9,1380(sp)
              #                    release s9 with temp_83_array_ele_106
              #                    store to temp_80_cmp_103 in mem offset legal
    sb      s7,1403(sp)
              #                    release s7 with temp_80_cmp_103
              #                    store to temp_84_cmp_106 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_84_cmp_106
              #                    store to temp_76_cmp_100 in mem offset legal
    sb      s3,1427(sp)
              #                    release s3 with temp_76_cmp_100
              #                    store to temp_133_array_ptr_127 in mem offset legal
    sd      s8,1128(sp)
              #                    release s8 with temp_133_array_ptr_127
              #                    store to temp_97_ptr2globl_117 in mem offset legal
    sw      s4,1316(sp)
              #                    release s4 with temp_97_ptr2globl_117
              #                    store to temp_98_array_ptr_117 in mem offset legal
    sd      s6,1304(sp)
              #                    release s6 with temp_98_array_ptr_117
              #                    store to temp_245_arithop_99 in mem offset legal
    sw      a1,560(sp)
              #                    release a1 with temp_245_arithop_99
              #                    store to temp_244_ptr2globl_99 in mem offset legal
    sw      a2,564(sp)
              #                    release a2 with temp_244_ptr2globl_99
              #                    store to temp_82_array_ptr_106 in mem offset legal
    sd      s2,1384(sp)
              #                    release s2 with temp_82_array_ptr_106
              #                    store to temp_81_ptr2globl_106 in mem offset legal
    sw      a7,1396(sp)
              #                    release a7 with temp_81_ptr2globl_106
              #                    store to temp_243_index_ptr_99 in mem offset legal
    sd      a3,568(sp)
              #                    release a3 with temp_243_index_ptr_99
              #                    occupy a0 with _anonymous_of_temp_62_ret_of_isdigit_94_0
              #                    load from temp_62_ret_of_isdigit_94 in mem


    lw      a0,1496(sp)
              #                    occupy a4 with _anonymous_of_temp_65_index_ptr_96_0
              #                    load from temp_65_index_ptr_96 in mem
    ld      a4,1480(sp)
              #                    occupy s9 with _anonymous_of_temp_70_arithop_96_0
              #                    load from temp_70_arithop_96 in mem


    lw      s9,1452(sp)
              #                    occupy s3 with _anonymous_of_temp_67_array_ptr_96_0
              #                    load from temp_67_array_ptr_96 in mem
    ld      s3,1464(sp)
              #                    occupy s8 with _anonymous_of_temp_69_ptr2globl_96_0
              #                    load from temp_69_ptr2globl_96 in mem


    lw      s8,1456(sp)
              #                    occupy s6 with _anonymous_of_temp_68_array_ele_96_0
              #                    load from temp_68_array_ele_96 in mem


    lw      s6,1460(sp)
              #                    occupy a2 with _anonymous_of_temp_63_cmp_94_0
              #                    load from temp_63_cmp_94 in mem
    lb      a2,1495(sp)
              #                    occupy s2 with _anonymous_of_temp_66_ptr2globl_96_0
              #                    load from temp_66_ptr2globl_96 in mem


    lw      s2,1476(sp)
              #                    occupy a3 with _anonymous_of_temp_64_ptr2globl_96_0
              #                    load from temp_64_ptr2globl_96 in mem


    lw      a3,1488(sp)
    j       .L9_0
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_64_ptr2globl_96, tracked: true } |     a4:Freed { symidx: temp_65_index_ptr_96, tracked: true } |     s2:Freed { symidx: temp_66_ptr2globl_96, tracked: true } |     s3:Freed { symidx: temp_67_array_ptr_96, tracked: true } |     s6:Freed { symidx: temp_68_array_ele_96, tracked: true } |     s8:Freed { symidx: temp_69_ptr2globl_96, tracked: true } |     s9:Freed { symidx: temp_70_arithop_96, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                    regtab     a0:Freed { symidx: temp_62_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_63_cmp_94, tracked: true } |     a3:Freed { symidx: temp_64_ptr2globl_96, tracked: true } |     a4:Freed { symidx: temp_65_index_ptr_96, tracked: true } |     s2:Freed { symidx: temp_66_ptr2globl_96, tracked: true } |     s3:Freed { symidx: temp_67_array_ptr_96, tracked: true } |     s6:Freed { symidx: temp_68_array_ele_96, tracked: true } |     s8:Freed { symidx: temp_69_ptr2globl_96, tracked: true } |     s9:Freed { symidx: temp_70_arithop_96, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_71_ptr2globl_93:i32 
              #                          temp_71_ptr2globl_93 = load *i_0:ptr->i32 
              #                    occupy a1 with *i_0
              #                       load label i as ptr to reg
    la      a1, i
              #                    occupy reg a1 with *i_0
              #                    occupy a5 with temp_71_ptr2globl_93
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_72_arithop_93:i32 
              #                          temp_72_arithop_93 = Add i32 temp_71_ptr2globl_93, 1_0 
              #                    occupy a5 with temp_71_ptr2globl_93
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_72_arithop_93
    add     a7,a5,a6
              #                    free a5
              #                    free a6
              #                    free a7
              #                          store temp_72_arithop_93:i32 *i_0:ptr->i32 
              #                    occupy s1 with *i_0
              #                       load label i as ptr to reg
    la      s1, i
              #                    occupy reg s1 with *i_0
              #                    occupy a7 with temp_72_arithop_93
    sw      a7,0(s1)
              #                    free a7
              #                    free s1
              #                          jump label: while.head_92 
              #                    store to temp_71_ptr2globl_93 in mem offset legal
    sw      a5,1448(sp)
              #                    release a5 with temp_71_ptr2globl_93
              #                    store to temp_62_ret_of_isdigit_94 in mem offset legal
    sw      a0,1496(sp)
              #                    release a0 with temp_62_ret_of_isdigit_94
              #                    store to temp_65_index_ptr_96 in mem offset legal
    sd      a4,1480(sp)
              #                    release a4 with temp_65_index_ptr_96
              #                    store to temp_70_arithop_96 in mem offset legal
    sw      s9,1452(sp)
              #                    release s9 with temp_70_arithop_96
              #                    store to temp_67_array_ptr_96 in mem offset legal
    sd      s3,1464(sp)
              #                    release s3 with temp_67_array_ptr_96
              #                    store to temp_69_ptr2globl_96 in mem offset legal
    sw      s8,1456(sp)
              #                    release s8 with temp_69_ptr2globl_96
              #                    store to temp_68_array_ele_96 in mem offset legal
    sw      s6,1460(sp)
              #                    release s6 with temp_68_array_ele_96
              #                    store to temp_63_cmp_94 in mem offset legal
    sb      a2,1495(sp)
              #                    release a2 with temp_63_cmp_94
              #                    store to temp_66_ptr2globl_96 in mem offset legal
    sw      s2,1476(sp)
              #                    release s2 with temp_66_ptr2globl_96
              #                    store to temp_72_arithop_93 in mem offset legal
    sw      a7,1444(sp)
              #                    release a7 with temp_72_arithop_93
              #                    store to temp_64_ptr2globl_96 in mem offset legal
    sw      a3,1488(sp)
              #                    release a3 with temp_64_ptr2globl_96
              #                    occupy a0 with _anonymous_of_temp_56_ret_of_getstr_87_0
              #                    load from temp_56_ret_of_getstr_87 in mem


    lw      a0,1532(sp)
              #                    occupy a1 with _anonymous_of_lengets_87_0
              #                    load from lengets_87 in mem


    lw      a1,1528(sp)
    j       .while.head_92
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: lengets_87, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_91, tracked: true } |     a4:Freed { symidx: temp_58_cmp_91, tracked: true } | 
              #                          label while.exit_92: 
.while.exit_92:
              #                          new_var temp_246_ptr2globl_170:i32 
              #                          temp_246_ptr2globl_170 = load *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    occupy a5 with temp_246_ptr2globl_170
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          new_var temp_247_cmp_170:i1 
              #                          temp_247_cmp_170 = icmp i32 Sgt temp_246_ptr2globl_170, 0_0 
              #                    occupy a5 with temp_246_ptr2globl_170
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with temp_247_cmp_170
    slt     a7,a6,a5
              #                    free a5
              #                    free a6
              #                    free a7
              #                          br i1 temp_247_cmp_170, label while.body_171, label while.exit_171 
              #                    occupy a7 with temp_247_cmp_170
              #                    free a7
              #                    occupy a7 with temp_247_cmp_170
    bnez    a7, .while.body_171
              #                    free a7
    j       .while.exit_171
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: lengets_87, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_91, tracked: true } |     a4:Freed { symidx: temp_58_cmp_91, tracked: true } |     a5:Freed { symidx: temp_246_ptr2globl_170, tracked: true } |     a7:Freed { symidx: temp_247_cmp_170, tracked: true } | 
              #                          label while.body_171: 
.while.body_171:
              #                          new_var temp_248_ret_of_chapop_172:i32 
              #                          temp_248_ret_of_chapop_172 =  Call i32 chapop_0() 
              #                    saved register dumping to mem
              #                    store to temp_56_ret_of_getstr_87 in mem offset legal
    sw      a0,1532(sp)
              #                    release a0 with temp_56_ret_of_getstr_87
              #                    store to lengets_87 in mem offset legal
    sw      a1,1528(sp)
              #                    release a1 with lengets_87
              #                    store to temp_57_ptr2globl_91 in mem offset legal
    sw      a3,1524(sp)
              #                    release a3 with temp_57_ptr2globl_91
              #                    store to temp_58_cmp_91 in mem offset legal
    sb      a4,1523(sp)
              #                    release a4 with temp_58_cmp_91
              #                    store to temp_246_ptr2globl_170 in mem offset legal
    sw      a5,556(sp)
              #                    release a5 with temp_246_ptr2globl_170
              #                    store to temp_247_cmp_170 in mem offset legal
    sb      a7,555(sp)
              #                    release a7 with temp_247_cmp_170
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    chapop
              #                    store to temp_248_ret_of_chapop_172 in mem offset legal
    sw      a0,548(sp)
              #                          c_172 = i32 temp_248_ret_of_chapop_172 
              #                    occupy a0 with temp_248_ret_of_chapop_172
              #                    occupy a1 with c_172
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_249_ptr2globl_172:i32 
              #                          temp_249_ptr2globl_172 = load *ii_0:ptr->i32 
              #                    occupy a2 with *ii_0
              #                       load label ii as ptr to reg
    la      a2, ii
              #                    occupy reg a2 with *ii_0
              #                    occupy a3 with temp_249_ptr2globl_172
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_250_index_ptr_172:ptr->i32 
              #                          temp_250_index_ptr_172 = getelementptr *get2_0:ptr->i32 [Some(temp_249_ptr2globl_172)] 
              #                    occupy a4 with temp_250_index_ptr_172
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_249_ptr2globl_172
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a3
              #                    free a5
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *get2_0
              #                       load label get2 as ptr to reg
    la      a7, get2
              #                    occupy reg a7 with *get2_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store 32_0:i32 temp_250_index_ptr_172:ptr->i32 
              #                    occupy a4 with temp_250_index_ptr_172
              #                    occupy s1 with 32_0
    li      s1, 32
    sw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          mu *get2_0:974 
              #                          *get2_0 = chi *get2_0:974 
              #                          new_var temp_251_ptr2globl_172:i32 
              #                          temp_251_ptr2globl_172 = load *ii_0:ptr->i32 
              #                    occupy s2 with *ii_0
              #                       load label ii as ptr to reg
    la      s2, ii
              #                    occupy reg s2 with *ii_0
              #                    occupy s3 with temp_251_ptr2globl_172
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_252_arithop_172:i32 
              #                          temp_252_arithop_172 = Add i32 temp_251_ptr2globl_172, 1_0 
              #                    occupy s3 with temp_251_ptr2globl_172
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s4 with temp_252_arithop_172
    add     s4,s3,a5
              #                    free s3
              #                    free a5
              #                    free s4
              #                          new_var temp_253_index_ptr_172:ptr->i32 
              #                          temp_253_index_ptr_172 = getelementptr *get2_0:ptr->i32 [Some(temp_252_arithop_172)] 
              #                    occupy s5 with temp_253_index_ptr_172
    li      s5, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s4 with temp_252_arithop_172
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a5,s4
              #                    free a5
              #                    free s4
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy s7 with *get2_0
              #                       load label get2 as ptr to reg
    la      s7, get2
              #                    occupy reg s7 with *get2_0
    add     s5,s5,s7
              #                    free s7
              #                    free s5
              #                          store c_172:i32 temp_253_index_ptr_172:ptr->i32 
              #                    occupy s5 with temp_253_index_ptr_172
              #                    occupy a1 with c_172
    sw      a1,0(s5)
              #                    free a1
              #                    free s5
              #                          mu *get2_0:986 
              #                          *get2_0 = chi *get2_0:986 
              #                          new_var temp_254_ptr2globl_172:i32 
              #                          temp_254_ptr2globl_172 = load *ii_0:ptr->i32 
              #                    occupy s8 with *ii_0
              #                       load label ii as ptr to reg
    la      s8, ii
              #                    occupy reg s8 with *ii_0
              #                    occupy s9 with temp_254_ptr2globl_172
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_255_arithop_172:i32 
              #                          temp_255_arithop_172 = Add i32 temp_254_ptr2globl_172, 2_0 
              #                    occupy s9 with temp_254_ptr2globl_172
              #                    occupy s10 with 2_0
    li      s10, 2
              #                    occupy s11 with temp_255_arithop_172
    add     s11,s9,s10
              #                    free s9
              #                    free s10
              #                    free s11
              #                          store temp_255_arithop_172:i32 *ii_0:ptr->i32 
              #                    occupy a2 with *ii_0
              #                       load label ii as ptr to reg
    la      a2, ii
              #                    occupy reg a2 with *ii_0
              #                    occupy s11 with temp_255_arithop_172
    sw      s11,0(a2)
              #                    free s11
              #                    free a2
              #                          jump label: while.exit_92 
              #                    store to temp_253_index_ptr_172 in mem offset legal
    sd      s5,512(sp)
              #                    release s5 with temp_253_index_ptr_172
              #                    store to temp_248_ret_of_chapop_172 in mem offset legal
    sw      a0,548(sp)
              #                    release a0 with temp_248_ret_of_chapop_172
              #                    store to temp_250_index_ptr_172 in mem offset legal
    sd      a4,528(sp)
              #                    release a4 with temp_250_index_ptr_172
              #                    store to temp_254_ptr2globl_172 in mem offset legal
    sw      s9,508(sp)
              #                    release s9 with temp_254_ptr2globl_172
              #                    store to temp_255_arithop_172 in mem offset legal
    sw      s11,504(sp)
              #                    release s11 with temp_255_arithop_172
              #                    store to temp_251_ptr2globl_172 in mem offset legal
    sw      s3,524(sp)
              #                    release s3 with temp_251_ptr2globl_172
              #                    store to temp_252_arithop_172 in mem offset legal
    sw      s4,520(sp)
              #                    release s4 with temp_252_arithop_172
              #                    store to c_172 in mem offset legal
    sw      a1,544(sp)
              #                    release a1 with c_172
              #                    store to temp_249_ptr2globl_172 in mem offset legal
    sw      a3,540(sp)
              #                    release a3 with temp_249_ptr2globl_172
              #                    occupy a0 with _anonymous_of_temp_56_ret_of_getstr_87_0
              #                    load from temp_56_ret_of_getstr_87 in mem


    lw      a0,1532(sp)
              #                    occupy a4 with _anonymous_of_temp_58_cmp_91_0
              #                    load from temp_58_cmp_91 in mem
    lb      a4,1523(sp)
              #                    occupy a1 with _anonymous_of_lengets_87_0
              #                    load from lengets_87 in mem


    lw      a1,1528(sp)
              #                    occupy a3 with _anonymous_of_temp_57_ptr2globl_91_0
              #                    load from temp_57_ptr2globl_91 in mem


    lw      a3,1524(sp)
    j       .while.exit_92
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: lengets_87, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_91, tracked: true } |     a4:Freed { symidx: temp_58_cmp_91, tracked: true } |     a5:Freed { symidx: temp_246_ptr2globl_170, tracked: true } |     a7:Freed { symidx: temp_247_cmp_170, tracked: true } | 
              #                          label while.exit_171: 
.while.exit_171:
              #                          new_var temp_256_ptr2globl_87:i32 
              #                          temp_256_ptr2globl_87 = load *ii_0:ptr->i32 
              #                    occupy a2 with *ii_0
              #                       load label ii as ptr to reg
    la      a2, ii
              #                    occupy reg a2 with *ii_0
              #                    occupy a6 with temp_256_ptr2globl_87
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          new_var temp_257_index_ptr_87:ptr->i32 
              #                          temp_257_index_ptr_87 = getelementptr *get2_0:ptr->i32 [Some(temp_256_ptr2globl_87)] 
              #                    occupy s1 with temp_257_index_ptr_87
    li      s1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a6 with temp_256_ptr2globl_87
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,s2,a6
              #                    free s2
              #                    free a6
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy s4 with *get2_0
              #                       load label get2 as ptr to reg
    la      s4, get2
              #                    occupy reg s4 with *get2_0
    add     s1,s1,s4
              #                    free s4
              #                    free s1
              #                          store 64_0:i32 temp_257_index_ptr_87:ptr->i32 
              #                    occupy s1 with temp_257_index_ptr_87
              #                    occupy s5 with 64_0
    li      s5, 64
    sw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          mu *get2_0:1002 
              #                          *get2_0 = chi *get2_0:1002 
              #                          store 1_0:i32 *i_0:ptr->i32 
              #                    occupy s6 with *i_0
              #                       load label i as ptr to reg
    la      s6, i
              #                    occupy reg s6 with *i_0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
    sw      s2,0(s6)
              #                    free s2
              #                    free s6
              #                          jump label: while.head_180 
    j       .while.head_180
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: lengets_87, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_91, tracked: true } |     a4:Freed { symidx: temp_58_cmp_91, tracked: true } |     a5:Freed { symidx: temp_246_ptr2globl_170, tracked: true } |     a6:Freed { symidx: temp_256_ptr2globl_87, tracked: true } |     a7:Freed { symidx: temp_247_cmp_170, tracked: true } |     s1:Freed { symidx: temp_257_index_ptr_87, tracked: true } | 
              #                          label while.head_180: 
.while.head_180:
              #                          new_var temp_258_ptr2globl_179:i32 
              #                          temp_258_ptr2globl_179 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy s2 with temp_258_ptr2globl_179
    lw      s2,0(a2)
              #                    free s2
              #                    free a2
              #                          new_var temp_259_array_ptr_179:ptr->i32 
              #                          temp_259_array_ptr_179 = getelementptr *get2_0:ptr->i32 [Some(temp_258_ptr2globl_179)] 
              #                    occupy s3 with temp_259_array_ptr_179
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s2 with temp_258_ptr2globl_179
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s4,s2
              #                    free s4
              #                    free s2
    add     s3,s3,s5
              #                    free s5
    slli s3,s3,2
              #                    occupy s6 with *get2_0
              #                       load label get2 as ptr to reg
    la      s6, get2
              #                    occupy reg s6 with *get2_0
    add     s3,s3,s6
              #                    free s6
              #                    free s3
              #                          new_var temp_260_array_ele_179:i32 
              #                          temp_260_array_ele_179 = load temp_259_array_ptr_179:ptr->i32 
              #                    occupy s3 with temp_259_array_ptr_179
              #                    occupy s7 with temp_260_array_ele_179
    lw      s7,0(s3)
              #                    free s7
              #                    free s3
              #                          new_var temp_261_cmp_179:i1 
              #                          temp_261_cmp_179 = icmp i32 Ne temp_260_array_ele_179, 64_0 
              #                    occupy s7 with temp_260_array_ele_179
              #                    occupy s8 with 64_0
    li      s8, 64
              #                    occupy s9 with temp_261_cmp_179
    xor     s9,s7,s8
    snez    s9, s9
              #                    free s7
              #                    free s8
              #                    free s9
              #                          br i1 temp_261_cmp_179, label while.body_180, label while.exit_180 
              #                    occupy s9 with temp_261_cmp_179
              #                    free s9
              #                    occupy s9 with temp_261_cmp_179
    bnez    s9, .while.body_180
              #                    free s9
    j       .while.exit_180
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: lengets_87, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_91, tracked: true } |     a4:Freed { symidx: temp_58_cmp_91, tracked: true } |     a5:Freed { symidx: temp_246_ptr2globl_170, tracked: true } |     a6:Freed { symidx: temp_256_ptr2globl_87, tracked: true } |     a7:Freed { symidx: temp_247_cmp_170, tracked: true } |     s1:Freed { symidx: temp_257_index_ptr_87, tracked: true } |     s2:Freed { symidx: temp_258_ptr2globl_179, tracked: true } |     s3:Freed { symidx: temp_259_array_ptr_179, tracked: true } |     s7:Freed { symidx: temp_260_array_ele_179, tracked: true } |     s9:Freed { symidx: temp_261_cmp_179, tracked: true } | 
              #                          label while.body_180: 
.while.body_180:
              #                          new_var temp_262_ptr2globl_182:i32 
              #                          temp_262_ptr2globl_182 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy s4 with temp_262_ptr2globl_182
    lw      s4,0(a2)
              #                    free s4
              #                    free a2
              #                          new_var temp_263_array_ptr_182:ptr->i32 
              #                          temp_263_array_ptr_182 = getelementptr *get2_0:ptr->i32 [Some(temp_262_ptr2globl_182)] 
              #                    occupy s5 with temp_263_array_ptr_182
    li      s5, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s4 with temp_262_ptr2globl_182
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s6,s4
              #                    free s6
              #                    free s4
    add     s5,s5,s8
              #                    free s8
    slli s5,s5,2
              #                    occupy s10 with *get2_0
              #                       load label get2 as ptr to reg
    la      s10, get2
              #                    occupy reg s10 with *get2_0
    add     s5,s5,s10
              #                    free s10
              #                    free s5
              #                          new_var temp_264_array_ele_182:i32 
              #                          temp_264_array_ele_182 = load temp_263_array_ptr_182:ptr->i32 
              #                    occupy s5 with temp_263_array_ptr_182
              #                    occupy s11 with temp_264_array_ele_182
    lw      s11,0(s5)
              #                    free s11
              #                    free s5
              #                          new_var temp_265_cmp_182:i1 
              #                          temp_265_cmp_182 = icmp i32 Eq temp_264_array_ele_182, 94_0 
              #                    occupy s11 with temp_264_array_ele_182
              #                    occupy a2 with 94_0
    li      a2, 94
              #                    occupy s6 with temp_265_cmp_182
    xor     s6,s11,a2
    seqz    s6, s6
              #                    free s11
              #                    free a2
              #                    free s6
              #                          new_var temp_266_ptr2globl_182:i32 
              #                          temp_266_ptr2globl_182 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy s8 with temp_266_ptr2globl_182
    lw      s8,0(a2)
              #                    free s8
              #                    free a2
              #                          new_var temp_267_array_ptr_182:ptr->i32 
              #                          temp_267_array_ptr_182 = getelementptr *get2_0:ptr->i32 [Some(temp_266_ptr2globl_182)] 
              #                    occupy a2 with temp_267_array_ptr_182
    li      a2, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s8 with temp_266_ptr2globl_182
              #                    store to temp_56_ret_of_getstr_87 in mem offset legal
    sw      a0,1532(sp)
              #                    release a0 with temp_56_ret_of_getstr_87
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,s10,s8
              #                    free s10
              #                    free s8
    add     a2,a2,a0
              #                    free a0
    slli a2,a2,2
              #                    occupy a0 with *get2_0
              #                       load label get2 as ptr to reg
    la      a0, get2
              #                    occupy reg a0 with *get2_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_268_array_ele_182:i32 
              #                          temp_268_array_ele_182 = load temp_267_array_ptr_182:ptr->i32 
              #                    occupy a2 with temp_267_array_ptr_182
              #                    occupy a0 with temp_268_array_ele_182
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_269_cmp_182:i1 
              #                          temp_269_cmp_182 = icmp i32 Eq temp_268_array_ele_182, 37_0 
              #                    occupy a0 with temp_268_array_ele_182
              #                    occupy s10 with 37_0
    li      s10, 37
              #                    store to lengets_87 in mem offset legal
    sw      a1,1528(sp)
              #                    release a1 with lengets_87
              #                    occupy a1 with temp_269_cmp_182
    xor     a1,a0,s10
    seqz    a1, a1
              #                    free a0
              #                    free s10
              #                    free a1
              #                          new_var temp_270_logic_182:i1 
              #                          temp_270_logic_182 = Or i1 temp_269_cmp_182, temp_265_cmp_182 
              #                    occupy a1 with temp_269_cmp_182
              #                    occupy s6 with temp_265_cmp_182
              #                    occupy s6 with temp_265_cmp_182
              #                    free a1
              #                    free s6
              #                    free s6
              #                          new_var temp_271_ptr2globl_182:i32 
              #                          temp_271_ptr2globl_182 = load *i_0:ptr->i32 
              #                    occupy s10 with *i_0
              #                       load label i as ptr to reg
    la      s10, i
              #                    occupy reg s10 with *i_0
              #                    store to temp_268_array_ele_182 in mem offset legal
    sw      a0,420(sp)
              #                    release a0 with temp_268_array_ele_182
              #                    occupy a0 with temp_271_ptr2globl_182
    lw      a0,0(s10)
              #                    free a0
              #                    free s10
              #                          new_var temp_272_array_ptr_182:ptr->i32 
              #                          temp_272_array_ptr_182 = getelementptr *get2_0:ptr->i32 [Some(temp_271_ptr2globl_182)] 
              #                    occupy s10 with temp_272_array_ptr_182
    li      s10, 0
              #                    store to temp_271_ptr2globl_182 in mem offset legal
    sw      a0,412(sp)
              #                    release a0 with temp_271_ptr2globl_182
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_269_cmp_182 in mem offset legal
    sb      a1,419(sp)
              #                    release a1 with temp_269_cmp_182
              #                    occupy a1 with temp_271_ptr2globl_182
              #                    load from temp_271_ptr2globl_182 in mem


    lw      a1,412(sp)
              #                    store to temp_267_array_ptr_182 in mem offset legal
    sd      a2,424(sp)
              #                    release a2 with temp_267_array_ptr_182
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s10,s10,a2
              #                    free a2
    slli s10,s10,2
              #                    occupy a0 with *get2_0
              #                       load label get2 as ptr to reg
    la      a0, get2
              #                    occupy reg a0 with *get2_0
    add     s10,s10,a0
              #                    free a0
              #                    free s10
              #                          new_var temp_273_array_ele_182:i32 
              #                          temp_273_array_ele_182 = load temp_272_array_ptr_182:ptr->i32 
              #                    occupy s10 with temp_272_array_ptr_182
              #                    occupy a0 with temp_273_array_ele_182
    lw      a0,0(s10)
              #                    free a0
              #                    free s10
              #                          new_var temp_274_cmp_182:i1 
              #                          temp_274_cmp_182 = icmp i32 Eq temp_273_array_ele_182, 47_0 
              #                    occupy a0 with temp_273_array_ele_182
              #                    occupy a2 with 47_0
    li      a2, 47
              #                    store to temp_271_ptr2globl_182 in mem offset legal
    sw      a1,412(sp)
              #                    release a1 with temp_271_ptr2globl_182
              #                    occupy a1 with temp_274_cmp_182
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_275_logic_182:i1 
              #                          temp_275_logic_182 = Or i1 temp_274_cmp_182, temp_270_logic_182 
              #                    occupy a1 with temp_274_cmp_182
              #                    occupy a2 with temp_270_logic_182
              #                    load from temp_270_logic_182 in mem
    lb      a2,418(sp)
              #                    occupy a2 with temp_270_logic_182
              #                    free a1
              #                    free a2
              #                    free a2
              #                          new_var temp_276_ptr2globl_182:i32 
              #                          temp_276_ptr2globl_182 = load *i_0:ptr->i32 
              #                    store to temp_273_array_ele_182 in mem offset legal
    sw      a0,396(sp)
              #                    release a0 with temp_273_array_ele_182
              #                    occupy a0 with *i_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy reg a0 with *i_0
              #                    store to temp_274_cmp_182 in mem offset legal
    sb      a1,395(sp)
              #                    release a1 with temp_274_cmp_182
              #                    occupy a1 with temp_276_ptr2globl_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_277_array_ptr_182:ptr->i32 
              #                          temp_277_array_ptr_182 = getelementptr *get2_0:ptr->i32 [Some(temp_276_ptr2globl_182)] 
              #                    occupy a0 with temp_277_array_ptr_182
    li      a0, 0
              #                    store to temp_276_ptr2globl_182 in mem offset legal
    sw      a1,388(sp)
              #                    release a1 with temp_276_ptr2globl_182
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_270_logic_182 in mem offset legal
    sb      a2,418(sp)
              #                    release a2 with temp_270_logic_182
              #                    occupy a2 with temp_276_ptr2globl_182
              #                    load from temp_276_ptr2globl_182 in mem


    lw      a2,388(sp)
              #                    store to temp_57_ptr2globl_91 in mem offset legal
    sw      a3,1524(sp)
              #                    release a3 with temp_57_ptr2globl_91
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *get2_0
              #                       load label get2 as ptr to reg
    la      a1, get2
              #                    occupy reg a1 with *get2_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_278_array_ele_182:i32 
              #                          temp_278_array_ele_182 = load temp_277_array_ptr_182:ptr->i32 
              #                    occupy a0 with temp_277_array_ptr_182
              #                    occupy a1 with temp_278_array_ele_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_279_cmp_182:i1 
              #                          temp_279_cmp_182 = icmp i32 Eq temp_278_array_ele_182, 42_0 
              #                    occupy a1 with temp_278_array_ele_182
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_277_array_ptr_182 in mem offset legal
    sd      a0,376(sp)
              #                    release a0 with temp_277_array_ptr_182
              #                    occupy a0 with temp_279_cmp_182
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_280_logic_182:i1 
              #                          temp_280_logic_182 = Or i1 temp_279_cmp_182, temp_275_logic_182 
              #                    occupy a0 with temp_279_cmp_182
              #                    occupy a3 with temp_275_logic_182
              #                    load from temp_275_logic_182 in mem
    lb      a3,394(sp)
              #                    occupy a3 with temp_275_logic_182
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_281_ptr2globl_182:i32 
              #                          temp_281_ptr2globl_182 = load *i_0:ptr->i32 
              #                    store to temp_279_cmp_182 in mem offset legal
    sb      a0,371(sp)
              #                    release a0 with temp_279_cmp_182
              #                    occupy a0 with *i_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy reg a0 with *i_0
              #                    store to temp_278_array_ele_182 in mem offset legal
    sw      a1,372(sp)
              #                    release a1 with temp_278_array_ele_182
              #                    occupy a1 with temp_281_ptr2globl_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_282_array_ptr_182:ptr->i32 
              #                          temp_282_array_ptr_182 = getelementptr *get2_0:ptr->i32 [Some(temp_281_ptr2globl_182)] 
              #                    occupy a0 with temp_282_array_ptr_182
    li      a0, 0
              #                    store to temp_281_ptr2globl_182 in mem offset legal
    sw      a1,364(sp)
              #                    release a1 with temp_281_ptr2globl_182
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_276_ptr2globl_182 in mem offset legal
    sw      a2,388(sp)
              #                    release a2 with temp_276_ptr2globl_182
              #                    occupy a2 with temp_281_ptr2globl_182
              #                    load from temp_281_ptr2globl_182 in mem


    lw      a2,364(sp)
              #                    store to temp_275_logic_182 in mem offset legal
    sb      a3,394(sp)
              #                    release a3 with temp_275_logic_182
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *get2_0
              #                       load label get2 as ptr to reg
    la      a1, get2
              #                    occupy reg a1 with *get2_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_283_array_ele_182:i32 
              #                          temp_283_array_ele_182 = load temp_282_array_ptr_182:ptr->i32 
              #                    occupy a0 with temp_282_array_ptr_182
              #                    occupy a1 with temp_283_array_ele_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_284_cmp_182:i1 
              #                          temp_284_cmp_182 = icmp i32 Eq temp_283_array_ele_182, 45_0 
              #                    occupy a1 with temp_283_array_ele_182
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    store to temp_282_array_ptr_182 in mem offset legal
    sd      a0,352(sp)
              #                    release a0 with temp_282_array_ptr_182
              #                    occupy a0 with temp_284_cmp_182
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_285_logic_182:i1 
              #                          temp_285_logic_182 = Or i1 temp_284_cmp_182, temp_280_logic_182 
              #                    occupy a0 with temp_284_cmp_182
              #                    occupy a3 with temp_280_logic_182
              #                    load from temp_280_logic_182 in mem
    lb      a3,370(sp)
              #                    occupy a3 with temp_280_logic_182
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_286_ptr2globl_182:i32 
              #                          temp_286_ptr2globl_182 = load *i_0:ptr->i32 
              #                    store to temp_284_cmp_182 in mem offset legal
    sb      a0,347(sp)
              #                    release a0 with temp_284_cmp_182
              #                    occupy a0 with *i_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy reg a0 with *i_0
              #                    store to temp_283_array_ele_182 in mem offset legal
    sw      a1,348(sp)
              #                    release a1 with temp_283_array_ele_182
              #                    occupy a1 with temp_286_ptr2globl_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_287_array_ptr_182:ptr->i32 
              #                          temp_287_array_ptr_182 = getelementptr *get2_0:ptr->i32 [Some(temp_286_ptr2globl_182)] 
              #                    occupy a0 with temp_287_array_ptr_182
    li      a0, 0
              #                    store to temp_286_ptr2globl_182 in mem offset legal
    sw      a1,340(sp)
              #                    release a1 with temp_286_ptr2globl_182
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_281_ptr2globl_182 in mem offset legal
    sw      a2,364(sp)
              #                    release a2 with temp_281_ptr2globl_182
              #                    occupy a2 with temp_286_ptr2globl_182
              #                    load from temp_286_ptr2globl_182 in mem


    lw      a2,340(sp)
              #                    store to temp_280_logic_182 in mem offset legal
    sb      a3,370(sp)
              #                    release a3 with temp_280_logic_182
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *get2_0
              #                       load label get2 as ptr to reg
    la      a1, get2
              #                    occupy reg a1 with *get2_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_288_array_ele_182:i32 
              #                          temp_288_array_ele_182 = load temp_287_array_ptr_182:ptr->i32 
              #                    occupy a0 with temp_287_array_ptr_182
              #                    occupy a1 with temp_288_array_ele_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_289_cmp_182:i1 
              #                          temp_289_cmp_182 = icmp i32 Eq temp_288_array_ele_182, 43_0 
              #                    occupy a1 with temp_288_array_ele_182
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    store to temp_287_array_ptr_182 in mem offset legal
    sd      a0,328(sp)
              #                    release a0 with temp_287_array_ptr_182
              #                    occupy a0 with temp_289_cmp_182
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_290_logic_182:i1 
              #                          temp_290_logic_182 = Or i1 temp_289_cmp_182, temp_285_logic_182 
              #                    occupy a0 with temp_289_cmp_182
              #                    occupy a3 with temp_285_logic_182
              #                    load from temp_285_logic_182 in mem
    lb      a3,346(sp)
              #                    occupy a3 with temp_285_logic_182
              #                    free a0
              #                    free a3
              #                    free a3
              #                          br i1 temp_290_logic_182, label branch_true_183, label branch_false_183 
              #                    store to temp_289_cmp_182 in mem offset legal
    sb      a0,323(sp)
              #                    release a0 with temp_289_cmp_182
              #                    occupy a0 with temp_290_logic_182
              #                    load from temp_290_logic_182 in mem
    lb      a0,322(sp)
              #                    free a0
              #                    store to temp_246_ptr2globl_170 in mem offset legal
    sw      a5,556(sp)
              #                    release a5 with temp_246_ptr2globl_170
              #                    occupy a0 with temp_290_logic_182
    bnez    a0, .branch_true_183
              #                    free a0
    j       .branch_false_183
              #                    regtab     a0:Freed { symidx: temp_290_logic_182, tracked: true } |     a1:Freed { symidx: temp_288_array_ele_182, tracked: true } |     a2:Freed { symidx: temp_286_ptr2globl_182, tracked: true } |     a3:Freed { symidx: temp_285_logic_182, tracked: true } |     a4:Freed { symidx: temp_58_cmp_91, tracked: true } |     a6:Freed { symidx: temp_256_ptr2globl_87, tracked: true } |     a7:Freed { symidx: temp_247_cmp_170, tracked: true } |     s10:Freed { symidx: temp_272_array_ptr_182, tracked: true } |     s11:Freed { symidx: temp_264_array_ele_182, tracked: true } |     s1:Freed { symidx: temp_257_index_ptr_87, tracked: true } |     s2:Freed { symidx: temp_258_ptr2globl_179, tracked: true } |     s3:Freed { symidx: temp_259_array_ptr_179, tracked: true } |     s4:Freed { symidx: temp_262_ptr2globl_182, tracked: true } |     s5:Freed { symidx: temp_263_array_ptr_182, tracked: true } |     s6:Freed { symidx: temp_265_cmp_182, tracked: true } |     s7:Freed { symidx: temp_260_array_ele_179, tracked: true } |     s8:Freed { symidx: temp_266_ptr2globl_182, tracked: true } |     s9:Freed { symidx: temp_261_cmp_179, tracked: true } | 
              #                          label branch_true_183: 
.branch_true_183:
              #                          new_var temp_291_ret_of_intpop_184:i32 
              #                          temp_291_ret_of_intpop_184 =  Call i32 intpop_0() 
              #                    saved register dumping to mem
              #                    store to temp_257_index_ptr_87 in mem offset legal
    sd      s1,488(sp)
              #                    release s1 with temp_257_index_ptr_87
              #                    store to temp_258_ptr2globl_179 in mem offset legal
    sw      s2,484(sp)
              #                    release s2 with temp_258_ptr2globl_179
              #                    store to temp_259_array_ptr_179 in mem offset legal
    sd      s3,472(sp)
              #                    release s3 with temp_259_array_ptr_179
              #                    store to temp_262_ptr2globl_182 in mem offset legal
    sw      s4,460(sp)
              #                    release s4 with temp_262_ptr2globl_182
              #                    store to temp_263_array_ptr_182 in mem offset legal
    sd      s5,448(sp)
              #                    release s5 with temp_263_array_ptr_182
              #                    store to temp_265_cmp_182 in mem offset legal
    sb      s6,443(sp)
              #                    release s6 with temp_265_cmp_182
              #                    store to temp_260_array_ele_179 in mem offset legal
    sw      s7,468(sp)
              #                    release s7 with temp_260_array_ele_179
              #                    store to temp_266_ptr2globl_182 in mem offset legal
    sw      s8,436(sp)
              #                    release s8 with temp_266_ptr2globl_182
              #                    store to temp_261_cmp_179 in mem offset legal
    sb      s9,467(sp)
              #                    release s9 with temp_261_cmp_179
              #                    store to temp_272_array_ptr_182 in mem offset legal
    sd      s10,400(sp)
              #                    release s10 with temp_272_array_ptr_182
              #                    store to temp_264_array_ele_182 in mem offset legal
    sw      s11,444(sp)
              #                    release s11 with temp_264_array_ele_182
              #                    store to temp_290_logic_182 in mem offset legal
    sb      a0,322(sp)
              #                    release a0 with temp_290_logic_182
              #                    store to temp_288_array_ele_182 in mem offset legal
    sw      a1,324(sp)
              #                    release a1 with temp_288_array_ele_182
              #                    store to temp_286_ptr2globl_182 in mem offset legal
    sw      a2,340(sp)
              #                    release a2 with temp_286_ptr2globl_182
              #                    store to temp_285_logic_182 in mem offset legal
    sb      a3,346(sp)
              #                    release a3 with temp_285_logic_182
              #                    store to temp_58_cmp_91 in mem offset legal
    sb      a4,1523(sp)
              #                    release a4 with temp_58_cmp_91
              #                    store to temp_256_ptr2globl_87 in mem offset legal
    sw      a6,500(sp)
              #                    release a6 with temp_256_ptr2globl_87
              #                    store to temp_247_cmp_170 in mem offset legal
    sb      a7,555(sp)
              #                    release a7 with temp_247_cmp_170
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    intpop
              #                    store to temp_291_ret_of_intpop_184 in mem offset legal
    sw      a0,316(sp)
              #                          a_184 = i32 temp_291_ret_of_intpop_184 
              #                    occupy a0 with temp_291_ret_of_intpop_184
              #                    occupy a1 with a_184
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_292_ret_of_intpop_184:i32 
              #                          temp_292_ret_of_intpop_184 =  Call i32 intpop_0() 
              #                    saved register dumping to mem
              #                    store to temp_291_ret_of_intpop_184 in mem offset legal
    sw      a0,316(sp)
              #                    release a0 with temp_291_ret_of_intpop_184
              #                    store to a_184 in mem offset legal
    sw      a1,312(sp)
              #                    release a1 with a_184
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    intpop
              #                    store to temp_292_ret_of_intpop_184 in mem offset legal
    sw      a0,308(sp)
              #                          b_184 = i32 temp_292_ret_of_intpop_184 
              #                    occupy a0 with temp_292_ret_of_intpop_184
              #                    occupy a1 with b_184
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var c_184:i32 
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_293_ptr2globl_188:i32 
              #                          temp_293_ptr2globl_188 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy a3 with temp_293_ptr2globl_188
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_294_array_ptr_188:ptr->i32 
              #                          temp_294_array_ptr_188 = getelementptr *get2_0:ptr->i32 [Some(temp_293_ptr2globl_188)] 
              #                    occupy a4 with temp_294_array_ptr_188
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_293_ptr2globl_188
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a3
              #                    free a5
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *get2_0
              #                       load label get2 as ptr to reg
    la      a7, get2
              #                    occupy reg a7 with *get2_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          new_var temp_295_array_ele_188:i32 
              #                          temp_295_array_ele_188 = load temp_294_array_ptr_188:ptr->i32 
              #                    occupy a4 with temp_294_array_ptr_188
              #                    occupy s1 with temp_295_array_ele_188
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          new_var temp_296_cmp_188:i1 
              #                          temp_296_cmp_188 = icmp i32 Eq temp_295_array_ele_188, 43_0 
              #                    occupy s1 with temp_295_array_ele_188
              #                    occupy s2 with 43_0
    li      s2, 43
              #                    occupy s3 with temp_296_cmp_188
    xor     s3,s1,s2
    seqz    s3, s3
              #                    free s1
              #                    free s2
              #                    free s3
              #                          br i1 temp_296_cmp_188, label branch_true_189, label branch_false_189 
              #                    occupy s3 with temp_296_cmp_188
              #                    free s3
              #                    occupy s3 with temp_296_cmp_188
    bnez    s3, .branch_true_189
              #                    free s3
    j       .branch_false_189
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } | 
              #                          label branch_true_189: 
.branch_true_189:
              #                          new_var temp_297_arithop_188:i32 
              #                          temp_297_arithop_188 = Add i32 a_184, b_184 
              #                    occupy a2 with a_184
              #                    load from a_184 in mem


    lw      a2,312(sp)
              #                    occupy a1 with b_184
              #                    occupy a5 with temp_297_arithop_188
    add     a5,a2,a1
              #                    free a2
              #                    free a1
              #                    free a5
              #                          c_184 = i32 temp_297_arithop_188 
              #                    occupy a5 with temp_297_arithop_188
              #                    occupy a6 with c_184
    mv      a6, a5
              #                    free a5
              #                    free a6
              #                          jump label: branch_false_189 
              #                    store to temp_297_arithop_188 in mem offset legal
    sw      a5,276(sp)
              #                    release a5 with temp_297_arithop_188
              #                    store to c_184 in mem offset legal
    sw      a6,300(sp)
              #                    release a6 with c_184
              #                    store to a_184 in mem offset legal
    sw      a2,312(sp)
              #                    release a2 with a_184
    j       .branch_false_189
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } | 
              #                          label branch_false_189: 
.branch_false_189:
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_298_ptr2globl_191:i32 
              #                          temp_298_ptr2globl_191 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy a5 with temp_298_ptr2globl_191
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          new_var temp_299_array_ptr_191:ptr->i32 
              #                          temp_299_array_ptr_191 = getelementptr *get2_0:ptr->i32 [Some(temp_298_ptr2globl_191)] 
              #                    occupy a6 with temp_299_array_ptr_191
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a5 with temp_298_ptr2globl_191
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a7,a5
              #                    free a7
              #                    free a5
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
              #                    occupy s4 with *get2_0
              #                       load label get2 as ptr to reg
    la      s4, get2
              #                    occupy reg s4 with *get2_0
    add     a6,a6,s4
              #                    free s4
              #                    free a6
              #                          new_var temp_300_array_ele_191:i32 
              #                          temp_300_array_ele_191 = load temp_299_array_ptr_191:ptr->i32 
              #                    occupy a6 with temp_299_array_ptr_191
              #                    occupy s5 with temp_300_array_ele_191
    lw      s5,0(a6)
              #                    free s5
              #                    free a6
              #                          new_var temp_301_cmp_191:i1 
              #                          temp_301_cmp_191 = icmp i32 Eq temp_300_array_ele_191, 45_0 
              #                    occupy s5 with temp_300_array_ele_191
              #                    occupy s6 with 45_0
    li      s6, 45
              #                    occupy s7 with temp_301_cmp_191
    xor     s7,s5,s6
    seqz    s7, s7
              #                    free s5
              #                    free s6
              #                    free s7
              #                          br i1 temp_301_cmp_191, label branch_true_192, label branch_false_192 
              #                    occupy s7 with temp_301_cmp_191
              #                    free s7
              #                    occupy s7 with temp_301_cmp_191
    bnez    s7, .branch_true_192
              #                    free s7
    j       .branch_false_192
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } | 
              #                          label branch_true_192: 
.branch_true_192:
              #                          new_var temp_302_arithop_191:i32 
              #                          temp_302_arithop_191 = Sub i32 b_184, a_184 
              #                    occupy a1 with b_184
              #                    occupy a2 with a_184
              #                    load from a_184 in mem


    lw      a2,312(sp)
              #                    occupy a7 with temp_302_arithop_191
              #                    regtab:    a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Occupied { symidx: b_184, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: a_184, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Occupied { symidx: temp_302_arithop_191, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } | 


    sub     a7,a1,a2
              #                    free a1
              #                    free a2
              #                    free a7
              #                          c_184 = i32 temp_302_arithop_191 
              #                    occupy a7 with temp_302_arithop_191
              #                    occupy s2 with c_184
    mv      s2, a7
              #                    free a7
              #                    free s2
              #                          jump label: branch_false_192 
              #                    store to a_184 in mem offset legal
    sw      a2,312(sp)
              #                    release a2 with a_184
              #                    store to c_184 in mem offset legal
    sw      s2,300(sp)
              #                    release s2 with c_184
              #                    store to temp_302_arithop_191 in mem offset legal
    sw      a7,252(sp)
              #                    release a7 with temp_302_arithop_191
    j       .branch_false_192
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } | 
              #                          label branch_false_192: 
.branch_false_192:
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                          new_var temp_303_ptr2globl_194:i32 
              #                          temp_303_ptr2globl_194 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy a7 with temp_303_ptr2globl_194
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_304_array_ptr_194:ptr->i32 
              #                          temp_304_array_ptr_194 = getelementptr *get2_0:ptr->i32 [Some(temp_303_ptr2globl_194)] 
              #                    occupy s2 with temp_304_array_ptr_194
    li      s2, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a7 with temp_303_ptr2globl_194
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s4,a7
              #                    free s4
              #                    free a7
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
              #                    occupy s8 with *get2_0
              #                       load label get2 as ptr to reg
    la      s8, get2
              #                    occupy reg s8 with *get2_0
    add     s2,s2,s8
              #                    free s8
              #                    free s2
              #                          new_var temp_305_array_ele_194:i32 
              #                          temp_305_array_ele_194 = load temp_304_array_ptr_194:ptr->i32 
              #                    occupy s2 with temp_304_array_ptr_194
              #                    occupy s9 with temp_305_array_ele_194
    lw      s9,0(s2)
              #                    free s9
              #                    free s2
              #                          new_var temp_306_cmp_194:i1 
              #                          temp_306_cmp_194 = icmp i32 Eq temp_305_array_ele_194, 42_0 
              #                    occupy s9 with temp_305_array_ele_194
              #                    occupy s10 with 42_0
    li      s10, 42
              #                    occupy s11 with temp_306_cmp_194
    xor     s11,s9,s10
    seqz    s11, s11
              #                    free s9
              #                    free s10
              #                    free s11
              #                          br i1 temp_306_cmp_194, label branch_true_195, label branch_false_195 
              #                    occupy s11 with temp_306_cmp_194
              #                    free s11
              #                    occupy s11 with temp_306_cmp_194
    bnez    s11, .branch_true_195
              #                    free s11
    j       .branch_false_195
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Freed { symidx: temp_303_ptr2globl_194, tracked: true } |     s11:Freed { symidx: temp_306_cmp_194, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s2:Freed { symidx: temp_304_array_ptr_194, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } |     s9:Freed { symidx: temp_305_array_ele_194, tracked: true } | 
              #                          label branch_true_195: 
.branch_true_195:
              #                          new_var temp_307_arithop_194:i32 
              #                          temp_307_arithop_194 = Mul i32 a_184, b_184 
              #                    occupy a2 with a_184
              #                    load from a_184 in mem


    lw      a2,312(sp)
              #                    occupy a1 with b_184
              #                    occupy s4 with temp_307_arithop_194
    mul     s4,a2,a1
              #                    free a2
              #                    free a1
              #                    free s4
              #                          c_184 = i32 temp_307_arithop_194 
              #                    occupy s4 with temp_307_arithop_194
              #                    occupy s6 with c_184
    mv      s6, s4
              #                    free s4
              #                    free s6
              #                          jump label: branch_false_195 
              #                    store to temp_307_arithop_194 in mem offset legal
    sw      s4,228(sp)
              #                    release s4 with temp_307_arithop_194
              #                    store to c_184 in mem offset legal
    sw      s6,300(sp)
              #                    release s6 with c_184
              #                    store to a_184 in mem offset legal
    sw      a2,312(sp)
              #                    release a2 with a_184
    j       .branch_false_195
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Freed { symidx: temp_303_ptr2globl_194, tracked: true } |     s11:Freed { symidx: temp_306_cmp_194, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s2:Freed { symidx: temp_304_array_ptr_194, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } |     s9:Freed { symidx: temp_305_array_ele_194, tracked: true } | 
              #                          label branch_false_195: 
.branch_false_195:
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Freed { symidx: temp_303_ptr2globl_194, tracked: true } |     s11:Freed { symidx: temp_306_cmp_194, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s2:Freed { symidx: temp_304_array_ptr_194, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } |     s9:Freed { symidx: temp_305_array_ele_194, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          new_var temp_308_ptr2globl_197:i32 
              #                          temp_308_ptr2globl_197 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy s4 with temp_308_ptr2globl_197
    lw      s4,0(a2)
              #                    free s4
              #                    free a2
              #                          new_var temp_309_array_ptr_197:ptr->i32 
              #                          temp_309_array_ptr_197 = getelementptr *get2_0:ptr->i32 [Some(temp_308_ptr2globl_197)] 
              #                    occupy s6 with temp_309_array_ptr_197
    li      s6, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s4 with temp_308_ptr2globl_197
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,s8,s4
              #                    free s8
              #                    free s4
    add     s6,s6,s10
              #                    free s10
    slli s6,s6,2
              #                    occupy a2 with *get2_0
              #                       load label get2 as ptr to reg
    la      a2, get2
              #                    occupy reg a2 with *get2_0
    add     s6,s6,a2
              #                    free a2
              #                    free s6
              #                          new_var temp_310_array_ele_197:i32 
              #                          temp_310_array_ele_197 = load temp_309_array_ptr_197:ptr->i32 
              #                    occupy s6 with temp_309_array_ptr_197
              #                    occupy a2 with temp_310_array_ele_197
    lw      a2,0(s6)
              #                    free a2
              #                    free s6
              #                          new_var temp_311_cmp_197:i1 
              #                          temp_311_cmp_197 = icmp i32 Eq temp_310_array_ele_197, 47_0 
              #                    occupy a2 with temp_310_array_ele_197
              #                    occupy s8 with 47_0
    li      s8, 47
              #                    occupy s10 with temp_311_cmp_197
    xor     s10,a2,s8
    seqz    s10, s10
              #                    free a2
              #                    free s8
              #                    free s10
              #                          br i1 temp_311_cmp_197, label branch_true_198, label branch_false_198 
              #                    occupy s10 with temp_311_cmp_197
              #                    free s10
              #                    occupy s10 with temp_311_cmp_197
    bnez    s10, .branch_true_198
              #                    free s10
    j       .branch_false_198
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a2:Freed { symidx: temp_310_array_ele_197, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Freed { symidx: temp_303_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_311_cmp_197, tracked: true } |     s11:Freed { symidx: temp_306_cmp_194, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s2:Freed { symidx: temp_304_array_ptr_194, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s4:Freed { symidx: temp_308_ptr2globl_197, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s6:Freed { symidx: temp_309_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } |     s9:Freed { symidx: temp_305_array_ele_194, tracked: true } | 
              #                          label branch_true_198: 
.branch_true_198:
              #                          new_var temp_312_arithop_197:i32 
              #                          temp_312_arithop_197 = Div i32 b_184, a_184 
              #                    occupy a1 with b_184
              #                    occupy s8 with a_184
              #                    load from a_184 in mem


    lw      s8,312(sp)
              #                    store to temp_292_ret_of_intpop_184 in mem offset legal
    sw      a0,308(sp)
              #                    release a0 with temp_292_ret_of_intpop_184
              #                    occupy a0 with temp_312_arithop_197
    div     a0,a1,s8
              #                    free a1
              #                    free s8
              #                    free a0
              #                          c_184 = i32 temp_312_arithop_197 
              #                    occupy a0 with temp_312_arithop_197
              #                    store to b_184 in mem offset legal
    sw      a1,304(sp)
              #                    release a1 with b_184
              #                    occupy a1 with c_184
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: branch_false_198 
              #                    store to temp_312_arithop_197 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with temp_312_arithop_197
              #                    store to a_184 in mem offset legal
    sw      s8,312(sp)
              #                    release s8 with a_184
              #                    store to c_184 in mem offset legal
    sw      a1,300(sp)
              #                    release a1 with c_184
              #                    occupy a0 with _anonymous_of_temp_292_ret_of_intpop_184_0
              #                    load from temp_292_ret_of_intpop_184 in mem


    lw      a0,308(sp)
              #                    occupy a1 with _anonymous_of_b_184_0
              #                    load from b_184 in mem


    lw      a1,304(sp)
    j       .branch_false_198
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a2:Freed { symidx: temp_310_array_ele_197, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Freed { symidx: temp_303_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_311_cmp_197, tracked: true } |     s11:Freed { symidx: temp_306_cmp_194, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s2:Freed { symidx: temp_304_array_ptr_194, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s4:Freed { symidx: temp_308_ptr2globl_197, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s6:Freed { symidx: temp_309_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } |     s9:Freed { symidx: temp_305_array_ele_194, tracked: true } | 
              #                          label branch_false_198: 
.branch_false_198:
              #                    regtab     a0:Freed { symidx: temp_292_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a2:Freed { symidx: temp_310_array_ele_197, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Freed { symidx: temp_303_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_311_cmp_197, tracked: true } |     s11:Freed { symidx: temp_306_cmp_194, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s2:Freed { symidx: temp_304_array_ptr_194, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s4:Freed { symidx: temp_308_ptr2globl_197, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s6:Freed { symidx: temp_309_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } |     s9:Freed { symidx: temp_305_array_ele_194, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                          new_var temp_313_ptr2globl_200:i32 
              #                          temp_313_ptr2globl_200 = load *i_0:ptr->i32 
              #                    occupy s8 with *i_0
              #                       load label i as ptr to reg
    la      s8, i
              #                    occupy reg s8 with *i_0
              #                    store to temp_292_ret_of_intpop_184 in mem offset legal
    sw      a0,308(sp)
              #                    release a0 with temp_292_ret_of_intpop_184
              #                    occupy a0 with temp_313_ptr2globl_200
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_314_array_ptr_200:ptr->i32 
              #                          temp_314_array_ptr_200 = getelementptr *get2_0:ptr->i32 [Some(temp_313_ptr2globl_200)] 
              #                    occupy s8 with temp_314_array_ptr_200
    li      s8, 0
              #                    store to temp_313_ptr2globl_200 in mem offset legal
    sw      a0,200(sp)
              #                    release a0 with temp_313_ptr2globl_200
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to b_184 in mem offset legal
    sw      a1,304(sp)
              #                    release a1 with b_184
              #                    occupy a1 with temp_313_ptr2globl_200
              #                    load from temp_313_ptr2globl_200 in mem


    lw      a1,200(sp)
              #                    store to temp_310_array_ele_197 in mem offset legal
    sw      a2,212(sp)
              #                    release a2 with temp_310_array_ele_197
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s8,s8,a2
              #                    free a2
    slli s8,s8,2
              #                    occupy a0 with *get2_0
              #                       load label get2 as ptr to reg
    la      a0, get2
              #                    occupy reg a0 with *get2_0
    add     s8,s8,a0
              #                    free a0
              #                    free s8
              #                          new_var temp_315_array_ele_200:i32 
              #                          temp_315_array_ele_200 = load temp_314_array_ptr_200:ptr->i32 
              #                    occupy s8 with temp_314_array_ptr_200
              #                    occupy a0 with temp_315_array_ele_200
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_316_cmp_200:i1 
              #                          temp_316_cmp_200 = icmp i32 Eq temp_315_array_ele_200, 37_0 
              #                    occupy a0 with temp_315_array_ele_200
              #                    occupy a2 with 37_0
    li      a2, 37
              #                    store to temp_313_ptr2globl_200 in mem offset legal
    sw      a1,200(sp)
              #                    release a1 with temp_313_ptr2globl_200
              #                    occupy a1 with temp_316_cmp_200
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_316_cmp_200, label branch_true_201, label branch_false_201 
              #                    occupy a1 with temp_316_cmp_200
              #                    free a1
              #                    occupy a1 with temp_316_cmp_200
    bnez    a1, .branch_true_201
              #                    free a1
    j       .branch_false_201
              #                    regtab     a0:Freed { symidx: temp_315_array_ele_200, tracked: true } |     a1:Freed { symidx: temp_316_cmp_200, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Freed { symidx: temp_303_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_311_cmp_197, tracked: true } |     s11:Freed { symidx: temp_306_cmp_194, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s2:Freed { symidx: temp_304_array_ptr_194, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s4:Freed { symidx: temp_308_ptr2globl_197, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s6:Freed { symidx: temp_309_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } |     s8:Freed { symidx: temp_314_array_ptr_200, tracked: true } |     s9:Freed { symidx: temp_305_array_ele_194, tracked: true } | 
              #                          label branch_true_201: 
.branch_true_201:
              #                          new_var temp_317_arithop_200:i32 
              #                          temp_317_arithop_200 = Mod i32 b_184, a_184 
              #                    occupy a2 with b_184
              #                    load from b_184 in mem


    lw      a2,304(sp)
              #                    store to temp_315_array_ele_200 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_315_array_ele_200
              #                    occupy a0 with a_184
              #                    load from a_184 in mem


    lw      a0,312(sp)
              #                    store to temp_316_cmp_200 in mem offset legal
    sb      a1,187(sp)
              #                    release a1 with temp_316_cmp_200
              #                    occupy a1 with temp_317_arithop_200
              #                    load from temp_317_arithop_200 in mem


    lw      a1,180(sp)
    rem     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          c_184 = i32 temp_317_arithop_200 
              #                    occupy a1 with temp_317_arithop_200
              #                    store to a_184 in mem offset legal
    sw      a0,312(sp)
              #                    release a0 with a_184
              #                    occupy a0 with c_184
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          jump label: branch_false_201 
              #                    store to c_184 in mem offset legal
    sw      a0,300(sp)
              #                    release a0 with c_184
              #                    store to temp_317_arithop_200 in mem offset legal
    sw      a1,180(sp)
              #                    release a1 with temp_317_arithop_200
              #                    store to b_184 in mem offset legal
    sw      a2,304(sp)
              #                    release a2 with b_184
              #                    occupy a0 with _anonymous_of_temp_315_array_ele_200_0
              #                    load from temp_315_array_ele_200 in mem


    lw      a0,188(sp)
              #                    occupy a1 with _anonymous_of_temp_316_cmp_200_0
              #                    load from temp_316_cmp_200 in mem
    lb      a1,187(sp)
    j       .branch_false_201
              #                    regtab     a0:Freed { symidx: temp_315_array_ele_200, tracked: true } |     a1:Freed { symidx: temp_316_cmp_200, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Freed { symidx: temp_303_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_311_cmp_197, tracked: true } |     s11:Freed { symidx: temp_306_cmp_194, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s2:Freed { symidx: temp_304_array_ptr_194, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s4:Freed { symidx: temp_308_ptr2globl_197, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s6:Freed { symidx: temp_309_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } |     s8:Freed { symidx: temp_314_array_ptr_200, tracked: true } |     s9:Freed { symidx: temp_305_array_ele_194, tracked: true } | 
              #                          label branch_false_201: 
.branch_false_201:
              #                    regtab     a0:Freed { symidx: temp_315_array_ele_200, tracked: true } |     a1:Freed { symidx: temp_316_cmp_200, tracked: true } |     a3:Freed { symidx: temp_293_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Freed { symidx: temp_303_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_311_cmp_197, tracked: true } |     s11:Freed { symidx: temp_306_cmp_194, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s2:Freed { symidx: temp_304_array_ptr_194, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s4:Freed { symidx: temp_308_ptr2globl_197, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s6:Freed { symidx: temp_309_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } |     s8:Freed { symidx: temp_314_array_ptr_200, tracked: true } |     s9:Freed { symidx: temp_305_array_ele_194, tracked: true } | 
              #                          label L16_0: 
.L16_0:
              #                          new_var temp_318_ptr2globl_203:i32 
              #                          temp_318_ptr2globl_203 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    store to temp_315_array_ele_200 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_315_array_ele_200
              #                    occupy a0 with temp_318_ptr2globl_203
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_319_array_ptr_203:ptr->i32 
              #                          temp_319_array_ptr_203 = getelementptr *get2_0:ptr->i32 [Some(temp_318_ptr2globl_203)] 
              #                    occupy a2 with temp_319_array_ptr_203
    li      a2, 0
              #                    store to temp_318_ptr2globl_203 in mem offset legal
    sw      a0,176(sp)
              #                    release a0 with temp_318_ptr2globl_203
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_316_cmp_200 in mem offset legal
    sb      a1,187(sp)
              #                    release a1 with temp_316_cmp_200
              #                    occupy a1 with temp_318_ptr2globl_203
              #                    load from temp_318_ptr2globl_203 in mem


    lw      a1,176(sp)
              #                    store to temp_293_ptr2globl_188 in mem offset legal
    sw      a3,296(sp)
              #                    release a3 with temp_293_ptr2globl_188
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *get2_0
              #                       load label get2 as ptr to reg
    la      a0, get2
              #                    occupy reg a0 with *get2_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_320_array_ele_203:i32 
              #                          temp_320_array_ele_203 = load temp_319_array_ptr_203:ptr->i32 
              #                    occupy a2 with temp_319_array_ptr_203
              #                    occupy a0 with temp_320_array_ele_203
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_321_cmp_203:i1 
              #                          temp_321_cmp_203 = icmp i32 Eq temp_320_array_ele_203, 94_0 
              #                    occupy a0 with temp_320_array_ele_203
              #                    occupy a3 with 94_0
    li      a3, 94
              #                    store to temp_318_ptr2globl_203 in mem offset legal
    sw      a1,176(sp)
              #                    release a1 with temp_318_ptr2globl_203
              #                    occupy a1 with temp_321_cmp_203
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          br i1 temp_321_cmp_203, label branch_true_204, label branch_false_204 
              #                    occupy a1 with temp_321_cmp_203
              #                    free a1
              #                    occupy a1 with temp_321_cmp_203
    bnez    a1, .branch_true_204
              #                    free a1
    j       .branch_false_204
              #                    regtab     a0:Freed { symidx: temp_320_array_ele_203, tracked: true } |     a1:Freed { symidx: temp_321_cmp_203, tracked: true } |     a2:Freed { symidx: temp_319_array_ptr_203, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Freed { symidx: temp_303_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_311_cmp_197, tracked: true } |     s11:Freed { symidx: temp_306_cmp_194, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s2:Freed { symidx: temp_304_array_ptr_194, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s4:Freed { symidx: temp_308_ptr2globl_197, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s6:Freed { symidx: temp_309_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } |     s8:Freed { symidx: temp_314_array_ptr_200, tracked: true } |     s9:Freed { symidx: temp_305_array_ele_194, tracked: true } | 
              #                          label branch_true_204: 
.branch_true_204:
              #                          new_var temp_322_ret_of_power_203:i32 
              #                          temp_322_ret_of_power_203 =  Call i32 power_0(b_184, a_184) 
              #                    saved register dumping to mem
              #                    store to temp_295_array_ele_188 in mem offset legal
    sw      s1,284(sp)
              #                    release s1 with temp_295_array_ele_188
              #                    store to temp_304_array_ptr_194 in mem offset legal
    sd      s2,240(sp)
              #                    release s2 with temp_304_array_ptr_194
              #                    store to temp_296_cmp_188 in mem offset legal
    sb      s3,283(sp)
              #                    release s3 with temp_296_cmp_188
              #                    store to temp_308_ptr2globl_197 in mem offset legal
    sw      s4,224(sp)
              #                    release s4 with temp_308_ptr2globl_197
              #                    store to temp_300_array_ele_191 in mem offset legal
    sw      s5,260(sp)
              #                    release s5 with temp_300_array_ele_191
              #                    store to temp_309_array_ptr_197 in mem offset legal
    sd      s6,216(sp)
              #                    release s6 with temp_309_array_ptr_197
              #                    store to temp_301_cmp_191 in mem offset legal
    sb      s7,259(sp)
              #                    release s7 with temp_301_cmp_191
              #                    store to temp_314_array_ptr_200 in mem offset legal
    sd      s8,192(sp)
              #                    release s8 with temp_314_array_ptr_200
              #                    store to temp_305_array_ele_194 in mem offset legal
    sw      s9,236(sp)
              #                    release s9 with temp_305_array_ele_194
              #                    store to temp_311_cmp_197 in mem offset legal
    sb      s10,211(sp)
              #                    release s10 with temp_311_cmp_197
              #                    store to temp_306_cmp_194 in mem offset legal
    sb      s11,235(sp)
              #                    release s11 with temp_306_cmp_194
              #                    store to temp_320_array_ele_203 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_320_array_ele_203
              #                    store to temp_321_cmp_203 in mem offset legal
    sb      a1,163(sp)
              #                    release a1 with temp_321_cmp_203
              #                    store to temp_319_array_ptr_203 in mem offset legal
    sd      a2,168(sp)
              #                    release a2 with temp_319_array_ptr_203
              #                    store to temp_294_array_ptr_188 in mem offset legal
    sd      a4,288(sp)
              #                    release a4 with temp_294_array_ptr_188
              #                    store to temp_298_ptr2globl_191 in mem offset legal
    sw      a5,272(sp)
              #                    release a5 with temp_298_ptr2globl_191
              #                    store to temp_299_array_ptr_191 in mem offset legal
    sd      a6,264(sp)
              #                    release a6 with temp_299_array_ptr_191
              #                    store to temp_303_ptr2globl_194 in mem offset legal
    sw      a7,248(sp)
              #                    release a7 with temp_303_ptr2globl_194
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_b_184_0
              #                    load from b_184 in mem


    lw      a0,304(sp)
              #                    occupy a1 with _anonymous_of_a_184_0
              #                    load from a_184 in mem


    lw      a1,312(sp)
              #                    arg load ended


    call    power
              #                    store to temp_322_ret_of_power_203 in mem offset legal
    sw      a0,156(sp)
              #                          c_184 = i32 temp_322_ret_of_power_203 
              #                    occupy a0 with temp_322_ret_of_power_203
              #                    occupy a1 with c_184
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: branch_false_204 
              #                    store to temp_322_ret_of_power_203 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with temp_322_ret_of_power_203
              #                    store to c_184 in mem offset legal
    sw      a1,300(sp)
              #                    release a1 with c_184
              #                    occupy a5 with _anonymous_of_temp_298_ptr2globl_191_0
              #                    load from temp_298_ptr2globl_191 in mem


    lw      a5,272(sp)
              #                    occupy s5 with _anonymous_of_temp_300_array_ele_191_0
              #                    load from temp_300_array_ele_191 in mem


    lw      s5,260(sp)
              #                    occupy s1 with _anonymous_of_temp_295_array_ele_188_0
              #                    load from temp_295_array_ele_188 in mem


    lw      s1,284(sp)
              #                    occupy a6 with _anonymous_of_temp_299_array_ptr_191_0
              #                    load from temp_299_array_ptr_191 in mem
    ld      a6,264(sp)
              #                    occupy s10 with _anonymous_of_temp_311_cmp_197_0
              #                    load from temp_311_cmp_197 in mem
    lb      s10,211(sp)
              #                    occupy a0 with _anonymous_of_temp_320_array_ele_203_0
              #                    load from temp_320_array_ele_203 in mem


    lw      a0,164(sp)
              #                    occupy a4 with _anonymous_of_temp_294_array_ptr_188_0
              #                    load from temp_294_array_ptr_188 in mem
    ld      a4,288(sp)
              #                    occupy s9 with _anonymous_of_temp_305_array_ele_194_0
              #                    load from temp_305_array_ele_194 in mem


    lw      s9,236(sp)
              #                    occupy s7 with _anonymous_of_temp_301_cmp_191_0
              #                    load from temp_301_cmp_191 in mem
    lb      s7,259(sp)
              #                    occupy s11 with _anonymous_of_temp_306_cmp_194_0
              #                    load from temp_306_cmp_194 in mem
    lb      s11,235(sp)
              #                    occupy s3 with _anonymous_of_temp_296_cmp_188_0
              #                    load from temp_296_cmp_188 in mem
    lb      s3,283(sp)
              #                    occupy s8 with _anonymous_of_temp_314_array_ptr_200_0
              #                    load from temp_314_array_ptr_200 in mem
    ld      s8,192(sp)
              #                    occupy s4 with _anonymous_of_temp_308_ptr2globl_197_0
              #                    load from temp_308_ptr2globl_197 in mem


    lw      s4,224(sp)
              #                    occupy s6 with _anonymous_of_temp_309_array_ptr_197_0
              #                    load from temp_309_array_ptr_197 in mem
    ld      s6,216(sp)
              #                    occupy a1 with _anonymous_of_temp_321_cmp_203_0
              #                    load from temp_321_cmp_203 in mem
    lb      a1,163(sp)
              #                    occupy a2 with _anonymous_of_temp_319_array_ptr_203_0
              #                    load from temp_319_array_ptr_203 in mem
    ld      a2,168(sp)
              #                    occupy s2 with _anonymous_of_temp_304_array_ptr_194_0
              #                    load from temp_304_array_ptr_194 in mem
    ld      s2,240(sp)
              #                    occupy a7 with _anonymous_of_temp_303_ptr2globl_194_0
              #                    load from temp_303_ptr2globl_194 in mem


    lw      a7,248(sp)
    j       .branch_false_204
              #                    regtab     a0:Freed { symidx: temp_320_array_ele_203, tracked: true } |     a1:Freed { symidx: temp_321_cmp_203, tracked: true } |     a2:Freed { symidx: temp_319_array_ptr_203, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Freed { symidx: temp_303_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_311_cmp_197, tracked: true } |     s11:Freed { symidx: temp_306_cmp_194, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s2:Freed { symidx: temp_304_array_ptr_194, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s4:Freed { symidx: temp_308_ptr2globl_197, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s6:Freed { symidx: temp_309_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } |     s8:Freed { symidx: temp_314_array_ptr_200, tracked: true } |     s9:Freed { symidx: temp_305_array_ele_194, tracked: true } | 
              #                          label branch_false_204: 
.branch_false_204:
              #                    regtab     a0:Freed { symidx: temp_320_array_ele_203, tracked: true } |     a1:Freed { symidx: temp_321_cmp_203, tracked: true } |     a2:Freed { symidx: temp_319_array_ptr_203, tracked: true } |     a4:Freed { symidx: temp_294_array_ptr_188, tracked: true } |     a5:Freed { symidx: temp_298_ptr2globl_191, tracked: true } |     a6:Freed { symidx: temp_299_array_ptr_191, tracked: true } |     a7:Freed { symidx: temp_303_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_311_cmp_197, tracked: true } |     s11:Freed { symidx: temp_306_cmp_194, tracked: true } |     s1:Freed { symidx: temp_295_array_ele_188, tracked: true } |     s2:Freed { symidx: temp_304_array_ptr_194, tracked: true } |     s3:Freed { symidx: temp_296_cmp_188, tracked: true } |     s4:Freed { symidx: temp_308_ptr2globl_197, tracked: true } |     s5:Freed { symidx: temp_300_array_ele_191, tracked: true } |     s6:Freed { symidx: temp_309_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_301_cmp_191, tracked: true } |     s8:Freed { symidx: temp_314_array_ptr_200, tracked: true } |     s9:Freed { symidx: temp_305_array_ele_194, tracked: true } | 
              #                          label L17_0: 
.L17_0:
              #                           Call void intpush_0(c_184) 
              #                    saved register dumping to mem
              #                    store to temp_295_array_ele_188 in mem offset legal
    sw      s1,284(sp)
              #                    release s1 with temp_295_array_ele_188
              #                    store to temp_304_array_ptr_194 in mem offset legal
    sd      s2,240(sp)
              #                    release s2 with temp_304_array_ptr_194
              #                    store to temp_296_cmp_188 in mem offset legal
    sb      s3,283(sp)
              #                    release s3 with temp_296_cmp_188
              #                    store to temp_308_ptr2globl_197 in mem offset legal
    sw      s4,224(sp)
              #                    release s4 with temp_308_ptr2globl_197
              #                    store to temp_300_array_ele_191 in mem offset legal
    sw      s5,260(sp)
              #                    release s5 with temp_300_array_ele_191
              #                    store to temp_309_array_ptr_197 in mem offset legal
    sd      s6,216(sp)
              #                    release s6 with temp_309_array_ptr_197
              #                    store to temp_301_cmp_191 in mem offset legal
    sb      s7,259(sp)
              #                    release s7 with temp_301_cmp_191
              #                    store to temp_314_array_ptr_200 in mem offset legal
    sd      s8,192(sp)
              #                    release s8 with temp_314_array_ptr_200
              #                    store to temp_305_array_ele_194 in mem offset legal
    sw      s9,236(sp)
              #                    release s9 with temp_305_array_ele_194
              #                    store to temp_311_cmp_197 in mem offset legal
    sb      s10,211(sp)
              #                    release s10 with temp_311_cmp_197
              #                    store to temp_306_cmp_194 in mem offset legal
    sb      s11,235(sp)
              #                    release s11 with temp_306_cmp_194
              #                    store to temp_320_array_ele_203 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_320_array_ele_203
              #                    store to temp_321_cmp_203 in mem offset legal
    sb      a1,163(sp)
              #                    release a1 with temp_321_cmp_203
              #                    store to temp_319_array_ptr_203 in mem offset legal
    sd      a2,168(sp)
              #                    release a2 with temp_319_array_ptr_203
              #                    store to temp_294_array_ptr_188 in mem offset legal
    sd      a4,288(sp)
              #                    release a4 with temp_294_array_ptr_188
              #                    store to temp_298_ptr2globl_191 in mem offset legal
    sw      a5,272(sp)
              #                    release a5 with temp_298_ptr2globl_191
              #                    store to temp_299_array_ptr_191 in mem offset legal
    sd      a6,264(sp)
              #                    release a6 with temp_299_array_ptr_191
              #                    store to temp_303_ptr2globl_194 in mem offset legal
    sw      a7,248(sp)
              #                    release a7 with temp_303_ptr2globl_194
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_c_184_0
              #                    load from c_184 in mem


    lw      a0,300(sp)
              #                    arg load ended


    call    intpush
              #                          jump label: L18_0 
    j       .L18_0
              #                    regtab     a0:Freed { symidx: temp_290_logic_182, tracked: true } |     a1:Freed { symidx: temp_288_array_ele_182, tracked: true } |     a2:Freed { symidx: temp_286_ptr2globl_182, tracked: true } |     a3:Freed { symidx: temp_285_logic_182, tracked: true } |     a4:Freed { symidx: temp_58_cmp_91, tracked: true } |     a6:Freed { symidx: temp_256_ptr2globl_87, tracked: true } |     a7:Freed { symidx: temp_247_cmp_170, tracked: true } |     s10:Freed { symidx: temp_272_array_ptr_182, tracked: true } |     s11:Freed { symidx: temp_264_array_ele_182, tracked: true } |     s1:Freed { symidx: temp_257_index_ptr_87, tracked: true } |     s2:Freed { symidx: temp_258_ptr2globl_179, tracked: true } |     s3:Freed { symidx: temp_259_array_ptr_179, tracked: true } |     s4:Freed { symidx: temp_262_ptr2globl_182, tracked: true } |     s5:Freed { symidx: temp_263_array_ptr_182, tracked: true } |     s6:Freed { symidx: temp_265_cmp_182, tracked: true } |     s7:Freed { symidx: temp_260_array_ele_179, tracked: true } |     s8:Freed { symidx: temp_266_ptr2globl_182, tracked: true } |     s9:Freed { symidx: temp_261_cmp_179, tracked: true } | 
              #                          label branch_false_183: 
.branch_false_183:
              #                          new_var temp_325_ptr2globl_208:i32 
              #                          temp_325_ptr2globl_208 = load *i_0:ptr->i32 
              #                    occupy a5 with *i_0
              #                       load label i as ptr to reg
    la      a5, i
              #                    occupy reg a5 with *i_0
              #                    store to temp_290_logic_182 in mem offset legal
    sb      a0,322(sp)
              #                    release a0 with temp_290_logic_182
              #                    occupy a0 with temp_325_ptr2globl_208
    lw      a0,0(a5)
              #                    free a0
              #                    free a5
              #                          new_var temp_326_array_ptr_208:ptr->i32 
              #                          temp_326_array_ptr_208 = getelementptr *get2_0:ptr->i32 [Some(temp_325_ptr2globl_208)] 
              #                    occupy a5 with temp_326_array_ptr_208
    li      a5, 0
              #                    store to temp_325_ptr2globl_208 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with temp_325_ptr2globl_208
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_288_array_ele_182 in mem offset legal
    sw      a1,324(sp)
              #                    release a1 with temp_288_array_ele_182
              #                    occupy a1 with temp_325_ptr2globl_208
              #                    load from temp_325_ptr2globl_208 in mem


    lw      a1,144(sp)
              #                    store to temp_286_ptr2globl_182 in mem offset legal
    sw      a2,340(sp)
              #                    release a2 with temp_286_ptr2globl_182
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a5,a5,a2
              #                    free a2
    slli a5,a5,2
              #                    occupy a0 with *get2_0
              #                       load label get2 as ptr to reg
    la      a0, get2
              #                    occupy reg a0 with *get2_0
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                          new_var temp_327_array_ele_208:i32 
              #                          temp_327_array_ele_208 = load temp_326_array_ptr_208:ptr->i32 
              #                    occupy a5 with temp_326_array_ptr_208
              #                    occupy a0 with temp_327_array_ele_208
    lw      a0,0(a5)
              #                    free a0
              #                    free a5
              #                          new_var temp_328_cmp_208:i1 
              #                          temp_328_cmp_208 = icmp i32 Ne temp_327_array_ele_208, 32_0 
              #                    occupy a0 with temp_327_array_ele_208
              #                    occupy a2 with 32_0
    li      a2, 32
              #                    store to temp_325_ptr2globl_208 in mem offset legal
    sw      a1,144(sp)
              #                    release a1 with temp_325_ptr2globl_208
              #                    occupy a1 with temp_328_cmp_208
    xor     a1,a0,a2
    snez    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_328_cmp_208, label branch_true_209, label branch_false_209 
              #                    occupy a1 with temp_328_cmp_208
              #                    free a1
              #                    occupy a1 with temp_328_cmp_208
    bnez    a1, .branch_true_209
              #                    free a1
    j       .branch_false_209
              #                    regtab     a0:Freed { symidx: temp_327_array_ele_208, tracked: true } |     a1:Freed { symidx: temp_328_cmp_208, tracked: true } |     a3:Freed { symidx: temp_285_logic_182, tracked: true } |     a4:Freed { symidx: temp_58_cmp_91, tracked: true } |     a5:Freed { symidx: temp_326_array_ptr_208, tracked: true } |     a6:Freed { symidx: temp_256_ptr2globl_87, tracked: true } |     a7:Freed { symidx: temp_247_cmp_170, tracked: true } |     s10:Freed { symidx: temp_272_array_ptr_182, tracked: true } |     s11:Freed { symidx: temp_264_array_ele_182, tracked: true } |     s1:Freed { symidx: temp_257_index_ptr_87, tracked: true } |     s2:Freed { symidx: temp_258_ptr2globl_179, tracked: true } |     s3:Freed { symidx: temp_259_array_ptr_179, tracked: true } |     s4:Freed { symidx: temp_262_ptr2globl_182, tracked: true } |     s5:Freed { symidx: temp_263_array_ptr_182, tracked: true } |     s6:Freed { symidx: temp_265_cmp_182, tracked: true } |     s7:Freed { symidx: temp_260_array_ele_179, tracked: true } |     s8:Freed { symidx: temp_266_ptr2globl_182, tracked: true } |     s9:Freed { symidx: temp_261_cmp_179, tracked: true } | 
              #                          label branch_true_209: 
.branch_true_209:
              #                          new_var temp_329_ptr2globl_210:i32 
              #                          temp_329_ptr2globl_210 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    store to temp_327_array_ele_208 in mem offset legal
    sw      a0,132(sp)
              #                    release a0 with temp_327_array_ele_208
              #                    occupy a0 with temp_329_ptr2globl_210
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_330_array_ptr_210:ptr->i32 
              #                          temp_330_array_ptr_210 = getelementptr *get2_0:ptr->i32 [Some(temp_329_ptr2globl_210)] 
              #                    occupy a2 with temp_330_array_ptr_210
    li      a2, 0
              #                    store to temp_329_ptr2globl_210 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_329_ptr2globl_210
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_328_cmp_208 in mem offset legal
    sb      a1,131(sp)
              #                    release a1 with temp_328_cmp_208
              #                    occupy a1 with temp_329_ptr2globl_210
              #                    load from temp_329_ptr2globl_210 in mem


    lw      a1,124(sp)
              #                    store to temp_285_logic_182 in mem offset legal
    sb      a3,346(sp)
              #                    release a3 with temp_285_logic_182
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *get2_0
              #                       load label get2 as ptr to reg
    la      a0, get2
              #                    occupy reg a0 with *get2_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_331_array_ele_210:i32 
              #                          temp_331_array_ele_210 = load temp_330_array_ptr_210:ptr->i32 
              #                    occupy a2 with temp_330_array_ptr_210
              #                    occupy a0 with temp_331_array_ele_210
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_332_arithop_210:i32 
              #                          temp_332_arithop_210 = Sub i32 temp_331_array_ele_210, 48_0 
              #                    occupy a0 with temp_331_array_ele_210
              #                    occupy a3 with 48_0
    li      a3, 48
              #                    store to temp_329_ptr2globl_210 in mem offset legal
    sw      a1,124(sp)
              #                    release a1 with temp_329_ptr2globl_210
              #                    occupy a1 with temp_332_arithop_210
              #                    regtab:    a0:Occupied { symidx: temp_331_array_ele_210, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_332_arithop_210, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_330_array_ptr_210, tracked: true } |     a3:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_58_cmp_91, tracked: true } |     a5:Freed { symidx: temp_326_array_ptr_208, tracked: true } |     a6:Freed { symidx: temp_256_ptr2globl_87, tracked: true } |     a7:Freed { symidx: temp_247_cmp_170, tracked: true } |     s10:Freed { symidx: temp_272_array_ptr_182, tracked: true } |     s11:Freed { symidx: temp_264_array_ele_182, tracked: true } |     s1:Freed { symidx: temp_257_index_ptr_87, tracked: true } |     s2:Freed { symidx: temp_258_ptr2globl_179, tracked: true } |     s3:Freed { symidx: temp_259_array_ptr_179, tracked: true } |     s4:Freed { symidx: temp_262_ptr2globl_182, tracked: true } |     s5:Freed { symidx: temp_263_array_ptr_182, tracked: true } |     s6:Freed { symidx: temp_265_cmp_182, tracked: true } |     s7:Freed { symidx: temp_260_array_ele_179, tracked: true } |     s8:Freed { symidx: temp_266_ptr2globl_182, tracked: true } |     s9:Freed { symidx: temp_261_cmp_179, tracked: true } | 


    sub     a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                           Call void intpush_0(temp_332_arithop_210) 
              #                    saved register dumping to mem
              #                    store to temp_257_index_ptr_87 in mem offset legal
    sd      s1,488(sp)
              #                    release s1 with temp_257_index_ptr_87
              #                    store to temp_258_ptr2globl_179 in mem offset legal
    sw      s2,484(sp)
              #                    release s2 with temp_258_ptr2globl_179
              #                    store to temp_259_array_ptr_179 in mem offset legal
    sd      s3,472(sp)
              #                    release s3 with temp_259_array_ptr_179
              #                    store to temp_262_ptr2globl_182 in mem offset legal
    sw      s4,460(sp)
              #                    release s4 with temp_262_ptr2globl_182
              #                    store to temp_263_array_ptr_182 in mem offset legal
    sd      s5,448(sp)
              #                    release s5 with temp_263_array_ptr_182
              #                    store to temp_265_cmp_182 in mem offset legal
    sb      s6,443(sp)
              #                    release s6 with temp_265_cmp_182
              #                    store to temp_260_array_ele_179 in mem offset legal
    sw      s7,468(sp)
              #                    release s7 with temp_260_array_ele_179
              #                    store to temp_266_ptr2globl_182 in mem offset legal
    sw      s8,436(sp)
              #                    release s8 with temp_266_ptr2globl_182
              #                    store to temp_261_cmp_179 in mem offset legal
    sb      s9,467(sp)
              #                    release s9 with temp_261_cmp_179
              #                    store to temp_272_array_ptr_182 in mem offset legal
    sd      s10,400(sp)
              #                    release s10 with temp_272_array_ptr_182
              #                    store to temp_264_array_ele_182 in mem offset legal
    sw      s11,444(sp)
              #                    release s11 with temp_264_array_ele_182
              #                    store to temp_331_array_ele_210 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_331_array_ele_210
              #                    store to temp_332_arithop_210 in mem offset legal
    sw      a1,104(sp)
              #                    release a1 with temp_332_arithop_210
              #                    store to temp_330_array_ptr_210 in mem offset legal
    sd      a2,112(sp)
              #                    release a2 with temp_330_array_ptr_210
              #                    store to temp_58_cmp_91 in mem offset legal
    sb      a4,1523(sp)
              #                    release a4 with temp_58_cmp_91
              #                    store to temp_326_array_ptr_208 in mem offset legal
    sd      a5,136(sp)
              #                    release a5 with temp_326_array_ptr_208
              #                    store to temp_256_ptr2globl_87 in mem offset legal
    sw      a6,500(sp)
              #                    release a6 with temp_256_ptr2globl_87
              #                    store to temp_247_cmp_170 in mem offset legal
    sb      a7,555(sp)
              #                    release a7 with temp_247_cmp_170
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_332_arithop_210_0
              #                    load from temp_332_arithop_210 in mem


    lw      a0,104(sp)
              #                    arg load ended


    call    intpush
              #                          store 1_0:i32 *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a1 with 1_0
    li      a1, 1
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          jump label: while.head_214 
    j       .while.head_214
              #                    regtab 
              #                          label while.head_214: 
.while.head_214:
              #                          new_var temp_333_ptr2globl_213:i32 
              #                          temp_333_ptr2globl_213 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a1 with temp_333_ptr2globl_213
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_334_ptr2globl_213:i32 
              #                          temp_334_ptr2globl_213 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy a3 with temp_334_ptr2globl_213
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_335_arithop_213:i32 
              #                          temp_335_arithop_213 = Add i32 temp_334_ptr2globl_213, temp_333_ptr2globl_213 
              #                    occupy a3 with temp_334_ptr2globl_213
              #                    occupy a1 with temp_333_ptr2globl_213
              #                    occupy a4 with temp_335_arithop_213
    add     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          new_var temp_336_array_ptr_213:ptr->i32 
              #                          temp_336_array_ptr_213 = getelementptr *get2_0:ptr->i32 [Some(temp_335_arithop_213)] 
              #                    occupy a5 with temp_336_array_ptr_213
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a4 with temp_335_arithop_213
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a6,a4
              #                    free a6
              #                    free a4
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with *get2_0
              #                       load label get2 as ptr to reg
    la      s1, get2
              #                    occupy reg s1 with *get2_0
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_337_array_ele_213:i32 
              #                          temp_337_array_ele_213 = load temp_336_array_ptr_213:ptr->i32 
              #                    occupy a5 with temp_336_array_ptr_213
              #                    occupy s2 with temp_337_array_ele_213
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_338_cmp_213:i1 
              #                          temp_338_cmp_213 = icmp i32 Ne temp_337_array_ele_213, 32_0 
              #                    occupy s2 with temp_337_array_ele_213
              #                    occupy s3 with 32_0
    li      s3, 32
              #                    occupy s4 with temp_338_cmp_213
    xor     s4,s2,s3
    snez    s4, s4
              #                    free s2
              #                    free s3
              #                    free s4
              #                          br i1 temp_338_cmp_213, label while.body_214, label while.exit_214 
              #                    occupy s4 with temp_338_cmp_213
              #                    free s4
              #                    occupy s4 with temp_338_cmp_213
    bnez    s4, .while.body_214
              #                    free s4
    j       .while.exit_214
              #                    regtab     a1:Freed { symidx: temp_333_ptr2globl_213, tracked: true } |     a3:Freed { symidx: temp_334_ptr2globl_213, tracked: true } |     a4:Freed { symidx: temp_335_arithop_213, tracked: true } |     a5:Freed { symidx: temp_336_array_ptr_213, tracked: true } |     s2:Freed { symidx: temp_337_array_ele_213, tracked: true } |     s4:Freed { symidx: temp_338_cmp_213, tracked: true } | 
              #                          label while.body_214: 
.while.body_214:
              #                          new_var temp_339_ptr2globl_215:i32 
              #                          temp_339_ptr2globl_215 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a2 with temp_339_ptr2globl_215
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_340_ptr2globl_215:i32 
              #                          temp_340_ptr2globl_215 = load *i_0:ptr->i32 
              #                    occupy a6 with *i_0
              #                       load label i as ptr to reg
    la      a6, i
              #                    occupy reg a6 with *i_0
              #                    occupy a7 with temp_340_ptr2globl_215
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_341_arithop_215:i32 
              #                          temp_341_arithop_215 = Add i32 temp_340_ptr2globl_215, temp_339_ptr2globl_215 
              #                    occupy a7 with temp_340_ptr2globl_215
              #                    occupy a2 with temp_339_ptr2globl_215
              #                    occupy s1 with temp_341_arithop_215
    add     s1,a7,a2
              #                    free a7
              #                    free a2
              #                    free s1
              #                          new_var temp_342_array_ptr_215:ptr->i32 
              #                          temp_342_array_ptr_215 = getelementptr *get2_0:ptr->i32 [Some(temp_341_arithop_215)] 
              #                    occupy s3 with temp_342_array_ptr_215
    li      s3, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s1 with temp_341_arithop_215
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s5,s1
              #                    free s5
              #                    free s1
    add     s3,s3,s6
              #                    free s6
    slli s3,s3,2
              #                    occupy s7 with *get2_0
              #                       load label get2 as ptr to reg
    la      s7, get2
              #                    occupy reg s7 with *get2_0
    add     s3,s3,s7
              #                    free s7
              #                    free s3
              #                          new_var temp_343_array_ele_215:i32 
              #                          temp_343_array_ele_215 = load temp_342_array_ptr_215:ptr->i32 
              #                    occupy s3 with temp_342_array_ptr_215
              #                    occupy s8 with temp_343_array_ele_215
    lw      s8,0(s3)
              #                    free s8
              #                    free s3
              #                          new_var temp_344_arithop_215:i32 
              #                          temp_344_arithop_215 = Sub i32 temp_343_array_ele_215, 48_0 
              #                    occupy s8 with temp_343_array_ele_215
              #                    occupy s9 with 48_0
    li      s9, 48
              #                    occupy s10 with temp_344_arithop_215
              #                    regtab:    a0:Freed { symidx: *ii_0, tracked: false } |     a1:Freed { symidx: temp_333_ptr2globl_213, tracked: true } |     a2:Freed { symidx: temp_339_ptr2globl_215, tracked: true } |     a3:Freed { symidx: temp_334_ptr2globl_213, tracked: true } |     a4:Freed { symidx: temp_335_arithop_213, tracked: true } |     a5:Freed { symidx: temp_336_array_ptr_213, tracked: true } |     a6:Freed { symidx: *i_0, tracked: false } |     a7:Freed { symidx: temp_340_ptr2globl_215, tracked: true } |     s10:Occupied { symidx: temp_344_arithop_215, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_341_arithop_215, tracked: true } |     s2:Freed { symidx: temp_337_array_ele_213, tracked: true } |     s3:Freed { symidx: temp_342_array_ptr_215, tracked: true } |     s4:Freed { symidx: temp_338_cmp_213, tracked: true } |     s5:Freed { symidx: 1_0, tracked: false } |     s6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s7:Freed { symidx: *get2_0, tracked: false } |     s8:Occupied { symidx: temp_343_array_ele_215, tracked: true, occupy_count: 1 } |     s9:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } | 


    sub     s10,s8,s9
              #                    free s8
              #                    free s9
              #                    free s10
              #                           Call void intadd_0(temp_344_arithop_215) 
              #                    saved register dumping to mem
              #                    store to temp_341_arithop_215 in mem offset legal
    sw      s1,60(sp)
              #                    release s1 with temp_341_arithop_215
              #                    store to temp_337_array_ele_213 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with temp_337_array_ele_213
              #                    store to temp_342_array_ptr_215 in mem offset legal
    sd      s3,48(sp)
              #                    release s3 with temp_342_array_ptr_215
              #                    store to temp_338_cmp_213 in mem offset legal
    sb      s4,75(sp)
              #                    release s4 with temp_338_cmp_213
              #                    store to temp_343_array_ele_215 in mem offset legal
    sw      s8,44(sp)
              #                    release s8 with temp_343_array_ele_215
              #                    store to temp_344_arithop_215 in mem offset legal
    sw      s10,40(sp)
              #                    release s10 with temp_344_arithop_215
              #                    store to temp_333_ptr2globl_213 in mem offset legal
    sw      a1,100(sp)
              #                    release a1 with temp_333_ptr2globl_213
              #                    store to temp_339_ptr2globl_215 in mem offset legal
    sw      a2,68(sp)
              #                    release a2 with temp_339_ptr2globl_215
              #                    store to temp_334_ptr2globl_213 in mem offset legal
    sw      a3,96(sp)
              #                    release a3 with temp_334_ptr2globl_213
              #                    store to temp_335_arithop_213 in mem offset legal
    sw      a4,92(sp)
              #                    release a4 with temp_335_arithop_213
              #                    store to temp_336_array_ptr_213 in mem offset legal
    sd      a5,80(sp)
              #                    release a5 with temp_336_array_ptr_213
              #                    store to temp_340_ptr2globl_215 in mem offset legal
    sw      a7,64(sp)
              #                    release a7 with temp_340_ptr2globl_215
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_344_arithop_215_0
              #                    load from temp_344_arithop_215 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    intadd
              #                          new_var temp_345_ptr2globl_215:i32 
              #                          temp_345_ptr2globl_215 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a1 with temp_345_ptr2globl_215
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_346_arithop_215:i32 
              #                          temp_346_arithop_215 = Add i32 temp_345_ptr2globl_215, 1_0 
              #                    occupy a1 with temp_345_ptr2globl_215
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_346_arithop_215
    add     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_346_arithop_215:i32 *ii_0:ptr->i32 
              #                    occupy a4 with *ii_0
              #                       load label ii as ptr to reg
    la      a4, ii
              #                    occupy reg a4 with *ii_0
              #                    occupy a3 with temp_346_arithop_215
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          jump label: while.head_214 
              #                    store to temp_345_ptr2globl_215 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with temp_345_ptr2globl_215
              #                    store to temp_346_arithop_215 in mem offset legal
    sw      a3,32(sp)
              #                    release a3 with temp_346_arithop_215
    j       .while.head_214
              #                    regtab     a1:Freed { symidx: temp_333_ptr2globl_213, tracked: true } |     a3:Freed { symidx: temp_334_ptr2globl_213, tracked: true } |     a4:Freed { symidx: temp_335_arithop_213, tracked: true } |     a5:Freed { symidx: temp_336_array_ptr_213, tracked: true } |     s2:Freed { symidx: temp_337_array_ele_213, tracked: true } |     s4:Freed { symidx: temp_338_cmp_213, tracked: true } | 
              #                          label while.exit_214: 
.while.exit_214:
              #                          new_var temp_347_ptr2globl_210:i32 
              #                          temp_347_ptr2globl_210 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a2 with temp_347_ptr2globl_210
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_348_ptr2globl_210:i32 
              #                          temp_348_ptr2globl_210 = load *i_0:ptr->i32 
              #                    occupy a6 with *i_0
              #                       load label i as ptr to reg
    la      a6, i
              #                    occupy reg a6 with *i_0
              #                    occupy a7 with temp_348_ptr2globl_210
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_349_arithop_210:i32 
              #                          temp_349_arithop_210 = Add i32 temp_348_ptr2globl_210, temp_347_ptr2globl_210 
              #                    occupy a7 with temp_348_ptr2globl_210
              #                    occupy a2 with temp_347_ptr2globl_210
              #                    occupy s1 with temp_349_arithop_210
    add     s1,a7,a2
              #                    free a7
              #                    free a2
              #                    free s1
              #                          new_var temp_350_arithop_210:i32 
              #                          temp_350_arithop_210 = Sub i32 temp_349_arithop_210, 1_0 
              #                    occupy s1 with temp_349_arithop_210
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s5 with temp_350_arithop_210
              #                    regtab:    a0:Freed { symidx: *ii_0, tracked: false } |     a1:Freed { symidx: temp_333_ptr2globl_213, tracked: true } |     a2:Freed { symidx: temp_347_ptr2globl_210, tracked: true } |     a3:Freed { symidx: temp_334_ptr2globl_213, tracked: true } |     a4:Freed { symidx: temp_335_arithop_213, tracked: true } |     a5:Freed { symidx: temp_336_array_ptr_213, tracked: true } |     a6:Freed { symidx: *i_0, tracked: false } |     a7:Freed { symidx: temp_348_ptr2globl_210, tracked: true } |     s1:Occupied { symidx: temp_349_arithop_210, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: temp_337_array_ele_213, tracked: true } |     s3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s4:Freed { symidx: temp_338_cmp_213, tracked: true } |     s5:Occupied { symidx: temp_350_arithop_210, tracked: true, occupy_count: 1 } | 


    sub     s5,s1,s3
              #                    free s1
              #                    free s3
              #                    free s5
              #                          store temp_350_arithop_210:i32 *i_0:ptr->i32 
              #                    occupy s6 with *i_0
              #                       load label i as ptr to reg
    la      s6, i
              #                    occupy reg s6 with *i_0
              #                    occupy s5 with temp_350_arithop_210
    sw      s5,0(s6)
              #                    free s5
              #                    free s6
              #                          jump label: branch_false_209 
              #                    store to temp_336_array_ptr_213 in mem offset legal
    sd      a5,80(sp)
              #                    release a5 with temp_336_array_ptr_213
              #                    store to temp_350_arithop_210 in mem offset legal
    sw      s5,16(sp)
              #                    release s5 with temp_350_arithop_210
              #                    store to temp_349_arithop_210 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with temp_349_arithop_210
              #                    store to temp_335_arithop_213 in mem offset legal
    sw      a4,92(sp)
              #                    release a4 with temp_335_arithop_213
              #                    store to temp_338_cmp_213 in mem offset legal
    sb      s4,75(sp)
              #                    release s4 with temp_338_cmp_213
              #                    store to temp_333_ptr2globl_213 in mem offset legal
    sw      a1,100(sp)
              #                    release a1 with temp_333_ptr2globl_213
              #                    store to temp_347_ptr2globl_210 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_347_ptr2globl_210
              #                    store to temp_337_array_ele_213 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with temp_337_array_ele_213
              #                    store to temp_348_ptr2globl_210 in mem offset legal
    sw      a7,24(sp)
              #                    release a7 with temp_348_ptr2globl_210
              #                    store to temp_334_ptr2globl_213 in mem offset legal
    sw      a3,96(sp)
              #                    release a3 with temp_334_ptr2globl_213
              #                    occupy a5 with _anonymous_of_temp_326_array_ptr_208_0
              #                    load from temp_326_array_ptr_208 in mem
    ld      a5,136(sp)
              #                    occupy s5 with _anonymous_of_temp_263_array_ptr_182_0
              #                    load from temp_263_array_ptr_182 in mem
    ld      s5,448(sp)
              #                    occupy s1 with _anonymous_of_temp_257_index_ptr_87_0
              #                    load from temp_257_index_ptr_87 in mem
    ld      s1,488(sp)
              #                    occupy a6 with _anonymous_of_temp_256_ptr2globl_87_0
              #                    load from temp_256_ptr2globl_87 in mem


    lw      a6,500(sp)
              #                    occupy s10 with _anonymous_of_temp_272_array_ptr_182_0
              #                    load from temp_272_array_ptr_182 in mem
    ld      s10,400(sp)
              #                    occupy a0 with _anonymous_of_temp_327_array_ele_208_0
              #                    load from temp_327_array_ele_208 in mem


    lw      a0,132(sp)
              #                    occupy a4 with _anonymous_of_temp_58_cmp_91_0
              #                    load from temp_58_cmp_91 in mem
    lb      a4,1523(sp)
              #                    occupy s9 with _anonymous_of_temp_261_cmp_179_0
              #                    load from temp_261_cmp_179 in mem
    lb      s9,467(sp)
              #                    occupy s7 with _anonymous_of_temp_260_array_ele_179_0
              #                    load from temp_260_array_ele_179 in mem


    lw      s7,468(sp)
              #                    occupy s11 with _anonymous_of_temp_264_array_ele_182_0
              #                    load from temp_264_array_ele_182 in mem


    lw      s11,444(sp)
              #                    occupy s3 with _anonymous_of_temp_259_array_ptr_179_0
              #                    load from temp_259_array_ptr_179 in mem
    ld      s3,472(sp)
              #                    occupy s8 with _anonymous_of_temp_266_ptr2globl_182_0
              #                    load from temp_266_ptr2globl_182 in mem


    lw      s8,436(sp)
              #                    occupy s4 with _anonymous_of_temp_262_ptr2globl_182_0
              #                    load from temp_262_ptr2globl_182 in mem


    lw      s4,460(sp)
              #                    occupy s6 with _anonymous_of_temp_265_cmp_182_0
              #                    load from temp_265_cmp_182 in mem
    lb      s6,443(sp)
              #                    occupy a1 with _anonymous_of_temp_328_cmp_208_0
              #                    load from temp_328_cmp_208 in mem
    lb      a1,131(sp)
              #                    occupy s2 with _anonymous_of_temp_258_ptr2globl_179_0
              #                    load from temp_258_ptr2globl_179 in mem


    lw      s2,484(sp)
              #                    occupy a7 with _anonymous_of_temp_247_cmp_170_0
              #                    load from temp_247_cmp_170 in mem
    lb      a7,555(sp)
              #                    occupy a3 with _anonymous_of_temp_285_logic_182_0
              #                    load from temp_285_logic_182 in mem
    lb      a3,346(sp)
    j       .branch_false_209
              #                    regtab     a0:Freed { symidx: temp_327_array_ele_208, tracked: true } |     a1:Freed { symidx: temp_328_cmp_208, tracked: true } |     a3:Freed { symidx: temp_285_logic_182, tracked: true } |     a4:Freed { symidx: temp_58_cmp_91, tracked: true } |     a5:Freed { symidx: temp_326_array_ptr_208, tracked: true } |     a6:Freed { symidx: temp_256_ptr2globl_87, tracked: true } |     a7:Freed { symidx: temp_247_cmp_170, tracked: true } |     s10:Freed { symidx: temp_272_array_ptr_182, tracked: true } |     s11:Freed { symidx: temp_264_array_ele_182, tracked: true } |     s1:Freed { symidx: temp_257_index_ptr_87, tracked: true } |     s2:Freed { symidx: temp_258_ptr2globl_179, tracked: true } |     s3:Freed { symidx: temp_259_array_ptr_179, tracked: true } |     s4:Freed { symidx: temp_262_ptr2globl_182, tracked: true } |     s5:Freed { symidx: temp_263_array_ptr_182, tracked: true } |     s6:Freed { symidx: temp_265_cmp_182, tracked: true } |     s7:Freed { symidx: temp_260_array_ele_179, tracked: true } |     s8:Freed { symidx: temp_266_ptr2globl_182, tracked: true } |     s9:Freed { symidx: temp_261_cmp_179, tracked: true } | 
              #                          label branch_false_209: 
.branch_false_209:
              #                    regtab 
              #                          label L18_0: 
.L18_0:
              #                    regtab 
              #                          label L19_0: 
.L19_0:
              #                          new_var temp_323_ptr2globl_181:i32 
              #                          temp_323_ptr2globl_181 = load *i_0:ptr->i32 
              #                    occupy a0 with *i_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy reg a0 with *i_0
              #                    occupy a1 with temp_323_ptr2globl_181
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_324_arithop_181:i32 
              #                          temp_324_arithop_181 = Add i32 temp_323_ptr2globl_181, 1_0 
              #                    occupy a1 with temp_323_ptr2globl_181
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_324_arithop_181
    add     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_324_arithop_181:i32 *i_0:ptr->i32 
              #                    occupy a4 with *i_0
              #                       load label i as ptr to reg
    la      a4, i
              #                    occupy reg a4 with *i_0
              #                    occupy a3 with temp_324_arithop_181
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          jump label: while.head_180 
              #                    store to temp_323_ptr2globl_181 in mem offset legal
    sw      a1,152(sp)
              #                    release a1 with temp_323_ptr2globl_181
              #                    store to temp_324_arithop_181 in mem offset legal
    sw      a3,148(sp)
              #                    release a3 with temp_324_arithop_181
              #                    occupy a5 with _anonymous_of_temp_246_ptr2globl_170_0
              #                    load from temp_246_ptr2globl_170 in mem


    lw      a5,556(sp)
              #                    occupy s1 with _anonymous_of_temp_257_index_ptr_87_0
              #                    load from temp_257_index_ptr_87 in mem
    ld      s1,488(sp)
              #                    occupy a6 with _anonymous_of_temp_256_ptr2globl_87_0
              #                    load from temp_256_ptr2globl_87 in mem


    lw      a6,500(sp)
              #                    occupy a0 with _anonymous_of_temp_56_ret_of_getstr_87_0
              #                    load from temp_56_ret_of_getstr_87 in mem


    lw      a0,1532(sp)
              #                    occupy a4 with _anonymous_of_temp_58_cmp_91_0
              #                    load from temp_58_cmp_91 in mem
    lb      a4,1523(sp)
              #                    occupy a1 with _anonymous_of_lengets_87_0
              #                    load from lengets_87 in mem


    lw      a1,1528(sp)
              #                    occupy a7 with _anonymous_of_temp_247_cmp_170_0
              #                    load from temp_247_cmp_170 in mem
    lb      a7,555(sp)
              #                    occupy a3 with _anonymous_of_temp_57_ptr2globl_91_0
              #                    load from temp_57_ptr2globl_91 in mem


    lw      a3,1524(sp)
    j       .while.head_180
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: lengets_87, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_91, tracked: true } |     a4:Freed { symidx: temp_58_cmp_91, tracked: true } |     a5:Freed { symidx: temp_246_ptr2globl_170, tracked: true } |     a6:Freed { symidx: temp_256_ptr2globl_87, tracked: true } |     a7:Freed { symidx: temp_247_cmp_170, tracked: true } |     s1:Freed { symidx: temp_257_index_ptr_87, tracked: true } |     s2:Freed { symidx: temp_258_ptr2globl_179, tracked: true } |     s3:Freed { symidx: temp_259_array_ptr_179, tracked: true } |     s7:Freed { symidx: temp_260_array_ele_179, tracked: true } |     s9:Freed { symidx: temp_261_cmp_179, tracked: true } | 
              #                          label while.exit_180: 
.while.exit_180:
              #                          new_var temp_351_array_ptr_87:ptr->i32 
              #                          temp_351_array_ptr_87 = getelementptr *ints_0:ptr->i32 [Some(1_0)] 
              #                    occupy a2 with temp_351_array_ptr_87
    li      a2, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s4,s5
              #                    free s4
              #                    free s5
    add     a2,a2,s6
              #                    free s6
    slli a2,a2,2
              #                    occupy s8 with *ints_0
              #                       load label ints as ptr to reg
    la      s8, ints
              #                    occupy reg s8 with *ints_0
    add     a2,a2,s8
              #                    free s8
              #                    free a2
              #                          new_var temp_352_array_ele_87:i32 
              #                          temp_352_array_ele_87 = load temp_351_array_ptr_87:ptr->i32 
              #                    occupy a2 with temp_351_array_ptr_87
              #                    occupy s10 with temp_352_array_ele_87
    lw      s10,0(a2)
              #                    free s10
              #                    free a2
              #                           Call void putint_0(temp_352_array_ele_87) 
              #                    saved register dumping to mem
              #                    store to temp_257_index_ptr_87 in mem offset legal
    sd      s1,488(sp)
              #                    release s1 with temp_257_index_ptr_87
              #                    store to temp_258_ptr2globl_179 in mem offset legal
    sw      s2,484(sp)
              #                    release s2 with temp_258_ptr2globl_179
              #                    store to temp_259_array_ptr_179 in mem offset legal
    sd      s3,472(sp)
              #                    release s3 with temp_259_array_ptr_179
              #                    store to temp_260_array_ele_179 in mem offset legal
    sw      s7,468(sp)
              #                    release s7 with temp_260_array_ele_179
              #                    store to temp_261_cmp_179 in mem offset legal
    sb      s9,467(sp)
              #                    release s9 with temp_261_cmp_179
              #                    store to temp_352_array_ele_87 in mem offset legal
    sw      s10,4(sp)
              #                    release s10 with temp_352_array_ele_87
              #                    store to temp_56_ret_of_getstr_87 in mem offset legal
    sw      a0,1532(sp)
              #                    release a0 with temp_56_ret_of_getstr_87
              #                    store to lengets_87 in mem offset legal
    sw      a1,1528(sp)
              #                    release a1 with lengets_87
              #                    store to temp_351_array_ptr_87 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_351_array_ptr_87
              #                    store to temp_57_ptr2globl_91 in mem offset legal
    sw      a3,1524(sp)
              #                    release a3 with temp_57_ptr2globl_91
              #                    store to temp_58_cmp_91 in mem offset legal
    sb      a4,1523(sp)
              #                    release a4 with temp_58_cmp_91
              #                    store to temp_246_ptr2globl_170 in mem offset legal
    sw      a5,556(sp)
              #                    release a5 with temp_246_ptr2globl_170
              #                    store to temp_256_ptr2globl_87 in mem offset legal
    sw      a6,500(sp)
              #                    release a6 with temp_256_ptr2globl_87
              #                    store to temp_247_cmp_170 in mem offset legal
    sb      a7,555(sp)
              #                    release a7 with temp_247_cmp_170
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_352_array_ele_87_0
              #                    load from temp_352_array_ele_87 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,1544(sp)
              #                    load from s0_main_0 in mem
    ld      s0,1536(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl get2
              #                          global Array:i32:[Some(10000_0)] get2_0 
    .type get2,@object
get2:
    .zero 40000
    .align 4
    .globl get
              #                          global Array:i32:[Some(10000_0)] get_0 
    .type get,@object
get:
    .zero 40000
    .align 4
    .globl c
              #                          global i32 c_0 
    .type c,@object
c:
    .word 0
    .align 4
    .globl ii
              #                          global i32 ii_0 
    .type ii,@object
ii:
    .word 1
    .align 4
    .globl i
              #                          global i32 i_0 
    .type i,@object
i:
    .word 0
    .align 4
    .globl chat
              #                          global i32 chat_0 
    .type chat,@object
chat:
    .word 0
    .align 4
    .globl chas
              #                          global Array:i32:[Some(10000_0)] chas_0 
    .type chas,@object
chas:
    .zero 40000
    .align 4
    .globl intt
              #                          global i32 intt_0 
    .type intt,@object
intt:
    .word 0
    .align 4
    .globl ints
              #                          global Array:i32:[Some(10000_0)] ints_0 
    .type ints,@object
ints:
    .zero 40000
