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
              #                          temp_2_index_ptr_23 = getelementptr program_0:Array:i32:[Some(32768_0)] [Some(i_19)] 
              #                    occupy a4 with temp_2_index_ptr_23
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_19
              #                    occupy a6 with _anonymous_of_program_0_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with _anonymous_of_program_0_0
    la      a7, program
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
              #                          mu program_0:50 
              #                          program_0 = chi program_0:50 
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
              #                    store to i_19 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_19
              #                    store to temp_3_ret_of_getch_23 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_3_ret_of_getch_23
              #                    store to temp_2_index_ptr_23 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_2_index_ptr_23
              #                    store to temp_4_arithop_23 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_4_arithop_23
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getint_19_0
              #                    load from temp_0_ret_of_getint_19 in mem


    lw      a0,32(sp)
              #                    occupy a1 with _anonymous_of_len_19_0
              #                    load from len_19 in mem


    lw      a1,28(sp)
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19, tracked: true } |     a1:Freed { symidx: len_19, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_1_cmp_21, tracked: true } | 
              #                          label while.exit_22: 
.while.exit_22:
              #                          new_var temp_5_index_ptr_19:ptr->i32 
              #                          temp_5_index_ptr_19 = getelementptr program_0:Array:i32:[Some(32768_0)] [Some(i_19)] 
              #                    occupy a4 with temp_5_index_ptr_19
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_19
              #                    occupy a6 with _anonymous_of_program_0_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with _anonymous_of_program_0_0
    la      a7, program
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
              #                          mu program_0:60 
              #                          program_0 = chi program_0:60 
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getint_19, tracked: true } |     a1:Freed { symidx: len_19, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_1_cmp_21, tracked: true } |     a4:Freed { symidx: temp_5_index_ptr_19, tracked: true } | 
              #                    regtab 
              #                          Define interpret_0 [input_27] -> interpret_ret_0 
    .globl interpret
    .type interpret,@function
interpret:
              #                    mem layout:|ra_interpret:8 at 1048848|s0_interpret:8 at 1048840|input:8 at 1048832|cur_char:4 at 1048828|loop:4 at 1048824|i:4 at 1048820|none:4 at 1048816|temp_6_array_ptr:8 at 1048808|temp_7_array_ele:4 at 1048804|temp_8_:1 at 1048803|none:3 at 1048800|temp_9_array_ptr:8 at 1048792|temp_10_array_ele:4 at 1048788|temp_11_cmp:1 at 1048787|none:3 at 1048784|temp_12_ptr2globl:4 at 1048780|temp_13_arithop:4 at 1048776|temp_14_arithop:4 at 1048772|temp_15_cmp:1 at 1048771|none:3 at 1048768|temp_16_ptr2globl:4 at 1048764|temp_17_arithop:4 at 1048760|temp_18_cmp:1 at 1048759|none:3 at 1048756|temp_19_ptr2globl:4 at 1048752|temp_20_index_ptr:8 at 1048744|temp_21_ptr2globl:4 at 1048740|temp_22_ptr2globl:262144 at 786596|none:4 at 786592|temp_23_array_ptr:8 at 786584|temp_24_array_ele:4 at 786580|temp_25_arithop:4 at 786576|temp_26_cmp:1 at 786575|none:3 at 786572|temp_27_ptr2globl:4 at 786568|temp_28_index_ptr:8 at 786560|temp_29_ptr2globl:4 at 786556|temp_30_ptr2globl:262144 at 524412|none:4 at 524408|temp_31_array_ptr:8 at 524400|temp_32_array_ele:4 at 524396|temp_33_arithop:4 at 524392|temp_34_cmp:1 at 524391|none:3 at 524388|temp_35_ptr2globl:4 at 524384|temp_36_ptr2globl:262144 at 262240|temp_37_array_ptr:8 at 262232|temp_38_array_ele:4 at 262228|temp_39_cmp:1 at 262227|none:3 at 262224|temp_40_ptr2globl:4 at 262220|none:4 at 262216|temp_41_index_ptr:8 at 262208|temp_42_ret_of_getch:4 at 262204|temp_43_ptr2globl:4 at 262200|temp_44_ptr2globl:262144 at 56|temp_45_array_ptr:8 at 48|temp_46_array_ele:4 at 44|temp_47_cmp:1 at 43|temp_48_:1 at 42|temp_49_logic:1 at 41|temp_50_cmp:1 at 40|temp_51_arithop:4 at 36|none:4 at 32|temp_52_array_ptr:8 at 24|temp_53_array_ele:4 at 20|temp_54_cmp:1 at 19|none:3 at 16|temp_55_arithop:4 at 12|temp_56_cmp:1 at 11|none:3 at 8|temp_57_arithop:4 at 4|none:4 at 0
              #                    occupy a1 with -1048856_0
    li      a1, -1048856
    li      a1, -1048856
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_interpret_0 in mem offset_illegal
              #                    occupy a2 with 1048848_0
    li      a2, 1048848
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_interpret_0 in mem offset_illegal
              #                    occupy a3 with 1048840_0
    li      a3, 1048840
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 1048856_0
    li      a4, 1048856
    li      a4, 1048856
    add     s0,a4,sp
              #                    free a4
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
              #                          alloc Array:i32:[Some(65536_0)] temp_22_ptr2globl_45 
              #                          alloc ptr->i32 temp_23_array_ptr_45 
              #                          alloc i32 temp_24_array_ele_45 
              #                          alloc i32 temp_25_arithop_45 
              #                          alloc i1 temp_26_cmp_47 
              #                          alloc i32 temp_27_ptr2globl_49 
              #                          alloc ptr->i32 temp_28_index_ptr_49 
              #                          alloc i32 temp_29_ptr2globl_49 
              #                          alloc Array:i32:[Some(65536_0)] temp_30_ptr2globl_49 
              #                          alloc ptr->i32 temp_31_array_ptr_49 
              #                          alloc i32 temp_32_array_ele_49 
              #                          alloc i32 temp_33_arithop_49 
              #                          alloc i1 temp_34_cmp_51 
              #                          alloc i32 temp_35_ptr2globl_53 
              #                          alloc Array:i32:[Some(65536_0)] temp_36_ptr2globl_53 
              #                          alloc ptr->i32 temp_37_array_ptr_53 
              #                          alloc i32 temp_38_array_ele_53 
              #                          alloc i1 temp_39_cmp_55 
              #                          alloc i32 temp_40_ptr2globl_57 
              #                          alloc ptr->i32 temp_41_index_ptr_57 
              #                          alloc i32 temp_42_ret_of_getch_57 
              #                          alloc i32 temp_43_ptr2globl_59 
              #                          alloc Array:i32:[Some(65536_0)] temp_44_ptr2globl_59 
              #                          alloc ptr->i32 temp_45_array_ptr_59 
              #                          alloc i32 temp_46_array_ele_59 
              #                          alloc i1 temp_47_cmp_59 
              #                          alloc i1 temp_48__59 
              #                          alloc i1 temp_49_logic_59 
              #                          alloc i1 temp_50_cmp_63 
              #                          alloc i32 temp_51_arithop_65 
              #                          alloc ptr->i32 temp_52_array_ptr_65 
              #                          alloc i32 temp_53_array_ele_65 
              #                          alloc i1 temp_54_cmp_68 
              #                          alloc i32 temp_55_arithop_70 
              #                          alloc i1 temp_56_cmp_72 
              #                          alloc i32 temp_57_arithop_74 
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
              #                    occupy a4 with _anonymous_of_input_27_0
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
              #                    occupy a6 with _anonymous_of_input_27_0
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
              #                          temp_20_index_ptr_45 = getelementptr tape_0:Array:i32:[Some(65536_0)] [Some(temp_19_ptr2globl_45)] 
              #                    occupy s6 with temp_20_index_ptr_45
    li      s6, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s5 with temp_19_ptr2globl_45
              #                    occupy s8 with _anonymous_of_tape_0_0
    mul     s8,s7,s5
              #                    free s7
              #                    free s5
    add     s6,s6,s8
              #                    free s8
    slli s6,s6,2
              #                    occupy s9 with _anonymous_of_tape_0_0
    la      s9, tape
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
              #                          new_var temp_22_ptr2globl_45:Array:i32:[Some(65536_0)] 
              #                          temp_22_ptr2globl_45 = load *tape_0:ptr->i32 
              #                    occupy a4 with *tape_0
              #                       load label tape as ptr to reg
    la      a4, tape
              #                    occupy reg a4 with *tape_0
              #                    occupy s7 with temp_22_ptr2globl_45
    lw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                          new_var temp_23_array_ptr_45:ptr->i32 
              #                          temp_23_array_ptr_45 = getelementptr temp_22_ptr2globl_45:Array:i32:[Some(65536_0)] [Some(temp_21_ptr2globl_45)] 
              #                    occupy a4 with temp_23_array_ptr_45
    li      a4, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s11 with temp_21_ptr2globl_45
              #                    occupy s9 with _anonymous_of_temp_22_ptr2globl_45_0
    mul     s9,s8,s11
              #                    free s8
              #                    free s11
    add     a4,a4,s9
              #                    free s9
    slli a4,a4,2
    add     a4,a4,sp
              #                    occupy s8 with 786596_0
    li      s8, 786596
    li      s8, 786596
    add     a4,s8,a4
              #                    free s8
              #                    free a4
              #                          new_var temp_24_array_ele_45:i32 
              #                          temp_24_array_ele_45 = load temp_23_array_ptr_45:ptr->i32 
              #                    occupy a4 with temp_23_array_ptr_45
              #                    occupy s8 with temp_24_array_ele_45
    lw      s8,0(a4)
              #                    free s8
              #                    free a4
              #                          new_var temp_25_arithop_45:i32 
              #                          temp_25_arithop_45 = Add i32 temp_24_array_ele_45, 1_0 
              #                    occupy s8 with temp_24_array_ele_45
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with temp_25_arithop_45
    add     s10,s8,s9
              #                    free s8
              #                    free s9
              #                    free s10
              #                          store temp_25_arithop_45:i32 temp_20_index_ptr_45:ptr->i32 
              #                    occupy s6 with temp_20_index_ptr_45
              #                    occupy s10 with temp_25_arithop_45
    sw      s10,0(s6)
              #                    free s10
              #                    free s6
              #                          mu tape_0:147 
              #                          tape_0 = chi tape_0:147 
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } | 
              #                          label branch_false_44: 
