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
              #                          Define read_program_0 [] -> read_program_ret_0 
    .globl read_program
    .type read_program,@function
read_program:
              #                    mem layout:|ra_read_program:8 at 48|s0_read_program:8 at 40|i:4 at 36|temp_0_ret_of_getint:4 at 32|len:4 at 28|temp_1_cmp:1 at 27|none:3 at 24|temp_2_index_ptr:8 at 16|temp_3_ret_of_getch:4 at 12|temp_4_arithop:4 at 8|temp_5_index_ptr:8 at 0
    addi    sp,sp,-56
              #                    store to ra_read_program_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_read_program_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc i32 i_19 
              #                          alloc i32 temp_0_ret_of_getint_19 
              #                          alloc i32 len_19 
              #                          alloc i1 temp_1_cmp_21 
              #                          alloc ptr->i32 temp_2_index_ptr_23 
              #                          alloc i32 temp_3_ret_of_getch_23 
              #                          alloc i32 temp_4_arithop_23 
              #                          alloc ptr->i32 temp_5_index_ptr_19 
              #                    regtab 
              #                          label L12_0: 
.L12_0:
              #                          i_19 = i32 0_0 
              #                    occupy a0 with i_19
    li      a0, 0
              #                    free a0
              #                          new_var temp_0_ret_of_getint_19:i32 
              #                          temp_0_ret_of_getint_19 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to i_19 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_0_ret_of_getint_19 in mem offset legal
    sw      a0,32(sp)
              #                          len_19 = i32 temp_0_ret_of_getint_19 
              #                    occupy a0 with temp_0_ret_of_getint_19
              #                    occupy a1 with len_19
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_22 
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19, tracked: true } |     a1:Freed { symidx: len_19, tracked: true } | 
              #                          label while.head_22: 
.while.head_22:
              #                          new_var temp_1_cmp_21:i1 
              #                          temp_1_cmp_21 = icmp i32 Slt i_19, len_19 
              #                    occupy a2 with i_19
              #                    load from i_19 in mem


    lw      a2,36(sp)
              #                    occupy a1 with len_19
              #                    occupy a3 with temp_1_cmp_21
    slt     a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_1_cmp_21, label while.body_22, label while.exit_22 
              #                    occupy a3 with temp_1_cmp_21
              #                    free a3
              #                    occupy a3 with temp_1_cmp_21
    bnez    a3, .while.body_22
              #                    free a3
    j       .while.exit_22
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19, tracked: true } |     a1:Freed { symidx: len_19, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_1_cmp_21, tracked: true } | 
              #                          label while.body_22: 
.while.body_22:
              #                          new_var temp_2_index_ptr_23:ptr->i32 
              #                          temp_2_index_ptr_23 = getelementptr *program_0:ptr->i32 [Some(i_19)] 
              #                    occupy a4 with temp_2_index_ptr_23
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_19
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *program_0
              #                       load label program as ptr to reg
    la      a7, program
              #                    occupy reg a7 with *program_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          new_var temp_3_ret_of_getch_23:i32 
              #                          temp_3_ret_of_getch_23 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_0_ret_of_getint_19 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_0_ret_of_getint_19
              #                    store to len_19 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with len_19
              #                    store to i_19 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_19
              #                    store to temp_1_cmp_21 in mem offset legal
    sb      a3,27(sp)
              #                    release a3 with temp_1_cmp_21
              #                    store to temp_2_index_ptr_23 in mem offset legal
    sd      a4,16(sp)
              #                    release a4 with temp_2_index_ptr_23
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_3_ret_of_getch_23 in mem offset legal
    sw      a0,12(sp)
              #                          store temp_3_ret_of_getch_23:i32 temp_2_index_ptr_23:ptr->i32 
              #                    occupy a1 with temp_2_index_ptr_23
              #                    load from temp_2_index_ptr_23 in mem
    ld      a1,16(sp)
              #                    occupy a0 with temp_3_ret_of_getch_23
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *program_0:50 
              #                          *program_0 = chi *program_0:50 
              #                          new_var temp_4_arithop_23:i32 
              #                          temp_4_arithop_23 = Add i32 i_19, 1_0 
              #                    occupy a2 with i_19
              #                    load from i_19 in mem


    lw      a2,36(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_4_arithop_23
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_19 = i32 temp_4_arithop_23 
              #                    occupy a4 with temp_4_arithop_23
              #                    occupy a2 with i_19
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_22 
              #                    store to temp_4_arithop_23 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_4_arithop_23
              #                    store to i_19 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_19
              #                    store to temp_2_index_ptr_23 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_2_index_ptr_23
              #                    store to temp_3_ret_of_getch_23 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_3_ret_of_getch_23
              #                    occupy a1 with _anonymous_of_len_19_0
              #                    load from len_19 in mem


    lw      a1,28(sp)
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getint_19_0
              #                    load from temp_0_ret_of_getint_19 in mem


    lw      a0,32(sp)
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19, tracked: true } |     a1:Freed { symidx: len_19, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_1_cmp_21, tracked: true } | 
              #                          label while.exit_22: 
.while.exit_22:
              #                          new_var temp_5_index_ptr_19:ptr->i32 
              #                          temp_5_index_ptr_19 = getelementptr *program_0:ptr->i32 [Some(i_19)] 
              #                    occupy a4 with temp_5_index_ptr_19
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_19
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *program_0
              #                       load label program as ptr to reg
    la      a7, program
              #                    occupy reg a7 with *program_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store 0_0:i32 temp_5_index_ptr_19:ptr->i32 
              #                    occupy a4 with temp_5_index_ptr_19
              #                    occupy s1 with 0_0
    li      s1, 0
    sw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          mu *program_0:60 
              #                          *program_0 = chi *program_0:60 
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19, tracked: true } |     a1:Freed { symidx: len_19, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_1_cmp_21, tracked: true } |     a4:Freed { symidx: temp_5_index_ptr_19, tracked: true } | 
              #                    regtab 
              #                          Define interpret_0 [input_27] -> interpret_ret_0 
    .globl interpret
    .type interpret,@function
