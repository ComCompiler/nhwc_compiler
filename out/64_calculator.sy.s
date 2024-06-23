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
              #                    occupy s1 with _anonymous_of_get_41_0
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
              #                    occupy a0 with _anonymous_of_temp_6_ret_of_getch_43_0
              #                    load from temp_6_ret_of_getch_43 in mem


    lw      a0,28(sp)
              #                    occupy a2 with _anonymous_of_length_43_0
              #                    load from length_43 in mem


    lw      a2,20(sp)
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
              #                          temp_16_index_ptr_55 = getelementptr ints_0:Array:i32:[Some(10000_0)] [Some(temp_15_ptr2globl_55)] 
              #                    occupy s1 with temp_16_index_ptr_55
    li      s1, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a7 with temp_15_ptr2globl_55
              #                    occupy s2 with _anonymous_of_ints_0_0
    mul     s2,a3,a7
              #                    free a3
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with _anonymous_of_ints_0_0
    la      s3, ints
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          store x_53:i32 temp_16_index_ptr_55:ptr->i32 
              #                    occupy s1 with temp_16_index_ptr_55
              #                    occupy a0 with x_53
    sw      a0,0(s1)
              #                    free a0
              #                    free s1
              #                          mu ints_0:127 
              #                          ints_0 = chi ints_0:127 
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
              #                          temp_20_index_ptr_60 = getelementptr chas_0:Array:i32:[Some(10000_0)] [Some(temp_19_ptr2globl_60)] 
              #                    occupy s1 with temp_20_index_ptr_60
    li      s1, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a7 with temp_19_ptr2globl_60
              #                    occupy s2 with _anonymous_of_chas_0_0
    mul     s2,a3,a7
              #                    free a3
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with _anonymous_of_chas_0_0
    la      s3, chas
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          store x_58:i32 temp_20_index_ptr_60:ptr->i32 
              #                    occupy s1 with temp_20_index_ptr_60
              #                    occupy a0 with x_58
    sw      a0,0(s1)
              #                    free a0
              #                    free s1
              #                          mu chas_0:143 
              #                          chas_0 = chi chas_0:143 
              #                    regtab     a0:Freed { symidx: x_58, tracked: true } |     a2:Freed { symidx: temp_17_ptr2globl_60, tracked: true } |     a4:Freed { symidx: temp_18_arithop_60, tracked: true } |     a7:Freed { symidx: temp_19_ptr2globl_60, tracked: true } |     s1:Freed { symidx: temp_20_index_ptr_60, tracked: true } | 
              #                    regtab 
              #                          Define intpop_0 [] -> intpop_ret_0 
    .globl intpop
    .type intpop,@function
intpop:
              #                    mem layout:|ra_intpop:8 at 40040|s0_intpop:8 at 40032|temp_21_ptr2globl:4 at 40028|temp_22_arithop:4 at 40024|temp_23_ptr2globl:4 at 40020|temp_24_arithop:4 at 40016|temp_25_ptr2globl:40000 at 16|temp_26_array_ptr:8 at 8|temp_27_array_ele:4 at 4|none:4 at 0
              #                    occupy a0 with -40048_0
    li      a0, -40048
    li      a0, -40048
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_intpop_0 in mem offset_illegal
              #                    occupy a1 with 40040_0
    li      a1, 40040
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_intpop_0 in mem offset_illegal
              #                    occupy a2 with 40032_0
    li      a2, 40032
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 40048_0
    li      a3, 40048
    li      a3, 40048
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 temp_21_ptr2globl_64 
              #                          alloc i32 temp_22_arithop_64 
              #                          alloc i32 temp_23_ptr2globl_64 
              #                          alloc i32 temp_24_arithop_64 
              #                          alloc Array:i32:[Some(10000_0)] temp_25_ptr2globl_64 
              #                          alloc ptr->i32 temp_26_array_ptr_64 
              #                          alloc i32 temp_27_array_ele_64 
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
              #                          new_var temp_25_ptr2globl_64:Array:i32:[Some(10000_0)] 
              #                          temp_25_ptr2globl_64 = load *ints_0:ptr->i32 
              #                    occupy s1 with *ints_0
              #                       load label ints as ptr to reg
    la      s1, ints
              #                    occupy reg s1 with *ints_0
              #                    occupy s2 with temp_25_ptr2globl_64
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_26_array_ptr_64:ptr->i32 
              #                          temp_26_array_ptr_64 = getelementptr temp_25_ptr2globl_64:Array:i32:[Some(10000_0)] [Some(temp_24_arithop_64)] 
              #                    occupy s3 with temp_26_array_ptr_64
    li      s3, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a7 with temp_24_arithop_64
              #                    occupy s4 with _anonymous_of_temp_25_ptr2globl_64_0
    mul     s4,a2,a7
              #                    free a2
              #                    free a7
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,16
              #                    free s3
              #                          new_var temp_27_array_ele_64:i32 
              #                          temp_27_array_ele_64 = load temp_26_array_ptr_64:ptr->i32 
              #                    occupy s3 with temp_26_array_ptr_64
              #                    occupy s5 with temp_27_array_ele_64
    lw      s5,0(s3)
              #                    free s5
              #                    free s3
              #                          ret temp_27_array_ele_64 
              #                    load from ra_intpop_0 in mem
              #                    occupy s6 with ra_intpop_0
    li      s6, 40040
    add     s6,sp,s6
    ld      ra,0(s6)
              #                    free s6
              #                    load from s0_intpop_0 in mem
              #                    occupy s7 with s0_intpop_0
    li      s7, 40032
    add     s7,sp,s7
    ld      s0,0(s7)
              #                    free s7
              #                    store to temp_27_array_ele_64 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_27_array_ele_64
              #                    occupy a0 with temp_27_array_ele_64
              #                    load from temp_27_array_ele_64 in mem


    lw      a0,4(sp)
              #                    occupy s5 with 40048_0
    li      s5, 40048
    li      s5, 40048
    add     sp,s5,sp
              #                    free s5
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_21_ptr2globl_64, tracked: true } |     a3:Freed { symidx: temp_22_arithop_64, tracked: true } |     a6:Freed { symidx: temp_23_ptr2globl_64, tracked: true } |     a7:Freed { symidx: temp_24_arithop_64, tracked: true } |     s2:Freed { symidx: temp_25_ptr2globl_64, tracked: true } |     s3:Freed { symidx: temp_26_array_ptr_64, tracked: true } |     s6:Freed { symidx: ra_intpop_0, tracked: true } |     s7:Freed { symidx: s0_intpop_0, tracked: true } | 
              #                    regtab 
              #                          Define chapop_0 [] -> chapop_ret_0 
    .globl chapop
    .type chapop,@function
chapop:
              #                    mem layout:|ra_chapop:8 at 40040|s0_chapop:8 at 40032|temp_28_ptr2globl:4 at 40028|temp_29_arithop:4 at 40024|temp_30_ptr2globl:4 at 40020|temp_31_arithop:4 at 40016|temp_32_ptr2globl:40000 at 16|temp_33_array_ptr:8 at 8|temp_34_array_ele:4 at 4|none:4 at 0
              #                    occupy a0 with -40048_0
    li      a0, -40048
    li      a0, -40048
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_chapop_0 in mem offset_illegal
              #                    occupy a1 with 40040_0
    li      a1, 40040
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_chapop_0 in mem offset_illegal
              #                    occupy a2 with 40032_0
    li      a2, 40032
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 40048_0
    li      a3, 40048
    li      a3, 40048
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 temp_28_ptr2globl_68 
              #                          alloc i32 temp_29_arithop_68 
              #                          alloc i32 temp_30_ptr2globl_68 
              #                          alloc i32 temp_31_arithop_68 
              #                          alloc Array:i32:[Some(10000_0)] temp_32_ptr2globl_68 
              #                          alloc ptr->i32 temp_33_array_ptr_68 
              #                          alloc i32 temp_34_array_ele_68 
              #                    regtab 
              #                          label L24_0: 
.L24_0:
              #                          new_var temp_28_ptr2globl_68:i32 
              #                          temp_28_ptr2globl_68 = load *chat_0:ptr->i32 
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    occupy a1 with temp_28_ptr2globl_68
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_29_arithop_68:i32 
              #                          temp_29_arithop_68 = Sub i32 temp_28_ptr2globl_68, 1_0 
              #                    occupy a1 with temp_28_ptr2globl_68
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_29_arithop_68
              #                    regtab:    a0:Freed { symidx: *chat_0, tracked: false } |     a1:Occupied { symidx: temp_28_ptr2globl_68, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_29_arithop_68, tracked: true, occupy_count: 1 } | 


    sub     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_29_arithop_68:i32 *chat_0:ptr->i32 
              #                    occupy a4 with *chat_0
              #                       load label chat as ptr to reg
    la      a4, chat
              #                    occupy reg a4 with *chat_0
              #                    occupy a3 with temp_29_arithop_68
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          new_var temp_30_ptr2globl_68:i32 
              #                          temp_30_ptr2globl_68 = load *chat_0:ptr->i32 
              #                    occupy a5 with *chat_0
              #                       load label chat as ptr to reg
    la      a5, chat
              #                    occupy reg a5 with *chat_0
              #                    occupy a6 with temp_30_ptr2globl_68
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_31_arithop_68:i32 
              #                          temp_31_arithop_68 = Add i32 temp_30_ptr2globl_68, 1_0 
              #                    occupy a6 with temp_30_ptr2globl_68
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a7 with temp_31_arithop_68
    add     a7,a6,a2
              #                    free a6
              #                    free a2
              #                    free a7
              #                          new_var temp_32_ptr2globl_68:Array:i32:[Some(10000_0)] 
              #                          temp_32_ptr2globl_68 = load *chas_0:ptr->i32 
              #                    occupy s1 with *chas_0
              #                       load label chas as ptr to reg
    la      s1, chas
              #                    occupy reg s1 with *chas_0
              #                    occupy s2 with temp_32_ptr2globl_68
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_33_array_ptr_68:ptr->i32 
              #                          temp_33_array_ptr_68 = getelementptr temp_32_ptr2globl_68:Array:i32:[Some(10000_0)] [Some(temp_31_arithop_68)] 
              #                    occupy s3 with temp_33_array_ptr_68
    li      s3, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a7 with temp_31_arithop_68
              #                    occupy s4 with _anonymous_of_temp_32_ptr2globl_68_0
    mul     s4,a2,a7
              #                    free a2
              #                    free a7
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,16
              #                    free s3
              #                          new_var temp_34_array_ele_68:i32 
              #                          temp_34_array_ele_68 = load temp_33_array_ptr_68:ptr->i32 
              #                    occupy s3 with temp_33_array_ptr_68
              #                    occupy s5 with temp_34_array_ele_68
    lw      s5,0(s3)
              #                    free s5
              #                    free s3
              #                          ret temp_34_array_ele_68 
              #                    load from ra_chapop_0 in mem
              #                    occupy s6 with ra_chapop_0
    li      s6, 40040
    add     s6,sp,s6
    ld      ra,0(s6)
              #                    free s6
              #                    load from s0_chapop_0 in mem
              #                    occupy s7 with s0_chapop_0
    li      s7, 40032
    add     s7,sp,s7
    ld      s0,0(s7)
              #                    free s7
              #                    store to temp_34_array_ele_68 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_34_array_ele_68
              #                    occupy a0 with temp_34_array_ele_68
              #                    load from temp_34_array_ele_68 in mem


    lw      a0,4(sp)
              #                    occupy s5 with 40048_0
    li      s5, 40048
    li      s5, 40048
    add     sp,s5,sp
              #                    free s5
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_28_ptr2globl_68, tracked: true } |     a3:Freed { symidx: temp_29_arithop_68, tracked: true } |     a6:Freed { symidx: temp_30_ptr2globl_68, tracked: true } |     a7:Freed { symidx: temp_31_arithop_68, tracked: true } |     s2:Freed { symidx: temp_32_ptr2globl_68, tracked: true } |     s3:Freed { symidx: temp_33_array_ptr_68, tracked: true } |     s6:Freed { symidx: ra_chapop_0, tracked: true } |     s7:Freed { symidx: s0_chapop_0, tracked: true } | 
              #                    regtab 
              #                          Define intadd_0 [x_71] -> intadd_ret_0 
    .globl intadd
    .type intadd,@function
intadd:
              #                    mem layout:|ra_intadd:8 at 80088|s0_intadd:8 at 80080|x:4 at 80076|temp_35_ptr2globl:4 at 80072|temp_36_index_ptr:8 at 80064|temp_37_ptr2globl:4 at 80060|temp_38_ptr2globl:40000 at 40060|none:4 at 40056|temp_39_array_ptr:8 at 40048|temp_40_array_ele:4 at 40044|temp_41_arithop:4 at 40040|temp_42_ptr2globl:4 at 40036|none:4 at 40032|temp_43_index_ptr:8 at 40024|temp_44_ptr2globl:4 at 40020|temp_45_ptr2globl:40000 at 20|none:4 at 16|temp_46_array_ptr:8 at 8|temp_47_array_ele:4 at 4|temp_48_arithop:4 at 0
              #                    occupy a1 with -80096_0
    li      a1, -80096
    li      a1, -80096
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_intadd_0 in mem offset_illegal
              #                    occupy a2 with 80088_0
    li      a2, 80088
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_intadd_0 in mem offset_illegal
              #                    occupy a3 with 80080_0
    li      a3, 80080
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 80096_0
    li      a4, 80096
    li      a4, 80096
    add     s0,a4,sp
              #                    free a4
              #                          alloc i32 temp_35_ptr2globl_73 
              #                          alloc ptr->i32 temp_36_index_ptr_73 
              #                          alloc i32 temp_37_ptr2globl_73 
              #                          alloc Array:i32:[Some(10000_0)] temp_38_ptr2globl_73 
              #                          alloc ptr->i32 temp_39_array_ptr_73 
              #                          alloc i32 temp_40_array_ele_73 
              #                          alloc i32 temp_41_arithop_73 
              #                          alloc i32 temp_42_ptr2globl_73 
              #                          alloc ptr->i32 temp_43_index_ptr_73 
              #                          alloc i32 temp_44_ptr2globl_73 
              #                          alloc Array:i32:[Some(10000_0)] temp_45_ptr2globl_73 
              #                          alloc ptr->i32 temp_46_array_ptr_73 
              #                          alloc i32 temp_47_array_ele_73 
              #                          alloc i32 temp_48_arithop_73 
              #                    regtab     a0:Freed { symidx: x_71, tracked: true } | 
              #                          label L23_0: 
.L23_0:
              #                          new_var temp_35_ptr2globl_73:i32 
              #                          temp_35_ptr2globl_73 = load *intt_0:ptr->i32 
              #                    occupy a1 with *intt_0
              #                       load label intt as ptr to reg
    la      a1, intt
              #                    occupy reg a1 with *intt_0
              #                    occupy a2 with temp_35_ptr2globl_73
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_36_index_ptr_73:ptr->i32 
              #                          temp_36_index_ptr_73 = getelementptr ints_0:Array:i32:[Some(10000_0)] [Some(temp_35_ptr2globl_73)] 
              #                    occupy a3 with temp_36_index_ptr_73
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a2 with temp_35_ptr2globl_73
              #                    occupy a5 with _anonymous_of_ints_0_0
    mul     a5,a4,a2
              #                    free a4
              #                    free a2
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a6 with _anonymous_of_ints_0_0
    la      a6, ints
    add     a3,a3,a6
              #                    free a6
              #                    free a3
              #                          new_var temp_37_ptr2globl_73:i32 
              #                          temp_37_ptr2globl_73 = load *intt_0:ptr->i32 
              #                    occupy a7 with *intt_0
              #                       load label intt as ptr to reg
    la      a7, intt
              #                    occupy reg a7 with *intt_0
              #                    occupy s1 with temp_37_ptr2globl_73
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_38_ptr2globl_73:Array:i32:[Some(10000_0)] 
              #                          temp_38_ptr2globl_73 = load *ints_0:ptr->i32 
              #                    occupy s2 with *ints_0
              #                       load label ints as ptr to reg
    la      s2, ints
              #                    occupy reg s2 with *ints_0
              #                    occupy s3 with temp_38_ptr2globl_73
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_39_array_ptr_73:ptr->i32 
              #                          temp_39_array_ptr_73 = getelementptr temp_38_ptr2globl_73:Array:i32:[Some(10000_0)] [Some(temp_37_ptr2globl_73)] 
              #                    occupy s4 with temp_39_array_ptr_73
    li      s4, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s1 with temp_37_ptr2globl_73
              #                    occupy s5 with _anonymous_of_temp_38_ptr2globl_73_0
    mul     s5,a4,s1
              #                    free a4
              #                    free s1
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
    add     s4,s4,sp
              #                    occupy s6 with 40060_0
    li      s6, 40060
    li      s6, 40060
    add     s4,s6,s4
              #                    free s6
              #                    free s4
              #                          new_var temp_40_array_ele_73:i32 
              #                          temp_40_array_ele_73 = load temp_39_array_ptr_73:ptr->i32 
              #                    occupy s4 with temp_39_array_ptr_73
              #                    occupy s7 with temp_40_array_ele_73
    lw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          new_var temp_41_arithop_73:i32 
              #                          temp_41_arithop_73 = Mul i32 temp_40_array_ele_73, 10_0 
              #                    occupy s7 with temp_40_array_ele_73
              #                    occupy s8 with 10_0
    li      s8, 10
              #                    occupy s9 with temp_41_arithop_73
    mul     s9,s7,s8
              #                    free s7
              #                    free s8
              #                    free s9
              #                          store temp_41_arithop_73:i32 temp_36_index_ptr_73:ptr->i32 
              #                    occupy a3 with temp_36_index_ptr_73
              #                    occupy s9 with temp_41_arithop_73
    sw      s9,0(a3)
              #                    free s9
              #                    free a3
              #                          mu ints_0:215 
              #                          ints_0 = chi ints_0:215 
              #                          new_var temp_42_ptr2globl_73:i32 
              #                          temp_42_ptr2globl_73 = load *intt_0:ptr->i32 
              #                    occupy s10 with *intt_0
              #                       load label intt as ptr to reg
    la      s10, intt
              #                    occupy reg s10 with *intt_0
              #                    occupy s11 with temp_42_ptr2globl_73
    lw      s11,0(s10)
              #                    free s11
              #                    free s10
              #                          new_var temp_43_index_ptr_73:ptr->i32 
              #                          temp_43_index_ptr_73 = getelementptr ints_0:Array:i32:[Some(10000_0)] [Some(temp_42_ptr2globl_73)] 
              #                    occupy a1 with temp_43_index_ptr_73
    li      a1, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s11 with temp_42_ptr2globl_73
              #                    occupy a5 with _anonymous_of_ints_0_0
    mul     a5,a4,s11
              #                    free a4
              #                    free s11
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
              #                    occupy a4 with _anonymous_of_ints_0_0
    la      a4, ints
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                          new_var temp_44_ptr2globl_73:i32 
              #                          temp_44_ptr2globl_73 = load *intt_0:ptr->i32 
              #                    occupy a4 with *intt_0
              #                       load label intt as ptr to reg
    la      a4, intt
              #                    occupy reg a4 with *intt_0
              #                    occupy a5 with temp_44_ptr2globl_73
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_45_ptr2globl_73:Array:i32:[Some(10000_0)] 
              #                          temp_45_ptr2globl_73 = load *ints_0:ptr->i32 
              #                    occupy a4 with *ints_0
              #                       load label ints as ptr to reg
    la      a4, ints
              #                    occupy reg a4 with *ints_0
              #                    occupy a6 with temp_45_ptr2globl_73
    lw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                          new_var temp_46_array_ptr_73:ptr->i32 
              #                          temp_46_array_ptr_73 = getelementptr temp_45_ptr2globl_73:Array:i32:[Some(10000_0)] [Some(temp_44_ptr2globl_73)] 
              #                    occupy a4 with temp_46_array_ptr_73
    li      a4, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a5 with temp_44_ptr2globl_73
              #                    occupy s2 with _anonymous_of_temp_45_ptr2globl_73_0
    mul     s2,a7,a5
              #                    free a7
              #                    free a5
    add     a4,a4,s2
              #                    free s2
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,20
              #                    free a4
              #                          new_var temp_47_array_ele_73:i32 
              #                          temp_47_array_ele_73 = load temp_46_array_ptr_73:ptr->i32 
              #                    occupy a4 with temp_46_array_ptr_73
              #                    occupy a7 with temp_47_array_ele_73
    lw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                          new_var temp_48_arithop_73:i32 
              #                          temp_48_arithop_73 = Add i32 temp_47_array_ele_73, x_71 
              #                    occupy a7 with temp_47_array_ele_73
              #                    occupy a0 with x_71
              #                    occupy s2 with temp_48_arithop_73
    add     s2,a7,a0
              #                    free a7
              #                    free a0
              #                    free s2
              #                          store temp_48_arithop_73:i32 temp_43_index_ptr_73:ptr->i32 
              #                    occupy a1 with temp_43_index_ptr_73
              #                    occupy s2 with temp_48_arithop_73
    sw      s2,0(a1)
              #                    free s2
              #                    free a1
              #                          mu ints_0:239 
              #                          ints_0 = chi ints_0:239 
              #                    regtab     a0:Freed { symidx: x_71, tracked: true } |     a1:Freed { symidx: temp_43_index_ptr_73, tracked: true } |     a2:Freed { symidx: temp_35_ptr2globl_73, tracked: true } |     a3:Freed { symidx: temp_36_index_ptr_73, tracked: true } |     a4:Freed { symidx: temp_46_array_ptr_73, tracked: true } |     a5:Freed { symidx: temp_44_ptr2globl_73, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_73, tracked: true } |     a7:Freed { symidx: temp_47_array_ele_73, tracked: true } |     s11:Freed { symidx: temp_42_ptr2globl_73, tracked: true } |     s1:Freed { symidx: temp_37_ptr2globl_73, tracked: true } |     s2:Freed { symidx: temp_48_arithop_73, tracked: true } |     s3:Freed { symidx: temp_38_ptr2globl_73, tracked: true } |     s4:Freed { symidx: temp_39_array_ptr_73, tracked: true } |     s7:Freed { symidx: temp_40_array_ele_73, tracked: true } |     s9:Freed { symidx: temp_41_arithop_73, tracked: true } | 
              #                    regtab 
              #                          Define find_0 [] -> find_ret_0 
    .globl find
    .type find,@function
find:
              #                    mem layout:|ra_find:8 at 64|s0_find:8 at 56|temp_49_ret_of_chapop:4 at 52|temp_50_ptr2globl:4 at 48|temp_51_index_ptr:8 at 40|temp_52_ptr2globl:4 at 36|temp_53_arithop:4 at 32|temp_54_index_ptr:8 at 24|temp_55_ptr2globl:4 at 20|temp_56_ptr2globl:4 at 16|temp_57_arithop:4 at 12|temp_58_ptr2globl:4 at 8|temp_59_cmp:1 at 7|none:7 at 0
    addi    sp,sp,-72
              #                    store to ra_find_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_find_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc i32 temp_49_ret_of_chapop_77 
              #                          alloc i32 temp_50_ptr2globl_77 
              #                          alloc ptr->i32 temp_51_index_ptr_77 
              #                          alloc i32 temp_52_ptr2globl_77 
              #                          alloc i32 temp_53_arithop_77 
              #                          alloc ptr->i32 temp_54_index_ptr_77 
              #                          alloc i32 temp_55_ptr2globl_77 
              #                          alloc i32 temp_56_ptr2globl_77 
              #                          alloc i32 temp_57_arithop_77 
              #                          alloc i32 temp_58_ptr2globl_82 
              #                          alloc i1 temp_59_cmp_82 
              #                    regtab 
              #                          label L20_0: 
.L20_0:
              #                          new_var temp_49_ret_of_chapop_77:i32 
              #                          temp_49_ret_of_chapop_77 =  Call i32 chapop_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    chapop
              #                    store to temp_49_ret_of_chapop_77 in mem offset legal
    sw      a0,52(sp)
              #                          store temp_49_ret_of_chapop_77:i32 *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a0 with temp_49_ret_of_chapop_77
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_50_ptr2globl_77:i32 
              #                          temp_50_ptr2globl_77 = load *ii_0:ptr->i32 
              #                    occupy a2 with *ii_0
              #                       load label ii as ptr to reg
    la      a2, ii
              #                    occupy reg a2 with *ii_0
              #                    occupy a3 with temp_50_ptr2globl_77
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_51_index_ptr_77:ptr->i32 
              #                          temp_51_index_ptr_77 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_50_ptr2globl_77)] 
              #                    occupy a4 with temp_51_index_ptr_77
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_50_ptr2globl_77
              #                    occupy a6 with _anonymous_of_get2_0_0
    mul     a6,a5,a3
              #                    free a5
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with _anonymous_of_get2_0_0
    la      a7, get2
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store 32_0:i32 temp_51_index_ptr_77:ptr->i32 
              #                    occupy a4 with temp_51_index_ptr_77
              #                    occupy s1 with 32_0
    li      s1, 32
    sw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          mu get2_0:252 
              #                          get2_0 = chi get2_0:252 
              #                          new_var temp_52_ptr2globl_77:i32 
              #                          temp_52_ptr2globl_77 = load *ii_0:ptr->i32 
              #                    occupy s2 with *ii_0
              #                       load label ii as ptr to reg
    la      s2, ii
              #                    occupy reg s2 with *ii_0
              #                    occupy s3 with temp_52_ptr2globl_77
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_53_arithop_77:i32 
              #                          temp_53_arithop_77 = Add i32 temp_52_ptr2globl_77, 1_0 
              #                    occupy s3 with temp_52_ptr2globl_77
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s4 with temp_53_arithop_77
    add     s4,s3,a5
              #                    free s3
              #                    free a5
              #                    free s4
              #                          new_var temp_54_index_ptr_77:ptr->i32 
              #                          temp_54_index_ptr_77 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_53_arithop_77)] 
              #                    occupy s5 with temp_54_index_ptr_77
    li      s5, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s4 with temp_53_arithop_77
              #                    occupy s6 with _anonymous_of_get2_0_0
    mul     s6,a5,s4
              #                    free a5
              #                    free s4
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy s7 with _anonymous_of_get2_0_0
    la      s7, get2
    add     s5,s5,s7
              #                    free s7
              #                    free s5
              #                          new_var temp_55_ptr2globl_77:i32 
              #                          temp_55_ptr2globl_77 = load *c_0:ptr->i32 
              #                    occupy s8 with *c_0
              #                       load label c as ptr to reg
    la      s8, c
              #                    occupy reg s8 with *c_0
              #                    occupy s9 with temp_55_ptr2globl_77
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          store temp_55_ptr2globl_77:i32 temp_54_index_ptr_77:ptr->i32 
              #                    occupy s5 with temp_54_index_ptr_77
              #                    occupy s9 with temp_55_ptr2globl_77
    sw      s9,0(s5)
              #                    free s9
              #                    free s5
              #                          mu get2_0:267 
              #                          get2_0 = chi get2_0:267 
              #                          new_var temp_56_ptr2globl_77:i32 
              #                          temp_56_ptr2globl_77 = load *ii_0:ptr->i32 
              #                    occupy s10 with *ii_0
              #                       load label ii as ptr to reg
    la      s10, ii
              #                    occupy reg s10 with *ii_0
              #                    occupy s11 with temp_56_ptr2globl_77
    lw      s11,0(s10)
              #                    free s11
              #                    free s10
              #                          new_var temp_57_arithop_77:i32 
              #                          temp_57_arithop_77 = Add i32 temp_56_ptr2globl_77, 2_0 
              #                    occupy s11 with temp_56_ptr2globl_77
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with temp_57_arithop_77
    add     a2,s11,a1
              #                    free s11
              #                    free a1
              #                    free a2
              #                          store temp_57_arithop_77:i32 *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a2 with temp_57_arithop_77
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          jump label: L21_0 
    j       .L21_0
              #                    regtab     a0:Freed { symidx: temp_49_ret_of_chapop_77, tracked: true } |     a2:Freed { symidx: temp_57_arithop_77, tracked: true } |     a3:Freed { symidx: temp_50_ptr2globl_77, tracked: true } |     a4:Freed { symidx: temp_51_index_ptr_77, tracked: true } |     s11:Freed { symidx: temp_56_ptr2globl_77, tracked: true } |     s3:Freed { symidx: temp_52_ptr2globl_77, tracked: true } |     s4:Freed { symidx: temp_53_arithop_77, tracked: true } |     s5:Freed { symidx: temp_54_index_ptr_77, tracked: true } |     s9:Freed { symidx: temp_55_ptr2globl_77, tracked: true } | 
              #                          label L21_0: 
.L21_0:
              #                          new_var temp_58_ptr2globl_82:i32 
              #                          temp_58_ptr2globl_82 = load *chat_0:ptr->i32 
              #                    occupy a1 with *chat_0
              #                       load label chat as ptr to reg
    la      a1, chat
              #                    occupy reg a1 with *chat_0
              #                    occupy a5 with temp_58_ptr2globl_82
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_59_cmp_82:i1 
              #                          temp_59_cmp_82 = icmp i32 Eq temp_58_ptr2globl_82, 0_0 
              #                    occupy a5 with temp_58_ptr2globl_82
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with temp_59_cmp_82
    xor     a7,a5,a6
    seqz    a7, a7
              #                    free a5
              #                    free a6
              #                    free a7
              #                          br i1 temp_59_cmp_82, label branch_true_83, label branch_false_83 
              #                    occupy a7 with temp_59_cmp_82
              #                    free a7
              #                    occupy a7 with temp_59_cmp_82
    bnez    a7, .branch_true_83
              #                    free a7
    j       .branch_false_83
              #                    regtab     a0:Freed { symidx: temp_49_ret_of_chapop_77, tracked: true } |     a2:Freed { symidx: temp_57_arithop_77, tracked: true } |     a3:Freed { symidx: temp_50_ptr2globl_77, tracked: true } |     a4:Freed { symidx: temp_51_index_ptr_77, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_82, tracked: true } |     a7:Freed { symidx: temp_59_cmp_82, tracked: true } |     s11:Freed { symidx: temp_56_ptr2globl_77, tracked: true } |     s3:Freed { symidx: temp_52_ptr2globl_77, tracked: true } |     s4:Freed { symidx: temp_53_arithop_77, tracked: true } |     s5:Freed { symidx: temp_54_index_ptr_77, tracked: true } |     s9:Freed { symidx: temp_55_ptr2globl_77, tracked: true } | 
              #                          label branch_true_83: 
.branch_true_83:
              #                          ret 0_0 
              #                    load from ra_find_0 in mem
    ld      ra,64(sp)
              #                    load from s0_find_0 in mem
    ld      s0,56(sp)
              #                    store to temp_49_ret_of_chapop_77 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_49_ret_of_chapop_77
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_49_ret_of_chapop_77, tracked: true } |     a2:Freed { symidx: temp_57_arithop_77, tracked: true } |     a3:Freed { symidx: temp_50_ptr2globl_77, tracked: true } |     a4:Freed { symidx: temp_51_index_ptr_77, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_82, tracked: true } |     a7:Freed { symidx: temp_59_cmp_82, tracked: true } |     s11:Freed { symidx: temp_56_ptr2globl_77, tracked: true } |     s3:Freed { symidx: temp_52_ptr2globl_77, tracked: true } |     s4:Freed { symidx: temp_53_arithop_77, tracked: true } |     s5:Freed { symidx: temp_54_index_ptr_77, tracked: true } |     s9:Freed { symidx: temp_55_ptr2globl_77, tracked: true } | 
              #                          label branch_false_83: 
.branch_false_83:
              #                    regtab     a0:Freed { symidx: temp_49_ret_of_chapop_77, tracked: true } |     a2:Freed { symidx: temp_57_arithop_77, tracked: true } |     a3:Freed { symidx: temp_50_ptr2globl_77, tracked: true } |     a4:Freed { symidx: temp_51_index_ptr_77, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_82, tracked: true } |     a7:Freed { symidx: temp_59_cmp_82, tracked: true } |     s11:Freed { symidx: temp_56_ptr2globl_77, tracked: true } |     s3:Freed { symidx: temp_52_ptr2globl_77, tracked: true } |     s4:Freed { symidx: temp_53_arithop_77, tracked: true } |     s5:Freed { symidx: temp_54_index_ptr_77, tracked: true } |     s9:Freed { symidx: temp_55_ptr2globl_77, tracked: true } | 
              #                          label L22_0: 
.L22_0:
              #                          ret 1_0 
              #                    load from ra_find_0 in mem
    ld      ra,64(sp)
              #                    load from s0_find_0 in mem
    ld      s0,56(sp)
              #                    store to temp_49_ret_of_chapop_77 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_49_ret_of_chapop_77
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_57_arithop_77, tracked: true } |     a3:Freed { symidx: temp_50_ptr2globl_77, tracked: true } |     a4:Freed { symidx: temp_51_index_ptr_77, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_82, tracked: true } |     a7:Freed { symidx: temp_59_cmp_82, tracked: true } |     s11:Freed { symidx: temp_56_ptr2globl_77, tracked: true } |     s3:Freed { symidx: temp_52_ptr2globl_77, tracked: true } |     s4:Freed { symidx: temp_53_arithop_77, tracked: true } |     s5:Freed { symidx: temp_54_index_ptr_77, tracked: true } |     s9:Freed { symidx: temp_55_ptr2globl_77, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 2121544|s0_main:8 at 2121536|temp_60_ptr2globl:40000 at 2081536|temp_61_ret_of_getstr:4 at 2081532|lengets:4 at 2081528|temp_62_ptr2globl:4 at 2081524|temp_63_cmp:1 at 2081523|none:3 at 2081520|temp_64_ptr2globl:4 at 2081516|temp_65_ptr2globl:40000 at 2041516|none:4 at 2041512|temp_66_array_ptr:8 at 2041504|temp_67_array_ele:4 at 2041500|temp_68_ret_of_isdigit:4 at 2041496|temp_69_cmp:1 at 2041495|none:3 at 2041492|temp_70_ptr2globl:4 at 2041488|temp_71_index_ptr:8 at 2041480|temp_72_ptr2globl:4 at 2041476|temp_73_ptr2globl:40000 at 2001476|none:4 at 2001472|temp_74_array_ptr:8 at 2001464|temp_75_array_ele:4 at 2001460|temp_76_ptr2globl:4 at 2001456|temp_77_arithop:4 at 2001452|temp_78_ptr2globl:4 at 2001448|temp_79_arithop:4 at 2001444|temp_80_ptr2globl:4 at 2001440|temp_81_ptr2globl:40000 at 1961440|temp_82_array_ptr:8 at 1961432|temp_83_array_ele:4 at 1961428|temp_84_cmp:1 at 1961427|none:3 at 1961424|temp_85_ptr2globl:4 at 1961420|temp_86_ptr2globl:40000 at 1921420|none:4 at 1921416|temp_87_array_ptr:8 at 1921408|temp_88_array_ele:4 at 1921404|temp_89_cmp:1 at 1921403|none:3 at 1921400|temp_90_ptr2globl:4 at 1921396|temp_91_ptr2globl:40000 at 1881396|none:4 at 1881392|temp_92_array_ptr:8 at 1881384|temp_93_array_ele:4 at 1881380|temp_94_cmp:1 at 1881379|none:3 at 1881376|temp_95_ret_of_chapop:4 at 1881372|temp_96_ptr2globl:4 at 1881368|temp_97_cmp:1 at 1881367|none:3 at 1881364|temp_98_ptr2globl:4 at 1881360|temp_99_index_ptr:8 at 1881352|temp_100_ptr2globl:4 at 1881348|temp_101_arithop:4 at 1881344|temp_102_index_ptr:8 at 1881336|temp_103_ptr2globl:4 at 1881332|temp_104_ptr2globl:4 at 1881328|temp_105_arithop:4 at 1881324|temp_106_ret_of_chapop:4 at 1881320|temp_107_ptr2globl:4 at 1881316|temp_108_ptr2globl:40000 at 1841316|none:4 at 1841312|temp_109_array_ptr:8 at 1841304|temp_110_array_ele:4 at 1841300|temp_111_cmp:1 at 1841299|none:3 at 1841296|temp_112_ptr2globl:4 at 1841292|temp_113_ptr2globl:40000 at 1801292|none:4 at 1801288|temp_114_array_ptr:8 at 1801280|temp_115_array_ele:4 at 1801276|temp_116_cmp:1 at 1801275|none:3 at 1801272|temp_117_ptr2globl:4 at 1801268|temp_118_ptr2globl:40000 at 1761268|none:4 at 1761264|temp_119_array_ptr:8 at 1761256|temp_120_array_ele:4 at 1761252|temp_121_cmp:1 at 1761251|temp_122_logic:1 at 1761250|none:2 at 1761248|temp_123_ptr2globl:4 at 1761244|temp_124_ptr2globl:40000 at 1721244|none:4 at 1721240|temp_125_array_ptr:8 at 1721232|temp_126_array_ele:4 at 1721228|temp_127_cmp:1 at 1721227|temp_128_logic:1 at 1721226|none:2 at 1721224|temp_129_ptr2globl:4 at 1721220|temp_130_ptr2globl:40000 at 1681220|none:4 at 1681216|temp_131_array_ptr:8 at 1681208|temp_132_array_ele:4 at 1681204|temp_133_cmp:1 at 1681203|temp_134_logic:1 at 1681202|none:2 at 1681200|temp_135_ptr2globl:4 at 1681196|temp_136_ptr2globl:40000 at 1641196|none:4 at 1641192|temp_137_array_ptr:8 at 1641184|temp_138_array_ele:4 at 1641180|temp_139_cmp:1 at 1641179|temp_140_logic:1 at 1641178|none:2 at 1641176|temp_141_ptr2globl:4 at 1641172|temp_142_ptr2globl:40000 at 1601172|none:4 at 1601168|temp_143_array_ptr:8 at 1601160|temp_144_array_ele:4 at 1601156|temp_145_cmp:1 at 1601155|temp_146_logic:1 at 1601154|none:2 at 1601152|temp_147_ret_of_find:4 at 1601148|temp_148_cmp:1 at 1601147|none:3 at 1601144|temp_149_ptr2globl:4 at 1601140|temp_150_ptr2globl:40000 at 1561140|none:4 at 1561136|temp_151_array_ptr:8 at 1561128|temp_152_array_ele:4 at 1561124|temp_153_cmp:1 at 1561123|none:3 at 1561120|temp_154_ptr2globl:4 at 1561116|temp_155_ptr2globl:40000 at 1521116|none:4 at 1521112|temp_156_array_ptr:8 at 1521104|temp_157_array_ele:4 at 1521100|temp_158_cmp:1 at 1521099|none:3 at 1521096|temp_159_ptr2globl:4 at 1521092|temp_160_ptr2globl:40000 at 1481092|none:4 at 1481088|temp_161_array_ptr:8 at 1481080|temp_162_array_ele:4 at 1481076|temp_163_cmp:1 at 1481075|temp_164_logic:1 at 1481074|none:2 at 1481072|temp_165_ptr2globl:4 at 1481068|temp_166_ptr2globl:40000 at 1441068|none:4 at 1441064|temp_167_array_ptr:8 at 1441056|temp_168_array_ele:4 at 1441052|temp_169_cmp:1 at 1441051|temp_170_logic:1 at 1441050|none:2 at 1441048|temp_171_ptr2globl:4 at 1441044|temp_172_ptr2globl:40000 at 1401044|none:4 at 1401040|temp_173_array_ptr:8 at 1401032|temp_174_array_ele:4 at 1401028|temp_175_cmp:1 at 1401027|temp_176_logic:1 at 1401026|none:2 at 1401024|temp_177_ptr2globl:4 at 1401020|temp_178_ptr2globl:40000 at 1361020|none:4 at 1361016|temp_179_array_ptr:8 at 1361008|temp_180_array_ele:4 at 1361004|temp_181_cmp:1 at 1361003|temp_182_logic:1 at 1361002|none:2 at 1361000|temp_183_ptr2globl:4 at 1360996|temp_184_ptr2globl:40000 at 1320996|none:4 at 1320992|temp_185_array_ptr:8 at 1320984|temp_186_array_ele:4 at 1320980|temp_187_cmp:1 at 1320979|temp_188_logic:1 at 1320978|none:2 at 1320976|temp_189_ret_of_find:4 at 1320972|temp_190_cmp:1 at 1320971|none:3 at 1320968|temp_191_ptr2globl:4 at 1320964|temp_192_ptr2globl:40000 at 1280964|none:4 at 1280960|temp_193_array_ptr:8 at 1280952|temp_194_array_ele:4 at 1280948|temp_195_cmp:1 at 1280947|none:3 at 1280944|temp_196_ptr2globl:4 at 1280940|temp_197_ptr2globl:40000 at 1240940|none:4 at 1240936|temp_198_array_ptr:8 at 1240928|temp_199_array_ele:4 at 1240924|temp_200_cmp:1 at 1240923|none:3 at 1240920|temp_201_ptr2globl:4 at 1240916|temp_202_ptr2globl:40000 at 1200916|none:4 at 1200912|temp_203_array_ptr:8 at 1200904|temp_204_array_ele:4 at 1200900|temp_205_cmp:1 at 1200899|temp_206_logic:1 at 1200898|none:2 at 1200896|temp_207_ptr2globl:4 at 1200892|temp_208_ptr2globl:40000 at 1160892|none:4 at 1160888|temp_209_array_ptr:8 at 1160880|temp_210_array_ele:4 at 1160876|temp_211_cmp:1 at 1160875|temp_212_logic:1 at 1160874|none:2 at 1160872|temp_213_ptr2globl:4 at 1160868|temp_214_ptr2globl:40000 at 1120868|none:4 at 1120864|temp_215_array_ptr:8 at 1120856|temp_216_array_ele:4 at 1120852|temp_217_cmp:1 at 1120851|temp_218_logic:1 at 1120850|none:2 at 1120848|temp_219_ret_of_find:4 at 1120844|temp_220_cmp:1 at 1120843|none:3 at 1120840|temp_221_ptr2globl:4 at 1120836|temp_222_ptr2globl:40000 at 1080836|none:4 at 1080832|temp_223_array_ptr:8 at 1080824|temp_224_array_ele:4 at 1080820|temp_225_cmp:1 at 1080819|none:3 at 1080816|temp_226_ptr2globl:4 at 1080812|temp_227_ptr2globl:40000 at 1040812|none:4 at 1040808|temp_228_array_ptr:8 at 1040800|temp_229_array_ele:4 at 1040796|temp_230_cmp:1 at 1040795|none:3 at 1040792|temp_231_ptr2globl:4 at 1040788|temp_232_ptr2globl:40000 at 1000788|none:4 at 1000784|temp_233_array_ptr:8 at 1000776|temp_234_array_ele:4 at 1000772|temp_235_cmp:1 at 1000771|temp_236_logic:1 at 1000770|none:2 at 1000768|temp_237_ptr2globl:4 at 1000764|temp_238_ptr2globl:40000 at 960764|none:4 at 960760|temp_239_array_ptr:8 at 960752|temp_240_array_ele:4 at 960748|temp_241_cmp:1 at 960747|temp_242_logic:1 at 960746|none:2 at 960744|temp_243_ptr2globl:4 at 960740|temp_244_ptr2globl:40000 at 920740|none:4 at 920736|temp_245_array_ptr:8 at 920728|temp_246_array_ele:4 at 920724|temp_247_cmp:1 at 920723|temp_248_logic:1 at 920722|none:2 at 920720|temp_249_ret_of_find:4 at 920716|temp_250_cmp:1 at 920715|none:3 at 920712|temp_251_ptr2globl:4 at 920708|temp_252_ptr2globl:40000 at 880708|none:4 at 880704|temp_253_array_ptr:8 at 880696|temp_254_array_ele:4 at 880692|temp_255_cmp:1 at 880691|none:3 at 880688|temp_256_ptr2globl:4 at 880684|temp_257_ptr2globl:40000 at 840684|none:4 at 840680|temp_258_array_ptr:8 at 840672|temp_259_array_ele:4 at 840668|temp_260_cmp:1 at 840667|none:3 at 840664|temp_261_ptr2globl:4 at 840660|temp_262_ptr2globl:40000 at 800660|none:4 at 800656|temp_263_array_ptr:8 at 800648|temp_264_array_ele:4 at 800644|temp_265_cmp:1 at 800643|temp_266_logic:1 at 800642|none:2 at 800640|temp_267_ptr2globl:4 at 800636|temp_268_ptr2globl:40000 at 760636|none:4 at 760632|temp_269_array_ptr:8 at 760624|temp_270_array_ele:4 at 760620|temp_271_cmp:1 at 760619|temp_272_logic:1 at 760618|none:2 at 760616|temp_273_ptr2globl:4 at 760612|temp_274_ptr2globl:40000 at 720612|none:4 at 720608|temp_275_array_ptr:8 at 720600|temp_276_array_ele:4 at 720596|temp_277_cmp:1 at 720595|temp_278_logic:1 at 720594|none:2 at 720592|temp_279_ret_of_find:4 at 720588|temp_280_cmp:1 at 720587|none:3 at 720584|temp_281_ptr2globl:4 at 720580|none:4 at 720576|temp_282_index_ptr:8 at 720568|temp_283_ptr2globl:4 at 720564|temp_284_arithop:4 at 720560|temp_285_ptr2globl:4 at 720556|temp_286_cmp:1 at 720555|none:3 at 720552|temp_287_ret_of_chapop:4 at 720548|c:4 at 720544|temp_288_ptr2globl:4 at 720540|none:4 at 720536|temp_289_index_ptr:8 at 720528|temp_290_ptr2globl:4 at 720524|temp_291_arithop:4 at 720520|temp_292_index_ptr:8 at 720512|temp_293_ptr2globl:4 at 720508|temp_294_arithop:4 at 720504|temp_295_ptr2globl:4 at 720500|none:4 at 720496|temp_296_index_ptr:8 at 720488|temp_297_ptr2globl:4 at 720484|temp_298_ptr2globl:40000 at 680484|none:4 at 680480|temp_299_array_ptr:8 at 680472|temp_300_array_ele:4 at 680468|temp_301_cmp:1 at 680467|none:3 at 680464|temp_302_ptr2globl:4 at 680460|temp_303_ptr2globl:40000 at 640460|none:4 at 640456|temp_304_array_ptr:8 at 640448|temp_305_array_ele:4 at 640444|temp_306_cmp:1 at 640443|none:3 at 640440|temp_307_ptr2globl:4 at 640436|temp_308_ptr2globl:40000 at 600436|none:4 at 600432|temp_309_array_ptr:8 at 600424|temp_310_array_ele:4 at 600420|temp_311_cmp:1 at 600419|temp_312_logic:1 at 600418|none:2 at 600416|temp_313_ptr2globl:4 at 600412|temp_314_ptr2globl:40000 at 560412|none:4 at 560408|temp_315_array_ptr:8 at 560400|temp_316_array_ele:4 at 560396|temp_317_cmp:1 at 560395|temp_318_logic:1 at 560394|none:2 at 560392|temp_319_ptr2globl:4 at 560388|temp_320_ptr2globl:40000 at 520388|none:4 at 520384|temp_321_array_ptr:8 at 520376|temp_322_array_ele:4 at 520372|temp_323_cmp:1 at 520371|temp_324_logic:1 at 520370|none:2 at 520368|temp_325_ptr2globl:4 at 520364|temp_326_ptr2globl:40000 at 480364|none:4 at 480360|temp_327_array_ptr:8 at 480352|temp_328_array_ele:4 at 480348|temp_329_cmp:1 at 480347|temp_330_logic:1 at 480346|none:2 at 480344|temp_331_ptr2globl:4 at 480340|temp_332_ptr2globl:40000 at 440340|none:4 at 440336|temp_333_array_ptr:8 at 440328|temp_334_array_ele:4 at 440324|temp_335_cmp:1 at 440323|temp_336_logic:1 at 440322|none:2 at 440320|temp_337_ret_of_intpop:4 at 440316|a:4 at 440312|temp_338_ret_of_intpop:4 at 440308|b:4 at 440304|c:4 at 440300|temp_339_ptr2globl:4 at 440296|temp_340_ptr2globl:40000 at 400296|temp_341_array_ptr:8 at 400288|temp_342_array_ele:4 at 400284|temp_343_cmp:1 at 400283|none:3 at 400280|temp_344_arithop:4 at 400276|temp_345_ptr2globl:4 at 400272|temp_346_ptr2globl:40000 at 360272|temp_347_array_ptr:8 at 360264|temp_348_array_ele:4 at 360260|temp_349_cmp:1 at 360259|none:3 at 360256|temp_350_arithop:4 at 360252|temp_351_ptr2globl:4 at 360248|temp_352_ptr2globl:40000 at 320248|temp_353_array_ptr:8 at 320240|temp_354_array_ele:4 at 320236|temp_355_cmp:1 at 320235|none:3 at 320232|temp_356_arithop:4 at 320228|temp_357_ptr2globl:4 at 320224|temp_358_ptr2globl:40000 at 280224|temp_359_array_ptr:8 at 280216|temp_360_array_ele:4 at 280212|temp_361_cmp:1 at 280211|none:3 at 280208|temp_362_arithop:4 at 280204|temp_363_ptr2globl:4 at 280200|temp_364_ptr2globl:40000 at 240200|temp_365_array_ptr:8 at 240192|temp_366_array_ele:4 at 240188|temp_367_cmp:1 at 240187|none:3 at 240184|temp_368_arithop:4 at 240180|temp_369_ptr2globl:4 at 240176|temp_370_ptr2globl:40000 at 200176|temp_371_array_ptr:8 at 200168|temp_372_array_ele:4 at 200164|temp_373_cmp:1 at 200163|none:3 at 200160|temp_374_ret_of_power:4 at 200156|temp_375_ptr2globl:4 at 200152|temp_376_arithop:4 at 200148|temp_377_ptr2globl:4 at 200144|temp_378_ptr2globl:40000 at 160144|temp_379_array_ptr:8 at 160136|temp_380_array_ele:4 at 160132|temp_381_cmp:1 at 160131|none:3 at 160128|temp_382_ptr2globl:4 at 160124|temp_383_ptr2globl:40000 at 120124|none:4 at 120120|temp_384_array_ptr:8 at 120112|temp_385_array_ele:4 at 120108|temp_386_arithop:4 at 120104|temp_387_ptr2globl:4 at 120100|temp_388_ptr2globl:4 at 120096|temp_389_arithop:4 at 120092|temp_390_ptr2globl:40000 at 80092|none:4 at 80088|temp_391_array_ptr:8 at 80080|temp_392_array_ele:4 at 80076|temp_393_cmp:1 at 80075|none:3 at 80072|temp_394_ptr2globl:4 at 80068|temp_395_ptr2globl:4 at 80064|temp_396_arithop:4 at 80060|temp_397_ptr2globl:40000 at 40060|none:4 at 40056|temp_398_array_ptr:8 at 40048|temp_399_array_ele:4 at 40044|temp_400_arithop:4 at 40040|temp_401_ptr2globl:4 at 40036|temp_402_arithop:4 at 40032|temp_403_ptr2globl:4 at 40028|temp_404_ptr2globl:4 at 40024|temp_405_arithop:4 at 40020|temp_406_arithop:4 at 40016|temp_407_ptr2globl:40000 at 16|temp_408_array_ptr:8 at 8|temp_409_array_ele:4 at 4|none:4 at 0
              #                    occupy a0 with -2121552_0
    li      a0, -2121552
    li      a0, -2121552
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 2121544_0
    li      a1, 2121544
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 2121536_0
    li      a2, 2121536
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 2121552_0
    li      a3, 2121552
    li      a3, 2121552
    add     s0,a3,sp
              #                    free a3
              #                          alloc Array:i32:[Some(10000_0)] temp_60_ptr2globl_87 
              #                          alloc i32 temp_61_ret_of_getstr_87 
              #                          alloc i32 lengets_87 
              #                          alloc i32 temp_62_ptr2globl_91 
              #                          alloc i1 temp_63_cmp_91 
              #                          alloc i32 temp_64_ptr2globl_94 
              #                          alloc Array:i32:[Some(10000_0)] temp_65_ptr2globl_94 
              #                          alloc ptr->i32 temp_66_array_ptr_94 
              #                          alloc i32 temp_67_array_ele_94 
              #                          alloc i32 temp_68_ret_of_isdigit_94 
              #                          alloc i1 temp_69_cmp_94 
              #                          alloc i32 temp_70_ptr2globl_96 
              #                          alloc ptr->i32 temp_71_index_ptr_96 
              #                          alloc i32 temp_72_ptr2globl_96 
              #                          alloc Array:i32:[Some(10000_0)] temp_73_ptr2globl_96 
              #                          alloc ptr->i32 temp_74_array_ptr_96 
              #                          alloc i32 temp_75_array_ele_96 
              #                          alloc i32 temp_76_ptr2globl_96 
              #                          alloc i32 temp_77_arithop_96 
              #                          alloc i32 temp_78_ptr2globl_93 
              #                          alloc i32 temp_79_arithop_93 
              #                          alloc i32 temp_80_ptr2globl_100 
              #                          alloc Array:i32:[Some(10000_0)] temp_81_ptr2globl_100 
              #                          alloc ptr->i32 temp_82_array_ptr_100 
              #                          alloc i32 temp_83_array_ele_100 
              #                          alloc i1 temp_84_cmp_100 
              #                          alloc i32 temp_85_ptr2globl_103 
              #                          alloc Array:i32:[Some(10000_0)] temp_86_ptr2globl_103 
              #                          alloc ptr->i32 temp_87_array_ptr_103 
              #                          alloc i32 temp_88_array_ele_103 
              #                          alloc i1 temp_89_cmp_103 
              #                          alloc i32 temp_90_ptr2globl_106 
              #                          alloc Array:i32:[Some(10000_0)] temp_91_ptr2globl_106 
              #                          alloc ptr->i32 temp_92_array_ptr_106 
              #                          alloc i32 temp_93_array_ele_106 
              #                          alloc i1 temp_94_cmp_106 
              #                          alloc i32 temp_95_ret_of_chapop_108 
              #                          alloc i32 temp_96_ptr2globl_110 
              #                          alloc i1 temp_97_cmp_110 
              #                          alloc i32 temp_98_ptr2globl_112 
              #                          alloc ptr->i32 temp_99_index_ptr_112 
              #                          alloc i32 temp_100_ptr2globl_112 
              #                          alloc i32 temp_101_arithop_112 
              #                          alloc ptr->i32 temp_102_index_ptr_112 
              #                          alloc i32 temp_103_ptr2globl_112 
              #                          alloc i32 temp_104_ptr2globl_112 
              #                          alloc i32 temp_105_arithop_112 
              #                          alloc i32 temp_106_ret_of_chapop_112 
              #                          alloc i32 temp_107_ptr2globl_117 
              #                          alloc Array:i32:[Some(10000_0)] temp_108_ptr2globl_117 
              #                          alloc ptr->i32 temp_109_array_ptr_117 
              #                          alloc i32 temp_110_array_ele_117 
              #                          alloc i1 temp_111_cmp_117 
              #                          alloc i32 temp_112_ptr2globl_120 
              #                          alloc Array:i32:[Some(10000_0)] temp_113_ptr2globl_120 
              #                          alloc ptr->i32 temp_114_array_ptr_120 
              #                          alloc i32 temp_115_array_ele_120 
              #                          alloc i1 temp_116_cmp_120 
              #                          alloc i32 temp_117_ptr2globl_120 
              #                          alloc Array:i32:[Some(10000_0)] temp_118_ptr2globl_120 
              #                          alloc ptr->i32 temp_119_array_ptr_120 
              #                          alloc i32 temp_120_array_ele_120 
              #                          alloc i1 temp_121_cmp_120 
              #                          alloc i1 temp_122_logic_120 
              #                          alloc i32 temp_123_ptr2globl_120 
              #                          alloc Array:i32:[Some(10000_0)] temp_124_ptr2globl_120 
              #                          alloc ptr->i32 temp_125_array_ptr_120 
              #                          alloc i32 temp_126_array_ele_120 
              #                          alloc i1 temp_127_cmp_120 
              #                          alloc i1 temp_128_logic_120 
              #                          alloc i32 temp_129_ptr2globl_120 
              #                          alloc Array:i32:[Some(10000_0)] temp_130_ptr2globl_120 
              #                          alloc ptr->i32 temp_131_array_ptr_120 
              #                          alloc i32 temp_132_array_ele_120 
              #                          alloc i1 temp_133_cmp_120 
              #                          alloc i1 temp_134_logic_120 
              #                          alloc i32 temp_135_ptr2globl_120 
              #                          alloc Array:i32:[Some(10000_0)] temp_136_ptr2globl_120 
              #                          alloc ptr->i32 temp_137_array_ptr_120 
              #                          alloc i32 temp_138_array_ele_120 
              #                          alloc i1 temp_139_cmp_120 
              #                          alloc i1 temp_140_logic_120 
              #                          alloc i32 temp_141_ptr2globl_120 
              #                          alloc Array:i32:[Some(10000_0)] temp_142_ptr2globl_120 
              #                          alloc ptr->i32 temp_143_array_ptr_120 
              #                          alloc i32 temp_144_array_ele_120 
              #                          alloc i1 temp_145_cmp_120 
              #                          alloc i1 temp_146_logic_120 
              #                          alloc i32 temp_147_ret_of_find_123 
              #                          alloc i1 temp_148_cmp_123 
              #                          alloc i32 temp_149_ptr2globl_127 
              #                          alloc Array:i32:[Some(10000_0)] temp_150_ptr2globl_127 
              #                          alloc ptr->i32 temp_151_array_ptr_127 
              #                          alloc i32 temp_152_array_ele_127 
              #                          alloc i1 temp_153_cmp_127 
              #                          alloc i32 temp_154_ptr2globl_130 
              #                          alloc Array:i32:[Some(10000_0)] temp_155_ptr2globl_130 
              #                          alloc ptr->i32 temp_156_array_ptr_130 
              #                          alloc i32 temp_157_array_ele_130 
              #                          alloc i1 temp_158_cmp_130 
              #                          alloc i32 temp_159_ptr2globl_130 
              #                          alloc Array:i32:[Some(10000_0)] temp_160_ptr2globl_130 
              #                          alloc ptr->i32 temp_161_array_ptr_130 
              #                          alloc i32 temp_162_array_ele_130 
              #                          alloc i1 temp_163_cmp_130 
              #                          alloc i1 temp_164_logic_130 
              #                          alloc i32 temp_165_ptr2globl_130 
              #                          alloc Array:i32:[Some(10000_0)] temp_166_ptr2globl_130 
              #                          alloc ptr->i32 temp_167_array_ptr_130 
              #                          alloc i32 temp_168_array_ele_130 
              #                          alloc i1 temp_169_cmp_130 
              #                          alloc i1 temp_170_logic_130 
              #                          alloc i32 temp_171_ptr2globl_130 
              #                          alloc Array:i32:[Some(10000_0)] temp_172_ptr2globl_130 
              #                          alloc ptr->i32 temp_173_array_ptr_130 
              #                          alloc i32 temp_174_array_ele_130 
              #                          alloc i1 temp_175_cmp_130 
              #                          alloc i1 temp_176_logic_130 
              #                          alloc i32 temp_177_ptr2globl_130 
              #                          alloc Array:i32:[Some(10000_0)] temp_178_ptr2globl_130 
              #                          alloc ptr->i32 temp_179_array_ptr_130 
              #                          alloc i32 temp_180_array_ele_130 
              #                          alloc i1 temp_181_cmp_130 
              #                          alloc i1 temp_182_logic_130 
              #                          alloc i32 temp_183_ptr2globl_130 
              #                          alloc Array:i32:[Some(10000_0)] temp_184_ptr2globl_130 
              #                          alloc ptr->i32 temp_185_array_ptr_130 
              #                          alloc i32 temp_186_array_ele_130 
              #                          alloc i1 temp_187_cmp_130 
              #                          alloc i1 temp_188_logic_130 
              #                          alloc i32 temp_189_ret_of_find_133 
              #                          alloc i1 temp_190_cmp_133 
              #                          alloc i32 temp_191_ptr2globl_137 
              #                          alloc Array:i32:[Some(10000_0)] temp_192_ptr2globl_137 
              #                          alloc ptr->i32 temp_193_array_ptr_137 
              #                          alloc i32 temp_194_array_ele_137 
              #                          alloc i1 temp_195_cmp_137 
              #                          alloc i32 temp_196_ptr2globl_140 
              #                          alloc Array:i32:[Some(10000_0)] temp_197_ptr2globl_140 
              #                          alloc ptr->i32 temp_198_array_ptr_140 
              #                          alloc i32 temp_199_array_ele_140 
              #                          alloc i1 temp_200_cmp_140 
              #                          alloc i32 temp_201_ptr2globl_140 
              #                          alloc Array:i32:[Some(10000_0)] temp_202_ptr2globl_140 
              #                          alloc ptr->i32 temp_203_array_ptr_140 
              #                          alloc i32 temp_204_array_ele_140 
              #                          alloc i1 temp_205_cmp_140 
              #                          alloc i1 temp_206_logic_140 
              #                          alloc i32 temp_207_ptr2globl_140 
              #                          alloc Array:i32:[Some(10000_0)] temp_208_ptr2globl_140 
              #                          alloc ptr->i32 temp_209_array_ptr_140 
              #                          alloc i32 temp_210_array_ele_140 
              #                          alloc i1 temp_211_cmp_140 
              #                          alloc i1 temp_212_logic_140 
              #                          alloc i32 temp_213_ptr2globl_140 
              #                          alloc Array:i32:[Some(10000_0)] temp_214_ptr2globl_140 
              #                          alloc ptr->i32 temp_215_array_ptr_140 
              #                          alloc i32 temp_216_array_ele_140 
              #                          alloc i1 temp_217_cmp_140 
              #                          alloc i1 temp_218_logic_140 
              #                          alloc i32 temp_219_ret_of_find_143 
              #                          alloc i1 temp_220_cmp_143 
              #                          alloc i32 temp_221_ptr2globl_147 
              #                          alloc Array:i32:[Some(10000_0)] temp_222_ptr2globl_147 
              #                          alloc ptr->i32 temp_223_array_ptr_147 
              #                          alloc i32 temp_224_array_ele_147 
              #                          alloc i1 temp_225_cmp_147 
              #                          alloc i32 temp_226_ptr2globl_150 
              #                          alloc Array:i32:[Some(10000_0)] temp_227_ptr2globl_150 
              #                          alloc ptr->i32 temp_228_array_ptr_150 
              #                          alloc i32 temp_229_array_ele_150 
              #                          alloc i1 temp_230_cmp_150 
              #                          alloc i32 temp_231_ptr2globl_150 
              #                          alloc Array:i32:[Some(10000_0)] temp_232_ptr2globl_150 
              #                          alloc ptr->i32 temp_233_array_ptr_150 
              #                          alloc i32 temp_234_array_ele_150 
              #                          alloc i1 temp_235_cmp_150 
              #                          alloc i1 temp_236_logic_150 
              #                          alloc i32 temp_237_ptr2globl_150 
              #                          alloc Array:i32:[Some(10000_0)] temp_238_ptr2globl_150 
              #                          alloc ptr->i32 temp_239_array_ptr_150 
              #                          alloc i32 temp_240_array_ele_150 
              #                          alloc i1 temp_241_cmp_150 
              #                          alloc i1 temp_242_logic_150 
              #                          alloc i32 temp_243_ptr2globl_150 
              #                          alloc Array:i32:[Some(10000_0)] temp_244_ptr2globl_150 
              #                          alloc ptr->i32 temp_245_array_ptr_150 
              #                          alloc i32 temp_246_array_ele_150 
              #                          alloc i1 temp_247_cmp_150 
              #                          alloc i1 temp_248_logic_150 
              #                          alloc i32 temp_249_ret_of_find_153 
              #                          alloc i1 temp_250_cmp_153 
              #                          alloc i32 temp_251_ptr2globl_157 
              #                          alloc Array:i32:[Some(10000_0)] temp_252_ptr2globl_157 
              #                          alloc ptr->i32 temp_253_array_ptr_157 
              #                          alloc i32 temp_254_array_ele_157 
              #                          alloc i1 temp_255_cmp_157 
              #                          alloc i32 temp_256_ptr2globl_160 
              #                          alloc Array:i32:[Some(10000_0)] temp_257_ptr2globl_160 
              #                          alloc ptr->i32 temp_258_array_ptr_160 
              #                          alloc i32 temp_259_array_ele_160 
              #                          alloc i1 temp_260_cmp_160 
              #                          alloc i32 temp_261_ptr2globl_160 
              #                          alloc Array:i32:[Some(10000_0)] temp_262_ptr2globl_160 
              #                          alloc ptr->i32 temp_263_array_ptr_160 
              #                          alloc i32 temp_264_array_ele_160 
              #                          alloc i1 temp_265_cmp_160 
              #                          alloc i1 temp_266_logic_160 
              #                          alloc i32 temp_267_ptr2globl_160 
              #                          alloc Array:i32:[Some(10000_0)] temp_268_ptr2globl_160 
              #                          alloc ptr->i32 temp_269_array_ptr_160 
              #                          alloc i32 temp_270_array_ele_160 
              #                          alloc i1 temp_271_cmp_160 
              #                          alloc i1 temp_272_logic_160 
              #                          alloc i32 temp_273_ptr2globl_160 
              #                          alloc Array:i32:[Some(10000_0)] temp_274_ptr2globl_160 
              #                          alloc ptr->i32 temp_275_array_ptr_160 
              #                          alloc i32 temp_276_array_ele_160 
              #                          alloc i1 temp_277_cmp_160 
              #                          alloc i1 temp_278_logic_160 
              #                          alloc i32 temp_279_ret_of_find_163 
              #                          alloc i1 temp_280_cmp_163 
              #                          alloc i32 temp_281_ptr2globl_99 
              #                          alloc ptr->i32 temp_282_index_ptr_99 
              #                          alloc i32 temp_283_ptr2globl_99 
              #                          alloc i32 temp_284_arithop_99 
              #                          alloc i32 temp_285_ptr2globl_170 
              #                          alloc i1 temp_286_cmp_170 
              #                          alloc i32 temp_287_ret_of_chapop_172 
              #                          alloc i32 c_172 
              #                          alloc i32 temp_288_ptr2globl_172 
              #                          alloc ptr->i32 temp_289_index_ptr_172 
              #                          alloc i32 temp_290_ptr2globl_172 
              #                          alloc i32 temp_291_arithop_172 
              #                          alloc ptr->i32 temp_292_index_ptr_172 
              #                          alloc i32 temp_293_ptr2globl_172 
              #                          alloc i32 temp_294_arithop_172 
              #                          alloc i32 temp_295_ptr2globl_87 
              #                          alloc ptr->i32 temp_296_index_ptr_87 
              #                          alloc i32 temp_297_ptr2globl_179 
              #                          alloc Array:i32:[Some(10000_0)] temp_298_ptr2globl_179 
              #                          alloc ptr->i32 temp_299_array_ptr_179 
              #                          alloc i32 temp_300_array_ele_179 
              #                          alloc i1 temp_301_cmp_179 
              #                          alloc i32 temp_302_ptr2globl_182 
              #                          alloc Array:i32:[Some(10000_0)] temp_303_ptr2globl_182 
              #                          alloc ptr->i32 temp_304_array_ptr_182 
              #                          alloc i32 temp_305_array_ele_182 
              #                          alloc i1 temp_306_cmp_182 
              #                          alloc i32 temp_307_ptr2globl_182 
              #                          alloc Array:i32:[Some(10000_0)] temp_308_ptr2globl_182 
              #                          alloc ptr->i32 temp_309_array_ptr_182 
              #                          alloc i32 temp_310_array_ele_182 
              #                          alloc i1 temp_311_cmp_182 
              #                          alloc i1 temp_312_logic_182 
              #                          alloc i32 temp_313_ptr2globl_182 
              #                          alloc Array:i32:[Some(10000_0)] temp_314_ptr2globl_182 
              #                          alloc ptr->i32 temp_315_array_ptr_182 
              #                          alloc i32 temp_316_array_ele_182 
              #                          alloc i1 temp_317_cmp_182 
              #                          alloc i1 temp_318_logic_182 
              #                          alloc i32 temp_319_ptr2globl_182 
              #                          alloc Array:i32:[Some(10000_0)] temp_320_ptr2globl_182 
              #                          alloc ptr->i32 temp_321_array_ptr_182 
              #                          alloc i32 temp_322_array_ele_182 
              #                          alloc i1 temp_323_cmp_182 
              #                          alloc i1 temp_324_logic_182 
              #                          alloc i32 temp_325_ptr2globl_182 
              #                          alloc Array:i32:[Some(10000_0)] temp_326_ptr2globl_182 
              #                          alloc ptr->i32 temp_327_array_ptr_182 
              #                          alloc i32 temp_328_array_ele_182 
              #                          alloc i1 temp_329_cmp_182 
              #                          alloc i1 temp_330_logic_182 
              #                          alloc i32 temp_331_ptr2globl_182 
              #                          alloc Array:i32:[Some(10000_0)] temp_332_ptr2globl_182 
              #                          alloc ptr->i32 temp_333_array_ptr_182 
              #                          alloc i32 temp_334_array_ele_182 
              #                          alloc i1 temp_335_cmp_182 
              #                          alloc i1 temp_336_logic_182 
              #                          alloc i32 temp_337_ret_of_intpop_184 
              #                          alloc i32 a_184 
              #                          alloc i32 temp_338_ret_of_intpop_184 
              #                          alloc i32 b_184 
              #                          alloc i32 c_184 
              #                          alloc i32 temp_339_ptr2globl_188 
              #                          alloc Array:i32:[Some(10000_0)] temp_340_ptr2globl_188 
              #                          alloc ptr->i32 temp_341_array_ptr_188 
              #                          alloc i32 temp_342_array_ele_188 
              #                          alloc i1 temp_343_cmp_188 
              #                          alloc i32 temp_344_arithop_188 
              #                          alloc i32 temp_345_ptr2globl_191 
              #                          alloc Array:i32:[Some(10000_0)] temp_346_ptr2globl_191 
              #                          alloc ptr->i32 temp_347_array_ptr_191 
              #                          alloc i32 temp_348_array_ele_191 
              #                          alloc i1 temp_349_cmp_191 
              #                          alloc i32 temp_350_arithop_191 
              #                          alloc i32 temp_351_ptr2globl_194 
              #                          alloc Array:i32:[Some(10000_0)] temp_352_ptr2globl_194 
              #                          alloc ptr->i32 temp_353_array_ptr_194 
              #                          alloc i32 temp_354_array_ele_194 
              #                          alloc i1 temp_355_cmp_194 
              #                          alloc i32 temp_356_arithop_194 
              #                          alloc i32 temp_357_ptr2globl_197 
              #                          alloc Array:i32:[Some(10000_0)] temp_358_ptr2globl_197 
              #                          alloc ptr->i32 temp_359_array_ptr_197 
              #                          alloc i32 temp_360_array_ele_197 
              #                          alloc i1 temp_361_cmp_197 
              #                          alloc i32 temp_362_arithop_197 
              #                          alloc i32 temp_363_ptr2globl_200 
              #                          alloc Array:i32:[Some(10000_0)] temp_364_ptr2globl_200 
              #                          alloc ptr->i32 temp_365_array_ptr_200 
              #                          alloc i32 temp_366_array_ele_200 
              #                          alloc i1 temp_367_cmp_200 
              #                          alloc i32 temp_368_arithop_200 
              #                          alloc i32 temp_369_ptr2globl_203 
              #                          alloc Array:i32:[Some(10000_0)] temp_370_ptr2globl_203 
              #                          alloc ptr->i32 temp_371_array_ptr_203 
              #                          alloc i32 temp_372_array_ele_203 
              #                          alloc i1 temp_373_cmp_203 
              #                          alloc i32 temp_374_ret_of_power_203 
              #                          alloc i32 temp_375_ptr2globl_181 
              #                          alloc i32 temp_376_arithop_181 
              #                          alloc i32 temp_377_ptr2globl_208 
              #                          alloc Array:i32:[Some(10000_0)] temp_378_ptr2globl_208 
              #                          alloc ptr->i32 temp_379_array_ptr_208 
              #                          alloc i32 temp_380_array_ele_208 
              #                          alloc i1 temp_381_cmp_208 
              #                          alloc i32 temp_382_ptr2globl_210 
              #                          alloc Array:i32:[Some(10000_0)] temp_383_ptr2globl_210 
              #                          alloc ptr->i32 temp_384_array_ptr_210 
              #                          alloc i32 temp_385_array_ele_210 
              #                          alloc i32 temp_386_arithop_210 
              #                          alloc i32 temp_387_ptr2globl_213 
              #                          alloc i32 temp_388_ptr2globl_213 
              #                          alloc i32 temp_389_arithop_213 
              #                          alloc Array:i32:[Some(10000_0)] temp_390_ptr2globl_213 
              #                          alloc ptr->i32 temp_391_array_ptr_213 
              #                          alloc i32 temp_392_array_ele_213 
              #                          alloc i1 temp_393_cmp_213 
              #                          alloc i32 temp_394_ptr2globl_215 
              #                          alloc i32 temp_395_ptr2globl_215 
              #                          alloc i32 temp_396_arithop_215 
              #                          alloc Array:i32:[Some(10000_0)] temp_397_ptr2globl_215 
              #                          alloc ptr->i32 temp_398_array_ptr_215 
              #                          alloc i32 temp_399_array_ele_215 
              #                          alloc i32 temp_400_arithop_215 
              #                          alloc i32 temp_401_ptr2globl_215 
              #                          alloc i32 temp_402_arithop_215 
              #                          alloc i32 temp_403_ptr2globl_210 
              #                          alloc i32 temp_404_ptr2globl_210 
              #                          alloc i32 temp_405_arithop_210 
              #                          alloc i32 temp_406_arithop_210 
              #                          alloc Array:i32:[Some(10000_0)] temp_407_ptr2globl_87 
              #                          alloc ptr->i32 temp_408_array_ptr_87 
              #                          alloc i32 temp_409_array_ele_87 
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
              #                          new_var temp_60_ptr2globl_87:Array:i32:[Some(10000_0)] 
              #                          temp_60_ptr2globl_87 = load *get_0:ptr->i32 
              #                    occupy a3 with *get_0
              #                       load label get as ptr to reg
    la      a3, get
              #                    occupy reg a3 with *get_0
              #                    occupy a4 with temp_60_ptr2globl_87
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          new_var temp_61_ret_of_getstr_87:i32 
              #                          temp_61_ret_of_getstr_87 =  Call i32 getstr_0(temp_60_ptr2globl_87) 
              #                    saved register dumping to mem
              #                    store to temp_60_ptr2globl_87 in mem offset_illegal
              #                    occupy a0 with 2081536_0
    li      a0, 2081536
    add     a0,sp,a0
    sw      a4,0(a0)
              #                    free a0
              #                    release a4 with temp_60_ptr2globl_87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_60_ptr2globl_87_0
              #                    load from temp_60_ptr2globl_87 in mem
              #                    occupy a1 with temp_60_ptr2globl_87
    li      a1, 2081536
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    arg load ended


    call    getstr
              #                    store to temp_61_ret_of_getstr_87 in mem offset_illegal
              #                    occupy a0 with 2081532_0
    li      a0, 2081532
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          lengets_87 = i32 temp_61_ret_of_getstr_87 
              #                    occupy a0 with temp_61_ret_of_getstr_87
              #                    occupy a2 with lengets_87
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: while.head_92 
    j       .while.head_92
              #                    regtab     a0:Freed { symidx: temp_61_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: temp_60_ptr2globl_87, tracked: true } |     a2:Freed { symidx: lengets_87, tracked: true } | 
              #                          label while.head_92: 
.while.head_92:
              #                          new_var temp_62_ptr2globl_91:i32 
              #                          temp_62_ptr2globl_91 = load *i_0:ptr->i32 
              #                    occupy a3 with *i_0
              #                       load label i as ptr to reg
    la      a3, i
              #                    occupy reg a3 with *i_0
              #                    occupy a4 with temp_62_ptr2globl_91
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          new_var temp_63_cmp_91:i1 
              #                          temp_63_cmp_91 = icmp i32 Slt temp_62_ptr2globl_91, lengets_87 
              #                    occupy a4 with temp_62_ptr2globl_91
              #                    occupy a2 with lengets_87
              #                    occupy a5 with temp_63_cmp_91
    slt     a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                          br i1 temp_63_cmp_91, label while.body_92, label while.exit_92 
              #                    occupy a5 with temp_63_cmp_91
              #                    free a5
              #                    occupy a5 with temp_63_cmp_91
    bnez    a5, .while.body_92
              #                    free a5
    j       .while.exit_92
              #                    regtab     a0:Freed { symidx: temp_61_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: temp_60_ptr2globl_87, tracked: true } |     a2:Freed { symidx: lengets_87, tracked: true } |     a4:Freed { symidx: temp_62_ptr2globl_91, tracked: true } |     a5:Freed { symidx: temp_63_cmp_91, tracked: true } | 
              #                          label while.body_92: 
.while.body_92:
              #                          new_var temp_64_ptr2globl_94:i32 
              #                          temp_64_ptr2globl_94 = load *i_0:ptr->i32 
              #                    occupy a3 with *i_0
              #                       load label i as ptr to reg
    la      a3, i
              #                    occupy reg a3 with *i_0
              #                    occupy a6 with temp_64_ptr2globl_94
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                          new_var temp_65_ptr2globl_94:Array:i32:[Some(10000_0)] 
              #                          temp_65_ptr2globl_94 = load *get_0:ptr->i32 
              #                    occupy a7 with *get_0
              #                       load label get as ptr to reg
    la      a7, get
              #                    occupy reg a7 with *get_0
              #                    occupy s1 with temp_65_ptr2globl_94
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_66_array_ptr_94:ptr->i32 
              #                          temp_66_array_ptr_94 = getelementptr temp_65_ptr2globl_94:Array:i32:[Some(10000_0)] [Some(temp_64_ptr2globl_94)] 
              #                    occupy s2 with temp_66_array_ptr_94
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a6 with temp_64_ptr2globl_94
              #                    occupy s4 with _anonymous_of_temp_65_ptr2globl_94_0
    mul     s4,s3,a6
              #                    free s3
              #                    free a6
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
    add     s2,s2,sp
              #                    occupy s5 with 2041516_0
    li      s5, 2041516
    li      s5, 2041516
    add     s2,s5,s2
              #                    free s5
              #                    free s2
              #                          new_var temp_67_array_ele_94:i32 
              #                          temp_67_array_ele_94 = load temp_66_array_ptr_94:ptr->i32 
              #                    occupy s2 with temp_66_array_ptr_94
              #                    occupy s6 with temp_67_array_ele_94
    lw      s6,0(s2)
              #                    free s6
              #                    free s2
              #                          new_var temp_68_ret_of_isdigit_94:i32 
              #                          temp_68_ret_of_isdigit_94 =  Call i32 isdigit_0(temp_67_array_ele_94) 
              #                    saved register dumping to mem
              #                    store to temp_65_ptr2globl_94 in mem offset_illegal
              #                    found literal reg Some(s5) already exist with 2041516_0
              #                    occupy s5 with 2041516_0
    add     s5,sp,s5
    sw      s1,0(s5)
              #                    free s5
              #                    release s1 with temp_65_ptr2globl_94
              #                    store to temp_66_array_ptr_94 in mem offset_illegal
              #                    occupy s1 with 2041504_0
    li      s1, 2041504
    add     s1,sp,s1
    sd      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_66_array_ptr_94
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy s2 with 2041500_0
    li      s2, 2041500
    add     s2,sp,s2
    sw      s6,0(s2)
              #                    free s2
              #                    release s6 with temp_67_array_ele_94
              #                    store to temp_61_ret_of_getstr_87 in mem offset_illegal
              #                    occupy a0 with 2081532_0
    li      a0, 2081532
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_61_ret_of_getstr_87
              #                    store to temp_60_ptr2globl_87 in mem offset_illegal
              #                    occupy a0 with 2081536_0
    li      a0, 2081536
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_60_ptr2globl_87
              #                    store to lengets_87 in mem offset_illegal
              #                    occupy a1 with 2081528_0
    li      a1, 2081528
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with lengets_87
              #                    store to temp_62_ptr2globl_91 in mem offset_illegal
              #                    occupy a2 with 2081524_0
    li      a2, 2081524
    add     a2,sp,a2
    sw      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_62_ptr2globl_91
              #                    store to temp_63_cmp_91 in mem offset_illegal
              #                    occupy a3 with 2081523_0
    li      a3, 2081523
    add     a3,sp,a3
    sb      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_63_cmp_91
              #                    store to temp_64_ptr2globl_94 in mem offset_illegal
              #                    occupy a4 with 2081516_0
    li      a4, 2081516
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_64_ptr2globl_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    occupy a5 with temp_67_array_ele_94
    li      a5, 2041500
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    arg load ended


    call    isdigit
              #                    store to temp_68_ret_of_isdigit_94 in mem offset_illegal
              #                    occupy a0 with 2041496_0
    li      a0, 2041496
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_69_cmp_94:i1 
              #                          temp_69_cmp_94 = icmp i32 Eq temp_68_ret_of_isdigit_94, 1_0 
              #                    occupy a0 with temp_68_ret_of_isdigit_94
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_69_cmp_94
    xor     a7,a0,a6
    seqz    a7, a7
              #                    free a0
              #                    free a6
              #                    free a7
              #                          br i1 temp_69_cmp_94, label branch_true_95, label branch_false_95 
              #                    occupy a7 with temp_69_cmp_94
              #                    free a7
              #                    occupy a7 with temp_69_cmp_94
    bnez    a7, .branch_true_95
              #                    free a7
    j       .branch_false_95
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } | 
              #                          label branch_true_95: 
.branch_true_95:
              #                          new_var temp_70_ptr2globl_96:i32 
              #                          temp_70_ptr2globl_96 = load *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a2 with temp_70_ptr2globl_96
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_71_index_ptr_96:ptr->i32 
              #                          temp_71_index_ptr_96 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_70_ptr2globl_96)] 
              #                    occupy a3 with temp_71_index_ptr_96
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a2 with temp_70_ptr2globl_96
              #                    occupy a6 with _anonymous_of_get2_0_0
    mul     a6,a4,a2
              #                    free a4
              #                    free a2
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
              #                    occupy s1 with _anonymous_of_get2_0_0
    la      s1, get2
    add     a3,a3,s1
              #                    free s1
              #                    free a3
              #                          new_var temp_72_ptr2globl_96:i32 
              #                          temp_72_ptr2globl_96 = load *i_0:ptr->i32 
              #                    occupy s2 with *i_0
              #                       load label i as ptr to reg
    la      s2, i
              #                    occupy reg s2 with *i_0
              #                    occupy s3 with temp_72_ptr2globl_96
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_73_ptr2globl_96:Array:i32:[Some(10000_0)] 
              #                          temp_73_ptr2globl_96 = load *get_0:ptr->i32 
              #                    occupy s4 with *get_0
              #                       load label get as ptr to reg
    la      s4, get
              #                    occupy reg s4 with *get_0
              #                    occupy s5 with temp_73_ptr2globl_96
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_74_array_ptr_96:ptr->i32 
              #                          temp_74_array_ptr_96 = getelementptr temp_73_ptr2globl_96:Array:i32:[Some(10000_0)] [Some(temp_72_ptr2globl_96)] 
              #                    occupy s6 with temp_74_array_ptr_96
    li      s6, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s3 with temp_72_ptr2globl_96
              #                    occupy s7 with _anonymous_of_temp_73_ptr2globl_96_0
    mul     s7,a4,s3
              #                    free a4
              #                    free s3
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
    add     s6,s6,sp
              #                    occupy s8 with 2001476_0
    li      s8, 2001476
    li      s8, 2001476
    add     s6,s8,s6
              #                    free s8
              #                    free s6
              #                          new_var temp_75_array_ele_96:i32 
              #                          temp_75_array_ele_96 = load temp_74_array_ptr_96:ptr->i32 
              #                    occupy s6 with temp_74_array_ptr_96
              #                    occupy s9 with temp_75_array_ele_96
    lw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          store temp_75_array_ele_96:i32 temp_71_index_ptr_96:ptr->i32 
              #                    occupy a3 with temp_71_index_ptr_96
              #                    occupy s9 with temp_75_array_ele_96
    sw      s9,0(a3)
              #                    free s9
              #                    free a3
              #                          mu get2_0:350 
              #                          get2_0 = chi get2_0:350 
              #                          new_var temp_76_ptr2globl_96:i32 
              #                          temp_76_ptr2globl_96 = load *ii_0:ptr->i32 
              #                    occupy s10 with *ii_0
              #                       load label ii as ptr to reg
    la      s10, ii
              #                    occupy reg s10 with *ii_0
              #                    occupy s11 with temp_76_ptr2globl_96
    lw      s11,0(s10)
              #                    free s11
              #                    free s10
              #                          new_var temp_77_arithop_96:i32 
              #                          temp_77_arithop_96 = Add i32 temp_76_ptr2globl_96, 1_0 
              #                    occupy s11 with temp_76_ptr2globl_96
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a1 with temp_77_arithop_96
    add     a1,s11,a4
              #                    free s11
              #                    free a4
              #                    free a1
              #                          store temp_77_arithop_96:i32 *ii_0:ptr->i32 
              #                    occupy a4 with *ii_0
              #                       load label ii as ptr to reg
    la      a4, ii
              #                    occupy reg a4 with *ii_0
              #                    occupy a1 with temp_77_arithop_96
    sw      a1,0(a4)
              #                    free a1
              #                    free a4
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } | 
              #                          label branch_false_95: 
.branch_false_95:
              #                          new_var temp_80_ptr2globl_100:i32 
              #                          temp_80_ptr2globl_100 = load *i_0:ptr->i32 
              #                    occupy a1 with *i_0
              #                       load label i as ptr to reg
    la      a1, i
              #                    occupy reg a1 with *i_0
              #                    occupy a2 with temp_80_ptr2globl_100
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_81_ptr2globl_100:Array:i32:[Some(10000_0)] 
              #                          temp_81_ptr2globl_100 = load *get_0:ptr->i32 
              #                    occupy a3 with *get_0
              #                       load label get as ptr to reg
    la      a3, get
              #                    occupy reg a3 with *get_0
              #                    occupy a4 with temp_81_ptr2globl_100
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          new_var temp_82_array_ptr_100:ptr->i32 
              #                          temp_82_array_ptr_100 = getelementptr temp_81_ptr2globl_100:Array:i32:[Some(10000_0)] [Some(temp_80_ptr2globl_100)] 
              #                    occupy a6 with temp_82_array_ptr_100
    li      a6, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a2 with temp_80_ptr2globl_100
              #                    occupy s2 with _anonymous_of_temp_81_ptr2globl_100_0
    mul     s2,s1,a2
              #                    free s1
              #                    free a2
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
    add     a6,a6,sp
              #                    occupy s3 with 1961440_0
    li      s3, 1961440
    li      s3, 1961440
    add     a6,s3,a6
              #                    free s3
              #                    free a6
              #                          new_var temp_83_array_ele_100:i32 
              #                          temp_83_array_ele_100 = load temp_82_array_ptr_100:ptr->i32 
              #                    occupy a6 with temp_82_array_ptr_100
              #                    occupy s4 with temp_83_array_ele_100
    lw      s4,0(a6)
              #                    free s4
              #                    free a6
              #                          new_var temp_84_cmp_100:i1 
              #                          temp_84_cmp_100 = icmp i32 Eq temp_83_array_ele_100, 40_0 
              #                    occupy s4 with temp_83_array_ele_100
              #                    occupy s5 with 40_0
    li      s5, 40
              #                    occupy s6 with temp_84_cmp_100
    xor     s6,s4,s5
    seqz    s6, s6
              #                    free s4
              #                    free s5
              #                    free s6
              #                          br i1 temp_84_cmp_100, label branch_true_101, label branch_false_101 
              #                    occupy s6 with temp_84_cmp_100
              #                    free s6
              #                    occupy s6 with temp_84_cmp_100
    bnez    s6, .branch_true_101
              #                    free s6
    j       .branch_false_101
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_80_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } | 
              #                          label branch_true_101: 
.branch_true_101:
              #                           Call void chapush_0(40_0) 
              #                    saved register dumping to mem
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy a1 with 1961428_0
    li      a1, 1961428
    add     a1,sp,a1
    sw      s4,0(a1)
              #                    free a1
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a3 with 1961427_0
    li      a3, 1961427
    add     a3,sp,a3
    sb      s6,0(a3)
              #                    free a3
              #                    release s6 with temp_84_cmp_100
              #                    store to temp_68_ret_of_isdigit_94 in mem offset_illegal
              #                    occupy a0 with 2041496_0
    li      a0, 2041496
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_68_ret_of_isdigit_94
              #                    store to temp_80_ptr2globl_100 in mem offset_illegal
              #                    occupy a0 with 2001440_0
    li      a0, 2001440
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with temp_80_ptr2globl_100
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a1 with 1961440_0
    li      a1, 1961440
    add     a1,sp,a1
    sw      a4,0(a1)
              #                    free a1
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a2 with 2041500_0
    li      a2, 2041500
    add     a2,sp,a2
    sw      a5,0(a2)
              #                    free a2
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a3 with 1961432_0
    li      a3, 1961432
    add     a3,sp,a3
    sd      a6,0(a3)
              #                    free a3
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a4 with 2041495_0
    li      a4, 2041495
    add     a4,sp,a4
    sb      a7,0(a4)
              #                    free a4
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_40_0_0
    li      a0, 40
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_101 
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a0 with temp_84_cmp_100
    li      a0, 1961427
    add     a0,sp,a0
    lb      s6,0(a0)
              #                    free a0
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a0 with 1961427_0
    li      a0, 1961427
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84_cmp_100
              #                    occupy a0 with _anonymous_of_temp_68_ret_of_isdigit_94_0
              #                    load from temp_68_ret_of_isdigit_94 in mem

              #                    occupy a1 with temp_68_ret_of_isdigit_94
    li      a1, 2041496
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy a2 with temp_69_cmp_94
    li      a2, 2041495
    add     a2,sp,a2
    lb      a7,0(a2)
              #                    free a2
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy a3 with temp_81_ptr2globl_100
    li      a3, 1961440
    add     a3,sp,a3
    lw      a4,0(a3)
              #                    free a3
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy a5 with temp_83_array_ele_100
    li      a5, 1961428
    add     a5,sp,a5
    lw      s4,0(a5)
              #                    free a5
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s1 with temp_82_array_ptr_100
    li      s1, 1961432
    add     s1,sp,s1
    ld      a6,0(s1)
              #                    free s1
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy a5 with 1961428_0
    li      a5, 1961428
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_83_array_ele_100
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    occupy s2 with temp_67_array_ele_94
    li      s2, 2041500
    add     s2,sp,s2
    lw      a5,0(s2)
              #                    free s2
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a3 with 1961440_0
    li      a3, 1961440
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_81_ptr2globl_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a2 with 2041495_0
    li      a2, 2041495
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_69_cmp_94
              #                    occupy a2 with _anonymous_of_temp_80_ptr2globl_100_0
              #                    load from temp_80_ptr2globl_100 in mem

              #                    occupy a3 with temp_80_ptr2globl_100
    li      a3, 2001440
    add     a3,sp,a3
    lw      a2,0(a3)
              #                    free a3
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s1 with 1961432_0
    li      s1, 1961432
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_82_array_ptr_100
    j       .branch_false_101
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_80_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } | 
              #                          label branch_false_101: 
.branch_false_101:
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_80_ptr2globl_100, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_85_ptr2globl_103:i32 
              #                          temp_85_ptr2globl_103 = load *i_0:ptr->i32 
              #                    occupy a1 with *i_0
              #                       load label i as ptr to reg
    la      a1, i
              #                    occupy reg a1 with *i_0
              #                    occupy a3 with temp_85_ptr2globl_103
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_86_ptr2globl_103:Array:i32:[Some(10000_0)] 
              #                          temp_86_ptr2globl_103 = load *get_0:ptr->i32 
              #                    occupy s1 with *get_0
              #                       load label get as ptr to reg
    la      s1, get
              #                    occupy reg s1 with *get_0
              #                    occupy s2 with temp_86_ptr2globl_103
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_87_array_ptr_103:ptr->i32 
              #                          temp_87_array_ptr_103 = getelementptr temp_86_ptr2globl_103:Array:i32:[Some(10000_0)] [Some(temp_85_ptr2globl_103)] 
              #                    occupy s3 with temp_87_array_ptr_103
    li      s3, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy a3 with temp_85_ptr2globl_103
              #                    occupy s7 with _anonymous_of_temp_86_ptr2globl_103_0
    mul     s7,s5,a3
              #                    free s5
              #                    free a3
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
    add     s3,s3,sp
              #                    occupy s8 with 1921420_0
    li      s8, 1921420
    li      s8, 1921420
    add     s3,s8,s3
              #                    free s8
              #                    free s3
              #                          new_var temp_88_array_ele_103:i32 
              #                          temp_88_array_ele_103 = load temp_87_array_ptr_103:ptr->i32 
              #                    occupy s3 with temp_87_array_ptr_103
              #                    occupy s9 with temp_88_array_ele_103
    lw      s9,0(s3)
              #                    free s9
              #                    free s3
              #                          new_var temp_89_cmp_103:i1 
              #                          temp_89_cmp_103 = icmp i32 Eq temp_88_array_ele_103, 94_0 
              #                    occupy s9 with temp_88_array_ele_103
              #                    occupy s10 with 94_0
    li      s10, 94
              #                    occupy s11 with temp_89_cmp_103
    xor     s11,s9,s10
    seqz    s11, s11
              #                    free s9
              #                    free s10
              #                    free s11
              #                          br i1 temp_89_cmp_103, label branch_true_104, label branch_false_104 
              #                    occupy s11 with temp_89_cmp_103
              #                    free s11
              #                    occupy s11 with temp_89_cmp_103
    bnez    s11, .branch_true_104
              #                    free s11
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_80_ptr2globl_100, tracked: true } |     a3:Freed { symidx: temp_85_ptr2globl_103, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_true_104: 
.branch_true_104:
              #                           Call void chapush_0(94_0) 
              #                    saved register dumping to mem
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a1 with 1921420_0
    li      a1, 1921420
    add     a1,sp,a1
    sw      s2,0(a1)
              #                    free a1
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s1 with 1921408_0
    li      s1, 1921408
    add     s1,sp,s1
    sd      s3,0(s1)
              #                    free s1
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s2 with 1961428_0
    li      s2, 1961428
    add     s2,sp,s2
    sw      s4,0(s2)
              #                    free s2
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy s3 with 1961427_0
    li      s3, 1961427
    add     s3,sp,s3
    sb      s6,0(s3)
              #                    free s3
              #                    release s6 with temp_84_cmp_100
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s4 with 1921404_0
    li      s4, 1921404
    add     s4,sp,s4
    sw      s9,0(s4)
              #                    free s4
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s5 with 1921403_0
    li      s5, 1921403
    add     s5,sp,s5
    sb      s11,0(s5)
              #                    free s5
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_68_ret_of_isdigit_94 in mem offset_illegal
              #                    occupy a0 with 2041496_0
    li      a0, 2041496
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_68_ret_of_isdigit_94
              #                    store to temp_80_ptr2globl_100 in mem offset_illegal
              #                    occupy a0 with 2001440_0
    li      a0, 2001440
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with temp_80_ptr2globl_100
              #                    store to temp_85_ptr2globl_103 in mem offset_illegal
              #                    occupy a1 with 1961420_0
    li      a1, 1961420
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_85_ptr2globl_103
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a2 with 1961440_0
    li      a2, 1961440
    add     a2,sp,a2
    sw      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a3 with 2041500_0
    li      a3, 2041500
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a4 with 1961432_0
    li      a4, 1961432
    add     a4,sp,a4
    sd      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a5 with 2041495_0
    li      a5, 2041495
    add     a5,sp,a5
    sb      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_94_0_0
    li      a0, 94
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_104 
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a0 with temp_84_cmp_100
    li      a0, 1961427
    add     a0,sp,a0
    lb      s6,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a1 with temp_86_ptr2globl_103
    li      a1, 1921420
    add     a1,sp,a1
    lw      s2,0(a1)
              #                    free a1
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a1 with 1921420_0
    li      a1, 1921420
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_86_ptr2globl_103
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a1 with temp_87_array_ptr_103
    li      a1, 1921408
    add     a1,sp,a1
    ld      s3,0(a1)
              #                    free a1
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a2 with temp_88_array_ele_103
    li      a2, 1921404
    add     a2,sp,a2
    lw      s9,0(a2)
              #                    free a2
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a0 with 1961427_0
    li      a0, 1961427
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84_cmp_100
              #                    occupy a0 with _anonymous_of_temp_68_ret_of_isdigit_94_0
              #                    load from temp_68_ret_of_isdigit_94 in mem

              #                    occupy a3 with temp_68_ret_of_isdigit_94
    li      a3, 2041496
    add     a3,sp,a3
    lw      a0,0(a3)
              #                    free a3
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy a4 with temp_69_cmp_94
    li      a4, 2041495
    add     a4,sp,a4
    lb      a7,0(a4)
              #                    free a4
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy a5 with temp_89_cmp_103
    li      a5, 1921403
    add     a5,sp,a5
    lb      s11,0(a5)
              #                    free a5
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a4 with 2041495_0
    li      a4, 2041495
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_69_cmp_94
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy a6 with temp_81_ptr2globl_100
    li      a6, 1961440
    add     a6,sp,a6
    lw      a4,0(a6)
              #                    free a6
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s1 with temp_83_array_ele_100
    li      s1, 1961428
    add     s1,sp,s1
    lw      s4,0(s1)
              #                    free s1
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a6 with 1961440_0
    li      a6, 1961440
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_81_ptr2globl_100
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s5 with temp_82_array_ptr_100
    li      s5, 1961432
    add     s5,sp,s5
    ld      a6,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy a5 with 1921403_0
    li      a5, 1921403
    add     a5,sp,a5
    sb      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_89_cmp_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    occupy s7 with temp_67_array_ele_94
    li      s7, 2041500
    add     s7,sp,s7
    lw      a5,0(s7)
              #                    free s7
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s5 with 1961432_0
    li      s5, 1961432
    add     s5,sp,s5
    sd      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_82_array_ptr_100
              #                    store to temp_68_ret_of_isdigit_94 in mem offset_illegal
              #                    occupy a3 with 2041496_0
    li      a3, 2041496
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_68_ret_of_isdigit_94
              #                    occupy a3 with _anonymous_of_temp_85_ptr2globl_103_0
              #                    load from temp_85_ptr2globl_103 in mem

              #                    occupy s5 with temp_85_ptr2globl_103
    li      s5, 1961420
    add     s5,sp,s5
    lw      a3,0(s5)
              #                    free s5
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a2 with 1921404_0
    li      a2, 1921404
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_88_array_ele_103
              #                    occupy a2 with _anonymous_of_temp_80_ptr2globl_100_0
              #                    load from temp_80_ptr2globl_100 in mem

              #                    occupy s8 with temp_80_ptr2globl_100
    li      s8, 2001440
    add     s8,sp,s8
    lw      a2,0(s8)
              #                    free s8
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s1 with 1961428_0
    li      s1, 1961428
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_83_array_ele_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy s1 with 2041500_0
    li      s1, 2041500
    add     s1,sp,s1
    sw      s7,0(s1)
              #                    free s1
              #                    release s7 with temp_67_array_ele_94
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_80_ptr2globl_100, tracked: true } |     a3:Freed { symidx: temp_85_ptr2globl_103, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_false_104: 
.branch_false_104:
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a2:Freed { symidx: temp_80_ptr2globl_100, tracked: true } |     a3:Freed { symidx: temp_85_ptr2globl_103, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_90_ptr2globl_106:i32 
              #                          temp_90_ptr2globl_106 = load *i_0:ptr->i32 
              #                    occupy a1 with *i_0
              #                       load label i as ptr to reg
    la      a1, i
              #                    occupy reg a1 with *i_0
              #                    occupy s1 with temp_90_ptr2globl_106
    lw      s1,0(a1)
              #                    free s1
              #                    free a1
              #                          new_var temp_91_ptr2globl_106:Array:i32:[Some(10000_0)] 
              #                          temp_91_ptr2globl_106 = load *get_0:ptr->i32 
              #                    occupy s5 with *get_0
              #                       load label get as ptr to reg
    la      s5, get
              #                    occupy reg s5 with *get_0
              #                    occupy s7 with temp_91_ptr2globl_106
    lw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          new_var temp_92_array_ptr_106:ptr->i32 
              #                          temp_92_array_ptr_106 = getelementptr temp_91_ptr2globl_106:Array:i32:[Some(10000_0)] [Some(temp_90_ptr2globl_106)] 
              #                    occupy s8 with temp_92_array_ptr_106
    li      s8, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s1 with temp_90_ptr2globl_106
              #                    occupy a1 with _anonymous_of_temp_91_ptr2globl_106_0
    mul     a1,s10,s1
              #                    free s10
              #                    free s1
    add     s8,s8,a1
              #                    free a1
    slli s8,s8,2
    add     s8,s8,sp
              #                    occupy a1 with 1881396_0
    li      a1, 1881396
    li      a1, 1881396
    add     s8,a1,s8
              #                    free a1
              #                    free s8
              #                          new_var temp_93_array_ele_106:i32 
              #                          temp_93_array_ele_106 = load temp_92_array_ptr_106:ptr->i32 
              #                    occupy s8 with temp_92_array_ptr_106
              #                    occupy a1 with temp_93_array_ele_106
    lw      a1,0(s8)
              #                    free a1
              #                    free s8
              #                          new_var temp_94_cmp_106:i1 
              #                          temp_94_cmp_106 = icmp i32 Eq temp_93_array_ele_106, 41_0 
              #                    occupy a1 with temp_93_array_ele_106
              #                    occupy s5 with 41_0
    li      s5, 41
              #                    occupy s10 with temp_94_cmp_106
    xor     s10,a1,s5
    seqz    s10, s10
              #                    free a1
              #                    free s5
              #                    free s10
              #                          br i1 temp_94_cmp_106, label branch_true_107, label branch_false_107 
              #                    occupy s10 with temp_94_cmp_106
              #                    free s10
              #                    occupy s10 with temp_94_cmp_106
    bnez    s10, .branch_true_107
              #                    free s10
    j       .branch_false_107
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a1:Freed { symidx: temp_93_array_ele_106, tracked: true } |     a2:Freed { symidx: temp_80_ptr2globl_100, tracked: true } |     a3:Freed { symidx: temp_85_ptr2globl_103, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_true_107: 
.branch_true_107:
              #                          new_var temp_95_ret_of_chapop_108:i32 
              #                          temp_95_ret_of_chapop_108 =  Call i32 chapop_0() 
              #                    saved register dumping to mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s1 with 1921396_0
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_90_ptr2globl_106
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy s1 with 1921420_0
    li      s1, 1921420
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s2 with 1921408_0
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s3 with 1961428_0
    li      s3, 1961428
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy s4 with 1961427_0
    li      s4, 1961427
    add     s4,sp,s4
    sb      s6,0(s4)
              #                    free s4
              #                    release s6 with temp_84_cmp_100
              #                    store to temp_91_ptr2globl_106 in mem offset_illegal
              #                    occupy s5 with 1881396_0
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_91_ptr2globl_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s6 with 1881384_0
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_92_array_ptr_106
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s7 with 1921404_0
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy s8 with 1881379_0
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_94_cmp_106
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s9 with 1921403_0
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_68_ret_of_isdigit_94 in mem offset_illegal
              #                    occupy a0 with 2041496_0
    li      a0, 2041496
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_68_ret_of_isdigit_94
              #                    store to temp_93_array_ele_106 in mem offset_illegal
              #                    occupy a0 with 1881380_0
    li      a0, 1881380
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_93_array_ele_106
              #                    store to temp_80_ptr2globl_100 in mem offset_illegal
              #                    occupy a1 with 2001440_0
    li      a1, 2001440
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_80_ptr2globl_100
              #                    store to temp_85_ptr2globl_103 in mem offset_illegal
              #                    occupy a2 with 1961420_0
    li      a2, 1961420
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_85_ptr2globl_103
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a3 with 1961440_0
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a4 with 2041500_0
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a5 with 1961432_0
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a6 with 2041495_0
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    chapop
              #                    store to temp_95_ret_of_chapop_108 in mem offset_illegal
              #                    occupy a0 with 1881372_0
    li      a0, 1881372
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_95_ret_of_chapop_108:i32 *c_0:ptr->i32 
              #                    occupy a7 with *c_0
              #                       load label c as ptr to reg
    la      a7, c
              #                    occupy reg a7 with *c_0
              #                    occupy a0 with temp_95_ret_of_chapop_108
    sw      a0,0(a7)
              #                    free a0
              #                    free a7
              #                          jump label: while.head_111 
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: temp_95_ret_of_chapop_108, tracked: true } | 
              #                          label while.head_111: 
.while.head_111:
              #                          new_var temp_96_ptr2globl_110:i32 
              #                          temp_96_ptr2globl_110 = load *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a2 with temp_96_ptr2globl_110
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_97_cmp_110:i1 
              #                          temp_97_cmp_110 = icmp i32 Ne temp_96_ptr2globl_110, 40_0 
              #                    occupy a2 with temp_96_ptr2globl_110
              #                    occupy a3 with 40_0
    li      a3, 40
              #                    occupy a4 with temp_97_cmp_110
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_97_cmp_110, label while.body_111, label branch_false_107 
              #                    occupy a4 with temp_97_cmp_110
              #                    free a4
              #                    occupy a4 with temp_97_cmp_110
    bnez    a4, .while.body_111
              #                    free a4
              #                    store to temp_95_ret_of_chapop_108 in mem offset_illegal
              #                    occupy a0 with 1881372_0
    li      a0, 1881372
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_95_ret_of_chapop_108
              #                    store to temp_97_cmp_110 in mem offset_illegal
              #                    occupy a0 with 1881367_0
    li      a0, 1881367
    add     a0,sp,a0
    sb      a4,0(a0)
              #                    free a0
              #                    release a4 with temp_97_cmp_110
              #                    store to temp_96_ptr2globl_110 in mem offset_illegal
              #                    occupy a1 with 1881368_0
    li      a1, 1881368
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_96_ptr2globl_110
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a2 with temp_84_cmp_100
    li      a2, 1961427
    add     a2,sp,a2
    lb      s6,0(a2)
              #                    free a2
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a3 with temp_86_ptr2globl_103
    li      a3, 1921420
    add     a3,sp,a3
    lw      s2,0(a3)
              #                    free a3
              #                    occupy a1 with _anonymous_of_temp_93_array_ele_106_0
              #                    load from temp_93_array_ele_106 in mem

              #                    occupy a4 with temp_93_array_ele_106
    li      a4, 1881380
    add     a4,sp,a4
    lw      a1,0(a4)
              #                    free a4
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a5 with temp_94_cmp_106
    li      a5, 1881379
    add     a5,sp,a5
    lb      s10,0(a5)
              #                    free a5
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a6 with temp_87_array_ptr_103
    li      a6, 1921408
    add     a6,sp,a6
    ld      s3,0(a6)
              #                    free a6
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a7 with temp_88_array_ele_103
    li      a7, 1921404
    add     a7,sp,a7
    lw      s9,0(a7)
              #                    free a7
              #                    occupy a0 with _anonymous_of_temp_68_ret_of_isdigit_94_0
              #                    load from temp_68_ret_of_isdigit_94 in mem

              #                    occupy s1 with temp_68_ret_of_isdigit_94
    li      s1, 2041496
    add     s1,sp,s1
    lw      a0,0(s1)
              #                    free s1
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a7 with 1921404_0
    li      a7, 1921404
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_88_array_ele_103
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s4 with temp_69_cmp_94
    li      s4, 2041495
    add     s4,sp,s4
    lb      a7,0(s4)
              #                    free s4
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s5 with temp_89_cmp_103
    li      s5, 1921403
    add     s5,sp,s5
    lb      s11,0(s5)
              #                    free s5
              #                    store to temp_93_array_ele_106 in mem offset_illegal
              #                    occupy a4 with 1881380_0
    li      a4, 1881380
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_93_array_ele_106
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s7 with temp_81_ptr2globl_100
    li      s7, 1961440
    add     s7,sp,s7
    lw      a4,0(s7)
              #                    free s7
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy s4 with 2041495_0
    li      s4, 2041495
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_69_cmp_94
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s8 with temp_83_array_ele_100
    li      s8, 1961428
    add     s8,sp,s8
    lw      s4,0(s8)
              #                    free s8
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a6 with 1921408_0
    li      a6, 1921408
    add     a6,sp,a6
    sd      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_87_array_ptr_103
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a2 with 1961427_0
    li      a2, 1961427
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_84_cmp_100
              #                    occupy a2 with temp_82_array_ptr_100
    li      a2, 1961432
    add     a2,sp,a2
    ld      a6,0(a2)
              #                    free a2
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a5 with 1881379_0
    li      a5, 1881379
    add     a5,sp,a5
    sb      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_94_cmp_106
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a2 with 1961432_0
    li      a2, 1961432
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_82_array_ptr_100
              #                    occupy a2 with temp_67_array_ele_94
    li      a2, 2041500
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s5 with 1921403_0
    li      s5, 1921403
    add     s5,sp,s5
    sb      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_89_cmp_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s5 with 1961428_0
    li      s5, 1961428
    add     s5,sp,s5
    sw      s8,0(s5)
              #                    free s5
              #                    release s8 with temp_83_array_ele_100
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    occupy s5 with temp_92_array_ptr_106
    li      s5, 1881384
    add     s5,sp,s5
    ld      s8,0(s5)
              #                    free s5
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a3 with 1921420_0
    li      a3, 1921420
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_86_ptr2globl_103
              #                    occupy a3 with _anonymous_of_temp_85_ptr2globl_103_0
              #                    load from temp_85_ptr2globl_103 in mem

              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a2 with 2041500_0
    li      a2, 2041500
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_67_array_ele_94
              #                    occupy a2 with temp_85_ptr2globl_103
    li      a2, 1961420
    add     a2,sp,a2
    lw      a3,0(a2)
              #                    free a2
              #                    store to temp_85_ptr2globl_103 in mem offset_illegal
              #                    occupy a2 with 1961420_0
    li      a2, 1961420
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_85_ptr2globl_103
              #                    occupy a2 with _anonymous_of_temp_80_ptr2globl_100_0
              #                    load from temp_80_ptr2globl_100 in mem

              #                    store to temp_68_ret_of_isdigit_94 in mem offset_illegal
              #                    occupy s1 with 2041496_0
    li      s1, 2041496
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_68_ret_of_isdigit_94
              #                    occupy s1 with temp_80_ptr2globl_100
    li      s1, 2001440
    add     s1,sp,s1
    lw      a2,0(s1)
              #                    free s1
              #                    store to temp_80_ptr2globl_100 in mem offset_illegal
              #                    occupy s1 with 2001440_0
    li      s1, 2001440
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_80_ptr2globl_100
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s5 with 1881384_0
    li      s5, 1881384
    add     s5,sp,s5
    sd      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_92_array_ptr_106
              #                    occupy s5 with temp_90_ptr2globl_106
    li      s5, 1921396
    add     s5,sp,s5
    lw      s1,0(s5)
              #                    free s5
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s7 with 1961440_0
    li      s7, 1961440
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_81_ptr2globl_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s5 with 1921396_0
    li      s5, 1921396
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_90_ptr2globl_106
              #                    occupy s5 with temp_91_ptr2globl_106
    li      s5, 1881396
    add     s5,sp,s5
    lw      s7,0(s5)
              #                    free s5
    j       .branch_false_107
              #                    regtab     a0:Freed { symidx: temp_95_ret_of_chapop_108, tracked: true } |     a2:Freed { symidx: temp_96_ptr2globl_110, tracked: true } |     a4:Freed { symidx: temp_97_cmp_110, tracked: true } | 
              #                          label while.body_111: 
.while.body_111:
              #                          new_var temp_98_ptr2globl_112:i32 
              #                          temp_98_ptr2globl_112 = load *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a3 with temp_98_ptr2globl_112
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_99_index_ptr_112:ptr->i32 
              #                          temp_99_index_ptr_112 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_98_ptr2globl_112)] 
              #                    occupy a5 with temp_99_index_ptr_112
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a3 with temp_98_ptr2globl_112
              #                    occupy a7 with _anonymous_of_get2_0_0
    mul     a7,a6,a3
              #                    free a6
              #                    free a3
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with _anonymous_of_get2_0_0
    la      s1, get2
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          store 32_0:i32 temp_99_index_ptr_112:ptr->i32 
              #                    occupy a5 with temp_99_index_ptr_112
              #                    occupy s2 with 32_0
    li      s2, 32
    sw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          mu get2_0:443 
              #                          get2_0 = chi get2_0:443 
              #                          new_var temp_100_ptr2globl_112:i32 
              #                          temp_100_ptr2globl_112 = load *ii_0:ptr->i32 
              #                    occupy s3 with *ii_0
              #                       load label ii as ptr to reg
    la      s3, ii
              #                    occupy reg s3 with *ii_0
              #                    occupy s4 with temp_100_ptr2globl_112
    lw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          new_var temp_101_arithop_112:i32 
              #                          temp_101_arithop_112 = Add i32 temp_100_ptr2globl_112, 1_0 
              #                    occupy s4 with temp_100_ptr2globl_112
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s5 with temp_101_arithop_112
    add     s5,s4,a6
              #                    free s4
              #                    free a6
              #                    free s5
              #                          new_var temp_102_index_ptr_112:ptr->i32 
              #                          temp_102_index_ptr_112 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_101_arithop_112)] 
              #                    occupy s6 with temp_102_index_ptr_112
    li      s6, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s5 with temp_101_arithop_112
              #                    occupy s7 with _anonymous_of_get2_0_0
    mul     s7,a6,s5
              #                    free a6
              #                    free s5
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s8 with _anonymous_of_get2_0_0
    la      s8, get2
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          new_var temp_103_ptr2globl_112:i32 
              #                          temp_103_ptr2globl_112 = load *c_0:ptr->i32 
              #                    occupy s9 with *c_0
              #                       load label c as ptr to reg
    la      s9, c
              #                    occupy reg s9 with *c_0
              #                    occupy s10 with temp_103_ptr2globl_112
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          store temp_103_ptr2globl_112:i32 temp_102_index_ptr_112:ptr->i32 
              #                    occupy s6 with temp_102_index_ptr_112
              #                    occupy s10 with temp_103_ptr2globl_112
    sw      s10,0(s6)
              #                    free s10
              #                    free s6
              #                          mu get2_0:458 
              #                          get2_0 = chi get2_0:458 
              #                          new_var temp_104_ptr2globl_112:i32 
              #                          temp_104_ptr2globl_112 = load *ii_0:ptr->i32 
              #                    occupy s11 with *ii_0
              #                       load label ii as ptr to reg
    la      s11, ii
              #                    occupy reg s11 with *ii_0
              #                    occupy a1 with temp_104_ptr2globl_112
    lw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          new_var temp_105_arithop_112:i32 
              #                          temp_105_arithop_112 = Add i32 temp_104_ptr2globl_112, 2_0 
              #                    occupy a1 with temp_104_ptr2globl_112
              #                    occupy a6 with 2_0
    li      a6, 2
              #                    occupy a7 with temp_105_arithop_112
    add     a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                          store temp_105_arithop_112:i32 *ii_0:ptr->i32 
              #                    occupy a6 with *ii_0
              #                       load label ii as ptr to reg
    la      a6, ii
              #                    occupy reg a6 with *ii_0
              #                    occupy a7 with temp_105_arithop_112
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_106_ret_of_chapop_112:i32 
              #                          temp_106_ret_of_chapop_112 =  Call i32 chapop_0() 
              #                    saved register dumping to mem
              #                    store to temp_100_ptr2globl_112 in mem offset_illegal
              #                    occupy s1 with 1881348_0
    li      s1, 1881348
    add     s1,sp,s1
    sw      s4,0(s1)
              #                    free s1
              #                    release s4 with temp_100_ptr2globl_112
              #                    store to temp_101_arithop_112 in mem offset_illegal
              #                    occupy s2 with 1881344_0
    li      s2, 1881344
    add     s2,sp,s2
    sw      s5,0(s2)
              #                    free s2
              #                    release s5 with temp_101_arithop_112
              #                    store to temp_102_index_ptr_112 in mem offset_illegal
              #                    occupy s3 with 1881336_0
    li      s3, 1881336
    add     s3,sp,s3
    sd      s6,0(s3)
              #                    free s3
              #                    release s6 with temp_102_index_ptr_112
              #                    store to temp_103_ptr2globl_112 in mem offset_illegal
              #                    occupy s4 with 1881332_0
    li      s4, 1881332
    add     s4,sp,s4
    sw      s10,0(s4)
              #                    free s4
              #                    release s10 with temp_103_ptr2globl_112
              #                    store to temp_95_ret_of_chapop_108 in mem offset_illegal
              #                    occupy a0 with 1881372_0
    li      a0, 1881372
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_95_ret_of_chapop_108
              #                    store to temp_104_ptr2globl_112 in mem offset_illegal
              #                    occupy a0 with 1881328_0
    li      a0, 1881328
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_104_ptr2globl_112
              #                    store to temp_96_ptr2globl_110 in mem offset_illegal
              #                    occupy a1 with 1881368_0
    li      a1, 1881368
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_96_ptr2globl_110
              #                    store to temp_98_ptr2globl_112 in mem offset_illegal
              #                    occupy a2 with 1881360_0
    li      a2, 1881360
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_98_ptr2globl_112
              #                    store to temp_97_cmp_110 in mem offset_illegal
              #                    occupy a3 with 1881367_0
    li      a3, 1881367
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_97_cmp_110
              #                    store to temp_99_index_ptr_112 in mem offset_illegal
              #                    occupy a4 with 1881352_0
    li      a4, 1881352
    add     a4,sp,a4
    sd      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_99_index_ptr_112
              #                    store to temp_105_arithop_112 in mem offset_illegal
              #                    occupy a5 with 1881324_0
    li      a5, 1881324
    add     a5,sp,a5
    sw      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_105_arithop_112
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    chapop
              #                    store to temp_106_ret_of_chapop_112 in mem offset_illegal
              #                    occupy a0 with 1881320_0
    li      a0, 1881320
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_106_ret_of_chapop_112:i32 *c_0:ptr->i32 
              #                    occupy a6 with *c_0
              #                       load label c as ptr to reg
    la      a6, c
              #                    occupy reg a6 with *c_0
              #                    occupy a0 with temp_106_ret_of_chapop_112
    sw      a0,0(a6)
              #                    free a0
              #                    free a6
              #                          jump label: while.head_111 
              #                    store to temp_106_ret_of_chapop_112 in mem offset_illegal
              #                    occupy a0 with 1881320_0
    li      a0, 1881320
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_106_ret_of_chapop_112
              #                    occupy a0 with _anonymous_of_temp_95_ret_of_chapop_108_0
              #                    load from temp_95_ret_of_chapop_108 in mem

              #                    occupy a1 with temp_95_ret_of_chapop_108
    li      a1, 1881372
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a1:Freed { symidx: temp_93_array_ele_106, tracked: true } |     a2:Freed { symidx: temp_80_ptr2globl_100, tracked: true } |     a3:Freed { symidx: temp_85_ptr2globl_103, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_false_107: 
.branch_false_107:
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a1:Freed { symidx: temp_93_array_ele_106, tracked: true } |     a2:Freed { symidx: temp_80_ptr2globl_100, tracked: true } |     a3:Freed { symidx: temp_85_ptr2globl_103, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_107_ptr2globl_117:i32 
              #                          temp_107_ptr2globl_117 = load *i_0:ptr->i32 
              #                    occupy s5 with *i_0
              #                       load label i as ptr to reg
    la      s5, i
              #                    occupy reg s5 with *i_0
              #                    store to temp_68_ret_of_isdigit_94 in mem offset_illegal
              #                    occupy a0 with 2041496_0
    li      a0, 2041496
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_68_ret_of_isdigit_94
              #                    occupy a0 with temp_107_ptr2globl_117
    lw      a0,0(s5)
              #                    free a0
              #                    free s5
              #                          new_var temp_108_ptr2globl_117:Array:i32:[Some(10000_0)] 
              #                          temp_108_ptr2globl_117 = load *get_0:ptr->i32 
              #                    occupy s5 with *get_0
              #                       load label get as ptr to reg
    la      s5, get
              #                    occupy reg s5 with *get_0
              #                    store to temp_107_ptr2globl_117 in mem offset_illegal
              #                    occupy a0 with 1881316_0
    li      a0, 1881316
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_107_ptr2globl_117
              #                    occupy a0 with temp_108_ptr2globl_117
    lw      a0,0(s5)
              #                    free a0
              #                    free s5
              #                          new_var temp_109_array_ptr_117:ptr->i32 
              #                          temp_109_array_ptr_117 = getelementptr temp_108_ptr2globl_117:Array:i32:[Some(10000_0)] [Some(temp_107_ptr2globl_117)] 
              #                    occupy s5 with temp_109_array_ptr_117
    li      s5, 0
              #                    store to temp_108_ptr2globl_117 in mem offset_illegal
              #                    occupy a0 with 1841316_0
    li      a0, 1841316
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_108_ptr2globl_117
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_93_array_ele_106 in mem offset_illegal
              #                    occupy a1 with 1881380_0
    li      a1, 1881380
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_93_array_ele_106
              #                    occupy a1 with temp_107_ptr2globl_117
              #                    load from temp_107_ptr2globl_117 in mem

              #                    occupy a1 with temp_107_ptr2globl_117
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_80_ptr2globl_100 in mem offset_illegal
              #                    occupy a2 with 2001440_0
    li      a2, 2001440
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_80_ptr2globl_100
              #                    occupy a2 with _anonymous_of_temp_108_ptr2globl_117_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s5,s5,a2
              #                    free a2
    slli s5,s5,2
    add     s5,s5,sp
              #                    occupy a0 with 1841316_0
    li      a0, 1841316
    li      a0, 1841316
    add     s5,a0,s5
              #                    free a0
              #                    free s5
              #                          new_var temp_110_array_ele_117:i32 
              #                          temp_110_array_ele_117 = load temp_109_array_ptr_117:ptr->i32 
              #                    occupy s5 with temp_109_array_ptr_117
              #                    occupy a0 with temp_110_array_ele_117
    lw      a0,0(s5)
              #                    free a0
              #                    free s5
              #                          new_var temp_111_cmp_117:i1 
              #                          temp_111_cmp_117 = icmp i32 Eq temp_110_array_ele_117, 43_0 
              #                    occupy a0 with temp_110_array_ele_117
              #                    occupy a2 with 43_0
    li      a2, 43
              #                    store to temp_107_ptr2globl_117 in mem offset_illegal
              #                    occupy a1 with 1881316_0
    li      a1, 1881316
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_107_ptr2globl_117
              #                    occupy a1 with temp_111_cmp_117
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_111_cmp_117, label branch_true_118, label branch_false_118 
              #                    occupy a1 with temp_111_cmp_117
              #                    free a1
              #                    occupy a1 with temp_111_cmp_117
    bnez    a1, .branch_true_118
              #                    free a1
    j       .branch_false_118
              #                    regtab     a0:Freed { symidx: temp_110_array_ele_117, tracked: true } |     a1:Freed { symidx: temp_111_cmp_117, tracked: true } |     a3:Freed { symidx: temp_85_ptr2globl_103, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_true_118: 
.branch_true_118:
              #                          new_var temp_112_ptr2globl_120:i32 
              #                          temp_112_ptr2globl_120 = load *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    store to temp_110_array_ele_117 in mem offset_illegal
              #                    occupy a0 with 1841300_0
    li      a0, 1841300
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_110_array_ele_117
              #                    occupy a0 with temp_112_ptr2globl_120
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_113_ptr2globl_120:Array:i32:[Some(10000_0)] 
              #                          temp_113_ptr2globl_120 = load *chas_0:ptr->i32 
              #                    occupy a2 with *chas_0
              #                       load label chas as ptr to reg
    la      a2, chas
              #                    occupy reg a2 with *chas_0
              #                    store to temp_112_ptr2globl_120 in mem offset_illegal
              #                    occupy a0 with 1841292_0
    li      a0, 1841292
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_112_ptr2globl_120
              #                    occupy a0 with temp_113_ptr2globl_120
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_114_array_ptr_120:ptr->i32 
              #                          temp_114_array_ptr_120 = getelementptr temp_113_ptr2globl_120:Array:i32:[Some(10000_0)] [Some(temp_112_ptr2globl_120)] 
              #                    occupy a2 with temp_114_array_ptr_120
    li      a2, 0
              #                    store to temp_113_ptr2globl_120 in mem offset_illegal
              #                    occupy a0 with 1801292_0
    li      a0, 1801292
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_113_ptr2globl_120
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_111_cmp_117 in mem offset_illegal
              #                    occupy a1 with 1841299_0
    li      a1, 1841299
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_111_cmp_117
              #                    occupy a1 with temp_112_ptr2globl_120
              #                    load from temp_112_ptr2globl_120 in mem

              #                    occupy a1 with temp_112_ptr2globl_120
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_85_ptr2globl_103 in mem offset_illegal
              #                    occupy a3 with 1961420_0
    li      a3, 1961420
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_85_ptr2globl_103
              #                    occupy a3 with _anonymous_of_temp_113_ptr2globl_120_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a0 with 1801292_0
    li      a0, 1801292
    li      a0, 1801292
    add     a2,a0,a2
              #                    free a0
              #                    free a2
              #                          new_var temp_115_array_ele_120:i32 
              #                          temp_115_array_ele_120 = load temp_114_array_ptr_120:ptr->i32 
              #                    occupy a2 with temp_114_array_ptr_120
              #                    occupy a0 with temp_115_array_ele_120
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_116_cmp_120:i1 
              #                          temp_116_cmp_120 = icmp i32 Eq temp_115_array_ele_120, 94_0 
              #                    occupy a0 with temp_115_array_ele_120
              #                    occupy a3 with 94_0
    li      a3, 94
              #                    store to temp_112_ptr2globl_120 in mem offset_illegal
              #                    occupy a1 with 1841292_0
    li      a1, 1841292
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_112_ptr2globl_120
              #                    occupy a1 with temp_116_cmp_120
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_117_ptr2globl_120:i32 
              #                          temp_117_ptr2globl_120 = load *chat_0:ptr->i32 
              #                    occupy a3 with *chat_0
              #                       load label chat as ptr to reg
    la      a3, chat
              #                    occupy reg a3 with *chat_0
              #                    store to temp_115_array_ele_120 in mem offset_illegal
              #                    occupy a0 with 1801276_0
    li      a0, 1801276
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_115_array_ele_120
              #                    occupy a0 with temp_117_ptr2globl_120
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_118_ptr2globl_120:Array:i32:[Some(10000_0)] 
              #                          temp_118_ptr2globl_120 = load *chas_0:ptr->i32 
              #                    occupy a3 with *chas_0
              #                       load label chas as ptr to reg
    la      a3, chas
              #                    occupy reg a3 with *chas_0
              #                    store to temp_117_ptr2globl_120 in mem offset_illegal
              #                    occupy a0 with 1801268_0
    li      a0, 1801268
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_117_ptr2globl_120
              #                    occupy a0 with temp_118_ptr2globl_120
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_119_array_ptr_120:ptr->i32 
              #                          temp_119_array_ptr_120 = getelementptr temp_118_ptr2globl_120:Array:i32:[Some(10000_0)] [Some(temp_117_ptr2globl_120)] 
              #                    occupy a3 with temp_119_array_ptr_120
    li      a3, 0
              #                    store to temp_118_ptr2globl_120 in mem offset_illegal
              #                    occupy a0 with 1761268_0
    li      a0, 1761268
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_118_ptr2globl_120
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_116_cmp_120 in mem offset_illegal
              #                    occupy a1 with 1801275_0
    li      a1, 1801275
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_116_cmp_120
              #                    occupy a1 with temp_117_ptr2globl_120
              #                    load from temp_117_ptr2globl_120 in mem

              #                    occupy a1 with temp_117_ptr2globl_120
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_114_array_ptr_120 in mem offset_illegal
              #                    occupy a2 with 1801280_0
    li      a2, 1801280
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_114_array_ptr_120
              #                    occupy a2 with _anonymous_of_temp_118_ptr2globl_120_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a0 with 1761268_0
    li      a0, 1761268
    li      a0, 1761268
    add     a3,a0,a3
              #                    free a0
              #                    free a3
              #                          new_var temp_120_array_ele_120:i32 
              #                          temp_120_array_ele_120 = load temp_119_array_ptr_120:ptr->i32 
              #                    occupy a3 with temp_119_array_ptr_120
              #                    occupy a0 with temp_120_array_ele_120
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_121_cmp_120:i1 
              #                          temp_121_cmp_120 = icmp i32 Eq temp_120_array_ele_120, 37_0 
              #                    occupy a0 with temp_120_array_ele_120
              #                    occupy a2 with 37_0
    li      a2, 37
              #                    store to temp_117_ptr2globl_120 in mem offset_illegal
              #                    occupy a1 with 1801268_0
    li      a1, 1801268
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_117_ptr2globl_120
              #                    occupy a1 with temp_121_cmp_120
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_122_logic_120:i1 
              #                          temp_122_logic_120 = Or i1 temp_121_cmp_120, temp_116_cmp_120 
              #                    occupy a1 with temp_121_cmp_120
              #                    occupy a2 with temp_116_cmp_120
              #                    load from temp_116_cmp_120 in mem
              #                    occupy a2 with temp_116_cmp_120
    add     a2,sp,a2
    lb      a2,0(a2)
              #                    free a2
              #                    occupy a2 with temp_116_cmp_120
              #                    free a1
              #                    free a2
              #                    free a2
              #                          new_var temp_123_ptr2globl_120:i32 
              #                          temp_123_ptr2globl_120 = load *chat_0:ptr->i32 
              #                    store to temp_120_array_ele_120 in mem offset_illegal
              #                    occupy a0 with 1761252_0
    li      a0, 1761252
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_120_array_ele_120
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_121_cmp_120 in mem offset_illegal
              #                    occupy a1 with 1761251_0
    li      a1, 1761251
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_121_cmp_120
              #                    occupy a1 with temp_123_ptr2globl_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_124_ptr2globl_120:Array:i32:[Some(10000_0)] 
              #                          temp_124_ptr2globl_120 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_123_ptr2globl_120 in mem offset_illegal
              #                    occupy a1 with 1761244_0
    li      a1, 1761244
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_123_ptr2globl_120
              #                    occupy a1 with temp_124_ptr2globl_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_125_array_ptr_120:ptr->i32 
              #                          temp_125_array_ptr_120 = getelementptr temp_124_ptr2globl_120:Array:i32:[Some(10000_0)] [Some(temp_123_ptr2globl_120)] 
              #                    occupy a0 with temp_125_array_ptr_120
    li      a0, 0
              #                    store to temp_124_ptr2globl_120 in mem offset_illegal
              #                    occupy a1 with 1721244_0
    li      a1, 1721244
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_124_ptr2globl_120
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_116_cmp_120 in mem offset_illegal
              #                    occupy a2 with 1801275_0
    li      a2, 1801275
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_116_cmp_120
              #                    occupy a2 with temp_123_ptr2globl_120
              #                    load from temp_123_ptr2globl_120 in mem

              #                    occupy a2 with temp_123_ptr2globl_120
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_119_array_ptr_120 in mem offset_illegal
              #                    occupy a3 with 1761256_0
    li      a3, 1761256
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_119_array_ptr_120
              #                    occupy a3 with _anonymous_of_temp_124_ptr2globl_120_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 1721244_0
    li      a1, 1721244
    li      a1, 1721244
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_126_array_ele_120:i32 
              #                          temp_126_array_ele_120 = load temp_125_array_ptr_120:ptr->i32 
              #                    occupy a0 with temp_125_array_ptr_120
              #                    occupy a1 with temp_126_array_ele_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_127_cmp_120:i1 
              #                          temp_127_cmp_120 = icmp i32 Eq temp_126_array_ele_120, 47_0 
              #                    occupy a1 with temp_126_array_ele_120
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    store to temp_125_array_ptr_120 in mem offset_illegal
              #                    occupy a0 with 1721232_0
    li      a0, 1721232
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_125_array_ptr_120
              #                    occupy a0 with temp_127_cmp_120
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_128_logic_120:i1 
              #                          temp_128_logic_120 = Or i1 temp_127_cmp_120, temp_122_logic_120 
              #                    occupy a0 with temp_127_cmp_120
              #                    occupy a3 with temp_122_logic_120
              #                    load from temp_122_logic_120 in mem
              #                    occupy a3 with temp_122_logic_120
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_122_logic_120
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_129_ptr2globl_120:i32 
              #                          temp_129_ptr2globl_120 = load *chat_0:ptr->i32 
              #                    store to temp_127_cmp_120 in mem offset_illegal
              #                    occupy a0 with 1721227_0
    li      a0, 1721227
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_127_cmp_120
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_126_array_ele_120 in mem offset_illegal
              #                    occupy a1 with 1721228_0
    li      a1, 1721228
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_126_array_ele_120
              #                    occupy a1 with temp_129_ptr2globl_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_130_ptr2globl_120:Array:i32:[Some(10000_0)] 
              #                          temp_130_ptr2globl_120 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_129_ptr2globl_120 in mem offset_illegal
              #                    occupy a1 with 1721220_0
    li      a1, 1721220
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_129_ptr2globl_120
              #                    occupy a1 with temp_130_ptr2globl_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_131_array_ptr_120:ptr->i32 
              #                          temp_131_array_ptr_120 = getelementptr temp_130_ptr2globl_120:Array:i32:[Some(10000_0)] [Some(temp_129_ptr2globl_120)] 
              #                    occupy a0 with temp_131_array_ptr_120
    li      a0, 0
              #                    store to temp_130_ptr2globl_120 in mem offset_illegal
              #                    occupy a1 with 1681220_0
    li      a1, 1681220
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_130_ptr2globl_120
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_123_ptr2globl_120 in mem offset_illegal
              #                    occupy a2 with 1761244_0
    li      a2, 1761244
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_123_ptr2globl_120
              #                    occupy a2 with temp_129_ptr2globl_120
              #                    load from temp_129_ptr2globl_120 in mem

              #                    occupy a2 with temp_129_ptr2globl_120
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_122_logic_120 in mem offset_illegal
              #                    occupy a3 with 1761250_0
    li      a3, 1761250
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_122_logic_120
              #                    occupy a3 with _anonymous_of_temp_130_ptr2globl_120_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 1681220_0
    li      a1, 1681220
    li      a1, 1681220
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_132_array_ele_120:i32 
              #                          temp_132_array_ele_120 = load temp_131_array_ptr_120:ptr->i32 
              #                    occupy a0 with temp_131_array_ptr_120
              #                    occupy a1 with temp_132_array_ele_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_133_cmp_120:i1 
              #                          temp_133_cmp_120 = icmp i32 Eq temp_132_array_ele_120, 42_0 
              #                    occupy a1 with temp_132_array_ele_120
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_131_array_ptr_120 in mem offset_illegal
              #                    occupy a0 with 1681208_0
    li      a0, 1681208
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_131_array_ptr_120
              #                    occupy a0 with temp_133_cmp_120
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_134_logic_120:i1 
              #                          temp_134_logic_120 = Or i1 temp_133_cmp_120, temp_128_logic_120 
              #                    occupy a0 with temp_133_cmp_120
              #                    occupy a3 with temp_128_logic_120
              #                    load from temp_128_logic_120 in mem
              #                    occupy a3 with temp_128_logic_120
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_128_logic_120
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_135_ptr2globl_120:i32 
              #                          temp_135_ptr2globl_120 = load *chat_0:ptr->i32 
              #                    store to temp_133_cmp_120 in mem offset_illegal
              #                    occupy a0 with 1681203_0
    li      a0, 1681203
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_133_cmp_120
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_132_array_ele_120 in mem offset_illegal
              #                    occupy a1 with 1681204_0
    li      a1, 1681204
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_132_array_ele_120
              #                    occupy a1 with temp_135_ptr2globl_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_136_ptr2globl_120:Array:i32:[Some(10000_0)] 
              #                          temp_136_ptr2globl_120 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_135_ptr2globl_120 in mem offset_illegal
              #                    occupy a1 with 1681196_0
    li      a1, 1681196
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_135_ptr2globl_120
              #                    occupy a1 with temp_136_ptr2globl_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_137_array_ptr_120:ptr->i32 
              #                          temp_137_array_ptr_120 = getelementptr temp_136_ptr2globl_120:Array:i32:[Some(10000_0)] [Some(temp_135_ptr2globl_120)] 
              #                    occupy a0 with temp_137_array_ptr_120
    li      a0, 0
              #                    store to temp_136_ptr2globl_120 in mem offset_illegal
              #                    occupy a1 with 1641196_0
    li      a1, 1641196
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_136_ptr2globl_120
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_129_ptr2globl_120 in mem offset_illegal
              #                    occupy a2 with 1721220_0
    li      a2, 1721220
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_129_ptr2globl_120
              #                    occupy a2 with temp_135_ptr2globl_120
              #                    load from temp_135_ptr2globl_120 in mem

              #                    occupy a2 with temp_135_ptr2globl_120
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_128_logic_120 in mem offset_illegal
              #                    occupy a3 with 1721226_0
    li      a3, 1721226
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_128_logic_120
              #                    occupy a3 with _anonymous_of_temp_136_ptr2globl_120_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 1641196_0
    li      a1, 1641196
    li      a1, 1641196
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_138_array_ele_120:i32 
              #                          temp_138_array_ele_120 = load temp_137_array_ptr_120:ptr->i32 
              #                    occupy a0 with temp_137_array_ptr_120
              #                    occupy a1 with temp_138_array_ele_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_139_cmp_120:i1 
              #                          temp_139_cmp_120 = icmp i32 Eq temp_138_array_ele_120, 45_0 
              #                    occupy a1 with temp_138_array_ele_120
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    store to temp_137_array_ptr_120 in mem offset_illegal
              #                    occupy a0 with 1641184_0
    li      a0, 1641184
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_137_array_ptr_120
              #                    occupy a0 with temp_139_cmp_120
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_140_logic_120:i1 
              #                          temp_140_logic_120 = Or i1 temp_139_cmp_120, temp_134_logic_120 
              #                    occupy a0 with temp_139_cmp_120
              #                    occupy a3 with temp_134_logic_120
              #                    load from temp_134_logic_120 in mem
              #                    occupy a3 with temp_134_logic_120
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_134_logic_120
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_141_ptr2globl_120:i32 
              #                          temp_141_ptr2globl_120 = load *chat_0:ptr->i32 
              #                    store to temp_139_cmp_120 in mem offset_illegal
              #                    occupy a0 with 1641179_0
    li      a0, 1641179
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_139_cmp_120
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_138_array_ele_120 in mem offset_illegal
              #                    occupy a1 with 1641180_0
    li      a1, 1641180
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_138_array_ele_120
              #                    occupy a1 with temp_141_ptr2globl_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_142_ptr2globl_120:Array:i32:[Some(10000_0)] 
              #                          temp_142_ptr2globl_120 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_141_ptr2globl_120 in mem offset_illegal
              #                    occupy a1 with 1641172_0
    li      a1, 1641172
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_141_ptr2globl_120
              #                    occupy a1 with temp_142_ptr2globl_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_143_array_ptr_120:ptr->i32 
              #                          temp_143_array_ptr_120 = getelementptr temp_142_ptr2globl_120:Array:i32:[Some(10000_0)] [Some(temp_141_ptr2globl_120)] 
              #                    occupy a0 with temp_143_array_ptr_120
    li      a0, 0
              #                    store to temp_142_ptr2globl_120 in mem offset_illegal
              #                    occupy a1 with 1601172_0
    li      a1, 1601172
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_142_ptr2globl_120
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_135_ptr2globl_120 in mem offset_illegal
              #                    occupy a2 with 1681196_0
    li      a2, 1681196
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_135_ptr2globl_120
              #                    occupy a2 with temp_141_ptr2globl_120
              #                    load from temp_141_ptr2globl_120 in mem

              #                    occupy a2 with temp_141_ptr2globl_120
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_134_logic_120 in mem offset_illegal
              #                    occupy a3 with 1681202_0
    li      a3, 1681202
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_134_logic_120
              #                    occupy a3 with _anonymous_of_temp_142_ptr2globl_120_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 1601172_0
    li      a1, 1601172
    li      a1, 1601172
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_144_array_ele_120:i32 
              #                          temp_144_array_ele_120 = load temp_143_array_ptr_120:ptr->i32 
              #                    occupy a0 with temp_143_array_ptr_120
              #                    occupy a1 with temp_144_array_ele_120
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_145_cmp_120:i1 
              #                          temp_145_cmp_120 = icmp i32 Eq temp_144_array_ele_120, 43_0 
              #                    occupy a1 with temp_144_array_ele_120
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    store to temp_143_array_ptr_120 in mem offset_illegal
              #                    occupy a0 with 1601160_0
    li      a0, 1601160
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_143_array_ptr_120
              #                    occupy a0 with temp_145_cmp_120
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_146_logic_120:i1 
              #                          temp_146_logic_120 = Or i1 temp_145_cmp_120, temp_140_logic_120 
              #                    occupy a0 with temp_145_cmp_120
              #                    occupy a3 with temp_140_logic_120
              #                    load from temp_140_logic_120 in mem
              #                    occupy a3 with temp_140_logic_120
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_140_logic_120
              #                    free a0
              #                    free a3
              #                    free a3
              #                          br i1 temp_146_logic_120, label while.body_121, label while.exit_121 
              #                    store to temp_145_cmp_120 in mem offset_illegal
              #                    occupy a0 with 1601155_0
    li      a0, 1601155
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_145_cmp_120
              #                    occupy a0 with temp_146_logic_120
              #                    load from temp_146_logic_120 in mem
              #                    occupy a0 with temp_146_logic_120
    add     a0,sp,a0
    lb      a0,0(a0)
              #                    free a0
              #                    free a0
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy s6 with 1961427_0
    li      s6, 1961427
    add     s6,sp,s6
    sb      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_84_cmp_100
              #                    occupy a0 with temp_146_logic_120
    bnez    a0, .while.body_121
              #                    free a0
    j       .while.exit_121
              #                    regtab     a0:Freed { symidx: temp_146_logic_120, tracked: true } |     a1:Freed { symidx: temp_144_array_ele_120, tracked: true } |     a2:Freed { symidx: temp_141_ptr2globl_120, tracked: true } |     a3:Freed { symidx: temp_140_logic_120, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label while.body_121: 
.while.body_121:
              #                          new_var temp_147_ret_of_find_123:i32 
              #                          temp_147_ret_of_find_123 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s1 with 1921396_0
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_90_ptr2globl_106
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy s1 with 1921420_0
    li      s1, 1921420
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s2 with 1921408_0
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s3 with 1961428_0
    li      s3, 1961428
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy s4 with 1841304_0
    li      s4, 1841304
    add     s4,sp,s4
    sd      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_109_array_ptr_117
              #                    store to temp_91_ptr2globl_106 in mem offset_illegal
              #                    occupy s5 with 1881396_0
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_91_ptr2globl_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s6 with 1881384_0
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_92_array_ptr_106
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s7 with 1921404_0
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy s8 with 1881379_0
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_94_cmp_106
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s9 with 1921403_0
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_146_logic_120 in mem offset_illegal
              #                    occupy a0 with 1601154_0
    li      a0, 1601154
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_146_logic_120
              #                    store to temp_144_array_ele_120 in mem offset_illegal
              #                    occupy a0 with 1601156_0
    li      a0, 1601156
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_144_array_ele_120
              #                    store to temp_141_ptr2globl_120 in mem offset_illegal
              #                    occupy a1 with 1641172_0
    li      a1, 1641172
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_141_ptr2globl_120
              #                    store to temp_140_logic_120 in mem offset_illegal
              #                    occupy a2 with 1641178_0
    li      a2, 1641178
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_140_logic_120
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a3 with 1961440_0
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a4 with 2041500_0
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a5 with 1961432_0
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a6 with 2041495_0
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                    store to temp_147_ret_of_find_123 in mem offset_illegal
              #                    occupy a0 with 1601148_0
    li      a0, 1601148
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_148_cmp_123:i1 
              #                          temp_148_cmp_123 = icmp i32 Eq temp_147_ret_of_find_123, 0_0 
              #                    occupy a0 with temp_147_ret_of_find_123
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s10 with temp_148_cmp_123
    xor     s10,a0,a7
    seqz    s10, s10
              #                    free a0
              #                    free a7
              #                    free s10
              #                          br i1 temp_148_cmp_123, label branch_true_124, label branch_false_124 
              #                    occupy s10 with temp_148_cmp_123
              #                    free s10
              #                    occupy s10 with temp_148_cmp_123
    bnez    s10, .branch_true_124
              #                    free s10
    j       .branch_false_124
              #                    regtab     a0:Freed { symidx: temp_147_ret_of_find_123, tracked: true } |     s10:Freed { symidx: temp_148_cmp_123, tracked: true } | 
              #                          label branch_true_124: 
.branch_true_124:
              #                          jump label: while.exit_121 
              #                    store to temp_148_cmp_123 in mem offset_illegal
              #                    occupy a1 with 1601147_0
    li      a1, 1601147
    add     a1,sp,a1
    sb      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_148_cmp_123
              #                    store to temp_147_ret_of_find_123 in mem offset_illegal
              #                    occupy a0 with 1601148_0
    li      a0, 1601148
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_147_ret_of_find_123
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a0 with temp_86_ptr2globl_103
    li      a0, 1921420
    add     a0,sp,a0
    lw      s2,0(a0)
              #                    free a0
              #                    occupy a1 with _anonymous_of_temp_144_array_ele_120_0
              #                    load from temp_144_array_ele_120 in mem

              #                    occupy a2 with temp_144_array_ele_120
    li      a2, 1601156
    add     a2,sp,a2
    lw      a1,0(a2)
              #                    free a2
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a3 with temp_94_cmp_106
    li      a3, 1881379
    add     a3,sp,a3
    lb      s10,0(a3)
              #                    free a3
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a4 with temp_87_array_ptr_103
    li      a4, 1921408
    add     a4,sp,a4
    ld      s3,0(a4)
              #                    free a4
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a5 with temp_88_array_ele_103
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
              #                    free a5
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a0 with 1921420_0
    li      a0, 1921420
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_86_ptr2globl_103
              #                    occupy a0 with _anonymous_of_temp_146_logic_120_0
              #                    load from temp_146_logic_120 in mem
              #                    occupy a6 with temp_146_logic_120
    li      a6, 1601154
    add     a6,sp,a6
    lb      a0,0(a6)
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a4 with 1921408_0
    li      a4, 1921408
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_87_array_ptr_103
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s6 with temp_83_array_ele_100
    li      s6, 1961428
    add     s6,sp,s6
    lw      s4,0(s6)
              #                    free s6
              #                    store to temp_146_logic_120 in mem offset_illegal
              #                    occupy a6 with 1601154_0
    li      a6, 1601154
    add     a6,sp,a6
    sb      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_146_logic_120
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s7 with temp_82_array_ptr_100
    li      s7, 1961432
    add     s7,sp,s7
    ld      a6,0(s7)
              #                    free s7
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a5 with 1921404_0
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_88_array_ele_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    occupy s8 with temp_67_array_ele_94
    li      s8, 2041500
    add     s8,sp,s8
    lw      a5,0(s8)
              #                    free s8
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_144_array_ele_120 in mem offset_illegal
              #                    occupy a2 with 1601156_0
    li      a2, 1601156
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_144_array_ele_120
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy s8 with 2041500_0
    li      s8, 2041500
    add     s8,sp,s8
    sw      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_67_array_ele_94
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a3 with 1881379_0
    li      a3, 1881379
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_94_cmp_106
              #                    occupy a3 with _anonymous_of_temp_140_logic_120_0
              #                    load from temp_140_logic_120 in mem
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with temp_140_logic_120
    li      a2, 1641178
    add     a2,sp,a2
    lb      a3,0(a2)
              #                    free a2
              #                    store to temp_140_logic_120 in mem offset_illegal
              #                    occupy a2 with 1641178_0
    li      a2, 1641178
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_140_logic_120
              #                    occupy a2 with _anonymous_of_temp_141_ptr2globl_120_0
              #                    load from temp_141_ptr2globl_120 in mem

              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy s1 with 2041495_0
    li      s1, 2041495
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with temp_141_ptr2globl_120
    li      s1, 1641172
    add     s1,sp,s1
    lw      a2,0(s1)
              #                    free s1
              #                    store to temp_141_ptr2globl_120 in mem offset_illegal
              #                    occupy s1 with 1641172_0
    li      s1, 1641172
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_141_ptr2globl_120
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s6 with 1961428_0
    li      s6, 1961428
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_83_array_ele_100
              #                    occupy s6 with temp_90_ptr2globl_106
    li      s6, 1921396
    add     s6,sp,s6
    lw      s1,0(s6)
              #                    free s6
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s7 with 1961432_0
    li      s7, 1961432
    add     s7,sp,s7
    sd      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_82_array_ptr_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s6 with 1921396_0
    li      s6, 1921396
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_90_ptr2globl_106
              #                    occupy s6 with temp_91_ptr2globl_106
    li      s6, 1881396
    add     s6,sp,s6
    lw      s7,0(s6)
              #                    free s6
    j       .while.exit_121
              #                    regtab     a0:Freed { symidx: temp_146_logic_120, tracked: true } |     a1:Freed { symidx: temp_144_array_ele_120, tracked: true } |     a2:Freed { symidx: temp_141_ptr2globl_120, tracked: true } |     a3:Freed { symidx: temp_140_logic_120, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label while.exit_121: 
.while.exit_121:
              #                           Call void chapush_0(43_0) 
              #                    saved register dumping to mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s1 with 1921396_0
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_90_ptr2globl_106
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy s1 with 1921420_0
    li      s1, 1921420
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s2 with 1921408_0
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s3 with 1961428_0
    li      s3, 1961428
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy s4 with 1841304_0
    li      s4, 1841304
    add     s4,sp,s4
    sd      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_109_array_ptr_117
              #                    store to temp_91_ptr2globl_106 in mem offset_illegal
              #                    occupy s5 with 1881396_0
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_91_ptr2globl_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s6 with 1881384_0
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_92_array_ptr_106
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s7 with 1921404_0
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy s8 with 1881379_0
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_94_cmp_106
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s9 with 1921403_0
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_146_logic_120 in mem offset_illegal
              #                    occupy a0 with 1601154_0
    li      a0, 1601154
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_146_logic_120
              #                    store to temp_144_array_ele_120 in mem offset_illegal
              #                    occupy a0 with 1601156_0
    li      a0, 1601156
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_144_array_ele_120
              #                    store to temp_141_ptr2globl_120 in mem offset_illegal
              #                    occupy a1 with 1641172_0
    li      a1, 1641172
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_141_ptr2globl_120
              #                    store to temp_140_logic_120 in mem offset_illegal
              #                    occupy a2 with 1641178_0
    li      a2, 1641178
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_140_logic_120
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a3 with 1961440_0
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a4 with 2041500_0
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a5 with 1961432_0
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a6 with 2041495_0
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_43_0_0
    li      a0, 43
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_118 
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a0 with temp_84_cmp_100
    li      a0, 1961427
    add     a0,sp,a0
    lb      s6,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a1 with temp_86_ptr2globl_103
    li      a1, 1921420
    add     a1,sp,a1
    lw      s2,0(a1)
              #                    free a1
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a1 with 1921420_0
    li      a1, 1921420
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_86_ptr2globl_103
              #                    occupy a1 with _anonymous_of_temp_111_cmp_117_0
              #                    load from temp_111_cmp_117 in mem
              #                    occupy a2 with temp_111_cmp_117
    li      a2, 1841299
    add     a2,sp,a2
    lb      a1,0(a2)
              #                    free a2
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a3 with temp_94_cmp_106
    li      a3, 1881379
    add     a3,sp,a3
    lb      s10,0(a3)
              #                    free a3
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a4 with temp_87_array_ptr_103
    li      a4, 1921408
    add     a4,sp,a4
    ld      s3,0(a4)
              #                    free a4
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a5 with temp_88_array_ele_103
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
              #                    free a5
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a0 with 1961427_0
    li      a0, 1961427
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84_cmp_100
              #                    occupy a0 with _anonymous_of_temp_110_array_ele_117_0
              #                    load from temp_110_array_ele_117 in mem

              #                    occupy a6 with temp_110_array_ele_117
    li      a6, 1841300
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a4 with 1921408_0
    li      a4, 1921408
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_87_array_ptr_103
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s7 with temp_83_array_ele_100
    li      s7, 1961428
    add     s7,sp,s7
    lw      s4,0(s7)
              #                    free s7
              #                    store to temp_110_array_ele_117 in mem offset_illegal
              #                    occupy a6 with 1841300_0
    li      a6, 1841300
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_110_array_ele_117
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s8 with temp_82_array_ptr_100
    li      s8, 1961432
    add     s8,sp,s8
    ld      a6,0(s8)
              #                    free s8
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a5 with 1921404_0
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_88_array_ele_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    store to temp_111_cmp_117 in mem offset_illegal
              #                    occupy a2 with 1841299_0
    li      a2, 1841299
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_111_cmp_117
              #                    occupy a2 with temp_67_array_ele_94
    li      a2, 2041500
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a2 with 2041500_0
    li      a2, 2041500
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_67_array_ele_94
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s8 with 1961432_0
    li      s8, 1961432
    add     s8,sp,s8
    sd      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_82_array_ptr_100
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a3 with 1881379_0
    li      a3, 1881379
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_94_cmp_106
              #                    occupy a3 with _anonymous_of_temp_85_ptr2globl_103_0
              #                    load from temp_85_ptr2globl_103 in mem

              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with temp_85_ptr2globl_103
    li      a2, 1961420
    add     a2,sp,a2
    lw      a3,0(a2)
              #                    free a2
              #                    store to temp_85_ptr2globl_103 in mem offset_illegal
              #                    occupy a2 with 1961420_0
    li      a2, 1961420
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_85_ptr2globl_103
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a2 with 2041495_0
    li      a2, 2041495
    add     a2,sp,a2
    sb      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    occupy a2 with temp_90_ptr2globl_106
    li      a2, 1921396
    add     a2,sp,a2
    lw      s1,0(a2)
              #                    free a2
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s7 with 1961428_0
    li      s7, 1961428
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_83_array_ele_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy a2 with 1921396_0
    li      a2, 1921396
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_90_ptr2globl_106
              #                    occupy a2 with temp_91_ptr2globl_106
    li      a2, 1881396
    add     a2,sp,a2
    lw      s7,0(a2)
              #                    free a2
    j       .branch_false_118
              #                    regtab     a0:Freed { symidx: temp_147_ret_of_find_123, tracked: true } |     s10:Freed { symidx: temp_148_cmp_123, tracked: true } | 
              #                          label branch_false_124: 
.branch_false_124:
              #                          jump label: branch_true_118 
              #                    store to temp_148_cmp_123 in mem offset_illegal
              #                    occupy a1 with 1601147_0
    li      a1, 1601147
    add     a1,sp,a1
    sb      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_148_cmp_123
              #                    store to temp_147_ret_of_find_123 in mem offset_illegal
              #                    occupy a0 with 1601148_0
    li      a0, 1601148
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_147_ret_of_find_123
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a0 with temp_84_cmp_100
    li      a0, 1961427
    add     a0,sp,a0
    lb      s6,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a2 with temp_86_ptr2globl_103
    li      a2, 1921420
    add     a2,sp,a2
    lw      s2,0(a2)
              #                    free a2
              #                    occupy a1 with _anonymous_of_temp_111_cmp_117_0
              #                    load from temp_111_cmp_117 in mem
              #                    occupy a3 with temp_111_cmp_117
    li      a3, 1841299
    add     a3,sp,a3
    lb      a1,0(a3)
              #                    free a3
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a4 with temp_94_cmp_106
    li      a4, 1881379
    add     a4,sp,a4
    lb      s10,0(a4)
              #                    free a4
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a5 with temp_87_array_ptr_103
    li      a5, 1921408
    add     a5,sp,a5
    ld      s3,0(a5)
              #                    free a5
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a6 with temp_88_array_ele_103
    li      a6, 1921404
    add     a6,sp,a6
    lw      s9,0(a6)
              #                    free a6
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a0 with 1961427_0
    li      a0, 1961427
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84_cmp_100
              #                    occupy a0 with _anonymous_of_temp_110_array_ele_117_0
              #                    load from temp_110_array_ele_117 in mem

              #                    occupy a7 with temp_110_array_ele_117
    li      a7, 1841300
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    store to temp_110_array_ele_117 in mem offset_illegal
              #                    occupy a7 with 1841300_0
    li      a7, 1841300
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_110_array_ele_117
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a4 with 1881379_0
    li      a4, 1881379
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_94_cmp_106
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s7 with temp_83_array_ele_100
    li      s7, 1961428
    add     s7,sp,s7
    lw      s4,0(s7)
              #                    free s7
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a6 with 1921404_0
    li      a6, 1921404
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_88_array_ele_103
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s8 with temp_82_array_ptr_100
    li      s8, 1961432
    add     s8,sp,s8
    ld      a6,0(s8)
              #                    free s8
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a5 with 1921408_0
    li      a5, 1921408
    add     a5,sp,a5
    sd      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_87_array_ptr_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a2 with 1921420_0
    li      a2, 1921420
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_86_ptr2globl_103
              #                    occupy a2 with temp_67_array_ele_94
    li      a2, 2041500
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a2 with 2041500_0
    li      a2, 2041500
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_67_array_ele_94
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s8 with 1961432_0
    li      s8, 1961432
    add     s8,sp,s8
    sd      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_82_array_ptr_100
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_111_cmp_117 in mem offset_illegal
              #                    occupy a3 with 1841299_0
    li      a3, 1841299
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_111_cmp_117
              #                    occupy a3 with _anonymous_of_temp_85_ptr2globl_103_0
              #                    load from temp_85_ptr2globl_103 in mem

              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with temp_85_ptr2globl_103
    li      a2, 1961420
    add     a2,sp,a2
    lw      a3,0(a2)
              #                    free a2
              #                    store to temp_85_ptr2globl_103 in mem offset_illegal
              #                    occupy a2 with 1961420_0
    li      a2, 1961420
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_85_ptr2globl_103
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a2 with 2041495_0
    li      a2, 2041495
    add     a2,sp,a2
    sb      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    occupy a2 with temp_90_ptr2globl_106
    li      a2, 1921396
    add     a2,sp,a2
    lw      s1,0(a2)
              #                    free a2
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s7 with 1961428_0
    li      s7, 1961428
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_83_array_ele_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy a2 with 1921396_0
    li      a2, 1921396
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_90_ptr2globl_106
              #                    occupy a2 with temp_91_ptr2globl_106
    li      a2, 1881396
    add     a2,sp,a2
    lw      s7,0(a2)
              #                    free a2
    j       .branch_true_118
              #                    regtab     a0:Freed { symidx: temp_110_array_ele_117, tracked: true } |     a1:Freed { symidx: temp_111_cmp_117, tracked: true } |     a3:Freed { symidx: temp_85_ptr2globl_103, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_false_118: 
.branch_false_118:
              #                    regtab     a0:Freed { symidx: temp_110_array_ele_117, tracked: true } |     a1:Freed { symidx: temp_111_cmp_117, tracked: true } |     a3:Freed { symidx: temp_85_ptr2globl_103, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_149_ptr2globl_127:i32 
              #                          temp_149_ptr2globl_127 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    store to temp_110_array_ele_117 in mem offset_illegal
              #                    occupy a0 with 1841300_0
    li      a0, 1841300
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_110_array_ele_117
              #                    occupy a0 with temp_149_ptr2globl_127
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_150_ptr2globl_127:Array:i32:[Some(10000_0)] 
              #                          temp_150_ptr2globl_127 = load *get_0:ptr->i32 
              #                    occupy a2 with *get_0
              #                       load label get as ptr to reg
    la      a2, get
              #                    occupy reg a2 with *get_0
              #                    store to temp_149_ptr2globl_127 in mem offset_illegal
              #                    occupy a0 with 1601140_0
    li      a0, 1601140
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_149_ptr2globl_127
              #                    occupy a0 with temp_150_ptr2globl_127
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_151_array_ptr_127:ptr->i32 
              #                          temp_151_array_ptr_127 = getelementptr temp_150_ptr2globl_127:Array:i32:[Some(10000_0)] [Some(temp_149_ptr2globl_127)] 
              #                    occupy a2 with temp_151_array_ptr_127
    li      a2, 0
              #                    store to temp_150_ptr2globl_127 in mem offset_illegal
              #                    occupy a0 with 1561140_0
    li      a0, 1561140
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_150_ptr2globl_127
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_111_cmp_117 in mem offset_illegal
              #                    occupy a1 with 1841299_0
    li      a1, 1841299
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_111_cmp_117
              #                    occupy a1 with temp_149_ptr2globl_127
              #                    load from temp_149_ptr2globl_127 in mem

              #                    occupy a1 with temp_149_ptr2globl_127
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_85_ptr2globl_103 in mem offset_illegal
              #                    occupy a3 with 1961420_0
    li      a3, 1961420
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_85_ptr2globl_103
              #                    occupy a3 with _anonymous_of_temp_150_ptr2globl_127_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a0 with 1561140_0
    li      a0, 1561140
    li      a0, 1561140
    add     a2,a0,a2
              #                    free a0
              #                    free a2
              #                          new_var temp_152_array_ele_127:i32 
              #                          temp_152_array_ele_127 = load temp_151_array_ptr_127:ptr->i32 
              #                    occupy a2 with temp_151_array_ptr_127
              #                    occupy a0 with temp_152_array_ele_127
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_153_cmp_127:i1 
              #                          temp_153_cmp_127 = icmp i32 Eq temp_152_array_ele_127, 45_0 
              #                    occupy a0 with temp_152_array_ele_127
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    store to temp_149_ptr2globl_127 in mem offset_illegal
              #                    occupy a1 with 1601140_0
    li      a1, 1601140
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_149_ptr2globl_127
              #                    occupy a1 with temp_153_cmp_127
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          br i1 temp_153_cmp_127, label branch_true_128, label branch_false_128 
              #                    occupy a1 with temp_153_cmp_127
              #                    free a1
              #                    occupy a1 with temp_153_cmp_127
    bnez    a1, .branch_true_128
              #                    free a1
    j       .branch_false_128
              #                    regtab     a0:Freed { symidx: temp_152_array_ele_127, tracked: true } |     a1:Freed { symidx: temp_153_cmp_127, tracked: true } |     a2:Freed { symidx: temp_151_array_ptr_127, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_true_128: 
.branch_true_128:
              #                          new_var temp_154_ptr2globl_130:i32 
              #                          temp_154_ptr2globl_130 = load *chat_0:ptr->i32 
              #                    occupy a3 with *chat_0
              #                       load label chat as ptr to reg
    la      a3, chat
              #                    occupy reg a3 with *chat_0
              #                    store to temp_152_array_ele_127 in mem offset_illegal
              #                    occupy a0 with 1561124_0
    li      a0, 1561124
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_152_array_ele_127
              #                    occupy a0 with temp_154_ptr2globl_130
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_155_ptr2globl_130:Array:i32:[Some(10000_0)] 
              #                          temp_155_ptr2globl_130 = load *chas_0:ptr->i32 
              #                    occupy a3 with *chas_0
              #                       load label chas as ptr to reg
    la      a3, chas
              #                    occupy reg a3 with *chas_0
              #                    store to temp_154_ptr2globl_130 in mem offset_illegal
              #                    occupy a0 with 1561116_0
    li      a0, 1561116
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_154_ptr2globl_130
              #                    occupy a0 with temp_155_ptr2globl_130
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_156_array_ptr_130:ptr->i32 
              #                          temp_156_array_ptr_130 = getelementptr temp_155_ptr2globl_130:Array:i32:[Some(10000_0)] [Some(temp_154_ptr2globl_130)] 
              #                    occupy a3 with temp_156_array_ptr_130
    li      a3, 0
              #                    store to temp_155_ptr2globl_130 in mem offset_illegal
              #                    occupy a0 with 1521116_0
    li      a0, 1521116
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_155_ptr2globl_130
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_153_cmp_127 in mem offset_illegal
              #                    occupy a1 with 1561123_0
    li      a1, 1561123
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_153_cmp_127
              #                    occupy a1 with temp_154_ptr2globl_130
              #                    load from temp_154_ptr2globl_130 in mem

              #                    occupy a1 with temp_154_ptr2globl_130
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_151_array_ptr_127 in mem offset_illegal
              #                    occupy a2 with 1561128_0
    li      a2, 1561128
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_151_array_ptr_127
              #                    occupy a2 with _anonymous_of_temp_155_ptr2globl_130_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a0 with 1521116_0
    li      a0, 1521116
    li      a0, 1521116
    add     a3,a0,a3
              #                    free a0
              #                    free a3
              #                          new_var temp_157_array_ele_130:i32 
              #                          temp_157_array_ele_130 = load temp_156_array_ptr_130:ptr->i32 
              #                    occupy a3 with temp_156_array_ptr_130
              #                    occupy a0 with temp_157_array_ele_130
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_158_cmp_130:i1 
              #                          temp_158_cmp_130 = icmp i32 Eq temp_157_array_ele_130, 94_0 
              #                    occupy a0 with temp_157_array_ele_130
              #                    occupy a2 with 94_0
    li      a2, 94
              #                    store to temp_154_ptr2globl_130 in mem offset_illegal
              #                    occupy a1 with 1561116_0
    li      a1, 1561116
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_154_ptr2globl_130
              #                    occupy a1 with temp_158_cmp_130
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_159_ptr2globl_130:i32 
              #                          temp_159_ptr2globl_130 = load *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    store to temp_157_array_ele_130 in mem offset_illegal
              #                    occupy a0 with 1521100_0
    li      a0, 1521100
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_157_array_ele_130
              #                    occupy a0 with temp_159_ptr2globl_130
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_160_ptr2globl_130:Array:i32:[Some(10000_0)] 
              #                          temp_160_ptr2globl_130 = load *chas_0:ptr->i32 
              #                    occupy a2 with *chas_0
              #                       load label chas as ptr to reg
    la      a2, chas
              #                    occupy reg a2 with *chas_0
              #                    store to temp_159_ptr2globl_130 in mem offset_illegal
              #                    occupy a0 with 1521092_0
    li      a0, 1521092
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_159_ptr2globl_130
              #                    occupy a0 with temp_160_ptr2globl_130
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_161_array_ptr_130:ptr->i32 
              #                          temp_161_array_ptr_130 = getelementptr temp_160_ptr2globl_130:Array:i32:[Some(10000_0)] [Some(temp_159_ptr2globl_130)] 
              #                    occupy a2 with temp_161_array_ptr_130
    li      a2, 0
              #                    store to temp_160_ptr2globl_130 in mem offset_illegal
              #                    occupy a0 with 1481092_0
    li      a0, 1481092
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_160_ptr2globl_130
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_158_cmp_130 in mem offset_illegal
              #                    occupy a1 with 1521099_0
    li      a1, 1521099
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_158_cmp_130
              #                    occupy a1 with temp_159_ptr2globl_130
              #                    load from temp_159_ptr2globl_130 in mem

              #                    occupy a1 with temp_159_ptr2globl_130
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_156_array_ptr_130 in mem offset_illegal
              #                    occupy a3 with 1521104_0
    li      a3, 1521104
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_156_array_ptr_130
              #                    occupy a3 with _anonymous_of_temp_160_ptr2globl_130_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a0 with 1481092_0
    li      a0, 1481092
    li      a0, 1481092
    add     a2,a0,a2
              #                    free a0
              #                    free a2
              #                          new_var temp_162_array_ele_130:i32 
              #                          temp_162_array_ele_130 = load temp_161_array_ptr_130:ptr->i32 
              #                    occupy a2 with temp_161_array_ptr_130
              #                    occupy a0 with temp_162_array_ele_130
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_163_cmp_130:i1 
              #                          temp_163_cmp_130 = icmp i32 Eq temp_162_array_ele_130, 37_0 
              #                    occupy a0 with temp_162_array_ele_130
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    store to temp_159_ptr2globl_130 in mem offset_illegal
              #                    occupy a1 with 1521092_0
    li      a1, 1521092
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_159_ptr2globl_130
              #                    occupy a1 with temp_163_cmp_130
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_164_logic_130:i1 
              #                          temp_164_logic_130 = Or i1 temp_163_cmp_130, temp_158_cmp_130 
              #                    occupy a1 with temp_163_cmp_130
              #                    occupy a3 with temp_158_cmp_130
              #                    load from temp_158_cmp_130 in mem
              #                    occupy a3 with temp_158_cmp_130
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_158_cmp_130
              #                    free a1
              #                    free a3
              #                    free a3
              #                          new_var temp_165_ptr2globl_130:i32 
              #                          temp_165_ptr2globl_130 = load *chat_0:ptr->i32 
              #                    store to temp_162_array_ele_130 in mem offset_illegal
              #                    occupy a0 with 1481076_0
    li      a0, 1481076
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_162_array_ele_130
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_163_cmp_130 in mem offset_illegal
              #                    occupy a1 with 1481075_0
    li      a1, 1481075
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_163_cmp_130
              #                    occupy a1 with temp_165_ptr2globl_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_166_ptr2globl_130:Array:i32:[Some(10000_0)] 
              #                          temp_166_ptr2globl_130 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_165_ptr2globl_130 in mem offset_illegal
              #                    occupy a1 with 1481068_0
    li      a1, 1481068
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_165_ptr2globl_130
              #                    occupy a1 with temp_166_ptr2globl_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_167_array_ptr_130:ptr->i32 
              #                          temp_167_array_ptr_130 = getelementptr temp_166_ptr2globl_130:Array:i32:[Some(10000_0)] [Some(temp_165_ptr2globl_130)] 
              #                    occupy a0 with temp_167_array_ptr_130
    li      a0, 0
              #                    store to temp_166_ptr2globl_130 in mem offset_illegal
              #                    occupy a1 with 1441068_0
    li      a1, 1441068
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_166_ptr2globl_130
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_161_array_ptr_130 in mem offset_illegal
              #                    occupy a2 with 1481080_0
    li      a2, 1481080
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_161_array_ptr_130
              #                    occupy a2 with temp_165_ptr2globl_130
              #                    load from temp_165_ptr2globl_130 in mem

              #                    occupy a2 with temp_165_ptr2globl_130
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_158_cmp_130 in mem offset_illegal
              #                    occupy a3 with 1521099_0
    li      a3, 1521099
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_158_cmp_130
              #                    occupy a3 with _anonymous_of_temp_166_ptr2globl_130_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 1441068_0
    li      a1, 1441068
    li      a1, 1441068
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_168_array_ele_130:i32 
              #                          temp_168_array_ele_130 = load temp_167_array_ptr_130:ptr->i32 
              #                    occupy a0 with temp_167_array_ptr_130
              #                    occupy a1 with temp_168_array_ele_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_169_cmp_130:i1 
              #                          temp_169_cmp_130 = icmp i32 Eq temp_168_array_ele_130, 47_0 
              #                    occupy a1 with temp_168_array_ele_130
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    store to temp_167_array_ptr_130 in mem offset_illegal
              #                    occupy a0 with 1441056_0
    li      a0, 1441056
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_167_array_ptr_130
              #                    occupy a0 with temp_169_cmp_130
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_170_logic_130:i1 
              #                          temp_170_logic_130 = Or i1 temp_169_cmp_130, temp_164_logic_130 
              #                    occupy a0 with temp_169_cmp_130
              #                    occupy a3 with temp_164_logic_130
              #                    load from temp_164_logic_130 in mem
              #                    occupy a3 with temp_164_logic_130
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_164_logic_130
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_171_ptr2globl_130:i32 
              #                          temp_171_ptr2globl_130 = load *chat_0:ptr->i32 
              #                    store to temp_169_cmp_130 in mem offset_illegal
              #                    occupy a0 with 1441051_0
    li      a0, 1441051
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_169_cmp_130
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_168_array_ele_130 in mem offset_illegal
              #                    occupy a1 with 1441052_0
    li      a1, 1441052
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_168_array_ele_130
              #                    occupy a1 with temp_171_ptr2globl_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_172_ptr2globl_130:Array:i32:[Some(10000_0)] 
              #                          temp_172_ptr2globl_130 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_171_ptr2globl_130 in mem offset_illegal
              #                    occupy a1 with 1441044_0
    li      a1, 1441044
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_171_ptr2globl_130
              #                    occupy a1 with temp_172_ptr2globl_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_173_array_ptr_130:ptr->i32 
              #                          temp_173_array_ptr_130 = getelementptr temp_172_ptr2globl_130:Array:i32:[Some(10000_0)] [Some(temp_171_ptr2globl_130)] 
              #                    occupy a0 with temp_173_array_ptr_130
    li      a0, 0
              #                    store to temp_172_ptr2globl_130 in mem offset_illegal
              #                    occupy a1 with 1401044_0
    li      a1, 1401044
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_172_ptr2globl_130
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_165_ptr2globl_130 in mem offset_illegal
              #                    occupy a2 with 1481068_0
    li      a2, 1481068
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_165_ptr2globl_130
              #                    occupy a2 with temp_171_ptr2globl_130
              #                    load from temp_171_ptr2globl_130 in mem

              #                    occupy a2 with temp_171_ptr2globl_130
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_164_logic_130 in mem offset_illegal
              #                    occupy a3 with 1481074_0
    li      a3, 1481074
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_164_logic_130
              #                    occupy a3 with _anonymous_of_temp_172_ptr2globl_130_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 1401044_0
    li      a1, 1401044
    li      a1, 1401044
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_174_array_ele_130:i32 
              #                          temp_174_array_ele_130 = load temp_173_array_ptr_130:ptr->i32 
              #                    occupy a0 with temp_173_array_ptr_130
              #                    occupy a1 with temp_174_array_ele_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_175_cmp_130:i1 
              #                          temp_175_cmp_130 = icmp i32 Eq temp_174_array_ele_130, 42_0 
              #                    occupy a1 with temp_174_array_ele_130
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_173_array_ptr_130 in mem offset_illegal
              #                    occupy a0 with 1401032_0
    li      a0, 1401032
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_173_array_ptr_130
              #                    occupy a0 with temp_175_cmp_130
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_176_logic_130:i1 
              #                          temp_176_logic_130 = Or i1 temp_175_cmp_130, temp_170_logic_130 
              #                    occupy a0 with temp_175_cmp_130
              #                    occupy a3 with temp_170_logic_130
              #                    load from temp_170_logic_130 in mem
              #                    occupy a3 with temp_170_logic_130
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_170_logic_130
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_177_ptr2globl_130:i32 
              #                          temp_177_ptr2globl_130 = load *chat_0:ptr->i32 
              #                    store to temp_175_cmp_130 in mem offset_illegal
              #                    occupy a0 with 1401027_0
    li      a0, 1401027
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_175_cmp_130
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_174_array_ele_130 in mem offset_illegal
              #                    occupy a1 with 1401028_0
    li      a1, 1401028
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_174_array_ele_130
              #                    occupy a1 with temp_177_ptr2globl_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_178_ptr2globl_130:Array:i32:[Some(10000_0)] 
              #                          temp_178_ptr2globl_130 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_177_ptr2globl_130 in mem offset_illegal
              #                    occupy a1 with 1401020_0
    li      a1, 1401020
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_177_ptr2globl_130
              #                    occupy a1 with temp_178_ptr2globl_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_179_array_ptr_130:ptr->i32 
              #                          temp_179_array_ptr_130 = getelementptr temp_178_ptr2globl_130:Array:i32:[Some(10000_0)] [Some(temp_177_ptr2globl_130)] 
              #                    occupy a0 with temp_179_array_ptr_130
    li      a0, 0
              #                    store to temp_178_ptr2globl_130 in mem offset_illegal
              #                    occupy a1 with 1361020_0
    li      a1, 1361020
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_178_ptr2globl_130
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_171_ptr2globl_130 in mem offset_illegal
              #                    occupy a2 with 1441044_0
    li      a2, 1441044
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_171_ptr2globl_130
              #                    occupy a2 with temp_177_ptr2globl_130
              #                    load from temp_177_ptr2globl_130 in mem

              #                    occupy a2 with temp_177_ptr2globl_130
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_170_logic_130 in mem offset_illegal
              #                    occupy a3 with 1441050_0
    li      a3, 1441050
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_170_logic_130
              #                    occupy a3 with _anonymous_of_temp_178_ptr2globl_130_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 1361020_0
    li      a1, 1361020
    li      a1, 1361020
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_180_array_ele_130:i32 
              #                          temp_180_array_ele_130 = load temp_179_array_ptr_130:ptr->i32 
              #                    occupy a0 with temp_179_array_ptr_130
              #                    occupy a1 with temp_180_array_ele_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_181_cmp_130:i1 
              #                          temp_181_cmp_130 = icmp i32 Eq temp_180_array_ele_130, 45_0 
              #                    occupy a1 with temp_180_array_ele_130
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    store to temp_179_array_ptr_130 in mem offset_illegal
              #                    occupy a0 with 1361008_0
    li      a0, 1361008
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_179_array_ptr_130
              #                    occupy a0 with temp_181_cmp_130
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_182_logic_130:i1 
              #                          temp_182_logic_130 = Or i1 temp_181_cmp_130, temp_176_logic_130 
              #                    occupy a0 with temp_181_cmp_130
              #                    occupy a3 with temp_176_logic_130
              #                    load from temp_176_logic_130 in mem
              #                    occupy a3 with temp_176_logic_130
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_176_logic_130
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_183_ptr2globl_130:i32 
              #                          temp_183_ptr2globl_130 = load *chat_0:ptr->i32 
              #                    store to temp_181_cmp_130 in mem offset_illegal
              #                    occupy a0 with 1361003_0
    li      a0, 1361003
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_181_cmp_130
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_180_array_ele_130 in mem offset_illegal
              #                    occupy a1 with 1361004_0
    li      a1, 1361004
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_180_array_ele_130
              #                    occupy a1 with temp_183_ptr2globl_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_184_ptr2globl_130:Array:i32:[Some(10000_0)] 
              #                          temp_184_ptr2globl_130 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_183_ptr2globl_130 in mem offset_illegal
              #                    occupy a1 with 1360996_0
    li      a1, 1360996
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_183_ptr2globl_130
              #                    occupy a1 with temp_184_ptr2globl_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_185_array_ptr_130:ptr->i32 
              #                          temp_185_array_ptr_130 = getelementptr temp_184_ptr2globl_130:Array:i32:[Some(10000_0)] [Some(temp_183_ptr2globl_130)] 
              #                    occupy a0 with temp_185_array_ptr_130
    li      a0, 0
              #                    store to temp_184_ptr2globl_130 in mem offset_illegal
              #                    occupy a1 with 1320996_0
    li      a1, 1320996
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_184_ptr2globl_130
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_177_ptr2globl_130 in mem offset_illegal
              #                    occupy a2 with 1401020_0
    li      a2, 1401020
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_177_ptr2globl_130
              #                    occupy a2 with temp_183_ptr2globl_130
              #                    load from temp_183_ptr2globl_130 in mem

              #                    occupy a2 with temp_183_ptr2globl_130
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_176_logic_130 in mem offset_illegal
              #                    occupy a3 with 1401026_0
    li      a3, 1401026
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_176_logic_130
              #                    occupy a3 with _anonymous_of_temp_184_ptr2globl_130_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 1320996_0
    li      a1, 1320996
    li      a1, 1320996
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_186_array_ele_130:i32 
              #                          temp_186_array_ele_130 = load temp_185_array_ptr_130:ptr->i32 
              #                    occupy a0 with temp_185_array_ptr_130
              #                    occupy a1 with temp_186_array_ele_130
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_187_cmp_130:i1 
              #                          temp_187_cmp_130 = icmp i32 Eq temp_186_array_ele_130, 43_0 
              #                    occupy a1 with temp_186_array_ele_130
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    store to temp_185_array_ptr_130 in mem offset_illegal
              #                    occupy a0 with 1320984_0
    li      a0, 1320984
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_185_array_ptr_130
              #                    occupy a0 with temp_187_cmp_130
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_188_logic_130:i1 
              #                          temp_188_logic_130 = Or i1 temp_187_cmp_130, temp_182_logic_130 
              #                    occupy a0 with temp_187_cmp_130
              #                    occupy a3 with temp_182_logic_130
              #                    load from temp_182_logic_130 in mem
              #                    occupy a3 with temp_182_logic_130
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_182_logic_130
              #                    free a0
              #                    free a3
              #                    free a3
              #                          br i1 temp_188_logic_130, label while.body_131, label while.exit_131 
              #                    store to temp_187_cmp_130 in mem offset_illegal
              #                    occupy a0 with 1320979_0
    li      a0, 1320979
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_187_cmp_130
              #                    occupy a0 with temp_188_logic_130
              #                    load from temp_188_logic_130 in mem
              #                    occupy a0 with temp_188_logic_130
    add     a0,sp,a0
    lb      a0,0(a0)
              #                    free a0
              #                    free a0
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy s6 with 1961427_0
    li      s6, 1961427
    add     s6,sp,s6
    sb      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_84_cmp_100
              #                    occupy a0 with temp_188_logic_130
    bnez    a0, .while.body_131
              #                    free a0
    j       .while.exit_131
              #                    regtab     a0:Freed { symidx: temp_188_logic_130, tracked: true } |     a1:Freed { symidx: temp_186_array_ele_130, tracked: true } |     a2:Freed { symidx: temp_183_ptr2globl_130, tracked: true } |     a3:Freed { symidx: temp_182_logic_130, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label while.body_131: 
.while.body_131:
              #                          new_var temp_189_ret_of_find_133:i32 
              #                          temp_189_ret_of_find_133 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s1 with 1921396_0
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_90_ptr2globl_106
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy s1 with 1921420_0
    li      s1, 1921420
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s2 with 1921408_0
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s3 with 1961428_0
    li      s3, 1961428
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy s4 with 1841304_0
    li      s4, 1841304
    add     s4,sp,s4
    sd      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_109_array_ptr_117
              #                    store to temp_91_ptr2globl_106 in mem offset_illegal
              #                    occupy s5 with 1881396_0
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_91_ptr2globl_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s6 with 1881384_0
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_92_array_ptr_106
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s7 with 1921404_0
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy s8 with 1881379_0
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_94_cmp_106
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s9 with 1921403_0
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_188_logic_130 in mem offset_illegal
              #                    occupy a0 with 1320978_0
    li      a0, 1320978
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_188_logic_130
              #                    store to temp_186_array_ele_130 in mem offset_illegal
              #                    occupy a0 with 1320980_0
    li      a0, 1320980
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_186_array_ele_130
              #                    store to temp_183_ptr2globl_130 in mem offset_illegal
              #                    occupy a1 with 1360996_0
    li      a1, 1360996
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_183_ptr2globl_130
              #                    store to temp_182_logic_130 in mem offset_illegal
              #                    occupy a2 with 1361002_0
    li      a2, 1361002
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_182_logic_130
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a3 with 1961440_0
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a4 with 2041500_0
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a5 with 1961432_0
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a6 with 2041495_0
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                    store to temp_189_ret_of_find_133 in mem offset_illegal
              #                    occupy a0 with 1320972_0
    li      a0, 1320972
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_190_cmp_133:i1 
              #                          temp_190_cmp_133 = icmp i32 Eq temp_189_ret_of_find_133, 0_0 
              #                    occupy a0 with temp_189_ret_of_find_133
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s10 with temp_190_cmp_133
    xor     s10,a0,a7
    seqz    s10, s10
              #                    free a0
              #                    free a7
              #                    free s10
              #                          br i1 temp_190_cmp_133, label branch_true_134, label branch_false_134 
              #                    occupy s10 with temp_190_cmp_133
              #                    free s10
              #                    occupy s10 with temp_190_cmp_133
    bnez    s10, .branch_true_134
              #                    free s10
    j       .branch_false_134
              #                    regtab     a0:Freed { symidx: temp_189_ret_of_find_133, tracked: true } |     s10:Freed { symidx: temp_190_cmp_133, tracked: true } | 
              #                          label branch_true_134: 
.branch_true_134:
              #                          jump label: while.exit_131 
              #                    store to temp_190_cmp_133 in mem offset_illegal
              #                    occupy a1 with 1320971_0
    li      a1, 1320971
    add     a1,sp,a1
    sb      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_190_cmp_133
              #                    store to temp_189_ret_of_find_133 in mem offset_illegal
              #                    occupy a0 with 1320972_0
    li      a0, 1320972
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_189_ret_of_find_133
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a0 with temp_86_ptr2globl_103
    li      a0, 1921420
    add     a0,sp,a0
    lw      s2,0(a0)
              #                    free a0
              #                    occupy a1 with _anonymous_of_temp_186_array_ele_130_0
              #                    load from temp_186_array_ele_130 in mem

              #                    occupy a2 with temp_186_array_ele_130
    li      a2, 1320980
    add     a2,sp,a2
    lw      a1,0(a2)
              #                    free a2
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a3 with temp_94_cmp_106
    li      a3, 1881379
    add     a3,sp,a3
    lb      s10,0(a3)
              #                    free a3
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a4 with temp_87_array_ptr_103
    li      a4, 1921408
    add     a4,sp,a4
    ld      s3,0(a4)
              #                    free a4
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a5 with temp_88_array_ele_103
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
              #                    free a5
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a0 with 1921420_0
    li      a0, 1921420
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_86_ptr2globl_103
              #                    occupy a0 with _anonymous_of_temp_188_logic_130_0
              #                    load from temp_188_logic_130 in mem
              #                    occupy a6 with temp_188_logic_130
    li      a6, 1320978
    add     a6,sp,a6
    lb      a0,0(a6)
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a4 with 1921408_0
    li      a4, 1921408
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_87_array_ptr_103
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s6 with temp_83_array_ele_100
    li      s6, 1961428
    add     s6,sp,s6
    lw      s4,0(s6)
              #                    free s6
              #                    store to temp_188_logic_130 in mem offset_illegal
              #                    occupy a6 with 1320978_0
    li      a6, 1320978
    add     a6,sp,a6
    sb      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_188_logic_130
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s7 with temp_82_array_ptr_100
    li      s7, 1961432
    add     s7,sp,s7
    ld      a6,0(s7)
              #                    free s7
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a5 with 1921404_0
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_88_array_ele_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    occupy s8 with temp_67_array_ele_94
    li      s8, 2041500
    add     s8,sp,s8
    lw      a5,0(s8)
              #                    free s8
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_186_array_ele_130 in mem offset_illegal
              #                    occupy a2 with 1320980_0
    li      a2, 1320980
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_186_array_ele_130
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy s8 with 2041500_0
    li      s8, 2041500
    add     s8,sp,s8
    sw      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_67_array_ele_94
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a3 with 1881379_0
    li      a3, 1881379
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_94_cmp_106
              #                    occupy a3 with _anonymous_of_temp_182_logic_130_0
              #                    load from temp_182_logic_130 in mem
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with temp_182_logic_130
    li      a2, 1361002
    add     a2,sp,a2
    lb      a3,0(a2)
              #                    free a2
              #                    store to temp_182_logic_130 in mem offset_illegal
              #                    occupy a2 with 1361002_0
    li      a2, 1361002
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_182_logic_130
              #                    occupy a2 with _anonymous_of_temp_183_ptr2globl_130_0
              #                    load from temp_183_ptr2globl_130 in mem

              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy s1 with 2041495_0
    li      s1, 2041495
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with temp_183_ptr2globl_130
    li      s1, 1360996
    add     s1,sp,s1
    lw      a2,0(s1)
              #                    free s1
              #                    store to temp_183_ptr2globl_130 in mem offset_illegal
              #                    occupy s1 with 1360996_0
    li      s1, 1360996
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_183_ptr2globl_130
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s6 with 1961428_0
    li      s6, 1961428
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_83_array_ele_100
              #                    occupy s6 with temp_90_ptr2globl_106
    li      s6, 1921396
    add     s6,sp,s6
    lw      s1,0(s6)
              #                    free s6
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s7 with 1961432_0
    li      s7, 1961432
    add     s7,sp,s7
    sd      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_82_array_ptr_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s6 with 1921396_0
    li      s6, 1921396
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_90_ptr2globl_106
              #                    occupy s6 with temp_91_ptr2globl_106
    li      s6, 1881396
    add     s6,sp,s6
    lw      s7,0(s6)
              #                    free s6
    j       .while.exit_131
              #                    regtab     a0:Freed { symidx: temp_188_logic_130, tracked: true } |     a1:Freed { symidx: temp_186_array_ele_130, tracked: true } |     a2:Freed { symidx: temp_183_ptr2globl_130, tracked: true } |     a3:Freed { symidx: temp_182_logic_130, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label while.exit_131: 
.while.exit_131:
              #                           Call void chapush_0(45_0) 
              #                    saved register dumping to mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s1 with 1921396_0
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_90_ptr2globl_106
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy s1 with 1921420_0
    li      s1, 1921420
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s2 with 1921408_0
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s3 with 1961428_0
    li      s3, 1961428
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy s4 with 1841304_0
    li      s4, 1841304
    add     s4,sp,s4
    sd      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_109_array_ptr_117
              #                    store to temp_91_ptr2globl_106 in mem offset_illegal
              #                    occupy s5 with 1881396_0
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_91_ptr2globl_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s6 with 1881384_0
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_92_array_ptr_106
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s7 with 1921404_0
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy s8 with 1881379_0
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_94_cmp_106
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s9 with 1921403_0
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_188_logic_130 in mem offset_illegal
              #                    occupy a0 with 1320978_0
    li      a0, 1320978
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_188_logic_130
              #                    store to temp_186_array_ele_130 in mem offset_illegal
              #                    occupy a0 with 1320980_0
    li      a0, 1320980
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_186_array_ele_130
              #                    store to temp_183_ptr2globl_130 in mem offset_illegal
              #                    occupy a1 with 1360996_0
    li      a1, 1360996
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_183_ptr2globl_130
              #                    store to temp_182_logic_130 in mem offset_illegal
              #                    occupy a2 with 1361002_0
    li      a2, 1361002
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_182_logic_130
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a3 with 1961440_0
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a4 with 2041500_0
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a5 with 1961432_0
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a6 with 2041495_0
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_45_0_0
    li      a0, 45
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_128 
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a0 with temp_84_cmp_100
    li      a0, 1961427
    add     a0,sp,a0
    lb      s6,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a1 with temp_86_ptr2globl_103
    li      a1, 1921420
    add     a1,sp,a1
    lw      s2,0(a1)
              #                    free a1
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a1 with 1921420_0
    li      a1, 1921420
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_86_ptr2globl_103
              #                    occupy a1 with _anonymous_of_temp_153_cmp_127_0
              #                    load from temp_153_cmp_127 in mem
              #                    occupy a2 with temp_153_cmp_127
    li      a2, 1561123
    add     a2,sp,a2
    lb      a1,0(a2)
              #                    free a2
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a3 with temp_94_cmp_106
    li      a3, 1881379
    add     a3,sp,a3
    lb      s10,0(a3)
              #                    free a3
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a4 with temp_87_array_ptr_103
    li      a4, 1921408
    add     a4,sp,a4
    ld      s3,0(a4)
              #                    free a4
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a5 with temp_88_array_ele_103
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
              #                    free a5
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a0 with 1961427_0
    li      a0, 1961427
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84_cmp_100
              #                    occupy a0 with _anonymous_of_temp_152_array_ele_127_0
              #                    load from temp_152_array_ele_127 in mem

              #                    occupy a6 with temp_152_array_ele_127
    li      a6, 1561124
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a4 with 1921408_0
    li      a4, 1921408
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_87_array_ptr_103
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s7 with temp_83_array_ele_100
    li      s7, 1961428
    add     s7,sp,s7
    lw      s4,0(s7)
              #                    free s7
              #                    store to temp_152_array_ele_127 in mem offset_illegal
              #                    occupy a6 with 1561124_0
    li      a6, 1561124
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_152_array_ele_127
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s8 with temp_82_array_ptr_100
    li      s8, 1961432
    add     s8,sp,s8
    ld      a6,0(s8)
              #                    free s8
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a5 with 1921404_0
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_88_array_ele_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    store to temp_153_cmp_127 in mem offset_illegal
              #                    occupy a2 with 1561123_0
    li      a2, 1561123
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_153_cmp_127
              #                    occupy a2 with temp_67_array_ele_94
    li      a2, 2041500
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a2 with 2041500_0
    li      a2, 2041500
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_67_array_ele_94
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s8 with 1961432_0
    li      s8, 1961432
    add     s8,sp,s8
    sd      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_82_array_ptr_100
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a3 with 1881379_0
    li      a3, 1881379
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_94_cmp_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with _anonymous_of_temp_151_array_ptr_127_0
              #                    load from temp_151_array_ptr_127 in mem
              #                    occupy a3 with temp_151_array_ptr_127
    li      a3, 1561128
    add     a3,sp,a3
    ld      a2,0(a3)
              #                    free a3
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy s1 with 2041495_0
    li      s1, 2041495
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    store to temp_151_array_ptr_127 in mem offset_illegal
              #                    occupy a3 with 1561128_0
    li      a3, 1561128
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_151_array_ptr_127
              #                    occupy a3 with temp_90_ptr2globl_106
    li      a3, 1921396
    add     a3,sp,a3
    lw      s1,0(a3)
              #                    free a3
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s7 with 1961428_0
    li      s7, 1961428
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_83_array_ele_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy a3 with 1921396_0
    li      a3, 1921396
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_90_ptr2globl_106
              #                    occupy a3 with temp_91_ptr2globl_106
    li      a3, 1881396
    add     a3,sp,a3
    lw      s7,0(a3)
              #                    free a3
    j       .branch_false_128
              #                    regtab     a0:Freed { symidx: temp_189_ret_of_find_133, tracked: true } |     s10:Freed { symidx: temp_190_cmp_133, tracked: true } | 
              #                          label branch_false_134: 
.branch_false_134:
              #                          jump label: branch_true_128 
              #                    store to temp_190_cmp_133 in mem offset_illegal
              #                    occupy a1 with 1320971_0
    li      a1, 1320971
    add     a1,sp,a1
    sb      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_190_cmp_133
              #                    store to temp_189_ret_of_find_133 in mem offset_illegal
              #                    occupy a0 with 1320972_0
    li      a0, 1320972
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_189_ret_of_find_133
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a0 with temp_84_cmp_100
    li      a0, 1961427
    add     a0,sp,a0
    lb      s6,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a2 with temp_86_ptr2globl_103
    li      a2, 1921420
    add     a2,sp,a2
    lw      s2,0(a2)
              #                    free a2
              #                    occupy a1 with _anonymous_of_temp_153_cmp_127_0
              #                    load from temp_153_cmp_127 in mem
              #                    occupy a3 with temp_153_cmp_127
    li      a3, 1561123
    add     a3,sp,a3
    lb      a1,0(a3)
              #                    free a3
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a4 with temp_94_cmp_106
    li      a4, 1881379
    add     a4,sp,a4
    lb      s10,0(a4)
              #                    free a4
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a5 with temp_87_array_ptr_103
    li      a5, 1921408
    add     a5,sp,a5
    ld      s3,0(a5)
              #                    free a5
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a6 with temp_88_array_ele_103
    li      a6, 1921404
    add     a6,sp,a6
    lw      s9,0(a6)
              #                    free a6
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a0 with 1961427_0
    li      a0, 1961427
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84_cmp_100
              #                    occupy a0 with _anonymous_of_temp_152_array_ele_127_0
              #                    load from temp_152_array_ele_127 in mem

              #                    occupy a7 with temp_152_array_ele_127
    li      a7, 1561124
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    store to temp_152_array_ele_127 in mem offset_illegal
              #                    occupy a7 with 1561124_0
    li      a7, 1561124
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_152_array_ele_127
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a4 with 1881379_0
    li      a4, 1881379
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_94_cmp_106
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s7 with temp_83_array_ele_100
    li      s7, 1961428
    add     s7,sp,s7
    lw      s4,0(s7)
              #                    free s7
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a6 with 1921404_0
    li      a6, 1921404
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_88_array_ele_103
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s8 with temp_82_array_ptr_100
    li      s8, 1961432
    add     s8,sp,s8
    ld      a6,0(s8)
              #                    free s8
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a5 with 1921408_0
    li      a5, 1921408
    add     a5,sp,a5
    sd      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_87_array_ptr_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a2 with 1921420_0
    li      a2, 1921420
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_86_ptr2globl_103
              #                    occupy a2 with temp_67_array_ele_94
    li      a2, 2041500
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a2 with 2041500_0
    li      a2, 2041500
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_67_array_ele_94
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s8 with 1961432_0
    li      s8, 1961432
    add     s8,sp,s8
    sd      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_82_array_ptr_100
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_153_cmp_127 in mem offset_illegal
              #                    occupy a3 with 1561123_0
    li      a3, 1561123
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_153_cmp_127
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with _anonymous_of_temp_151_array_ptr_127_0
              #                    load from temp_151_array_ptr_127 in mem
              #                    occupy a3 with temp_151_array_ptr_127
    li      a3, 1561128
    add     a3,sp,a3
    ld      a2,0(a3)
              #                    free a3
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy s1 with 2041495_0
    li      s1, 2041495
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    store to temp_151_array_ptr_127 in mem offset_illegal
              #                    occupy a3 with 1561128_0
    li      a3, 1561128
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_151_array_ptr_127
              #                    occupy a3 with temp_90_ptr2globl_106
    li      a3, 1921396
    add     a3,sp,a3
    lw      s1,0(a3)
              #                    free a3
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s7 with 1961428_0
    li      s7, 1961428
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_83_array_ele_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy a3 with 1921396_0
    li      a3, 1921396
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_90_ptr2globl_106
              #                    occupy a3 with temp_91_ptr2globl_106
    li      a3, 1881396
    add     a3,sp,a3
    lw      s7,0(a3)
              #                    free a3
    j       .branch_true_128
              #                    regtab     a0:Freed { symidx: temp_152_array_ele_127, tracked: true } |     a1:Freed { symidx: temp_153_cmp_127, tracked: true } |     a2:Freed { symidx: temp_151_array_ptr_127, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_false_128: 
.branch_false_128:
              #                    regtab     a0:Freed { symidx: temp_152_array_ele_127, tracked: true } |     a1:Freed { symidx: temp_153_cmp_127, tracked: true } |     a2:Freed { symidx: temp_151_array_ptr_127, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_191_ptr2globl_137:i32 
              #                          temp_191_ptr2globl_137 = load *i_0:ptr->i32 
              #                    occupy a3 with *i_0
              #                       load label i as ptr to reg
    la      a3, i
              #                    occupy reg a3 with *i_0
              #                    store to temp_152_array_ele_127 in mem offset_illegal
              #                    occupy a0 with 1561124_0
    li      a0, 1561124
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_152_array_ele_127
              #                    occupy a0 with temp_191_ptr2globl_137
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_192_ptr2globl_137:Array:i32:[Some(10000_0)] 
              #                          temp_192_ptr2globl_137 = load *get_0:ptr->i32 
              #                    occupy a3 with *get_0
              #                       load label get as ptr to reg
    la      a3, get
              #                    occupy reg a3 with *get_0
              #                    store to temp_191_ptr2globl_137 in mem offset_illegal
              #                    occupy a0 with 1320964_0
    li      a0, 1320964
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_191_ptr2globl_137
              #                    occupy a0 with temp_192_ptr2globl_137
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_193_array_ptr_137:ptr->i32 
              #                          temp_193_array_ptr_137 = getelementptr temp_192_ptr2globl_137:Array:i32:[Some(10000_0)] [Some(temp_191_ptr2globl_137)] 
              #                    occupy a3 with temp_193_array_ptr_137
    li      a3, 0
              #                    store to temp_192_ptr2globl_137 in mem offset_illegal
              #                    occupy a0 with 1280964_0
    li      a0, 1280964
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_192_ptr2globl_137
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_153_cmp_127 in mem offset_illegal
              #                    occupy a1 with 1561123_0
    li      a1, 1561123
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_153_cmp_127
              #                    occupy a1 with temp_191_ptr2globl_137
              #                    load from temp_191_ptr2globl_137 in mem

              #                    occupy a1 with temp_191_ptr2globl_137
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_151_array_ptr_127 in mem offset_illegal
              #                    occupy a2 with 1561128_0
    li      a2, 1561128
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_151_array_ptr_127
              #                    occupy a2 with _anonymous_of_temp_192_ptr2globl_137_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a0 with 1280964_0
    li      a0, 1280964
    li      a0, 1280964
    add     a3,a0,a3
              #                    free a0
              #                    free a3
              #                          new_var temp_194_array_ele_137:i32 
              #                          temp_194_array_ele_137 = load temp_193_array_ptr_137:ptr->i32 
              #                    occupy a3 with temp_193_array_ptr_137
              #                    occupy a0 with temp_194_array_ele_137
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_195_cmp_137:i1 
              #                          temp_195_cmp_137 = icmp i32 Eq temp_194_array_ele_137, 42_0 
              #                    occupy a0 with temp_194_array_ele_137
              #                    occupy a2 with 42_0
    li      a2, 42
              #                    store to temp_191_ptr2globl_137 in mem offset_illegal
              #                    occupy a1 with 1320964_0
    li      a1, 1320964
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_191_ptr2globl_137
              #                    occupy a1 with temp_195_cmp_137
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_195_cmp_137, label branch_true_138, label branch_false_138 
              #                    occupy a1 with temp_195_cmp_137
              #                    free a1
              #                    occupy a1 with temp_195_cmp_137
    bnez    a1, .branch_true_138
              #                    free a1
    j       .branch_false_138
              #                    regtab     a0:Freed { symidx: temp_194_array_ele_137, tracked: true } |     a1:Freed { symidx: temp_195_cmp_137, tracked: true } |     a3:Freed { symidx: temp_193_array_ptr_137, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_true_138: 
.branch_true_138:
              #                          new_var temp_196_ptr2globl_140:i32 
              #                          temp_196_ptr2globl_140 = load *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    store to temp_194_array_ele_137 in mem offset_illegal
              #                    occupy a0 with 1280948_0
    li      a0, 1280948
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_194_array_ele_137
              #                    occupy a0 with temp_196_ptr2globl_140
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_197_ptr2globl_140:Array:i32:[Some(10000_0)] 
              #                          temp_197_ptr2globl_140 = load *chas_0:ptr->i32 
              #                    occupy a2 with *chas_0
              #                       load label chas as ptr to reg
    la      a2, chas
              #                    occupy reg a2 with *chas_0
              #                    store to temp_196_ptr2globl_140 in mem offset_illegal
              #                    occupy a0 with 1280940_0
    li      a0, 1280940
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_196_ptr2globl_140
              #                    occupy a0 with temp_197_ptr2globl_140
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_198_array_ptr_140:ptr->i32 
              #                          temp_198_array_ptr_140 = getelementptr temp_197_ptr2globl_140:Array:i32:[Some(10000_0)] [Some(temp_196_ptr2globl_140)] 
              #                    occupy a2 with temp_198_array_ptr_140
    li      a2, 0
              #                    store to temp_197_ptr2globl_140 in mem offset_illegal
              #                    occupy a0 with 1240940_0
    li      a0, 1240940
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_197_ptr2globl_140
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_195_cmp_137 in mem offset_illegal
              #                    occupy a1 with 1280947_0
    li      a1, 1280947
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_195_cmp_137
              #                    occupy a1 with temp_196_ptr2globl_140
              #                    load from temp_196_ptr2globl_140 in mem

              #                    occupy a1 with temp_196_ptr2globl_140
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_193_array_ptr_137 in mem offset_illegal
              #                    occupy a3 with 1280952_0
    li      a3, 1280952
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_193_array_ptr_137
              #                    occupy a3 with _anonymous_of_temp_197_ptr2globl_140_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a0 with 1240940_0
    li      a0, 1240940
    li      a0, 1240940
    add     a2,a0,a2
              #                    free a0
              #                    free a2
              #                          new_var temp_199_array_ele_140:i32 
              #                          temp_199_array_ele_140 = load temp_198_array_ptr_140:ptr->i32 
              #                    occupy a2 with temp_198_array_ptr_140
              #                    occupy a0 with temp_199_array_ele_140
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_200_cmp_140:i1 
              #                          temp_200_cmp_140 = icmp i32 Eq temp_199_array_ele_140, 94_0 
              #                    occupy a0 with temp_199_array_ele_140
              #                    occupy a3 with 94_0
    li      a3, 94
              #                    store to temp_196_ptr2globl_140 in mem offset_illegal
              #                    occupy a1 with 1280940_0
    li      a1, 1280940
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_196_ptr2globl_140
              #                    occupy a1 with temp_200_cmp_140
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_201_ptr2globl_140:i32 
              #                          temp_201_ptr2globl_140 = load *chat_0:ptr->i32 
              #                    occupy a3 with *chat_0
              #                       load label chat as ptr to reg
    la      a3, chat
              #                    occupy reg a3 with *chat_0
              #                    store to temp_199_array_ele_140 in mem offset_illegal
              #                    occupy a0 with 1240924_0
    li      a0, 1240924
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_199_array_ele_140
              #                    occupy a0 with temp_201_ptr2globl_140
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_202_ptr2globl_140:Array:i32:[Some(10000_0)] 
              #                          temp_202_ptr2globl_140 = load *chas_0:ptr->i32 
              #                    occupy a3 with *chas_0
              #                       load label chas as ptr to reg
    la      a3, chas
              #                    occupy reg a3 with *chas_0
              #                    store to temp_201_ptr2globl_140 in mem offset_illegal
              #                    occupy a0 with 1240916_0
    li      a0, 1240916
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_201_ptr2globl_140
              #                    occupy a0 with temp_202_ptr2globl_140
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_203_array_ptr_140:ptr->i32 
              #                          temp_203_array_ptr_140 = getelementptr temp_202_ptr2globl_140:Array:i32:[Some(10000_0)] [Some(temp_201_ptr2globl_140)] 
              #                    occupy a3 with temp_203_array_ptr_140
    li      a3, 0
              #                    store to temp_202_ptr2globl_140 in mem offset_illegal
              #                    occupy a0 with 1200916_0
    li      a0, 1200916
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_202_ptr2globl_140
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_200_cmp_140 in mem offset_illegal
              #                    occupy a1 with 1240923_0
    li      a1, 1240923
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_200_cmp_140
              #                    occupy a1 with temp_201_ptr2globl_140
              #                    load from temp_201_ptr2globl_140 in mem

              #                    occupy a1 with temp_201_ptr2globl_140
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_198_array_ptr_140 in mem offset_illegal
              #                    occupy a2 with 1240928_0
    li      a2, 1240928
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_198_array_ptr_140
              #                    occupy a2 with _anonymous_of_temp_202_ptr2globl_140_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a0 with 1200916_0
    li      a0, 1200916
    li      a0, 1200916
    add     a3,a0,a3
              #                    free a0
              #                    free a3
              #                          new_var temp_204_array_ele_140:i32 
              #                          temp_204_array_ele_140 = load temp_203_array_ptr_140:ptr->i32 
              #                    occupy a3 with temp_203_array_ptr_140
              #                    occupy a0 with temp_204_array_ele_140
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_205_cmp_140:i1 
              #                          temp_205_cmp_140 = icmp i32 Eq temp_204_array_ele_140, 37_0 
              #                    occupy a0 with temp_204_array_ele_140
              #                    occupy a2 with 37_0
    li      a2, 37
              #                    store to temp_201_ptr2globl_140 in mem offset_illegal
              #                    occupy a1 with 1240916_0
    li      a1, 1240916
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_201_ptr2globl_140
              #                    occupy a1 with temp_205_cmp_140
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_206_logic_140:i1 
              #                          temp_206_logic_140 = Or i1 temp_205_cmp_140, temp_200_cmp_140 
              #                    occupy a1 with temp_205_cmp_140
              #                    occupy a2 with temp_200_cmp_140
              #                    load from temp_200_cmp_140 in mem
              #                    occupy a2 with temp_200_cmp_140
    add     a2,sp,a2
    lb      a2,0(a2)
              #                    free a2
              #                    occupy a2 with temp_200_cmp_140
              #                    free a1
              #                    free a2
              #                    free a2
              #                          new_var temp_207_ptr2globl_140:i32 
              #                          temp_207_ptr2globl_140 = load *chat_0:ptr->i32 
              #                    store to temp_204_array_ele_140 in mem offset_illegal
              #                    occupy a0 with 1200900_0
    li      a0, 1200900
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_204_array_ele_140
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_205_cmp_140 in mem offset_illegal
              #                    occupy a1 with 1200899_0
    li      a1, 1200899
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_205_cmp_140
              #                    occupy a1 with temp_207_ptr2globl_140
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_208_ptr2globl_140:Array:i32:[Some(10000_0)] 
              #                          temp_208_ptr2globl_140 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_207_ptr2globl_140 in mem offset_illegal
              #                    occupy a1 with 1200892_0
    li      a1, 1200892
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_207_ptr2globl_140
              #                    occupy a1 with temp_208_ptr2globl_140
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_209_array_ptr_140:ptr->i32 
              #                          temp_209_array_ptr_140 = getelementptr temp_208_ptr2globl_140:Array:i32:[Some(10000_0)] [Some(temp_207_ptr2globl_140)] 
              #                    occupy a0 with temp_209_array_ptr_140
    li      a0, 0
              #                    store to temp_208_ptr2globl_140 in mem offset_illegal
              #                    occupy a1 with 1160892_0
    li      a1, 1160892
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_208_ptr2globl_140
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_200_cmp_140 in mem offset_illegal
              #                    occupy a2 with 1240923_0
    li      a2, 1240923
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_200_cmp_140
              #                    occupy a2 with temp_207_ptr2globl_140
              #                    load from temp_207_ptr2globl_140 in mem

              #                    occupy a2 with temp_207_ptr2globl_140
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_203_array_ptr_140 in mem offset_illegal
              #                    occupy a3 with 1200904_0
    li      a3, 1200904
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_203_array_ptr_140
              #                    occupy a3 with _anonymous_of_temp_208_ptr2globl_140_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 1160892_0
    li      a1, 1160892
    li      a1, 1160892
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_210_array_ele_140:i32 
              #                          temp_210_array_ele_140 = load temp_209_array_ptr_140:ptr->i32 
              #                    occupy a0 with temp_209_array_ptr_140
              #                    occupy a1 with temp_210_array_ele_140
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_211_cmp_140:i1 
              #                          temp_211_cmp_140 = icmp i32 Eq temp_210_array_ele_140, 47_0 
              #                    occupy a1 with temp_210_array_ele_140
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    store to temp_209_array_ptr_140 in mem offset_illegal
              #                    occupy a0 with 1160880_0
    li      a0, 1160880
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_209_array_ptr_140
              #                    occupy a0 with temp_211_cmp_140
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_212_logic_140:i1 
              #                          temp_212_logic_140 = Or i1 temp_211_cmp_140, temp_206_logic_140 
              #                    occupy a0 with temp_211_cmp_140
              #                    occupy a3 with temp_206_logic_140
              #                    load from temp_206_logic_140 in mem
              #                    occupy a3 with temp_206_logic_140
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_206_logic_140
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_213_ptr2globl_140:i32 
              #                          temp_213_ptr2globl_140 = load *chat_0:ptr->i32 
              #                    store to temp_211_cmp_140 in mem offset_illegal
              #                    occupy a0 with 1160875_0
    li      a0, 1160875
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_211_cmp_140
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_210_array_ele_140 in mem offset_illegal
              #                    occupy a1 with 1160876_0
    li      a1, 1160876
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_210_array_ele_140
              #                    occupy a1 with temp_213_ptr2globl_140
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_214_ptr2globl_140:Array:i32:[Some(10000_0)] 
              #                          temp_214_ptr2globl_140 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_213_ptr2globl_140 in mem offset_illegal
              #                    occupy a1 with 1160868_0
    li      a1, 1160868
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_213_ptr2globl_140
              #                    occupy a1 with temp_214_ptr2globl_140
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_215_array_ptr_140:ptr->i32 
              #                          temp_215_array_ptr_140 = getelementptr temp_214_ptr2globl_140:Array:i32:[Some(10000_0)] [Some(temp_213_ptr2globl_140)] 
              #                    occupy a0 with temp_215_array_ptr_140
    li      a0, 0
              #                    store to temp_214_ptr2globl_140 in mem offset_illegal
              #                    occupy a1 with 1120868_0
    li      a1, 1120868
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_214_ptr2globl_140
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_207_ptr2globl_140 in mem offset_illegal
              #                    occupy a2 with 1200892_0
    li      a2, 1200892
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_207_ptr2globl_140
              #                    occupy a2 with temp_213_ptr2globl_140
              #                    load from temp_213_ptr2globl_140 in mem

              #                    occupy a2 with temp_213_ptr2globl_140
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_206_logic_140 in mem offset_illegal
              #                    occupy a3 with 1200898_0
    li      a3, 1200898
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_206_logic_140
              #                    occupy a3 with _anonymous_of_temp_214_ptr2globl_140_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 1120868_0
    li      a1, 1120868
    li      a1, 1120868
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_216_array_ele_140:i32 
              #                          temp_216_array_ele_140 = load temp_215_array_ptr_140:ptr->i32 
              #                    occupy a0 with temp_215_array_ptr_140
              #                    occupy a1 with temp_216_array_ele_140
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_217_cmp_140:i1 
              #                          temp_217_cmp_140 = icmp i32 Eq temp_216_array_ele_140, 42_0 
              #                    occupy a1 with temp_216_array_ele_140
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_215_array_ptr_140 in mem offset_illegal
              #                    occupy a0 with 1120856_0
    li      a0, 1120856
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_215_array_ptr_140
              #                    occupy a0 with temp_217_cmp_140
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_218_logic_140:i1 
              #                          temp_218_logic_140 = Or i1 temp_217_cmp_140, temp_212_logic_140 
              #                    occupy a0 with temp_217_cmp_140
              #                    occupy a3 with temp_212_logic_140
              #                    load from temp_212_logic_140 in mem
              #                    occupy a3 with temp_212_logic_140
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_212_logic_140
              #                    free a0
              #                    free a3
              #                    free a3
              #                          br i1 temp_218_logic_140, label while.body_141, label while.exit_141 
              #                    store to temp_217_cmp_140 in mem offset_illegal
              #                    occupy a0 with 1120851_0
    li      a0, 1120851
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_217_cmp_140
              #                    occupy a0 with temp_218_logic_140
              #                    load from temp_218_logic_140 in mem
              #                    occupy a0 with temp_218_logic_140
    add     a0,sp,a0
    lb      a0,0(a0)
              #                    free a0
              #                    free a0
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy s6 with 1961427_0
    li      s6, 1961427
    add     s6,sp,s6
    sb      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_84_cmp_100
              #                    occupy a0 with temp_218_logic_140
    bnez    a0, .while.body_141
              #                    free a0
    j       .while.exit_141
              #                    regtab     a0:Freed { symidx: temp_218_logic_140, tracked: true } |     a1:Freed { symidx: temp_216_array_ele_140, tracked: true } |     a2:Freed { symidx: temp_213_ptr2globl_140, tracked: true } |     a3:Freed { symidx: temp_212_logic_140, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label while.body_141: 
.while.body_141:
              #                          new_var temp_219_ret_of_find_143:i32 
              #                          temp_219_ret_of_find_143 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s1 with 1921396_0
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_90_ptr2globl_106
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy s1 with 1921420_0
    li      s1, 1921420
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s2 with 1921408_0
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s3 with 1961428_0
    li      s3, 1961428
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy s4 with 1841304_0
    li      s4, 1841304
    add     s4,sp,s4
    sd      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_109_array_ptr_117
              #                    store to temp_91_ptr2globl_106 in mem offset_illegal
              #                    occupy s5 with 1881396_0
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_91_ptr2globl_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s6 with 1881384_0
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_92_array_ptr_106
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s7 with 1921404_0
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy s8 with 1881379_0
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_94_cmp_106
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s9 with 1921403_0
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_218_logic_140 in mem offset_illegal
              #                    occupy a0 with 1120850_0
    li      a0, 1120850
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_218_logic_140
              #                    store to temp_216_array_ele_140 in mem offset_illegal
              #                    occupy a0 with 1120852_0
    li      a0, 1120852
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_216_array_ele_140
              #                    store to temp_213_ptr2globl_140 in mem offset_illegal
              #                    occupy a1 with 1160868_0
    li      a1, 1160868
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_213_ptr2globl_140
              #                    store to temp_212_logic_140 in mem offset_illegal
              #                    occupy a2 with 1160874_0
    li      a2, 1160874
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_212_logic_140
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a3 with 1961440_0
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a4 with 2041500_0
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a5 with 1961432_0
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a6 with 2041495_0
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                    store to temp_219_ret_of_find_143 in mem offset_illegal
              #                    occupy a0 with 1120844_0
    li      a0, 1120844
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_220_cmp_143:i1 
              #                          temp_220_cmp_143 = icmp i32 Eq temp_219_ret_of_find_143, 0_0 
              #                    occupy a0 with temp_219_ret_of_find_143
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s10 with temp_220_cmp_143
    xor     s10,a0,a7
    seqz    s10, s10
              #                    free a0
              #                    free a7
              #                    free s10
              #                          br i1 temp_220_cmp_143, label branch_true_144, label branch_false_144 
              #                    occupy s10 with temp_220_cmp_143
              #                    free s10
              #                    occupy s10 with temp_220_cmp_143
    bnez    s10, .branch_true_144
              #                    free s10
    j       .branch_false_144
              #                    regtab     a0:Freed { symidx: temp_219_ret_of_find_143, tracked: true } |     s10:Freed { symidx: temp_220_cmp_143, tracked: true } | 
              #                          label branch_true_144: 
.branch_true_144:
              #                          jump label: while.exit_141 
              #                    store to temp_220_cmp_143 in mem offset_illegal
              #                    occupy a1 with 1120843_0
    li      a1, 1120843
    add     a1,sp,a1
    sb      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_220_cmp_143
              #                    store to temp_219_ret_of_find_143 in mem offset_illegal
              #                    occupy a0 with 1120844_0
    li      a0, 1120844
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_219_ret_of_find_143
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a0 with temp_86_ptr2globl_103
    li      a0, 1921420
    add     a0,sp,a0
    lw      s2,0(a0)
              #                    free a0
              #                    occupy a1 with _anonymous_of_temp_216_array_ele_140_0
              #                    load from temp_216_array_ele_140 in mem

              #                    occupy a2 with temp_216_array_ele_140
    li      a2, 1120852
    add     a2,sp,a2
    lw      a1,0(a2)
              #                    free a2
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a3 with temp_94_cmp_106
    li      a3, 1881379
    add     a3,sp,a3
    lb      s10,0(a3)
              #                    free a3
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a4 with temp_87_array_ptr_103
    li      a4, 1921408
    add     a4,sp,a4
    ld      s3,0(a4)
              #                    free a4
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a5 with temp_88_array_ele_103
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
              #                    free a5
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a0 with 1921420_0
    li      a0, 1921420
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_86_ptr2globl_103
              #                    occupy a0 with _anonymous_of_temp_218_logic_140_0
              #                    load from temp_218_logic_140 in mem
              #                    occupy a6 with temp_218_logic_140
    li      a6, 1120850
    add     a6,sp,a6
    lb      a0,0(a6)
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a4 with 1921408_0
    li      a4, 1921408
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_87_array_ptr_103
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s6 with temp_83_array_ele_100
    li      s6, 1961428
    add     s6,sp,s6
    lw      s4,0(s6)
              #                    free s6
              #                    store to temp_218_logic_140 in mem offset_illegal
              #                    occupy a6 with 1120850_0
    li      a6, 1120850
    add     a6,sp,a6
    sb      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_218_logic_140
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s7 with temp_82_array_ptr_100
    li      s7, 1961432
    add     s7,sp,s7
    ld      a6,0(s7)
              #                    free s7
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a5 with 1921404_0
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_88_array_ele_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    occupy s8 with temp_67_array_ele_94
    li      s8, 2041500
    add     s8,sp,s8
    lw      a5,0(s8)
              #                    free s8
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_216_array_ele_140 in mem offset_illegal
              #                    occupy a2 with 1120852_0
    li      a2, 1120852
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_216_array_ele_140
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy s8 with 2041500_0
    li      s8, 2041500
    add     s8,sp,s8
    sw      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_67_array_ele_94
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a3 with 1881379_0
    li      a3, 1881379
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_94_cmp_106
              #                    occupy a3 with _anonymous_of_temp_212_logic_140_0
              #                    load from temp_212_logic_140 in mem
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with temp_212_logic_140
    li      a2, 1160874
    add     a2,sp,a2
    lb      a3,0(a2)
              #                    free a2
              #                    store to temp_212_logic_140 in mem offset_illegal
              #                    occupy a2 with 1160874_0
    li      a2, 1160874
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_212_logic_140
              #                    occupy a2 with _anonymous_of_temp_213_ptr2globl_140_0
              #                    load from temp_213_ptr2globl_140 in mem

              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy s1 with 2041495_0
    li      s1, 2041495
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with temp_213_ptr2globl_140
    li      s1, 1160868
    add     s1,sp,s1
    lw      a2,0(s1)
              #                    free s1
              #                    store to temp_213_ptr2globl_140 in mem offset_illegal
              #                    occupy s1 with 1160868_0
    li      s1, 1160868
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_213_ptr2globl_140
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s6 with 1961428_0
    li      s6, 1961428
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_83_array_ele_100
              #                    occupy s6 with temp_90_ptr2globl_106
    li      s6, 1921396
    add     s6,sp,s6
    lw      s1,0(s6)
              #                    free s6
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s7 with 1961432_0
    li      s7, 1961432
    add     s7,sp,s7
    sd      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_82_array_ptr_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s6 with 1921396_0
    li      s6, 1921396
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_90_ptr2globl_106
              #                    occupy s6 with temp_91_ptr2globl_106
    li      s6, 1881396
    add     s6,sp,s6
    lw      s7,0(s6)
              #                    free s6
    j       .while.exit_141
              #                    regtab     a0:Freed { symidx: temp_218_logic_140, tracked: true } |     a1:Freed { symidx: temp_216_array_ele_140, tracked: true } |     a2:Freed { symidx: temp_213_ptr2globl_140, tracked: true } |     a3:Freed { symidx: temp_212_logic_140, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label while.exit_141: 
.while.exit_141:
              #                           Call void chapush_0(42_0) 
              #                    saved register dumping to mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s1 with 1921396_0
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_90_ptr2globl_106
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy s1 with 1921420_0
    li      s1, 1921420
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s2 with 1921408_0
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s3 with 1961428_0
    li      s3, 1961428
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy s4 with 1841304_0
    li      s4, 1841304
    add     s4,sp,s4
    sd      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_109_array_ptr_117
              #                    store to temp_91_ptr2globl_106 in mem offset_illegal
              #                    occupy s5 with 1881396_0
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_91_ptr2globl_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s6 with 1881384_0
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_92_array_ptr_106
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s7 with 1921404_0
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy s8 with 1881379_0
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_94_cmp_106
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s9 with 1921403_0
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_218_logic_140 in mem offset_illegal
              #                    occupy a0 with 1120850_0
    li      a0, 1120850
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_218_logic_140
              #                    store to temp_216_array_ele_140 in mem offset_illegal
              #                    occupy a0 with 1120852_0
    li      a0, 1120852
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_216_array_ele_140
              #                    store to temp_213_ptr2globl_140 in mem offset_illegal
              #                    occupy a1 with 1160868_0
    li      a1, 1160868
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_213_ptr2globl_140
              #                    store to temp_212_logic_140 in mem offset_illegal
              #                    occupy a2 with 1160874_0
    li      a2, 1160874
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_212_logic_140
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a3 with 1961440_0
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a4 with 2041500_0
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a5 with 1961432_0
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a6 with 2041495_0
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_42_0_0
    li      a0, 42
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_138 
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a0 with temp_84_cmp_100
    li      a0, 1961427
    add     a0,sp,a0
    lb      s6,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a1 with temp_86_ptr2globl_103
    li      a1, 1921420
    add     a1,sp,a1
    lw      s2,0(a1)
              #                    free a1
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a1 with 1921420_0
    li      a1, 1921420
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_86_ptr2globl_103
              #                    occupy a1 with _anonymous_of_temp_195_cmp_137_0
              #                    load from temp_195_cmp_137 in mem
              #                    occupy a2 with temp_195_cmp_137
    li      a2, 1280947
    add     a2,sp,a2
    lb      a1,0(a2)
              #                    free a2
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a3 with temp_94_cmp_106
    li      a3, 1881379
    add     a3,sp,a3
    lb      s10,0(a3)
              #                    free a3
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a4 with temp_87_array_ptr_103
    li      a4, 1921408
    add     a4,sp,a4
    ld      s3,0(a4)
              #                    free a4
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a5 with temp_88_array_ele_103
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
              #                    free a5
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a0 with 1961427_0
    li      a0, 1961427
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84_cmp_100
              #                    occupy a0 with _anonymous_of_temp_194_array_ele_137_0
              #                    load from temp_194_array_ele_137 in mem

              #                    occupy a6 with temp_194_array_ele_137
    li      a6, 1280948
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a4 with 1921408_0
    li      a4, 1921408
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_87_array_ptr_103
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s7 with temp_83_array_ele_100
    li      s7, 1961428
    add     s7,sp,s7
    lw      s4,0(s7)
              #                    free s7
              #                    store to temp_194_array_ele_137 in mem offset_illegal
              #                    occupy a6 with 1280948_0
    li      a6, 1280948
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_194_array_ele_137
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s8 with temp_82_array_ptr_100
    li      s8, 1961432
    add     s8,sp,s8
    ld      a6,0(s8)
              #                    free s8
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a5 with 1921404_0
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_88_array_ele_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    store to temp_195_cmp_137 in mem offset_illegal
              #                    occupy a2 with 1280947_0
    li      a2, 1280947
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_195_cmp_137
              #                    occupy a2 with temp_67_array_ele_94
    li      a2, 2041500
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a2 with 2041500_0
    li      a2, 2041500
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_67_array_ele_94
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s8 with 1961432_0
    li      s8, 1961432
    add     s8,sp,s8
    sd      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_82_array_ptr_100
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a3 with 1881379_0
    li      a3, 1881379
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_94_cmp_106
              #                    occupy a3 with _anonymous_of_temp_193_array_ptr_137_0
              #                    load from temp_193_array_ptr_137 in mem
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with temp_193_array_ptr_137
    li      a2, 1280952
    add     a2,sp,a2
    ld      a3,0(a2)
              #                    free a2
              #                    store to temp_193_array_ptr_137 in mem offset_illegal
              #                    occupy a2 with 1280952_0
    li      a2, 1280952
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_193_array_ptr_137
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a2 with 2041495_0
    li      a2, 2041495
    add     a2,sp,a2
    sb      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    occupy a2 with temp_90_ptr2globl_106
    li      a2, 1921396
    add     a2,sp,a2
    lw      s1,0(a2)
              #                    free a2
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s7 with 1961428_0
    li      s7, 1961428
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_83_array_ele_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy a2 with 1921396_0
    li      a2, 1921396
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_90_ptr2globl_106
              #                    occupy a2 with temp_91_ptr2globl_106
    li      a2, 1881396
    add     a2,sp,a2
    lw      s7,0(a2)
              #                    free a2
    j       .branch_false_138
              #                    regtab     a0:Freed { symidx: temp_219_ret_of_find_143, tracked: true } |     s10:Freed { symidx: temp_220_cmp_143, tracked: true } | 
              #                          label branch_false_144: 
.branch_false_144:
              #                          jump label: branch_true_138 
              #                    store to temp_220_cmp_143 in mem offset_illegal
              #                    occupy a1 with 1120843_0
    li      a1, 1120843
    add     a1,sp,a1
    sb      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_220_cmp_143
              #                    store to temp_219_ret_of_find_143 in mem offset_illegal
              #                    occupy a0 with 1120844_0
    li      a0, 1120844
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_219_ret_of_find_143
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a0 with temp_84_cmp_100
    li      a0, 1961427
    add     a0,sp,a0
    lb      s6,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a2 with temp_86_ptr2globl_103
    li      a2, 1921420
    add     a2,sp,a2
    lw      s2,0(a2)
              #                    free a2
              #                    occupy a1 with _anonymous_of_temp_195_cmp_137_0
              #                    load from temp_195_cmp_137 in mem
              #                    occupy a3 with temp_195_cmp_137
    li      a3, 1280947
    add     a3,sp,a3
    lb      a1,0(a3)
              #                    free a3
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a4 with temp_94_cmp_106
    li      a4, 1881379
    add     a4,sp,a4
    lb      s10,0(a4)
              #                    free a4
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a5 with temp_87_array_ptr_103
    li      a5, 1921408
    add     a5,sp,a5
    ld      s3,0(a5)
              #                    free a5
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a6 with temp_88_array_ele_103
    li      a6, 1921404
    add     a6,sp,a6
    lw      s9,0(a6)
              #                    free a6
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a0 with 1961427_0
    li      a0, 1961427
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84_cmp_100
              #                    occupy a0 with _anonymous_of_temp_194_array_ele_137_0
              #                    load from temp_194_array_ele_137 in mem

              #                    occupy a7 with temp_194_array_ele_137
    li      a7, 1280948
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    store to temp_194_array_ele_137 in mem offset_illegal
              #                    occupy a7 with 1280948_0
    li      a7, 1280948
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_194_array_ele_137
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a4 with 1881379_0
    li      a4, 1881379
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_94_cmp_106
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s7 with temp_83_array_ele_100
    li      s7, 1961428
    add     s7,sp,s7
    lw      s4,0(s7)
              #                    free s7
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a6 with 1921404_0
    li      a6, 1921404
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_88_array_ele_103
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s8 with temp_82_array_ptr_100
    li      s8, 1961432
    add     s8,sp,s8
    ld      a6,0(s8)
              #                    free s8
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a5 with 1921408_0
    li      a5, 1921408
    add     a5,sp,a5
    sd      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_87_array_ptr_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a2 with 1921420_0
    li      a2, 1921420
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_86_ptr2globl_103
              #                    occupy a2 with temp_67_array_ele_94
    li      a2, 2041500
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a2 with 2041500_0
    li      a2, 2041500
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_67_array_ele_94
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s8 with 1961432_0
    li      s8, 1961432
    add     s8,sp,s8
    sd      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_82_array_ptr_100
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_195_cmp_137 in mem offset_illegal
              #                    occupy a3 with 1280947_0
    li      a3, 1280947
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_195_cmp_137
              #                    occupy a3 with _anonymous_of_temp_193_array_ptr_137_0
              #                    load from temp_193_array_ptr_137 in mem
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with temp_193_array_ptr_137
    li      a2, 1280952
    add     a2,sp,a2
    ld      a3,0(a2)
              #                    free a2
              #                    store to temp_193_array_ptr_137 in mem offset_illegal
              #                    occupy a2 with 1280952_0
    li      a2, 1280952
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_193_array_ptr_137
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a2 with 2041495_0
    li      a2, 2041495
    add     a2,sp,a2
    sb      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    occupy a2 with temp_90_ptr2globl_106
    li      a2, 1921396
    add     a2,sp,a2
    lw      s1,0(a2)
              #                    free a2
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s7 with 1961428_0
    li      s7, 1961428
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_83_array_ele_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy a2 with 1921396_0
    li      a2, 1921396
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_90_ptr2globl_106
              #                    occupy a2 with temp_91_ptr2globl_106
    li      a2, 1881396
    add     a2,sp,a2
    lw      s7,0(a2)
              #                    free a2
    j       .branch_true_138
              #                    regtab     a0:Freed { symidx: temp_194_array_ele_137, tracked: true } |     a1:Freed { symidx: temp_195_cmp_137, tracked: true } |     a3:Freed { symidx: temp_193_array_ptr_137, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_false_138: 
.branch_false_138:
              #                    regtab     a0:Freed { symidx: temp_194_array_ele_137, tracked: true } |     a1:Freed { symidx: temp_195_cmp_137, tracked: true } |     a3:Freed { symidx: temp_193_array_ptr_137, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_221_ptr2globl_147:i32 
              #                          temp_221_ptr2globl_147 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    store to temp_194_array_ele_137 in mem offset_illegal
              #                    occupy a0 with 1280948_0
    li      a0, 1280948
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_194_array_ele_137
              #                    occupy a0 with temp_221_ptr2globl_147
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_222_ptr2globl_147:Array:i32:[Some(10000_0)] 
              #                          temp_222_ptr2globl_147 = load *get_0:ptr->i32 
              #                    occupy a2 with *get_0
              #                       load label get as ptr to reg
    la      a2, get
              #                    occupy reg a2 with *get_0
              #                    store to temp_221_ptr2globl_147 in mem offset_illegal
              #                    occupy a0 with 1120836_0
    li      a0, 1120836
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_221_ptr2globl_147
              #                    occupy a0 with temp_222_ptr2globl_147
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_223_array_ptr_147:ptr->i32 
              #                          temp_223_array_ptr_147 = getelementptr temp_222_ptr2globl_147:Array:i32:[Some(10000_0)] [Some(temp_221_ptr2globl_147)] 
              #                    occupy a2 with temp_223_array_ptr_147
    li      a2, 0
              #                    store to temp_222_ptr2globl_147 in mem offset_illegal
              #                    occupy a0 with 1080836_0
    li      a0, 1080836
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_222_ptr2globl_147
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_195_cmp_137 in mem offset_illegal
              #                    occupy a1 with 1280947_0
    li      a1, 1280947
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_195_cmp_137
              #                    occupy a1 with temp_221_ptr2globl_147
              #                    load from temp_221_ptr2globl_147 in mem

              #                    occupy a1 with temp_221_ptr2globl_147
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_193_array_ptr_137 in mem offset_illegal
              #                    occupy a3 with 1280952_0
    li      a3, 1280952
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_193_array_ptr_137
              #                    occupy a3 with _anonymous_of_temp_222_ptr2globl_147_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a0 with 1080836_0
    li      a0, 1080836
    li      a0, 1080836
    add     a2,a0,a2
              #                    free a0
              #                    free a2
              #                          new_var temp_224_array_ele_147:i32 
              #                          temp_224_array_ele_147 = load temp_223_array_ptr_147:ptr->i32 
              #                    occupy a2 with temp_223_array_ptr_147
              #                    occupy a0 with temp_224_array_ele_147
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_225_cmp_147:i1 
              #                          temp_225_cmp_147 = icmp i32 Eq temp_224_array_ele_147, 47_0 
              #                    occupy a0 with temp_224_array_ele_147
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    store to temp_221_ptr2globl_147 in mem offset_illegal
              #                    occupy a1 with 1120836_0
    li      a1, 1120836
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_221_ptr2globl_147
              #                    occupy a1 with temp_225_cmp_147
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          br i1 temp_225_cmp_147, label branch_true_148, label branch_false_148 
              #                    occupy a1 with temp_225_cmp_147
              #                    free a1
              #                    occupy a1 with temp_225_cmp_147
    bnez    a1, .branch_true_148
              #                    free a1
    j       .branch_false_148
              #                    regtab     a0:Freed { symidx: temp_224_array_ele_147, tracked: true } |     a1:Freed { symidx: temp_225_cmp_147, tracked: true } |     a2:Freed { symidx: temp_223_array_ptr_147, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_true_148: 
.branch_true_148:
              #                          new_var temp_226_ptr2globl_150:i32 
              #                          temp_226_ptr2globl_150 = load *chat_0:ptr->i32 
              #                    occupy a3 with *chat_0
              #                       load label chat as ptr to reg
    la      a3, chat
              #                    occupy reg a3 with *chat_0
              #                    store to temp_224_array_ele_147 in mem offset_illegal
              #                    occupy a0 with 1080820_0
    li      a0, 1080820
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_224_array_ele_147
              #                    occupy a0 with temp_226_ptr2globl_150
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_227_ptr2globl_150:Array:i32:[Some(10000_0)] 
              #                          temp_227_ptr2globl_150 = load *chas_0:ptr->i32 
              #                    occupy a3 with *chas_0
              #                       load label chas as ptr to reg
    la      a3, chas
              #                    occupy reg a3 with *chas_0
              #                    store to temp_226_ptr2globl_150 in mem offset_illegal
              #                    occupy a0 with 1080812_0
    li      a0, 1080812
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_226_ptr2globl_150
              #                    occupy a0 with temp_227_ptr2globl_150
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_228_array_ptr_150:ptr->i32 
              #                          temp_228_array_ptr_150 = getelementptr temp_227_ptr2globl_150:Array:i32:[Some(10000_0)] [Some(temp_226_ptr2globl_150)] 
              #                    occupy a3 with temp_228_array_ptr_150
    li      a3, 0
              #                    store to temp_227_ptr2globl_150 in mem offset_illegal
              #                    occupy a0 with 1040812_0
    li      a0, 1040812
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_227_ptr2globl_150
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_225_cmp_147 in mem offset_illegal
              #                    occupy a1 with 1080819_0
    li      a1, 1080819
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_225_cmp_147
              #                    occupy a1 with temp_226_ptr2globl_150
              #                    load from temp_226_ptr2globl_150 in mem

              #                    occupy a1 with temp_226_ptr2globl_150
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_223_array_ptr_147 in mem offset_illegal
              #                    occupy a2 with 1080824_0
    li      a2, 1080824
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_223_array_ptr_147
              #                    occupy a2 with _anonymous_of_temp_227_ptr2globl_150_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a0 with 1040812_0
    li      a0, 1040812
    li      a0, 1040812
    add     a3,a0,a3
              #                    free a0
              #                    free a3
              #                          new_var temp_229_array_ele_150:i32 
              #                          temp_229_array_ele_150 = load temp_228_array_ptr_150:ptr->i32 
              #                    occupy a3 with temp_228_array_ptr_150
              #                    occupy a0 with temp_229_array_ele_150
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_230_cmp_150:i1 
              #                          temp_230_cmp_150 = icmp i32 Eq temp_229_array_ele_150, 94_0 
              #                    occupy a0 with temp_229_array_ele_150
              #                    occupy a2 with 94_0
    li      a2, 94
              #                    store to temp_226_ptr2globl_150 in mem offset_illegal
              #                    occupy a1 with 1080812_0
    li      a1, 1080812
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_226_ptr2globl_150
              #                    occupy a1 with temp_230_cmp_150
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_231_ptr2globl_150:i32 
              #                          temp_231_ptr2globl_150 = load *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    store to temp_229_array_ele_150 in mem offset_illegal
              #                    occupy a0 with 1040796_0
    li      a0, 1040796
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_229_array_ele_150
              #                    occupy a0 with temp_231_ptr2globl_150
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_232_ptr2globl_150:Array:i32:[Some(10000_0)] 
              #                          temp_232_ptr2globl_150 = load *chas_0:ptr->i32 
              #                    occupy a2 with *chas_0
              #                       load label chas as ptr to reg
    la      a2, chas
              #                    occupy reg a2 with *chas_0
              #                    store to temp_231_ptr2globl_150 in mem offset_illegal
              #                    occupy a0 with 1040788_0
    li      a0, 1040788
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_231_ptr2globl_150
              #                    occupy a0 with temp_232_ptr2globl_150
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_233_array_ptr_150:ptr->i32 
              #                          temp_233_array_ptr_150 = getelementptr temp_232_ptr2globl_150:Array:i32:[Some(10000_0)] [Some(temp_231_ptr2globl_150)] 
              #                    occupy a2 with temp_233_array_ptr_150
    li      a2, 0
              #                    store to temp_232_ptr2globl_150 in mem offset_illegal
              #                    occupy a0 with 1000788_0
    li      a0, 1000788
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_232_ptr2globl_150
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_230_cmp_150 in mem offset_illegal
              #                    occupy a1 with 1040795_0
    li      a1, 1040795
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_230_cmp_150
              #                    occupy a1 with temp_231_ptr2globl_150
              #                    load from temp_231_ptr2globl_150 in mem

              #                    occupy a1 with temp_231_ptr2globl_150
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_228_array_ptr_150 in mem offset_illegal
              #                    occupy a3 with 1040800_0
    li      a3, 1040800
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_228_array_ptr_150
              #                    occupy a3 with _anonymous_of_temp_232_ptr2globl_150_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a0 with 1000788_0
    li      a0, 1000788
    li      a0, 1000788
    add     a2,a0,a2
              #                    free a0
              #                    free a2
              #                          new_var temp_234_array_ele_150:i32 
              #                          temp_234_array_ele_150 = load temp_233_array_ptr_150:ptr->i32 
              #                    occupy a2 with temp_233_array_ptr_150
              #                    occupy a0 with temp_234_array_ele_150
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_235_cmp_150:i1 
              #                          temp_235_cmp_150 = icmp i32 Eq temp_234_array_ele_150, 37_0 
              #                    occupy a0 with temp_234_array_ele_150
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    store to temp_231_ptr2globl_150 in mem offset_illegal
              #                    occupy a1 with 1040788_0
    li      a1, 1040788
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_231_ptr2globl_150
              #                    occupy a1 with temp_235_cmp_150
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_236_logic_150:i1 
              #                          temp_236_logic_150 = Or i1 temp_235_cmp_150, temp_230_cmp_150 
              #                    occupy a1 with temp_235_cmp_150
              #                    occupy a3 with temp_230_cmp_150
              #                    load from temp_230_cmp_150 in mem
              #                    occupy a3 with temp_230_cmp_150
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_230_cmp_150
              #                    free a1
              #                    free a3
              #                    free a3
              #                          new_var temp_237_ptr2globl_150:i32 
              #                          temp_237_ptr2globl_150 = load *chat_0:ptr->i32 
              #                    store to temp_234_array_ele_150 in mem offset_illegal
              #                    occupy a0 with 1000772_0
    li      a0, 1000772
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_234_array_ele_150
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_235_cmp_150 in mem offset_illegal
              #                    occupy a1 with 1000771_0
    li      a1, 1000771
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_235_cmp_150
              #                    occupy a1 with temp_237_ptr2globl_150
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_238_ptr2globl_150:Array:i32:[Some(10000_0)] 
              #                          temp_238_ptr2globl_150 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_237_ptr2globl_150 in mem offset_illegal
              #                    occupy a1 with 1000764_0
    li      a1, 1000764
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_237_ptr2globl_150
              #                    occupy a1 with temp_238_ptr2globl_150
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_239_array_ptr_150:ptr->i32 
              #                          temp_239_array_ptr_150 = getelementptr temp_238_ptr2globl_150:Array:i32:[Some(10000_0)] [Some(temp_237_ptr2globl_150)] 
              #                    occupy a0 with temp_239_array_ptr_150
    li      a0, 0
              #                    store to temp_238_ptr2globl_150 in mem offset_illegal
              #                    occupy a1 with 960764_0
    li      a1, 960764
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_238_ptr2globl_150
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_233_array_ptr_150 in mem offset_illegal
              #                    occupy a2 with 1000776_0
    li      a2, 1000776
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_233_array_ptr_150
              #                    occupy a2 with temp_237_ptr2globl_150
              #                    load from temp_237_ptr2globl_150 in mem

              #                    occupy a2 with temp_237_ptr2globl_150
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_230_cmp_150 in mem offset_illegal
              #                    occupy a3 with 1040795_0
    li      a3, 1040795
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_230_cmp_150
              #                    occupy a3 with _anonymous_of_temp_238_ptr2globl_150_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 960764_0
    li      a1, 960764
    li      a1, 960764
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_240_array_ele_150:i32 
              #                          temp_240_array_ele_150 = load temp_239_array_ptr_150:ptr->i32 
              #                    occupy a0 with temp_239_array_ptr_150
              #                    occupy a1 with temp_240_array_ele_150
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_241_cmp_150:i1 
              #                          temp_241_cmp_150 = icmp i32 Eq temp_240_array_ele_150, 47_0 
              #                    occupy a1 with temp_240_array_ele_150
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    store to temp_239_array_ptr_150 in mem offset_illegal
              #                    occupy a0 with 960752_0
    li      a0, 960752
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_239_array_ptr_150
              #                    occupy a0 with temp_241_cmp_150
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_242_logic_150:i1 
              #                          temp_242_logic_150 = Or i1 temp_241_cmp_150, temp_236_logic_150 
              #                    occupy a0 with temp_241_cmp_150
              #                    occupy a3 with temp_236_logic_150
              #                    load from temp_236_logic_150 in mem
              #                    occupy a3 with temp_236_logic_150
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_236_logic_150
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_243_ptr2globl_150:i32 
              #                          temp_243_ptr2globl_150 = load *chat_0:ptr->i32 
              #                    store to temp_241_cmp_150 in mem offset_illegal
              #                    occupy a0 with 960747_0
    li      a0, 960747
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_241_cmp_150
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_240_array_ele_150 in mem offset_illegal
              #                    occupy a1 with 960748_0
    li      a1, 960748
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_240_array_ele_150
              #                    occupy a1 with temp_243_ptr2globl_150
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_244_ptr2globl_150:Array:i32:[Some(10000_0)] 
              #                          temp_244_ptr2globl_150 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_243_ptr2globl_150 in mem offset_illegal
              #                    occupy a1 with 960740_0
    li      a1, 960740
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_243_ptr2globl_150
              #                    occupy a1 with temp_244_ptr2globl_150
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_245_array_ptr_150:ptr->i32 
              #                          temp_245_array_ptr_150 = getelementptr temp_244_ptr2globl_150:Array:i32:[Some(10000_0)] [Some(temp_243_ptr2globl_150)] 
              #                    occupy a0 with temp_245_array_ptr_150
    li      a0, 0
              #                    store to temp_244_ptr2globl_150 in mem offset_illegal
              #                    occupy a1 with 920740_0
    li      a1, 920740
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_244_ptr2globl_150
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_237_ptr2globl_150 in mem offset_illegal
              #                    occupy a2 with 1000764_0
    li      a2, 1000764
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_237_ptr2globl_150
              #                    occupy a2 with temp_243_ptr2globl_150
              #                    load from temp_243_ptr2globl_150 in mem

              #                    occupy a2 with temp_243_ptr2globl_150
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_236_logic_150 in mem offset_illegal
              #                    occupy a3 with 1000770_0
    li      a3, 1000770
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_236_logic_150
              #                    occupy a3 with _anonymous_of_temp_244_ptr2globl_150_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 920740_0
    li      a1, 920740
    li      a1, 920740
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_246_array_ele_150:i32 
              #                          temp_246_array_ele_150 = load temp_245_array_ptr_150:ptr->i32 
              #                    occupy a0 with temp_245_array_ptr_150
              #                    occupy a1 with temp_246_array_ele_150
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_247_cmp_150:i1 
              #                          temp_247_cmp_150 = icmp i32 Eq temp_246_array_ele_150, 42_0 
              #                    occupy a1 with temp_246_array_ele_150
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_245_array_ptr_150 in mem offset_illegal
              #                    occupy a0 with 920728_0
    li      a0, 920728
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_245_array_ptr_150
              #                    occupy a0 with temp_247_cmp_150
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_248_logic_150:i1 
              #                          temp_248_logic_150 = Or i1 temp_247_cmp_150, temp_242_logic_150 
              #                    occupy a0 with temp_247_cmp_150
              #                    occupy a3 with temp_242_logic_150
              #                    load from temp_242_logic_150 in mem
              #                    occupy a3 with temp_242_logic_150
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_242_logic_150
              #                    free a0
              #                    free a3
              #                    free a3
              #                          br i1 temp_248_logic_150, label while.body_151, label while.exit_151 
              #                    store to temp_247_cmp_150 in mem offset_illegal
              #                    occupy a0 with 920723_0
    li      a0, 920723
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_247_cmp_150
              #                    occupy a0 with temp_248_logic_150
              #                    load from temp_248_logic_150 in mem
              #                    occupy a0 with temp_248_logic_150
    add     a0,sp,a0
    lb      a0,0(a0)
              #                    free a0
              #                    free a0
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy s6 with 1961427_0
    li      s6, 1961427
    add     s6,sp,s6
    sb      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_84_cmp_100
              #                    occupy a0 with temp_248_logic_150
    bnez    a0, .while.body_151
              #                    free a0
    j       .while.exit_151
              #                    regtab     a0:Freed { symidx: temp_248_logic_150, tracked: true } |     a1:Freed { symidx: temp_246_array_ele_150, tracked: true } |     a2:Freed { symidx: temp_243_ptr2globl_150, tracked: true } |     a3:Freed { symidx: temp_242_logic_150, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label while.body_151: 
.while.body_151:
              #                          new_var temp_249_ret_of_find_153:i32 
              #                          temp_249_ret_of_find_153 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s1 with 1921396_0
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_90_ptr2globl_106
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy s1 with 1921420_0
    li      s1, 1921420
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s2 with 1921408_0
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s3 with 1961428_0
    li      s3, 1961428
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy s4 with 1841304_0
    li      s4, 1841304
    add     s4,sp,s4
    sd      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_109_array_ptr_117
              #                    store to temp_91_ptr2globl_106 in mem offset_illegal
              #                    occupy s5 with 1881396_0
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_91_ptr2globl_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s6 with 1881384_0
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_92_array_ptr_106
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s7 with 1921404_0
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy s8 with 1881379_0
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_94_cmp_106
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s9 with 1921403_0
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_248_logic_150 in mem offset_illegal
              #                    occupy a0 with 920722_0
    li      a0, 920722
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_248_logic_150
              #                    store to temp_246_array_ele_150 in mem offset_illegal
              #                    occupy a0 with 920724_0
    li      a0, 920724
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_246_array_ele_150
              #                    store to temp_243_ptr2globl_150 in mem offset_illegal
              #                    occupy a1 with 960740_0
    li      a1, 960740
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_243_ptr2globl_150
              #                    store to temp_242_logic_150 in mem offset_illegal
              #                    occupy a2 with 960746_0
    li      a2, 960746
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_242_logic_150
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a3 with 1961440_0
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a4 with 2041500_0
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a5 with 1961432_0
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a6 with 2041495_0
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                    store to temp_249_ret_of_find_153 in mem offset_illegal
              #                    occupy a0 with 920716_0
    li      a0, 920716
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_250_cmp_153:i1 
              #                          temp_250_cmp_153 = icmp i32 Eq temp_249_ret_of_find_153, 0_0 
              #                    occupy a0 with temp_249_ret_of_find_153
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s10 with temp_250_cmp_153
    xor     s10,a0,a7
    seqz    s10, s10
              #                    free a0
              #                    free a7
              #                    free s10
              #                          br i1 temp_250_cmp_153, label branch_true_154, label branch_false_154 
              #                    occupy s10 with temp_250_cmp_153
              #                    free s10
              #                    occupy s10 with temp_250_cmp_153
    bnez    s10, .branch_true_154
              #                    free s10
    j       .branch_false_154
              #                    regtab     a0:Freed { symidx: temp_249_ret_of_find_153, tracked: true } |     s10:Freed { symidx: temp_250_cmp_153, tracked: true } | 
              #                          label branch_true_154: 
.branch_true_154:
              #                          jump label: while.exit_151 
              #                    store to temp_250_cmp_153 in mem offset_illegal
              #                    occupy a1 with 920715_0
    li      a1, 920715
    add     a1,sp,a1
    sb      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_250_cmp_153
              #                    store to temp_249_ret_of_find_153 in mem offset_illegal
              #                    occupy a0 with 920716_0
    li      a0, 920716
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_249_ret_of_find_153
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a0 with temp_86_ptr2globl_103
    li      a0, 1921420
    add     a0,sp,a0
    lw      s2,0(a0)
              #                    free a0
              #                    occupy a1 with _anonymous_of_temp_246_array_ele_150_0
              #                    load from temp_246_array_ele_150 in mem

              #                    occupy a2 with temp_246_array_ele_150
    li      a2, 920724
    add     a2,sp,a2
    lw      a1,0(a2)
              #                    free a2
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a3 with temp_94_cmp_106
    li      a3, 1881379
    add     a3,sp,a3
    lb      s10,0(a3)
              #                    free a3
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a4 with temp_87_array_ptr_103
    li      a4, 1921408
    add     a4,sp,a4
    ld      s3,0(a4)
              #                    free a4
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a5 with temp_88_array_ele_103
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
              #                    free a5
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a0 with 1921420_0
    li      a0, 1921420
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_86_ptr2globl_103
              #                    occupy a0 with _anonymous_of_temp_248_logic_150_0
              #                    load from temp_248_logic_150 in mem
              #                    occupy a6 with temp_248_logic_150
    li      a6, 920722
    add     a6,sp,a6
    lb      a0,0(a6)
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a4 with 1921408_0
    li      a4, 1921408
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_87_array_ptr_103
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s6 with temp_83_array_ele_100
    li      s6, 1961428
    add     s6,sp,s6
    lw      s4,0(s6)
              #                    free s6
              #                    store to temp_248_logic_150 in mem offset_illegal
              #                    occupy a6 with 920722_0
    li      a6, 920722
    add     a6,sp,a6
    sb      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_248_logic_150
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s7 with temp_82_array_ptr_100
    li      s7, 1961432
    add     s7,sp,s7
    ld      a6,0(s7)
              #                    free s7
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a5 with 1921404_0
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_88_array_ele_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    occupy s8 with temp_67_array_ele_94
    li      s8, 2041500
    add     s8,sp,s8
    lw      a5,0(s8)
              #                    free s8
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_246_array_ele_150 in mem offset_illegal
              #                    occupy a2 with 920724_0
    li      a2, 920724
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_246_array_ele_150
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy s8 with 2041500_0
    li      s8, 2041500
    add     s8,sp,s8
    sw      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_67_array_ele_94
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a3 with 1881379_0
    li      a3, 1881379
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_94_cmp_106
              #                    occupy a3 with _anonymous_of_temp_242_logic_150_0
              #                    load from temp_242_logic_150 in mem
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with temp_242_logic_150
    li      a2, 960746
    add     a2,sp,a2
    lb      a3,0(a2)
              #                    free a2
              #                    store to temp_242_logic_150 in mem offset_illegal
              #                    occupy a2 with 960746_0
    li      a2, 960746
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_242_logic_150
              #                    occupy a2 with _anonymous_of_temp_243_ptr2globl_150_0
              #                    load from temp_243_ptr2globl_150 in mem

              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy s1 with 2041495_0
    li      s1, 2041495
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with temp_243_ptr2globl_150
    li      s1, 960740
    add     s1,sp,s1
    lw      a2,0(s1)
              #                    free s1
              #                    store to temp_243_ptr2globl_150 in mem offset_illegal
              #                    occupy s1 with 960740_0
    li      s1, 960740
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_243_ptr2globl_150
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s6 with 1961428_0
    li      s6, 1961428
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_83_array_ele_100
              #                    occupy s6 with temp_90_ptr2globl_106
    li      s6, 1921396
    add     s6,sp,s6
    lw      s1,0(s6)
              #                    free s6
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s7 with 1961432_0
    li      s7, 1961432
    add     s7,sp,s7
    sd      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_82_array_ptr_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s6 with 1921396_0
    li      s6, 1921396
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_90_ptr2globl_106
              #                    occupy s6 with temp_91_ptr2globl_106
    li      s6, 1881396
    add     s6,sp,s6
    lw      s7,0(s6)
              #                    free s6
    j       .while.exit_151
              #                    regtab     a0:Freed { symidx: temp_248_logic_150, tracked: true } |     a1:Freed { symidx: temp_246_array_ele_150, tracked: true } |     a2:Freed { symidx: temp_243_ptr2globl_150, tracked: true } |     a3:Freed { symidx: temp_242_logic_150, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label while.exit_151: 
.while.exit_151:
              #                           Call void chapush_0(47_0) 
              #                    saved register dumping to mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s1 with 1921396_0
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_90_ptr2globl_106
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy s1 with 1921420_0
    li      s1, 1921420
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s2 with 1921408_0
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s3 with 1961428_0
    li      s3, 1961428
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy s4 with 1841304_0
    li      s4, 1841304
    add     s4,sp,s4
    sd      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_109_array_ptr_117
              #                    store to temp_91_ptr2globl_106 in mem offset_illegal
              #                    occupy s5 with 1881396_0
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_91_ptr2globl_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s6 with 1881384_0
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_92_array_ptr_106
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s7 with 1921404_0
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy s8 with 1881379_0
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_94_cmp_106
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s9 with 1921403_0
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_248_logic_150 in mem offset_illegal
              #                    occupy a0 with 920722_0
    li      a0, 920722
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_248_logic_150
              #                    store to temp_246_array_ele_150 in mem offset_illegal
              #                    occupy a0 with 920724_0
    li      a0, 920724
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_246_array_ele_150
              #                    store to temp_243_ptr2globl_150 in mem offset_illegal
              #                    occupy a1 with 960740_0
    li      a1, 960740
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_243_ptr2globl_150
              #                    store to temp_242_logic_150 in mem offset_illegal
              #                    occupy a2 with 960746_0
    li      a2, 960746
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_242_logic_150
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a3 with 1961440_0
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a4 with 2041500_0
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a5 with 1961432_0
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a6 with 2041495_0
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_47_0_0
    li      a0, 47
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_148 
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a0 with temp_84_cmp_100
    li      a0, 1961427
    add     a0,sp,a0
    lb      s6,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a1 with temp_86_ptr2globl_103
    li      a1, 1921420
    add     a1,sp,a1
    lw      s2,0(a1)
              #                    free a1
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a1 with 1921420_0
    li      a1, 1921420
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_86_ptr2globl_103
              #                    occupy a1 with _anonymous_of_temp_225_cmp_147_0
              #                    load from temp_225_cmp_147 in mem
              #                    occupy a2 with temp_225_cmp_147
    li      a2, 1080819
    add     a2,sp,a2
    lb      a1,0(a2)
              #                    free a2
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a3 with temp_94_cmp_106
    li      a3, 1881379
    add     a3,sp,a3
    lb      s10,0(a3)
              #                    free a3
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a4 with temp_87_array_ptr_103
    li      a4, 1921408
    add     a4,sp,a4
    ld      s3,0(a4)
              #                    free a4
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a5 with temp_88_array_ele_103
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
              #                    free a5
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a0 with 1961427_0
    li      a0, 1961427
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84_cmp_100
              #                    occupy a0 with _anonymous_of_temp_224_array_ele_147_0
              #                    load from temp_224_array_ele_147 in mem

              #                    occupy a6 with temp_224_array_ele_147
    li      a6, 1080820
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a4 with 1921408_0
    li      a4, 1921408
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_87_array_ptr_103
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s7 with temp_83_array_ele_100
    li      s7, 1961428
    add     s7,sp,s7
    lw      s4,0(s7)
              #                    free s7
              #                    store to temp_224_array_ele_147 in mem offset_illegal
              #                    occupy a6 with 1080820_0
    li      a6, 1080820
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_224_array_ele_147
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s8 with temp_82_array_ptr_100
    li      s8, 1961432
    add     s8,sp,s8
    ld      a6,0(s8)
              #                    free s8
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a5 with 1921404_0
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_88_array_ele_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    store to temp_225_cmp_147 in mem offset_illegal
              #                    occupy a2 with 1080819_0
    li      a2, 1080819
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_225_cmp_147
              #                    occupy a2 with temp_67_array_ele_94
    li      a2, 2041500
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a2 with 2041500_0
    li      a2, 2041500
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_67_array_ele_94
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s8 with 1961432_0
    li      s8, 1961432
    add     s8,sp,s8
    sd      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_82_array_ptr_100
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a3 with 1881379_0
    li      a3, 1881379
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_94_cmp_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with _anonymous_of_temp_223_array_ptr_147_0
              #                    load from temp_223_array_ptr_147 in mem
              #                    occupy a3 with temp_223_array_ptr_147
    li      a3, 1080824
    add     a3,sp,a3
    ld      a2,0(a3)
              #                    free a3
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy s1 with 2041495_0
    li      s1, 2041495
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    store to temp_223_array_ptr_147 in mem offset_illegal
              #                    occupy a3 with 1080824_0
    li      a3, 1080824
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_223_array_ptr_147
              #                    occupy a3 with temp_90_ptr2globl_106
    li      a3, 1921396
    add     a3,sp,a3
    lw      s1,0(a3)
              #                    free a3
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s7 with 1961428_0
    li      s7, 1961428
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_83_array_ele_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy a3 with 1921396_0
    li      a3, 1921396
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_90_ptr2globl_106
              #                    occupy a3 with temp_91_ptr2globl_106
    li      a3, 1881396
    add     a3,sp,a3
    lw      s7,0(a3)
              #                    free a3
    j       .branch_false_148
              #                    regtab     a0:Freed { symidx: temp_249_ret_of_find_153, tracked: true } |     s10:Freed { symidx: temp_250_cmp_153, tracked: true } | 
              #                          label branch_false_154: 
.branch_false_154:
              #                          jump label: branch_true_148 
              #                    store to temp_250_cmp_153 in mem offset_illegal
              #                    occupy a1 with 920715_0
    li      a1, 920715
    add     a1,sp,a1
    sb      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_250_cmp_153
              #                    store to temp_249_ret_of_find_153 in mem offset_illegal
              #                    occupy a0 with 920716_0
    li      a0, 920716
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_249_ret_of_find_153
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a0 with temp_84_cmp_100
    li      a0, 1961427
    add     a0,sp,a0
    lb      s6,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a2 with temp_86_ptr2globl_103
    li      a2, 1921420
    add     a2,sp,a2
    lw      s2,0(a2)
              #                    free a2
              #                    occupy a1 with _anonymous_of_temp_225_cmp_147_0
              #                    load from temp_225_cmp_147 in mem
              #                    occupy a3 with temp_225_cmp_147
    li      a3, 1080819
    add     a3,sp,a3
    lb      a1,0(a3)
              #                    free a3
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a4 with temp_94_cmp_106
    li      a4, 1881379
    add     a4,sp,a4
    lb      s10,0(a4)
              #                    free a4
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a5 with temp_87_array_ptr_103
    li      a5, 1921408
    add     a5,sp,a5
    ld      s3,0(a5)
              #                    free a5
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a6 with temp_88_array_ele_103
    li      a6, 1921404
    add     a6,sp,a6
    lw      s9,0(a6)
              #                    free a6
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a0 with 1961427_0
    li      a0, 1961427
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84_cmp_100
              #                    occupy a0 with _anonymous_of_temp_224_array_ele_147_0
              #                    load from temp_224_array_ele_147 in mem

              #                    occupy a7 with temp_224_array_ele_147
    li      a7, 1080820
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    store to temp_224_array_ele_147 in mem offset_illegal
              #                    occupy a7 with 1080820_0
    li      a7, 1080820
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_224_array_ele_147
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a4 with 1881379_0
    li      a4, 1881379
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_94_cmp_106
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s7 with temp_83_array_ele_100
    li      s7, 1961428
    add     s7,sp,s7
    lw      s4,0(s7)
              #                    free s7
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a6 with 1921404_0
    li      a6, 1921404
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_88_array_ele_103
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s8 with temp_82_array_ptr_100
    li      s8, 1961432
    add     s8,sp,s8
    ld      a6,0(s8)
              #                    free s8
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a5 with 1921408_0
    li      a5, 1921408
    add     a5,sp,a5
    sd      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_87_array_ptr_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a2 with 1921420_0
    li      a2, 1921420
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_86_ptr2globl_103
              #                    occupy a2 with temp_67_array_ele_94
    li      a2, 2041500
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a2 with 2041500_0
    li      a2, 2041500
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_67_array_ele_94
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s8 with 1961432_0
    li      s8, 1961432
    add     s8,sp,s8
    sd      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_82_array_ptr_100
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_225_cmp_147 in mem offset_illegal
              #                    occupy a3 with 1080819_0
    li      a3, 1080819
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_225_cmp_147
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with _anonymous_of_temp_223_array_ptr_147_0
              #                    load from temp_223_array_ptr_147 in mem
              #                    occupy a3 with temp_223_array_ptr_147
    li      a3, 1080824
    add     a3,sp,a3
    ld      a2,0(a3)
              #                    free a3
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy s1 with 2041495_0
    li      s1, 2041495
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    store to temp_223_array_ptr_147 in mem offset_illegal
              #                    occupy a3 with 1080824_0
    li      a3, 1080824
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_223_array_ptr_147
              #                    occupy a3 with temp_90_ptr2globl_106
    li      a3, 1921396
    add     a3,sp,a3
    lw      s1,0(a3)
              #                    free a3
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s7 with 1961428_0
    li      s7, 1961428
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_83_array_ele_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy a3 with 1921396_0
    li      a3, 1921396
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_90_ptr2globl_106
              #                    occupy a3 with temp_91_ptr2globl_106
    li      a3, 1881396
    add     a3,sp,a3
    lw      s7,0(a3)
              #                    free a3
    j       .branch_true_148
              #                    regtab     a0:Freed { symidx: temp_224_array_ele_147, tracked: true } |     a1:Freed { symidx: temp_225_cmp_147, tracked: true } |     a2:Freed { symidx: temp_223_array_ptr_147, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_false_148: 
.branch_false_148:
              #                    regtab     a0:Freed { symidx: temp_224_array_ele_147, tracked: true } |     a1:Freed { symidx: temp_225_cmp_147, tracked: true } |     a2:Freed { symidx: temp_223_array_ptr_147, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_251_ptr2globl_157:i32 
              #                          temp_251_ptr2globl_157 = load *i_0:ptr->i32 
              #                    occupy a3 with *i_0
              #                       load label i as ptr to reg
    la      a3, i
              #                    occupy reg a3 with *i_0
              #                    store to temp_224_array_ele_147 in mem offset_illegal
              #                    occupy a0 with 1080820_0
    li      a0, 1080820
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_224_array_ele_147
              #                    occupy a0 with temp_251_ptr2globl_157
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_252_ptr2globl_157:Array:i32:[Some(10000_0)] 
              #                          temp_252_ptr2globl_157 = load *get_0:ptr->i32 
              #                    occupy a3 with *get_0
              #                       load label get as ptr to reg
    la      a3, get
              #                    occupy reg a3 with *get_0
              #                    store to temp_251_ptr2globl_157 in mem offset_illegal
              #                    occupy a0 with 920708_0
    li      a0, 920708
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_251_ptr2globl_157
              #                    occupy a0 with temp_252_ptr2globl_157
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_253_array_ptr_157:ptr->i32 
              #                          temp_253_array_ptr_157 = getelementptr temp_252_ptr2globl_157:Array:i32:[Some(10000_0)] [Some(temp_251_ptr2globl_157)] 
              #                    occupy a3 with temp_253_array_ptr_157
    li      a3, 0
              #                    store to temp_252_ptr2globl_157 in mem offset_illegal
              #                    occupy a0 with 880708_0
    li      a0, 880708
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_252_ptr2globl_157
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_225_cmp_147 in mem offset_illegal
              #                    occupy a1 with 1080819_0
    li      a1, 1080819
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_225_cmp_147
              #                    occupy a1 with temp_251_ptr2globl_157
              #                    load from temp_251_ptr2globl_157 in mem

              #                    occupy a1 with temp_251_ptr2globl_157
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_223_array_ptr_147 in mem offset_illegal
              #                    occupy a2 with 1080824_0
    li      a2, 1080824
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_223_array_ptr_147
              #                    occupy a2 with _anonymous_of_temp_252_ptr2globl_157_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a0 with 880708_0
    li      a0, 880708
    li      a0, 880708
    add     a3,a0,a3
              #                    free a0
              #                    free a3
              #                          new_var temp_254_array_ele_157:i32 
              #                          temp_254_array_ele_157 = load temp_253_array_ptr_157:ptr->i32 
              #                    occupy a3 with temp_253_array_ptr_157
              #                    occupy a0 with temp_254_array_ele_157
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_255_cmp_157:i1 
              #                          temp_255_cmp_157 = icmp i32 Eq temp_254_array_ele_157, 37_0 
              #                    occupy a0 with temp_254_array_ele_157
              #                    occupy a2 with 37_0
    li      a2, 37
              #                    store to temp_251_ptr2globl_157 in mem offset_illegal
              #                    occupy a1 with 920708_0
    li      a1, 920708
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_251_ptr2globl_157
              #                    occupy a1 with temp_255_cmp_157
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_255_cmp_157, label branch_true_158, label branch_false_158 
              #                    occupy a1 with temp_255_cmp_157
              #                    free a1
              #                    occupy a1 with temp_255_cmp_157
    bnez    a1, .branch_true_158
              #                    free a1
    j       .branch_false_158
              #                    regtab     a0:Freed { symidx: temp_254_array_ele_157, tracked: true } |     a1:Freed { symidx: temp_255_cmp_157, tracked: true } |     a3:Freed { symidx: temp_253_array_ptr_157, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_true_158: 
.branch_true_158:
              #                          new_var temp_256_ptr2globl_160:i32 
              #                          temp_256_ptr2globl_160 = load *chat_0:ptr->i32 
              #                    occupy a2 with *chat_0
              #                       load label chat as ptr to reg
    la      a2, chat
              #                    occupy reg a2 with *chat_0
              #                    store to temp_254_array_ele_157 in mem offset_illegal
              #                    occupy a0 with 880692_0
    li      a0, 880692
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_254_array_ele_157
              #                    occupy a0 with temp_256_ptr2globl_160
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_257_ptr2globl_160:Array:i32:[Some(10000_0)] 
              #                          temp_257_ptr2globl_160 = load *chas_0:ptr->i32 
              #                    occupy a2 with *chas_0
              #                       load label chas as ptr to reg
    la      a2, chas
              #                    occupy reg a2 with *chas_0
              #                    store to temp_256_ptr2globl_160 in mem offset_illegal
              #                    occupy a0 with 880684_0
    li      a0, 880684
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_256_ptr2globl_160
              #                    occupy a0 with temp_257_ptr2globl_160
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_258_array_ptr_160:ptr->i32 
              #                          temp_258_array_ptr_160 = getelementptr temp_257_ptr2globl_160:Array:i32:[Some(10000_0)] [Some(temp_256_ptr2globl_160)] 
              #                    occupy a2 with temp_258_array_ptr_160
    li      a2, 0
              #                    store to temp_257_ptr2globl_160 in mem offset_illegal
              #                    occupy a0 with 840684_0
    li      a0, 840684
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_257_ptr2globl_160
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_255_cmp_157 in mem offset_illegal
              #                    occupy a1 with 880691_0
    li      a1, 880691
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_255_cmp_157
              #                    occupy a1 with temp_256_ptr2globl_160
              #                    load from temp_256_ptr2globl_160 in mem

              #                    occupy a1 with temp_256_ptr2globl_160
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_253_array_ptr_157 in mem offset_illegal
              #                    occupy a3 with 880696_0
    li      a3, 880696
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_253_array_ptr_157
              #                    occupy a3 with _anonymous_of_temp_257_ptr2globl_160_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a0 with 840684_0
    li      a0, 840684
    li      a0, 840684
    add     a2,a0,a2
              #                    free a0
              #                    free a2
              #                          new_var temp_259_array_ele_160:i32 
              #                          temp_259_array_ele_160 = load temp_258_array_ptr_160:ptr->i32 
              #                    occupy a2 with temp_258_array_ptr_160
              #                    occupy a0 with temp_259_array_ele_160
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_260_cmp_160:i1 
              #                          temp_260_cmp_160 = icmp i32 Eq temp_259_array_ele_160, 94_0 
              #                    occupy a0 with temp_259_array_ele_160
              #                    occupy a3 with 94_0
    li      a3, 94
              #                    store to temp_256_ptr2globl_160 in mem offset_illegal
              #                    occupy a1 with 880684_0
    li      a1, 880684
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_256_ptr2globl_160
              #                    occupy a1 with temp_260_cmp_160
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_261_ptr2globl_160:i32 
              #                          temp_261_ptr2globl_160 = load *chat_0:ptr->i32 
              #                    occupy a3 with *chat_0
              #                       load label chat as ptr to reg
    la      a3, chat
              #                    occupy reg a3 with *chat_0
              #                    store to temp_259_array_ele_160 in mem offset_illegal
              #                    occupy a0 with 840668_0
    li      a0, 840668
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_259_array_ele_160
              #                    occupy a0 with temp_261_ptr2globl_160
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_262_ptr2globl_160:Array:i32:[Some(10000_0)] 
              #                          temp_262_ptr2globl_160 = load *chas_0:ptr->i32 
              #                    occupy a3 with *chas_0
              #                       load label chas as ptr to reg
    la      a3, chas
              #                    occupy reg a3 with *chas_0
              #                    store to temp_261_ptr2globl_160 in mem offset_illegal
              #                    occupy a0 with 840660_0
    li      a0, 840660
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_261_ptr2globl_160
              #                    occupy a0 with temp_262_ptr2globl_160
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_263_array_ptr_160:ptr->i32 
              #                          temp_263_array_ptr_160 = getelementptr temp_262_ptr2globl_160:Array:i32:[Some(10000_0)] [Some(temp_261_ptr2globl_160)] 
              #                    occupy a3 with temp_263_array_ptr_160
    li      a3, 0
              #                    store to temp_262_ptr2globl_160 in mem offset_illegal
              #                    occupy a0 with 800660_0
    li      a0, 800660
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_262_ptr2globl_160
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_260_cmp_160 in mem offset_illegal
              #                    occupy a1 with 840667_0
    li      a1, 840667
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_260_cmp_160
              #                    occupy a1 with temp_261_ptr2globl_160
              #                    load from temp_261_ptr2globl_160 in mem

              #                    occupy a1 with temp_261_ptr2globl_160
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_258_array_ptr_160 in mem offset_illegal
              #                    occupy a2 with 840672_0
    li      a2, 840672
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_258_array_ptr_160
              #                    occupy a2 with _anonymous_of_temp_262_ptr2globl_160_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a0 with 800660_0
    li      a0, 800660
    li      a0, 800660
    add     a3,a0,a3
              #                    free a0
              #                    free a3
              #                          new_var temp_264_array_ele_160:i32 
              #                          temp_264_array_ele_160 = load temp_263_array_ptr_160:ptr->i32 
              #                    occupy a3 with temp_263_array_ptr_160
              #                    occupy a0 with temp_264_array_ele_160
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_265_cmp_160:i1 
              #                          temp_265_cmp_160 = icmp i32 Eq temp_264_array_ele_160, 37_0 
              #                    occupy a0 with temp_264_array_ele_160
              #                    occupy a2 with 37_0
    li      a2, 37
              #                    store to temp_261_ptr2globl_160 in mem offset_illegal
              #                    occupy a1 with 840660_0
    li      a1, 840660
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_261_ptr2globl_160
              #                    occupy a1 with temp_265_cmp_160
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_266_logic_160:i1 
              #                          temp_266_logic_160 = Or i1 temp_265_cmp_160, temp_260_cmp_160 
              #                    occupy a1 with temp_265_cmp_160
              #                    occupy a2 with temp_260_cmp_160
              #                    load from temp_260_cmp_160 in mem
              #                    occupy a2 with temp_260_cmp_160
    add     a2,sp,a2
    lb      a2,0(a2)
              #                    free a2
              #                    occupy a2 with temp_260_cmp_160
              #                    free a1
              #                    free a2
              #                    free a2
              #                          new_var temp_267_ptr2globl_160:i32 
              #                          temp_267_ptr2globl_160 = load *chat_0:ptr->i32 
              #                    store to temp_264_array_ele_160 in mem offset_illegal
              #                    occupy a0 with 800644_0
    li      a0, 800644
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_264_array_ele_160
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_265_cmp_160 in mem offset_illegal
              #                    occupy a1 with 800643_0
    li      a1, 800643
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_265_cmp_160
              #                    occupy a1 with temp_267_ptr2globl_160
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_268_ptr2globl_160:Array:i32:[Some(10000_0)] 
              #                          temp_268_ptr2globl_160 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_267_ptr2globl_160 in mem offset_illegal
              #                    occupy a1 with 800636_0
    li      a1, 800636
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_267_ptr2globl_160
              #                    occupy a1 with temp_268_ptr2globl_160
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_269_array_ptr_160:ptr->i32 
              #                          temp_269_array_ptr_160 = getelementptr temp_268_ptr2globl_160:Array:i32:[Some(10000_0)] [Some(temp_267_ptr2globl_160)] 
              #                    occupy a0 with temp_269_array_ptr_160
    li      a0, 0
              #                    store to temp_268_ptr2globl_160 in mem offset_illegal
              #                    occupy a1 with 760636_0
    li      a1, 760636
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_268_ptr2globl_160
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_260_cmp_160 in mem offset_illegal
              #                    occupy a2 with 840667_0
    li      a2, 840667
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_260_cmp_160
              #                    occupy a2 with temp_267_ptr2globl_160
              #                    load from temp_267_ptr2globl_160 in mem

              #                    occupy a2 with temp_267_ptr2globl_160
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_263_array_ptr_160 in mem offset_illegal
              #                    occupy a3 with 800648_0
    li      a3, 800648
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_263_array_ptr_160
              #                    occupy a3 with _anonymous_of_temp_268_ptr2globl_160_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 760636_0
    li      a1, 760636
    li      a1, 760636
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_270_array_ele_160:i32 
              #                          temp_270_array_ele_160 = load temp_269_array_ptr_160:ptr->i32 
              #                    occupy a0 with temp_269_array_ptr_160
              #                    occupy a1 with temp_270_array_ele_160
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_271_cmp_160:i1 
              #                          temp_271_cmp_160 = icmp i32 Eq temp_270_array_ele_160, 47_0 
              #                    occupy a1 with temp_270_array_ele_160
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    store to temp_269_array_ptr_160 in mem offset_illegal
              #                    occupy a0 with 760624_0
    li      a0, 760624
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_269_array_ptr_160
              #                    occupy a0 with temp_271_cmp_160
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_272_logic_160:i1 
              #                          temp_272_logic_160 = Or i1 temp_271_cmp_160, temp_266_logic_160 
              #                    occupy a0 with temp_271_cmp_160
              #                    occupy a3 with temp_266_logic_160
              #                    load from temp_266_logic_160 in mem
              #                    occupy a3 with temp_266_logic_160
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_266_logic_160
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_273_ptr2globl_160:i32 
              #                          temp_273_ptr2globl_160 = load *chat_0:ptr->i32 
              #                    store to temp_271_cmp_160 in mem offset_illegal
              #                    occupy a0 with 760619_0
    li      a0, 760619
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_271_cmp_160
              #                    occupy a0 with *chat_0
              #                       load label chat as ptr to reg
    la      a0, chat
              #                    occupy reg a0 with *chat_0
              #                    store to temp_270_array_ele_160 in mem offset_illegal
              #                    occupy a1 with 760620_0
    li      a1, 760620
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_270_array_ele_160
              #                    occupy a1 with temp_273_ptr2globl_160
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_274_ptr2globl_160:Array:i32:[Some(10000_0)] 
              #                          temp_274_ptr2globl_160 = load *chas_0:ptr->i32 
              #                    occupy a0 with *chas_0
              #                       load label chas as ptr to reg
    la      a0, chas
              #                    occupy reg a0 with *chas_0
              #                    store to temp_273_ptr2globl_160 in mem offset_illegal
              #                    occupy a1 with 760612_0
    li      a1, 760612
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_273_ptr2globl_160
              #                    occupy a1 with temp_274_ptr2globl_160
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_275_array_ptr_160:ptr->i32 
              #                          temp_275_array_ptr_160 = getelementptr temp_274_ptr2globl_160:Array:i32:[Some(10000_0)] [Some(temp_273_ptr2globl_160)] 
              #                    occupy a0 with temp_275_array_ptr_160
    li      a0, 0
              #                    store to temp_274_ptr2globl_160 in mem offset_illegal
              #                    occupy a1 with 720612_0
    li      a1, 720612
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_274_ptr2globl_160
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_267_ptr2globl_160 in mem offset_illegal
              #                    occupy a2 with 800636_0
    li      a2, 800636
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_267_ptr2globl_160
              #                    occupy a2 with temp_273_ptr2globl_160
              #                    load from temp_273_ptr2globl_160 in mem

              #                    occupy a2 with temp_273_ptr2globl_160
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_266_logic_160 in mem offset_illegal
              #                    occupy a3 with 800642_0
    li      a3, 800642
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_266_logic_160
              #                    occupy a3 with _anonymous_of_temp_274_ptr2globl_160_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 720612_0
    li      a1, 720612
    li      a1, 720612
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_276_array_ele_160:i32 
              #                          temp_276_array_ele_160 = load temp_275_array_ptr_160:ptr->i32 
              #                    occupy a0 with temp_275_array_ptr_160
              #                    occupy a1 with temp_276_array_ele_160
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_277_cmp_160:i1 
              #                          temp_277_cmp_160 = icmp i32 Eq temp_276_array_ele_160, 42_0 
              #                    occupy a1 with temp_276_array_ele_160
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_275_array_ptr_160 in mem offset_illegal
              #                    occupy a0 with 720600_0
    li      a0, 720600
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_275_array_ptr_160
              #                    occupy a0 with temp_277_cmp_160
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_278_logic_160:i1 
              #                          temp_278_logic_160 = Or i1 temp_277_cmp_160, temp_272_logic_160 
              #                    occupy a0 with temp_277_cmp_160
              #                    occupy a3 with temp_272_logic_160
              #                    load from temp_272_logic_160 in mem
              #                    occupy a3 with temp_272_logic_160
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_272_logic_160
              #                    free a0
              #                    free a3
              #                    free a3
              #                          br i1 temp_278_logic_160, label while.body_161, label while.exit_161 
              #                    store to temp_277_cmp_160 in mem offset_illegal
              #                    occupy a0 with 720595_0
    li      a0, 720595
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_277_cmp_160
              #                    occupy a0 with temp_278_logic_160
              #                    load from temp_278_logic_160 in mem
              #                    occupy a0 with temp_278_logic_160
    add     a0,sp,a0
    lb      a0,0(a0)
              #                    free a0
              #                    free a0
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy s6 with 1961427_0
    li      s6, 1961427
    add     s6,sp,s6
    sb      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_84_cmp_100
              #                    occupy a0 with temp_278_logic_160
    bnez    a0, .while.body_161
              #                    free a0
    j       .while.exit_161
              #                    regtab     a0:Freed { symidx: temp_278_logic_160, tracked: true } |     a1:Freed { symidx: temp_276_array_ele_160, tracked: true } |     a2:Freed { symidx: temp_273_ptr2globl_160, tracked: true } |     a3:Freed { symidx: temp_272_logic_160, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label while.body_161: 
.while.body_161:
              #                          new_var temp_279_ret_of_find_163:i32 
              #                          temp_279_ret_of_find_163 =  Call i32 find_0() 
              #                    saved register dumping to mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s1 with 1921396_0
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_90_ptr2globl_106
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy s1 with 1921420_0
    li      s1, 1921420
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s2 with 1921408_0
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s3 with 1961428_0
    li      s3, 1961428
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy s4 with 1841304_0
    li      s4, 1841304
    add     s4,sp,s4
    sd      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_109_array_ptr_117
              #                    store to temp_91_ptr2globl_106 in mem offset_illegal
              #                    occupy s5 with 1881396_0
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_91_ptr2globl_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s6 with 1881384_0
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_92_array_ptr_106
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s7 with 1921404_0
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy s8 with 1881379_0
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_94_cmp_106
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s9 with 1921403_0
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_278_logic_160 in mem offset_illegal
              #                    occupy a0 with 720594_0
    li      a0, 720594
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_278_logic_160
              #                    store to temp_276_array_ele_160 in mem offset_illegal
              #                    occupy a0 with 720596_0
    li      a0, 720596
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_276_array_ele_160
              #                    store to temp_273_ptr2globl_160 in mem offset_illegal
              #                    occupy a1 with 760612_0
    li      a1, 760612
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_273_ptr2globl_160
              #                    store to temp_272_logic_160 in mem offset_illegal
              #                    occupy a2 with 760618_0
    li      a2, 760618
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_272_logic_160
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a3 with 1961440_0
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a4 with 2041500_0
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a5 with 1961432_0
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a6 with 2041495_0
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    find
              #                    store to temp_279_ret_of_find_163 in mem offset_illegal
              #                    occupy a0 with 720588_0
    li      a0, 720588
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_280_cmp_163:i1 
              #                          temp_280_cmp_163 = icmp i32 Eq temp_279_ret_of_find_163, 0_0 
              #                    occupy a0 with temp_279_ret_of_find_163
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s10 with temp_280_cmp_163
    xor     s10,a0,a7
    seqz    s10, s10
              #                    free a0
              #                    free a7
              #                    free s10
              #                          br i1 temp_280_cmp_163, label branch_true_164, label branch_false_164 
              #                    occupy s10 with temp_280_cmp_163
              #                    free s10
              #                    occupy s10 with temp_280_cmp_163
    bnez    s10, .branch_true_164
              #                    free s10
    j       .branch_false_164
              #                    regtab     a0:Freed { symidx: temp_279_ret_of_find_163, tracked: true } |     s10:Freed { symidx: temp_280_cmp_163, tracked: true } | 
              #                          label branch_true_164: 
.branch_true_164:
              #                          jump label: while.exit_161 
              #                    store to temp_280_cmp_163 in mem offset_illegal
              #                    occupy a1 with 720587_0
    li      a1, 720587
    add     a1,sp,a1
    sb      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_280_cmp_163
              #                    store to temp_279_ret_of_find_163 in mem offset_illegal
              #                    occupy a0 with 720588_0
    li      a0, 720588
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_279_ret_of_find_163
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a0 with temp_86_ptr2globl_103
    li      a0, 1921420
    add     a0,sp,a0
    lw      s2,0(a0)
              #                    free a0
              #                    occupy a1 with _anonymous_of_temp_276_array_ele_160_0
              #                    load from temp_276_array_ele_160 in mem

              #                    occupy a2 with temp_276_array_ele_160
    li      a2, 720596
    add     a2,sp,a2
    lw      a1,0(a2)
              #                    free a2
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a3 with temp_94_cmp_106
    li      a3, 1881379
    add     a3,sp,a3
    lb      s10,0(a3)
              #                    free a3
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a4 with temp_87_array_ptr_103
    li      a4, 1921408
    add     a4,sp,a4
    ld      s3,0(a4)
              #                    free a4
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a5 with temp_88_array_ele_103
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
              #                    free a5
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a0 with 1921420_0
    li      a0, 1921420
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_86_ptr2globl_103
              #                    occupy a0 with _anonymous_of_temp_278_logic_160_0
              #                    load from temp_278_logic_160 in mem
              #                    occupy a6 with temp_278_logic_160
    li      a6, 720594
    add     a6,sp,a6
    lb      a0,0(a6)
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a4 with 1921408_0
    li      a4, 1921408
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_87_array_ptr_103
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s6 with temp_83_array_ele_100
    li      s6, 1961428
    add     s6,sp,s6
    lw      s4,0(s6)
              #                    free s6
              #                    store to temp_278_logic_160 in mem offset_illegal
              #                    occupy a6 with 720594_0
    li      a6, 720594
    add     a6,sp,a6
    sb      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_278_logic_160
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s7 with temp_82_array_ptr_100
    li      s7, 1961432
    add     s7,sp,s7
    ld      a6,0(s7)
              #                    free s7
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a5 with 1921404_0
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_88_array_ele_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    occupy s8 with temp_67_array_ele_94
    li      s8, 2041500
    add     s8,sp,s8
    lw      a5,0(s8)
              #                    free s8
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_276_array_ele_160 in mem offset_illegal
              #                    occupy a2 with 720596_0
    li      a2, 720596
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_276_array_ele_160
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy s8 with 2041500_0
    li      s8, 2041500
    add     s8,sp,s8
    sw      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_67_array_ele_94
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a3 with 1881379_0
    li      a3, 1881379
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_94_cmp_106
              #                    occupy a3 with _anonymous_of_temp_272_logic_160_0
              #                    load from temp_272_logic_160 in mem
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with temp_272_logic_160
    li      a2, 760618
    add     a2,sp,a2
    lb      a3,0(a2)
              #                    free a2
              #                    store to temp_272_logic_160 in mem offset_illegal
              #                    occupy a2 with 760618_0
    li      a2, 760618
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_272_logic_160
              #                    occupy a2 with _anonymous_of_temp_273_ptr2globl_160_0
              #                    load from temp_273_ptr2globl_160 in mem

              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy s1 with 2041495_0
    li      s1, 2041495
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with temp_273_ptr2globl_160
    li      s1, 760612
    add     s1,sp,s1
    lw      a2,0(s1)
              #                    free s1
              #                    store to temp_273_ptr2globl_160 in mem offset_illegal
              #                    occupy s1 with 760612_0
    li      s1, 760612
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_273_ptr2globl_160
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s6 with 1961428_0
    li      s6, 1961428
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_83_array_ele_100
              #                    occupy s6 with temp_90_ptr2globl_106
    li      s6, 1921396
    add     s6,sp,s6
    lw      s1,0(s6)
              #                    free s6
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s7 with 1961432_0
    li      s7, 1961432
    add     s7,sp,s7
    sd      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_82_array_ptr_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s6 with 1921396_0
    li      s6, 1921396
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_90_ptr2globl_106
              #                    occupy s6 with temp_91_ptr2globl_106
    li      s6, 1881396
    add     s6,sp,s6
    lw      s7,0(s6)
              #                    free s6
    j       .while.exit_161
              #                    regtab     a0:Freed { symidx: temp_278_logic_160, tracked: true } |     a1:Freed { symidx: temp_276_array_ele_160, tracked: true } |     a2:Freed { symidx: temp_273_ptr2globl_160, tracked: true } |     a3:Freed { symidx: temp_272_logic_160, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label while.exit_161: 
.while.exit_161:
              #                           Call void chapush_0(37_0) 
              #                    saved register dumping to mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy s1 with 1921396_0
    li      s1, 1921396
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_90_ptr2globl_106
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy s1 with 1921420_0
    li      s1, 1921420
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s2 with 1921408_0
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s3 with 1961428_0
    li      s3, 1961428
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy s4 with 1841304_0
    li      s4, 1841304
    add     s4,sp,s4
    sd      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_109_array_ptr_117
              #                    store to temp_91_ptr2globl_106 in mem offset_illegal
              #                    occupy s5 with 1881396_0
    li      s5, 1881396
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_91_ptr2globl_106
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s6 with 1881384_0
    li      s6, 1881384
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_92_array_ptr_106
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s7 with 1921404_0
    li      s7, 1921404
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy s8 with 1881379_0
    li      s8, 1881379
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_94_cmp_106
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s9 with 1921403_0
    li      s9, 1921403
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_278_logic_160 in mem offset_illegal
              #                    occupy a0 with 720594_0
    li      a0, 720594
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_278_logic_160
              #                    store to temp_276_array_ele_160 in mem offset_illegal
              #                    occupy a0 with 720596_0
    li      a0, 720596
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_276_array_ele_160
              #                    store to temp_273_ptr2globl_160 in mem offset_illegal
              #                    occupy a1 with 760612_0
    li      a1, 760612
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_273_ptr2globl_160
              #                    store to temp_272_logic_160 in mem offset_illegal
              #                    occupy a2 with 760618_0
    li      a2, 760618
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_272_logic_160
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a3 with 1961440_0
    li      a3, 1961440
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a4 with 2041500_0
    li      a4, 2041500
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a5 with 1961432_0
    li      a5, 1961432
    add     a5,sp,a5
    sd      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a6 with 2041495_0
    li      a6, 2041495
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_69_cmp_94
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_37_0_0
    li      a0, 37
              #                    arg load ended


    call    chapush
              #                          jump label: branch_false_158 
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a0 with temp_84_cmp_100
    li      a0, 1961427
    add     a0,sp,a0
    lb      s6,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a1 with temp_86_ptr2globl_103
    li      a1, 1921420
    add     a1,sp,a1
    lw      s2,0(a1)
              #                    free a1
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a1 with 1921420_0
    li      a1, 1921420
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_86_ptr2globl_103
              #                    occupy a1 with _anonymous_of_temp_255_cmp_157_0
              #                    load from temp_255_cmp_157 in mem
              #                    occupy a2 with temp_255_cmp_157
    li      a2, 880691
    add     a2,sp,a2
    lb      a1,0(a2)
              #                    free a2
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a3 with temp_94_cmp_106
    li      a3, 1881379
    add     a3,sp,a3
    lb      s10,0(a3)
              #                    free a3
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a4 with temp_87_array_ptr_103
    li      a4, 1921408
    add     a4,sp,a4
    ld      s3,0(a4)
              #                    free a4
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a5 with temp_88_array_ele_103
    li      a5, 1921404
    add     a5,sp,a5
    lw      s9,0(a5)
              #                    free a5
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a0 with 1961427_0
    li      a0, 1961427
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84_cmp_100
              #                    occupy a0 with _anonymous_of_temp_254_array_ele_157_0
              #                    load from temp_254_array_ele_157 in mem

              #                    occupy a6 with temp_254_array_ele_157
    li      a6, 880692
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a4 with 1921408_0
    li      a4, 1921408
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_87_array_ptr_103
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s7 with temp_83_array_ele_100
    li      s7, 1961428
    add     s7,sp,s7
    lw      s4,0(s7)
              #                    free s7
              #                    store to temp_254_array_ele_157 in mem offset_illegal
              #                    occupy a6 with 880692_0
    li      a6, 880692
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_254_array_ele_157
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s8 with temp_82_array_ptr_100
    li      s8, 1961432
    add     s8,sp,s8
    ld      a6,0(s8)
              #                    free s8
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a5 with 1921404_0
    li      a5, 1921404
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_88_array_ele_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    store to temp_255_cmp_157 in mem offset_illegal
              #                    occupy a2 with 880691_0
    li      a2, 880691
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_255_cmp_157
              #                    occupy a2 with temp_67_array_ele_94
    li      a2, 2041500
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a2 with 2041500_0
    li      a2, 2041500
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_67_array_ele_94
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s8 with 1961432_0
    li      s8, 1961432
    add     s8,sp,s8
    sd      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_82_array_ptr_100
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a3 with 1881379_0
    li      a3, 1881379
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_94_cmp_106
              #                    occupy a3 with _anonymous_of_temp_253_array_ptr_157_0
              #                    load from temp_253_array_ptr_157 in mem
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with temp_253_array_ptr_157
    li      a2, 880696
    add     a2,sp,a2
    ld      a3,0(a2)
              #                    free a2
              #                    store to temp_253_array_ptr_157 in mem offset_illegal
              #                    occupy a2 with 880696_0
    li      a2, 880696
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_253_array_ptr_157
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a2 with 2041495_0
    li      a2, 2041495
    add     a2,sp,a2
    sb      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    occupy a2 with temp_90_ptr2globl_106
    li      a2, 1921396
    add     a2,sp,a2
    lw      s1,0(a2)
              #                    free a2
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s7 with 1961428_0
    li      s7, 1961428
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_83_array_ele_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy a2 with 1921396_0
    li      a2, 1921396
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_90_ptr2globl_106
              #                    occupy a2 with temp_91_ptr2globl_106
    li      a2, 1881396
    add     a2,sp,a2
    lw      s7,0(a2)
              #                    free a2
    j       .branch_false_158
              #                    regtab     a0:Freed { symidx: temp_279_ret_of_find_163, tracked: true } |     s10:Freed { symidx: temp_280_cmp_163, tracked: true } | 
              #                          label branch_false_164: 
.branch_false_164:
              #                          jump label: branch_true_158 
              #                    store to temp_280_cmp_163 in mem offset_illegal
              #                    occupy a1 with 720587_0
    li      a1, 720587
    add     a1,sp,a1
    sb      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_280_cmp_163
              #                    store to temp_279_ret_of_find_163 in mem offset_illegal
              #                    occupy a0 with 720588_0
    li      a0, 720588
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_279_ret_of_find_163
              #                    occupy s6 with _anonymous_of_temp_84_cmp_100_0
              #                    load from temp_84_cmp_100 in mem
              #                    occupy a0 with temp_84_cmp_100
    li      a0, 1961427
    add     a0,sp,a0
    lb      s6,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_temp_86_ptr2globl_103_0
              #                    load from temp_86_ptr2globl_103 in mem
              #                    occupy a2 with temp_86_ptr2globl_103
    li      a2, 1921420
    add     a2,sp,a2
    lw      s2,0(a2)
              #                    free a2
              #                    occupy a1 with _anonymous_of_temp_255_cmp_157_0
              #                    load from temp_255_cmp_157 in mem
              #                    occupy a3 with temp_255_cmp_157
    li      a3, 880691
    add     a3,sp,a3
    lb      a1,0(a3)
              #                    free a3
              #                    occupy s10 with _anonymous_of_temp_94_cmp_106_0
              #                    load from temp_94_cmp_106 in mem
              #                    occupy a4 with temp_94_cmp_106
    li      a4, 1881379
    add     a4,sp,a4
    lb      s10,0(a4)
              #                    free a4
              #                    occupy s3 with _anonymous_of_temp_87_array_ptr_103_0
              #                    load from temp_87_array_ptr_103 in mem
              #                    occupy a5 with temp_87_array_ptr_103
    li      a5, 1921408
    add     a5,sp,a5
    ld      s3,0(a5)
              #                    free a5
              #                    occupy s9 with _anonymous_of_temp_88_array_ele_103_0
              #                    load from temp_88_array_ele_103 in mem

              #                    occupy a6 with temp_88_array_ele_103
    li      a6, 1921404
    add     a6,sp,a6
    lw      s9,0(a6)
              #                    free a6
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy a0 with 1961427_0
    li      a0, 1961427
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_84_cmp_100
              #                    occupy a0 with _anonymous_of_temp_254_array_ele_157_0
              #                    load from temp_254_array_ele_157 in mem

              #                    occupy a7 with temp_254_array_ele_157
    li      a7, 880692
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    store to temp_254_array_ele_157 in mem offset_illegal
              #                    occupy a7 with 880692_0
    li      a7, 880692
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_254_array_ele_157
              #                    occupy a7 with _anonymous_of_temp_69_cmp_94_0
              #                    load from temp_69_cmp_94 in mem
              #                    occupy s1 with temp_69_cmp_94
    li      s1, 2041495
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    occupy s11 with _anonymous_of_temp_89_cmp_103_0
              #                    load from temp_89_cmp_103 in mem
              #                    occupy s4 with temp_89_cmp_103
    li      s4, 1921403
    add     s4,sp,s4
    lb      s11,0(s4)
              #                    free s4
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a4 with 1881379_0
    li      a4, 1881379
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_94_cmp_106
              #                    occupy a4 with _anonymous_of_temp_81_ptr2globl_100_0
              #                    load from temp_81_ptr2globl_100 in mem
              #                    occupy s5 with temp_81_ptr2globl_100
    li      s5, 1961440
    add     s5,sp,s5
    lw      a4,0(s5)
              #                    free s5
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy s4 with 1921403_0
    li      s4, 1921403
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_89_cmp_103
              #                    occupy s4 with _anonymous_of_temp_83_array_ele_100_0
              #                    load from temp_83_array_ele_100 in mem

              #                    occupy s7 with temp_83_array_ele_100
    li      s7, 1961428
    add     s7,sp,s7
    lw      s4,0(s7)
              #                    free s7
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy a6 with 1921404_0
    li      a6, 1921404
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_88_array_ele_103
              #                    occupy a6 with _anonymous_of_temp_82_array_ptr_100_0
              #                    load from temp_82_array_ptr_100 in mem
              #                    occupy s8 with temp_82_array_ptr_100
    li      s8, 1961432
    add     s8,sp,s8
    ld      a6,0(s8)
              #                    free s8
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy a5 with 1921408_0
    li      a5, 1921408
    add     a5,sp,a5
    sd      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_87_array_ptr_103
              #                    occupy a5 with _anonymous_of_temp_67_array_ele_94_0
              #                    load from temp_67_array_ele_94 in mem

              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy a2 with 1921420_0
    li      a2, 1921420
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_86_ptr2globl_103
              #                    occupy a2 with temp_67_array_ele_94
    li      a2, 2041500
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy s5 with 1961440_0
    li      s5, 1961440
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_81_ptr2globl_100
              #                    occupy s5 with _anonymous_of_temp_109_array_ptr_117_0
              #                    load from temp_109_array_ptr_117 in mem
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a2 with 2041500_0
    li      a2, 2041500
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_67_array_ele_94
              #                    occupy a2 with temp_109_array_ptr_117
    li      a2, 1841304
    add     a2,sp,a2
    ld      s5,0(a2)
              #                    free a2
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy s8 with 1961432_0
    li      s8, 1961432
    add     s8,sp,s8
    sd      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_82_array_ptr_100
              #                    occupy s8 with _anonymous_of_temp_92_array_ptr_106_0
              #                    load from temp_92_array_ptr_106 in mem
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a2 with 1841304_0
    li      a2, 1841304
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_109_array_ptr_117
              #                    occupy a2 with temp_92_array_ptr_106
    li      a2, 1881384
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_255_cmp_157 in mem offset_illegal
              #                    occupy a3 with 880691_0
    li      a3, 880691
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_255_cmp_157
              #                    occupy a3 with _anonymous_of_temp_253_array_ptr_157_0
              #                    load from temp_253_array_ptr_157 in mem
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy a2 with 1881384_0
    li      a2, 1881384
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_92_array_ptr_106
              #                    occupy a2 with temp_253_array_ptr_157
    li      a2, 880696
    add     a2,sp,a2
    ld      a3,0(a2)
              #                    free a2
              #                    store to temp_253_array_ptr_157 in mem offset_illegal
              #                    occupy a2 with 880696_0
    li      a2, 880696
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_253_array_ptr_157
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a2 with 2041495_0
    li      a2, 2041495
    add     a2,sp,a2
    sb      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_69_cmp_94
              #                    occupy s1 with _anonymous_of_temp_90_ptr2globl_106_0
              #                    load from temp_90_ptr2globl_106 in mem

              #                    occupy a2 with temp_90_ptr2globl_106
    li      a2, 1921396
    add     a2,sp,a2
    lw      s1,0(a2)
              #                    free a2
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy s7 with 1961428_0
    li      s7, 1961428
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_83_array_ele_100
              #                    occupy s7 with _anonymous_of_temp_91_ptr2globl_106_0
              #                    load from temp_91_ptr2globl_106 in mem
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy a2 with 1921396_0
    li      a2, 1921396
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_90_ptr2globl_106
              #                    occupy a2 with temp_91_ptr2globl_106
    li      a2, 1881396
    add     a2,sp,a2
    lw      s7,0(a2)
              #                    free a2
    j       .branch_true_158
              #                    regtab     a0:Freed { symidx: temp_254_array_ele_157, tracked: true } |     a1:Freed { symidx: temp_255_cmp_157, tracked: true } |     a3:Freed { symidx: temp_253_array_ptr_157, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label branch_false_158: 
.branch_false_158:
              #                    regtab     a0:Freed { symidx: temp_254_array_ele_157, tracked: true } |     a1:Freed { symidx: temp_255_cmp_157, tracked: true } |     a3:Freed { symidx: temp_253_array_ptr_157, tracked: true } |     a4:Freed { symidx: temp_81_ptr2globl_100, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a6:Freed { symidx: temp_82_array_ptr_100, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s10:Freed { symidx: temp_94_cmp_106, tracked: true } |     s11:Freed { symidx: temp_89_cmp_103, tracked: true } |     s1:Freed { symidx: temp_90_ptr2globl_106, tracked: true } |     s2:Freed { symidx: temp_86_ptr2globl_103, tracked: true } |     s3:Freed { symidx: temp_87_array_ptr_103, tracked: true } |     s4:Freed { symidx: temp_83_array_ele_100, tracked: true } |     s5:Freed { symidx: temp_109_array_ptr_117, tracked: true } |     s6:Freed { symidx: temp_84_cmp_100, tracked: true } |     s7:Freed { symidx: temp_91_ptr2globl_106, tracked: true } |     s8:Freed { symidx: temp_92_array_ptr_106, tracked: true } |     s9:Freed { symidx: temp_88_array_ele_103, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_281_ptr2globl_99:i32 
              #                          temp_281_ptr2globl_99 = load *ii_0:ptr->i32 
              #                    occupy a2 with *ii_0
              #                       load label ii as ptr to reg
    la      a2, ii
              #                    occupy reg a2 with *ii_0
              #                    store to temp_254_array_ele_157 in mem offset_illegal
              #                    occupy a0 with 880692_0
    li      a0, 880692
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_254_array_ele_157
              #                    occupy a0 with temp_281_ptr2globl_99
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_282_index_ptr_99:ptr->i32 
              #                          temp_282_index_ptr_99 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_281_ptr2globl_99)] 
              #                    occupy a2 with temp_282_index_ptr_99
    li      a2, 0
              #                    store to temp_281_ptr2globl_99 in mem offset_illegal
              #                    occupy a0 with 720580_0
    li      a0, 720580
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_281_ptr2globl_99
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_255_cmp_157 in mem offset_illegal
              #                    occupy a1 with 880691_0
    li      a1, 880691
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_255_cmp_157
              #                    occupy a1 with temp_281_ptr2globl_99
              #                    load from temp_281_ptr2globl_99 in mem

              #                    occupy a1 with temp_281_ptr2globl_99
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_253_array_ptr_157 in mem offset_illegal
              #                    occupy a3 with 880696_0
    li      a3, 880696
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_253_array_ptr_157
              #                    occupy a3 with _anonymous_of_get2_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with _anonymous_of_get2_0_0
    la      a0, get2
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          store 32_0:i32 temp_282_index_ptr_99:ptr->i32 
              #                    occupy a2 with temp_282_index_ptr_99
              #                    occupy a0 with 32_0
    li      a0, 32
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          mu get2_0:1060 
              #                          get2_0 = chi get2_0:1060 
              #                          new_var temp_283_ptr2globl_99:i32 
              #                          temp_283_ptr2globl_99 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a3 with temp_283_ptr2globl_99
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                          new_var temp_284_arithop_99:i32 
              #                          temp_284_arithop_99 = Add i32 temp_283_ptr2globl_99, 1_0 
              #                    occupy a3 with temp_283_ptr2globl_99
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_281_ptr2globl_99 in mem offset_illegal
              #                    occupy a1 with 720580_0
    li      a1, 720580
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_281_ptr2globl_99
              #                    occupy a1 with temp_284_arithop_99
    add     a1,a3,a0
              #                    free a3
              #                    free a0
              #                    free a1
              #                          store temp_284_arithop_99:i32 *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a1 with temp_284_arithop_99
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          jump label: L9_0 
              #                    store to temp_84_cmp_100 in mem offset_illegal
              #                    occupy s6 with 1961427_0
    li      s6, 1961427
    add     s6,sp,s6
    sb      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_84_cmp_100
              #                    store to temp_86_ptr2globl_103 in mem offset_illegal
              #                    occupy s2 with 1921420_0
    li      s2, 1921420
    add     s2,sp,s2
    sw      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_86_ptr2globl_103
              #                    store to temp_284_arithop_99 in mem offset_illegal
              #                    occupy a1 with 720560_0
    li      a1, 720560
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_284_arithop_99
              #                    store to temp_94_cmp_106 in mem offset_illegal
              #                    occupy a1 with 1881379_0
    li      a1, 1881379
    add     a1,sp,a1
    sb      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_94_cmp_106
              #                    store to temp_87_array_ptr_103 in mem offset_illegal
              #                    occupy s2 with 1921408_0
    li      s2, 1921408
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_87_array_ptr_103
              #                    store to temp_88_array_ele_103 in mem offset_illegal
              #                    occupy s3 with 1921404_0
    li      s3, 1921404
    add     s3,sp,s3
    sw      s9,0(s3)
              #                    free s3
              #                    release s9 with temp_88_array_ele_103
              #                    store to temp_89_cmp_103 in mem offset_illegal
              #                    occupy a0 with 1921403_0
    li      a0, 1921403
    add     a0,sp,a0
    sb      s11,0(a0)
              #                    free a0
              #                    release s11 with temp_89_cmp_103
              #                    store to temp_81_ptr2globl_100 in mem offset_illegal
              #                    occupy a4 with 1961440_0
    li      a4, 1961440
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_81_ptr2globl_100
              #                    store to temp_83_array_ele_100 in mem offset_illegal
              #                    occupy a4 with 1961428_0
    li      a4, 1961428
    add     a4,sp,a4
    sw      s4,0(a4)
              #                    free a4
              #                    release s4 with temp_83_array_ele_100
              #                    store to temp_82_array_ptr_100 in mem offset_illegal
              #                    occupy a6 with 1961432_0
    li      a6, 1961432
    add     a6,sp,a6
    sd      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_82_array_ptr_100
              #                    store to temp_109_array_ptr_117 in mem offset_illegal
              #                    occupy a6 with 1841304_0
    li      a6, 1841304
    add     a6,sp,a6
    sd      s5,0(a6)
              #                    free a6
              #                    release s5 with temp_109_array_ptr_117
              #                    store to temp_92_array_ptr_106 in mem offset_illegal
              #                    occupy s4 with 1881384_0
    li      s4, 1881384
    add     s4,sp,s4
    sd      s8,0(s4)
              #                    free s4
              #                    release s8 with temp_92_array_ptr_106
              #                    store to temp_283_ptr2globl_99 in mem offset_illegal
              #                    occupy a3 with 720564_0
    li      a3, 720564
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_283_ptr2globl_99
              #                    store to temp_282_index_ptr_99 in mem offset_illegal
              #                    occupy a2 with 720568_0
    li      a2, 720568
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_282_index_ptr_99
              #                    store to temp_90_ptr2globl_106 in mem offset_illegal
              #                    occupy a2 with 1921396_0
    li      a2, 1921396
    add     a2,sp,a2
    sw      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_90_ptr2globl_106
              #                    store to temp_91_ptr2globl_106 in mem offset_illegal
              #                    occupy a3 with 1881396_0
    li      a3, 1881396
    add     a3,sp,a3
    sw      s7,0(a3)
              #                    free a3
              #                    release s7 with temp_91_ptr2globl_106
              #                    occupy s6 with _anonymous_of_temp_74_array_ptr_96_0
              #                    load from temp_74_array_ptr_96 in mem
              #                    occupy s1 with temp_74_array_ptr_96
    li      s1, 2001464
    add     s1,sp,s1
    ld      s6,0(s1)
              #                    free s1
              #                    occupy a1 with _anonymous_of_temp_77_arithop_96_0
              #                    load from temp_77_arithop_96 in mem

              #                    occupy s2 with temp_77_arithop_96
    li      s2, 2001452
    add     s2,sp,s2
    lw      a1,0(s2)
              #                    free s2
              #                    occupy s3 with _anonymous_of_temp_72_ptr2globl_96_0
              #                    load from temp_72_ptr2globl_96 in mem

              #                    occupy s5 with temp_72_ptr2globl_96
    li      s5, 2041476
    add     s5,sp,s5
    lw      s3,0(s5)
              #                    free s5
              #                    occupy s9 with _anonymous_of_temp_75_array_ele_96_0
              #                    load from temp_75_array_ele_96 in mem

              #                    occupy s7 with temp_75_array_ele_96
    li      s7, 2001460
    add     s7,sp,s7
    lw      s9,0(s7)
              #                    free s7
              #                    occupy a0 with _anonymous_of_temp_68_ret_of_isdigit_94_0
              #                    load from temp_68_ret_of_isdigit_94 in mem

              #                    occupy s8 with temp_68_ret_of_isdigit_94
    li      s8, 2041496
    add     s8,sp,s8
    lw      a0,0(s8)
              #                    free s8
              #                    occupy s11 with _anonymous_of_temp_76_ptr2globl_96_0
              #                    load from temp_76_ptr2globl_96 in mem

              #                    occupy s10 with temp_76_ptr2globl_96
    li      s10, 2001456
    add     s10,sp,s10
    lw      s11,0(s10)
              #                    free s10
              #                    store to temp_72_ptr2globl_96 in mem offset_illegal
              #                    occupy a4 with 2041476_0
    li      a4, 2041476
    add     a4,sp,a4
    sw      s5,0(a4)
              #                    free a4
              #                    release s5 with temp_72_ptr2globl_96
              #                    occupy s5 with _anonymous_of_temp_73_ptr2globl_96_0
              #                    load from temp_73_ptr2globl_96 in mem
              #                    occupy a6 with temp_73_ptr2globl_96
    li      a6, 2001476
    add     a6,sp,a6
    lw      s5,0(a6)
              #                    free a6
              #                    store to temp_68_ret_of_isdigit_94 in mem offset_illegal
              #                    occupy s4 with 2041496_0
    li      s4, 2041496
    add     s4,sp,s4
    sw      s8,0(s4)
              #                    free s4
              #                    release s8 with temp_68_ret_of_isdigit_94
              #                    occupy a3 with _anonymous_of_temp_71_index_ptr_96_0
              #                    load from temp_71_index_ptr_96 in mem
              #                    occupy s8 with temp_71_index_ptr_96
    li      s8, 2041480
    add     s8,sp,s8
    ld      a3,0(s8)
              #                    free s8
              #                    occupy a2 with _anonymous_of_temp_70_ptr2globl_96_0
              #                    load from temp_70_ptr2globl_96 in mem

              #                    occupy a4 with temp_70_ptr2globl_96
    li      a4, 2041488
    add     a4,sp,a4
    lw      a2,0(a4)
              #                    free a4
              #                    store to temp_74_array_ptr_96 in mem offset_illegal
              #                    occupy s1 with 2001464_0
    li      s1, 2001464
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_74_array_ptr_96
              #                    store to temp_75_array_ele_96 in mem offset_illegal
              #                    occupy s1 with 2001460_0
    li      s1, 2001460
    add     s1,sp,s1
    sw      s7,0(s1)
              #                    free s1
              #                    release s7 with temp_75_array_ele_96
    j       .L9_0
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a1:Freed { symidx: temp_77_arithop_96, tracked: true } |     a2:Freed { symidx: temp_70_ptr2globl_96, tracked: true } |     a3:Freed { symidx: temp_71_index_ptr_96, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s11:Freed { symidx: temp_76_ptr2globl_96, tracked: true } |     s3:Freed { symidx: temp_72_ptr2globl_96, tracked: true } |     s5:Freed { symidx: temp_73_ptr2globl_96, tracked: true } |     s6:Freed { symidx: temp_74_array_ptr_96, tracked: true } |     s9:Freed { symidx: temp_75_array_ele_96, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                    regtab     a0:Freed { symidx: temp_68_ret_of_isdigit_94, tracked: true } |     a1:Freed { symidx: temp_77_arithop_96, tracked: true } |     a2:Freed { symidx: temp_70_ptr2globl_96, tracked: true } |     a3:Freed { symidx: temp_71_index_ptr_96, tracked: true } |     a5:Freed { symidx: temp_67_array_ele_94, tracked: true } |     a7:Freed { symidx: temp_69_cmp_94, tracked: true } |     s11:Freed { symidx: temp_76_ptr2globl_96, tracked: true } |     s3:Freed { symidx: temp_72_ptr2globl_96, tracked: true } |     s5:Freed { symidx: temp_73_ptr2globl_96, tracked: true } |     s6:Freed { symidx: temp_74_array_ptr_96, tracked: true } |     s9:Freed { symidx: temp_75_array_ele_96, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_78_ptr2globl_93:i32 
              #                          temp_78_ptr2globl_93 = load *i_0:ptr->i32 
              #                    occupy a4 with *i_0
              #                       load label i as ptr to reg
    la      a4, i
              #                    occupy reg a4 with *i_0
              #                    occupy a6 with temp_78_ptr2globl_93
    lw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                          new_var temp_79_arithop_93:i32 
              #                          temp_79_arithop_93 = Add i32 temp_78_ptr2globl_93, 1_0 
              #                    occupy a6 with temp_78_ptr2globl_93
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_79_arithop_93
    add     s2,a6,s1
              #                    free a6
              #                    free s1
              #                    free s2
              #                          store temp_79_arithop_93:i32 *i_0:ptr->i32 
              #                    occupy s4 with *i_0
              #                       load label i as ptr to reg
    la      s4, i
              #                    occupy reg s4 with *i_0
              #                    occupy s2 with temp_79_arithop_93
    sw      s2,0(s4)
              #                    free s2
              #                    free s4
              #                          jump label: while.head_92 
              #                    store to temp_74_array_ptr_96 in mem offset_illegal
              #                    occupy s6 with 2001464_0
    li      s6, 2001464
    add     s6,sp,s6
    sd      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_74_array_ptr_96
              #                    store to temp_79_arithop_93 in mem offset_illegal
              #                    occupy s2 with 2001444_0
    li      s2, 2001444
    add     s2,sp,s2
    sw      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_79_arithop_93
              #                    store to temp_77_arithop_96 in mem offset_illegal
              #                    occupy a1 with 2001452_0
    li      a1, 2001452
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_77_arithop_96
              #                    store to temp_72_ptr2globl_96 in mem offset_illegal
              #                    occupy a1 with 2041476_0
    li      a1, 2041476
    add     a1,sp,a1
    sw      s3,0(a1)
              #                    free a1
              #                    release s3 with temp_72_ptr2globl_96
              #                    store to temp_75_array_ele_96 in mem offset_illegal
              #                    occupy s2 with 2001460_0
    li      s2, 2001460
    add     s2,sp,s2
    sw      s9,0(s2)
              #                    free s2
              #                    release s9 with temp_75_array_ele_96
              #                    store to temp_68_ret_of_isdigit_94 in mem offset_illegal
              #                    occupy a0 with 2041496_0
    li      a0, 2041496
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_68_ret_of_isdigit_94
              #                    store to temp_69_cmp_94 in mem offset_illegal
              #                    occupy a0 with 2041495_0
    li      a0, 2041495
    add     a0,sp,a0
    sb      a7,0(a0)
              #                    free a0
              #                    release a7 with temp_69_cmp_94
              #                    store to temp_76_ptr2globl_96 in mem offset_illegal
              #                    occupy a7 with 2001456_0
    li      a7, 2001456
    add     a7,sp,a7
    sw      s11,0(a7)
              #                    free a7
              #                    release s11 with temp_76_ptr2globl_96
              #                    store to temp_78_ptr2globl_93 in mem offset_illegal
              #                    occupy a4 with 2001448_0
    li      a4, 2001448
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_78_ptr2globl_93
              #                    store to temp_67_array_ele_94 in mem offset_illegal
              #                    occupy a5 with 2041500_0
    li      a5, 2041500
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_67_array_ele_94
              #                    store to temp_73_ptr2globl_96 in mem offset_illegal
              #                    occupy a5 with 2001476_0
    li      a5, 2001476
    add     a5,sp,a5
    sw      s5,0(a5)
              #                    free a5
              #                    release s5 with temp_73_ptr2globl_96
              #                    store to temp_71_index_ptr_96 in mem offset_illegal
              #                    occupy a3 with 2041480_0
    li      a3, 2041480
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_71_index_ptr_96
              #                    store to temp_70_ptr2globl_96 in mem offset_illegal
              #                    occupy a2 with 2041488_0
    li      a2, 2041488
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_70_ptr2globl_96
              #                    occupy a1 with _anonymous_of_temp_60_ptr2globl_87_0
              #                    load from temp_60_ptr2globl_87 in mem
              #                    occupy a2 with temp_60_ptr2globl_87
    li      a2, 2081536
    add     a2,sp,a2
    lw      a1,0(a2)
              #                    free a2
              #                    occupy a0 with _anonymous_of_temp_61_ret_of_getstr_87_0
              #                    load from temp_61_ret_of_getstr_87 in mem

              #                    occupy a3 with temp_61_ret_of_getstr_87
    li      a3, 2081532
    add     a3,sp,a3
    lw      a0,0(a3)
              #                    free a3
              #                    store to temp_61_ret_of_getstr_87 in mem offset_illegal
              #                    occupy a3 with 2081532_0
    li      a3, 2081532
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_61_ret_of_getstr_87
              #                    store to temp_60_ptr2globl_87 in mem offset_illegal
              #                    occupy a2 with 2081536_0
    li      a2, 2081536
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_60_ptr2globl_87
              #                    occupy a2 with _anonymous_of_lengets_87_0
              #                    load from lengets_87 in mem

              #                    occupy a3 with lengets_87
    li      a3, 2081528
    add     a3,sp,a3
    lw      a2,0(a3)
              #                    free a3
    j       .while.head_92
              #                    regtab     a0:Freed { symidx: temp_61_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: temp_60_ptr2globl_87, tracked: true } |     a2:Freed { symidx: lengets_87, tracked: true } |     a4:Freed { symidx: temp_62_ptr2globl_91, tracked: true } |     a5:Freed { symidx: temp_63_cmp_91, tracked: true } | 
              #                          label while.exit_92: 
.while.exit_92:
              #                          new_var temp_285_ptr2globl_170:i32 
              #                          temp_285_ptr2globl_170 = load *chat_0:ptr->i32 
              #                    occupy a3 with *chat_0
              #                       load label chat as ptr to reg
    la      a3, chat
              #                    occupy reg a3 with *chat_0
              #                    occupy a6 with temp_285_ptr2globl_170
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                          new_var temp_286_cmp_170:i1 
              #                          temp_286_cmp_170 = icmp i32 Sgt temp_285_ptr2globl_170, 0_0 
              #                    occupy a6 with temp_285_ptr2globl_170
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s1 with temp_286_cmp_170
    slt     s1,a7,a6
              #                    free a6
              #                    free a7
              #                    free s1
              #                          br i1 temp_286_cmp_170, label while.body_171, label while.exit_171 
              #                    occupy s1 with temp_286_cmp_170
              #                    free s1
              #                    occupy s1 with temp_286_cmp_170
    bnez    s1, .while.body_171
              #                    free s1
    j       .while.exit_171
              #                    regtab     a0:Freed { symidx: temp_61_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: temp_60_ptr2globl_87, tracked: true } |     a2:Freed { symidx: lengets_87, tracked: true } |     a4:Freed { symidx: temp_62_ptr2globl_91, tracked: true } |     a5:Freed { symidx: temp_63_cmp_91, tracked: true } |     a6:Freed { symidx: temp_285_ptr2globl_170, tracked: true } |     s1:Freed { symidx: temp_286_cmp_170, tracked: true } | 
              #                          label while.body_171: 
.while.body_171:
              #                          new_var temp_287_ret_of_chapop_172:i32 
              #                          temp_287_ret_of_chapop_172 =  Call i32 chapop_0() 
              #                    saved register dumping to mem
              #                    store to temp_286_cmp_170 in mem offset_illegal
              #                    occupy a3 with 720555_0
    li      a3, 720555
    add     a3,sp,a3
    sb      s1,0(a3)
              #                    free a3
              #                    release s1 with temp_286_cmp_170
              #                    store to temp_61_ret_of_getstr_87 in mem offset_illegal
              #                    occupy a0 with 2081532_0
    li      a0, 2081532
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_61_ret_of_getstr_87
              #                    store to temp_60_ptr2globl_87 in mem offset_illegal
              #                    occupy a0 with 2081536_0
    li      a0, 2081536
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_60_ptr2globl_87
              #                    store to lengets_87 in mem offset_illegal
              #                    occupy a1 with 2081528_0
    li      a1, 2081528
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with lengets_87
              #                    store to temp_62_ptr2globl_91 in mem offset_illegal
              #                    occupy a2 with 2081524_0
    li      a2, 2081524
    add     a2,sp,a2
    sw      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_62_ptr2globl_91
              #                    store to temp_63_cmp_91 in mem offset_illegal
              #                    occupy a3 with 2081523_0
    li      a3, 2081523
    add     a3,sp,a3
    sb      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_63_cmp_91
              #                    store to temp_285_ptr2globl_170 in mem offset_illegal
              #                    occupy a4 with 720556_0
    li      a4, 720556
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_285_ptr2globl_170
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    chapop
              #                    store to temp_287_ret_of_chapop_172 in mem offset_illegal
              #                    occupy a0 with 720548_0
    li      a0, 720548
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          c_172 = i32 temp_287_ret_of_chapop_172 
              #                    occupy a0 with temp_287_ret_of_chapop_172
              #                    occupy a5 with c_172
    mv      a5, a0
              #                    free a0
              #                    free a5
              #                          new_var temp_288_ptr2globl_172:i32 
              #                          temp_288_ptr2globl_172 = load *ii_0:ptr->i32 
              #                    occupy a6 with *ii_0
              #                       load label ii as ptr to reg
    la      a6, ii
              #                    occupy reg a6 with *ii_0
              #                    occupy a7 with temp_288_ptr2globl_172
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_289_index_ptr_172:ptr->i32 
              #                          temp_289_index_ptr_172 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_288_ptr2globl_172)] 
              #                    occupy s1 with temp_289_index_ptr_172
    li      s1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a7 with temp_288_ptr2globl_172
              #                    occupy s3 with _anonymous_of_get2_0_0
    mul     s3,s2,a7
              #                    free s2
              #                    free a7
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy s4 with _anonymous_of_get2_0_0
    la      s4, get2
    add     s1,s1,s4
              #                    free s4
              #                    free s1
              #                          store 32_0:i32 temp_289_index_ptr_172:ptr->i32 
              #                    occupy s1 with temp_289_index_ptr_172
              #                    occupy s5 with 32_0
    li      s5, 32
    sw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          mu get2_0:1091 
              #                          get2_0 = chi get2_0:1091 
              #                          new_var temp_290_ptr2globl_172:i32 
              #                          temp_290_ptr2globl_172 = load *ii_0:ptr->i32 
              #                    occupy s6 with *ii_0
              #                       load label ii as ptr to reg
    la      s6, ii
              #                    occupy reg s6 with *ii_0
              #                    occupy s7 with temp_290_ptr2globl_172
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          new_var temp_291_arithop_172:i32 
              #                          temp_291_arithop_172 = Add i32 temp_290_ptr2globl_172, 1_0 
              #                    occupy s7 with temp_290_ptr2globl_172
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s8 with temp_291_arithop_172
    add     s8,s7,s2
              #                    free s7
              #                    free s2
              #                    free s8
              #                          new_var temp_292_index_ptr_172:ptr->i32 
              #                          temp_292_index_ptr_172 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_291_arithop_172)] 
              #                    occupy s9 with temp_292_index_ptr_172
    li      s9, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s8 with temp_291_arithop_172
              #                    occupy s10 with _anonymous_of_get2_0_0
    mul     s10,s2,s8
              #                    free s2
              #                    free s8
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
              #                    occupy s11 with _anonymous_of_get2_0_0
    la      s11, get2
    add     s9,s9,s11
              #                    free s11
              #                    free s9
              #                          store c_172:i32 temp_292_index_ptr_172:ptr->i32 
              #                    occupy s9 with temp_292_index_ptr_172
              #                    occupy a5 with c_172
    sw      a5,0(s9)
              #                    free a5
              #                    free s9
              #                          mu get2_0:1103 
              #                          get2_0 = chi get2_0:1103 
              #                          new_var temp_293_ptr2globl_172:i32 
              #                          temp_293_ptr2globl_172 = load *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a2 with temp_293_ptr2globl_172
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_294_arithop_172:i32 
              #                          temp_294_arithop_172 = Add i32 temp_293_ptr2globl_172, 2_0 
              #                    occupy a2 with temp_293_ptr2globl_172
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a3 with temp_294_arithop_172
    add     a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                          store temp_294_arithop_172:i32 *ii_0:ptr->i32 
              #                    occupy a1 with *ii_0
              #                       load label ii as ptr to reg
    la      a1, ii
              #                    occupy reg a1 with *ii_0
              #                    occupy a3 with temp_294_arithop_172
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          jump label: while.exit_92 
              #                    store to temp_292_index_ptr_172 in mem offset_illegal
              #                    occupy a1 with 720512_0
    li      a1, 720512
    add     a1,sp,a1
    sd      s9,0(a1)
              #                    free a1
              #                    release s9 with temp_292_index_ptr_172
              #                    store to temp_287_ret_of_chapop_172 in mem offset_illegal
              #                    occupy a0 with 720548_0
    li      a0, 720548
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_287_ret_of_chapop_172
              #                    store to temp_288_ptr2globl_172 in mem offset_illegal
              #                    occupy a0 with 720540_0
    li      a0, 720540
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with temp_288_ptr2globl_172
              #                    store to c_172 in mem offset_illegal
              #                    occupy a4 with 720544_0
    li      a4, 720544
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with c_172
              #                    store to temp_291_arithop_172 in mem offset_illegal
              #                    occupy a5 with 720520_0
    li      a5, 720520
    add     a5,sp,a5
    sw      s8,0(a5)
              #                    free a5
              #                    release s8 with temp_291_arithop_172
              #                    store to temp_294_arithop_172 in mem offset_illegal
              #                    occupy a3 with 720504_0
    li      a3, 720504
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_294_arithop_172
              #                    store to temp_293_ptr2globl_172 in mem offset_illegal
              #                    occupy a2 with 720508_0
    li      a2, 720508
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_293_ptr2globl_172
              #                    store to temp_289_index_ptr_172 in mem offset_illegal
              #                    occupy a2 with 720528_0
    li      a2, 720528
    add     a2,sp,a2
    sd      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_289_index_ptr_172
              #                    store to temp_290_ptr2globl_172 in mem offset_illegal
              #                    occupy a3 with 720524_0
    li      a3, 720524
    add     a3,sp,a3
    sw      s7,0(a3)
              #                    free a3
              #                    release s7 with temp_290_ptr2globl_172
              #                    occupy a1 with _anonymous_of_temp_60_ptr2globl_87_0
              #                    load from temp_60_ptr2globl_87 in mem
              #                    occupy a6 with temp_60_ptr2globl_87
    li      a6, 2081536
    add     a6,sp,a6
    lw      a1,0(a6)
              #                    free a6
              #                    occupy a0 with _anonymous_of_temp_61_ret_of_getstr_87_0
              #                    load from temp_61_ret_of_getstr_87 in mem

              #                    occupy a7 with temp_61_ret_of_getstr_87
    li      a7, 2081532
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    store to temp_61_ret_of_getstr_87 in mem offset_illegal
              #                    occupy a7 with 2081532_0
    li      a7, 2081532
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_61_ret_of_getstr_87
              #                    occupy a4 with _anonymous_of_temp_62_ptr2globl_91_0
              #                    load from temp_62_ptr2globl_91 in mem

              #                    occupy a7 with temp_62_ptr2globl_91
    li      a7, 2081524
    add     a7,sp,a7
    lw      a4,0(a7)
              #                    free a7
              #                    store to temp_60_ptr2globl_87 in mem offset_illegal
              #                    occupy a6 with 2081536_0
    li      a6, 2081536
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_60_ptr2globl_87
              #                    occupy a5 with _anonymous_of_temp_63_cmp_91_0
              #                    load from temp_63_cmp_91 in mem
              #                    occupy a6 with temp_63_cmp_91
    li      a6, 2081523
    add     a6,sp,a6
    lb      a5,0(a6)
              #                    free a6
              #                    occupy a2 with _anonymous_of_lengets_87_0
              #                    load from lengets_87 in mem

              #                    occupy a3 with lengets_87
    li      a3, 2081528
    add     a3,sp,a3
    lw      a2,0(a3)
              #                    free a3
    j       .while.exit_92
              #                    regtab     a0:Freed { symidx: temp_61_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: temp_60_ptr2globl_87, tracked: true } |     a2:Freed { symidx: lengets_87, tracked: true } |     a4:Freed { symidx: temp_62_ptr2globl_91, tracked: true } |     a5:Freed { symidx: temp_63_cmp_91, tracked: true } |     a6:Freed { symidx: temp_285_ptr2globl_170, tracked: true } |     s1:Freed { symidx: temp_286_cmp_170, tracked: true } | 
              #                          label while.exit_171: 
.while.exit_171:
              #                          new_var temp_295_ptr2globl_87:i32 
              #                          temp_295_ptr2globl_87 = load *ii_0:ptr->i32 
              #                    occupy a3 with *ii_0
              #                       load label ii as ptr to reg
    la      a3, ii
              #                    occupy reg a3 with *ii_0
              #                    occupy a7 with temp_295_ptr2globl_87
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                          new_var temp_296_index_ptr_87:ptr->i32 
              #                          temp_296_index_ptr_87 = getelementptr get2_0:Array:i32:[Some(10000_0)] [Some(temp_295_ptr2globl_87)] 
              #                    occupy s2 with temp_296_index_ptr_87
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a7 with temp_295_ptr2globl_87
              #                    occupy s4 with _anonymous_of_get2_0_0
    mul     s4,s3,a7
              #                    free s3
              #                    free a7
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
              #                    occupy s5 with _anonymous_of_get2_0_0
    la      s5, get2
    add     s2,s2,s5
              #                    free s5
              #                    free s2
              #                          store 64_0:i32 temp_296_index_ptr_87:ptr->i32 
              #                    occupy s2 with temp_296_index_ptr_87
              #                    occupy s6 with 64_0
    li      s6, 64
    sw      s6,0(s2)
              #                    free s6
              #                    free s2
              #                          mu get2_0:1119 
              #                          get2_0 = chi get2_0:1119 
              #                          store 1_0:i32 *i_0:ptr->i32 
              #                    occupy s7 with *i_0
              #                       load label i as ptr to reg
    la      s7, i
              #                    occupy reg s7 with *i_0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
    sw      s3,0(s7)
              #                    free s3
              #                    free s7
              #                          jump label: while.head_180 
    j       .while.head_180
              #                    regtab     a0:Freed { symidx: temp_61_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: temp_60_ptr2globl_87, tracked: true } |     a2:Freed { symidx: lengets_87, tracked: true } |     a4:Freed { symidx: temp_62_ptr2globl_91, tracked: true } |     a5:Freed { symidx: temp_63_cmp_91, tracked: true } |     a6:Freed { symidx: temp_285_ptr2globl_170, tracked: true } |     a7:Freed { symidx: temp_295_ptr2globl_87, tracked: true } |     s1:Freed { symidx: temp_286_cmp_170, tracked: true } |     s2:Freed { symidx: temp_296_index_ptr_87, tracked: true } | 
              #                          label while.head_180: 
.while.head_180:
              #                          new_var temp_297_ptr2globl_179:i32 
              #                          temp_297_ptr2globl_179 = load *i_0:ptr->i32 
              #                    occupy a3 with *i_0
              #                       load label i as ptr to reg
    la      a3, i
              #                    occupy reg a3 with *i_0
              #                    occupy s3 with temp_297_ptr2globl_179
    lw      s3,0(a3)
              #                    free s3
              #                    free a3
              #                          new_var temp_298_ptr2globl_179:Array:i32:[Some(10000_0)] 
              #                          temp_298_ptr2globl_179 = load *get2_0:ptr->i32 
              #                    occupy s4 with *get2_0
              #                       load label get2 as ptr to reg
    la      s4, get2
              #                    occupy reg s4 with *get2_0
              #                    occupy s5 with temp_298_ptr2globl_179
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_299_array_ptr_179:ptr->i32 
              #                          temp_299_array_ptr_179 = getelementptr temp_298_ptr2globl_179:Array:i32:[Some(10000_0)] [Some(temp_297_ptr2globl_179)] 
              #                    occupy s6 with temp_299_array_ptr_179
    li      s6, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s3 with temp_297_ptr2globl_179
              #                    occupy s8 with _anonymous_of_temp_298_ptr2globl_179_0
    mul     s8,s7,s3
              #                    free s7
              #                    free s3
    add     s6,s6,s8
              #                    free s8
    slli s6,s6,2
    add     s6,s6,sp
              #                    occupy s9 with 680484_0
    li      s9, 680484
    li      s9, 680484
    add     s6,s9,s6
              #                    free s9
              #                    free s6
              #                          new_var temp_300_array_ele_179:i32 
              #                          temp_300_array_ele_179 = load temp_299_array_ptr_179:ptr->i32 
              #                    occupy s6 with temp_299_array_ptr_179
              #                    occupy s10 with temp_300_array_ele_179
    lw      s10,0(s6)
              #                    free s10
              #                    free s6
              #                          new_var temp_301_cmp_179:i1 
              #                          temp_301_cmp_179 = icmp i32 Ne temp_300_array_ele_179, 64_0 
              #                    occupy s10 with temp_300_array_ele_179
              #                    occupy s11 with 64_0
    li      s11, 64
              #                    occupy a3 with temp_301_cmp_179
    xor     a3,s10,s11
    snez    a3, a3
              #                    free s10
              #                    free s11
              #                    free a3
              #                          br i1 temp_301_cmp_179, label while.body_180, label while.exit_180 
              #                    occupy a3 with temp_301_cmp_179
              #                    free a3
              #                    occupy a3 with temp_301_cmp_179
    bnez    a3, .while.body_180
              #                    free a3
    j       .while.exit_180
              #                    regtab     a0:Freed { symidx: temp_61_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: temp_60_ptr2globl_87, tracked: true } |     a2:Freed { symidx: lengets_87, tracked: true } |     a3:Freed { symidx: temp_301_cmp_179, tracked: true } |     a4:Freed { symidx: temp_62_ptr2globl_91, tracked: true } |     a5:Freed { symidx: temp_63_cmp_91, tracked: true } |     a6:Freed { symidx: temp_285_ptr2globl_170, tracked: true } |     a7:Freed { symidx: temp_295_ptr2globl_87, tracked: true } |     s10:Freed { symidx: temp_300_array_ele_179, tracked: true } |     s1:Freed { symidx: temp_286_cmp_170, tracked: true } |     s2:Freed { symidx: temp_296_index_ptr_87, tracked: true } |     s3:Freed { symidx: temp_297_ptr2globl_179, tracked: true } |     s5:Freed { symidx: temp_298_ptr2globl_179, tracked: true } |     s6:Freed { symidx: temp_299_array_ptr_179, tracked: true } | 
              #                          label while.body_180: 
.while.body_180:
              #                          new_var temp_302_ptr2globl_182:i32 
              #                          temp_302_ptr2globl_182 = load *i_0:ptr->i32 
              #                    occupy s4 with *i_0
              #                       load label i as ptr to reg
    la      s4, i
              #                    occupy reg s4 with *i_0
              #                    occupy s7 with temp_302_ptr2globl_182
    lw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          new_var temp_303_ptr2globl_182:Array:i32:[Some(10000_0)] 
              #                          temp_303_ptr2globl_182 = load *get2_0:ptr->i32 
              #                    occupy s8 with *get2_0
              #                       load label get2 as ptr to reg
    la      s8, get2
              #                    occupy reg s8 with *get2_0
              #                    occupy s9 with temp_303_ptr2globl_182
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_304_array_ptr_182:ptr->i32 
              #                          temp_304_array_ptr_182 = getelementptr temp_303_ptr2globl_182:Array:i32:[Some(10000_0)] [Some(temp_302_ptr2globl_182)] 
              #                    occupy s11 with temp_304_array_ptr_182
    li      s11, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s7 with temp_302_ptr2globl_182
              #                    occupy s8 with _anonymous_of_temp_303_ptr2globl_182_0
    mul     s8,s4,s7
              #                    free s4
              #                    free s7
    add     s11,s11,s8
              #                    free s8
    slli s11,s11,2
    add     s11,s11,sp
              #                    occupy s4 with 640460_0
    li      s4, 640460
    li      s4, 640460
    add     s11,s4,s11
              #                    free s4
              #                    free s11
              #                          new_var temp_305_array_ele_182:i32 
              #                          temp_305_array_ele_182 = load temp_304_array_ptr_182:ptr->i32 
              #                    occupy s11 with temp_304_array_ptr_182
              #                    occupy s4 with temp_305_array_ele_182
    lw      s4,0(s11)
              #                    free s4
              #                    free s11
              #                          new_var temp_306_cmp_182:i1 
              #                          temp_306_cmp_182 = icmp i32 Eq temp_305_array_ele_182, 94_0 
              #                    occupy s4 with temp_305_array_ele_182
              #                    occupy s8 with 94_0
    li      s8, 94
              #                    store to temp_61_ret_of_getstr_87 in mem offset_illegal
              #                    occupy a0 with 2081532_0
    li      a0, 2081532
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_61_ret_of_getstr_87
              #                    occupy a0 with temp_306_cmp_182
    xor     a0,s4,s8
    seqz    a0, a0
              #                    free s4
              #                    free s8
              #                    free a0
              #                          new_var temp_307_ptr2globl_182:i32 
              #                          temp_307_ptr2globl_182 = load *i_0:ptr->i32 
              #                    occupy s8 with *i_0
              #                       load label i as ptr to reg
    la      s8, i
              #                    occupy reg s8 with *i_0
              #                    store to temp_306_cmp_182 in mem offset_illegal
              #                    occupy a0 with 640443_0
    li      a0, 640443
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_306_cmp_182
              #                    occupy a0 with temp_307_ptr2globl_182
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_308_ptr2globl_182:Array:i32:[Some(10000_0)] 
              #                          temp_308_ptr2globl_182 = load *get2_0:ptr->i32 
              #                    occupy s8 with *get2_0
              #                       load label get2 as ptr to reg
    la      s8, get2
              #                    occupy reg s8 with *get2_0
              #                    store to temp_307_ptr2globl_182 in mem offset_illegal
              #                    occupy a0 with 640436_0
    li      a0, 640436
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_307_ptr2globl_182
              #                    occupy a0 with temp_308_ptr2globl_182
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_309_array_ptr_182:ptr->i32 
              #                          temp_309_array_ptr_182 = getelementptr temp_308_ptr2globl_182:Array:i32:[Some(10000_0)] [Some(temp_307_ptr2globl_182)] 
              #                    occupy s8 with temp_309_array_ptr_182
    li      s8, 0
              #                    store to temp_308_ptr2globl_182 in mem offset_illegal
              #                    occupy a0 with 600436_0
    li      a0, 600436
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_308_ptr2globl_182
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_60_ptr2globl_87 in mem offset_illegal
              #                    occupy a1 with 2081536_0
    li      a1, 2081536
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_60_ptr2globl_87
              #                    occupy a1 with temp_307_ptr2globl_182
              #                    load from temp_307_ptr2globl_182 in mem

              #                    occupy a1 with temp_307_ptr2globl_182
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to lengets_87 in mem offset_illegal
              #                    occupy a2 with 2081528_0
    li      a2, 2081528
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with lengets_87
              #                    occupy a2 with _anonymous_of_temp_308_ptr2globl_182_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s8,s8,a2
              #                    free a2
    slli s8,s8,2
    add     s8,s8,sp
              #                    occupy a0 with 600436_0
    li      a0, 600436
    li      a0, 600436
    add     s8,a0,s8
              #                    free a0
              #                    free s8
              #                          new_var temp_310_array_ele_182:i32 
              #                          temp_310_array_ele_182 = load temp_309_array_ptr_182:ptr->i32 
              #                    occupy s8 with temp_309_array_ptr_182
              #                    occupy a0 with temp_310_array_ele_182
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_311_cmp_182:i1 
              #                          temp_311_cmp_182 = icmp i32 Eq temp_310_array_ele_182, 37_0 
              #                    occupy a0 with temp_310_array_ele_182
              #                    occupy a2 with 37_0
    li      a2, 37
              #                    store to temp_307_ptr2globl_182 in mem offset_illegal
              #                    occupy a1 with 640436_0
    li      a1, 640436
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_307_ptr2globl_182
              #                    occupy a1 with temp_311_cmp_182
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_312_logic_182:i1 
              #                          temp_312_logic_182 = Or i1 temp_311_cmp_182, temp_306_cmp_182 
              #                    occupy a1 with temp_311_cmp_182
              #                    occupy a2 with temp_306_cmp_182
              #                    load from temp_306_cmp_182 in mem
              #                    occupy a2 with temp_306_cmp_182
    add     a2,sp,a2
    lb      a2,0(a2)
              #                    free a2
              #                    occupy a2 with temp_306_cmp_182
              #                    free a1
              #                    free a2
              #                    free a2
              #                          new_var temp_313_ptr2globl_182:i32 
              #                          temp_313_ptr2globl_182 = load *i_0:ptr->i32 
              #                    store to temp_310_array_ele_182 in mem offset_illegal
              #                    occupy a0 with 600420_0
    li      a0, 600420
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_310_array_ele_182
              #                    occupy a0 with *i_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy reg a0 with *i_0
              #                    store to temp_311_cmp_182 in mem offset_illegal
              #                    occupy a1 with 600419_0
    li      a1, 600419
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_311_cmp_182
              #                    occupy a1 with temp_313_ptr2globl_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_314_ptr2globl_182:Array:i32:[Some(10000_0)] 
              #                          temp_314_ptr2globl_182 = load *get2_0:ptr->i32 
              #                    occupy a0 with *get2_0
              #                       load label get2 as ptr to reg
    la      a0, get2
              #                    occupy reg a0 with *get2_0
              #                    store to temp_313_ptr2globl_182 in mem offset_illegal
              #                    occupy a1 with 600412_0
    li      a1, 600412
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_313_ptr2globl_182
              #                    occupy a1 with temp_314_ptr2globl_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_315_array_ptr_182:ptr->i32 
              #                          temp_315_array_ptr_182 = getelementptr temp_314_ptr2globl_182:Array:i32:[Some(10000_0)] [Some(temp_313_ptr2globl_182)] 
              #                    occupy a0 with temp_315_array_ptr_182
    li      a0, 0
              #                    store to temp_314_ptr2globl_182 in mem offset_illegal
              #                    occupy a1 with 560412_0
    li      a1, 560412
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_314_ptr2globl_182
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_306_cmp_182 in mem offset_illegal
              #                    occupy a2 with 640443_0
    li      a2, 640443
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_306_cmp_182
              #                    occupy a2 with temp_313_ptr2globl_182
              #                    load from temp_313_ptr2globl_182 in mem

              #                    occupy a2 with temp_313_ptr2globl_182
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_301_cmp_179 in mem offset_illegal
              #                    occupy a3 with 680467_0
    li      a3, 680467
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_301_cmp_179
              #                    occupy a3 with _anonymous_of_temp_314_ptr2globl_182_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 560412_0
    li      a1, 560412
    li      a1, 560412
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_316_array_ele_182:i32 
              #                          temp_316_array_ele_182 = load temp_315_array_ptr_182:ptr->i32 
              #                    occupy a0 with temp_315_array_ptr_182
              #                    occupy a1 with temp_316_array_ele_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_317_cmp_182:i1 
              #                          temp_317_cmp_182 = icmp i32 Eq temp_316_array_ele_182, 47_0 
              #                    occupy a1 with temp_316_array_ele_182
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    store to temp_315_array_ptr_182 in mem offset_illegal
              #                    occupy a0 with 560400_0
    li      a0, 560400
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_315_array_ptr_182
              #                    occupy a0 with temp_317_cmp_182
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_318_logic_182:i1 
              #                          temp_318_logic_182 = Or i1 temp_317_cmp_182, temp_312_logic_182 
              #                    occupy a0 with temp_317_cmp_182
              #                    occupy a3 with temp_312_logic_182
              #                    load from temp_312_logic_182 in mem
              #                    occupy a3 with temp_312_logic_182
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_312_logic_182
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_319_ptr2globl_182:i32 
              #                          temp_319_ptr2globl_182 = load *i_0:ptr->i32 
              #                    store to temp_317_cmp_182 in mem offset_illegal
              #                    occupy a0 with 560395_0
    li      a0, 560395
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_317_cmp_182
              #                    occupy a0 with *i_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy reg a0 with *i_0
              #                    store to temp_316_array_ele_182 in mem offset_illegal
              #                    occupy a1 with 560396_0
    li      a1, 560396
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_316_array_ele_182
              #                    occupy a1 with temp_319_ptr2globl_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_320_ptr2globl_182:Array:i32:[Some(10000_0)] 
              #                          temp_320_ptr2globl_182 = load *get2_0:ptr->i32 
              #                    occupy a0 with *get2_0
              #                       load label get2 as ptr to reg
    la      a0, get2
              #                    occupy reg a0 with *get2_0
              #                    store to temp_319_ptr2globl_182 in mem offset_illegal
              #                    occupy a1 with 560388_0
    li      a1, 560388
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_319_ptr2globl_182
              #                    occupy a1 with temp_320_ptr2globl_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_321_array_ptr_182:ptr->i32 
              #                          temp_321_array_ptr_182 = getelementptr temp_320_ptr2globl_182:Array:i32:[Some(10000_0)] [Some(temp_319_ptr2globl_182)] 
              #                    occupy a0 with temp_321_array_ptr_182
    li      a0, 0
              #                    store to temp_320_ptr2globl_182 in mem offset_illegal
              #                    occupy a1 with 520388_0
    li      a1, 520388
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_320_ptr2globl_182
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_313_ptr2globl_182 in mem offset_illegal
              #                    occupy a2 with 600412_0
    li      a2, 600412
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_313_ptr2globl_182
              #                    occupy a2 with temp_319_ptr2globl_182
              #                    load from temp_319_ptr2globl_182 in mem

              #                    occupy a2 with temp_319_ptr2globl_182
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_312_logic_182 in mem offset_illegal
              #                    occupy a3 with 600418_0
    li      a3, 600418
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_312_logic_182
              #                    occupy a3 with _anonymous_of_temp_320_ptr2globl_182_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 520388_0
    li      a1, 520388
    li      a1, 520388
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_322_array_ele_182:i32 
              #                          temp_322_array_ele_182 = load temp_321_array_ptr_182:ptr->i32 
              #                    occupy a0 with temp_321_array_ptr_182
              #                    occupy a1 with temp_322_array_ele_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_323_cmp_182:i1 
              #                          temp_323_cmp_182 = icmp i32 Eq temp_322_array_ele_182, 42_0 
              #                    occupy a1 with temp_322_array_ele_182
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    store to temp_321_array_ptr_182 in mem offset_illegal
              #                    occupy a0 with 520376_0
    li      a0, 520376
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_321_array_ptr_182
              #                    occupy a0 with temp_323_cmp_182
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_324_logic_182:i1 
              #                          temp_324_logic_182 = Or i1 temp_323_cmp_182, temp_318_logic_182 
              #                    occupy a0 with temp_323_cmp_182
              #                    occupy a3 with temp_318_logic_182
              #                    load from temp_318_logic_182 in mem
              #                    occupy a3 with temp_318_logic_182
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_318_logic_182
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_325_ptr2globl_182:i32 
              #                          temp_325_ptr2globl_182 = load *i_0:ptr->i32 
              #                    store to temp_323_cmp_182 in mem offset_illegal
              #                    occupy a0 with 520371_0
    li      a0, 520371
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_323_cmp_182
              #                    occupy a0 with *i_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy reg a0 with *i_0
              #                    store to temp_322_array_ele_182 in mem offset_illegal
              #                    occupy a1 with 520372_0
    li      a1, 520372
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_322_array_ele_182
              #                    occupy a1 with temp_325_ptr2globl_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_326_ptr2globl_182:Array:i32:[Some(10000_0)] 
              #                          temp_326_ptr2globl_182 = load *get2_0:ptr->i32 
              #                    occupy a0 with *get2_0
              #                       load label get2 as ptr to reg
    la      a0, get2
              #                    occupy reg a0 with *get2_0
              #                    store to temp_325_ptr2globl_182 in mem offset_illegal
              #                    occupy a1 with 520364_0
    li      a1, 520364
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_325_ptr2globl_182
              #                    occupy a1 with temp_326_ptr2globl_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_327_array_ptr_182:ptr->i32 
              #                          temp_327_array_ptr_182 = getelementptr temp_326_ptr2globl_182:Array:i32:[Some(10000_0)] [Some(temp_325_ptr2globl_182)] 
              #                    occupy a0 with temp_327_array_ptr_182
    li      a0, 0
              #                    store to temp_326_ptr2globl_182 in mem offset_illegal
              #                    occupy a1 with 480364_0
    li      a1, 480364
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_326_ptr2globl_182
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_319_ptr2globl_182 in mem offset_illegal
              #                    occupy a2 with 560388_0
    li      a2, 560388
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_319_ptr2globl_182
              #                    occupy a2 with temp_325_ptr2globl_182
              #                    load from temp_325_ptr2globl_182 in mem

              #                    occupy a2 with temp_325_ptr2globl_182
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_318_logic_182 in mem offset_illegal
              #                    occupy a3 with 560394_0
    li      a3, 560394
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_318_logic_182
              #                    occupy a3 with _anonymous_of_temp_326_ptr2globl_182_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 480364_0
    li      a1, 480364
    li      a1, 480364
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_328_array_ele_182:i32 
              #                          temp_328_array_ele_182 = load temp_327_array_ptr_182:ptr->i32 
              #                    occupy a0 with temp_327_array_ptr_182
              #                    occupy a1 with temp_328_array_ele_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_329_cmp_182:i1 
              #                          temp_329_cmp_182 = icmp i32 Eq temp_328_array_ele_182, 45_0 
              #                    occupy a1 with temp_328_array_ele_182
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    store to temp_327_array_ptr_182 in mem offset_illegal
              #                    occupy a0 with 480352_0
    li      a0, 480352
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_327_array_ptr_182
              #                    occupy a0 with temp_329_cmp_182
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_330_logic_182:i1 
              #                          temp_330_logic_182 = Or i1 temp_329_cmp_182, temp_324_logic_182 
              #                    occupy a0 with temp_329_cmp_182
              #                    occupy a3 with temp_324_logic_182
              #                    load from temp_324_logic_182 in mem
              #                    occupy a3 with temp_324_logic_182
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_324_logic_182
              #                    free a0
              #                    free a3
              #                    free a3
              #                          new_var temp_331_ptr2globl_182:i32 
              #                          temp_331_ptr2globl_182 = load *i_0:ptr->i32 
              #                    store to temp_329_cmp_182 in mem offset_illegal
              #                    occupy a0 with 480347_0
    li      a0, 480347
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_329_cmp_182
              #                    occupy a0 with *i_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy reg a0 with *i_0
              #                    store to temp_328_array_ele_182 in mem offset_illegal
              #                    occupy a1 with 480348_0
    li      a1, 480348
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_328_array_ele_182
              #                    occupy a1 with temp_331_ptr2globl_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_332_ptr2globl_182:Array:i32:[Some(10000_0)] 
              #                          temp_332_ptr2globl_182 = load *get2_0:ptr->i32 
              #                    occupy a0 with *get2_0
              #                       load label get2 as ptr to reg
    la      a0, get2
              #                    occupy reg a0 with *get2_0
              #                    store to temp_331_ptr2globl_182 in mem offset_illegal
              #                    occupy a1 with 480340_0
    li      a1, 480340
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_331_ptr2globl_182
              #                    occupy a1 with temp_332_ptr2globl_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_333_array_ptr_182:ptr->i32 
              #                          temp_333_array_ptr_182 = getelementptr temp_332_ptr2globl_182:Array:i32:[Some(10000_0)] [Some(temp_331_ptr2globl_182)] 
              #                    occupy a0 with temp_333_array_ptr_182
    li      a0, 0
              #                    store to temp_332_ptr2globl_182 in mem offset_illegal
              #                    occupy a1 with 440340_0
    li      a1, 440340
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_332_ptr2globl_182
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_325_ptr2globl_182 in mem offset_illegal
              #                    occupy a2 with 520364_0
    li      a2, 520364
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_325_ptr2globl_182
              #                    occupy a2 with temp_331_ptr2globl_182
              #                    load from temp_331_ptr2globl_182 in mem

              #                    occupy a2 with temp_331_ptr2globl_182
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_324_logic_182 in mem offset_illegal
              #                    occupy a3 with 520370_0
    li      a3, 520370
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_324_logic_182
              #                    occupy a3 with _anonymous_of_temp_332_ptr2globl_182_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 440340_0
    li      a1, 440340
    li      a1, 440340
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_334_array_ele_182:i32 
              #                          temp_334_array_ele_182 = load temp_333_array_ptr_182:ptr->i32 
              #                    occupy a0 with temp_333_array_ptr_182
              #                    occupy a1 with temp_334_array_ele_182
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_335_cmp_182:i1 
              #                          temp_335_cmp_182 = icmp i32 Eq temp_334_array_ele_182, 43_0 
              #                    occupy a1 with temp_334_array_ele_182
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    store to temp_333_array_ptr_182 in mem offset_illegal
              #                    occupy a0 with 440328_0
    li      a0, 440328
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_333_array_ptr_182
              #                    occupy a0 with temp_335_cmp_182
    xor     a0,a1,a3
    seqz    a0, a0
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_336_logic_182:i1 
              #                          temp_336_logic_182 = Or i1 temp_335_cmp_182, temp_330_logic_182 
              #                    occupy a0 with temp_335_cmp_182
              #                    occupy a3 with temp_330_logic_182
              #                    load from temp_330_logic_182 in mem
              #                    occupy a3 with temp_330_logic_182
    add     a3,sp,a3
    lb      a3,0(a3)
              #                    free a3
              #                    occupy a3 with temp_330_logic_182
              #                    free a0
              #                    free a3
              #                    free a3
              #                          br i1 temp_336_logic_182, label branch_true_183, label branch_false_183 
              #                    store to temp_335_cmp_182 in mem offset_illegal
              #                    occupy a0 with 440323_0
    li      a0, 440323
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_335_cmp_182
              #                    occupy a0 with temp_336_logic_182
              #                    load from temp_336_logic_182 in mem
              #                    occupy a0 with temp_336_logic_182
    add     a0,sp,a0
    lb      a0,0(a0)
              #                    free a0
              #                    free a0
              #                    store to temp_299_array_ptr_179 in mem offset_illegal
              #                    occupy s6 with 680472_0
    li      s6, 680472
    add     s6,sp,s6
    sd      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_299_array_ptr_179
              #                    occupy a0 with temp_336_logic_182
    bnez    a0, .branch_true_183
              #                    free a0
    j       .branch_false_183
              #                    regtab     a0:Freed { symidx: temp_336_logic_182, tracked: true } |     a1:Freed { symidx: temp_334_array_ele_182, tracked: true } |     a2:Freed { symidx: temp_331_ptr2globl_182, tracked: true } |     a3:Freed { symidx: temp_330_logic_182, tracked: true } |     a4:Freed { symidx: temp_62_ptr2globl_91, tracked: true } |     a5:Freed { symidx: temp_63_cmp_91, tracked: true } |     a6:Freed { symidx: temp_285_ptr2globl_170, tracked: true } |     a7:Freed { symidx: temp_295_ptr2globl_87, tracked: true } |     s10:Freed { symidx: temp_300_array_ele_179, tracked: true } |     s11:Freed { symidx: temp_304_array_ptr_182, tracked: true } |     s1:Freed { symidx: temp_286_cmp_170, tracked: true } |     s2:Freed { symidx: temp_296_index_ptr_87, tracked: true } |     s3:Freed { symidx: temp_297_ptr2globl_179, tracked: true } |     s4:Freed { symidx: temp_305_array_ele_182, tracked: true } |     s5:Freed { symidx: temp_298_ptr2globl_179, tracked: true } |     s7:Freed { symidx: temp_302_ptr2globl_182, tracked: true } |     s8:Freed { symidx: temp_309_array_ptr_182, tracked: true } |     s9:Freed { symidx: temp_303_ptr2globl_182, tracked: true } | 
              #                          label branch_true_183: 
.branch_true_183:
              #                          new_var temp_337_ret_of_intpop_184:i32 
              #                          temp_337_ret_of_intpop_184 =  Call i32 intpop_0() 
              #                    saved register dumping to mem
              #                    store to temp_286_cmp_170 in mem offset_illegal
              #                    occupy s1 with 720555_0
    li      s1, 720555
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_286_cmp_170
              #                    store to temp_296_index_ptr_87 in mem offset_illegal
              #                    occupy s1 with 720488_0
    li      s1, 720488
    add     s1,sp,s1
    sd      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_296_index_ptr_87
              #                    store to temp_297_ptr2globl_179 in mem offset_illegal
              #                    occupy s2 with 720484_0
    li      s2, 720484
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_297_ptr2globl_179
              #                    store to temp_305_array_ele_182 in mem offset_illegal
              #                    occupy s3 with 640444_0
    li      s3, 640444
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_305_array_ele_182
              #                    store to temp_298_ptr2globl_179 in mem offset_illegal
              #                    occupy s4 with 680484_0
    li      s4, 680484
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_298_ptr2globl_179
              #                    store to temp_302_ptr2globl_182 in mem offset_illegal
              #                    occupy s5 with 680460_0
    li      s5, 680460
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_302_ptr2globl_182
              #                    store to temp_309_array_ptr_182 in mem offset_illegal
              #                    occupy s6 with 600424_0
    li      s6, 600424
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_309_array_ptr_182
              #                    store to temp_303_ptr2globl_182 in mem offset_illegal
              #                    occupy s7 with 640460_0
    li      s7, 640460
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_303_ptr2globl_182
              #                    store to temp_300_array_ele_179 in mem offset_illegal
              #                    occupy s8 with 680468_0
    li      s8, 680468
    add     s8,sp,s8
    sw      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_300_array_ele_179
              #                    store to temp_304_array_ptr_182 in mem offset_illegal
              #                    occupy s9 with 640448_0
    li      s9, 640448
    add     s9,sp,s9
    sd      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_304_array_ptr_182
              #                    store to temp_336_logic_182 in mem offset_illegal
              #                    occupy a0 with 440322_0
    li      a0, 440322
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_336_logic_182
              #                    store to temp_334_array_ele_182 in mem offset_illegal
              #                    occupy a0 with 440324_0
    li      a0, 440324
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_334_array_ele_182
              #                    store to temp_331_ptr2globl_182 in mem offset_illegal
              #                    occupy a1 with 480340_0
    li      a1, 480340
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_331_ptr2globl_182
              #                    store to temp_330_logic_182 in mem offset_illegal
              #                    occupy a2 with 480346_0
    li      a2, 480346
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_330_logic_182
              #                    store to temp_62_ptr2globl_91 in mem offset_illegal
              #                    occupy a3 with 2081524_0
    li      a3, 2081524
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_62_ptr2globl_91
              #                    store to temp_63_cmp_91 in mem offset_illegal
              #                    occupy a4 with 2081523_0
    li      a4, 2081523
    add     a4,sp,a4
    sb      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_63_cmp_91
              #                    store to temp_285_ptr2globl_170 in mem offset_illegal
              #                    occupy a5 with 720556_0
    li      a5, 720556
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_285_ptr2globl_170
              #                    store to temp_295_ptr2globl_87 in mem offset_illegal
              #                    occupy a6 with 720500_0
    li      a6, 720500
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_295_ptr2globl_87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    intpop
              #                    store to temp_337_ret_of_intpop_184 in mem offset_illegal
              #                    occupy a0 with 440316_0
    li      a0, 440316
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          a_184 = i32 temp_337_ret_of_intpop_184 
              #                    occupy a0 with temp_337_ret_of_intpop_184
              #                    occupy a7 with a_184
    mv      a7, a0
              #                    free a0
              #                    free a7
              #                          new_var temp_338_ret_of_intpop_184:i32 
              #                          temp_338_ret_of_intpop_184 =  Call i32 intpop_0() 
              #                    saved register dumping to mem
              #                    store to temp_337_ret_of_intpop_184 in mem offset_illegal
              #                    occupy a0 with 440316_0
    li      a0, 440316
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_337_ret_of_intpop_184
              #                    store to a_184 in mem offset_illegal
              #                    occupy a0 with 440312_0
    li      a0, 440312
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with a_184
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    intpop
              #                    store to temp_338_ret_of_intpop_184 in mem offset_illegal
              #                    occupy a0 with 440308_0
    li      a0, 440308
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          b_184 = i32 temp_338_ret_of_intpop_184 
              #                    occupy a0 with temp_338_ret_of_intpop_184
              #                    occupy a1 with b_184
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var c_184:i32 
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: temp_338_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_339_ptr2globl_188:i32 
              #                          temp_339_ptr2globl_188 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy a3 with temp_339_ptr2globl_188
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_340_ptr2globl_188:Array:i32:[Some(10000_0)] 
              #                          temp_340_ptr2globl_188 = load *get2_0:ptr->i32 
              #                    occupy a4 with *get2_0
              #                       load label get2 as ptr to reg
    la      a4, get2
              #                    occupy reg a4 with *get2_0
              #                    occupy a5 with temp_340_ptr2globl_188
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_341_array_ptr_188:ptr->i32 
              #                          temp_341_array_ptr_188 = getelementptr temp_340_ptr2globl_188:Array:i32:[Some(10000_0)] [Some(temp_339_ptr2globl_188)] 
              #                    occupy a6 with temp_341_array_ptr_188
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a3 with temp_339_ptr2globl_188
              #                    occupy s1 with _anonymous_of_temp_340_ptr2globl_188_0
    mul     s1,a7,a3
              #                    free a7
              #                    free a3
    add     a6,a6,s1
              #                    free s1
    slli a6,a6,2
    add     a6,a6,sp
              #                    occupy s2 with 400296_0
    li      s2, 400296
    li      s2, 400296
    add     a6,s2,a6
              #                    free s2
              #                    free a6
              #                          new_var temp_342_array_ele_188:i32 
              #                          temp_342_array_ele_188 = load temp_341_array_ptr_188:ptr->i32 
              #                    occupy a6 with temp_341_array_ptr_188
              #                    occupy s3 with temp_342_array_ele_188
    lw      s3,0(a6)
              #                    free s3
              #                    free a6
              #                          new_var temp_343_cmp_188:i1 
              #                          temp_343_cmp_188 = icmp i32 Eq temp_342_array_ele_188, 43_0 
              #                    occupy s3 with temp_342_array_ele_188
              #                    occupy s4 with 43_0
    li      s4, 43
              #                    occupy s5 with temp_343_cmp_188
    xor     s5,s3,s4
    seqz    s5, s5
              #                    free s3
              #                    free s4
              #                    free s5
              #                          br i1 temp_343_cmp_188, label branch_true_189, label branch_false_189 
              #                    occupy s5 with temp_343_cmp_188
              #                    free s5
              #                    occupy s5 with temp_343_cmp_188
    bnez    s5, .branch_true_189
              #                    free s5
    j       .branch_false_189
              #                    regtab     a0:Freed { symidx: temp_338_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } | 
              #                          label branch_true_189: 
.branch_true_189:
              #                          new_var temp_344_arithop_188:i32 
              #                          temp_344_arithop_188 = Add i32 a_184, b_184 
              #                    occupy a2 with a_184
              #                    load from a_184 in mem

              #                    occupy a2 with a_184
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    occupy a1 with b_184
              #                    occupy a4 with temp_344_arithop_188
    add     a4,a2,a1
              #                    free a2
              #                    free a1
              #                    free a4
              #                          c_184 = i32 temp_344_arithop_188 
              #                    occupy a4 with temp_344_arithop_188
              #                    occupy a7 with c_184
    mv      a7, a4
              #                    free a4
              #                    free a7
              #                          jump label: branch_false_189 
              #                    store to c_184 in mem offset_illegal
              #                    occupy a7 with 440300_0
    li      a7, 440300
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with c_184
              #                    store to temp_344_arithop_188 in mem offset_illegal
              #                    occupy a4 with 400276_0
    li      a4, 400276
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_344_arithop_188
              #                    store to a_184 in mem offset_illegal
              #                    occupy a2 with 440312_0
    li      a2, 440312
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with a_184
    j       .branch_false_189
              #                    regtab     a0:Freed { symidx: temp_338_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } | 
              #                          label branch_false_189: 
.branch_false_189:
              #                    regtab     a0:Freed { symidx: temp_338_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_345_ptr2globl_191:i32 
              #                          temp_345_ptr2globl_191 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy a4 with temp_345_ptr2globl_191
    lw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                          new_var temp_346_ptr2globl_191:Array:i32:[Some(10000_0)] 
              #                          temp_346_ptr2globl_191 = load *get2_0:ptr->i32 
              #                    occupy a7 with *get2_0
              #                       load label get2 as ptr to reg
    la      a7, get2
              #                    occupy reg a7 with *get2_0
              #                    occupy s1 with temp_346_ptr2globl_191
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_347_array_ptr_191:ptr->i32 
              #                          temp_347_array_ptr_191 = getelementptr temp_346_ptr2globl_191:Array:i32:[Some(10000_0)] [Some(temp_345_ptr2globl_191)] 
              #                    occupy s2 with temp_347_array_ptr_191
    li      s2, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a4 with temp_345_ptr2globl_191
              #                    occupy s6 with _anonymous_of_temp_346_ptr2globl_191_0
    mul     s6,s4,a4
              #                    free s4
              #                    free a4
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
    add     s2,s2,sp
              #                    occupy s7 with 360272_0
    li      s7, 360272
    li      s7, 360272
    add     s2,s7,s2
              #                    free s7
              #                    free s2
              #                          new_var temp_348_array_ele_191:i32 
              #                          temp_348_array_ele_191 = load temp_347_array_ptr_191:ptr->i32 
              #                    occupy s2 with temp_347_array_ptr_191
              #                    occupy s8 with temp_348_array_ele_191
    lw      s8,0(s2)
              #                    free s8
              #                    free s2
              #                          new_var temp_349_cmp_191:i1 
              #                          temp_349_cmp_191 = icmp i32 Eq temp_348_array_ele_191, 45_0 
              #                    occupy s8 with temp_348_array_ele_191
              #                    occupy s9 with 45_0
    li      s9, 45
              #                    occupy s10 with temp_349_cmp_191
    xor     s10,s8,s9
    seqz    s10, s10
              #                    free s8
              #                    free s9
              #                    free s10
              #                          br i1 temp_349_cmp_191, label branch_true_192, label branch_false_192 
              #                    occupy s10 with temp_349_cmp_191
              #                    free s10
              #                    occupy s10 with temp_349_cmp_191
    bnez    s10, .branch_true_192
              #                    free s10
    j       .branch_false_192
              #                    regtab     a0:Freed { symidx: temp_338_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } | 
              #                          label branch_true_192: 
.branch_true_192:
              #                          new_var temp_350_arithop_191:i32 
              #                          temp_350_arithop_191 = Sub i32 b_184, a_184 
              #                    occupy a1 with b_184
              #                    occupy a2 with a_184
              #                    load from a_184 in mem

              #                    occupy a2 with a_184
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    occupy a7 with temp_350_arithop_191
              #                    regtab:    a0:Freed { symidx: temp_338_ret_of_intpop_184, tracked: true } |     a1:Occupied { symidx: b_184, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: a_184, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Occupied { symidx: temp_350_arithop_191, tracked: true, occupy_count: 1 } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } | 


    sub     a7,a1,a2
              #                    free a1
              #                    free a2
              #                    free a7
              #                          c_184 = i32 temp_350_arithop_191 
              #                    occupy a7 with temp_350_arithop_191
              #                    occupy s4 with c_184
    mv      s4, a7
              #                    free a7
              #                    free s4
              #                          jump label: branch_false_192 
              #                    store to temp_350_arithop_191 in mem offset_illegal
              #                    occupy a7 with 360252_0
    li      a7, 360252
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_350_arithop_191
              #                    store to c_184 in mem offset_illegal
              #                    occupy a7 with 440300_0
    li      a7, 440300
    add     a7,sp,a7
    sw      s4,0(a7)
              #                    free a7
              #                    release s4 with c_184
              #                    store to a_184 in mem offset_illegal
              #                    occupy a2 with 440312_0
    li      a2, 440312
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with a_184
    j       .branch_false_192
              #                    regtab     a0:Freed { symidx: temp_338_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } | 
              #                          label branch_false_192: 
.branch_false_192:
              #                    regtab     a0:Freed { symidx: temp_338_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                          new_var temp_351_ptr2globl_194:i32 
              #                          temp_351_ptr2globl_194 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy a7 with temp_351_ptr2globl_194
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_352_ptr2globl_194:Array:i32:[Some(10000_0)] 
              #                          temp_352_ptr2globl_194 = load *get2_0:ptr->i32 
              #                    occupy s4 with *get2_0
              #                       load label get2 as ptr to reg
    la      s4, get2
              #                    occupy reg s4 with *get2_0
              #                    occupy s6 with temp_352_ptr2globl_194
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          new_var temp_353_array_ptr_194:ptr->i32 
              #                          temp_353_array_ptr_194 = getelementptr temp_352_ptr2globl_194:Array:i32:[Some(10000_0)] [Some(temp_351_ptr2globl_194)] 
              #                    occupy s7 with temp_353_array_ptr_194
    li      s7, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy a7 with temp_351_ptr2globl_194
              #                    occupy s11 with _anonymous_of_temp_352_ptr2globl_194_0
    mul     s11,s9,a7
              #                    free s9
              #                    free a7
    add     s7,s7,s11
              #                    free s11
    slli s7,s7,2
    add     s7,s7,sp
              #                    occupy a2 with 320248_0
    li      a2, 320248
    li      a2, 320248
    add     s7,a2,s7
              #                    free a2
              #                    free s7
              #                          new_var temp_354_array_ele_194:i32 
              #                          temp_354_array_ele_194 = load temp_353_array_ptr_194:ptr->i32 
              #                    occupy s7 with temp_353_array_ptr_194
              #                    occupy a2 with temp_354_array_ele_194
    lw      a2,0(s7)
              #                    free a2
              #                    free s7
              #                          new_var temp_355_cmp_194:i1 
              #                          temp_355_cmp_194 = icmp i32 Eq temp_354_array_ele_194, 42_0 
              #                    occupy a2 with temp_354_array_ele_194
              #                    occupy s4 with 42_0
    li      s4, 42
              #                    occupy s9 with temp_355_cmp_194
    xor     s9,a2,s4
    seqz    s9, s9
              #                    free a2
              #                    free s4
              #                    free s9
              #                          br i1 temp_355_cmp_194, label branch_true_195, label branch_false_195 
              #                    occupy s9 with temp_355_cmp_194
              #                    free s9
              #                    occupy s9 with temp_355_cmp_194
    bnez    s9, .branch_true_195
              #                    free s9
    j       .branch_false_195
              #                    regtab     a0:Freed { symidx: temp_338_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a2:Freed { symidx: temp_354_array_ele_194, tracked: true } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Freed { symidx: temp_351_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s6:Freed { symidx: temp_352_ptr2globl_194, tracked: true } |     s7:Freed { symidx: temp_353_array_ptr_194, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } |     s9:Freed { symidx: temp_355_cmp_194, tracked: true } | 
              #                          label branch_true_195: 
.branch_true_195:
              #                          new_var temp_356_arithop_194:i32 
              #                          temp_356_arithop_194 = Mul i32 a_184, b_184 
              #                    occupy s4 with a_184
              #                    load from a_184 in mem

              #                    occupy s4 with a_184
    add     s4,sp,s4
    lw      s4,0(s4)
              #                    free s4
              #                    occupy a1 with b_184
              #                    occupy s11 with temp_356_arithop_194
    mul     s11,s4,a1
              #                    free s4
              #                    free a1
              #                    free s11
              #                          c_184 = i32 temp_356_arithop_194 
              #                    occupy s11 with temp_356_arithop_194
              #                    store to temp_338_ret_of_intpop_184 in mem offset_illegal
              #                    occupy a0 with 440308_0
    li      a0, 440308
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_338_ret_of_intpop_184
              #                    occupy a0 with c_184
    mv      a0, s11
              #                    free s11
              #                    free a0
              #                          jump label: branch_false_195 
              #                    store to c_184 in mem offset_illegal
              #                    occupy a0 with 440300_0
    li      a0, 440300
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with c_184
              #                    store to temp_356_arithop_194 in mem offset_illegal
              #                    occupy a0 with 320228_0
    li      a0, 320228
    add     a0,sp,a0
    sw      s11,0(a0)
              #                    free a0
              #                    release s11 with temp_356_arithop_194
              #                    store to a_184 in mem offset_illegal
              #                    occupy s4 with 440312_0
    li      s4, 440312
    add     s4,sp,s4
    sw      s4,0(s4)
              #                    free s4
              #                    release s4 with a_184
              #                    occupy a0 with _anonymous_of_temp_338_ret_of_intpop_184_0
              #                    load from temp_338_ret_of_intpop_184 in mem

              #                    occupy s4 with temp_338_ret_of_intpop_184
    li      s4, 440308
    add     s4,sp,s4
    lw      a0,0(s4)
              #                    free s4
              #                    store to temp_338_ret_of_intpop_184 in mem offset_illegal
              #                    occupy s4 with 440308_0
    li      s4, 440308
    add     s4,sp,s4
    sw      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_338_ret_of_intpop_184
    j       .branch_false_195
              #                    regtab     a0:Freed { symidx: temp_338_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a2:Freed { symidx: temp_354_array_ele_194, tracked: true } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Freed { symidx: temp_351_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s6:Freed { symidx: temp_352_ptr2globl_194, tracked: true } |     s7:Freed { symidx: temp_353_array_ptr_194, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } |     s9:Freed { symidx: temp_355_cmp_194, tracked: true } | 
              #                          label branch_false_195: 
.branch_false_195:
              #                    regtab     a0:Freed { symidx: temp_338_ret_of_intpop_184, tracked: true } |     a1:Freed { symidx: b_184, tracked: true } |     a2:Freed { symidx: temp_354_array_ele_194, tracked: true } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Freed { symidx: temp_351_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s6:Freed { symidx: temp_352_ptr2globl_194, tracked: true } |     s7:Freed { symidx: temp_353_array_ptr_194, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } |     s9:Freed { symidx: temp_355_cmp_194, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          new_var temp_357_ptr2globl_197:i32 
              #                          temp_357_ptr2globl_197 = load *i_0:ptr->i32 
              #                    occupy s4 with *i_0
              #                       load label i as ptr to reg
    la      s4, i
              #                    occupy reg s4 with *i_0
              #                    occupy s11 with temp_357_ptr2globl_197
    lw      s11,0(s4)
              #                    free s11
              #                    free s4
              #                          new_var temp_358_ptr2globl_197:Array:i32:[Some(10000_0)] 
              #                          temp_358_ptr2globl_197 = load *get2_0:ptr->i32 
              #                    occupy s4 with *get2_0
              #                       load label get2 as ptr to reg
    la      s4, get2
              #                    occupy reg s4 with *get2_0
              #                    store to temp_338_ret_of_intpop_184 in mem offset_illegal
              #                    occupy a0 with 440308_0
    li      a0, 440308
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_338_ret_of_intpop_184
              #                    occupy a0 with temp_358_ptr2globl_197
    lw      a0,0(s4)
              #                    free a0
              #                    free s4
              #                          new_var temp_359_array_ptr_197:ptr->i32 
              #                          temp_359_array_ptr_197 = getelementptr temp_358_ptr2globl_197:Array:i32:[Some(10000_0)] [Some(temp_357_ptr2globl_197)] 
              #                    occupy s4 with temp_359_array_ptr_197
    li      s4, 0
              #                    store to temp_358_ptr2globl_197 in mem offset_illegal
              #                    occupy a0 with 280224_0
    li      a0, 280224
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_358_ptr2globl_197
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s11 with temp_357_ptr2globl_197
              #                    store to b_184 in mem offset_illegal
              #                    occupy a1 with 440304_0
    li      a1, 440304
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with b_184
              #                    occupy a1 with _anonymous_of_temp_358_ptr2globl_197_0
    mul     a1,a0,s11
              #                    free a0
              #                    free s11
    add     s4,s4,a1
              #                    free a1
    slli s4,s4,2
    add     s4,s4,sp
              #                    occupy a0 with 280224_0
    li      a0, 280224
    li      a0, 280224
    add     s4,a0,s4
              #                    free a0
              #                    free s4
              #                          new_var temp_360_array_ele_197:i32 
              #                          temp_360_array_ele_197 = load temp_359_array_ptr_197:ptr->i32 
              #                    occupy s4 with temp_359_array_ptr_197
              #                    occupy a0 with temp_360_array_ele_197
    lw      a0,0(s4)
              #                    free a0
              #                    free s4
              #                          new_var temp_361_cmp_197:i1 
              #                          temp_361_cmp_197 = icmp i32 Eq temp_360_array_ele_197, 47_0 
              #                    occupy a0 with temp_360_array_ele_197
              #                    occupy a1 with 47_0
    li      a1, 47
              #                    store to temp_354_array_ele_194 in mem offset_illegal
              #                    occupy a2 with 320236_0
    li      a2, 320236
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_354_array_ele_194
              #                    occupy a2 with temp_361_cmp_197
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_361_cmp_197, label branch_true_198, label branch_false_198 
              #                    occupy a2 with temp_361_cmp_197
              #                    free a2
              #                    occupy a2 with temp_361_cmp_197
    bnez    a2, .branch_true_198
              #                    free a2
    j       .branch_false_198
              #                    regtab     a0:Freed { symidx: temp_360_array_ele_197, tracked: true } |     a2:Freed { symidx: temp_361_cmp_197, tracked: true } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Freed { symidx: temp_351_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s11:Freed { symidx: temp_357_ptr2globl_197, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s4:Freed { symidx: temp_359_array_ptr_197, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s6:Freed { symidx: temp_352_ptr2globl_194, tracked: true } |     s7:Freed { symidx: temp_353_array_ptr_194, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } |     s9:Freed { symidx: temp_355_cmp_194, tracked: true } | 
              #                          label branch_true_198: 
.branch_true_198:
              #                          new_var temp_362_arithop_197:i32 
              #                          temp_362_arithop_197 = Div i32 b_184, a_184 
              #                    occupy a1 with b_184
              #                    load from b_184 in mem

              #                    occupy a1 with b_184
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_360_array_ele_197 in mem offset_illegal
              #                    occupy a0 with 280212_0
    li      a0, 280212
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_360_array_ele_197
              #                    occupy a0 with a_184
              #                    load from a_184 in mem

              #                    occupy a0 with a_184
    add     a0,sp,a0
    lw      a0,0(a0)
              #                    free a0
              #                    store to temp_361_cmp_197 in mem offset_illegal
              #                    occupy a2 with 280211_0
    li      a2, 280211
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_361_cmp_197
              #                    occupy a2 with temp_362_arithop_197
    div     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          c_184 = i32 temp_362_arithop_197 
              #                    occupy a2 with temp_362_arithop_197
              #                    store to a_184 in mem offset_illegal
              #                    occupy a0 with 440312_0
    li      a0, 440312
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with a_184
              #                    occupy a0 with c_184
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: branch_false_198 
              #                    store to b_184 in mem offset_illegal
              #                    occupy a1 with 440304_0
    li      a1, 440304
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with b_184
              #                    store to c_184 in mem offset_illegal
              #                    occupy a0 with 440300_0
    li      a0, 440300
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with c_184
              #                    store to temp_362_arithop_197 in mem offset_illegal
              #                    occupy a0 with 280204_0
    li      a0, 280204
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with temp_362_arithop_197
              #                    occupy a0 with _anonymous_of_temp_360_array_ele_197_0
              #                    load from temp_360_array_ele_197 in mem

              #                    occupy a1 with temp_360_array_ele_197
    li      a1, 280212
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_361_cmp_197_0
              #                    load from temp_361_cmp_197 in mem
              #                    store to temp_360_array_ele_197 in mem offset_illegal
              #                    occupy a1 with 280212_0
    li      a1, 280212
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_360_array_ele_197
              #                    occupy a1 with temp_361_cmp_197
    li      a1, 280211
    add     a1,sp,a1
    lb      a2,0(a1)
              #                    free a1
    j       .branch_false_198
              #                    regtab     a0:Freed { symidx: temp_360_array_ele_197, tracked: true } |     a2:Freed { symidx: temp_361_cmp_197, tracked: true } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Freed { symidx: temp_351_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s11:Freed { symidx: temp_357_ptr2globl_197, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s4:Freed { symidx: temp_359_array_ptr_197, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s6:Freed { symidx: temp_352_ptr2globl_194, tracked: true } |     s7:Freed { symidx: temp_353_array_ptr_194, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } |     s9:Freed { symidx: temp_355_cmp_194, tracked: true } | 
              #                          label branch_false_198: 
.branch_false_198:
              #                    regtab     a0:Freed { symidx: temp_360_array_ele_197, tracked: true } |     a2:Freed { symidx: temp_361_cmp_197, tracked: true } |     a3:Freed { symidx: temp_339_ptr2globl_188, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Freed { symidx: temp_351_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s11:Freed { symidx: temp_357_ptr2globl_197, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s4:Freed { symidx: temp_359_array_ptr_197, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s6:Freed { symidx: temp_352_ptr2globl_194, tracked: true } |     s7:Freed { symidx: temp_353_array_ptr_194, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } |     s9:Freed { symidx: temp_355_cmp_194, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                          new_var temp_363_ptr2globl_200:i32 
              #                          temp_363_ptr2globl_200 = load *i_0:ptr->i32 
              #                    occupy a1 with *i_0
              #                       load label i as ptr to reg
    la      a1, i
              #                    occupy reg a1 with *i_0
              #                    store to temp_360_array_ele_197 in mem offset_illegal
              #                    occupy a0 with 280212_0
    li      a0, 280212
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_360_array_ele_197
              #                    occupy a0 with temp_363_ptr2globl_200
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_364_ptr2globl_200:Array:i32:[Some(10000_0)] 
              #                          temp_364_ptr2globl_200 = load *get2_0:ptr->i32 
              #                    occupy a1 with *get2_0
              #                       load label get2 as ptr to reg
    la      a1, get2
              #                    occupy reg a1 with *get2_0
              #                    store to temp_363_ptr2globl_200 in mem offset_illegal
              #                    occupy a0 with 280200_0
    li      a0, 280200
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_363_ptr2globl_200
              #                    occupy a0 with temp_364_ptr2globl_200
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_365_array_ptr_200:ptr->i32 
              #                          temp_365_array_ptr_200 = getelementptr temp_364_ptr2globl_200:Array:i32:[Some(10000_0)] [Some(temp_363_ptr2globl_200)] 
              #                    occupy a1 with temp_365_array_ptr_200
    li      a1, 0
              #                    store to temp_364_ptr2globl_200 in mem offset_illegal
              #                    occupy a0 with 240200_0
    li      a0, 240200
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_364_ptr2globl_200
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_361_cmp_197 in mem offset_illegal
              #                    occupy a2 with 280211_0
    li      a2, 280211
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_361_cmp_197
              #                    occupy a2 with temp_363_ptr2globl_200
              #                    load from temp_363_ptr2globl_200 in mem

              #                    occupy a2 with temp_363_ptr2globl_200
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_339_ptr2globl_188 in mem offset_illegal
              #                    occupy a3 with 440296_0
    li      a3, 440296
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_339_ptr2globl_188
              #                    occupy a3 with _anonymous_of_temp_364_ptr2globl_200_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
              #                    occupy a0 with 240200_0
    li      a0, 240200
    li      a0, 240200
    add     a1,a0,a1
              #                    free a0
              #                    free a1
              #                          new_var temp_366_array_ele_200:i32 
              #                          temp_366_array_ele_200 = load temp_365_array_ptr_200:ptr->i32 
              #                    occupy a1 with temp_365_array_ptr_200
              #                    occupy a0 with temp_366_array_ele_200
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_367_cmp_200:i1 
              #                          temp_367_cmp_200 = icmp i32 Eq temp_366_array_ele_200, 37_0 
              #                    occupy a0 with temp_366_array_ele_200
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    store to temp_365_array_ptr_200 in mem offset_illegal
              #                    occupy a1 with 240192_0
    li      a1, 240192
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_365_array_ptr_200
              #                    occupy a1 with temp_367_cmp_200
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          br i1 temp_367_cmp_200, label branch_true_201, label branch_false_201 
              #                    occupy a1 with temp_367_cmp_200
              #                    free a1
              #                    occupy a1 with temp_367_cmp_200
    bnez    a1, .branch_true_201
              #                    free a1
    j       .branch_false_201
              #                    regtab     a0:Freed { symidx: temp_366_array_ele_200, tracked: true } |     a1:Freed { symidx: temp_367_cmp_200, tracked: true } |     a2:Freed { symidx: temp_363_ptr2globl_200, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Freed { symidx: temp_351_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s11:Freed { symidx: temp_357_ptr2globl_197, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s4:Freed { symidx: temp_359_array_ptr_197, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s6:Freed { symidx: temp_352_ptr2globl_194, tracked: true } |     s7:Freed { symidx: temp_353_array_ptr_194, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } |     s9:Freed { symidx: temp_355_cmp_194, tracked: true } | 
              #                          label branch_true_201: 
.branch_true_201:
              #                          new_var temp_368_arithop_200:i32 
              #                          temp_368_arithop_200 = Mod i32 b_184, a_184 
              #                    occupy a3 with b_184
              #                    load from b_184 in mem

              #                    occupy a3 with b_184
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to temp_366_array_ele_200 in mem offset_illegal
              #                    occupy a0 with 240188_0
    li      a0, 240188
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_366_array_ele_200
              #                    occupy a0 with a_184
              #                    load from a_184 in mem

              #                    occupy a0 with a_184
    add     a0,sp,a0
    lw      a0,0(a0)
              #                    free a0
              #                    store to temp_367_cmp_200 in mem offset_illegal
              #                    occupy a1 with 240187_0
    li      a1, 240187
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_367_cmp_200
              #                    occupy a1 with temp_368_arithop_200
              #                    load from temp_368_arithop_200 in mem

              #                    occupy a1 with temp_368_arithop_200
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
    rem     a1,a3,a0
              #                    free a3
              #                    free a0
              #                    free a1
              #                          c_184 = i32 temp_368_arithop_200 
              #                    occupy a1 with temp_368_arithop_200
              #                    store to a_184 in mem offset_illegal
              #                    occupy a0 with 440312_0
    li      a0, 440312
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with a_184
              #                    occupy a0 with c_184
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          jump label: branch_false_201 
              #                    store to temp_368_arithop_200 in mem offset_illegal
              #                    occupy a1 with 240180_0
    li      a1, 240180
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_368_arithop_200
              #                    store to c_184 in mem offset_illegal
              #                    occupy a0 with 440300_0
    li      a0, 440300
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with c_184
              #                    store to b_184 in mem offset_illegal
              #                    occupy a0 with 440304_0
    li      a0, 440304
    add     a0,sp,a0
    sw      a3,0(a0)
              #                    free a0
              #                    release a3 with b_184
              #                    occupy a1 with _anonymous_of_temp_367_cmp_200_0
              #                    load from temp_367_cmp_200 in mem
              #                    occupy a3 with temp_367_cmp_200
    li      a3, 240187
    add     a3,sp,a3
    lb      a1,0(a3)
              #                    free a3
              #                    occupy a0 with _anonymous_of_temp_366_array_ele_200_0
              #                    load from temp_366_array_ele_200 in mem

              #                    store to temp_363_ptr2globl_200 in mem offset_illegal
              #                    occupy a2 with 280200_0
    li      a2, 280200
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_363_ptr2globl_200
              #                    occupy a2 with temp_366_array_ele_200
    li      a2, 240188
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    store to temp_367_cmp_200 in mem offset_illegal
              #                    occupy a3 with 240187_0
    li      a3, 240187
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_367_cmp_200
              #                    store to temp_366_array_ele_200 in mem offset_illegal
              #                    occupy a2 with 240188_0
    li      a2, 240188
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_366_array_ele_200
              #                    occupy a2 with _anonymous_of_temp_363_ptr2globl_200_0
              #                    load from temp_363_ptr2globl_200 in mem

              #                    occupy a3 with temp_363_ptr2globl_200
    li      a3, 280200
    add     a3,sp,a3
    lw      a2,0(a3)
              #                    free a3
    j       .branch_false_201
              #                    regtab     a0:Freed { symidx: temp_366_array_ele_200, tracked: true } |     a1:Freed { symidx: temp_367_cmp_200, tracked: true } |     a2:Freed { symidx: temp_363_ptr2globl_200, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Freed { symidx: temp_351_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s11:Freed { symidx: temp_357_ptr2globl_197, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s4:Freed { symidx: temp_359_array_ptr_197, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s6:Freed { symidx: temp_352_ptr2globl_194, tracked: true } |     s7:Freed { symidx: temp_353_array_ptr_194, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } |     s9:Freed { symidx: temp_355_cmp_194, tracked: true } | 
              #                          label branch_false_201: 
.branch_false_201:
              #                    regtab     a0:Freed { symidx: temp_366_array_ele_200, tracked: true } |     a1:Freed { symidx: temp_367_cmp_200, tracked: true } |     a2:Freed { symidx: temp_363_ptr2globl_200, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Freed { symidx: temp_351_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s11:Freed { symidx: temp_357_ptr2globl_197, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s4:Freed { symidx: temp_359_array_ptr_197, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s6:Freed { symidx: temp_352_ptr2globl_194, tracked: true } |     s7:Freed { symidx: temp_353_array_ptr_194, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } |     s9:Freed { symidx: temp_355_cmp_194, tracked: true } | 
              #                          label L16_0: 
.L16_0:
              #                          new_var temp_369_ptr2globl_203:i32 
              #                          temp_369_ptr2globl_203 = load *i_0:ptr->i32 
              #                    occupy a3 with *i_0
              #                       load label i as ptr to reg
    la      a3, i
              #                    occupy reg a3 with *i_0
              #                    store to temp_366_array_ele_200 in mem offset_illegal
              #                    occupy a0 with 240188_0
    li      a0, 240188
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_366_array_ele_200
              #                    occupy a0 with temp_369_ptr2globl_203
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_370_ptr2globl_203:Array:i32:[Some(10000_0)] 
              #                          temp_370_ptr2globl_203 = load *get2_0:ptr->i32 
              #                    occupy a3 with *get2_0
              #                       load label get2 as ptr to reg
    la      a3, get2
              #                    occupy reg a3 with *get2_0
              #                    store to temp_369_ptr2globl_203 in mem offset_illegal
              #                    occupy a0 with 240176_0
    li      a0, 240176
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_369_ptr2globl_203
              #                    occupy a0 with temp_370_ptr2globl_203
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_371_array_ptr_203:ptr->i32 
              #                          temp_371_array_ptr_203 = getelementptr temp_370_ptr2globl_203:Array:i32:[Some(10000_0)] [Some(temp_369_ptr2globl_203)] 
              #                    occupy a3 with temp_371_array_ptr_203
    li      a3, 0
              #                    store to temp_370_ptr2globl_203 in mem offset_illegal
              #                    occupy a0 with 200176_0
    li      a0, 200176
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_370_ptr2globl_203
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_367_cmp_200 in mem offset_illegal
              #                    occupy a1 with 240187_0
    li      a1, 240187
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_367_cmp_200
              #                    occupy a1 with temp_369_ptr2globl_203
              #                    load from temp_369_ptr2globl_203 in mem

              #                    occupy a1 with temp_369_ptr2globl_203
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_363_ptr2globl_200 in mem offset_illegal
              #                    occupy a2 with 280200_0
    li      a2, 280200
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_363_ptr2globl_200
              #                    occupy a2 with _anonymous_of_temp_370_ptr2globl_203_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a0 with 200176_0
    li      a0, 200176
    li      a0, 200176
    add     a3,a0,a3
              #                    free a0
              #                    free a3
              #                          new_var temp_372_array_ele_203:i32 
              #                          temp_372_array_ele_203 = load temp_371_array_ptr_203:ptr->i32 
              #                    occupy a3 with temp_371_array_ptr_203
              #                    occupy a0 with temp_372_array_ele_203
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_373_cmp_203:i1 
              #                          temp_373_cmp_203 = icmp i32 Eq temp_372_array_ele_203, 94_0 
              #                    occupy a0 with temp_372_array_ele_203
              #                    occupy a2 with 94_0
    li      a2, 94
              #                    store to temp_369_ptr2globl_203 in mem offset_illegal
              #                    occupy a1 with 240176_0
    li      a1, 240176
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_369_ptr2globl_203
              #                    occupy a1 with temp_373_cmp_203
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_373_cmp_203, label branch_true_204, label branch_false_204 
              #                    occupy a1 with temp_373_cmp_203
              #                    free a1
              #                    occupy a1 with temp_373_cmp_203
    bnez    a1, .branch_true_204
              #                    free a1
    j       .branch_false_204
              #                    regtab     a0:Freed { symidx: temp_372_array_ele_203, tracked: true } |     a1:Freed { symidx: temp_373_cmp_203, tracked: true } |     a3:Freed { symidx: temp_371_array_ptr_203, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Freed { symidx: temp_351_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s11:Freed { symidx: temp_357_ptr2globl_197, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s4:Freed { symidx: temp_359_array_ptr_197, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s6:Freed { symidx: temp_352_ptr2globl_194, tracked: true } |     s7:Freed { symidx: temp_353_array_ptr_194, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } |     s9:Freed { symidx: temp_355_cmp_194, tracked: true } | 
              #                          label branch_true_204: 
.branch_true_204:
              #                          new_var temp_374_ret_of_power_203:i32 
              #                          temp_374_ret_of_power_203 =  Call i32 power_0(b_184, a_184) 
              #                    saved register dumping to mem
              #                    store to temp_346_ptr2globl_191 in mem offset_illegal
              #                    occupy a2 with 360272_0
    li      a2, 360272
    add     a2,sp,a2
    sw      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_346_ptr2globl_191
              #                    store to temp_347_array_ptr_191 in mem offset_illegal
              #                    occupy s1 with 360264_0
    li      s1, 360264
    add     s1,sp,s1
    sd      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_347_array_ptr_191
              #                    store to temp_342_array_ele_188 in mem offset_illegal
              #                    occupy s2 with 400284_0
    li      s2, 400284
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_342_array_ele_188
              #                    store to temp_359_array_ptr_197 in mem offset_illegal
              #                    occupy s3 with 280216_0
    li      s3, 280216
    add     s3,sp,s3
    sd      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_359_array_ptr_197
              #                    store to temp_343_cmp_188 in mem offset_illegal
              #                    occupy s4 with 400283_0
    li      s4, 400283
    add     s4,sp,s4
    sb      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_343_cmp_188
              #                    store to temp_352_ptr2globl_194 in mem offset_illegal
              #                    occupy s5 with 320248_0
    li      s5, 320248
    add     s5,sp,s5
    sw      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_352_ptr2globl_194
              #                    store to temp_353_array_ptr_194 in mem offset_illegal
              #                    occupy s6 with 320240_0
    li      s6, 320240
    add     s6,sp,s6
    sd      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_353_array_ptr_194
              #                    store to temp_348_array_ele_191 in mem offset_illegal
              #                    occupy s7 with 360260_0
    li      s7, 360260
    add     s7,sp,s7
    sw      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_348_array_ele_191
              #                    store to temp_355_cmp_194 in mem offset_illegal
              #                    occupy s8 with 320235_0
    li      s8, 320235
    add     s8,sp,s8
    sb      s9,0(s8)
              #                    free s8
              #                    release s9 with temp_355_cmp_194
              #                    store to temp_349_cmp_191 in mem offset_illegal
              #                    occupy s9 with 360259_0
    li      s9, 360259
    add     s9,sp,s9
    sb      s10,0(s9)
              #                    free s9
              #                    release s10 with temp_349_cmp_191
              #                    store to temp_357_ptr2globl_197 in mem offset_illegal
              #                    occupy s10 with 320224_0
    li      s10, 320224
    add     s10,sp,s10
    sw      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_357_ptr2globl_197
              #                    store to temp_372_array_ele_203 in mem offset_illegal
              #                    occupy a0 with 200164_0
    li      a0, 200164
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_372_array_ele_203
              #                    store to temp_373_cmp_203 in mem offset_illegal
              #                    occupy a0 with 200163_0
    li      a0, 200163
    add     a0,sp,a0
    sb      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_373_cmp_203
              #                    store to temp_371_array_ptr_203 in mem offset_illegal
              #                    occupy a1 with 200168_0
    li      a1, 200168
    add     a1,sp,a1
    sd      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_371_array_ptr_203
              #                    store to temp_345_ptr2globl_191 in mem offset_illegal
              #                    occupy a2 with 400272_0
    li      a2, 400272
    add     a2,sp,a2
    sw      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_345_ptr2globl_191
              #                    store to temp_340_ptr2globl_188 in mem offset_illegal
              #                    occupy a3 with 400296_0
    li      a3, 400296
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_340_ptr2globl_188
              #                    store to temp_341_array_ptr_188 in mem offset_illegal
              #                    occupy a4 with 400288_0
    li      a4, 400288
    add     a4,sp,a4
    sd      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_341_array_ptr_188
              #                    store to temp_351_ptr2globl_194 in mem offset_illegal
              #                    occupy a5 with 360248_0
    li      a5, 360248
    add     a5,sp,a5
    sw      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_351_ptr2globl_194
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_b_184_0
              #                    load from b_184 in mem

              #                    occupy a6 with b_184
    li      a6, 440304
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy a1 with _anonymous_of_a_184_0
              #                    load from a_184 in mem

              #                    occupy a7 with a_184
    li      a7, 440312
    add     a7,sp,a7
    lw      a1,0(a7)
              #                    free a7
              #                    arg load ended


    call    power
              #                    store to temp_374_ret_of_power_203 in mem offset_illegal
              #                    occupy a0 with 200156_0
    li      a0, 200156
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          c_184 = i32 temp_374_ret_of_power_203 
              #                    occupy a0 with temp_374_ret_of_power_203
              #                    occupy a1 with c_184
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: branch_false_204 
              #                    store to c_184 in mem offset_illegal
              #                    occupy a1 with 440300_0
    li      a1, 440300
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with c_184
              #                    store to temp_374_ret_of_power_203 in mem offset_illegal
              #                    occupy a0 with 200156_0
    li      a0, 200156
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_374_ret_of_power_203
              #                    store to a_184 in mem offset_illegal
              #                    occupy a0 with 440312_0
    li      a0, 440312
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with a_184
              #                    store to b_184 in mem offset_illegal
              #                    occupy a1 with 440304_0
    li      a1, 440304
    add     a1,sp,a1
    sw      a6,0(a1)
              #                    free a1
              #                    release a6 with b_184
              #                    occupy s6 with _anonymous_of_temp_352_ptr2globl_194_0
              #                    load from temp_352_ptr2globl_194 in mem
              #                    occupy a2 with temp_352_ptr2globl_194
    li      a2, 320248
    add     a2,sp,a2
    lw      s6,0(a2)
              #                    free a2
              #                    occupy s2 with _anonymous_of_temp_347_array_ptr_191_0
              #                    load from temp_347_array_ptr_191 in mem
              #                    occupy a3 with temp_347_array_ptr_191
    li      a3, 360264
    add     a3,sp,a3
    ld      s2,0(a3)
              #                    free a3
              #                    occupy a1 with _anonymous_of_temp_373_cmp_203_0
              #                    load from temp_373_cmp_203 in mem
              #                    occupy a4 with temp_373_cmp_203
    li      a4, 200163
    add     a4,sp,a4
    lb      a1,0(a4)
              #                    free a4
              #                    occupy s10 with _anonymous_of_temp_349_cmp_191_0
              #                    load from temp_349_cmp_191 in mem
              #                    occupy a5 with temp_349_cmp_191
    li      a5, 360259
    add     a5,sp,a5
    lb      s10,0(a5)
              #                    free a5
              #                    occupy s3 with _anonymous_of_temp_342_array_ele_188_0
              #                    load from temp_342_array_ele_188 in mem

              #                    occupy a6 with temp_342_array_ele_188
    li      a6, 400284
    add     a6,sp,a6
    lw      s3,0(a6)
              #                    free a6
              #                    occupy s9 with _anonymous_of_temp_355_cmp_194_0
              #                    load from temp_355_cmp_194 in mem
              #                    occupy a7 with temp_355_cmp_194
    li      a7, 320235
    add     a7,sp,a7
    lb      s9,0(a7)
              #                    free a7
              #                    occupy a0 with _anonymous_of_temp_372_array_ele_203_0
              #                    load from temp_372_array_ele_203 in mem

              #                    occupy s1 with temp_372_array_ele_203
    li      s1, 200164
    add     s1,sp,s1
    lw      a0,0(s1)
              #                    free s1
              #                    store to temp_355_cmp_194 in mem offset_illegal
              #                    occupy a7 with 320235_0
    li      a7, 320235
    add     a7,sp,a7
    sb      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_355_cmp_194
              #                    occupy a7 with _anonymous_of_temp_351_ptr2globl_194_0
              #                    load from temp_351_ptr2globl_194 in mem

              #                    occupy s4 with temp_351_ptr2globl_194
    li      s4, 360248
    add     s4,sp,s4
    lw      a7,0(s4)
              #                    free s4
              #                    occupy s11 with _anonymous_of_temp_357_ptr2globl_197_0
              #                    load from temp_357_ptr2globl_197 in mem

              #                    occupy s5 with temp_357_ptr2globl_197
    li      s5, 320224
    add     s5,sp,s5
    lw      s11,0(s5)
              #                    free s5
              #                    store to temp_373_cmp_203 in mem offset_illegal
              #                    occupy a4 with 200163_0
    li      a4, 200163
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_373_cmp_203
              #                    occupy a4 with _anonymous_of_temp_345_ptr2globl_191_0
              #                    load from temp_345_ptr2globl_191 in mem

              #                    occupy s7 with temp_345_ptr2globl_191
    li      s7, 400272
    add     s7,sp,s7
    lw      a4,0(s7)
              #                    free s7
              #                    store to temp_351_ptr2globl_194 in mem offset_illegal
              #                    occupy s4 with 360248_0
    li      s4, 360248
    add     s4,sp,s4
    sw      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_351_ptr2globl_194
              #                    occupy s4 with _anonymous_of_temp_359_array_ptr_197_0
              #                    load from temp_359_array_ptr_197 in mem
              #                    occupy s8 with temp_359_array_ptr_197
    li      s8, 280216
    add     s8,sp,s8
    ld      s4,0(s8)
              #                    free s8
              #                    store to temp_342_array_ele_188 in mem offset_illegal
              #                    occupy a6 with 400284_0
    li      a6, 400284
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_342_array_ele_188
              #                    occupy a6 with _anonymous_of_temp_341_array_ptr_188_0
              #                    load from temp_341_array_ptr_188 in mem
              #                    store to temp_352_ptr2globl_194 in mem offset_illegal
              #                    occupy a2 with 320248_0
    li      a2, 320248
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_352_ptr2globl_194
              #                    occupy a2 with temp_341_array_ptr_188
    li      a2, 400288
    add     a2,sp,a2
    ld      a6,0(a2)
              #                    free a2
              #                    store to temp_349_cmp_191 in mem offset_illegal
              #                    occupy a5 with 360259_0
    li      a5, 360259
    add     a5,sp,a5
    sb      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_349_cmp_191
              #                    occupy a5 with _anonymous_of_temp_340_ptr2globl_188_0
              #                    load from temp_340_ptr2globl_188 in mem
              #                    store to temp_341_array_ptr_188 in mem offset_illegal
              #                    occupy a2 with 400288_0
    li      a2, 400288
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_341_array_ptr_188
              #                    occupy a2 with temp_340_ptr2globl_188
    li      a2, 400296
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_357_ptr2globl_197 in mem offset_illegal
              #                    occupy s5 with 320224_0
    li      s5, 320224
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_357_ptr2globl_197
              #                    occupy s5 with _anonymous_of_temp_343_cmp_188_0
              #                    load from temp_343_cmp_188 in mem
              #                    store to temp_340_ptr2globl_188 in mem offset_illegal
              #                    occupy a2 with 400296_0
    li      a2, 400296
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_340_ptr2globl_188
              #                    occupy a2 with temp_343_cmp_188
    li      a2, 400283
    add     a2,sp,a2
    lb      s5,0(a2)
              #                    free a2
              #                    store to temp_359_array_ptr_197 in mem offset_illegal
              #                    occupy s8 with 280216_0
    li      s8, 280216
    add     s8,sp,s8
    sd      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_359_array_ptr_197
              #                    occupy s8 with _anonymous_of_temp_348_array_ele_191_0
              #                    load from temp_348_array_ele_191 in mem

              #                    store to temp_343_cmp_188 in mem offset_illegal
              #                    occupy a2 with 400283_0
    li      a2, 400283
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_343_cmp_188
              #                    occupy a2 with temp_348_array_ele_191
    li      a2, 360260
    add     a2,sp,a2
    lw      s8,0(a2)
              #                    free a2
              #                    store to temp_347_array_ptr_191 in mem offset_illegal
              #                    occupy a3 with 360264_0
    li      a3, 360264
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_347_array_ptr_191
              #                    occupy a3 with _anonymous_of_temp_371_array_ptr_203_0
              #                    load from temp_371_array_ptr_203 in mem
              #                    store to temp_348_array_ele_191 in mem offset_illegal
              #                    occupy a2 with 360260_0
    li      a2, 360260
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_348_array_ele_191
              #                    occupy a2 with temp_371_array_ptr_203
    li      a2, 200168
    add     a2,sp,a2
    ld      a3,0(a2)
              #                    free a2
              #                    store to temp_371_array_ptr_203 in mem offset_illegal
              #                    occupy a2 with 200168_0
    li      a2, 200168
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_371_array_ptr_203
              #                    store to temp_372_array_ele_203 in mem offset_illegal
              #                    occupy a2 with 200164_0
    li      a2, 200164
    add     a2,sp,a2
    sw      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_372_array_ele_203
              #                    occupy s1 with _anonymous_of_temp_346_ptr2globl_191_0
              #                    load from temp_346_ptr2globl_191 in mem
              #                    occupy a2 with temp_346_ptr2globl_191
    li      a2, 360272
    add     a2,sp,a2
    lw      s1,0(a2)
              #                    free a2
              #                    store to temp_345_ptr2globl_191 in mem offset_illegal
              #                    occupy s7 with 400272_0
    li      s7, 400272
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_345_ptr2globl_191
              #                    occupy s7 with _anonymous_of_temp_353_array_ptr_194_0
              #                    load from temp_353_array_ptr_194 in mem
              #                    store to temp_346_ptr2globl_191 in mem offset_illegal
              #                    occupy a2 with 360272_0
    li      a2, 360272
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_346_ptr2globl_191
              #                    occupy a2 with temp_353_array_ptr_194
    li      a2, 320240
    add     a2,sp,a2
    ld      s7,0(a2)
              #                    free a2
    j       .branch_false_204
              #                    regtab     a0:Freed { symidx: temp_372_array_ele_203, tracked: true } |     a1:Freed { symidx: temp_373_cmp_203, tracked: true } |     a3:Freed { symidx: temp_371_array_ptr_203, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Freed { symidx: temp_351_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s11:Freed { symidx: temp_357_ptr2globl_197, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s4:Freed { symidx: temp_359_array_ptr_197, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s6:Freed { symidx: temp_352_ptr2globl_194, tracked: true } |     s7:Freed { symidx: temp_353_array_ptr_194, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } |     s9:Freed { symidx: temp_355_cmp_194, tracked: true } | 
              #                          label branch_false_204: 
.branch_false_204:
              #                    regtab     a0:Freed { symidx: temp_372_array_ele_203, tracked: true } |     a1:Freed { symidx: temp_373_cmp_203, tracked: true } |     a3:Freed { symidx: temp_371_array_ptr_203, tracked: true } |     a4:Freed { symidx: temp_345_ptr2globl_191, tracked: true } |     a5:Freed { symidx: temp_340_ptr2globl_188, tracked: true } |     a6:Freed { symidx: temp_341_array_ptr_188, tracked: true } |     a7:Freed { symidx: temp_351_ptr2globl_194, tracked: true } |     s10:Freed { symidx: temp_349_cmp_191, tracked: true } |     s11:Freed { symidx: temp_357_ptr2globl_197, tracked: true } |     s1:Freed { symidx: temp_346_ptr2globl_191, tracked: true } |     s2:Freed { symidx: temp_347_array_ptr_191, tracked: true } |     s3:Freed { symidx: temp_342_array_ele_188, tracked: true } |     s4:Freed { symidx: temp_359_array_ptr_197, tracked: true } |     s5:Freed { symidx: temp_343_cmp_188, tracked: true } |     s6:Freed { symidx: temp_352_ptr2globl_194, tracked: true } |     s7:Freed { symidx: temp_353_array_ptr_194, tracked: true } |     s8:Freed { symidx: temp_348_array_ele_191, tracked: true } |     s9:Freed { symidx: temp_355_cmp_194, tracked: true } | 
              #                          label L17_0: 
.L17_0:
              #                           Call void intpush_0(c_184) 
              #                    saved register dumping to mem
              #                    store to temp_346_ptr2globl_191 in mem offset_illegal
              #                    occupy a2 with 360272_0
    li      a2, 360272
    add     a2,sp,a2
    sw      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_346_ptr2globl_191
              #                    store to temp_347_array_ptr_191 in mem offset_illegal
              #                    occupy s1 with 360264_0
    li      s1, 360264
    add     s1,sp,s1
    sd      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_347_array_ptr_191
              #                    store to temp_342_array_ele_188 in mem offset_illegal
              #                    occupy s2 with 400284_0
    li      s2, 400284
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_342_array_ele_188
              #                    store to temp_359_array_ptr_197 in mem offset_illegal
              #                    occupy s3 with 280216_0
    li      s3, 280216
    add     s3,sp,s3
    sd      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_359_array_ptr_197
              #                    store to temp_343_cmp_188 in mem offset_illegal
              #                    occupy s4 with 400283_0
    li      s4, 400283
    add     s4,sp,s4
    sb      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_343_cmp_188
              #                    store to temp_352_ptr2globl_194 in mem offset_illegal
              #                    occupy s5 with 320248_0
    li      s5, 320248
    add     s5,sp,s5
    sw      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_352_ptr2globl_194
              #                    store to temp_353_array_ptr_194 in mem offset_illegal
              #                    occupy s6 with 320240_0
    li      s6, 320240
    add     s6,sp,s6
    sd      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_353_array_ptr_194
              #                    store to temp_348_array_ele_191 in mem offset_illegal
              #                    occupy s7 with 360260_0
    li      s7, 360260
    add     s7,sp,s7
    sw      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_348_array_ele_191
              #                    store to temp_355_cmp_194 in mem offset_illegal
              #                    occupy s8 with 320235_0
    li      s8, 320235
    add     s8,sp,s8
    sb      s9,0(s8)
              #                    free s8
              #                    release s9 with temp_355_cmp_194
              #                    store to temp_349_cmp_191 in mem offset_illegal
              #                    occupy s9 with 360259_0
    li      s9, 360259
    add     s9,sp,s9
    sb      s10,0(s9)
              #                    free s9
              #                    release s10 with temp_349_cmp_191
              #                    store to temp_357_ptr2globl_197 in mem offset_illegal
              #                    occupy s10 with 320224_0
    li      s10, 320224
    add     s10,sp,s10
    sw      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_357_ptr2globl_197
              #                    store to temp_372_array_ele_203 in mem offset_illegal
              #                    occupy a0 with 200164_0
    li      a0, 200164
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_372_array_ele_203
              #                    store to temp_373_cmp_203 in mem offset_illegal
              #                    occupy a0 with 200163_0
    li      a0, 200163
    add     a0,sp,a0
    sb      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_373_cmp_203
              #                    store to temp_371_array_ptr_203 in mem offset_illegal
              #                    occupy a1 with 200168_0
    li      a1, 200168
    add     a1,sp,a1
    sd      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_371_array_ptr_203
              #                    store to temp_345_ptr2globl_191 in mem offset_illegal
              #                    occupy a2 with 400272_0
    li      a2, 400272
    add     a2,sp,a2
    sw      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_345_ptr2globl_191
              #                    store to temp_340_ptr2globl_188 in mem offset_illegal
              #                    occupy a3 with 400296_0
    li      a3, 400296
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_340_ptr2globl_188
              #                    store to temp_341_array_ptr_188 in mem offset_illegal
              #                    occupy a4 with 400288_0
    li      a4, 400288
    add     a4,sp,a4
    sd      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_341_array_ptr_188
              #                    store to temp_351_ptr2globl_194 in mem offset_illegal
              #                    occupy a5 with 360248_0
    li      a5, 360248
    add     a5,sp,a5
    sw      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_351_ptr2globl_194
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_c_184_0
              #                    load from c_184 in mem

              #                    occupy a6 with c_184
    li      a6, 440300
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    arg load ended


    call    intpush
              #                          jump label: L18_0 
    j       .L18_0
              #                    regtab     a0:Freed { symidx: temp_336_logic_182, tracked: true } |     a1:Freed { symidx: temp_334_array_ele_182, tracked: true } |     a2:Freed { symidx: temp_331_ptr2globl_182, tracked: true } |     a3:Freed { symidx: temp_330_logic_182, tracked: true } |     a4:Freed { symidx: temp_62_ptr2globl_91, tracked: true } |     a5:Freed { symidx: temp_63_cmp_91, tracked: true } |     a6:Freed { symidx: temp_285_ptr2globl_170, tracked: true } |     a7:Freed { symidx: temp_295_ptr2globl_87, tracked: true } |     s10:Freed { symidx: temp_300_array_ele_179, tracked: true } |     s11:Freed { symidx: temp_304_array_ptr_182, tracked: true } |     s1:Freed { symidx: temp_286_cmp_170, tracked: true } |     s2:Freed { symidx: temp_296_index_ptr_87, tracked: true } |     s3:Freed { symidx: temp_297_ptr2globl_179, tracked: true } |     s4:Freed { symidx: temp_305_array_ele_182, tracked: true } |     s5:Freed { symidx: temp_298_ptr2globl_179, tracked: true } |     s7:Freed { symidx: temp_302_ptr2globl_182, tracked: true } |     s8:Freed { symidx: temp_309_array_ptr_182, tracked: true } |     s9:Freed { symidx: temp_303_ptr2globl_182, tracked: true } | 
              #                          label branch_false_183: 
.branch_false_183:
              #                          new_var temp_377_ptr2globl_208:i32 
              #                          temp_377_ptr2globl_208 = load *i_0:ptr->i32 
              #                    occupy s6 with *i_0
              #                       load label i as ptr to reg
    la      s6, i
              #                    occupy reg s6 with *i_0
              #                    store to temp_336_logic_182 in mem offset_illegal
              #                    occupy a0 with 440322_0
    li      a0, 440322
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_336_logic_182
              #                    occupy a0 with temp_377_ptr2globl_208
    lw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          new_var temp_378_ptr2globl_208:Array:i32:[Some(10000_0)] 
              #                          temp_378_ptr2globl_208 = load *get2_0:ptr->i32 
              #                    occupy s6 with *get2_0
              #                       load label get2 as ptr to reg
    la      s6, get2
              #                    occupy reg s6 with *get2_0
              #                    store to temp_377_ptr2globl_208 in mem offset_illegal
              #                    occupy a0 with 200144_0
    li      a0, 200144
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_377_ptr2globl_208
              #                    occupy a0 with temp_378_ptr2globl_208
    lw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          new_var temp_379_array_ptr_208:ptr->i32 
              #                          temp_379_array_ptr_208 = getelementptr temp_378_ptr2globl_208:Array:i32:[Some(10000_0)] [Some(temp_377_ptr2globl_208)] 
              #                    occupy s6 with temp_379_array_ptr_208
    li      s6, 0
              #                    store to temp_378_ptr2globl_208 in mem offset_illegal
              #                    occupy a0 with 160144_0
    li      a0, 160144
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_378_ptr2globl_208
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_334_array_ele_182 in mem offset_illegal
              #                    occupy a1 with 440324_0
    li      a1, 440324
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_334_array_ele_182
              #                    occupy a1 with temp_377_ptr2globl_208
              #                    load from temp_377_ptr2globl_208 in mem

              #                    occupy a1 with temp_377_ptr2globl_208
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_331_ptr2globl_182 in mem offset_illegal
              #                    occupy a2 with 480340_0
    li      a2, 480340
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_331_ptr2globl_182
              #                    occupy a2 with _anonymous_of_temp_378_ptr2globl_208_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s6,s6,a2
              #                    free a2
    slli s6,s6,2
    add     s6,s6,sp
              #                    occupy a0 with 160144_0
    li      a0, 160144
    li      a0, 160144
    add     s6,a0,s6
              #                    free a0
              #                    free s6
              #                          new_var temp_380_array_ele_208:i32 
              #                          temp_380_array_ele_208 = load temp_379_array_ptr_208:ptr->i32 
              #                    occupy s6 with temp_379_array_ptr_208
              #                    occupy a0 with temp_380_array_ele_208
    lw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          new_var temp_381_cmp_208:i1 
              #                          temp_381_cmp_208 = icmp i32 Ne temp_380_array_ele_208, 32_0 
              #                    occupy a0 with temp_380_array_ele_208
              #                    occupy a2 with 32_0
    li      a2, 32
              #                    store to temp_377_ptr2globl_208 in mem offset_illegal
              #                    occupy a1 with 200144_0
    li      a1, 200144
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_377_ptr2globl_208
              #                    occupy a1 with temp_381_cmp_208
    xor     a1,a0,a2
    snez    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_381_cmp_208, label branch_true_209, label branch_false_209 
              #                    occupy a1 with temp_381_cmp_208
              #                    free a1
              #                    occupy a1 with temp_381_cmp_208
    bnez    a1, .branch_true_209
              #                    free a1
    j       .branch_false_209
              #                    regtab     a0:Freed { symidx: temp_380_array_ele_208, tracked: true } |     a1:Freed { symidx: temp_381_cmp_208, tracked: true } |     a3:Freed { symidx: temp_330_logic_182, tracked: true } |     a4:Freed { symidx: temp_62_ptr2globl_91, tracked: true } |     a5:Freed { symidx: temp_63_cmp_91, tracked: true } |     a6:Freed { symidx: temp_285_ptr2globl_170, tracked: true } |     a7:Freed { symidx: temp_295_ptr2globl_87, tracked: true } |     s10:Freed { symidx: temp_300_array_ele_179, tracked: true } |     s11:Freed { symidx: temp_304_array_ptr_182, tracked: true } |     s1:Freed { symidx: temp_286_cmp_170, tracked: true } |     s2:Freed { symidx: temp_296_index_ptr_87, tracked: true } |     s3:Freed { symidx: temp_297_ptr2globl_179, tracked: true } |     s4:Freed { symidx: temp_305_array_ele_182, tracked: true } |     s5:Freed { symidx: temp_298_ptr2globl_179, tracked: true } |     s6:Freed { symidx: temp_379_array_ptr_208, tracked: true } |     s7:Freed { symidx: temp_302_ptr2globl_182, tracked: true } |     s8:Freed { symidx: temp_309_array_ptr_182, tracked: true } |     s9:Freed { symidx: temp_303_ptr2globl_182, tracked: true } | 
              #                          label branch_true_209: 
.branch_true_209:
              #                          new_var temp_382_ptr2globl_210:i32 
              #                          temp_382_ptr2globl_210 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    store to temp_380_array_ele_208 in mem offset_illegal
              #                    occupy a0 with 160132_0
    li      a0, 160132
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_380_array_ele_208
              #                    occupy a0 with temp_382_ptr2globl_210
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_383_ptr2globl_210:Array:i32:[Some(10000_0)] 
              #                          temp_383_ptr2globl_210 = load *get2_0:ptr->i32 
              #                    occupy a2 with *get2_0
              #                       load label get2 as ptr to reg
    la      a2, get2
              #                    occupy reg a2 with *get2_0
              #                    store to temp_382_ptr2globl_210 in mem offset_illegal
              #                    occupy a0 with 160124_0
    li      a0, 160124
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_382_ptr2globl_210
              #                    occupy a0 with temp_383_ptr2globl_210
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_384_array_ptr_210:ptr->i32 
              #                          temp_384_array_ptr_210 = getelementptr temp_383_ptr2globl_210:Array:i32:[Some(10000_0)] [Some(temp_382_ptr2globl_210)] 
              #                    occupy a2 with temp_384_array_ptr_210
    li      a2, 0
              #                    store to temp_383_ptr2globl_210 in mem offset_illegal
              #                    occupy a0 with 120124_0
    li      a0, 120124
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_383_ptr2globl_210
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_381_cmp_208 in mem offset_illegal
              #                    occupy a1 with 160131_0
    li      a1, 160131
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_381_cmp_208
              #                    occupy a1 with temp_382_ptr2globl_210
              #                    load from temp_382_ptr2globl_210 in mem

              #                    occupy a1 with temp_382_ptr2globl_210
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_330_logic_182 in mem offset_illegal
              #                    occupy a3 with 480346_0
    li      a3, 480346
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_330_logic_182
              #                    occupy a3 with _anonymous_of_temp_383_ptr2globl_210_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a0 with 120124_0
    li      a0, 120124
    li      a0, 120124
    add     a2,a0,a2
              #                    free a0
              #                    free a2
              #                          new_var temp_385_array_ele_210:i32 
              #                          temp_385_array_ele_210 = load temp_384_array_ptr_210:ptr->i32 
              #                    occupy a2 with temp_384_array_ptr_210
              #                    occupy a0 with temp_385_array_ele_210
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_386_arithop_210:i32 
              #                          temp_386_arithop_210 = Sub i32 temp_385_array_ele_210, 48_0 
              #                    occupy a0 with temp_385_array_ele_210
              #                    occupy a3 with 48_0
    li      a3, 48
              #                    store to temp_382_ptr2globl_210 in mem offset_illegal
              #                    occupy a1 with 160124_0
    li      a1, 160124
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_382_ptr2globl_210
              #                    occupy a1 with temp_386_arithop_210
              #                    regtab:    a0:Occupied { symidx: temp_385_array_ele_210, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_386_arithop_210, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_384_array_ptr_210, tracked: true } |     a3:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_62_ptr2globl_91, tracked: true } |     a5:Freed { symidx: temp_63_cmp_91, tracked: true } |     a6:Freed { symidx: temp_285_ptr2globl_170, tracked: true } |     a7:Freed { symidx: temp_295_ptr2globl_87, tracked: true } |     s10:Freed { symidx: temp_300_array_ele_179, tracked: true } |     s11:Freed { symidx: temp_304_array_ptr_182, tracked: true } |     s1:Freed { symidx: temp_286_cmp_170, tracked: true } |     s2:Freed { symidx: temp_296_index_ptr_87, tracked: true } |     s3:Freed { symidx: temp_297_ptr2globl_179, tracked: true } |     s4:Freed { symidx: temp_305_array_ele_182, tracked: true } |     s5:Freed { symidx: temp_298_ptr2globl_179, tracked: true } |     s6:Freed { symidx: temp_379_array_ptr_208, tracked: true } |     s7:Freed { symidx: temp_302_ptr2globl_182, tracked: true } |     s8:Freed { symidx: temp_309_array_ptr_182, tracked: true } |     s9:Freed { symidx: temp_303_ptr2globl_182, tracked: true } | 


    sub     a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                           Call void intpush_0(temp_386_arithop_210) 
              #                    saved register dumping to mem
              #                    store to temp_286_cmp_170 in mem offset_illegal
              #                    occupy s1 with 720555_0
    li      s1, 720555
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_286_cmp_170
              #                    store to temp_296_index_ptr_87 in mem offset_illegal
              #                    occupy s1 with 720488_0
    li      s1, 720488
    add     s1,sp,s1
    sd      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_296_index_ptr_87
              #                    store to temp_297_ptr2globl_179 in mem offset_illegal
              #                    occupy s2 with 720484_0
    li      s2, 720484
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_297_ptr2globl_179
              #                    store to temp_305_array_ele_182 in mem offset_illegal
              #                    occupy s3 with 640444_0
    li      s3, 640444
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_305_array_ele_182
              #                    store to temp_298_ptr2globl_179 in mem offset_illegal
              #                    occupy s4 with 680484_0
    li      s4, 680484
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_298_ptr2globl_179
              #                    store to temp_379_array_ptr_208 in mem offset_illegal
              #                    occupy s5 with 160136_0
    li      s5, 160136
    add     s5,sp,s5
    sd      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_379_array_ptr_208
              #                    store to temp_302_ptr2globl_182 in mem offset_illegal
              #                    occupy s6 with 680460_0
    li      s6, 680460
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_302_ptr2globl_182
              #                    store to temp_309_array_ptr_182 in mem offset_illegal
              #                    occupy s7 with 600424_0
    li      s7, 600424
    add     s7,sp,s7
    sd      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_309_array_ptr_182
              #                    store to temp_303_ptr2globl_182 in mem offset_illegal
              #                    occupy s8 with 640460_0
    li      s8, 640460
    add     s8,sp,s8
    sw      s9,0(s8)
              #                    free s8
              #                    release s9 with temp_303_ptr2globl_182
              #                    store to temp_300_array_ele_179 in mem offset_illegal
              #                    occupy s9 with 680468_0
    li      s9, 680468
    add     s9,sp,s9
    sw      s10,0(s9)
              #                    free s9
              #                    release s10 with temp_300_array_ele_179
              #                    store to temp_304_array_ptr_182 in mem offset_illegal
              #                    occupy s10 with 640448_0
    li      s10, 640448
    add     s10,sp,s10
    sd      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_304_array_ptr_182
              #                    store to temp_385_array_ele_210 in mem offset_illegal
              #                    occupy a0 with 120108_0
    li      a0, 120108
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_385_array_ele_210
              #                    store to temp_386_arithop_210 in mem offset_illegal
              #                    occupy a0 with 120104_0
    li      a0, 120104
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_386_arithop_210
              #                    store to temp_384_array_ptr_210 in mem offset_illegal
              #                    occupy a1 with 120112_0
    li      a1, 120112
    add     a1,sp,a1
    sd      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_384_array_ptr_210
              #                    store to temp_62_ptr2globl_91 in mem offset_illegal
              #                    occupy a2 with 2081524_0
    li      a2, 2081524
    add     a2,sp,a2
    sw      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_62_ptr2globl_91
              #                    store to temp_63_cmp_91 in mem offset_illegal
              #                    occupy a3 with 2081523_0
    li      a3, 2081523
    add     a3,sp,a3
    sb      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_63_cmp_91
              #                    store to temp_285_ptr2globl_170 in mem offset_illegal
              #                    occupy a4 with 720556_0
    li      a4, 720556
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_285_ptr2globl_170
              #                    store to temp_295_ptr2globl_87 in mem offset_illegal
              #                    occupy a5 with 720500_0
    li      a5, 720500
    add     a5,sp,a5
    sw      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_295_ptr2globl_87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_386_arithop_210_0
              #                    load from temp_386_arithop_210 in mem

              #                    occupy a6 with temp_386_arithop_210
    li      a6, 120104
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    arg load ended


    call    intpush
              #                          store 1_0:i32 *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a7 with 1_0
    li      a7, 1
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          jump label: while.head_214 
    j       .while.head_214
              #                    regtab     a6:Freed { symidx: temp_386_arithop_210, tracked: true } | 
              #                          label while.head_214: 
.while.head_214:
              #                          new_var temp_387_ptr2globl_213:i32 
              #                          temp_387_ptr2globl_213 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a1 with temp_387_ptr2globl_213
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_388_ptr2globl_213:i32 
              #                          temp_388_ptr2globl_213 = load *i_0:ptr->i32 
              #                    occupy a2 with *i_0
              #                       load label i as ptr to reg
    la      a2, i
              #                    occupy reg a2 with *i_0
              #                    occupy a3 with temp_388_ptr2globl_213
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_389_arithop_213:i32 
              #                          temp_389_arithop_213 = Add i32 temp_388_ptr2globl_213, temp_387_ptr2globl_213 
              #                    occupy a3 with temp_388_ptr2globl_213
              #                    occupy a1 with temp_387_ptr2globl_213
              #                    occupy a4 with temp_389_arithop_213
    add     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          new_var temp_390_ptr2globl_213:Array:i32:[Some(10000_0)] 
              #                          temp_390_ptr2globl_213 = load *get2_0:ptr->i32 
              #                    occupy a5 with *get2_0
              #                       load label get2 as ptr to reg
    la      a5, get2
              #                    occupy reg a5 with *get2_0
              #                    occupy a7 with temp_390_ptr2globl_213
    lw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                          new_var temp_391_array_ptr_213:ptr->i32 
              #                          temp_391_array_ptr_213 = getelementptr temp_390_ptr2globl_213:Array:i32:[Some(10000_0)] [Some(temp_389_arithop_213)] 
              #                    occupy s1 with temp_391_array_ptr_213
    li      s1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a4 with temp_389_arithop_213
              #                    occupy s3 with _anonymous_of_temp_390_ptr2globl_213_0
    mul     s3,s2,a4
              #                    free s2
              #                    free a4
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
    add     s1,s1,sp
              #                    occupy s4 with 80092_0
    li      s4, 80092
    li      s4, 80092
    add     s1,s4,s1
              #                    free s4
              #                    free s1
              #                          new_var temp_392_array_ele_213:i32 
              #                          temp_392_array_ele_213 = load temp_391_array_ptr_213:ptr->i32 
              #                    occupy s1 with temp_391_array_ptr_213
              #                    occupy s5 with temp_392_array_ele_213
    lw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          new_var temp_393_cmp_213:i1 
              #                          temp_393_cmp_213 = icmp i32 Ne temp_392_array_ele_213, 32_0 
              #                    occupy s5 with temp_392_array_ele_213
              #                    occupy s6 with 32_0
    li      s6, 32
              #                    occupy s7 with temp_393_cmp_213
    xor     s7,s5,s6
    snez    s7, s7
              #                    free s5
              #                    free s6
              #                    free s7
              #                          br i1 temp_393_cmp_213, label while.body_214, label while.exit_214 
              #                    occupy s7 with temp_393_cmp_213
              #                    free s7
              #                    occupy s7 with temp_393_cmp_213
    bnez    s7, .while.body_214
              #                    free s7
    j       .while.exit_214
              #                    regtab     a1:Freed { symidx: temp_387_ptr2globl_213, tracked: true } |     a3:Freed { symidx: temp_388_ptr2globl_213, tracked: true } |     a4:Freed { symidx: temp_389_arithop_213, tracked: true } |     a6:Freed { symidx: temp_386_arithop_210, tracked: true } |     a7:Freed { symidx: temp_390_ptr2globl_213, tracked: true } |     s1:Freed { symidx: temp_391_array_ptr_213, tracked: true } |     s5:Freed { symidx: temp_392_array_ele_213, tracked: true } |     s7:Freed { symidx: temp_393_cmp_213, tracked: true } | 
              #                          label while.body_214: 
.while.body_214:
              #                          new_var temp_394_ptr2globl_215:i32 
              #                          temp_394_ptr2globl_215 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a2 with temp_394_ptr2globl_215
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_395_ptr2globl_215:i32 
              #                          temp_395_ptr2globl_215 = load *i_0:ptr->i32 
              #                    occupy a5 with *i_0
              #                       load label i as ptr to reg
    la      a5, i
              #                    occupy reg a5 with *i_0
              #                    occupy s2 with temp_395_ptr2globl_215
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_396_arithop_215:i32 
              #                          temp_396_arithop_215 = Add i32 temp_395_ptr2globl_215, temp_394_ptr2globl_215 
              #                    occupy s2 with temp_395_ptr2globl_215
              #                    occupy a2 with temp_394_ptr2globl_215
              #                    occupy s3 with temp_396_arithop_215
    add     s3,s2,a2
              #                    free s2
              #                    free a2
              #                    free s3
              #                          new_var temp_397_ptr2globl_215:Array:i32:[Some(10000_0)] 
              #                          temp_397_ptr2globl_215 = load *get2_0:ptr->i32 
              #                    occupy s4 with *get2_0
              #                       load label get2 as ptr to reg
    la      s4, get2
              #                    occupy reg s4 with *get2_0
              #                    occupy s6 with temp_397_ptr2globl_215
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          new_var temp_398_array_ptr_215:ptr->i32 
              #                          temp_398_array_ptr_215 = getelementptr temp_397_ptr2globl_215:Array:i32:[Some(10000_0)] [Some(temp_396_arithop_215)] 
              #                    occupy s8 with temp_398_array_ptr_215
    li      s8, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s3 with temp_396_arithop_215
              #                    occupy s10 with _anonymous_of_temp_397_ptr2globl_215_0
    mul     s10,s9,s3
              #                    free s9
              #                    free s3
    add     s8,s8,s10
              #                    free s10
    slli s8,s8,2
    add     s8,s8,sp
              #                    occupy s11 with 40060_0
    li      s11, 40060
    li      s11, 40060
    add     s8,s11,s8
              #                    free s11
              #                    free s8
              #                          new_var temp_399_array_ele_215:i32 
              #                          temp_399_array_ele_215 = load temp_398_array_ptr_215:ptr->i32 
              #                    occupy s8 with temp_398_array_ptr_215
              #                    occupy a0 with temp_399_array_ele_215
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_400_arithop_215:i32 
              #                          temp_400_arithop_215 = Sub i32 temp_399_array_ele_215, 48_0 
              #                    occupy a0 with temp_399_array_ele_215
              #                    occupy a5 with 48_0
    li      a5, 48
              #                    occupy s4 with temp_400_arithop_215
              #                    regtab:    a0:Occupied { symidx: temp_399_array_ele_215, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_387_ptr2globl_213, tracked: true } |     a2:Freed { symidx: temp_394_ptr2globl_215, tracked: true } |     a3:Freed { symidx: temp_388_ptr2globl_213, tracked: true } |     a4:Freed { symidx: temp_389_arithop_213, tracked: true } |     a5:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a6:Freed { symidx: temp_386_arithop_210, tracked: true } |     a7:Freed { symidx: temp_390_ptr2globl_213, tracked: true } |     s10:Freed { symidx: _anonymous_of_temp_397_ptr2globl_215_0, tracked: false } |     s11:Freed { symidx: 40060_0, tracked: false } |     s1:Freed { symidx: temp_391_array_ptr_213, tracked: true } |     s2:Freed { symidx: temp_395_ptr2globl_215, tracked: true } |     s3:Freed { symidx: temp_396_arithop_215, tracked: true } |     s4:Occupied { symidx: temp_400_arithop_215, tracked: true, occupy_count: 1 } |     s5:Freed { symidx: temp_392_array_ele_213, tracked: true } |     s6:Freed { symidx: temp_397_ptr2globl_215, tracked: true } |     s7:Freed { symidx: temp_393_cmp_213, tracked: true } |     s8:Freed { symidx: temp_398_array_ptr_215, tracked: true } |     s9:Freed { symidx: 1_0, tracked: false } | 


    sub     s4,a0,a5
              #                    free a0
              #                    free a5
              #                    free s4
              #                           Call void intadd_0(temp_400_arithop_215) 
              #                    saved register dumping to mem
              #                    store to temp_391_array_ptr_213 in mem offset_illegal
              #                    occupy s1 with 80080_0
    li      s1, 80080
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_391_array_ptr_213
              #                    store to temp_395_ptr2globl_215 in mem offset_illegal
              #                    occupy s1 with 80064_0
    li      s1, 80064
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_395_ptr2globl_215
              #                    store to temp_396_arithop_215 in mem offset_illegal
              #                    occupy s2 with 80060_0
    li      s2, 80060
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_396_arithop_215
              #                    store to temp_400_arithop_215 in mem offset_illegal
              #                    occupy s3 with 40040_0
    li      s3, 40040
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_400_arithop_215
              #                    store to temp_392_array_ele_213 in mem offset_illegal
              #                    occupy s4 with 80076_0
    li      s4, 80076
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_392_array_ele_213
              #                    store to temp_397_ptr2globl_215 in mem offset_illegal
              #                    found literal reg Some(s11) already exist with 40060_0
              #                    occupy s11 with 40060_0
    add     s11,sp,s11
    sw      s6,0(s11)
              #                    free s11
              #                    release s6 with temp_397_ptr2globl_215
              #                    store to temp_393_cmp_213 in mem offset_illegal
              #                    occupy s5 with 80075_0
    li      s5, 80075
    add     s5,sp,s5
    sb      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_393_cmp_213
              #                    store to temp_398_array_ptr_215 in mem offset_illegal
              #                    occupy s6 with 40048_0
    li      s6, 40048
    add     s6,sp,s6
    sd      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_398_array_ptr_215
              #                    store to temp_399_array_ele_215 in mem offset_illegal
              #                    occupy a0 with 40044_0
    li      a0, 40044
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_399_array_ele_215
              #                    store to temp_387_ptr2globl_213 in mem offset_illegal
              #                    occupy a0 with 120100_0
    li      a0, 120100
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_387_ptr2globl_213
              #                    store to temp_394_ptr2globl_215 in mem offset_illegal
              #                    occupy a1 with 80068_0
    li      a1, 80068
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_394_ptr2globl_215
              #                    store to temp_388_ptr2globl_213 in mem offset_illegal
              #                    occupy a2 with 120096_0
    li      a2, 120096
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_388_ptr2globl_213
              #                    store to temp_389_arithop_213 in mem offset_illegal
              #                    occupy a3 with 120092_0
    li      a3, 120092
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_389_arithop_213
              #                    store to temp_386_arithop_210 in mem offset_illegal
              #                    occupy a4 with 120104_0
    li      a4, 120104
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_386_arithop_210
              #                    store to temp_390_ptr2globl_213 in mem offset_illegal
              #                    occupy a5 with 80092_0
    li      a5, 80092
    add     a5,sp,a5
    sw      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_390_ptr2globl_213
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_400_arithop_215_0
              #                    load from temp_400_arithop_215 in mem

              #                    occupy a6 with temp_400_arithop_215
    li      a6, 40040
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    arg load ended


    call    intadd
              #                          new_var temp_401_ptr2globl_215:i32 
              #                          temp_401_ptr2globl_215 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a7 with temp_401_ptr2globl_215
    lw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          new_var temp_402_arithop_215:i32 
              #                          temp_402_arithop_215 = Add i32 temp_401_ptr2globl_215, 1_0 
              #                    occupy a7 with temp_401_ptr2globl_215
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with temp_402_arithop_215
    add     s8,a7,s7
              #                    free a7
              #                    free s7
              #                    free s8
              #                          store temp_402_arithop_215:i32 *ii_0:ptr->i32 
              #                    occupy s9 with *ii_0
              #                       load label ii as ptr to reg
    la      s9, ii
              #                    occupy reg s9 with *ii_0
              #                    occupy s8 with temp_402_arithop_215
    sw      s8,0(s9)
              #                    free s8
              #                    free s9
              #                          jump label: while.head_214 
              #                    store to temp_401_ptr2globl_215 in mem offset_illegal
              #                    occupy a0 with 40036_0
    li      a0, 40036
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with temp_401_ptr2globl_215
              #                    store to temp_400_arithop_215 in mem offset_illegal
              #                    occupy a1 with 40040_0
    li      a1, 40040
    add     a1,sp,a1
    sw      a6,0(a1)
              #                    free a1
              #                    release a6 with temp_400_arithop_215
              #                    store to temp_402_arithop_215 in mem offset_illegal
              #                    occupy a4 with 40032_0
    li      a4, 40032
    add     a4,sp,a4
    sw      s8,0(a4)
              #                    free a4
              #                    release s8 with temp_402_arithop_215
              #                    occupy a6 with _anonymous_of_temp_386_arithop_210_0
              #                    load from temp_386_arithop_210 in mem

              #                    occupy a0 with temp_386_arithop_210
    li      a0, 120104
    add     a0,sp,a0
    lw      a6,0(a0)
              #                    free a0
    j       .while.head_214
              #                    regtab     a1:Freed { symidx: temp_387_ptr2globl_213, tracked: true } |     a3:Freed { symidx: temp_388_ptr2globl_213, tracked: true } |     a4:Freed { symidx: temp_389_arithop_213, tracked: true } |     a6:Freed { symidx: temp_386_arithop_210, tracked: true } |     a7:Freed { symidx: temp_390_ptr2globl_213, tracked: true } |     s1:Freed { symidx: temp_391_array_ptr_213, tracked: true } |     s5:Freed { symidx: temp_392_array_ele_213, tracked: true } |     s7:Freed { symidx: temp_393_cmp_213, tracked: true } | 
              #                          label while.exit_214: 
.while.exit_214:
              #                          new_var temp_403_ptr2globl_210:i32 
              #                          temp_403_ptr2globl_210 = load *ii_0:ptr->i32 
              #                    occupy a0 with *ii_0
              #                       load label ii as ptr to reg
    la      a0, ii
              #                    occupy reg a0 with *ii_0
              #                    occupy a2 with temp_403_ptr2globl_210
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_404_ptr2globl_210:i32 
              #                          temp_404_ptr2globl_210 = load *i_0:ptr->i32 
              #                    occupy a5 with *i_0
              #                       load label i as ptr to reg
    la      a5, i
              #                    occupy reg a5 with *i_0
              #                    occupy s2 with temp_404_ptr2globl_210
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_405_arithop_210:i32 
              #                          temp_405_arithop_210 = Add i32 temp_404_ptr2globl_210, temp_403_ptr2globl_210 
              #                    occupy s2 with temp_404_ptr2globl_210
              #                    occupy a2 with temp_403_ptr2globl_210
              #                    occupy s3 with temp_405_arithop_210
    add     s3,s2,a2
              #                    free s2
              #                    free a2
              #                    free s3
              #                          new_var temp_406_arithop_210:i32 
              #                          temp_406_arithop_210 = Sub i32 temp_405_arithop_210, 1_0 
              #                    occupy s3 with temp_405_arithop_210
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_406_arithop_210
              #                    regtab:    a0:Freed { symidx: *ii_0, tracked: false } |     a1:Freed { symidx: temp_387_ptr2globl_213, tracked: true } |     a2:Freed { symidx: temp_403_ptr2globl_210, tracked: true } |     a3:Freed { symidx: temp_388_ptr2globl_213, tracked: true } |     a4:Freed { symidx: temp_389_arithop_213, tracked: true } |     a5:Freed { symidx: *i_0, tracked: false } |     a6:Freed { symidx: temp_386_arithop_210, tracked: true } |     a7:Freed { symidx: temp_390_ptr2globl_213, tracked: true } |     s1:Freed { symidx: temp_391_array_ptr_213, tracked: true } |     s2:Freed { symidx: temp_404_ptr2globl_210, tracked: true } |     s3:Occupied { symidx: temp_405_arithop_210, tracked: true, occupy_count: 1 } |     s4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s5:Freed { symidx: temp_392_array_ele_213, tracked: true } |     s6:Occupied { symidx: temp_406_arithop_210, tracked: true, occupy_count: 1 } |     s7:Freed { symidx: temp_393_cmp_213, tracked: true } | 


    sub     s6,s3,s4
              #                    free s3
              #                    free s4
              #                    free s6
              #                          store temp_406_arithop_210:i32 *i_0:ptr->i32 
              #                    occupy s8 with *i_0
              #                       load label i as ptr to reg
    la      s8, i
              #                    occupy reg s8 with *i_0
              #                    occupy s6 with temp_406_arithop_210
    sw      s6,0(s8)
              #                    free s6
              #                    free s8
              #                          jump label: branch_false_209 
              #                    store to temp_406_arithop_210 in mem offset_illegal
              #                    occupy s6 with 40016_0
    li      s6, 40016
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_406_arithop_210
              #                    store to temp_404_ptr2globl_210 in mem offset_illegal
              #                    occupy s2 with 40024_0
    li      s2, 40024
    add     s2,sp,s2
    sw      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_404_ptr2globl_210
              #                    store to temp_387_ptr2globl_213 in mem offset_illegal
              #                    occupy a1 with 120100_0
    li      a1, 120100
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_387_ptr2globl_213
              #                    store to temp_405_arithop_210 in mem offset_illegal
              #                    occupy a1 with 40020_0
    li      a1, 40020
    add     a1,sp,a1
    sw      s3,0(a1)
              #                    free a1
              #                    release s3 with temp_405_arithop_210
              #                    store to temp_390_ptr2globl_213 in mem offset_illegal
              #                    occupy a0 with 80092_0
    li      a0, 80092
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with temp_390_ptr2globl_213
              #                    store to temp_389_arithop_213 in mem offset_illegal
              #                    occupy a4 with 120092_0
    li      a4, 120092
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_389_arithop_213
              #                    store to temp_386_arithop_210 in mem offset_illegal
              #                    occupy a4 with 120104_0
    li      a4, 120104
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_386_arithop_210
              #                    store to temp_392_array_ele_213 in mem offset_illegal
              #                    occupy a5 with 80076_0
    li      a5, 80076
    add     a5,sp,a5
    sw      s5,0(a5)
              #                    free a5
              #                    release s5 with temp_392_array_ele_213
              #                    store to temp_388_ptr2globl_213 in mem offset_illegal
              #                    occupy a3 with 120096_0
    li      a3, 120096
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_388_ptr2globl_213
              #                    store to temp_403_ptr2globl_210 in mem offset_illegal
              #                    occupy a2 with 40028_0
    li      a2, 40028
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_403_ptr2globl_210
              #                    store to temp_391_array_ptr_213 in mem offset_illegal
              #                    occupy a2 with 80080_0
    li      a2, 80080
    add     a2,sp,a2
    sd      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_391_array_ptr_213
              #                    store to temp_393_cmp_213 in mem offset_illegal
              #                    occupy a3 with 80075_0
    li      a3, 80075
    add     a3,sp,a3
    sb      s7,0(a3)
              #                    free a3
              #                    release s7 with temp_393_cmp_213
              #                    occupy s6 with _anonymous_of_temp_379_array_ptr_208_0
              #                    load from temp_379_array_ptr_208 in mem
              #                    occupy a6 with temp_379_array_ptr_208
    li      a6, 160136
    add     a6,sp,a6
    ld      s6,0(a6)
              #                    free a6
              #                    occupy s2 with _anonymous_of_temp_296_index_ptr_87_0
              #                    load from temp_296_index_ptr_87 in mem
              #                    occupy a7 with temp_296_index_ptr_87
    li      a7, 720488
    add     a7,sp,a7
    ld      s2,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_temp_381_cmp_208_0
              #                    load from temp_381_cmp_208 in mem
              #                    occupy s1 with temp_381_cmp_208
    li      s1, 160131
    add     s1,sp,s1
    lb      a1,0(s1)
              #                    free s1
              #                    occupy s10 with _anonymous_of_temp_300_array_ele_179_0
              #                    load from temp_300_array_ele_179 in mem

              #                    occupy s3 with temp_300_array_ele_179
    li      s3, 680468
    add     s3,sp,s3
    lw      s10,0(s3)
              #                    free s3
              #                    store to temp_300_array_ele_179 in mem offset_illegal
              #                    occupy s3 with 680468_0
    li      s3, 680468
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_300_array_ele_179
              #                    occupy s3 with _anonymous_of_temp_297_ptr2globl_179_0
              #                    load from temp_297_ptr2globl_179 in mem

              #                    occupy s4 with temp_297_ptr2globl_179
    li      s4, 720484
    add     s4,sp,s4
    lw      s3,0(s4)
              #                    free s4
              #                    occupy s9 with _anonymous_of_temp_303_ptr2globl_182_0
              #                    load from temp_303_ptr2globl_182 in mem
              #                    occupy s5 with temp_303_ptr2globl_182
    li      s5, 640460
    add     s5,sp,s5
    lw      s9,0(s5)
              #                    free s5
              #                    occupy a0 with _anonymous_of_temp_380_array_ele_208_0
              #                    load from temp_380_array_ele_208 in mem

              #                    occupy s7 with temp_380_array_ele_208
    li      s7, 160132
    add     s7,sp,s7
    lw      a0,0(s7)
              #                    free s7
              #                    store to temp_296_index_ptr_87 in mem offset_illegal
              #                    occupy a7 with 720488_0
    li      a7, 720488
    add     a7,sp,a7
    sd      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_296_index_ptr_87
              #                    occupy a7 with _anonymous_of_temp_295_ptr2globl_87_0
              #                    load from temp_295_ptr2globl_87 in mem

              #                    occupy s8 with temp_295_ptr2globl_87
    li      s8, 720500
    add     s8,sp,s8
    lw      a7,0(s8)
              #                    free s8
              #                    occupy s11 with _anonymous_of_temp_304_array_ptr_182_0
              #                    load from temp_304_array_ptr_182 in mem
              #                    occupy a2 with temp_304_array_ptr_182
    li      a2, 640448
    add     a2,sp,a2
    ld      s11,0(a2)
              #                    free a2
              #                    occupy a4 with _anonymous_of_temp_62_ptr2globl_91_0
              #                    load from temp_62_ptr2globl_91 in mem

              #                    occupy a3 with temp_62_ptr2globl_91
    li      a3, 2081524
    add     a3,sp,a3
    lw      a4,0(a3)
              #                    free a3
              #                    store to temp_297_ptr2globl_179 in mem offset_illegal
              #                    occupy s4 with 720484_0
    li      s4, 720484
    add     s4,sp,s4
    sw      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_297_ptr2globl_179
              #                    occupy s4 with _anonymous_of_temp_305_array_ele_182_0
              #                    load from temp_305_array_ele_182 in mem

              #                    occupy a5 with temp_305_array_ele_182
    li      a5, 640444
    add     a5,sp,a5
    lw      s4,0(a5)
              #                    free a5
              #                    store to temp_379_array_ptr_208 in mem offset_illegal
              #                    occupy a6 with 160136_0
    li      a6, 160136
    add     a6,sp,a6
    sd      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_379_array_ptr_208
              #                    occupy a6 with _anonymous_of_temp_285_ptr2globl_170_0
              #                    load from temp_285_ptr2globl_170 in mem

              #                    store to temp_304_array_ptr_182 in mem offset_illegal
              #                    occupy a2 with 640448_0
    li      a2, 640448
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_304_array_ptr_182
              #                    occupy a2 with temp_285_ptr2globl_170
    li      a2, 720556
    add     a2,sp,a2
    lw      a6,0(a2)
              #                    free a2
              #                    store to temp_305_array_ele_182 in mem offset_illegal
              #                    occupy a5 with 640444_0
    li      a5, 640444
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_305_array_ele_182
              #                    occupy a5 with _anonymous_of_temp_63_cmp_91_0
              #                    load from temp_63_cmp_91 in mem
              #                    store to temp_285_ptr2globl_170 in mem offset_illegal
              #                    occupy a2 with 720556_0
    li      a2, 720556
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_285_ptr2globl_170
              #                    occupy a2 with temp_63_cmp_91
    li      a2, 2081523
    add     a2,sp,a2
    lb      a5,0(a2)
              #                    free a2
              #                    store to temp_303_ptr2globl_182 in mem offset_illegal
              #                    occupy s5 with 640460_0
    li      s5, 640460
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_303_ptr2globl_182
              #                    occupy s5 with _anonymous_of_temp_298_ptr2globl_179_0
              #                    load from temp_298_ptr2globl_179 in mem
              #                    store to temp_63_cmp_91 in mem offset_illegal
              #                    occupy a2 with 2081523_0
    li      a2, 2081523
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_63_cmp_91
              #                    occupy a2 with temp_298_ptr2globl_179
    li      a2, 680484
    add     a2,sp,a2
    lw      s5,0(a2)
              #                    free a2
              #                    store to temp_295_ptr2globl_87 in mem offset_illegal
              #                    occupy s8 with 720500_0
    li      s8, 720500
    add     s8,sp,s8
    sw      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_295_ptr2globl_87
              #                    occupy s8 with _anonymous_of_temp_309_array_ptr_182_0
              #                    load from temp_309_array_ptr_182 in mem
              #                    store to temp_298_ptr2globl_179 in mem offset_illegal
              #                    occupy a2 with 680484_0
    li      a2, 680484
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_298_ptr2globl_179
              #                    occupy a2 with temp_309_array_ptr_182
    li      a2, 600424
    add     a2,sp,a2
    ld      s8,0(a2)
              #                    free a2
              #                    store to temp_62_ptr2globl_91 in mem offset_illegal
              #                    occupy a3 with 2081524_0
    li      a3, 2081524
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_62_ptr2globl_91
              #                    occupy a3 with _anonymous_of_temp_330_logic_182_0
              #                    load from temp_330_logic_182 in mem
              #                    store to temp_309_array_ptr_182 in mem offset_illegal
              #                    occupy a2 with 600424_0
    li      a2, 600424
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_309_array_ptr_182
              #                    occupy a2 with temp_330_logic_182
    li      a2, 480346
    add     a2,sp,a2
    lb      a3,0(a2)
              #                    free a2
              #                    store to temp_330_logic_182 in mem offset_illegal
              #                    occupy a2 with 480346_0
    li      a2, 480346
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_330_logic_182
              #                    store to temp_381_cmp_208 in mem offset_illegal
              #                    occupy a2 with 160131_0
    li      a2, 160131
    add     a2,sp,a2
    sb      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_381_cmp_208
              #                    occupy s1 with _anonymous_of_temp_286_cmp_170_0
              #                    load from temp_286_cmp_170 in mem
              #                    occupy a2 with temp_286_cmp_170
    li      a2, 720555
    add     a2,sp,a2
    lb      s1,0(a2)
              #                    free a2
              #                    store to temp_380_array_ele_208 in mem offset_illegal
              #                    occupy s7 with 160132_0
    li      s7, 160132
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_380_array_ele_208
              #                    occupy s7 with _anonymous_of_temp_302_ptr2globl_182_0
              #                    load from temp_302_ptr2globl_182 in mem

              #                    store to temp_286_cmp_170 in mem offset_illegal
              #                    occupy a2 with 720555_0
    li      a2, 720555
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_286_cmp_170
              #                    occupy a2 with temp_302_ptr2globl_182
    li      a2, 680460
    add     a2,sp,a2
    lw      s7,0(a2)
              #                    free a2
    j       .branch_false_209
              #                    regtab     a0:Freed { symidx: temp_380_array_ele_208, tracked: true } |     a1:Freed { symidx: temp_381_cmp_208, tracked: true } |     a3:Freed { symidx: temp_330_logic_182, tracked: true } |     a4:Freed { symidx: temp_62_ptr2globl_91, tracked: true } |     a5:Freed { symidx: temp_63_cmp_91, tracked: true } |     a6:Freed { symidx: temp_285_ptr2globl_170, tracked: true } |     a7:Freed { symidx: temp_295_ptr2globl_87, tracked: true } |     s10:Freed { symidx: temp_300_array_ele_179, tracked: true } |     s11:Freed { symidx: temp_304_array_ptr_182, tracked: true } |     s1:Freed { symidx: temp_286_cmp_170, tracked: true } |     s2:Freed { symidx: temp_296_index_ptr_87, tracked: true } |     s3:Freed { symidx: temp_297_ptr2globl_179, tracked: true } |     s4:Freed { symidx: temp_305_array_ele_182, tracked: true } |     s5:Freed { symidx: temp_298_ptr2globl_179, tracked: true } |     s6:Freed { symidx: temp_379_array_ptr_208, tracked: true } |     s7:Freed { symidx: temp_302_ptr2globl_182, tracked: true } |     s8:Freed { symidx: temp_309_array_ptr_182, tracked: true } |     s9:Freed { symidx: temp_303_ptr2globl_182, tracked: true } | 
              #                          label branch_false_209: 
.branch_false_209:
              #                    regtab     a6:Freed { symidx: c_184, tracked: true } | 
              #                          label L18_0: 
.L18_0:
              #                    regtab     a6:Freed { symidx: c_184, tracked: true } | 
              #                          label L19_0: 
.L19_0:
              #                          new_var temp_375_ptr2globl_181:i32 
              #                          temp_375_ptr2globl_181 = load *i_0:ptr->i32 
              #                    occupy a0 with *i_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy reg a0 with *i_0
              #                    occupy a1 with temp_375_ptr2globl_181
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_376_arithop_181:i32 
              #                          temp_376_arithop_181 = Add i32 temp_375_ptr2globl_181, 1_0 
              #                    occupy a1 with temp_375_ptr2globl_181
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_376_arithop_181
    add     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_376_arithop_181:i32 *i_0:ptr->i32 
              #                    occupy a4 with *i_0
              #                       load label i as ptr to reg
    la      a4, i
              #                    occupy reg a4 with *i_0
              #                    occupy a3 with temp_376_arithop_181
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          jump label: while.head_180 
              #                    store to temp_375_ptr2globl_181 in mem offset_illegal
              #                    occupy a1 with 200152_0
    li      a1, 200152
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_375_ptr2globl_181
              #                    store to c_184 in mem offset_illegal
              #                    occupy a0 with 440300_0
    li      a0, 440300
    add     a0,sp,a0
    sw      a6,0(a0)
              #                    free a0
              #                    release a6 with c_184
              #                    store to temp_376_arithop_181 in mem offset_illegal
              #                    occupy a1 with 200148_0
    li      a1, 200148
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_376_arithop_181
              #                    occupy s2 with _anonymous_of_temp_296_index_ptr_87_0
              #                    load from temp_296_index_ptr_87 in mem
              #                    occupy a2 with temp_296_index_ptr_87
    li      a2, 720488
    add     a2,sp,a2
    ld      s2,0(a2)
              #                    free a2
              #                    occupy a1 with _anonymous_of_temp_60_ptr2globl_87_0
              #                    load from temp_60_ptr2globl_87 in mem
              #                    occupy a3 with temp_60_ptr2globl_87
    li      a3, 2081536
    add     a3,sp,a3
    lw      a1,0(a3)
              #                    free a3
              #                    occupy a0 with _anonymous_of_temp_61_ret_of_getstr_87_0
              #                    load from temp_61_ret_of_getstr_87 in mem

              #                    occupy a4 with temp_61_ret_of_getstr_87
    li      a4, 2081532
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    occupy a7 with _anonymous_of_temp_295_ptr2globl_87_0
              #                    load from temp_295_ptr2globl_87 in mem

              #                    occupy a5 with temp_295_ptr2globl_87
    li      a5, 720500
    add     a5,sp,a5
    lw      a7,0(a5)
              #                    free a5
              #                    store to temp_61_ret_of_getstr_87 in mem offset_illegal
              #                    occupy a4 with 2081532_0
    li      a4, 2081532
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_61_ret_of_getstr_87
              #                    occupy a4 with _anonymous_of_temp_62_ptr2globl_91_0
              #                    load from temp_62_ptr2globl_91 in mem

              #                    occupy a6 with temp_62_ptr2globl_91
    li      a6, 2081524
    add     a6,sp,a6
    lw      a4,0(a6)
              #                    free a6
              #                    store to temp_62_ptr2globl_91 in mem offset_illegal
              #                    occupy a6 with 2081524_0
    li      a6, 2081524
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_62_ptr2globl_91
              #                    occupy a6 with _anonymous_of_temp_285_ptr2globl_170_0
              #                    load from temp_285_ptr2globl_170 in mem

              #                    occupy s1 with temp_285_ptr2globl_170
    li      s1, 720556
    add     s1,sp,s1
    lw      a6,0(s1)
              #                    free s1
              #                    store to temp_295_ptr2globl_87 in mem offset_illegal
              #                    occupy a5 with 720500_0
    li      a5, 720500
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_295_ptr2globl_87
              #                    occupy a5 with _anonymous_of_temp_63_cmp_91_0
              #                    load from temp_63_cmp_91 in mem
              #                    occupy s3 with temp_63_cmp_91
    li      s3, 2081523
    add     s3,sp,s3
    lb      a5,0(s3)
              #                    free s3
              #                    store to temp_60_ptr2globl_87 in mem offset_illegal
              #                    occupy a3 with 2081536_0
    li      a3, 2081536
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_60_ptr2globl_87
              #                    store to temp_296_index_ptr_87 in mem offset_illegal
              #                    occupy a2 with 720488_0
    li      a2, 720488
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_296_index_ptr_87
              #                    occupy a2 with _anonymous_of_lengets_87_0
              #                    load from lengets_87 in mem

              #                    occupy a3 with lengets_87
    li      a3, 2081528
    add     a3,sp,a3
    lw      a2,0(a3)
              #                    free a3
              #                    store to temp_285_ptr2globl_170 in mem offset_illegal
              #                    occupy s1 with 720556_0
    li      s1, 720556
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_285_ptr2globl_170
              #                    occupy s1 with _anonymous_of_temp_286_cmp_170_0
              #                    load from temp_286_cmp_170 in mem
              #                    occupy s4 with temp_286_cmp_170
    li      s4, 720555
    add     s4,sp,s4
    lb      s1,0(s4)
              #                    free s4
    j       .while.head_180
              #                    regtab     a0:Freed { symidx: temp_61_ret_of_getstr_87, tracked: true } |     a1:Freed { symidx: temp_60_ptr2globl_87, tracked: true } |     a2:Freed { symidx: lengets_87, tracked: true } |     a3:Freed { symidx: temp_301_cmp_179, tracked: true } |     a4:Freed { symidx: temp_62_ptr2globl_91, tracked: true } |     a5:Freed { symidx: temp_63_cmp_91, tracked: true } |     a6:Freed { symidx: temp_285_ptr2globl_170, tracked: true } |     a7:Freed { symidx: temp_295_ptr2globl_87, tracked: true } |     s10:Freed { symidx: temp_300_array_ele_179, tracked: true } |     s1:Freed { symidx: temp_286_cmp_170, tracked: true } |     s2:Freed { symidx: temp_296_index_ptr_87, tracked: true } |     s3:Freed { symidx: temp_297_ptr2globl_179, tracked: true } |     s5:Freed { symidx: temp_298_ptr2globl_179, tracked: true } |     s6:Freed { symidx: temp_299_array_ptr_179, tracked: true } | 
              #                          label while.exit_180: 
.while.exit_180:
              #                          new_var temp_407_ptr2globl_87:Array:i32:[Some(10000_0)] 
              #                          temp_407_ptr2globl_87 = load *ints_0:ptr->i32 
              #                    occupy s4 with *ints_0
              #                       load label ints as ptr to reg
    la      s4, ints
              #                    occupy reg s4 with *ints_0
              #                    occupy s7 with temp_407_ptr2globl_87
    lw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          new_var temp_408_array_ptr_87:ptr->i32 
              #                          temp_408_array_ptr_87 = getelementptr temp_407_ptr2globl_87:Array:i32:[Some(10000_0)] [Some(1_0)] 
              #                    occupy s8 with temp_408_array_ptr_87
    li      s8, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy s4 with _anonymous_of_temp_407_ptr2globl_87_0
    mul     s4,s9,s11
              #                    free s9
              #                    free s11
    add     s8,s8,s4
              #                    free s4
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,16
              #                    free s8
              #                          new_var temp_409_array_ele_87:i32 
              #                          temp_409_array_ele_87 = load temp_408_array_ptr_87:ptr->i32 
              #                    occupy s8 with temp_408_array_ptr_87
              #                    occupy s4 with temp_409_array_ele_87
    lw      s4,0(s8)
              #                    free s4
              #                    free s8
              #                           Call void putint_0(temp_409_array_ele_87) 
              #                    saved register dumping to mem
              #                    store to temp_286_cmp_170 in mem offset_illegal
              #                    occupy s1 with 720555_0
    li      s1, 720555
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_286_cmp_170
              #                    store to temp_296_index_ptr_87 in mem offset_illegal
              #                    occupy s1 with 720488_0
    li      s1, 720488
    add     s1,sp,s1
    sd      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_296_index_ptr_87
              #                    store to temp_297_ptr2globl_179 in mem offset_illegal
              #                    occupy s2 with 720484_0
    li      s2, 720484
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_297_ptr2globl_179
              #                    store to temp_409_array_ele_87 in mem offset legal
    sw      s4,4(sp)
              #                    release s4 with temp_409_array_ele_87
              #                    store to temp_298_ptr2globl_179 in mem offset_illegal
              #                    occupy s3 with 680484_0
    li      s3, 680484
    add     s3,sp,s3
    sw      s5,0(s3)
              #                    free s3
              #                    release s5 with temp_298_ptr2globl_179
              #                    store to temp_299_array_ptr_179 in mem offset_illegal
              #                    occupy s4 with 680472_0
    li      s4, 680472
    add     s4,sp,s4
    sd      s6,0(s4)
              #                    free s4
              #                    release s6 with temp_299_array_ptr_179
              #                    store to temp_407_ptr2globl_87 in mem offset legal
    sw      s7,16(sp)
              #                    release s7 with temp_407_ptr2globl_87
              #                    store to temp_408_array_ptr_87 in mem offset legal
    sd      s8,8(sp)
              #                    release s8 with temp_408_array_ptr_87
              #                    store to temp_300_array_ele_179 in mem offset_illegal
              #                    occupy s5 with 680468_0
    li      s5, 680468
    add     s5,sp,s5
    sw      s10,0(s5)
              #                    free s5
              #                    release s10 with temp_300_array_ele_179
              #                    store to temp_61_ret_of_getstr_87 in mem offset_illegal
              #                    occupy a0 with 2081532_0
    li      a0, 2081532
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_61_ret_of_getstr_87
              #                    store to temp_60_ptr2globl_87 in mem offset_illegal
              #                    occupy a0 with 2081536_0
    li      a0, 2081536
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_60_ptr2globl_87
              #                    store to lengets_87 in mem offset_illegal
              #                    occupy a1 with 2081528_0
    li      a1, 2081528
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with lengets_87
              #                    store to temp_301_cmp_179 in mem offset_illegal
              #                    occupy a2 with 680467_0
    li      a2, 680467
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_301_cmp_179
              #                    store to temp_62_ptr2globl_91 in mem offset_illegal
              #                    occupy a3 with 2081524_0
    li      a3, 2081524
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_62_ptr2globl_91
              #                    store to temp_63_cmp_91 in mem offset_illegal
              #                    occupy a4 with 2081523_0
    li      a4, 2081523
    add     a4,sp,a4
    sb      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_63_cmp_91
              #                    store to temp_285_ptr2globl_170 in mem offset_illegal
              #                    occupy a5 with 720556_0
    li      a5, 720556
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_285_ptr2globl_170
              #                    store to temp_295_ptr2globl_87 in mem offset_illegal
              #                    occupy a6 with 720500_0
    li      a6, 720500
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_295_ptr2globl_87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_409_array_ele_87_0
              #                    load from temp_409_array_ele_87 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with ra_main_0
    li      a0, 2121544
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy a7 with s0_main_0
    li      a7, 2121536
    add     a7,sp,a7
    ld      s0,0(a7)
              #                    free a7
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a0 with 2121544_0
    li      a0, 2121544
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with ra_main_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy s6 with 2121552_0
    li      s6, 2121552
    li      s6, 2121552
    add     sp,s6,sp
              #                    free s6
              #                    free a0
    ret
              #                    regtab     a7:Freed { symidx: s0_main_0, tracked: true } | 
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