.branch_false_44:
              #                          new_var temp_26_cmp_47:i1 
              #                          temp_26_cmp_47 = icmp i32 Eq cur_char_29, 45_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a4 with 45_0
    li      a4, 45
              #                    occupy s5 with temp_26_cmp_47
    xor     s5,s2,a4
    seqz    s5, s5
              #                    free s2
              #                    free a4
              #                    free s5
              #                          br i1 temp_26_cmp_47, label branch_true_48, label branch_false_48 
              #                    occupy s5 with temp_26_cmp_47
              #                    free s5
              #                    occupy s5 with temp_26_cmp_47
    bnez    s5, .branch_true_48
              #                    free s5
    j       .branch_false_48
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } | 
              #                          label branch_true_48: 
.branch_true_48:
              #                          new_var temp_27_ptr2globl_49:i32 
              #                          temp_27_ptr2globl_49 = load *ptr_0:ptr->i32 
              #                    occupy a4 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a4, ptr
              #                    occupy reg a4 with *ptr_0
              #                    occupy s6 with temp_27_ptr2globl_49
    lw      s6,0(a4)
              #                    free s6
              #                    free a4
              #                          new_var temp_28_index_ptr_49:ptr->i32 
              #                          temp_28_index_ptr_49 = getelementptr tape_0:Array:i32:[Some(65536_0)] [Some(temp_27_ptr2globl_49)] 
              #                    occupy s7 with temp_28_index_ptr_49
    li      s7, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s6 with temp_27_ptr2globl_49
              #                    occupy s9 with _anonymous_of_tape_0_0
    mul     s9,s8,s6
              #                    free s8
              #                    free s6
    add     s7,s7,s9
              #                    free s9
    slli s7,s7,2
              #                    occupy s10 with _anonymous_of_tape_0_0
    la      s10, tape
    add     s7,s7,s10
              #                    free s10
              #                    free s7
              #                          new_var temp_29_ptr2globl_49:i32 
              #                          temp_29_ptr2globl_49 = load *ptr_0:ptr->i32 
              #                    occupy s11 with *ptr_0
              #                       load label ptr as ptr to reg
    la      s11, ptr
              #                    occupy reg s11 with *ptr_0
              #                    occupy a4 with temp_29_ptr2globl_49
    lw      a4,0(s11)
              #                    free a4
              #                    free s11
              #                          new_var temp_30_ptr2globl_49:Array:i32:[Some(65536_0)] 
              #                          temp_30_ptr2globl_49 = load *tape_0:ptr->i32 
              #                    occupy s8 with *tape_0
              #                       load label tape as ptr to reg
    la      s8, tape
              #                    occupy reg s8 with *tape_0
              #                    occupy s9 with temp_30_ptr2globl_49
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_31_array_ptr_49:ptr->i32 
              #                          temp_31_array_ptr_49 = getelementptr temp_30_ptr2globl_49:Array:i32:[Some(65536_0)] [Some(temp_29_ptr2globl_49)] 
              #                    occupy s8 with temp_31_array_ptr_49
    li      s8, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy a4 with temp_29_ptr2globl_49
              #                    occupy s11 with _anonymous_of_temp_30_ptr2globl_49_0
    mul     s11,s10,a4
              #                    free s10
              #                    free a4
    add     s8,s8,s11
              #                    free s11
    slli s8,s8,2
    add     s8,s8,sp
              #                    occupy s10 with 524412_0
    li      s10, 524412
    li      s10, 524412
    add     s8,s10,s8
              #                    free s10
              #                    free s8
              #                          new_var temp_32_array_ele_49:i32 
              #                          temp_32_array_ele_49 = load temp_31_array_ptr_49:ptr->i32 
              #                    occupy s8 with temp_31_array_ptr_49
              #                    occupy s10 with temp_32_array_ele_49
    lw      s10,0(s8)
              #                    free s10
              #                    free s8
              #                          new_var temp_33_arithop_49:i32 
              #                          temp_33_arithop_49 = Sub i32 temp_32_array_ele_49, 1_0 
              #                    occupy s10 with temp_32_array_ele_49
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to input_27 in mem offset_illegal
              #                    occupy a0 with 1048832_0
    li      a0, 1048832
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with input_27
              #                    occupy a0 with temp_33_arithop_49
              #                    regtab:    a0:Occupied { symidx: temp_33_arithop_49, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a4:Freed { symidx: temp_29_ptr2globl_49, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Occupied { symidx: temp_32_array_ele_49, tracked: true, occupy_count: 1 } |     s11:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_27_ptr2globl_49, tracked: true } |     s7:Freed { symidx: temp_28_index_ptr_49, tracked: true } |     s8:Freed { symidx: temp_31_array_ptr_49, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_49, tracked: true } | 


    sub     a0,s10,s11
              #                    free s10
              #                    free s11
              #                    free a0
              #                          store temp_33_arithop_49:i32 temp_28_index_ptr_49:ptr->i32 
              #                    occupy s7 with temp_28_index_ptr_49
              #                    occupy a0 with temp_33_arithop_49
    sw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          mu tape_0:177 
              #                          tape_0 = chi tape_0:177 
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } | 
              #                          label branch_false_48: 