interpret:
              #                    mem layout:|ra_interpret:8 at 272|s0_interpret:8 at 264|input:8 at 256|cur_char:4 at 252|loop:4 at 248|i:4 at 244|none:4 at 240|temp_6_array_ptr:8 at 232|temp_7_array_ele:4 at 228|temp_8_:1 at 227|none:3 at 224|temp_9_array_ptr:8 at 216|temp_10_array_ele:4 at 212|temp_11_cmp:1 at 211|none:3 at 208|temp_12_ptr2globl:4 at 204|temp_13_arithop:4 at 200|temp_14_arithop:4 at 196|temp_15_cmp:1 at 195|none:3 at 192|temp_16_ptr2globl:4 at 188|temp_17_arithop:4 at 184|temp_18_cmp:1 at 183|none:3 at 180|temp_19_ptr2globl:4 at 176|temp_20_index_ptr:8 at 168|temp_21_ptr2globl:4 at 164|none:4 at 160|temp_22_array_ptr:8 at 152|temp_23_array_ele:4 at 148|temp_24_arithop:4 at 144|temp_25_cmp:1 at 143|none:3 at 140|temp_26_ptr2globl:4 at 136|temp_27_index_ptr:8 at 128|temp_28_ptr2globl:4 at 124|none:4 at 120|temp_29_array_ptr:8 at 112|temp_30_array_ele:4 at 108|temp_31_arithop:4 at 104|temp_32_cmp:1 at 103|none:3 at 100|temp_33_ptr2globl:4 at 96|temp_34_array_ptr:8 at 88|temp_35_array_ele:4 at 84|temp_36_cmp:1 at 83|none:3 at 80|temp_37_ptr2globl:4 at 76|none:4 at 72|temp_38_index_ptr:8 at 64|temp_39_ret_of_getch:4 at 60|temp_40_ptr2globl:4 at 56|temp_41_array_ptr:8 at 48|temp_42_array_ele:4 at 44|temp_43_cmp:1 at 43|temp_44_:1 at 42|temp_45_logic:1 at 41|temp_46_cmp:1 at 40|temp_47_arithop:4 at 36|none:4 at 32|temp_48_array_ptr:8 at 24|temp_49_array_ele:4 at 20|temp_50_cmp:1 at 19|none:3 at 16|temp_51_arithop:4 at 12|temp_52_cmp:1 at 11|none:3 at 8|temp_53_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-280
              #                    store to ra_interpret_0 in mem offset legal
    sd      ra,272(sp)
              #                    store to s0_interpret_0 in mem offset legal
    sd      s0,264(sp)
    addi    s0,sp,280
              #                          new_var input_27:ptr->i32 
              #                          alloc i32 cur_char_29 
              #                          alloc i32 loop_29 
              #                          alloc i32 i_29 
              #                          alloc ptr->i32 temp_6_array_ptr_31 
              #                          alloc i32 temp_7_array_ele_31 
              #                          alloc i1 temp_8__470 
              #                          alloc ptr->i32 temp_9_array_ptr_33 
              #                          alloc i32 temp_10_array_ele_33 
              #                          alloc i1 temp_11_cmp_35 
              #                          alloc i32 temp_12_ptr2globl_37 
              #                          alloc i32 temp_13_arithop_37 
              #                          alloc i32 temp_14_arithop_33 
              #                          alloc i1 temp_15_cmp_39 
              #                          alloc i32 temp_16_ptr2globl_41 
              #                          alloc i32 temp_17_arithop_41 
              #                          alloc i1 temp_18_cmp_43 
              #                          alloc i32 temp_19_ptr2globl_45 
              #                          alloc ptr->i32 temp_20_index_ptr_45 
              #                          alloc i32 temp_21_ptr2globl_45 
              #                          alloc ptr->i32 temp_22_array_ptr_45 
              #                          alloc i32 temp_23_array_ele_45 
              #                          alloc i32 temp_24_arithop_45 
              #                          alloc i1 temp_25_cmp_47 
              #                          alloc i32 temp_26_ptr2globl_49 
              #                          alloc ptr->i32 temp_27_index_ptr_49 
              #                          alloc i32 temp_28_ptr2globl_49 
              #                          alloc ptr->i32 temp_29_array_ptr_49 
              #                          alloc i32 temp_30_array_ele_49 
              #                          alloc i32 temp_31_arithop_49 
              #                          alloc i1 temp_32_cmp_51 
              #                          alloc i32 temp_33_ptr2globl_53 
              #                          alloc ptr->i32 temp_34_array_ptr_53 
              #                          alloc i32 temp_35_array_ele_53 
              #                          alloc i1 temp_36_cmp_55 
              #                          alloc i32 temp_37_ptr2globl_57 
              #                          alloc ptr->i32 temp_38_index_ptr_57 
              #                          alloc i32 temp_39_ret_of_getch_57 
              #                          alloc i32 temp_40_ptr2globl_59 
              #                          alloc ptr->i32 temp_41_array_ptr_59 
              #                          alloc i32 temp_42_array_ele_59 
              #                          alloc i1 temp_43_cmp_59 
              #                          alloc i1 temp_44__59 
              #                          alloc i1 temp_45_logic_59 
              #                          alloc i1 temp_46_cmp_63 
              #                          alloc i32 temp_47_arithop_65 
              #                          alloc ptr->i32 temp_48_array_ptr_65 
              #                          alloc i32 temp_49_array_ele_65 
              #                          alloc i1 temp_50_cmp_68 
              #                          alloc i32 temp_51_arithop_70 
              #                          alloc i1 temp_52_cmp_72 
              #                          alloc i32 temp_53_arithop_74 
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var cur_char_29:i32 
              #                          new_var loop_29:i32 
              #                          i_29 = i32 0_0 
              #                    occupy a1 with i_29
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } | 
              #                          label while.head_32: 
.while.head_32:
              #                          new_var temp_6_array_ptr_31:ptr->i32 
              #                          temp_6_array_ptr_31 = getelementptr input_27:ptr->i32 [Some(i_29)] 
              #                    occupy a2 with temp_6_array_ptr_31
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a1 with i_29
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a1
              #                    free a3
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a0 with input_27
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_7_array_ele_31:i32 
              #                          temp_7_array_ele_31 = load temp_6_array_ptr_31:ptr->i32 
              #                    occupy a2 with temp_6_array_ptr_31
              #                    occupy a5 with temp_7_array_ele_31
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          new_var temp_8__470:i1 
              #                          temp_8__470 = icmp i32 Ne temp_7_array_ele_31, 0_0 
              #                    occupy a5 with temp_7_array_ele_31
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with temp_8__470
    xor     a7,a5,a6
    snez    a7, a7
              #                    free a5
              #                    free a6
              #                    free a7
              #                          br i1 temp_8__470, label while.body_32, label while.exit_32 
              #                    occupy a7 with temp_8__470
              #                    free a7
              #                    occupy a7 with temp_8__470
    bnez    a7, .while.body_32
              #                    free a7
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } | 
              #                          label while.body_32: 
.while.body_32:
              #                          new_var temp_9_array_ptr_33:ptr->i32 
              #                          temp_9_array_ptr_33 = getelementptr input_27:ptr->i32 [Some(i_29)] 
              #                    occupy a3 with temp_9_array_ptr_33
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a1 with i_29
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a1
              #                    free a4
              #                    free a1
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
              #                    occupy a0 with input_27
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_10_array_ele_33:i32 
              #                          temp_10_array_ele_33 = load temp_9_array_ptr_33:ptr->i32 
              #                    occupy a3 with temp_9_array_ptr_33
              #                    occupy s1 with temp_10_array_ele_33
    lw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                          cur_char_29 = i32 temp_10_array_ele_33 
              #                    occupy s1 with temp_10_array_ele_33
              #                    occupy s2 with cur_char_29
    mv      s2, s1
              #                    free s1
              #                    free s2
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_11_cmp_35:i1 
              #                          temp_11_cmp_35 = icmp i32 Eq cur_char_29, 62_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a4 with 62_0
    li      a4, 62
              #                    occupy a6 with temp_11_cmp_35
    xor     a6,s2,a4
    seqz    a6, a6
              #                    free s2
              #                    free a4
              #                    free a6
              #                          br i1 temp_11_cmp_35, label branch_true_36, label branch_false_36 
              #                    occupy a6 with temp_11_cmp_35
              #                    free a6
              #                    occupy a6 with temp_11_cmp_35
    bnez    a6, .branch_true_36
              #                    free a6
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } | 
              #                          label branch_true_36: 
.branch_true_36:
              #                          new_var temp_12_ptr2globl_37:i32 
              #                          temp_12_ptr2globl_37 = load *ptr_0:ptr->i32 
              #                    occupy a4 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a4, ptr
              #                    occupy reg a4 with *ptr_0
              #                    occupy s3 with temp_12_ptr2globl_37
    lw      s3,0(a4)
              #                    free s3
              #                    free a4
              #                          new_var temp_13_arithop_37:i32 
              #                          temp_13_arithop_37 = Add i32 temp_12_ptr2globl_37, 1_0 
              #                    occupy s3 with temp_12_ptr2globl_37
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_13_arithop_37
    add     s5,s3,s4
              #                    free s3
              #                    free s4
              #                    free s5
              #                          store temp_13_arithop_37:i32 *ptr_0:ptr->i32 
              #                    occupy s6 with *ptr_0
              #                       load label ptr as ptr to reg
    la      s6, ptr
              #                    occupy reg s6 with *ptr_0
              #                    occupy s5 with temp_13_arithop_37
    sw      s5,0(s6)
              #                    free s5
              #                    free s6
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } | 
              #                          label branch_false_36: 
.branch_false_36:
              #                          new_var temp_15_cmp_39:i1 
              #                          temp_15_cmp_39 = icmp i32 Eq cur_char_29, 60_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a4 with 60_0
    li      a4, 60
              #                    occupy s3 with temp_15_cmp_39
    xor     s3,s2,a4
    seqz    s3, s3
              #                    free s2
              #                    free a4
              #                    free s3
              #                          br i1 temp_15_cmp_39, label branch_true_40, label branch_false_40 
              #                    occupy s3 with temp_15_cmp_39
              #                    free s3
              #                    occupy s3 with temp_15_cmp_39
    bnez    s3, .branch_true_40
              #                    free s3
    j       .branch_false_40
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } | 
              #                          label branch_true_40: 
.branch_true_40:
              #                          new_var temp_16_ptr2globl_41:i32 
              #                          temp_16_ptr2globl_41 = load *ptr_0:ptr->i32 
              #                    occupy a4 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a4, ptr
              #                    occupy reg a4 with *ptr_0
              #                    occupy s4 with temp_16_ptr2globl_41
    lw      s4,0(a4)
              #                    free s4
              #                    free a4
              #                          new_var temp_17_arithop_41:i32 
              #                          temp_17_arithop_41 = Sub i32 temp_16_ptr2globl_41, 1_0 
              #                    occupy s4 with temp_16_ptr2globl_41
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with temp_17_arithop_41
              #                    regtab:    a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a4:Freed { symidx: *ptr_0, tracked: false } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Occupied { symidx: temp_16_ptr2globl_41, tracked: true, occupy_count: 1 } |     s5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s6:Occupied { symidx: temp_17_arithop_41, tracked: true, occupy_count: 1 } | 


    sub     s6,s4,s5
              #                    free s4
              #                    free s5
              #                    free s6
              #                          store temp_17_arithop_41:i32 *ptr_0:ptr->i32 
              #                    occupy s7 with *ptr_0
              #                       load label ptr as ptr to reg
    la      s7, ptr
              #                    occupy reg s7 with *ptr_0
              #                    occupy s6 with temp_17_arithop_41
    sw      s6,0(s7)
              #                    free s6
              #                    free s7
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } | 
              #                          label branch_false_40: 
.branch_false_40:
              #                          new_var temp_18_cmp_43:i1 
              #                          temp_18_cmp_43 = icmp i32 Eq cur_char_29, 43_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a4 with 43_0
    li      a4, 43
              #                    occupy s4 with temp_18_cmp_43
    xor     s4,s2,a4
    seqz    s4, s4
              #                    free s2
              #                    free a4
              #                    free s4
              #                          br i1 temp_18_cmp_43, label branch_true_44, label branch_false_44 
              #                    occupy s4 with temp_18_cmp_43
              #                    free s4
              #                    occupy s4 with temp_18_cmp_43
    bnez    s4, .branch_true_44
              #                    free s4
    j       .branch_false_44
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } | 
              #                          label branch_true_44: 
.branch_true_44:
              #                          new_var temp_19_ptr2globl_45:i32 
              #                          temp_19_ptr2globl_45 = load *ptr_0:ptr->i32 
              #                    occupy a4 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a4, ptr
              #                    occupy reg a4 with *ptr_0
              #                    occupy s5 with temp_19_ptr2globl_45
    lw      s5,0(a4)
              #                    free s5
              #                    free a4
              #                          new_var temp_20_index_ptr_45:ptr->i32 
              #                          temp_20_index_ptr_45 = getelementptr *tape_0:ptr->i32 [Some(temp_19_ptr2globl_45)] 
              #                    occupy s6 with temp_20_index_ptr_45
    li      s6, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s5 with temp_19_ptr2globl_45
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s7,s5
              #                    free s7
              #                    free s5
    add     s6,s6,s8
              #                    free s8
    slli s6,s6,2
              #                    occupy s9 with *tape_0
              #                       load label tape as ptr to reg
    la      s9, tape
              #                    occupy reg s9 with *tape_0
    add     s6,s6,s9
              #                    free s9
              #                    free s6
              #                          new_var temp_21_ptr2globl_45:i32 
              #                          temp_21_ptr2globl_45 = load *ptr_0:ptr->i32 
              #                    occupy s10 with *ptr_0
              #                       load label ptr as ptr to reg
    la      s10, ptr
              #                    occupy reg s10 with *ptr_0
              #                    occupy s11 with temp_21_ptr2globl_45
    lw      s11,0(s10)
              #                    free s11
              #                    free s10
              #                          new_var temp_22_array_ptr_45:ptr->i32 
              #                          temp_22_array_ptr_45 = getelementptr *tape_0:ptr->i32 [Some(temp_21_ptr2globl_45)] 
              #                    occupy a4 with temp_22_array_ptr_45
    li      a4, 0
              #                    found literal reg Some(s7) already exist with 1_0
              #                    occupy s7 with 1_0
              #                    occupy s11 with temp_21_ptr2globl_45
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s7,s11
              #                    free s7
              #                    free s11
    add     a4,a4,s8
              #                    free s8
    slli a4,a4,2
              #                    occupy s7 with *tape_0
              #                       load label tape as ptr to reg
    la      s7, tape
              #                    occupy reg s7 with *tape_0
    add     a4,a4,s7
              #                    free s7
              #                    free a4
              #                          new_var temp_23_array_ele_45:i32 
              #                          temp_23_array_ele_45 = load temp_22_array_ptr_45:ptr->i32 
              #                    occupy a4 with temp_22_array_ptr_45
              #                    occupy s7 with temp_23_array_ele_45
    lw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                          new_var temp_24_arithop_45:i32 
              #                          temp_24_arithop_45 = Add i32 temp_23_array_ele_45, 1_0 
              #                    occupy s7 with temp_23_array_ele_45
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s9 with temp_24_arithop_45
    add     s9,s7,s8
              #                    free s7
              #                    free s8
              #                    free s9
              #                          store temp_24_arithop_45:i32 temp_20_index_ptr_45:ptr->i32 
              #                    occupy s6 with temp_20_index_ptr_45
              #                    occupy s9 with temp_24_arithop_45
    sw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          mu *tape_0:144 
              #                          *tape_0 = chi *tape_0:144 
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } | 
              #                          label branch_false_44: 