.branch_false_48:
              #                          new_var temp_34_cmp_51:i1 
              #                          temp_34_cmp_51 = icmp i32 Eq cur_char_29, 46_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a4 with 46_0
    li      a4, 46
              #                    occupy s6 with temp_34_cmp_51
    xor     s6,s2,a4
    seqz    s6, s6
              #                    free s2
              #                    free a4
              #                    free s6
              #                          br i1 temp_34_cmp_51, label branch_true_52, label branch_false_52 
              #                    occupy s6 with temp_34_cmp_51
              #                    free s6
              #                    occupy s6 with temp_34_cmp_51
    bnez    s6, .branch_true_52
              #                    free s6
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } | 
              #                          label branch_true_52: 
.branch_true_52:
              #                          new_var temp_35_ptr2globl_53:i32 
              #                          temp_35_ptr2globl_53 = load *ptr_0:ptr->i32 
              #                    occupy a4 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a4, ptr
              #                    occupy reg a4 with *ptr_0
              #                    occupy s7 with temp_35_ptr2globl_53
    lw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                          new_var temp_36_ptr2globl_53:Array:i32:[Some(65536_0)] 
              #                          temp_36_ptr2globl_53 = load *tape_0:ptr->i32 
              #                    occupy s8 with *tape_0
              #                       load label tape as ptr to reg
    la      s8, tape
              #                    occupy reg s8 with *tape_0
              #                    occupy s9 with temp_36_ptr2globl_53
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_37_array_ptr_53:ptr->i32 
              #                          temp_37_array_ptr_53 = getelementptr temp_36_ptr2globl_53:Array:i32:[Some(65536_0)] [Some(temp_35_ptr2globl_53)] 
              #                    occupy s10 with temp_37_array_ptr_53
    li      s10, 0
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy s7 with temp_35_ptr2globl_53
              #                    occupy a4 with _anonymous_of_temp_36_ptr2globl_53_0
    mul     a4,s11,s7
              #                    free s11
              #                    free s7
    add     s10,s10,a4
              #                    free a4
    slli s10,s10,2
    add     s10,s10,sp
              #                    occupy a4 with 262240_0
    li      a4, 262240
    li      a4, 262240
    add     s10,a4,s10
              #                    free a4
              #                    free s10
              #                          new_var temp_38_array_ele_53:i32 
              #                          temp_38_array_ele_53 = load temp_37_array_ptr_53:ptr->i32 
              #                    occupy s10 with temp_37_array_ptr_53
              #                    occupy a4 with temp_38_array_ele_53
    lw      a4,0(s10)
              #                    free a4
              #                    free s10
              #                           Call void putch_0(temp_38_array_ele_53) 
              #                    saved register dumping to mem
              #                    store to temp_10_array_ele_33 in mem offset_illegal
              #                    occupy s1 with 1048788_0
    li      s1, 1048788
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_10_array_ele_33
              #                    store to cur_char_29 in mem offset_illegal
              #                    occupy s1 with 1048828_0
    li      s1, 1048828
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with cur_char_29
              #                    store to temp_15_cmp_39 in mem offset_illegal
              #                    occupy s2 with 1048771_0
    li      s2, 1048771
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_15_cmp_39
              #                    store to temp_18_cmp_43 in mem offset_illegal
              #                    occupy s3 with 1048759_0
    li      s3, 1048759
    add     s3,sp,s3
    sb      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_18_cmp_43
              #                    store to temp_26_cmp_47 in mem offset_illegal
              #                    occupy s4 with 786575_0
    li      s4, 786575
    add     s4,sp,s4
    sb      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_26_cmp_47
              #                    store to temp_34_cmp_51 in mem offset_illegal
              #                    occupy s5 with 524391_0
    li      s5, 524391
    add     s5,sp,s5
    sb      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_34_cmp_51
              #                    store to temp_35_ptr2globl_53 in mem offset_illegal
              #                    occupy s6 with 524384_0
    li      s6, 524384
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_35_ptr2globl_53
              #                    store to temp_36_ptr2globl_53 in mem offset_illegal
              #                    occupy s7 with 262240_0
    li      s7, 262240
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_36_ptr2globl_53
              #                    store to temp_37_array_ptr_53 in mem offset_illegal
              #                    occupy s8 with 262232_0
    li      s8, 262232
    add     s8,sp,s8
    sd      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_37_array_ptr_53
              #                    store to input_27 in mem offset_illegal
              #                    occupy a0 with 1048832_0
    li      a0, 1048832
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with input_27
              #                    store to i_29 in mem offset_illegal
              #                    occupy a0 with 1048820_0
    li      a0, 1048820
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with i_29
              #                    store to temp_6_array_ptr_31 in mem offset_illegal
              #                    occupy a1 with 1048808_0
    li      a1, 1048808
    add     a1,sp,a1
    sd      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_6_array_ptr_31
              #                    store to temp_9_array_ptr_33 in mem offset_illegal
              #                    occupy a2 with 1048792_0
    li      a2, 1048792
    add     a2,sp,a2
    sd      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_9_array_ptr_33
              #                    store to temp_38_array_ele_53 in mem offset_illegal
              #                    occupy a3 with 262228_0
    li      a3, 262228
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_38_array_ele_53
              #                    store to temp_7_array_ele_31 in mem offset_illegal
              #                    occupy a4 with 1048804_0
    li      a4, 1048804
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_7_array_ele_31
              #                    store to temp_11_cmp_35 in mem offset_illegal
              #                    occupy a5 with 1048787_0
    li      a5, 1048787
    add     a5,sp,a5
    sb      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_11_cmp_35
              #                    store to temp_8__470 in mem offset_illegal
              #                    occupy a6 with 1048803_0
    li      a6, 1048803
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_8__470
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_38_array_ele_53_0
              #                    load from temp_38_array_ele_53 in mem

              #                    occupy a7 with temp_38_array_ele_53
    li      a7, 262228
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    arg load ended


    call    putch
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } | 
              #                          label branch_false_52: 