.branch_false_44:
              #                          new_var temp_25_cmp_47:i1 
              #                          temp_25_cmp_47 = icmp i32 Eq cur_char_29, 45_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a4 with 45_0
    li      a4, 45
              #                    occupy s5 with temp_25_cmp_47
    xor     s5,s2,a4
    seqz    s5, s5
              #                    free s2
              #                    free a4
              #                    free s5
              #                          br i1 temp_25_cmp_47, label branch_true_48, label branch_false_48 
              #                    occupy s5 with temp_25_cmp_47
              #                    free s5
              #                    occupy s5 with temp_25_cmp_47
    bnez    s5, .branch_true_48
              #                    free s5
    j       .branch_false_48
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } | 
              #                          label branch_true_48: 
.branch_true_48:
              #                          new_var temp_26_ptr2globl_49:i32 
              #                          temp_26_ptr2globl_49 = load *ptr_0:ptr->i32 
              #                    occupy a4 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a4, ptr
              #                    occupy reg a4 with *ptr_0
              #                    occupy s6 with temp_26_ptr2globl_49
    lw      s6,0(a4)
              #                    free s6
              #                    free a4
              #                          new_var temp_27_index_ptr_49:ptr->i32 
              #                          temp_27_index_ptr_49 = getelementptr *tape_0:ptr->i32 [Some(temp_26_ptr2globl_49)] 
              #                    occupy s7 with temp_27_index_ptr_49
    li      s7, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s6 with temp_26_ptr2globl_49
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s8,s6
              #                    free s8
              #                    free s6
    add     s7,s7,s9
              #                    free s9
    slli s7,s7,2
              #                    occupy s10 with *tape_0
              #                       load label tape as ptr to reg
    la      s10, tape
              #                    occupy reg s10 with *tape_0
    add     s7,s7,s10
              #                    free s10
              #                    free s7
              #                          new_var temp_28_ptr2globl_49:i32 
              #                          temp_28_ptr2globl_49 = load *ptr_0:ptr->i32 
              #                    occupy s11 with *ptr_0
              #                       load label ptr as ptr to reg
    la      s11, ptr
              #                    occupy reg s11 with *ptr_0
              #                    occupy a4 with temp_28_ptr2globl_49
    lw      a4,0(s11)
              #                    free a4
              #                    free s11
              #                          new_var temp_29_array_ptr_49:ptr->i32 
              #                          temp_29_array_ptr_49 = getelementptr *tape_0:ptr->i32 [Some(temp_28_ptr2globl_49)] 
              #                    occupy s8 with temp_29_array_ptr_49
    li      s8, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy a4 with temp_28_ptr2globl_49
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,s9,a4
              #                    free s9
              #                    free a4
    add     s8,s8,s10
              #                    free s10
    slli s8,s8,2
              #                    occupy s9 with *tape_0
              #                       load label tape as ptr to reg
    la      s9, tape
              #                    occupy reg s9 with *tape_0
    add     s8,s8,s9
              #                    free s9
              #                    free s8
              #                          new_var temp_30_array_ele_49:i32 
              #                          temp_30_array_ele_49 = load temp_29_array_ptr_49:ptr->i32 
              #                    occupy s8 with temp_29_array_ptr_49
              #                    occupy s9 with temp_30_array_ele_49
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_31_arithop_49:i32 
              #                          temp_31_arithop_49 = Sub i32 temp_30_array_ele_49, 1_0 
              #                    occupy s9 with temp_30_array_ele_49
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with temp_31_arithop_49
              #                    regtab:    a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a4:Freed { symidx: temp_28_ptr2globl_49, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s11:Occupied { symidx: temp_31_arithop_49, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_26_ptr2globl_49, tracked: true } |     s7:Freed { symidx: temp_27_index_ptr_49, tracked: true } |     s8:Freed { symidx: temp_29_array_ptr_49, tracked: true } |     s9:Occupied { symidx: temp_30_array_ele_49, tracked: true, occupy_count: 1 } | 


    sub     s11,s9,s10
              #                    free s9
              #                    free s10
              #                    free s11
              #                          store temp_31_arithop_49:i32 temp_27_index_ptr_49:ptr->i32 
              #                    occupy s7 with temp_27_index_ptr_49
              #                    occupy s11 with temp_31_arithop_49
    sw      s11,0(s7)
              #                    free s11
              #                    free s7
              #                          mu *tape_0:171 
              #                          *tape_0 = chi *tape_0:171 
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } | 
              #                          label branch_false_48: 
.branch_false_48:
              #                          new_var temp_32_cmp_51:i1 
              #                          temp_32_cmp_51 = icmp i32 Eq cur_char_29, 46_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a4 with 46_0
    li      a4, 46
              #                    occupy s6 with temp_32_cmp_51
    xor     s6,s2,a4
    seqz    s6, s6
              #                    free s2
              #                    free a4
              #                    free s6
              #                          br i1 temp_32_cmp_51, label branch_true_52, label branch_false_52 
              #                    occupy s6 with temp_32_cmp_51
              #                    free s6
              #                    occupy s6 with temp_32_cmp_51
    bnez    s6, .branch_true_52
              #                    free s6
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } | 
              #                          label branch_true_52: 