.branch_false_52:
              #                          new_var temp_39_cmp_55:i1 
              #                          temp_39_cmp_55 = icmp i32 Eq cur_char_29, 44_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a4 with 44_0
    li      a4, 44
              #                    occupy s7 with temp_39_cmp_55
    xor     s7,s2,a4
    seqz    s7, s7
              #                    free s2
              #                    free a4
              #                    free s7
              #                          br i1 temp_39_cmp_55, label branch_true_56, label branch_false_56 
              #                    occupy s7 with temp_39_cmp_55
              #                    free s7
              #                    occupy s7 with temp_39_cmp_55
    bnez    s7, .branch_true_56
              #                    free s7
    j       .branch_false_56
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } | 
              #                          label branch_true_56: 
.branch_true_56:
              #                          new_var temp_40_ptr2globl_57:i32 
              #                          temp_40_ptr2globl_57 = load *ptr_0:ptr->i32 
              #                    occupy a4 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a4, ptr
              #                    occupy reg a4 with *ptr_0
              #                    occupy s8 with temp_40_ptr2globl_57
    lw      s8,0(a4)
              #                    free s8
              #                    free a4
              #                          new_var temp_41_index_ptr_57:ptr->i32 
              #                          temp_41_index_ptr_57 = getelementptr tape_0:Array:i32:[Some(65536_0)] [Some(temp_40_ptr2globl_57)] 
              #                    occupy s9 with temp_41_index_ptr_57
    li      s9, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s8 with temp_40_ptr2globl_57
              #                    occupy s11 with _anonymous_of_tape_0_0
    mul     s11,s10,s8
              #                    free s10
              #                    free s8
    add     s9,s9,s11
              #                    free s11
    slli s9,s9,2
              #                    occupy a4 with _anonymous_of_tape_0_0
    la      a4, tape
    add     s9,s9,a4
              #                    free a4
              #                    free s9
              #                          new_var temp_42_ret_of_getch_57:i32 
              #                          temp_42_ret_of_getch_57 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_10_array_ele_33 in mem offset_illegal
              #                    occupy s1 with 1048788_0
    li      s1, 1048788
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_10_array_ele_33
              #                    store to cur_char_29 in mem offset_illegal
              #                    occupy s1 with 1048828_0
    li      s1, 1048828
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with cur_char_29
              #                    store to temp_15_cmp_39 in mem offset_illegal
              #                    occupy s2 with 1048771_0
    li      s2, 1048771
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_15_cmp_39
              #                    store to temp_18_cmp_43 in mem offset_illegal
              #                    occupy s3 with 1048759_0
    li      s3, 1048759
    add     s3,sp,s3
    sb      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_18_cmp_43
              #                    store to temp_26_cmp_47 in mem offset_illegal
              #                    occupy s4 with 786575_0
    li      s4, 786575
    add     s4,sp,s4
    sb      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_26_cmp_47
              #                    store to temp_34_cmp_51 in mem offset_illegal
              #                    occupy s5 with 524391_0
    li      s5, 524391
    add     s5,sp,s5
    sb      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_34_cmp_51
              #                    store to temp_39_cmp_55 in mem offset_illegal
              #                    occupy s6 with 262227_0
    li      s6, 262227
    add     s6,sp,s6
    sb      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_39_cmp_55
              #                    store to temp_40_ptr2globl_57 in mem offset_illegal
              #                    occupy s7 with 262220_0
    li      s7, 262220
    add     s7,sp,s7
    sw      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_40_ptr2globl_57
              #                    store to temp_41_index_ptr_57 in mem offset_illegal
              #                    occupy s8 with 262208_0
    li      s8, 262208
    add     s8,sp,s8
    sd      s9,0(s8)
              #                    free s8
              #                    release s9 with temp_41_index_ptr_57
              #                    store to input_27 in mem offset_illegal
              #                    occupy a0 with 1048832_0
    li      a0, 1048832
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with input_27
              #                    store to i_29 in mem offset_illegal
              #                    occupy a0 with 1048820_0
    li      a0, 1048820
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with i_29
              #                    store to temp_6_array_ptr_31 in mem offset_illegal
              #                    occupy a1 with 1048808_0
    li      a1, 1048808
    add     a1,sp,a1
    sd      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_6_array_ptr_31
              #                    store to temp_9_array_ptr_33 in mem offset_illegal
              #                    occupy a2 with 1048792_0
    li      a2, 1048792
    add     a2,sp,a2
    sd      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_9_array_ptr_33
              #                    store to temp_7_array_ele_31 in mem offset_illegal
              #                    occupy a3 with 1048804_0
    li      a3, 1048804
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_7_array_ele_31
              #                    store to temp_11_cmp_35 in mem offset_illegal
              #                    occupy a4 with 1048787_0
    li      a4, 1048787
    add     a4,sp,a4
    sb      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_11_cmp_35
              #                    store to temp_8__470 in mem offset_illegal
              #                    occupy a5 with 1048803_0
    li      a5, 1048803
    add     a5,sp,a5
    sb      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_8__470
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_42_ret_of_getch_57 in mem offset_illegal
              #                    occupy a0 with 262204_0
    li      a0, 262204
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_42_ret_of_getch_57:i32 temp_41_index_ptr_57:ptr->i32 
              #                    occupy a6 with temp_41_index_ptr_57
              #                    load from temp_41_index_ptr_57 in mem
              #                    occupy a6 with temp_41_index_ptr_57
    add     a6,sp,a6
    ld      a6,0(a6)
              #                    free a6
              #                    occupy a0 with temp_42_ret_of_getch_57
    sw      a0,0(a6)
              #                    free a0
              #                    free a6
              #                          mu tape_0:214 
              #                          tape_0 = chi tape_0:214 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } | 
              #                          label branch_false_56: 
.branch_false_56:
              #                          new_var temp_43_ptr2globl_59:i32 
              #                          temp_43_ptr2globl_59 = load *ptr_0:ptr->i32 
              #                    occupy a4 with *ptr_0
              #                       load label ptr as ptr to reg
    la      a4, ptr
              #                    occupy reg a4 with *ptr_0
              #                    occupy s8 with temp_43_ptr2globl_59
    lw      s8,0(a4)
              #                    free s8
              #                    free a4
              #                          new_var temp_44_ptr2globl_59:Array:i32:[Some(65536_0)] 
              #                          temp_44_ptr2globl_59 = load *tape_0:ptr->i32 
              #                    occupy s9 with *tape_0
              #                       load label tape as ptr to reg
    la      s9, tape
              #                    occupy reg s9 with *tape_0
              #                    occupy s10 with temp_44_ptr2globl_59
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          new_var temp_45_array_ptr_59:ptr->i32 
              #                          temp_45_array_ptr_59 = getelementptr temp_44_ptr2globl_59:Array:i32:[Some(65536_0)] [Some(temp_43_ptr2globl_59)] 
              #                    occupy s11 with temp_45_array_ptr_59
    li      s11, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s8 with temp_43_ptr2globl_59
              #                    occupy s9 with _anonymous_of_temp_44_ptr2globl_59_0
    mul     s9,a4,s8
              #                    free a4
              #                    free s8
    add     s11,s11,s9
              #                    free s9
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,56
              #                    free s11
              #                          new_var temp_46_array_ele_59:i32 
              #                          temp_46_array_ele_59 = load temp_45_array_ptr_59:ptr->i32 
              #                    occupy s11 with temp_45_array_ptr_59
              #                    occupy a4 with temp_46_array_ele_59
    lw      a4,0(s11)
              #                    free a4
              #                    free s11
              #                          new_var temp_47_cmp_59:i1 
              #                          temp_47_cmp_59 = icmp i32 Eq cur_char_29, 93_0 
              #                    occupy s2 with cur_char_29
              #                    occupy s9 with 93_0
    li      s9, 93
              #                    store to input_27 in mem offset_illegal
              #                    occupy a0 with 1048832_0
    li      a0, 1048832
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with input_27
              #                    occupy a0 with temp_47_cmp_59
    xor     a0,s2,s9
    seqz    a0, a0
              #                    free s2
              #                    free s9
              #                    free a0
              #                          new_var temp_48__59:i1 
              #                          temp_48__59 = icmp i32 Ne temp_46_array_ele_59, 0_0 
              #                    occupy a4 with temp_46_array_ele_59
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    store to temp_47_cmp_59 in mem offset legal
    sb      a0,43(sp)
              #                    release a0 with temp_47_cmp_59
              #                    occupy a0 with temp_48__59
    xor     a0,a4,s9
    snez    a0, a0
              #                    free a4
              #                    free s9
              #                    free a0
              #                          new_var temp_49_logic_59:i1 
              #                          temp_49_logic_59 = And i1 temp_47_cmp_59, temp_48__59 
              #                    occupy s9 with temp_47_cmp_59
              #                    load from temp_47_cmp_59 in mem
    lb      s9,43(sp)
              #                    occupy a0 with temp_48__59
              #                    store to i_29 in mem offset_illegal
              #                    occupy a1 with 1048820_0
    li      a1, 1048820
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with i_29
              #                    occupy a1 with temp_49_logic_59
    and     a1,s9,a0
              #                    free s9
              #                    free a0
              #                    free a1
              #                          br i1 temp_49_logic_59, label branch_true_60, label branch_false_60 
              #                    occupy a1 with temp_49_logic_59
              #                    free a1
              #                    store to temp_6_array_ptr_31 in mem offset_illegal
              #                    occupy a2 with 1048808_0
    li      a2, 1048808
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_6_array_ptr_31
              #                    occupy a1 with temp_49_logic_59
    bnez    a1, .branch_true_60
              #                    free a1
    j       .branch_false_60
              #                    regtab     a0:Freed { symidx: temp_48__59, tracked: true } |     a1:Freed { symidx: temp_49_logic_59, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a4:Freed { symidx: temp_46_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_44_ptr2globl_59, tracked: true } |     s11:Freed { symidx: temp_45_array_ptr_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } |     s8:Freed { symidx: temp_43_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_47_cmp_59, tracked: true } | 
              #                          label branch_true_60: 