.branch_true_52:
              #                          new_var temp_33_ptr2globl_53:i32 
              #                          temp_33_ptr2globl_53 = load *ptr_0:ptr->i32 
              #                    occupy a4 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a4, ptr
              #                    occupy reg a4 with *ptr_0
              #                    occupy s7 with temp_33_ptr2globl_53
    lw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                          new_var temp_34_array_ptr_53:ptr->i32 
              #                          temp_34_array_ptr_53 = getelementptr *tape_0:ptr->i32 [Some(temp_33_ptr2globl_53)] 
              #                    occupy s8 with temp_34_array_ptr_53
    li      s8, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s7 with temp_33_ptr2globl_53
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,s9,s7
              #                    free s9
              #                    free s7
    add     s8,s8,s10
              #                    free s10
    slli s8,s8,2
              #                    occupy s11 with *tape_0
              #                       load label tape as ptr to reg
    la      s11, tape
              #                    occupy reg s11 with *tape_0
    add     s8,s8,s11
              #                    free s11
              #                    free s8
              #                          new_var temp_35_array_ele_53:i32 
              #                          temp_35_array_ele_53 = load temp_34_array_ptr_53:ptr->i32 
              #                    occupy s8 with temp_34_array_ptr_53
              #                    occupy a4 with temp_35_array_ele_53
    lw      a4,0(s8)
              #                    free a4
              #                    free s8
              #                           Call void putch_0(temp_35_array_ele_53) 
              #                    saved register dumping to mem
              #                    store to temp_10_array_ele_33 in mem offset legal
    sw      s1,212(sp)
              #                    release s1 with temp_10_array_ele_33
              #                    store to cur_char_29 in mem offset legal
    sw      s2,252(sp)
              #                    release s2 with cur_char_29
              #                    store to temp_15_cmp_39 in mem offset legal
    sb      s3,195(sp)
              #                    release s3 with temp_15_cmp_39
              #                    store to temp_18_cmp_43 in mem offset legal
    sb      s4,183(sp)
              #                    release s4 with temp_18_cmp_43
              #                    store to temp_25_cmp_47 in mem offset legal
    sb      s5,143(sp)
              #                    release s5 with temp_25_cmp_47
              #                    store to temp_32_cmp_51 in mem offset legal
    sb      s6,103(sp)
              #                    release s6 with temp_32_cmp_51
              #                    store to temp_33_ptr2globl_53 in mem offset legal
    sw      s7,96(sp)
              #                    release s7 with temp_33_ptr2globl_53
              #                    store to temp_34_array_ptr_53 in mem offset legal
    sd      s8,88(sp)
              #                    release s8 with temp_34_array_ptr_53
              #                    store to input_27 in mem offset legal
    sd      a0,256(sp)
              #                    release a0 with input_27
              #                    store to i_29 in mem offset legal
    sw      a1,244(sp)
              #                    release a1 with i_29
              #                    store to temp_6_array_ptr_31 in mem offset legal
    sd      a2,232(sp)
              #                    release a2 with temp_6_array_ptr_31
              #                    store to temp_9_array_ptr_33 in mem offset legal
    sd      a3,216(sp)
              #                    release a3 with temp_9_array_ptr_33
              #                    store to temp_35_array_ele_53 in mem offset legal
    sw      a4,84(sp)
              #                    release a4 with temp_35_array_ele_53
              #                    store to temp_7_array_ele_31 in mem offset legal
    sw      a5,228(sp)
              #                    release a5 with temp_7_array_ele_31
              #                    store to temp_11_cmp_35 in mem offset legal
    sb      a6,211(sp)
              #                    release a6 with temp_11_cmp_35
              #                    store to temp_8__470 in mem offset legal
    sb      a7,227(sp)
              #                    release a7 with temp_8__470
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_35_array_ele_53_0
              #                    load from temp_35_array_ele_53 in mem


    lw      a0,84(sp)
              #                    arg load ended


    call    putch
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } | 
              #                          label branch_false_52: 
.branch_false_52:
              #                          new_var temp_36_cmp_55:i1 
              #                          temp_36_cmp_55 = icmp i32 Eq cur_char_29, 44_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a4 with 44_0
    li      a4, 44
              #                    occupy s7 with temp_36_cmp_55
    xor     s7,s2,a4
    seqz    s7, s7
              #                    free s2
              #                    free a4
              #                    free s7
              #                          br i1 temp_36_cmp_55, label branch_true_56, label branch_false_56 
              #                    occupy s7 with temp_36_cmp_55
              #                    free s7
              #                    occupy s7 with temp_36_cmp_55
    bnez    s7, .branch_true_56
              #                    free s7
    j       .branch_false_56
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } | 
              #                          label branch_true_56: 
.branch_true_56:
              #                          new_var temp_37_ptr2globl_57:i32 
              #                          temp_37_ptr2globl_57 = load *ptr_0:ptr->i32 
              #                    occupy a4 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a4, ptr
              #                    occupy reg a4 with *ptr_0
              #                    occupy s8 with temp_37_ptr2globl_57
    lw      s8,0(a4)
              #                    free s8
              #                    free a4
              #                          new_var temp_38_index_ptr_57:ptr->i32 
              #                          temp_38_index_ptr_57 = getelementptr *tape_0:ptr->i32 [Some(temp_37_ptr2globl_57)] 
              #                    occupy s9 with temp_38_index_ptr_57
    li      s9, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s8 with temp_37_ptr2globl_57
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s10,s8
              #                    free s10
              #                    free s8
    add     s9,s9,s11
              #                    free s11
    slli s9,s9,2
              #                    occupy a4 with *tape_0
              #                       load label tape as ptr to reg
    la      a4, tape
              #                    occupy reg a4 with *tape_0
    add     s9,s9,a4
              #                    free a4
              #                    free s9
              #                          new_var temp_39_ret_of_getch_57:i32 
              #                          temp_39_ret_of_getch_57 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_10_array_ele_33 in mem offset legal
    sw      s1,212(sp)
              #                    release s1 with temp_10_array_ele_33
              #                    store to cur_char_29 in mem offset legal
    sw      s2,252(sp)
              #                    release s2 with cur_char_29
              #                    store to temp_15_cmp_39 in mem offset legal
    sb      s3,195(sp)
              #                    release s3 with temp_15_cmp_39
              #                    store to temp_18_cmp_43 in mem offset legal
    sb      s4,183(sp)
              #                    release s4 with temp_18_cmp_43
              #                    store to temp_25_cmp_47 in mem offset legal
    sb      s5,143(sp)
              #                    release s5 with temp_25_cmp_47
              #                    store to temp_32_cmp_51 in mem offset legal
    sb      s6,103(sp)
              #                    release s6 with temp_32_cmp_51
              #                    store to temp_36_cmp_55 in mem offset legal
    sb      s7,83(sp)
              #                    release s7 with temp_36_cmp_55
              #                    store to temp_37_ptr2globl_57 in mem offset legal
    sw      s8,76(sp)
              #                    release s8 with temp_37_ptr2globl_57
              #                    store to temp_38_index_ptr_57 in mem offset legal
    sd      s9,64(sp)
              #                    release s9 with temp_38_index_ptr_57
              #                    store to input_27 in mem offset legal
    sd      a0,256(sp)
              #                    release a0 with input_27
              #                    store to i_29 in mem offset legal
    sw      a1,244(sp)
              #                    release a1 with i_29
              #                    store to temp_6_array_ptr_31 in mem offset legal
    sd      a2,232(sp)
              #                    release a2 with temp_6_array_ptr_31
              #                    store to temp_9_array_ptr_33 in mem offset legal
    sd      a3,216(sp)
              #                    release a3 with temp_9_array_ptr_33
              #                    store to temp_7_array_ele_31 in mem offset legal
    sw      a5,228(sp)
              #                    release a5 with temp_7_array_ele_31
              #                    store to temp_11_cmp_35 in mem offset legal
    sb      a6,211(sp)
              #                    release a6 with temp_11_cmp_35
              #                    store to temp_8__470 in mem offset legal
    sb      a7,227(sp)
              #                    release a7 with temp_8__470
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_39_ret_of_getch_57 in mem offset legal
    sw      a0,60(sp)
              #                          store temp_39_ret_of_getch_57:i32 temp_38_index_ptr_57:ptr->i32 
              #                    occupy a1 with temp_38_index_ptr_57
              #                    load from temp_38_index_ptr_57 in mem
    ld      a1,64(sp)
              #                    occupy a0 with temp_39_ret_of_getch_57
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *tape_0:205 
              #                          *tape_0 = chi *tape_0:205 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } | 
              #                          label branch_false_56: 