.branch_true_60:
              #                          loop_29 = i32 1_0 
              #                    occupy a2 with loop_29
    li      a2, 1
              #                    free a2
              #                          jump label: while.head_64 
              #                    store to loop_29 in mem offset_illegal
              #                    occupy a2 with 1048824_0
    li      a2, 1048824
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with loop_29
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_48__59, tracked: true } |     a1:Freed { symidx: temp_49_logic_59, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a4:Freed { symidx: temp_46_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_44_ptr2globl_59, tracked: true } |     s11:Freed { symidx: temp_45_array_ptr_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } |     s8:Freed { symidx: temp_43_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_47_cmp_59, tracked: true } | 
              #                          label while.head_64: 
.while.head_64:
              #                          new_var temp_50_cmp_63:i1 
              #                          temp_50_cmp_63 = icmp i32 Sgt loop_29, 0_0 
              #                    occupy a2 with loop_29
              #                    load from loop_29 in mem

              #                    occupy a2 with loop_29
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_48__59 in mem offset legal
    sb      a0,42(sp)
              #                    release a0 with temp_48__59
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    store to temp_49_logic_59 in mem offset legal
    sb      a1,41(sp)
              #                    release a1 with temp_49_logic_59
              #                    occupy a1 with temp_50_cmp_63
    slt     a1,a0,a2
              #                    free a2
              #                    free a0
              #                    free a1
              #                          br i1 temp_50_cmp_63, label while.body_64, label branch_false_60 
              #                    occupy a1 with temp_50_cmp_63
              #                    free a1
              #                    occupy a1 with temp_50_cmp_63
    bnez    a1, .while.body_64
              #                    free a1
              #                    store to loop_29 in mem offset_illegal
              #                    occupy a0 with 1048824_0
    li      a0, 1048824
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with loop_29
              #                    store to temp_50_cmp_63 in mem offset legal
    sb      a1,40(sp)
              #                    release a1 with temp_50_cmp_63
              #                    occupy a0 with _anonymous_of_temp_48__59_0
              #                    load from temp_48__59 in mem
    lb      a0,42(sp)
              #                    occupy a1 with _anonymous_of_temp_49_logic_59_0
              #                    load from temp_49_logic_59 in mem
    lb      a1,41(sp)
    j       .branch_false_60
              #                    regtab     a1:Freed { symidx: temp_50_cmp_63, tracked: true } |     a2:Freed { symidx: loop_29, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a4:Freed { symidx: temp_46_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_44_ptr2globl_59, tracked: true } |     s11:Freed { symidx: temp_45_array_ptr_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } |     s8:Freed { symidx: temp_43_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_47_cmp_59, tracked: true } | 
              #                          label while.body_64: 
.while.body_64:
              #                          new_var temp_51_arithop_65:i32 
              #                          temp_51_arithop_65 = Sub i32 i_29, 1_0 
              #                    occupy a0 with i_29
              #                    load from i_29 in mem

              #                    occupy a0 with i_29
    add     a0,sp,a0
    lw      a0,0(a0)
              #                    free a0
              #                    store to temp_50_cmp_63 in mem offset legal
    sb      a1,40(sp)
              #                    release a1 with temp_50_cmp_63
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to loop_29 in mem offset_illegal
              #                    occupy a2 with 1048824_0
    li      a2, 1048824
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with loop_29
              #                    occupy a2 with temp_51_arithop_65
              #                    regtab:    a0:Occupied { symidx: i_29, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_51_arithop_65, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a4:Freed { symidx: temp_46_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_44_ptr2globl_59, tracked: true } |     s11:Freed { symidx: temp_45_array_ptr_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } |     s8:Freed { symidx: temp_43_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_47_cmp_59, tracked: true } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_29 = i32 temp_51_arithop_65 
              #                    occupy a2 with temp_51_arithop_65
              #                    occupy a0 with i_29
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          new_var temp_52_array_ptr_65:ptr->i32 
              #                          temp_52_array_ptr_65 = getelementptr input_27:ptr->i32 [Some(i_29)] 
              #                    occupy a1 with temp_52_array_ptr_65
    li      a1, 0
              #                    store to i_29 in mem offset_illegal
              #                    occupy a0 with 1048820_0
    li      a0, 1048820
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_29
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_51_arithop_65 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_51_arithop_65
              #                    occupy a2 with i_29
              #                    load from i_29 in mem

              #                    occupy a2 with i_29
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_9_array_ptr_33 in mem offset_illegal
              #                    occupy a3 with 1048792_0
    li      a3, 1048792
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_9_array_ptr_33
              #                    occupy a3 with _anonymous_of_input_27_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with input_27
              #                    load from input_27 in mem
              #                    occupy a0 with input_27
    add     a0,sp,a0
    ld      a0,0(a0)
              #                    free a0
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_53_array_ele_65:i32 
              #                          temp_53_array_ele_65 = load temp_52_array_ptr_65:ptr->i32 
              #                    occupy a1 with temp_52_array_ptr_65
              #                    occupy a3 with temp_53_array_ele_65
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          cur_char_29 = i32 temp_53_array_ele_65 
              #                    occupy a3 with temp_53_array_ele_65
              #                    occupy s2 with cur_char_29
    mv      s2, a3
              #                    free a3
              #                    free s2
              #                          jump label: L3_0 
              #                    store to i_29 in mem offset_illegal
              #                    occupy a2 with 1048820_0
    li      a2, 1048820
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_29
    j       .L3_0
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: temp_52_array_ptr_65, tracked: true } |     a3:Freed { symidx: temp_53_array_ele_65, tracked: true } |     a4:Freed { symidx: temp_46_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_44_ptr2globl_59, tracked: true } |     s11:Freed { symidx: temp_45_array_ptr_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } |     s8:Freed { symidx: temp_43_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_47_cmp_59, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_54_cmp_68:i1 
              #                          temp_54_cmp_68 = icmp i32 Eq cur_char_29, 91_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a2 with 91_0
    li      a2, 91
              #                    store to input_27 in mem offset_illegal
              #                    occupy a0 with 1048832_0
    li      a0, 1048832
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with input_27
              #                    occupy a0 with temp_54_cmp_68
    xor     a0,s2,a2
    seqz    a0, a0
              #                    free s2
              #                    free a2
              #                    free a0
              #                          br i1 temp_54_cmp_68, label branch_true_69, label branch_false_69 
              #                    occupy a0 with temp_54_cmp_68
              #                    free a0
              #                    occupy a0 with temp_54_cmp_68
    bnez    a0, .branch_true_69
              #                    free a0
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: temp_54_cmp_68, tracked: true } |     a1:Freed { symidx: temp_52_array_ptr_65, tracked: true } |     a3:Freed { symidx: temp_53_array_ele_65, tracked: true } |     a4:Freed { symidx: temp_46_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_44_ptr2globl_59, tracked: true } |     s11:Freed { symidx: temp_45_array_ptr_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } |     s8:Freed { symidx: temp_43_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_47_cmp_59, tracked: true } | 
              #                          label branch_true_69: 