.branch_false_56:
              #                          new_var temp_40_ptr2globl_59:i32 
              #                          temp_40_ptr2globl_59 = load *ptr_0:ptr->i32 
              #                    occupy a4 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a4, ptr
              #                    occupy reg a4 with *ptr_0
              #                    occupy s8 with temp_40_ptr2globl_59
    lw      s8,0(a4)
              #                    free s8
              #                    free a4
              #                          new_var temp_41_array_ptr_59:ptr->i32 
              #                          temp_41_array_ptr_59 = getelementptr *tape_0:ptr->i32 [Some(temp_40_ptr2globl_59)] 
              #                    occupy s9 with temp_41_array_ptr_59
    li      s9, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s8 with temp_40_ptr2globl_59
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s10,s8
              #                    free s10
              #                    free s8
    add     s9,s9,s11
              #                    free s11
    slli s9,s9,2
              #                    occupy a4 with *tape_0
              #                       load label tape as ptr to reg
    la      a4, tape
              #                    occupy reg a4 with *tape_0
    add     s9,s9,a4
              #                    free a4
              #                    free s9
              #                          new_var temp_42_array_ele_59:i32 
              #                          temp_42_array_ele_59 = load temp_41_array_ptr_59:ptr->i32 
              #                    occupy s9 with temp_41_array_ptr_59
              #                    occupy a4 with temp_42_array_ele_59
    lw      a4,0(s9)
              #                    free a4
              #                    free s9
              #                          new_var temp_43_cmp_59:i1 
              #                          temp_43_cmp_59 = icmp i32 Eq cur_char_29, 93_0 
              #                    occupy s2 with cur_char_29
              #                    occupy s10 with 93_0
    li      s10, 93
              #                    occupy s11 with temp_43_cmp_59
    xor     s11,s2,s10
    seqz    s11, s11
              #                    free s2
              #                    free s10
              #                    free s11
              #                          new_var temp_44__59:i1 
              #                          temp_44__59 = icmp i32 Ne temp_42_array_ele_59, 0_0 
              #                    occupy a4 with temp_42_array_ele_59
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    store to input_27 in mem offset legal
    sd      a0,256(sp)
              #                    release a0 with input_27
              #                    occupy a0 with temp_44__59
    xor     a0,a4,s10
    snez    a0, a0
              #                    free a4
              #                    free s10
              #                    free a0
              #                          new_var temp_45_logic_59:i1 
              #                          temp_45_logic_59 = And i1 temp_43_cmp_59, temp_44__59 
              #                    occupy s11 with temp_43_cmp_59
              #                    occupy a0 with temp_44__59
              #                    occupy s10 with temp_45_logic_59
    and     s10,s11,a0
              #                    free s11
              #                    free a0
              #                    free s10
              #                          br i1 temp_45_logic_59, label branch_true_60, label branch_false_60 
              #                    occupy s10 with temp_45_logic_59
              #                    free s10
              #                    store to temp_9_array_ptr_33 in mem offset legal
    sd      a3,216(sp)
              #                    release a3 with temp_9_array_ptr_33
              #                    occupy s10 with temp_45_logic_59
    bnez    s10, .branch_true_60
              #                    free s10
    j       .branch_false_60
              #                    regtab     a0:Freed { symidx: temp_44__59, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a4:Freed { symidx: temp_42_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_45_logic_59, tracked: true } |     s11:Freed { symidx: temp_43_cmp_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } |     s8:Freed { symidx: temp_40_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_41_array_ptr_59, tracked: true } | 
              #                          label branch_true_60: 
.branch_true_60:
              #                          loop_29 = i32 1_0 
              #                    occupy a3 with loop_29
    li      a3, 1
              #                    free a3
              #                          jump label: while.head_64 
              #                    store to loop_29 in mem offset legal
    sw      a3,248(sp)
              #                    release a3 with loop_29
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_44__59, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a4:Freed { symidx: temp_42_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_45_logic_59, tracked: true } |     s11:Freed { symidx: temp_43_cmp_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } |     s8:Freed { symidx: temp_40_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_41_array_ptr_59, tracked: true } | 
              #                          label while.head_64: 
.while.head_64:
              #                          new_var temp_46_cmp_63:i1 
              #                          temp_46_cmp_63 = icmp i32 Sgt loop_29, 0_0 
              #                    occupy a3 with loop_29
              #                    load from loop_29 in mem


    lw      a3,248(sp)
              #                    store to temp_44__59 in mem offset legal
    sb      a0,42(sp)
              #                    release a0 with temp_44__59
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    store to i_29 in mem offset legal
    sw      a1,244(sp)
              #                    release a1 with i_29
              #                    occupy a1 with temp_46_cmp_63
    slt     a1,a0,a3
              #                    free a3
              #                    free a0
              #                    free a1
              #                          br i1 temp_46_cmp_63, label while.body_64, label branch_false_60 
              #                    occupy a1 with temp_46_cmp_63
              #                    free a1
              #                    occupy a1 with temp_46_cmp_63
    bnez    a1, .while.body_64
              #                    free a1
              #                    store to loop_29 in mem offset legal
    sw      a3,248(sp)
              #                    release a3 with loop_29
              #                    store to temp_46_cmp_63 in mem offset legal
    sb      a1,40(sp)
              #                    release a1 with temp_46_cmp_63
              #                    occupy a1 with _anonymous_of_i_29_0
              #                    load from i_29 in mem


    lw      a1,244(sp)
              #                    occupy a0 with _anonymous_of_temp_44__59_0
              #                    load from temp_44__59 in mem
    lb      a0,42(sp)
    j       .branch_false_60
              #                    regtab     a1:Freed { symidx: temp_46_cmp_63, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: loop_29, tracked: true } |     a4:Freed { symidx: temp_42_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_45_logic_59, tracked: true } |     s11:Freed { symidx: temp_43_cmp_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } |     s8:Freed { symidx: temp_40_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_41_array_ptr_59, tracked: true } | 
              #                          label while.body_64: 