.branch_true_69:
              #                          new_var temp_55_arithop_70:i32 
              #                          temp_55_arithop_70 = Sub i32 loop_29, 1_0 
              #                    occupy a2 with loop_29
              #                    load from loop_29 in mem

              #                    occupy a2 with loop_29
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_54_cmp_68 in mem offset legal
    sb      a0,19(sp)
              #                    release a0 with temp_54_cmp_68
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_52_array_ptr_65 in mem offset legal
    sd      a1,24(sp)
              #                    release a1 with temp_52_array_ptr_65
              #                    occupy a1 with temp_55_arithop_70
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_55_arithop_70, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: loop_29, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_53_array_ele_65, tracked: true } |     a4:Freed { symidx: temp_46_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_44_ptr2globl_59, tracked: true } |     s11:Freed { symidx: temp_45_array_ptr_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } |     s8:Freed { symidx: temp_43_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_47_cmp_59, tracked: true } | 


    sub     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          loop_29 = i32 temp_55_arithop_70 
              #                    occupy a1 with temp_55_arithop_70
              #                    occupy a2 with loop_29
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_54_cmp_68, tracked: true } |     a1:Freed { symidx: temp_52_array_ptr_65, tracked: true } |     a3:Freed { symidx: temp_53_array_ele_65, tracked: true } |     a4:Freed { symidx: temp_46_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_44_ptr2globl_59, tracked: true } |     s11:Freed { symidx: temp_45_array_ptr_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } |     s8:Freed { symidx: temp_43_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_47_cmp_59, tracked: true } | 
              #                          label branch_false_69: 
.branch_false_69:
              #                          new_var temp_56_cmp_72:i1 
              #                          temp_56_cmp_72 = icmp i32 Eq cur_char_29, 93_0 
              #                    occupy s2 with cur_char_29
              #                    occupy a2 with 93_0
    li      a2, 93
              #                    store to temp_54_cmp_68 in mem offset legal
    sb      a0,19(sp)
              #                    release a0 with temp_54_cmp_68
              #                    occupy a0 with temp_56_cmp_72
    xor     a0,s2,a2
    seqz    a0, a0
              #                    free s2
              #                    free a2
              #                    free a0
              #                          br i1 temp_56_cmp_72, label branch_true_73, label branch_false_73 
              #                    occupy a0 with temp_56_cmp_72
              #                    free a0
              #                    occupy a0 with temp_56_cmp_72
    bnez    a0, .branch_true_73
              #                    free a0
    j       .branch_false_73
              #                    regtab     a0:Freed { symidx: temp_56_cmp_72, tracked: true } |     a1:Freed { symidx: temp_52_array_ptr_65, tracked: true } |     a3:Freed { symidx: temp_53_array_ele_65, tracked: true } |     a4:Freed { symidx: temp_46_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_44_ptr2globl_59, tracked: true } |     s11:Freed { symidx: temp_45_array_ptr_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } |     s8:Freed { symidx: temp_43_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_47_cmp_59, tracked: true } | 
              #                          label branch_true_73: 
.branch_true_73:
              #                          new_var temp_57_arithop_74:i32 
              #                          temp_57_arithop_74 = Add i32 loop_29, 1_0 
              #                    occupy a2 with loop_29
              #                    load from loop_29 in mem

              #                    occupy a2 with loop_29
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_56_cmp_72 in mem offset legal
    sb      a0,11(sp)
              #                    release a0 with temp_56_cmp_72
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_52_array_ptr_65 in mem offset legal
    sd      a1,24(sp)
              #                    release a1 with temp_52_array_ptr_65
              #                    occupy a1 with temp_57_arithop_74
    add     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          loop_29 = i32 temp_57_arithop_74 
              #                    occupy a1 with temp_57_arithop_74
              #                    occupy a2 with loop_29
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          jump label: branch_false_73 
              #                    store to loop_29 in mem offset_illegal
              #                    occupy a2 with 1048824_0
    li      a2, 1048824
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with loop_29
              #                    store to temp_57_arithop_74 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_57_arithop_74
              #                    occupy a0 with _anonymous_of_temp_56_cmp_72_0
              #                    load from temp_56_cmp_72 in mem
    lb      a0,11(sp)
              #                    occupy a1 with _anonymous_of_temp_52_array_ptr_65_0
              #                    load from temp_52_array_ptr_65 in mem
    ld      a1,24(sp)
    j       .branch_false_73
              #                    regtab     a0:Freed { symidx: temp_56_cmp_72, tracked: true } |     a1:Freed { symidx: temp_52_array_ptr_65, tracked: true } |     a3:Freed { symidx: temp_53_array_ele_65, tracked: true } |     a4:Freed { symidx: temp_46_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_44_ptr2globl_59, tracked: true } |     s11:Freed { symidx: temp_45_array_ptr_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } |     s8:Freed { symidx: temp_43_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_47_cmp_59, tracked: true } | 
              #                          label branch_false_73: 