.while.body_64:
              #                          new_var temp_47_arithop_65:i32 
              #                          temp_47_arithop_65 = Sub i32 i_29, 1_0 
              #                    occupy a0 with i_29
              #                    load from i_29 in mem


    lw      a0,244(sp)
              #                    store to temp_46_cmp_63 in mem offset legal
    sb      a1,40(sp)
              #                    release a1 with temp_46_cmp_63
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_6_array_ptr_31 in mem offset legal
    sd      a2,232(sp)
              #                    release a2 with temp_6_array_ptr_31
              #                    occupy a2 with temp_47_arithop_65
              #                    regtab:    a0:Occupied { symidx: i_29, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_47_arithop_65, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: loop_29, tracked: true } |     a4:Freed { symidx: temp_42_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_45_logic_59, tracked: true } |     s11:Freed { symidx: temp_43_cmp_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } |     s8:Freed { symidx: temp_40_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_41_array_ptr_59, tracked: true } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_29 = i32 temp_47_arithop_65 
              #                    occupy a2 with temp_47_arithop_65
              #                    occupy a0 with i_29
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          new_var temp_48_array_ptr_65:ptr->i32 
              #                          temp_48_array_ptr_65 = getelementptr input_27:ptr->i32 [Some(i_29)] 
              #                    occupy a1 with temp_48_array_ptr_65
    li      a1, 0
              #                    store to i_29 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with i_29
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_47_arithop_65 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_47_arithop_65
              #                    occupy a2 with i_29
              #                    load from i_29 in mem


    lw      a2,244(sp)
              #                    store to loop_29 in mem offset legal
    sw      a3,248(sp)
              #                    release a3 with loop_29
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with input_27
              #                    load from input_27 in mem
    ld      a0,256(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_49_array_ele_65:i32 
              #                          temp_49_array_ele_65 = load temp_48_array_ptr_65:ptr->i32 
              #                    occupy a1 with temp_48_array_ptr_65
              #                    occupy a3 with temp_49_array_ele_65
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          cur_char_29 = i32 temp_49_array_ele_65 
              #                    occupy a3 with temp_49_array_ele_65
              #                    occupy s2 with cur_char_29
    mv      s2, a3
              #                    free a3
              #                    free s2
              #                          jump label: L3_0 
              #                    store to temp_49_array_ele_65 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_49_array_ele_65
    j       .L3_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: temp_48_array_ptr_65, tracked: true } |     a2:Freed { symidx: i_29, tracked: true } |     a4:Freed { symidx: temp_42_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_45_logic_59, tracked: true } |     s11:Freed { symidx: temp_43_cmp_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } |     s8:Freed { symidx: temp_40_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_41_array_ptr_59, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_50_cmp_68:i1 
              #                          temp_50_cmp_68 = icmp i32 Eq cur_char_29, 91_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a3 with 91_0
    li      a3, 91
              #                    store to input_27 in mem offset legal
    sd      a0,256(sp)
              #                    release a0 with input_27
              #                    occupy a0 with temp_50_cmp_68
    xor     a0,s2,a3
    seqz    a0, a0
              #                    free s2
              #                    free a3
              #                    free a0
              #                          br i1 temp_50_cmp_68, label branch_true_69, label branch_false_69 
              #                    occupy a0 with temp_50_cmp_68
              #                    free a0
              #                    occupy a0 with temp_50_cmp_68
    bnez    a0, .branch_true_69
              #                    free a0
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: temp_50_cmp_68, tracked: true } |     a1:Freed { symidx: temp_48_array_ptr_65, tracked: true } |     a2:Freed { symidx: i_29, tracked: true } |     a4:Freed { symidx: temp_42_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_45_logic_59, tracked: true } |     s11:Freed { symidx: temp_43_cmp_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } |     s8:Freed { symidx: temp_40_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_41_array_ptr_59, tracked: true } | 
              #                          label branch_true_69: 
.branch_true_69:
              #                          new_var temp_51_arithop_70:i32 
              #                          temp_51_arithop_70 = Sub i32 loop_29, 1_0 
              #                    occupy a3 with loop_29
              #                    load from loop_29 in mem


    lw      a3,248(sp)
              #                    store to temp_50_cmp_68 in mem offset legal
    sb      a0,19(sp)
              #                    release a0 with temp_50_cmp_68
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_48_array_ptr_65 in mem offset legal
    sd      a1,24(sp)
              #                    release a1 with temp_48_array_ptr_65
              #                    occupy a1 with temp_51_arithop_70
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_51_arithop_70, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: i_29, tracked: true } |     a3:Occupied { symidx: loop_29, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_42_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_45_logic_59, tracked: true } |     s11:Freed { symidx: temp_43_cmp_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } |     s8:Freed { symidx: temp_40_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_41_array_ptr_59, tracked: true } | 


    sub     a1,a3,a0
              #                    free a3
              #                    free a0
              #                    free a1
              #                          loop_29 = i32 temp_51_arithop_70 
              #                    occupy a1 with temp_51_arithop_70
              #                    occupy a3 with loop_29
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_50_cmp_68, tracked: true } |     a1:Freed { symidx: temp_48_array_ptr_65, tracked: true } |     a2:Freed { symidx: i_29, tracked: true } |     a4:Freed { symidx: temp_42_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_45_logic_59, tracked: true } |     s11:Freed { symidx: temp_43_cmp_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } |     s8:Freed { symidx: temp_40_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_41_array_ptr_59, tracked: true } | 
              #                          label branch_false_69: 
.branch_false_69:
              #                          new_var temp_52_cmp_72:i1 
              #                          temp_52_cmp_72 = icmp i32 Eq cur_char_29, 93_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a3 with 93_0
    li      a3, 93
              #                    store to temp_50_cmp_68 in mem offset legal
    sb      a0,19(sp)
              #                    release a0 with temp_50_cmp_68
              #                    occupy a0 with temp_52_cmp_72
    xor     a0,s2,a3
    seqz    a0, a0
              #                    free s2
              #                    free a3
              #                    free a0
              #                          br i1 temp_52_cmp_72, label branch_true_73, label branch_false_73 
              #                    occupy a0 with temp_52_cmp_72
              #                    free a0
              #                    occupy a0 with temp_52_cmp_72
    bnez    a0, .branch_true_73
              #                    free a0
    j       .branch_false_73
              #                    regtab     a0:Freed { symidx: temp_52_cmp_72, tracked: true } |     a1:Freed { symidx: temp_48_array_ptr_65, tracked: true } |     a2:Freed { symidx: i_29, tracked: true } |     a4:Freed { symidx: temp_42_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_45_logic_59, tracked: true } |     s11:Freed { symidx: temp_43_cmp_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } |     s8:Freed { symidx: temp_40_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_41_array_ptr_59, tracked: true } | 
              #                          label branch_true_73: 
.branch_true_73:
              #                          new_var temp_53_arithop_74:i32 
              #                          temp_53_arithop_74 = Add i32 loop_29, 1_0 
              #                    occupy a3 with loop_29
              #                    load from loop_29 in mem


    lw      a3,248(sp)
              #                    store to temp_52_cmp_72 in mem offset legal
    sb      a0,11(sp)
              #                    release a0 with temp_52_cmp_72
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_48_array_ptr_65 in mem offset legal
    sd      a1,24(sp)
              #                    release a1 with temp_48_array_ptr_65
              #                    occupy a1 with temp_53_arithop_74
    add     a1,a3,a0
              #                    free a3
              #                    free a0
              #                    free a1
              #                          loop_29 = i32 temp_53_arithop_74 
              #                    occupy a1 with temp_53_arithop_74
              #                    occupy a3 with loop_29
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                          jump label: branch_false_73 
              #                    store to loop_29 in mem offset legal
    sw      a3,248(sp)
              #                    release a3 with loop_29
              #                    store to temp_53_arithop_74 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_53_arithop_74
              #                    occupy a1 with _anonymous_of_temp_48_array_ptr_65_0
              #                    load from temp_48_array_ptr_65 in mem
    ld      a1,24(sp)
              #                    occupy a0 with _anonymous_of_temp_52_cmp_72_0
              #                    load from temp_52_cmp_72 in mem
    lb      a0,11(sp)
    j       .branch_false_73
              #                    regtab     a0:Freed { symidx: temp_52_cmp_72, tracked: true } |     a1:Freed { symidx: temp_48_array_ptr_65, tracked: true } |     a2:Freed { symidx: i_29, tracked: true } |     a4:Freed { symidx: temp_42_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_45_logic_59, tracked: true } |     s11:Freed { symidx: temp_43_cmp_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } |     s8:Freed { symidx: temp_40_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_41_array_ptr_59, tracked: true } | 
              #                          label branch_false_73: 