.branch_false_73:
              #                    regtab     a1:Freed { symidx: temp_55_arithop_70, tracked: true } |     a2:Freed { symidx: loop_29, tracked: true } |     a3:Freed { symidx: temp_53_array_ele_65, tracked: true } |     a4:Freed { symidx: temp_46_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_44_ptr2globl_59, tracked: true } |     s11:Freed { symidx: temp_45_array_ptr_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } |     s8:Freed { symidx: temp_43_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_47_cmp_59, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          jump label: while.head_64 
              #                    store to loop_29 in mem offset_illegal
              #                    occupy a0 with 1048824_0
    li      a0, 1048824
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with loop_29
              #                    store to temp_55_arithop_70 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_55_arithop_70
              #                    store to temp_53_array_ele_65 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_53_array_ele_65
              #                    occupy a0 with _anonymous_of_temp_48__59_0
              #                    load from temp_48__59 in mem
    lb      a0,42(sp)
              #                    occupy a1 with _anonymous_of_temp_49_logic_59_0
              #                    load from temp_49_logic_59 in mem
    lb      a1,41(sp)
              #                    occupy a3 with _anonymous_of_temp_9_array_ptr_33_0
              #                    load from temp_9_array_ptr_33 in mem
              #                    occupy a2 with temp_9_array_ptr_33
    li      a2, 1048792
    add     a2,sp,a2
    ld      a3,0(a2)
              #                    free a2
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_48__59, tracked: true } |     a1:Freed { symidx: temp_49_logic_59, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a4:Freed { symidx: temp_46_array_ele_59, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_44_ptr2globl_59, tracked: true } |     s11:Freed { symidx: temp_45_array_ptr_59, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_34_cmp_51, tracked: true } |     s7:Freed { symidx: temp_39_cmp_55, tracked: true } |     s8:Freed { symidx: temp_43_ptr2globl_59, tracked: true } |     s9:Freed { symidx: temp_47_cmp_59, tracked: true } | 
              #                          label branch_false_60: 
.branch_false_60:
              #                    regtab     a0:Freed { symidx: temp_42_ret_of_getch_57, tracked: true } |     a6:Freed { symidx: temp_41_index_ptr_57, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                    regtab     a7:Freed { symidx: temp_38_array_ele_53, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                    regtab     a0:Freed { symidx: temp_33_arithop_49, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a4:Freed { symidx: temp_29_ptr2globl_49, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_32_array_ele_49, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_26_cmp_47, tracked: true } |     s6:Freed { symidx: temp_27_ptr2globl_49, tracked: true } |     s7:Freed { symidx: temp_28_index_ptr_49, tracked: true } |     s8:Freed { symidx: temp_31_array_ptr_49, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_49, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a3:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a4:Freed { symidx: temp_23_array_ptr_45, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a6:Freed { symidx: temp_11_cmp_35, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } |     s10:Freed { symidx: temp_25_arithop_45, tracked: true } |     s11:Freed { symidx: temp_21_ptr2globl_45, tracked: true } |     s1:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s2:Freed { symidx: cur_char_29, tracked: true } |     s3:Freed { symidx: temp_15_cmp_39, tracked: true } |     s4:Freed { symidx: temp_18_cmp_43, tracked: true } |     s5:Freed { symidx: temp_19_ptr2globl_45, tracked: true } |     s6:Freed { symidx: temp_20_index_ptr_45, tracked: true } |     s7:Freed { symidx: temp_22_ptr2globl_45, tracked: true } |     s8:Freed { symidx: temp_24_array_ele_45, tracked: true } | 
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
              #                    store to temp_6_array_ptr_31 in mem offset_illegal
              #                    occupy a2 with 1048808_0
    li      a2, 1048808
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_6_array_ptr_31
              #                    store to temp_11_cmp_35 in mem offset_illegal
              #                    occupy a2 with 1048787_0
    li      a2, 1048787
    add     a2,sp,a2
    sb      a6,0(a2)
              #                    free a2
              #                    release a6 with temp_11_cmp_35
              #                    store to temp_8__470 in mem offset_illegal
              #                    occupy a6 with 1048803_0
    li      a6, 1048803
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_8__470
              #                    store to temp_12_ptr2globl_37 in mem offset_illegal
              #                    occupy a7 with 1048780_0
    li      a7, 1048780
    add     a7,sp,a7
    sw      s3,0(a7)
              #                    free a7
              #                    release s3 with temp_12_ptr2globl_37
              #                    store to temp_7_array_ele_31 in mem offset_illegal
              #                    occupy a5 with 1048804_0
    li      a5, 1048804
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_7_array_ele_31
              #                    store to cur_char_29 in mem offset_illegal
              #                    occupy a5 with 1048828_0
    li      a5, 1048828
    add     a5,sp,a5
    sw      s2,0(a5)
              #                    free a5
              #                    release s2 with cur_char_29
              #                    store to temp_13_arithop_37 in mem offset_illegal
              #                    occupy s2 with 1048776_0
    li      s2, 1048776
    add     s2,sp,s2
    sw      s5,0(s2)
              #                    free s2
              #                    release s5 with temp_13_arithop_37
              #                    store to temp_10_array_ele_33 in mem offset_illegal
              #                    occupy s1 with 1048788_0
    li      s1, 1048788
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_10_array_ele_33
              #                    store to temp_14_arithop_33 in mem offset_illegal
              #                    occupy a4 with 1048772_0
    li      a4, 1048772
    add     a4,sp,a4
    sw      s4,0(a4)
              #                    free a4
              #                    release s4 with temp_14_arithop_33
              #                    store to temp_9_array_ptr_33 in mem offset_illegal
              #                    occupy a3 with 1048792_0
    li      a3, 1048792
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_9_array_ptr_33
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: input_27, tracked: true } |     a1:Freed { symidx: i_29, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_31, tracked: true } |     a5:Freed { symidx: temp_7_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_8__470, tracked: true } | 
              #                          label while.exit_32: 
.while.exit_32:
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 131080|s0_main:8 at 131072|temp_58_ptr2globl:131072 at 0
              #                    occupy a0 with -131088_0
    li      a0, -131088
    li      a0, -131088
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 131080_0
    li      a1, 131080
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 131072_0
    li      a2, 131072
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 131088_0
    li      a3, 131088
    li      a3, 131088
    add     s0,a3,sp
              #                    free a3
              #                          alloc Array:i32:[Some(32768_0)] temp_58_ptr2globl_78 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                           Call void read_program_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    read_program
              #                          new_var temp_58_ptr2globl_78:Array:i32:[Some(32768_0)] 
              #                          temp_58_ptr2globl_78 = load *program_0:ptr->i32 
              #                    occupy a0 with *program_0
              #                       load label program as ptr to reg
    la      a0, program
              #                    occupy reg a0 with *program_0
              #                    occupy a1 with temp_58_ptr2globl_78
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                           Call void interpret_0(temp_58_ptr2globl_78) 
              #                    saved register dumping to mem
              #                    store to temp_58_ptr2globl_78 in mem offset legal
    sw      a1,0(sp)
              #                    release a1 with temp_58_ptr2globl_78
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_58_ptr2globl_78_0
              #                    load from temp_58_ptr2globl_78 in mem
    lw      a0,0(sp)
              #                    arg load ended


    call    interpret
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with ra_main_0
    li      a0, 131080
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy a1 with s0_main_0
    li      a1, 131072
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a0 with 131080_0
    li      a0, 131080
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with ra_main_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with 131088_0
    li      a2, 131088
    li      a2, 131088
    add     sp,a2,sp
              #                    free a2
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: s0_main_0, tracked: true } | 
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