.branch_false_73:
              #                    regtab     a1:Freed { symidx: temp_51_arithop_70, tracked: true } |     a2:Freed { symidx: i_29, tracked: true } |     a3:Freed { symidx: loop_29, tracked: true } |     a4:Freed { symidx: temp_42_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_45_logic_59, tracked: true } |     s11:Freed { symidx: temp_43_cmp_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } |     s8:Freed { symidx: temp_40_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_41_array_ptr_59, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          jump label: while.head_64 
              #                    store to loop_29 in mem offset legal
    sw      a3,248(sp)
              #                    release a3 with loop_29
              #                    store to i_29 in mem offset legal
    sw      a2,244(sp)
              #                    release a2 with i_29
              #                    store to temp_51_arithop_70 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_51_arithop_70
              #                    occupy a2 with _anonymous_of_temp_6_array_ptr_31_0
              #                    load from temp_6_array_ptr_31 in mem
    ld      a2,232(sp)
              #                    occupy a1 with _anonymous_of_i_29_0
              #                    load from i_29 in mem


    lw      a1,244(sp)
              #                    occupy a0 with _anonymous_of_temp_44__59_0
              #                    load from temp_44__59 in mem
    lb      a0,42(sp)
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_44__59, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a4:Freed { symidx: temp_42_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_45_logic_59, tracked: true } |     s11:Freed { symidx: temp_43_cmp_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_32_cmp_51, tracked: true } |     s7:Freed { symidx: temp_36_cmp_55, tracked: true } |     s8:Freed { symidx: temp_40_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_41_array_ptr_59, tracked: true } | 
              #                          label branch_false_60: 
.branch_false_60:
              #                    regtab     a0:Freed { symidx: temp_39_ret_of_getch_57, tracked: true } |     a1:Freed { symidx: temp_38_index_ptr_57, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                    regtab 
              #                          label L6_0: 
.L6_0:
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a4:Freed { symidx: temp_28_ptr2globl_49, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s11:Freed { symidx: temp_31_arithop_49, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_25_cmp_47, tracked: true } |     s6:Freed { symidx: temp_26_ptr2globl_49, tracked: true } |     s7:Freed { symidx: temp_27_index_ptr_49, tracked: true } |     s8:Freed { symidx: temp_29_array_ptr_49, tracked: true } |     s9:Freed { symidx: temp_30_array_ele_49, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a4:Freed { symidx: temp_22_array_ptr_45, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s11:Freed { symidx: temp_21_ptr2globl_45, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_19_ptr2globl_45, tracked: true } |     s6:Freed { symidx: temp_20_index_ptr_45, tracked: true } |     s7:Freed { symidx: temp_23_array_ele_45, tracked: true } |     s9:Freed { symidx: temp_24_arithop_45, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_16_ptr2globl_41, tracked: true } |     s6:Freed { symidx: temp_17_arithop_41, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_12_ptr2globl_37, tracked: true } |     s5:Freed { symidx: temp_13_arithop_37, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_12_ptr2globl_37, tracked: true } |     s5:Freed { symidx: temp_13_arithop_37, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_14_arithop_33:i32 
              #                          temp_14_arithop_33 = Add i32 i_29, 1_0 
              #                    occupy a1 with i_29
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s4 with temp_14_arithop_33
    add     s4,a1,a4
              #                    free a1
              #                    free a4
              #                    free s4
              #                          i_29 = i32 temp_14_arithop_33 
              #                    occupy s4 with temp_14_arithop_33
              #                    occupy a1 with i_29
    mv      a1, s4
              #                    free s4
              #                    free a1
              #                          jump label: while.head_32 
              #                    store to temp_9_array_ptr_33 in mem offset legal
    sd      a3,216(sp)
              #                    release a3 with temp_9_array_ptr_33
              #                    store to temp_12_ptr2globl_37 in mem offset legal
    sw      s3,204(sp)
              #                    release s3 with temp_12_ptr2globl_37
              #                    store to temp_13_arithop_37 in mem offset legal
    sw      s5,200(sp)
              #                    release s5 with temp_13_arithop_37
              #                    store to temp_6_array_ptr_31 in mem offset legal
    sd      a2,232(sp)
              #                    release a2 with temp_6_array_ptr_31
              #                    store to temp_7_array_ele_31 in mem offset legal
    sw      a5,228(sp)
              #                    release a5 with temp_7_array_ele_31
              #                    store to temp_14_arithop_33 in mem offset legal
    sw      s4,196(sp)
              #                    release s4 with temp_14_arithop_33
              #                    store to temp_10_array_ele_33 in mem offset legal
    sw      s1,212(sp)
              #                    release s1 with temp_10_array_ele_33
              #                    store to cur_char_29 in mem offset legal
    sw      s2,252(sp)
              #                    release s2 with cur_char_29
              #                    store to temp_8__470 in mem offset legal
    sb      a7,227(sp)
              #                    release a7 with temp_8__470
              #                    store to temp_11_cmp_35 in mem offset legal
    sb      a6,211(sp)
              #                    release a6 with temp_11_cmp_35
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } | 
              #                          label while.exit_32: 
.while.exit_32:
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 8|s0_main:8 at 0
    addi    sp,sp,-16
              #                    store to ra_main_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                           Call void read_program_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    read_program
              #                           Call void interpret_0(*program_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*program_0_0
              #                       load label program as ptr to reg
    la      a0, program
              #                    arg load ended


    call    interpret
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl ptr
              #                          global i32 ptr_0 
    .type ptr,@object
ptr:
    .word 0
    .align 4
    .globl program
              #                          global Array:i32:[Some(32768_0)] program_0 
    .type program,@object
program:
    .zero 131072
    .align 4
    .globl tape
              #                          global Array:i32:[Some(65536_0)] tape_0 
    .type tape,@object
tape:
    .zero 262144
    .align 4
    .globl BUFFER_LEN
              #                          global i32 BUFFER_LEN_0 
    .type BUFFER_LEN,@object
BUFFER_LEN:
    .word 32768
    .align 4
    .globl TAPE_LEN
              #                          global i32 TAPE_LEN_0 
    .type TAPE_LEN,@object
TAPE_LEN:
    .word 65536
