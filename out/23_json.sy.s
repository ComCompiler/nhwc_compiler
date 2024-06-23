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
              #                          Define is_number_0 [ch_18] -> is_number_ret_0 
    .globl is_number
    .type is_number,@function
is_number:
              #                    mem layout:|ra_is_number:8 at 16|s0_is_number:8 at 8|ch:4 at 4|temp_0_cmp:1 at 3|temp_1_cmp:1 at 2|none:2 at 0
    addi    sp,sp,-24
              #                    store to ra_is_number_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_is_number_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i1 temp_0_cmp_21 
              #                          alloc i1 temp_1_cmp_24 
              #                    regtab     a0:Freed { symidx: ch_18, tracked: true } | 
              #                          label L83_0: 
.L83_0:
              #                          new_var temp_0_cmp_21:i1 
              #                          temp_0_cmp_21 = icmp i32 Sge ch_18, 48_0 
              #                    occupy a0 with ch_18
              #                    occupy a1 with 48_0
    li      a1, 48
              #                    occupy a2 with temp_0_cmp_21
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_0_cmp_21, label branch_true_22, label branch_false_22 
              #                    occupy a2 with temp_0_cmp_21
              #                    free a2
              #                    occupy a2 with temp_0_cmp_21
    bnez    a2, .branch_true_22
              #                    free a2
    j       .branch_false_22
              #                    regtab     a0:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: temp_0_cmp_21, tracked: true } | 
              #                          label branch_true_22: 
.branch_true_22:
              #                          new_var temp_1_cmp_24:i1 
              #                          temp_1_cmp_24 = icmp i32 Sle ch_18, 57_0 
              #                    occupy a0 with ch_18
              #                    occupy a1 with 57_0
    li      a1, 57
              #                    occupy a3 with temp_1_cmp_24
    slt     a3,a1,a0
    xori    a3,a3,1
              #                    free a0
              #                    free a1
              #                    free a3
              #                          br i1 temp_1_cmp_24, label branch_true_25, label branch_false_25 
              #                    occupy a3 with temp_1_cmp_24
              #                    free a3
              #                    occupy a3 with temp_1_cmp_24
    bnez    a3, .branch_true_25
              #                    free a3
    j       .branch_false_25
              #                    regtab     a0:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: temp_0_cmp_21, tracked: true } |     a3:Freed { symidx: temp_1_cmp_24, tracked: true } | 
              #                          label branch_true_25: 
.branch_true_25:
              #                          ret 1_0 
              #                    load from ra_is_number_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_number_0 in mem
    ld      s0,8(sp)
              #                    store to ch_18 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with ch_18
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: temp_0_cmp_21, tracked: true } |     a3:Freed { symidx: temp_1_cmp_24, tracked: true } | 
              #                          label branch_false_25: 
.branch_false_25:
              #                          ret 0_0 
              #                    load from ra_is_number_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_number_0 in mem
    ld      s0,8(sp)
              #                    store to ch_18 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with ch_18
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_0_cmp_21, tracked: true } |     a3:Freed { symidx: temp_1_cmp_24, tracked: true } | 
              #                          label L84_0: 
.L84_0:
              #                    regtab     a0:Freed { symidx: ch_18, tracked: true } |     a2:Freed { symidx: temp_0_cmp_21, tracked: true } | 
              #                          label branch_false_22: 
.branch_false_22:
              #                          ret 0_0 
              #                    load from ra_is_number_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_number_0 in mem
    ld      s0,8(sp)
              #                    store to ch_18 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with ch_18
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_0_cmp_21, tracked: true } | 
              #                          label L85_0: 
.L85_0:
              #                    regtab     a2:Freed { symidx: temp_0_cmp_21, tracked: true } | 
              #                    regtab 
              #                          Define skip_space_0 [buf_32, len_32] -> skip_space_ret_0 
    .globl skip_space
    .type skip_space,@function
skip_space:
              #                    mem layout:|ra_skip_space:8 at 160|s0_skip_space:8 at 152|buf:8 at 144|len:4 at 140|temp_2_:1 at 139|none:3 at 136|temp_3_ptr2globl:4 at 132|temp_4_cmp:1 at 131|none:3 at 128|temp_5_ptr2globl:4 at 124|none:4 at 120|temp_6_array_ptr:8 at 112|temp_7_array_ele:4 at 108|temp_8_cmp:1 at 107|none:3 at 104|temp_9_ptr2globl:4 at 100|temp_10_arithop:4 at 96|temp_11_ptr2globl:4 at 92|none:4 at 88|temp_12_array_ptr:8 at 80|temp_13_array_ele:4 at 76|temp_14_cmp:1 at 75|none:3 at 72|temp_15_ptr2globl:4 at 68|temp_16_arithop:4 at 64|temp_17_ptr2globl:4 at 60|none:4 at 56|temp_18_array_ptr:8 at 48|temp_19_array_ele:4 at 44|temp_20_cmp:1 at 43|none:3 at 40|temp_21_ptr2globl:4 at 36|temp_22_arithop:4 at 32|temp_23_ptr2globl:4 at 28|none:4 at 24|temp_24_array_ptr:8 at 16|temp_25_array_ele:4 at 12|temp_26_cmp:1 at 11|none:3 at 8|temp_27_ptr2globl:4 at 4|temp_28_arithop:4 at 0
    addi    sp,sp,-168
              #                    store to ra_skip_space_0 in mem offset legal
    sd      ra,160(sp)
              #                    store to s0_skip_space_0 in mem offset legal
    sd      s0,152(sp)
    addi    s0,sp,168
              #                          new_var buf_32:ptr->i32 
              #                          alloc i1 temp_2__264 
              #                          alloc i32 temp_3_ptr2globl_38 
              #                          alloc i1 temp_4_cmp_38 
              #                          alloc i32 temp_5_ptr2globl_42 
              #                          alloc ptr->i32 temp_6_array_ptr_42 
              #                          alloc i32 temp_7_array_ele_42 
              #                          alloc i1 temp_8_cmp_42 
              #                          alloc i32 temp_9_ptr2globl_44 
              #                          alloc i32 temp_10_arithop_44 
              #                          alloc i32 temp_11_ptr2globl_46 
              #                          alloc ptr->i32 temp_12_array_ptr_46 
              #                          alloc i32 temp_13_array_ele_46 
              #                          alloc i1 temp_14_cmp_46 
              #                          alloc i32 temp_15_ptr2globl_48 
              #                          alloc i32 temp_16_arithop_48 
              #                          alloc i32 temp_17_ptr2globl_50 
              #                          alloc ptr->i32 temp_18_array_ptr_50 
              #                          alloc i32 temp_19_array_ele_50 
              #                          alloc i1 temp_20_cmp_50 
              #                          alloc i32 temp_21_ptr2globl_52 
              #                          alloc i32 temp_22_arithop_52 
              #                          alloc i32 temp_23_ptr2globl_54 
              #                          alloc ptr->i32 temp_24_array_ptr_54 
              #                          alloc i32 temp_25_array_ele_54 
              #                          alloc i1 temp_26_cmp_54 
              #                          alloc i32 temp_27_ptr2globl_56 
              #                          alloc i32 temp_28_arithop_56 
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32, tracked: true } | 
              #                          label while.head_36: 
.while.head_36:
              #                          new_var temp_2__264:i1 
              #                          temp_2__264 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_2__264
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_2__264, label while.body_36, label while.exit_36 
              #                    occupy a4 with temp_2__264
              #                    free a4
              #                    occupy a4 with temp_2__264
    bnez    a4, .while.body_36
              #                    free a4
    j       .while.exit_36
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } | 
              #                          label while.body_36: 
.while.body_36:
              #                          new_var temp_3_ptr2globl_38:i32 
              #                          temp_3_ptr2globl_38 = load *pos_0:ptr->i32 
              #                    occupy a2 with *pos_0
              #                       load label pos as ptr to reg
    la      a2, pos
              #                    occupy reg a2 with *pos_0
              #                    occupy a3 with temp_3_ptr2globl_38
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_4_cmp_38:i1 
              #                          temp_4_cmp_38 = icmp i32 Sge temp_3_ptr2globl_38, len_32 
              #                    occupy a3 with temp_3_ptr2globl_38
              #                    occupy a1 with len_32
              #                    occupy a5 with temp_4_cmp_38
    slt     a5,a3,a1
    xori    a5,a5,1
              #                    free a3
              #                    free a1
              #                    free a5
              #                          br i1 temp_4_cmp_38, label branch_true_39, label branch_false_39 
              #                    occupy a5 with temp_4_cmp_38
              #                    free a5
              #                    occupy a5 with temp_4_cmp_38
    bnez    a5, .branch_true_39
              #                    free a5
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32, tracked: true } |     a3:Freed { symidx: temp_3_ptr2globl_38, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } |     a5:Freed { symidx: temp_4_cmp_38, tracked: true } | 
              #                          label branch_true_39: 
.branch_true_39:
              #                          jump label: while.exit_36 
              #                    store to temp_3_ptr2globl_38 in mem offset legal
    sw      a3,132(sp)
              #                    release a3 with temp_3_ptr2globl_38
              #                    store to temp_4_cmp_38 in mem offset legal
    sb      a5,131(sp)
              #                    release a5 with temp_4_cmp_38
    j       .while.exit_36
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } | 
              #                          label while.exit_36: 
.while.exit_36:
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32, tracked: true } |     a3:Freed { symidx: temp_3_ptr2globl_38, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } |     a5:Freed { symidx: temp_4_cmp_38, tracked: true } | 
              #                          label branch_false_39: 
.branch_false_39:
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32, tracked: true } |     a3:Freed { symidx: temp_3_ptr2globl_38, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } |     a5:Freed { symidx: temp_4_cmp_38, tracked: true } | 
              #                          label L82_0: 
.L82_0:
              #                          new_var temp_5_ptr2globl_42:i32 
              #                          temp_5_ptr2globl_42 = load *pos_0:ptr->i32 
              #                    occupy a2 with *pos_0
              #                       load label pos as ptr to reg
    la      a2, pos
              #                    occupy reg a2 with *pos_0
              #                    occupy a6 with temp_5_ptr2globl_42
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          new_var temp_6_array_ptr_42:ptr->i32 
              #                          temp_6_array_ptr_42 = getelementptr buf_32:ptr->i32 [Some(temp_5_ptr2globl_42)] 
              #                    occupy a7 with temp_6_array_ptr_42
    li      a7, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a6 with temp_5_ptr2globl_42
              #                    occupy s2 with _anonymous_of_buf_32_0
    mul     s2,s1,a6
              #                    free s1
              #                    free a6
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
              #                    occupy a0 with buf_32
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                          new_var temp_7_array_ele_42:i32 
              #                          temp_7_array_ele_42 = load temp_6_array_ptr_42:ptr->i32 
              #                    occupy a7 with temp_6_array_ptr_42
              #                    occupy s3 with temp_7_array_ele_42
    lw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          new_var temp_8_cmp_42:i1 
              #                          temp_8_cmp_42 = icmp i32 Eq temp_7_array_ele_42, 32_0 
              #                    occupy s3 with temp_7_array_ele_42
              #                    occupy s4 with 32_0
    li      s4, 32
              #                    occupy s5 with temp_8_cmp_42
    xor     s5,s3,s4
    seqz    s5, s5
              #                    free s3
              #                    free s4
              #                    free s5
              #                          br i1 temp_8_cmp_42, label branch_true_43, label branch_false_43 
              #                    occupy s5 with temp_8_cmp_42
              #                    free s5
              #                    occupy s5 with temp_8_cmp_42
    bnez    s5, .branch_true_43
              #                    free s5
    j       .branch_false_43
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32, tracked: true } |     a3:Freed { symidx: temp_3_ptr2globl_38, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } |     a5:Freed { symidx: temp_4_cmp_38, tracked: true } |     a6:Freed { symidx: temp_5_ptr2globl_42, tracked: true } |     a7:Freed { symidx: temp_6_array_ptr_42, tracked: true } |     s3:Freed { symidx: temp_7_array_ele_42, tracked: true } |     s5:Freed { symidx: temp_8_cmp_42, tracked: true } | 
              #                          label branch_true_43: 
.branch_true_43:
              #                          new_var temp_9_ptr2globl_44:i32 
              #                          temp_9_ptr2globl_44 = load *pos_0:ptr->i32 
              #                    occupy a2 with *pos_0
              #                       load label pos as ptr to reg
    la      a2, pos
              #                    occupy reg a2 with *pos_0
              #                    occupy s1 with temp_9_ptr2globl_44
    lw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                          new_var temp_10_arithop_44:i32 
              #                          temp_10_arithop_44 = Add i32 temp_9_ptr2globl_44, 1_0 
              #                    occupy s1 with temp_9_ptr2globl_44
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s4 with temp_10_arithop_44
    add     s4,s1,s2
              #                    free s1
              #                    free s2
              #                    free s4
              #                          store temp_10_arithop_44:i32 *pos_0:ptr->i32 
              #                    occupy s6 with *pos_0
              #                       load label pos as ptr to reg
    la      s6, pos
              #                    occupy reg s6 with *pos_0
              #                    occupy s4 with temp_10_arithop_44
    sw      s4,0(s6)
              #                    free s4
              #                    free s6
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32, tracked: true } |     a3:Freed { symidx: temp_3_ptr2globl_38, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } |     a5:Freed { symidx: temp_4_cmp_38, tracked: true } |     a6:Freed { symidx: temp_5_ptr2globl_42, tracked: true } |     a7:Freed { symidx: temp_6_array_ptr_42, tracked: true } |     s3:Freed { symidx: temp_7_array_ele_42, tracked: true } |     s5:Freed { symidx: temp_8_cmp_42, tracked: true } | 
              #                          label branch_false_43: 
.branch_false_43:
              #                          new_var temp_11_ptr2globl_46:i32 
              #                          temp_11_ptr2globl_46 = load *pos_0:ptr->i32 
              #                    occupy a2 with *pos_0
              #                       load label pos as ptr to reg
    la      a2, pos
              #                    occupy reg a2 with *pos_0
              #                    occupy s1 with temp_11_ptr2globl_46
    lw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                          new_var temp_12_array_ptr_46:ptr->i32 
              #                          temp_12_array_ptr_46 = getelementptr buf_32:ptr->i32 [Some(temp_11_ptr2globl_46)] 
              #                    occupy s2 with temp_12_array_ptr_46
    li      s2, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s1 with temp_11_ptr2globl_46
              #                    occupy s6 with _anonymous_of_buf_32_0
    mul     s6,s4,s1
              #                    free s4
              #                    free s1
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
              #                    occupy a0 with buf_32
    add     s2,s2,a0
              #                    free a0
              #                    free s2
              #                          new_var temp_13_array_ele_46:i32 
              #                          temp_13_array_ele_46 = load temp_12_array_ptr_46:ptr->i32 
              #                    occupy s2 with temp_12_array_ptr_46
              #                    occupy s7 with temp_13_array_ele_46
    lw      s7,0(s2)
              #                    free s7
              #                    free s2
              #                          new_var temp_14_cmp_46:i1 
              #                          temp_14_cmp_46 = icmp i32 Eq temp_13_array_ele_46, 9_0 
              #                    occupy s7 with temp_13_array_ele_46
              #                    occupy s8 with 9_0
    li      s8, 9
              #                    occupy s9 with temp_14_cmp_46
    xor     s9,s7,s8
    seqz    s9, s9
              #                    free s7
              #                    free s8
              #                    free s9
              #                          br i1 temp_14_cmp_46, label branch_true_47, label branch_false_47 
              #                    occupy s9 with temp_14_cmp_46
              #                    free s9
              #                    occupy s9 with temp_14_cmp_46
    bnez    s9, .branch_true_47
              #                    free s9
    j       .branch_false_47
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32, tracked: true } |     a3:Freed { symidx: temp_3_ptr2globl_38, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } |     a5:Freed { symidx: temp_4_cmp_38, tracked: true } |     a6:Freed { symidx: temp_5_ptr2globl_42, tracked: true } |     a7:Freed { symidx: temp_6_array_ptr_42, tracked: true } |     s1:Freed { symidx: temp_11_ptr2globl_46, tracked: true } |     s2:Freed { symidx: temp_12_array_ptr_46, tracked: true } |     s3:Freed { symidx: temp_7_array_ele_42, tracked: true } |     s5:Freed { symidx: temp_8_cmp_42, tracked: true } |     s7:Freed { symidx: temp_13_array_ele_46, tracked: true } |     s9:Freed { symidx: temp_14_cmp_46, tracked: true } | 
              #                          label branch_true_47: 
.branch_true_47:
              #                          new_var temp_15_ptr2globl_48:i32 
              #                          temp_15_ptr2globl_48 = load *pos_0:ptr->i32 
              #                    occupy a2 with *pos_0
              #                       load label pos as ptr to reg
    la      a2, pos
              #                    occupy reg a2 with *pos_0
              #                    occupy s4 with temp_15_ptr2globl_48
    lw      s4,0(a2)
              #                    free s4
              #                    free a2
              #                          new_var temp_16_arithop_48:i32 
              #                          temp_16_arithop_48 = Add i32 temp_15_ptr2globl_48, 1_0 
              #                    occupy s4 with temp_15_ptr2globl_48
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s8 with temp_16_arithop_48
    add     s8,s4,s6
              #                    free s4
              #                    free s6
              #                    free s8
              #                          store temp_16_arithop_48:i32 *pos_0:ptr->i32 
              #                    occupy s10 with *pos_0
              #                       load label pos as ptr to reg
    la      s10, pos
              #                    occupy reg s10 with *pos_0
              #                    occupy s8 with temp_16_arithop_48
    sw      s8,0(s10)
              #                    free s8
              #                    free s10
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32, tracked: true } |     a3:Freed { symidx: temp_3_ptr2globl_38, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } |     a5:Freed { symidx: temp_4_cmp_38, tracked: true } |     a6:Freed { symidx: temp_5_ptr2globl_42, tracked: true } |     a7:Freed { symidx: temp_6_array_ptr_42, tracked: true } |     s1:Freed { symidx: temp_11_ptr2globl_46, tracked: true } |     s2:Freed { symidx: temp_12_array_ptr_46, tracked: true } |     s3:Freed { symidx: temp_7_array_ele_42, tracked: true } |     s5:Freed { symidx: temp_8_cmp_42, tracked: true } |     s7:Freed { symidx: temp_13_array_ele_46, tracked: true } |     s9:Freed { symidx: temp_14_cmp_46, tracked: true } | 
              #                          label branch_false_47: 
.branch_false_47:
              #                          new_var temp_17_ptr2globl_50:i32 
              #                          temp_17_ptr2globl_50 = load *pos_0:ptr->i32 
              #                    occupy a2 with *pos_0
              #                       load label pos as ptr to reg
    la      a2, pos
              #                    occupy reg a2 with *pos_0
              #                    occupy s4 with temp_17_ptr2globl_50
    lw      s4,0(a2)
              #                    free s4
              #                    free a2
              #                          new_var temp_18_array_ptr_50:ptr->i32 
              #                          temp_18_array_ptr_50 = getelementptr buf_32:ptr->i32 [Some(temp_17_ptr2globl_50)] 
              #                    occupy s6 with temp_18_array_ptr_50
    li      s6, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s4 with temp_17_ptr2globl_50
              #                    occupy s10 with _anonymous_of_buf_32_0
    mul     s10,s8,s4
              #                    free s8
              #                    free s4
    add     s6,s6,s10
              #                    free s10
    slli s6,s6,2
              #                    occupy a0 with buf_32
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          new_var temp_19_array_ele_50:i32 
              #                          temp_19_array_ele_50 = load temp_18_array_ptr_50:ptr->i32 
              #                    occupy s6 with temp_18_array_ptr_50
              #                    occupy s11 with temp_19_array_ele_50
    lw      s11,0(s6)
              #                    free s11
              #                    free s6
              #                          new_var temp_20_cmp_50:i1 
              #                          temp_20_cmp_50 = icmp i32 Eq temp_19_array_ele_50, 10_0 
              #                    occupy s11 with temp_19_array_ele_50
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    occupy s8 with temp_20_cmp_50
    xor     s8,s11,a2
    seqz    s8, s8
              #                    free s11
              #                    free a2
              #                    free s8
              #                          br i1 temp_20_cmp_50, label branch_true_51, label branch_false_51 
              #                    occupy s8 with temp_20_cmp_50
              #                    free s8
              #                    occupy s8 with temp_20_cmp_50
    bnez    s8, .branch_true_51
              #                    free s8
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32, tracked: true } |     a3:Freed { symidx: temp_3_ptr2globl_38, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } |     a5:Freed { symidx: temp_4_cmp_38, tracked: true } |     a6:Freed { symidx: temp_5_ptr2globl_42, tracked: true } |     a7:Freed { symidx: temp_6_array_ptr_42, tracked: true } |     s11:Freed { symidx: temp_19_array_ele_50, tracked: true } |     s1:Freed { symidx: temp_11_ptr2globl_46, tracked: true } |     s2:Freed { symidx: temp_12_array_ptr_46, tracked: true } |     s3:Freed { symidx: temp_7_array_ele_42, tracked: true } |     s4:Freed { symidx: temp_17_ptr2globl_50, tracked: true } |     s5:Freed { symidx: temp_8_cmp_42, tracked: true } |     s6:Freed { symidx: temp_18_array_ptr_50, tracked: true } |     s7:Freed { symidx: temp_13_array_ele_46, tracked: true } |     s8:Freed { symidx: temp_20_cmp_50, tracked: true } |     s9:Freed { symidx: temp_14_cmp_46, tracked: true } | 
              #                          label branch_true_51: 
.branch_true_51:
              #                          new_var temp_21_ptr2globl_52:i32 
              #                          temp_21_ptr2globl_52 = load *pos_0:ptr->i32 
              #                    occupy a2 with *pos_0
              #                       load label pos as ptr to reg
    la      a2, pos
              #                    occupy reg a2 with *pos_0
              #                    occupy s10 with temp_21_ptr2globl_52
    lw      s10,0(a2)
              #                    free s10
              #                    free a2
              #                          new_var temp_22_arithop_52:i32 
              #                          temp_22_arithop_52 = Add i32 temp_21_ptr2globl_52, 1_0 
              #                    occupy s10 with temp_21_ptr2globl_52
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    store to buf_32 in mem offset legal
    sd      a0,144(sp)
              #                    release a0 with buf_32
              #                    occupy a0 with temp_22_arithop_52
    add     a0,s10,a2
              #                    free s10
              #                    free a2
              #                    free a0
              #                          store temp_22_arithop_52:i32 *pos_0:ptr->i32 
              #                    occupy a2 with *pos_0
              #                       load label pos as ptr to reg
    la      a2, pos
              #                    occupy reg a2 with *pos_0
              #                    occupy a0 with temp_22_arithop_52
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                    regtab     a0:Freed { symidx: buf_32, tracked: true } |     a1:Freed { symidx: len_32, tracked: true } |     a3:Freed { symidx: temp_3_ptr2globl_38, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } |     a5:Freed { symidx: temp_4_cmp_38, tracked: true } |     a6:Freed { symidx: temp_5_ptr2globl_42, tracked: true } |     a7:Freed { symidx: temp_6_array_ptr_42, tracked: true } |     s11:Freed { symidx: temp_19_array_ele_50, tracked: true } |     s1:Freed { symidx: temp_11_ptr2globl_46, tracked: true } |     s2:Freed { symidx: temp_12_array_ptr_46, tracked: true } |     s3:Freed { symidx: temp_7_array_ele_42, tracked: true } |     s4:Freed { symidx: temp_17_ptr2globl_50, tracked: true } |     s5:Freed { symidx: temp_8_cmp_42, tracked: true } |     s6:Freed { symidx: temp_18_array_ptr_50, tracked: true } |     s7:Freed { symidx: temp_13_array_ele_46, tracked: true } |     s8:Freed { symidx: temp_20_cmp_50, tracked: true } |     s9:Freed { symidx: temp_14_cmp_46, tracked: true } | 
              #                          label branch_false_51: 
.branch_false_51:
              #                          new_var temp_23_ptr2globl_54:i32 
              #                          temp_23_ptr2globl_54 = load *pos_0:ptr->i32 
              #                    occupy a2 with *pos_0
              #                       load label pos as ptr to reg
    la      a2, pos
              #                    occupy reg a2 with *pos_0
              #                    occupy s10 with temp_23_ptr2globl_54
    lw      s10,0(a2)
              #                    free s10
              #                    free a2
              #                          new_var temp_24_array_ptr_54:ptr->i32 
              #                          temp_24_array_ptr_54 = getelementptr buf_32:ptr->i32 [Some(temp_23_ptr2globl_54)] 
              #                    occupy a2 with temp_24_array_ptr_54
    li      a2, 0
              #                    store to buf_32 in mem offset legal
    sd      a0,144(sp)
              #                    release a0 with buf_32
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with temp_23_ptr2globl_54
              #                    store to len_32 in mem offset legal
    sw      a1,140(sp)
              #                    release a1 with len_32
              #                    occupy a1 with _anonymous_of_buf_32_0
    mul     a1,a0,s10
              #                    free a0
              #                    free s10
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
              #                    occupy a0 with buf_32
              #                    load from buf_32 in mem
    ld      a0,144(sp)
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_25_array_ele_54:i32 
              #                          temp_25_array_ele_54 = load temp_24_array_ptr_54:ptr->i32 
              #                    occupy a2 with temp_24_array_ptr_54
              #                    occupy a1 with temp_25_array_ele_54
    lw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                          new_var temp_26_cmp_54:i1 
              #                          temp_26_cmp_54 = icmp i32 Eq temp_25_array_ele_54, 13_0 
              #                    occupy a1 with temp_25_array_ele_54
              #                    store to buf_32 in mem offset legal
    sd      a0,144(sp)
              #                    release a0 with buf_32
              #                    occupy a0 with 13_0
    li      a0, 13
              #                    store to temp_24_array_ptr_54 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_24_array_ptr_54
              #                    occupy a2 with temp_26_cmp_54
    xor     a2,a1,a0
    seqz    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                          br i1 temp_26_cmp_54, label branch_true_55, label branch_false_55 
              #                    occupy a2 with temp_26_cmp_54
              #                    free a2
              #                    occupy a2 with temp_26_cmp_54
    bnez    a2, .branch_true_55
              #                    free a2
    j       .branch_false_55
              #                    regtab     a1:Freed { symidx: temp_25_array_ele_54, tracked: true } |     a2:Freed { symidx: temp_26_cmp_54, tracked: true } |     a3:Freed { symidx: temp_3_ptr2globl_38, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } |     a5:Freed { symidx: temp_4_cmp_38, tracked: true } |     a6:Freed { symidx: temp_5_ptr2globl_42, tracked: true } |     a7:Freed { symidx: temp_6_array_ptr_42, tracked: true } |     s10:Freed { symidx: temp_23_ptr2globl_54, tracked: true } |     s11:Freed { symidx: temp_19_array_ele_50, tracked: true } |     s1:Freed { symidx: temp_11_ptr2globl_46, tracked: true } |     s2:Freed { symidx: temp_12_array_ptr_46, tracked: true } |     s3:Freed { symidx: temp_7_array_ele_42, tracked: true } |     s4:Freed { symidx: temp_17_ptr2globl_50, tracked: true } |     s5:Freed { symidx: temp_8_cmp_42, tracked: true } |     s6:Freed { symidx: temp_18_array_ptr_50, tracked: true } |     s7:Freed { symidx: temp_13_array_ele_46, tracked: true } |     s8:Freed { symidx: temp_20_cmp_50, tracked: true } |     s9:Freed { symidx: temp_14_cmp_46, tracked: true } | 
              #                          label branch_true_55: 
.branch_true_55:
              #                          new_var temp_27_ptr2globl_56:i32 
              #                          temp_27_ptr2globl_56 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    store to temp_25_array_ele_54 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_25_array_ele_54
              #                    occupy a1 with temp_27_ptr2globl_56
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_28_arithop_56:i32 
              #                          temp_28_arithop_56 = Add i32 temp_27_ptr2globl_56, 1_0 
              #                    occupy a1 with temp_27_ptr2globl_56
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_26_cmp_54 in mem offset legal
    sb      a2,11(sp)
              #                    release a2 with temp_26_cmp_54
              #                    occupy a2 with temp_28_arithop_56
    add     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          store temp_28_arithop_56:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a2 with temp_28_arithop_56
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                    regtab     a1:Freed { symidx: temp_25_array_ele_54, tracked: true } |     a2:Freed { symidx: temp_26_cmp_54, tracked: true } |     a3:Freed { symidx: temp_3_ptr2globl_38, tracked: true } |     a4:Freed { symidx: temp_2__264, tracked: true } |     a5:Freed { symidx: temp_4_cmp_38, tracked: true } |     a6:Freed { symidx: temp_5_ptr2globl_42, tracked: true } |     a7:Freed { symidx: temp_6_array_ptr_42, tracked: true } |     s10:Freed { symidx: temp_23_ptr2globl_54, tracked: true } |     s11:Freed { symidx: temp_19_array_ele_50, tracked: true } |     s1:Freed { symidx: temp_11_ptr2globl_46, tracked: true } |     s2:Freed { symidx: temp_12_array_ptr_46, tracked: true } |     s3:Freed { symidx: temp_7_array_ele_42, tracked: true } |     s4:Freed { symidx: temp_17_ptr2globl_50, tracked: true } |     s5:Freed { symidx: temp_8_cmp_42, tracked: true } |     s6:Freed { symidx: temp_18_array_ptr_50, tracked: true } |     s7:Freed { symidx: temp_13_array_ele_46, tracked: true } |     s8:Freed { symidx: temp_20_cmp_50, tracked: true } |     s9:Freed { symidx: temp_14_cmp_46, tracked: true } | 
              #                          label branch_false_55: 
.branch_false_55:
              #                          jump label: while.exit_36 
              #                    store to temp_6_array_ptr_42 in mem offset legal
    sd      a7,112(sp)
              #                    release a7 with temp_6_array_ptr_42
              #                    store to temp_23_ptr2globl_54 in mem offset legal
    sw      s10,28(sp)
              #                    release s10 with temp_23_ptr2globl_54
              #                    store to temp_20_cmp_50 in mem offset legal
    sb      s8,43(sp)
              #                    release s8 with temp_20_cmp_50
              #                    store to temp_19_array_ele_50 in mem offset legal
    sw      s11,44(sp)
              #                    release s11 with temp_19_array_ele_50
              #                    store to temp_17_ptr2globl_50 in mem offset legal
    sw      s4,60(sp)
              #                    release s4 with temp_17_ptr2globl_50
              #                    store to temp_26_cmp_54 in mem offset legal
    sb      a2,11(sp)
              #                    release a2 with temp_26_cmp_54
              #                    store to temp_11_ptr2globl_46 in mem offset legal
    sw      s1,92(sp)
              #                    release s1 with temp_11_ptr2globl_46
              #                    store to temp_14_cmp_46 in mem offset legal
    sb      s9,75(sp)
              #                    release s9 with temp_14_cmp_46
              #                    store to temp_3_ptr2globl_38 in mem offset legal
    sw      a3,132(sp)
              #                    release a3 with temp_3_ptr2globl_38
              #                    store to temp_8_cmp_42 in mem offset legal
    sb      s5,107(sp)
              #                    release s5 with temp_8_cmp_42
              #                    store to temp_5_ptr2globl_42 in mem offset legal
    sw      a6,124(sp)
              #                    release a6 with temp_5_ptr2globl_42
              #                    store to temp_18_array_ptr_50 in mem offset legal
    sd      s6,48(sp)
              #                    release s6 with temp_18_array_ptr_50
              #                    store to temp_25_array_ele_54 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_25_array_ele_54
              #                    store to temp_4_cmp_38 in mem offset legal
    sb      a5,131(sp)
              #                    release a5 with temp_4_cmp_38
              #                    store to temp_7_array_ele_42 in mem offset legal
    sw      s3,108(sp)
              #                    release s3 with temp_7_array_ele_42
              #                    store to temp_12_array_ptr_46 in mem offset legal
    sd      s2,80(sp)
              #                    release s2 with temp_12_array_ptr_46
              #                    store to temp_13_array_ele_46 in mem offset legal
    sw      s7,76(sp)
              #                    release s7 with temp_13_array_ele_46
              #                    occupy a0 with _anonymous_of_buf_32_0
              #                    load from buf_32 in mem
    ld      a0,144(sp)
              #                    occupy a1 with _anonymous_of_len_32_0
              #                    load from len_32 in mem


    lw      a1,140(sp)
    j       .while.exit_36
              #                    regtab 
              #                          Define detect_item_0 [type_60, buf_60, len_60] -> detect_item_ret_0 
    .globl detect_item
    .type detect_item,@function
detect_item:
              #                    mem layout:|ra_detect_item:8 at 1848|s0_detect_item:8 at 1840|type:4 at 1836|none:4 at 1832|buf:8 at 1824|len:4 at 1820|temp_29_ptr2globl:4 at 1816|temp_30_cmp:1 at 1815|temp_31_cmp:1 at 1814|none:2 at 1812|temp_32_ptr2globl:4 at 1808|temp_33_array_ptr:8 at 1800|temp_34_array_ele:4 at 1796|temp_35_cmp:1 at 1795|none:3 at 1792|temp_36_ret_of_detect_item:4 at 1788|temp_37_ptr2globl:4 at 1784|temp_38_array_ptr:8 at 1776|temp_39_array_ele:4 at 1772|temp_40_cmp:1 at 1771|none:3 at 1768|temp_41_ret_of_detect_item:4 at 1764|temp_42_ptr2globl:4 at 1760|temp_43_array_ptr:8 at 1752|temp_44_array_ele:4 at 1748|temp_45_cmp:1 at 1747|none:3 at 1744|temp_46_ret_of_detect_item:4 at 1740|temp_47_ptr2globl:4 at 1736|temp_48_array_ptr:8 at 1728|temp_49_array_ele:4 at 1724|temp_50_ret_of_is_number:4 at 1720|temp_51_cmp:1 at 1719|none:3 at 1716|temp_52_ret_of_detect_item:4 at 1712|temp_53_ptr2globl:4 at 1708|none:4 at 1704|temp_54_array_ptr:8 at 1696|temp_55_array_ele:4 at 1692|temp_56_cmp:1 at 1691|none:3 at 1688|temp_57_ret_of_detect_item:4 at 1684|temp_58_ptr2globl:4 at 1680|temp_59_array_ptr:8 at 1672|temp_60_array_ele:4 at 1668|temp_61_cmp:1 at 1667|none:3 at 1664|temp_62_ret_of_detect_item:4 at 1660|temp_63_ptr2globl:4 at 1656|temp_64_array_ptr:8 at 1648|temp_65_array_ele:4 at 1644|temp_66_cmp:1 at 1643|none:3 at 1640|temp_67_ret_of_detect_item:4 at 1636|temp_68_ptr2globl:4 at 1632|temp_69_array_ptr:8 at 1624|temp_70_array_ele:4 at 1620|temp_71_cmp:1 at 1619|none:3 at 1616|temp_72_ret_of_detect_item:4 at 1612|temp_73_ptr2globl:4 at 1608|temp_74_array_ptr:8 at 1600|temp_75_array_ele:4 at 1596|temp_76_cmp:1 at 1595|none:3 at 1592|temp_77_ret_of_detect_item:4 at 1588|temp_78_cmp:1 at 1587|none:3 at 1584|temp_79_ptr2globl:4 at 1580|none:4 at 1576|temp_80_array_ptr:8 at 1568|temp_81_array_ele:4 at 1564|temp_82_cmp:1 at 1563|none:3 at 1560|temp_83_ptr2globl:4 at 1556|temp_84_arithop:4 at 1552|temp_85_ptr2globl:4 at 1548|temp_86_cmp:1 at 1547|none:3 at 1544|temp_87_ptr2globl:4 at 1540|temp_88_cmp:1 at 1539|none:3 at 1536|temp_89_ptr2globl:4 at 1532|none:4 at 1528|temp_90_array_ptr:8 at 1520|temp_91_array_ele:4 at 1516|temp_92_ret_of_is_number:4 at 1512|temp_93_cmp:1 at 1511|none:3 at 1508|temp_94_ptr2globl:4 at 1504|temp_95_arithop:4 at 1500|temp_96_ptr2globl:4 at 1496|temp_97_cmp:1 at 1495|none:3 at 1492|temp_98_ptr2globl:4 at 1488|temp_99_array_ptr:8 at 1480|temp_100_array_ele:4 at 1476|temp_101_cmp:1 at 1475|none:3 at 1472|temp_102_ptr2globl:4 at 1468|temp_103_arithop:4 at 1464|temp_104_ptr2globl:4 at 1460|temp_105_cmp:1 at 1459|none:3 at 1456|temp_106_ptr2globl:4 at 1452|none:4 at 1448|temp_107_array_ptr:8 at 1440|temp_108_array_ele:4 at 1436|temp_109_ret_of_is_number:4 at 1432|temp_110_cmp:1 at 1431|none:3 at 1428|temp_111_ptr2globl:4 at 1424|temp_112_arithop:4 at 1420|temp_113_ptr2globl:4 at 1416|temp_114_cmp:1 at 1415|none:3 at 1412|temp_115_ptr2globl:4 at 1408|temp_116_array_ptr:8 at 1400|temp_117_array_ele:4 at 1396|temp_118_cmp:1 at 1395|none:3 at 1392|temp_119_ptr2globl:4 at 1388|temp_120_arithop:4 at 1384|temp_121_ptr2globl:4 at 1380|temp_122_cmp:1 at 1379|none:3 at 1376|temp_123_ptr2globl:4 at 1372|none:4 at 1368|temp_124_array_ptr:8 at 1360|temp_125_array_ele:4 at 1356|temp_126_cmp:1 at 1355|none:3 at 1352|temp_127_ptr2globl:4 at 1348|temp_128_arithop:4 at 1344|temp_129_ptr2globl:4 at 1340|temp_130_cmp:1 at 1339|none:3 at 1336|temp_131_ptr2globl:4 at 1332|none:4 at 1328|temp_132_array_ptr:8 at 1320|temp_133_array_ele:4 at 1316|temp_134_cmp:1 at 1315|none:3 at 1312|temp_135_ptr2globl:4 at 1308|temp_136_arithop:4 at 1304|temp_137_ptr2globl:4 at 1300|temp_138_cmp:1 at 1299|none:3 at 1296|temp_139_ptr2globl:4 at 1292|none:4 at 1288|temp_140_array_ptr:8 at 1280|temp_141_array_ele:4 at 1276|temp_142_ret_of_is_number:4 at 1272|temp_143_cmp:1 at 1271|none:3 at 1268|temp_144_ptr2globl:4 at 1264|temp_145_arithop:4 at 1260|temp_146_ptr2globl:4 at 1256|temp_147_array_ptr:8 at 1248|temp_148_array_ele:4 at 1244|temp_149_ret_of_is_number:4 at 1240|temp_150_cmp:1 at 1239|none:3 at 1236|temp_151_ptr2globl:4 at 1232|temp_152_array_ptr:8 at 1224|temp_153_array_ele:4 at 1220|temp_154_cmp:1 at 1219|none:3 at 1216|temp_155_ptr2globl:4 at 1212|temp_156_arithop:4 at 1208|temp_157_cmp:1 at 1207|none:3 at 1204|temp_158_ptr2globl:4 at 1200|temp_159_arithop:4 at 1196|temp_160_ptr2globl:4 at 1192|temp_161_cmp:1 at 1191|none:3 at 1188|temp_162_ptr2globl:4 at 1184|temp_163_array_ptr:8 at 1176|temp_164_array_ele:4 at 1172|temp_165_cmp:1 at 1171|none:3 at 1168|temp_166_ptr2globl:4 at 1164|none:4 at 1160|temp_167_array_ptr:8 at 1152|temp_168_array_ele:4 at 1148|temp_169_cmp:1 at 1147|none:3 at 1144|temp_170_ptr2globl:4 at 1140|temp_171_arithop:4 at 1136|temp_172_ptr2globl:4 at 1132|temp_173_arithop:4 at 1128|temp_174_ptr2globl:4 at 1124|temp_175_cmp:1 at 1123|none:3 at 1120|temp_176_ptr2globl:4 at 1116|temp_177_arithop:4 at 1112|temp_178_ptr2globl:4 at 1108|none:4 at 1104|temp_179_array_ptr:8 at 1096|temp_180_array_ele:4 at 1092|temp_181_cmp:1 at 1091|temp_182_cmp:1 at 1090|none:2 at 1088|temp_183_ptr2globl:4 at 1084|temp_184_arithop:4 at 1080|temp_185_ptr2globl:4 at 1076|temp_186_cmp:1 at 1075|none:3 at 1072|temp_187_ptr2globl:4 at 1068|none:4 at 1064|temp_188_array_ptr:8 at 1056|temp_189_array_ele:4 at 1052|temp_190_cmp:1 at 1051|none:3 at 1048|temp_191_ptr2globl:4 at 1044|temp_192_arithop:4 at 1040|temp_193_ret_of_detect_item:4 at 1036|temp_194_cmp:1 at 1035|none:3 at 1032|temp_195_ptr2globl:4 at 1028|none:4 at 1024|temp_196_array_ptr:8 at 1016|temp_197_array_ele:4 at 1012|temp_198_cmp:1 at 1011|none:3 at 1008|temp_199_ptr2globl:4 at 1004|temp_200_arithop:4 at 1000|temp_201_ret_of_detect_item:4 at 996|temp_202_cmp:1 at 995|none:3 at 992|temp_203_ptr2globl:4 at 988|temp_204_cmp:1 at 987|none:3 at 984|temp_205_ptr2globl:4 at 980|none:4 at 976|temp_206_array_ptr:8 at 968|temp_207_array_ele:4 at 964|temp_208_cmp:1 at 963|none:3 at 960|temp_209_ptr2globl:4 at 956|temp_210_arithop:4 at 952|temp_211_cmp:1 at 951|none:3 at 948|temp_212_ptr2globl:4 at 944|temp_213_arithop:4 at 940|temp_214_ptr2globl:4 at 936|temp_215_cmp:1 at 935|none:3 at 932|temp_216_ptr2globl:4 at 928|temp_217_array_ptr:8 at 920|temp_218_array_ele:4 at 916|temp_219_cmp:1 at 915|none:3 at 912|temp_220_ptr2globl:4 at 908|temp_221_arithop:4 at 904|temp_222_ret_of_detect_item:4 at 900|temp_223_cmp:1 at 899|none:3 at 896|temp_224_ptr2globl:4 at 892|temp_225_cmp:1 at 891|none:3 at 888|temp_226_ptr2globl:4 at 884|none:4 at 880|temp_227_array_ptr:8 at 872|temp_228_array_ele:4 at 868|temp_229_cmp:1 at 867|none:3 at 864|temp_230_ptr2globl:4 at 860|temp_231_arithop:4 at 856|temp_232_ret_of_detect_item:4 at 852|temp_233_cmp:1 at 851|none:3 at 848|temp_234_ptr2globl:4 at 844|none:4 at 840|temp_235_array_ptr:8 at 832|temp_236_array_ele:4 at 828|temp_237_cmp:1 at 827|none:3 at 824|temp_238_ptr2globl:4 at 820|temp_239_arithop:4 at 816|temp_240_ret_of_detect_item:4 at 812|temp_241_cmp:1 at 811|none:3 at 808|temp_242_ptr2globl:4 at 804|temp_243_cmp:1 at 803|none:3 at 800|temp_244_ptr2globl:4 at 796|none:4 at 792|temp_245_array_ptr:8 at 784|temp_246_array_ele:4 at 780|temp_247_cmp:1 at 779|none:3 at 776|temp_248_ptr2globl:4 at 772|temp_249_arithop:4 at 768|temp_250_ret_of_detect_item:4 at 764|temp_251_cmp:1 at 763|none:3 at 760|temp_252_ptr2globl:4 at 756|temp_253_cmp:1 at 755|none:3 at 752|temp_254_ptr2globl:4 at 748|temp_255_arithop:4 at 744|temp_256_ptr2globl:4 at 740|none:4 at 736|temp_257_array_ptr:8 at 728|temp_258_array_ele:4 at 724|temp_259_cmp:1 at 723|temp_260_cmp:1 at 722|none:2 at 720|temp_261_array_init_ptr:8 at 712|temp_262_array_init_ptr:8 at 704|temp_263_array_init_ptr:8 at 696|temp_264_array_init_ptr:8 at 688|mTrue:16 at 672|temp_265_ptr2globl:4 at 668|temp_266_arithop:4 at 664|temp_267_cmp:1 at 663|none:3 at 660|temp_268_ptr2globl:4 at 656|temp_269_arithop:4 at 652|none:4 at 648|temp_270_array_ptr:8 at 640|temp_271_array_ele:4 at 636|temp_272_ptr2globl:4 at 632|temp_273_array_ptr:8 at 624|temp_274_array_ele:4 at 620|temp_275_cmp:1 at 619|none:3 at 616|temp_276_array_ptr:8 at 608|temp_277_array_ele:4 at 604|temp_278_ptr2globl:4 at 600|temp_279_arithop:4 at 596|none:4 at 592|temp_280_array_ptr:8 at 584|temp_281_array_ele:4 at 580|temp_282_cmp:1 at 579|none:3 at 576|temp_283_array_ptr:8 at 568|temp_284_array_ele:4 at 564|temp_285_ptr2globl:4 at 560|temp_286_arithop:4 at 556|none:4 at 552|temp_287_array_ptr:8 at 544|temp_288_array_ele:4 at 540|temp_289_cmp:1 at 539|none:3 at 536|temp_290_array_ptr:8 at 528|temp_291_array_ele:4 at 524|temp_292_ptr2globl:4 at 520|temp_293_arithop:4 at 516|none:4 at 512|temp_294_array_ptr:8 at 504|temp_295_array_ele:4 at 500|temp_296_cmp:1 at 499|temp_297_cmp:1 at 498|none:2 at 496|temp_298_array_init_ptr:8 at 488|temp_299_array_init_ptr:8 at 480|temp_300_array_init_ptr:8 at 472|temp_301_array_init_ptr:8 at 464|temp_302_array_init_ptr:8 at 456|mFalse:20 at 436|temp_303_ptr2globl:4 at 432|temp_304_arithop:4 at 428|temp_305_cmp:1 at 427|none:3 at 424|temp_306_ptr2globl:4 at 420|temp_307_arithop:4 at 416|temp_308_array_ptr:8 at 408|temp_309_array_ele:4 at 404|temp_310_ptr2globl:4 at 400|temp_311_array_ptr:8 at 392|temp_312_array_ele:4 at 388|temp_313_cmp:1 at 387|none:3 at 384|temp_314_array_ptr:8 at 376|temp_315_array_ele:4 at 372|temp_316_ptr2globl:4 at 368|temp_317_arithop:4 at 364|none:4 at 360|temp_318_array_ptr:8 at 352|temp_319_array_ele:4 at 348|temp_320_cmp:1 at 347|none:3 at 344|temp_321_array_ptr:8 at 336|temp_322_array_ele:4 at 332|temp_323_ptr2globl:4 at 328|temp_324_arithop:4 at 324|none:4 at 320|temp_325_array_ptr:8 at 312|temp_326_array_ele:4 at 308|temp_327_cmp:1 at 307|none:3 at 304|temp_328_array_ptr:8 at 296|temp_329_array_ele:4 at 292|temp_330_ptr2globl:4 at 288|temp_331_arithop:4 at 284|none:4 at 280|temp_332_array_ptr:8 at 272|temp_333_array_ele:4 at 268|temp_334_cmp:1 at 267|none:3 at 264|temp_335_array_ptr:8 at 256|temp_336_array_ele:4 at 252|temp_337_ptr2globl:4 at 248|temp_338_arithop:4 at 244|none:4 at 240|temp_339_array_ptr:8 at 232|temp_340_array_ele:4 at 228|temp_341_cmp:1 at 227|temp_342_cmp:1 at 226|none:2 at 224|temp_343_array_init_ptr:8 at 216|temp_344_array_init_ptr:8 at 208|temp_345_array_init_ptr:8 at 200|temp_346_array_init_ptr:8 at 192|mNull:16 at 176|temp_347_ptr2globl:4 at 172|temp_348_arithop:4 at 168|temp_349_cmp:1 at 167|none:3 at 164|temp_350_ptr2globl:4 at 160|temp_351_arithop:4 at 156|none:4 at 152|temp_352_array_ptr:8 at 144|temp_353_array_ele:4 at 140|temp_354_ptr2globl:4 at 136|temp_355_array_ptr:8 at 128|temp_356_array_ele:4 at 124|temp_357_cmp:1 at 123|none:3 at 120|temp_358_array_ptr:8 at 112|temp_359_array_ele:4 at 108|temp_360_ptr2globl:4 at 104|temp_361_arithop:4 at 100|none:4 at 96|temp_362_array_ptr:8 at 88|temp_363_array_ele:4 at 84|temp_364_cmp:1 at 83|none:3 at 80|temp_365_array_ptr:8 at 72|temp_366_array_ele:4 at 68|temp_367_ptr2globl:4 at 64|temp_368_arithop:4 at 60|none:4 at 56|temp_369_array_ptr:8 at 48|temp_370_array_ele:4 at 44|temp_371_cmp:1 at 43|none:3 at 40|temp_372_array_ptr:8 at 32|temp_373_array_ele:4 at 28|temp_374_ptr2globl:4 at 24|temp_375_arithop:4 at 20|none:4 at 16|temp_376_array_ptr:8 at 8|temp_377_array_ele:4 at 4|temp_378_cmp:1 at 3|none:3 at 0
    addi    sp,sp,-1856
              #                    store to ra_detect_item_0 in mem offset legal
    sd      ra,1848(sp)
              #                    store to s0_detect_item_0 in mem offset legal
    sd      s0,1840(sp)
    addi    s0,sp,1856
              #                          new_var buf_60:ptr->i32 
              #                          alloc i32 temp_29_ptr2globl_63 
              #                          alloc i1 temp_30_cmp_63 
              #                          alloc i1 temp_31_cmp_68 
              #                          alloc i32 temp_32_ptr2globl_71 
              #                          alloc ptr->i32 temp_33_array_ptr_71 
              #                          alloc i32 temp_34_array_ele_71 
              #                          alloc i1 temp_35_cmp_71 
              #                          alloc i32 temp_36_ret_of_detect_item_73 
              #                          alloc i32 temp_37_ptr2globl_75 
              #                          alloc ptr->i32 temp_38_array_ptr_75 
              #                          alloc i32 temp_39_array_ele_75 
              #                          alloc i1 temp_40_cmp_75 
              #                          alloc i32 temp_41_ret_of_detect_item_77 
              #                          alloc i32 temp_42_ptr2globl_79 
              #                          alloc ptr->i32 temp_43_array_ptr_79 
              #                          alloc i32 temp_44_array_ele_79 
              #                          alloc i1 temp_45_cmp_79 
              #                          alloc i32 temp_46_ret_of_detect_item_81 
              #                          alloc i32 temp_47_ptr2globl_83 
              #                          alloc ptr->i32 temp_48_array_ptr_83 
              #                          alloc i32 temp_49_array_ele_83 
              #                          alloc i32 temp_50_ret_of_is_number_83 
              #                          alloc i1 temp_51_cmp_83 
              #                          alloc i32 temp_52_ret_of_detect_item_85 
              #                          alloc i32 temp_53_ptr2globl_87 
              #                          alloc ptr->i32 temp_54_array_ptr_87 
              #                          alloc i32 temp_55_array_ele_87 
              #                          alloc i1 temp_56_cmp_87 
              #                          alloc i32 temp_57_ret_of_detect_item_89 
              #                          alloc i32 temp_58_ptr2globl_91 
              #                          alloc ptr->i32 temp_59_array_ptr_91 
              #                          alloc i32 temp_60_array_ele_91 
              #                          alloc i1 temp_61_cmp_91 
              #                          alloc i32 temp_62_ret_of_detect_item_93 
              #                          alloc i32 temp_63_ptr2globl_95 
              #                          alloc ptr->i32 temp_64_array_ptr_95 
              #                          alloc i32 temp_65_array_ele_95 
              #                          alloc i1 temp_66_cmp_95 
              #                          alloc i32 temp_67_ret_of_detect_item_97 
              #                          alloc i32 temp_68_ptr2globl_99 
              #                          alloc ptr->i32 temp_69_array_ptr_99 
              #                          alloc i32 temp_70_array_ele_99 
              #                          alloc i1 temp_71_cmp_99 
              #                          alloc i32 temp_72_ret_of_detect_item_101 
              #                          alloc i32 temp_73_ptr2globl_103 
              #                          alloc ptr->i32 temp_74_array_ptr_103 
              #                          alloc i32 temp_75_array_ele_103 
              #                          alloc i1 temp_76_cmp_103 
              #                          alloc i32 temp_77_ret_of_detect_item_105 
              #                          alloc i1 temp_78_cmp_109 
              #                          alloc i32 temp_79_ptr2globl_112 
              #                          alloc ptr->i32 temp_80_array_ptr_112 
              #                          alloc i32 temp_81_array_ele_112 
              #                          alloc i1 temp_82_cmp_112 
              #                          alloc i32 temp_83_ptr2globl_114 
              #                          alloc i32 temp_84_arithop_114 
              #                          alloc i32 temp_85_ptr2globl_120 
              #                          alloc i1 temp_86_cmp_120 
              #                          alloc i32 temp_87_ptr2globl_128 
              #                          alloc i1 temp_88_cmp_128 
              #                          alloc i32 temp_89_ptr2globl_131 
              #                          alloc ptr->i32 temp_90_array_ptr_131 
              #                          alloc i32 temp_91_array_ele_131 
              #                          alloc i32 temp_92_ret_of_is_number_131 
              #                          alloc i1 temp_93_cmp_131 
              #                          alloc i32 temp_94_ptr2globl_130 
              #                          alloc i32 temp_95_arithop_130 
              #                          alloc i32 temp_96_ptr2globl_135 
              #                          alloc i1 temp_97_cmp_135 
              #                          alloc i32 temp_98_ptr2globl_138 
              #                          alloc ptr->i32 temp_99_array_ptr_138 
              #                          alloc i32 temp_100_array_ele_138 
              #                          alloc i1 temp_101_cmp_138 
              #                          alloc i32 temp_102_ptr2globl_140 
              #                          alloc i32 temp_103_arithop_140 
              #                          alloc i32 temp_104_ptr2globl_142 
              #                          alloc i1 temp_105_cmp_142 
              #                          alloc i32 temp_106_ptr2globl_145 
              #                          alloc ptr->i32 temp_107_array_ptr_145 
              #                          alloc i32 temp_108_array_ele_145 
              #                          alloc i32 temp_109_ret_of_is_number_145 
              #                          alloc i1 temp_110_cmp_145 
              #                          alloc i32 temp_111_ptr2globl_144 
              #                          alloc i32 temp_112_arithop_144 
              #                          alloc i32 temp_113_ptr2globl_149 
              #                          alloc i1 temp_114_cmp_149 
              #                          alloc i32 temp_115_ptr2globl_152 
              #                          alloc ptr->i32 temp_116_array_ptr_152 
              #                          alloc i32 temp_117_array_ele_152 
              #                          alloc i1 temp_118_cmp_152 
              #                          alloc i32 temp_119_ptr2globl_154 
              #                          alloc i32 temp_120_arithop_154 
              #                          alloc i32 temp_121_ptr2globl_156 
              #                          alloc i1 temp_122_cmp_156 
              #                          alloc i32 temp_123_ptr2globl_159 
              #                          alloc ptr->i32 temp_124_array_ptr_159 
              #                          alloc i32 temp_125_array_ele_159 
              #                          alloc i1 temp_126_cmp_159 
              #                          alloc i32 temp_127_ptr2globl_161 
              #                          alloc i32 temp_128_arithop_161 
              #                          alloc i32 temp_129_ptr2globl_163 
              #                          alloc i1 temp_130_cmp_163 
              #                          alloc i32 temp_131_ptr2globl_166 
              #                          alloc ptr->i32 temp_132_array_ptr_166 
              #                          alloc i32 temp_133_array_ele_166 
              #                          alloc i1 temp_134_cmp_166 
              #                          alloc i32 temp_135_ptr2globl_168 
              #                          alloc i32 temp_136_arithop_168 
              #                          alloc i32 temp_137_ptr2globl_170 
              #                          alloc i1 temp_138_cmp_170 
              #                          alloc i32 temp_139_ptr2globl_173 
              #                          alloc ptr->i32 temp_140_array_ptr_173 
              #                          alloc i32 temp_141_array_ele_173 
              #                          alloc i32 temp_142_ret_of_is_number_173 
              #                          alloc i1 temp_143_cmp_173 
              #                          alloc i32 temp_144_ptr2globl_172 
              #                          alloc i32 temp_145_arithop_172 
              #                          alloc i32 temp_146_ptr2globl_124 
              #                          alloc ptr->i32 temp_147_array_ptr_124 
              #                          alloc i32 temp_148_array_ele_124 
              #                          alloc i32 temp_149_ret_of_is_number_124 
              #                          alloc i1 temp_150_cmp_124 
              #                          alloc i32 temp_151_ptr2globl_116 
              #                          alloc ptr->i32 temp_152_array_ptr_116 
              #                          alloc i32 temp_153_array_ele_116 
              #                          alloc i1 temp_154_cmp_116 
              #                          alloc i32 temp_155_ptr2globl_118 
              #                          alloc i32 temp_156_arithop_118 
              #                          alloc i1 temp_157_cmp_177 
              #                          alloc i32 temp_158_ptr2globl_179 
              #                          alloc i32 temp_159_arithop_179 
              #                          alloc i32 temp_160_ptr2globl_181 
              #                          alloc i1 temp_161_cmp_181 
              #                          alloc i32 temp_162_ptr2globl_184 
              #                          alloc ptr->i32 temp_163_array_ptr_184 
              #                          alloc i32 temp_164_array_ele_184 
              #                          alloc i1 temp_165_cmp_184 
              #                          alloc i32 temp_166_ptr2globl_187 
              #                          alloc ptr->i32 temp_167_array_ptr_187 
              #                          alloc i32 temp_168_array_ele_187 
              #                          alloc i1 temp_169_cmp_187 
              #                          alloc i32 temp_170_ptr2globl_189 
              #                          alloc i32 temp_171_arithop_189 
              #                          alloc i32 temp_172_ptr2globl_191 
              #                          alloc i32 temp_173_arithop_191 
              #                          alloc i32 temp_174_ptr2globl_193 
              #                          alloc i1 temp_175_cmp_193 
              #                          alloc i32 temp_176_ptr2globl_179 
              #                          alloc i32 temp_177_arithop_179 
              #                          alloc i32 temp_178_ptr2globl_197 
              #                          alloc ptr->i32 temp_179_array_ptr_197 
              #                          alloc i32 temp_180_array_ele_197 
              #                          alloc i1 temp_181_cmp_197 
              #                          alloc i1 temp_182_cmp_202 
              #                          alloc i32 temp_183_ptr2globl_204 
              #                          alloc i32 temp_184_arithop_204 
              #                          alloc i32 temp_185_ptr2globl_207 
              #                          alloc i1 temp_186_cmp_207 
              #                          alloc i32 temp_187_ptr2globl_210 
              #                          alloc ptr->i32 temp_188_array_ptr_210 
              #                          alloc i32 temp_189_array_ele_210 
              #                          alloc i1 temp_190_cmp_210 
              #                          alloc i32 temp_191_ptr2globl_212 
              #                          alloc i32 temp_192_arithop_212 
              #                          alloc i32 temp_193_ret_of_detect_item_215 
              #                          alloc i1 temp_194_cmp_215 
              #                          alloc i32 temp_195_ptr2globl_220 
              #                          alloc ptr->i32 temp_196_array_ptr_220 
              #                          alloc i32 temp_197_array_ele_220 
              #                          alloc i1 temp_198_cmp_220 
              #                          alloc i32 temp_199_ptr2globl_222 
              #                          alloc i32 temp_200_arithop_222 
              #                          alloc i32 temp_201_ret_of_detect_item_225 
              #                          alloc i1 temp_202_cmp_225 
              #                          alloc i32 temp_203_ptr2globl_231 
              #                          alloc i1 temp_204_cmp_231 
              #                          alloc i32 temp_205_ptr2globl_235 
              #                          alloc ptr->i32 temp_206_array_ptr_235 
              #                          alloc i32 temp_207_array_ele_235 
              #                          alloc i1 temp_208_cmp_235 
              #                          alloc i32 temp_209_ptr2globl_204 
              #                          alloc i32 temp_210_arithop_204 
              #                          alloc i1 temp_211_cmp_240 
              #                          alloc i32 temp_212_ptr2globl_242 
              #                          alloc i32 temp_213_arithop_242 
              #                          alloc i32 temp_214_ptr2globl_245 
              #                          alloc i1 temp_215_cmp_245 
              #                          alloc i32 temp_216_ptr2globl_248 
              #                          alloc ptr->i32 temp_217_array_ptr_248 
              #                          alloc i32 temp_218_array_ele_248 
              #                          alloc i1 temp_219_cmp_248 
              #                          alloc i32 temp_220_ptr2globl_250 
              #                          alloc i32 temp_221_arithop_250 
              #                          alloc i32 temp_222_ret_of_detect_item_253 
              #                          alloc i1 temp_223_cmp_253 
              #                          alloc i32 temp_224_ptr2globl_258 
              #                          alloc i1 temp_225_cmp_258 
              #                          alloc i32 temp_226_ptr2globl_262 
              #                          alloc ptr->i32 temp_227_array_ptr_262 
              #                          alloc i32 temp_228_array_ele_262 
              #                          alloc i1 temp_229_cmp_262 
              #                          alloc i32 temp_230_ptr2globl_242 
              #                          alloc i32 temp_231_arithop_242 
              #                          alloc i32 temp_232_ret_of_detect_item_268 
              #                          alloc i1 temp_233_cmp_268 
              #                          alloc i32 temp_234_ptr2globl_273 
              #                          alloc ptr->i32 temp_235_array_ptr_273 
              #                          alloc i32 temp_236_array_ele_273 
              #                          alloc i1 temp_237_cmp_273 
              #                          alloc i32 temp_238_ptr2globl_275 
              #                          alloc i32 temp_239_arithop_275 
              #                          alloc i32 temp_240_ret_of_detect_item_278 
              #                          alloc i1 temp_241_cmp_278 
              #                          alloc i32 temp_242_ptr2globl_283 
              #                          alloc i1 temp_243_cmp_283 
              #                          alloc i32 temp_244_ptr2globl_287 
              #                          alloc ptr->i32 temp_245_array_ptr_287 
              #                          alloc i32 temp_246_array_ele_287 
              #                          alloc i1 temp_247_cmp_287 
              #                          alloc i32 temp_248_ptr2globl_275 
              #                          alloc i32 temp_249_arithop_275 
              #                          alloc i32 temp_250_ret_of_detect_item_293 
              #                          alloc i1 temp_251_cmp_293 
              #                          alloc i32 temp_252_ptr2globl_299 
              #                          alloc i1 temp_253_cmp_299 
              #                          alloc i32 temp_254_ptr2globl_242 
              #                          alloc i32 temp_255_arithop_242 
              #                          alloc i32 temp_256_ptr2globl_303 
              #                          alloc ptr->i32 temp_257_array_ptr_303 
              #                          alloc i32 temp_258_array_ele_303 
              #                          alloc i1 temp_259_cmp_303 
              #                          alloc i1 temp_260_cmp_308 
              #                          alloc ptr->i32 temp_261_array_init_ptr_310 
              #                          alloc ptr->i32 temp_262_array_init_ptr_310 
              #                          alloc ptr->i32 temp_263_array_init_ptr_310 
              #                          alloc ptr->i32 temp_264_array_init_ptr_310 
              #                          alloc Array:i32:[Some(4_0)] mTrue_310 
              #                          alloc i32 temp_265_ptr2globl_312 
              #                          alloc i32 temp_266_arithop_312 
              #                          alloc i1 temp_267_cmp_312 
              #                          alloc i32 temp_268_ptr2globl_310 
              #                          alloc i32 temp_269_arithop_310 
              #                          alloc ptr->i32 temp_270_array_ptr_316 
              #                          alloc i32 temp_271_array_ele_316 
              #                          alloc i32 temp_272_ptr2globl_316 
              #                          alloc ptr->i32 temp_273_array_ptr_316 
              #                          alloc i32 temp_274_array_ele_316 
              #                          alloc i1 temp_275_cmp_316 
              #                          alloc ptr->i32 temp_276_array_ptr_320 
              #                          alloc i32 temp_277_array_ele_320 
              #                          alloc i32 temp_278_ptr2globl_320 
              #                          alloc i32 temp_279_arithop_320 
              #                          alloc ptr->i32 temp_280_array_ptr_320 
              #                          alloc i32 temp_281_array_ele_320 
              #                          alloc i1 temp_282_cmp_320 
              #                          alloc ptr->i32 temp_283_array_ptr_324 
              #                          alloc i32 temp_284_array_ele_324 
              #                          alloc i32 temp_285_ptr2globl_324 
              #                          alloc i32 temp_286_arithop_324 
              #                          alloc ptr->i32 temp_287_array_ptr_324 
              #                          alloc i32 temp_288_array_ele_324 
              #                          alloc i1 temp_289_cmp_324 
              #                          alloc ptr->i32 temp_290_array_ptr_328 
              #                          alloc i32 temp_291_array_ele_328 
              #                          alloc i32 temp_292_ptr2globl_328 
              #                          alloc i32 temp_293_arithop_328 
              #                          alloc ptr->i32 temp_294_array_ptr_328 
              #                          alloc i32 temp_295_array_ele_328 
              #                          alloc i1 temp_296_cmp_328 
              #                          alloc i1 temp_297_cmp_333 
              #                          alloc ptr->i32 temp_298_array_init_ptr_335 
              #                          alloc ptr->i32 temp_299_array_init_ptr_335 
              #                          alloc ptr->i32 temp_300_array_init_ptr_335 
              #                          alloc ptr->i32 temp_301_array_init_ptr_335 
              #                          alloc ptr->i32 temp_302_array_init_ptr_335 
              #                          alloc Array:i32:[Some(5_0)] mFalse_335 
              #                          alloc i32 temp_303_ptr2globl_337 
              #                          alloc i32 temp_304_arithop_337 
              #                          alloc i1 temp_305_cmp_337 
              #                          alloc i32 temp_306_ptr2globl_335 
              #                          alloc i32 temp_307_arithop_335 
              #                          alloc ptr->i32 temp_308_array_ptr_341 
              #                          alloc i32 temp_309_array_ele_341 
              #                          alloc i32 temp_310_ptr2globl_341 
              #                          alloc ptr->i32 temp_311_array_ptr_341 
              #                          alloc i32 temp_312_array_ele_341 
              #                          alloc i1 temp_313_cmp_341 
              #                          alloc ptr->i32 temp_314_array_ptr_345 
              #                          alloc i32 temp_315_array_ele_345 
              #                          alloc i32 temp_316_ptr2globl_345 
              #                          alloc i32 temp_317_arithop_345 
              #                          alloc ptr->i32 temp_318_array_ptr_345 
              #                          alloc i32 temp_319_array_ele_345 
              #                          alloc i1 temp_320_cmp_345 
              #                          alloc ptr->i32 temp_321_array_ptr_349 
              #                          alloc i32 temp_322_array_ele_349 
              #                          alloc i32 temp_323_ptr2globl_349 
              #                          alloc i32 temp_324_arithop_349 
              #                          alloc ptr->i32 temp_325_array_ptr_349 
              #                          alloc i32 temp_326_array_ele_349 
              #                          alloc i1 temp_327_cmp_349 
              #                          alloc ptr->i32 temp_328_array_ptr_353 
              #                          alloc i32 temp_329_array_ele_353 
              #                          alloc i32 temp_330_ptr2globl_353 
              #                          alloc i32 temp_331_arithop_353 
              #                          alloc ptr->i32 temp_332_array_ptr_353 
              #                          alloc i32 temp_333_array_ele_353 
              #                          alloc i1 temp_334_cmp_353 
              #                          alloc ptr->i32 temp_335_array_ptr_357 
              #                          alloc i32 temp_336_array_ele_357 
              #                          alloc i32 temp_337_ptr2globl_357 
              #                          alloc i32 temp_338_arithop_357 
              #                          alloc ptr->i32 temp_339_array_ptr_357 
              #                          alloc i32 temp_340_array_ele_357 
              #                          alloc i1 temp_341_cmp_357 
              #                          alloc i1 temp_342_cmp_362 
              #                          alloc ptr->i32 temp_343_array_init_ptr_364 
              #                          alloc ptr->i32 temp_344_array_init_ptr_364 
              #                          alloc ptr->i32 temp_345_array_init_ptr_364 
              #                          alloc ptr->i32 temp_346_array_init_ptr_364 
              #                          alloc Array:i32:[Some(4_0)] mNull_364 
              #                          alloc i32 temp_347_ptr2globl_366 
              #                          alloc i32 temp_348_arithop_366 
              #                          alloc i1 temp_349_cmp_366 
              #                          alloc i32 temp_350_ptr2globl_364 
              #                          alloc i32 temp_351_arithop_364 
              #                          alloc ptr->i32 temp_352_array_ptr_370 
              #                          alloc i32 temp_353_array_ele_370 
              #                          alloc i32 temp_354_ptr2globl_370 
              #                          alloc ptr->i32 temp_355_array_ptr_370 
              #                          alloc i32 temp_356_array_ele_370 
              #                          alloc i1 temp_357_cmp_370 
              #                          alloc ptr->i32 temp_358_array_ptr_374 
              #                          alloc i32 temp_359_array_ele_374 
              #                          alloc i32 temp_360_ptr2globl_374 
              #                          alloc i32 temp_361_arithop_374 
              #                          alloc ptr->i32 temp_362_array_ptr_374 
              #                          alloc i32 temp_363_array_ele_374 
              #                          alloc i1 temp_364_cmp_374 
              #                          alloc ptr->i32 temp_365_array_ptr_378 
              #                          alloc i32 temp_366_array_ele_378 
              #                          alloc i32 temp_367_ptr2globl_378 
              #                          alloc i32 temp_368_arithop_378 
              #                          alloc ptr->i32 temp_369_array_ptr_378 
              #                          alloc i32 temp_370_array_ele_378 
              #                          alloc i1 temp_371_cmp_378 
              #                          alloc ptr->i32 temp_372_array_ptr_382 
              #                          alloc i32 temp_373_array_ele_382 
              #                          alloc i32 temp_374_ptr2globl_382 
              #                          alloc i32 temp_375_arithop_382 
              #                          alloc ptr->i32 temp_376_array_ptr_382 
              #                          alloc i32 temp_377_array_ele_382 
              #                          alloc i1 temp_378_cmp_382 
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: buf_60, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_29_ptr2globl_63:i32 
              #                          temp_29_ptr2globl_63 = load *pos_0:ptr->i32 
              #                    occupy a3 with *pos_0
              #                       load label pos as ptr to reg
    la      a3, pos
              #                    occupy reg a3 with *pos_0
              #                    occupy a4 with temp_29_ptr2globl_63
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          new_var temp_30_cmp_63:i1 
              #                          temp_30_cmp_63 = icmp i32 Sge temp_29_ptr2globl_63, len_60 
              #                    occupy a4 with temp_29_ptr2globl_63
              #                    occupy a2 with len_60
              #                    occupy a5 with temp_30_cmp_63
    slt     a5,a4,a2
    xori    a5,a5,1
              #                    free a4
              #                    free a2
              #                    free a5
              #                          br i1 temp_30_cmp_63, label branch_true_64, label branch_false_64 
              #                    occupy a5 with temp_30_cmp_63
              #                    free a5
              #                    occupy a5 with temp_30_cmp_63
    bnez    a5, .branch_true_64
              #                    free a5
    j       .branch_false_64
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: buf_60, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a4:Freed { symidx: temp_29_ptr2globl_63, tracked: true } |     a5:Freed { symidx: temp_30_cmp_63, tracked: true } | 
              #                          label branch_true_64: 
.branch_true_64:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: buf_60, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a4:Freed { symidx: temp_29_ptr2globl_63, tracked: true } |     a5:Freed { symidx: temp_30_cmp_63, tracked: true } | 
              #                          label branch_false_64: 
.branch_false_64:
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: buf_60, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a4:Freed { symidx: temp_29_ptr2globl_63, tracked: true } |     a5:Freed { symidx: temp_30_cmp_63, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    store to buf_60 in mem offset legal
    sd      a1,1824(sp)
              #                    release a1 with buf_60
              #                    store to len_60 in mem offset legal
    sw      a2,1820(sp)
              #                    release a2 with len_60
              #                    store to temp_29_ptr2globl_63 in mem offset legal
    sw      a4,1816(sp)
              #                    release a4 with temp_29_ptr2globl_63
              #                    store to temp_30_cmp_63 in mem offset legal
    sb      a5,1815(sp)
              #                    release a5 with temp_30_cmp_63
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_31_cmp_68:i1 
              #                          temp_31_cmp_68 = icmp i32 Eq type_60, 0_0 
              #                    occupy a0 with type_60
              #                    load from type_60 in mem


    lw      a0,1836(sp)
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_31_cmp_68
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_31_cmp_68, label branch_true_69, label branch_false_69 
              #                    occupy a2 with temp_31_cmp_68
              #                    free a2
              #                    occupy a2 with temp_31_cmp_68
    bnez    a2, .branch_true_69
              #                    free a2
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } | 
              #                          label branch_true_69: 
.branch_true_69:
              #                          new_var temp_32_ptr2globl_71:i32 
              #                          temp_32_ptr2globl_71 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a3 with temp_32_ptr2globl_71
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_33_array_ptr_71:ptr->i32 
              #                          temp_33_array_ptr_71 = getelementptr buf_60:ptr->i32 [Some(temp_32_ptr2globl_71)] 
              #                    occupy a4 with temp_33_array_ptr_71
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_32_ptr2globl_71
              #                    occupy a6 with _anonymous_of_buf_60_0
    mul     a6,a5,a3
              #                    free a5
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with buf_60
              #                    load from buf_60 in mem
    ld      a7,1824(sp)
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          new_var temp_34_array_ele_71:i32 
              #                          temp_34_array_ele_71 = load temp_33_array_ptr_71:ptr->i32 
              #                    occupy a4 with temp_33_array_ptr_71
              #                    occupy s1 with temp_34_array_ele_71
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          new_var temp_35_cmp_71:i1 
              #                          temp_35_cmp_71 = icmp i32 Eq temp_34_array_ele_71, 123_0 
              #                    occupy s1 with temp_34_array_ele_71
              #                    occupy s2 with 123_0
    li      s2, 123
              #                    occupy s3 with temp_35_cmp_71
    xor     s3,s1,s2
    seqz    s3, s3
              #                    free s1
              #                    free s2
              #                    free s3
              #                          br i1 temp_35_cmp_71, label branch_true_72, label branch_false_72 
              #                    occupy s3 with temp_35_cmp_71
              #                    free s3
              #                    occupy s3 with temp_35_cmp_71
    bnez    s3, .branch_true_72
              #                    free s3
    j       .branch_false_72
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_32_ptr2globl_71, tracked: true } |     a4:Freed { symidx: temp_33_array_ptr_71, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s1:Freed { symidx: temp_34_array_ele_71, tracked: true } |     s3:Freed { symidx: temp_35_cmp_71, tracked: true } | 
              #                          label branch_true_72: 
.branch_true_72:
              #                          new_var temp_36_ret_of_detect_item_73:i32 
              #                          temp_36_ret_of_detect_item_73 =  Call i32 detect_item_0(4_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_34_array_ele_71 in mem offset legal
    sw      s1,1796(sp)
              #                    release s1 with temp_34_array_ele_71
              #                    store to temp_35_cmp_71 in mem offset legal
    sb      s3,1795(sp)
              #                    release s3 with temp_35_cmp_71
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    store to temp_31_cmp_68 in mem offset legal
    sb      a2,1814(sp)
              #                    release a2 with temp_31_cmp_68
              #                    store to temp_32_ptr2globl_71 in mem offset legal
    sw      a3,1808(sp)
              #                    release a3 with temp_32_ptr2globl_71
              #                    store to temp_33_array_ptr_71 in mem offset legal
    sd      a4,1800(sp)
              #                    release a4 with temp_33_array_ptr_71
              #                    store to buf_60 in mem offset legal
    sd      a7,1824(sp)
              #                    release a7 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_36_ret_of_detect_item_73 in mem offset legal
    sw      a0,1788(sp)
              #                          ret temp_36_ret_of_detect_item_73 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_36_ret_of_detect_item_73 in mem offset legal
    sw      a0,1788(sp)
              #                    release a0 with temp_36_ret_of_detect_item_73
              #                    occupy a0 with temp_36_ret_of_detect_item_73
              #                    load from temp_36_ret_of_detect_item_73 in mem


    lw      a0,1788(sp)
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_32_ptr2globl_71, tracked: true } |     a4:Freed { symidx: temp_33_array_ptr_71, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s1:Freed { symidx: temp_34_array_ele_71, tracked: true } |     s3:Freed { symidx: temp_35_cmp_71, tracked: true } | 
              #                          label branch_false_72: 
.branch_false_72:
              #                          new_var temp_37_ptr2globl_75:i32 
              #                          temp_37_ptr2globl_75 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a5 with temp_37_ptr2globl_75
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_38_array_ptr_75:ptr->i32 
              #                          temp_38_array_ptr_75 = getelementptr buf_60:ptr->i32 [Some(temp_37_ptr2globl_75)] 
              #                    occupy a6 with temp_38_array_ptr_75
    li      a6, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a5 with temp_37_ptr2globl_75
              #                    occupy s4 with _anonymous_of_buf_60_0
    mul     s4,s2,a5
              #                    free s2
              #                    free a5
    add     a6,a6,s4
              #                    free s4
    slli a6,a6,2
              #                    occupy a7 with buf_60
    add     a6,a6,a7
              #                    free a7
              #                    free a6
              #                          new_var temp_39_array_ele_75:i32 
              #                          temp_39_array_ele_75 = load temp_38_array_ptr_75:ptr->i32 
              #                    occupy a6 with temp_38_array_ptr_75
              #                    occupy s5 with temp_39_array_ele_75
    lw      s5,0(a6)
              #                    free s5
              #                    free a6
              #                          new_var temp_40_cmp_75:i1 
              #                          temp_40_cmp_75 = icmp i32 Eq temp_39_array_ele_75, 91_0 
              #                    occupy s5 with temp_39_array_ele_75
              #                    occupy s6 with 91_0
    li      s6, 91
              #                    occupy s7 with temp_40_cmp_75
    xor     s7,s5,s6
    seqz    s7, s7
              #                    free s5
              #                    free s6
              #                    free s7
              #                          br i1 temp_40_cmp_75, label branch_true_76, label branch_false_76 
              #                    occupy s7 with temp_40_cmp_75
              #                    free s7
              #                    occupy s7 with temp_40_cmp_75
    bnez    s7, .branch_true_76
              #                    free s7
    j       .branch_false_76
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_32_ptr2globl_71, tracked: true } |     a4:Freed { symidx: temp_33_array_ptr_71, tracked: true } |     a5:Freed { symidx: temp_37_ptr2globl_75, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_75, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s1:Freed { symidx: temp_34_array_ele_71, tracked: true } |     s3:Freed { symidx: temp_35_cmp_71, tracked: true } |     s5:Freed { symidx: temp_39_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_40_cmp_75, tracked: true } | 
              #                          label branch_true_76: 
.branch_true_76:
              #                          new_var temp_41_ret_of_detect_item_77:i32 
              #                          temp_41_ret_of_detect_item_77 =  Call i32 detect_item_0(3_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_34_array_ele_71 in mem offset legal
    sw      s1,1796(sp)
              #                    release s1 with temp_34_array_ele_71
              #                    store to temp_35_cmp_71 in mem offset legal
    sb      s3,1795(sp)
              #                    release s3 with temp_35_cmp_71
              #                    store to temp_39_array_ele_75 in mem offset legal
    sw      s5,1772(sp)
              #                    release s5 with temp_39_array_ele_75
              #                    store to temp_40_cmp_75 in mem offset legal
    sb      s7,1771(sp)
              #                    release s7 with temp_40_cmp_75
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    store to temp_31_cmp_68 in mem offset legal
    sb      a2,1814(sp)
              #                    release a2 with temp_31_cmp_68
              #                    store to temp_32_ptr2globl_71 in mem offset legal
    sw      a3,1808(sp)
              #                    release a3 with temp_32_ptr2globl_71
              #                    store to temp_33_array_ptr_71 in mem offset legal
    sd      a4,1800(sp)
              #                    release a4 with temp_33_array_ptr_71
              #                    store to temp_37_ptr2globl_75 in mem offset legal
    sw      a5,1784(sp)
              #                    release a5 with temp_37_ptr2globl_75
              #                    store to temp_38_array_ptr_75 in mem offset legal
    sd      a6,1776(sp)
              #                    release a6 with temp_38_array_ptr_75
              #                    store to buf_60 in mem offset legal
    sd      a7,1824(sp)
              #                    release a7 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_41_ret_of_detect_item_77 in mem offset legal
    sw      a0,1764(sp)
              #                          ret temp_41_ret_of_detect_item_77 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_41_ret_of_detect_item_77 in mem offset legal
    sw      a0,1764(sp)
              #                    release a0 with temp_41_ret_of_detect_item_77
              #                    occupy a0 with temp_41_ret_of_detect_item_77
              #                    load from temp_41_ret_of_detect_item_77 in mem


    lw      a0,1764(sp)
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_32_ptr2globl_71, tracked: true } |     a4:Freed { symidx: temp_33_array_ptr_71, tracked: true } |     a5:Freed { symidx: temp_37_ptr2globl_75, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_75, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s1:Freed { symidx: temp_34_array_ele_71, tracked: true } |     s3:Freed { symidx: temp_35_cmp_71, tracked: true } |     s5:Freed { symidx: temp_39_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_40_cmp_75, tracked: true } | 
              #                          label branch_false_76: 
.branch_false_76:
              #                          new_var temp_42_ptr2globl_79:i32 
              #                          temp_42_ptr2globl_79 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s2 with temp_42_ptr2globl_79
    lw      s2,0(a1)
              #                    free s2
              #                    free a1
              #                          new_var temp_43_array_ptr_79:ptr->i32 
              #                          temp_43_array_ptr_79 = getelementptr buf_60:ptr->i32 [Some(temp_42_ptr2globl_79)] 
              #                    occupy s4 with temp_43_array_ptr_79
    li      s4, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s2 with temp_42_ptr2globl_79
              #                    occupy s8 with _anonymous_of_buf_60_0
    mul     s8,s6,s2
              #                    free s6
              #                    free s2
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
              #                    occupy a7 with buf_60
    add     s4,s4,a7
              #                    free a7
              #                    free s4
              #                          new_var temp_44_array_ele_79:i32 
              #                          temp_44_array_ele_79 = load temp_43_array_ptr_79:ptr->i32 
              #                    occupy s4 with temp_43_array_ptr_79
              #                    occupy s9 with temp_44_array_ele_79
    lw      s9,0(s4)
              #                    free s9
              #                    free s4
              #                          new_var temp_45_cmp_79:i1 
              #                          temp_45_cmp_79 = icmp i32 Eq temp_44_array_ele_79, 34_0 
              #                    occupy s9 with temp_44_array_ele_79
              #                    occupy s10 with 34_0
    li      s10, 34
              #                    occupy s11 with temp_45_cmp_79
    xor     s11,s9,s10
    seqz    s11, s11
              #                    free s9
              #                    free s10
              #                    free s11
              #                          br i1 temp_45_cmp_79, label branch_true_80, label branch_false_80 
              #                    occupy s11 with temp_45_cmp_79
              #                    free s11
              #                    occupy s11 with temp_45_cmp_79
    bnez    s11, .branch_true_80
              #                    free s11
    j       .branch_false_80
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_32_ptr2globl_71, tracked: true } |     a4:Freed { symidx: temp_33_array_ptr_71, tracked: true } |     a5:Freed { symidx: temp_37_ptr2globl_75, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_75, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_34_array_ele_71, tracked: true } |     s2:Freed { symidx: temp_42_ptr2globl_79, tracked: true } |     s3:Freed { symidx: temp_35_cmp_71, tracked: true } |     s4:Freed { symidx: temp_43_array_ptr_79, tracked: true } |     s5:Freed { symidx: temp_39_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_40_cmp_75, tracked: true } |     s9:Freed { symidx: temp_44_array_ele_79, tracked: true } | 
              #                          label branch_true_80: 
.branch_true_80:
              #                          new_var temp_46_ret_of_detect_item_81:i32 
              #                          temp_46_ret_of_detect_item_81 =  Call i32 detect_item_0(2_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_34_array_ele_71 in mem offset legal
    sw      s1,1796(sp)
              #                    release s1 with temp_34_array_ele_71
              #                    store to temp_42_ptr2globl_79 in mem offset legal
    sw      s2,1760(sp)
              #                    release s2 with temp_42_ptr2globl_79
              #                    store to temp_35_cmp_71 in mem offset legal
    sb      s3,1795(sp)
              #                    release s3 with temp_35_cmp_71
              #                    store to temp_43_array_ptr_79 in mem offset legal
    sd      s4,1752(sp)
              #                    release s4 with temp_43_array_ptr_79
              #                    store to temp_39_array_ele_75 in mem offset legal
    sw      s5,1772(sp)
              #                    release s5 with temp_39_array_ele_75
              #                    store to temp_40_cmp_75 in mem offset legal
    sb      s7,1771(sp)
              #                    release s7 with temp_40_cmp_75
              #                    store to temp_44_array_ele_79 in mem offset legal
    sw      s9,1748(sp)
              #                    release s9 with temp_44_array_ele_79
              #                    store to temp_45_cmp_79 in mem offset legal
    sb      s11,1747(sp)
              #                    release s11 with temp_45_cmp_79
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    store to temp_31_cmp_68 in mem offset legal
    sb      a2,1814(sp)
              #                    release a2 with temp_31_cmp_68
              #                    store to temp_32_ptr2globl_71 in mem offset legal
    sw      a3,1808(sp)
              #                    release a3 with temp_32_ptr2globl_71
              #                    store to temp_33_array_ptr_71 in mem offset legal
    sd      a4,1800(sp)
              #                    release a4 with temp_33_array_ptr_71
              #                    store to temp_37_ptr2globl_75 in mem offset legal
    sw      a5,1784(sp)
              #                    release a5 with temp_37_ptr2globl_75
              #                    store to temp_38_array_ptr_75 in mem offset legal
    sd      a6,1776(sp)
              #                    release a6 with temp_38_array_ptr_75
              #                    store to buf_60 in mem offset legal
    sd      a7,1824(sp)
              #                    release a7 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_46_ret_of_detect_item_81 in mem offset legal
    sw      a0,1740(sp)
              #                          ret temp_46_ret_of_detect_item_81 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_46_ret_of_detect_item_81 in mem offset legal
    sw      a0,1740(sp)
              #                    release a0 with temp_46_ret_of_detect_item_81
              #                    occupy a0 with temp_46_ret_of_detect_item_81
              #                    load from temp_46_ret_of_detect_item_81 in mem


    lw      a0,1740(sp)
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_32_ptr2globl_71, tracked: true } |     a4:Freed { symidx: temp_33_array_ptr_71, tracked: true } |     a5:Freed { symidx: temp_37_ptr2globl_75, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_75, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_34_array_ele_71, tracked: true } |     s2:Freed { symidx: temp_42_ptr2globl_79, tracked: true } |     s3:Freed { symidx: temp_35_cmp_71, tracked: true } |     s4:Freed { symidx: temp_43_array_ptr_79, tracked: true } |     s5:Freed { symidx: temp_39_array_ele_75, tracked: true } |     s7:Freed { symidx: temp_40_cmp_75, tracked: true } |     s9:Freed { symidx: temp_44_array_ele_79, tracked: true } | 
              #                          label branch_false_80: 
.branch_false_80:
              #                          new_var temp_47_ptr2globl_83:i32 
              #                          temp_47_ptr2globl_83 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s6 with temp_47_ptr2globl_83
    lw      s6,0(a1)
              #                    free s6
              #                    free a1
              #                          new_var temp_48_array_ptr_83:ptr->i32 
              #                          temp_48_array_ptr_83 = getelementptr buf_60:ptr->i32 [Some(temp_47_ptr2globl_83)] 
              #                    occupy s8 with temp_48_array_ptr_83
    li      s8, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s6 with temp_47_ptr2globl_83
              #                    occupy a1 with _anonymous_of_buf_60_0
    mul     a1,s10,s6
              #                    free s10
              #                    free s6
    add     s8,s8,a1
              #                    free a1
    slli s8,s8,2
              #                    occupy a7 with buf_60
    add     s8,s8,a7
              #                    free a7
              #                    free s8
              #                          new_var temp_49_array_ele_83:i32 
              #                          temp_49_array_ele_83 = load temp_48_array_ptr_83:ptr->i32 
              #                    occupy s8 with temp_48_array_ptr_83
              #                    occupy a1 with temp_49_array_ele_83
    lw      a1,0(s8)
              #                    free a1
              #                    free s8
              #                          new_var temp_50_ret_of_is_number_83:i32 
              #                          temp_50_ret_of_is_number_83 =  Call i32 is_number_0(temp_49_array_ele_83) 
              #                    saved register dumping to mem
              #                    store to temp_34_array_ele_71 in mem offset legal
    sw      s1,1796(sp)
              #                    release s1 with temp_34_array_ele_71
              #                    store to temp_42_ptr2globl_79 in mem offset legal
    sw      s2,1760(sp)
              #                    release s2 with temp_42_ptr2globl_79
              #                    store to temp_35_cmp_71 in mem offset legal
    sb      s3,1795(sp)
              #                    release s3 with temp_35_cmp_71
              #                    store to temp_43_array_ptr_79 in mem offset legal
    sd      s4,1752(sp)
              #                    release s4 with temp_43_array_ptr_79
              #                    store to temp_39_array_ele_75 in mem offset legal
    sw      s5,1772(sp)
              #                    release s5 with temp_39_array_ele_75
              #                    store to temp_47_ptr2globl_83 in mem offset legal
    sw      s6,1736(sp)
              #                    release s6 with temp_47_ptr2globl_83
              #                    store to temp_40_cmp_75 in mem offset legal
    sb      s7,1771(sp)
              #                    release s7 with temp_40_cmp_75
              #                    store to temp_48_array_ptr_83 in mem offset legal
    sd      s8,1728(sp)
              #                    release s8 with temp_48_array_ptr_83
              #                    store to temp_44_array_ele_79 in mem offset legal
    sw      s9,1748(sp)
              #                    release s9 with temp_44_array_ele_79
              #                    store to temp_45_cmp_79 in mem offset legal
    sb      s11,1747(sp)
              #                    release s11 with temp_45_cmp_79
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    store to temp_49_array_ele_83 in mem offset legal
    sw      a1,1724(sp)
              #                    release a1 with temp_49_array_ele_83
              #                    store to temp_31_cmp_68 in mem offset legal
    sb      a2,1814(sp)
              #                    release a2 with temp_31_cmp_68
              #                    store to temp_32_ptr2globl_71 in mem offset legal
    sw      a3,1808(sp)
              #                    release a3 with temp_32_ptr2globl_71
              #                    store to temp_33_array_ptr_71 in mem offset legal
    sd      a4,1800(sp)
              #                    release a4 with temp_33_array_ptr_71
              #                    store to temp_37_ptr2globl_75 in mem offset legal
    sw      a5,1784(sp)
              #                    release a5 with temp_37_ptr2globl_75
              #                    store to temp_38_array_ptr_75 in mem offset legal
    sd      a6,1776(sp)
              #                    release a6 with temp_38_array_ptr_75
              #                    store to buf_60 in mem offset legal
    sd      a7,1824(sp)
              #                    release a7 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_49_array_ele_83_0
              #                    load from temp_49_array_ele_83 in mem


    lw      a0,1724(sp)
              #                    arg load ended


    call    is_number
              #                    store to temp_50_ret_of_is_number_83 in mem offset legal
    sw      a0,1720(sp)
              #                          new_var temp_51_cmp_83:i1 
              #                          temp_51_cmp_83 = icmp i32 Eq temp_50_ret_of_is_number_83, 1_0 
              #                    occupy a0 with temp_50_ret_of_is_number_83
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_51_cmp_83
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_51_cmp_83, label branch_true_84, label branch_false_84 
              #                    occupy a2 with temp_51_cmp_83
              #                    free a2
              #                    occupy a2 with temp_51_cmp_83
    bnez    a2, .branch_true_84
              #                    free a2
    j       .branch_false_84
              #                    regtab     a0:Freed { symidx: temp_50_ret_of_is_number_83, tracked: true } |     a2:Freed { symidx: temp_51_cmp_83, tracked: true } | 
              #                          label branch_true_84: 
.branch_true_84:
              #                          new_var temp_52_ret_of_detect_item_85:i32 
              #                          temp_52_ret_of_detect_item_85 =  Call i32 detect_item_0(1_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_50_ret_of_is_number_83 in mem offset legal
    sw      a0,1720(sp)
              #                    release a0 with temp_50_ret_of_is_number_83
              #                    store to temp_51_cmp_83 in mem offset legal
    sb      a2,1719(sp)
              #                    release a2 with temp_51_cmp_83
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_52_ret_of_detect_item_85 in mem offset legal
    sw      a0,1712(sp)
              #                          ret temp_52_ret_of_detect_item_85 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_52_ret_of_detect_item_85 in mem offset legal
    sw      a0,1712(sp)
              #                    release a0 with temp_52_ret_of_detect_item_85
              #                    occupy a0 with temp_52_ret_of_detect_item_85
              #                    load from temp_52_ret_of_detect_item_85 in mem


    lw      a0,1712(sp)
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_50_ret_of_is_number_83, tracked: true } |     a2:Freed { symidx: temp_51_cmp_83, tracked: true } | 
              #                          label branch_false_84: 
.branch_false_84:
              #                          new_var temp_53_ptr2globl_87:i32 
              #                          temp_53_ptr2globl_87 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a3 with temp_53_ptr2globl_87
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_54_array_ptr_87:ptr->i32 
              #                          temp_54_array_ptr_87 = getelementptr buf_60:ptr->i32 [Some(temp_53_ptr2globl_87)] 
              #                    occupy a4 with temp_54_array_ptr_87
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_53_ptr2globl_87
              #                    occupy a6 with _anonymous_of_buf_60_0
    mul     a6,a5,a3
              #                    free a5
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with buf_60
              #                    load from buf_60 in mem
    ld      a7,1824(sp)
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          new_var temp_55_array_ele_87:i32 
              #                          temp_55_array_ele_87 = load temp_54_array_ptr_87:ptr->i32 
              #                    occupy a4 with temp_54_array_ptr_87
              #                    occupy s1 with temp_55_array_ele_87
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          new_var temp_56_cmp_87:i1 
              #                          temp_56_cmp_87 = icmp i32 Eq temp_55_array_ele_87, 43_0 
              #                    occupy s1 with temp_55_array_ele_87
              #                    occupy s2 with 43_0
    li      s2, 43
              #                    occupy s3 with temp_56_cmp_87
    xor     s3,s1,s2
    seqz    s3, s3
              #                    free s1
              #                    free s2
              #                    free s3
              #                          br i1 temp_56_cmp_87, label branch_true_88, label branch_false_88 
              #                    occupy s3 with temp_56_cmp_87
              #                    free s3
              #                    occupy s3 with temp_56_cmp_87
    bnez    s3, .branch_true_88
              #                    free s3
    j       .branch_false_88
              #                    regtab     a0:Freed { symidx: temp_50_ret_of_is_number_83, tracked: true } |     a2:Freed { symidx: temp_51_cmp_83, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } | 
              #                          label branch_true_88: 
.branch_true_88:
              #                          new_var temp_57_ret_of_detect_item_89:i32 
              #                          temp_57_ret_of_detect_item_89 =  Call i32 detect_item_0(1_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_55_array_ele_87 in mem offset legal
    sw      s1,1692(sp)
              #                    release s1 with temp_55_array_ele_87
              #                    store to temp_56_cmp_87 in mem offset legal
    sb      s3,1691(sp)
              #                    release s3 with temp_56_cmp_87
              #                    store to temp_50_ret_of_is_number_83 in mem offset legal
    sw      a0,1720(sp)
              #                    release a0 with temp_50_ret_of_is_number_83
              #                    store to temp_51_cmp_83 in mem offset legal
    sb      a2,1719(sp)
              #                    release a2 with temp_51_cmp_83
              #                    store to temp_53_ptr2globl_87 in mem offset legal
    sw      a3,1708(sp)
              #                    release a3 with temp_53_ptr2globl_87
              #                    store to temp_54_array_ptr_87 in mem offset legal
    sd      a4,1696(sp)
              #                    release a4 with temp_54_array_ptr_87
              #                    store to buf_60 in mem offset legal
    sd      a7,1824(sp)
              #                    release a7 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_57_ret_of_detect_item_89 in mem offset legal
    sw      a0,1684(sp)
              #                          ret temp_57_ret_of_detect_item_89 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_57_ret_of_detect_item_89 in mem offset legal
    sw      a0,1684(sp)
              #                    release a0 with temp_57_ret_of_detect_item_89
              #                    occupy a0 with temp_57_ret_of_detect_item_89
              #                    load from temp_57_ret_of_detect_item_89 in mem


    lw      a0,1684(sp)
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_50_ret_of_is_number_83, tracked: true } |     a2:Freed { symidx: temp_51_cmp_83, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } | 
              #                          label branch_false_88: 
.branch_false_88:
              #                          new_var temp_58_ptr2globl_91:i32 
              #                          temp_58_ptr2globl_91 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a5 with temp_58_ptr2globl_91
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_59_array_ptr_91:ptr->i32 
              #                          temp_59_array_ptr_91 = getelementptr buf_60:ptr->i32 [Some(temp_58_ptr2globl_91)] 
              #                    occupy a6 with temp_59_array_ptr_91
    li      a6, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a5 with temp_58_ptr2globl_91
              #                    occupy s4 with _anonymous_of_buf_60_0
    mul     s4,s2,a5
              #                    free s2
              #                    free a5
    add     a6,a6,s4
              #                    free s4
    slli a6,a6,2
              #                    occupy a7 with buf_60
    add     a6,a6,a7
              #                    free a7
              #                    free a6
              #                          new_var temp_60_array_ele_91:i32 
              #                          temp_60_array_ele_91 = load temp_59_array_ptr_91:ptr->i32 
              #                    occupy a6 with temp_59_array_ptr_91
              #                    occupy s5 with temp_60_array_ele_91
    lw      s5,0(a6)
              #                    free s5
              #                    free a6
              #                          new_var temp_61_cmp_91:i1 
              #                          temp_61_cmp_91 = icmp i32 Eq temp_60_array_ele_91, 45_0 
              #                    occupy s5 with temp_60_array_ele_91
              #                    occupy s6 with 45_0
    li      s6, 45
              #                    occupy s7 with temp_61_cmp_91
    xor     s7,s5,s6
    seqz    s7, s7
              #                    free s5
              #                    free s6
              #                    free s7
              #                          br i1 temp_61_cmp_91, label branch_true_92, label branch_false_92 
              #                    occupy s7 with temp_61_cmp_91
              #                    free s7
              #                    occupy s7 with temp_61_cmp_91
    bnez    s7, .branch_true_92
              #                    free s7
    j       .branch_false_92
              #                    regtab     a0:Freed { symidx: temp_50_ret_of_is_number_83, tracked: true } |     a2:Freed { symidx: temp_51_cmp_83, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } | 
              #                          label branch_true_92: 
.branch_true_92:
              #                          new_var temp_62_ret_of_detect_item_93:i32 
              #                          temp_62_ret_of_detect_item_93 =  Call i32 detect_item_0(1_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_55_array_ele_87 in mem offset legal
    sw      s1,1692(sp)
              #                    release s1 with temp_55_array_ele_87
              #                    store to temp_56_cmp_87 in mem offset legal
    sb      s3,1691(sp)
              #                    release s3 with temp_56_cmp_87
              #                    store to temp_60_array_ele_91 in mem offset legal
    sw      s5,1668(sp)
              #                    release s5 with temp_60_array_ele_91
              #                    store to temp_61_cmp_91 in mem offset legal
    sb      s7,1667(sp)
              #                    release s7 with temp_61_cmp_91
              #                    store to temp_50_ret_of_is_number_83 in mem offset legal
    sw      a0,1720(sp)
              #                    release a0 with temp_50_ret_of_is_number_83
              #                    store to temp_51_cmp_83 in mem offset legal
    sb      a2,1719(sp)
              #                    release a2 with temp_51_cmp_83
              #                    store to temp_53_ptr2globl_87 in mem offset legal
    sw      a3,1708(sp)
              #                    release a3 with temp_53_ptr2globl_87
              #                    store to temp_54_array_ptr_87 in mem offset legal
    sd      a4,1696(sp)
              #                    release a4 with temp_54_array_ptr_87
              #                    store to temp_58_ptr2globl_91 in mem offset legal
    sw      a5,1680(sp)
              #                    release a5 with temp_58_ptr2globl_91
              #                    store to temp_59_array_ptr_91 in mem offset legal
    sd      a6,1672(sp)
              #                    release a6 with temp_59_array_ptr_91
              #                    store to buf_60 in mem offset legal
    sd      a7,1824(sp)
              #                    release a7 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_62_ret_of_detect_item_93 in mem offset legal
    sw      a0,1660(sp)
              #                          ret temp_62_ret_of_detect_item_93 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_62_ret_of_detect_item_93 in mem offset legal
    sw      a0,1660(sp)
              #                    release a0 with temp_62_ret_of_detect_item_93
              #                    occupy a0 with temp_62_ret_of_detect_item_93
              #                    load from temp_62_ret_of_detect_item_93 in mem


    lw      a0,1660(sp)
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_50_ret_of_is_number_83, tracked: true } |     a2:Freed { symidx: temp_51_cmp_83, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } | 
              #                          label branch_false_92: 
.branch_false_92:
              #                          new_var temp_63_ptr2globl_95:i32 
              #                          temp_63_ptr2globl_95 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s2 with temp_63_ptr2globl_95
    lw      s2,0(a1)
              #                    free s2
              #                    free a1
              #                          new_var temp_64_array_ptr_95:ptr->i32 
              #                          temp_64_array_ptr_95 = getelementptr buf_60:ptr->i32 [Some(temp_63_ptr2globl_95)] 
              #                    occupy s4 with temp_64_array_ptr_95
    li      s4, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s2 with temp_63_ptr2globl_95
              #                    occupy s8 with _anonymous_of_buf_60_0
    mul     s8,s6,s2
              #                    free s6
              #                    free s2
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
              #                    occupy a7 with buf_60
    add     s4,s4,a7
              #                    free a7
              #                    free s4
              #                          new_var temp_65_array_ele_95:i32 
              #                          temp_65_array_ele_95 = load temp_64_array_ptr_95:ptr->i32 
              #                    occupy s4 with temp_64_array_ptr_95
              #                    occupy s9 with temp_65_array_ele_95
    lw      s9,0(s4)
              #                    free s9
              #                    free s4
              #                          new_var temp_66_cmp_95:i1 
              #                          temp_66_cmp_95 = icmp i32 Eq temp_65_array_ele_95, 116_0 
              #                    occupy s9 with temp_65_array_ele_95
              #                    occupy s10 with 116_0
    li      s10, 116
              #                    occupy s11 with temp_66_cmp_95
    xor     s11,s9,s10
    seqz    s11, s11
              #                    free s9
              #                    free s10
              #                    free s11
              #                          br i1 temp_66_cmp_95, label branch_true_96, label branch_false_96 
              #                    occupy s11 with temp_66_cmp_95
              #                    free s11
              #                    occupy s11 with temp_66_cmp_95
    bnez    s11, .branch_true_96
              #                    free s11
    j       .branch_false_96
              #                    regtab     a0:Freed { symidx: temp_50_ret_of_is_number_83, tracked: true } |     a2:Freed { symidx: temp_51_cmp_83, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label branch_true_96: 
.branch_true_96:
              #                          new_var temp_67_ret_of_detect_item_97:i32 
              #                          temp_67_ret_of_detect_item_97 =  Call i32 detect_item_0(5_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_55_array_ele_87 in mem offset legal
    sw      s1,1692(sp)
              #                    release s1 with temp_55_array_ele_87
              #                    store to temp_63_ptr2globl_95 in mem offset legal
    sw      s2,1656(sp)
              #                    release s2 with temp_63_ptr2globl_95
              #                    store to temp_56_cmp_87 in mem offset legal
    sb      s3,1691(sp)
              #                    release s3 with temp_56_cmp_87
              #                    store to temp_64_array_ptr_95 in mem offset legal
    sd      s4,1648(sp)
              #                    release s4 with temp_64_array_ptr_95
              #                    store to temp_60_array_ele_91 in mem offset legal
    sw      s5,1668(sp)
              #                    release s5 with temp_60_array_ele_91
              #                    store to temp_61_cmp_91 in mem offset legal
    sb      s7,1667(sp)
              #                    release s7 with temp_61_cmp_91
              #                    store to temp_65_array_ele_95 in mem offset legal
    sw      s9,1644(sp)
              #                    release s9 with temp_65_array_ele_95
              #                    store to temp_66_cmp_95 in mem offset legal
    sb      s11,1643(sp)
              #                    release s11 with temp_66_cmp_95
              #                    store to temp_50_ret_of_is_number_83 in mem offset legal
    sw      a0,1720(sp)
              #                    release a0 with temp_50_ret_of_is_number_83
              #                    store to temp_51_cmp_83 in mem offset legal
    sb      a2,1719(sp)
              #                    release a2 with temp_51_cmp_83
              #                    store to temp_53_ptr2globl_87 in mem offset legal
    sw      a3,1708(sp)
              #                    release a3 with temp_53_ptr2globl_87
              #                    store to temp_54_array_ptr_87 in mem offset legal
    sd      a4,1696(sp)
              #                    release a4 with temp_54_array_ptr_87
              #                    store to temp_58_ptr2globl_91 in mem offset legal
    sw      a5,1680(sp)
              #                    release a5 with temp_58_ptr2globl_91
              #                    store to temp_59_array_ptr_91 in mem offset legal
    sd      a6,1672(sp)
              #                    release a6 with temp_59_array_ptr_91
              #                    store to buf_60 in mem offset legal
    sd      a7,1824(sp)
              #                    release a7 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_67_ret_of_detect_item_97 in mem offset legal
    sw      a0,1636(sp)
              #                          ret temp_67_ret_of_detect_item_97 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_67_ret_of_detect_item_97 in mem offset legal
    sw      a0,1636(sp)
              #                    release a0 with temp_67_ret_of_detect_item_97
              #                    occupy a0 with temp_67_ret_of_detect_item_97
              #                    load from temp_67_ret_of_detect_item_97 in mem


    lw      a0,1636(sp)
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_50_ret_of_is_number_83, tracked: true } |     a2:Freed { symidx: temp_51_cmp_83, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label branch_false_96: 
.branch_false_96:
              #                          new_var temp_68_ptr2globl_99:i32 
              #                          temp_68_ptr2globl_99 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s6 with temp_68_ptr2globl_99
    lw      s6,0(a1)
              #                    free s6
              #                    free a1
              #                          new_var temp_69_array_ptr_99:ptr->i32 
              #                          temp_69_array_ptr_99 = getelementptr buf_60:ptr->i32 [Some(temp_68_ptr2globl_99)] 
              #                    occupy s8 with temp_69_array_ptr_99
    li      s8, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s6 with temp_68_ptr2globl_99
              #                    occupy a1 with _anonymous_of_buf_60_0
    mul     a1,s10,s6
              #                    free s10
              #                    free s6
    add     s8,s8,a1
              #                    free a1
    slli s8,s8,2
              #                    occupy a7 with buf_60
    add     s8,s8,a7
              #                    free a7
              #                    free s8
              #                          new_var temp_70_array_ele_99:i32 
              #                          temp_70_array_ele_99 = load temp_69_array_ptr_99:ptr->i32 
              #                    occupy s8 with temp_69_array_ptr_99
              #                    occupy a1 with temp_70_array_ele_99
    lw      a1,0(s8)
              #                    free a1
              #                    free s8
              #                          new_var temp_71_cmp_99:i1 
              #                          temp_71_cmp_99 = icmp i32 Eq temp_70_array_ele_99, 102_0 
              #                    occupy a1 with temp_70_array_ele_99
              #                    occupy s10 with 102_0
    li      s10, 102
              #                    store to temp_50_ret_of_is_number_83 in mem offset legal
    sw      a0,1720(sp)
              #                    release a0 with temp_50_ret_of_is_number_83
              #                    occupy a0 with temp_71_cmp_99
    xor     a0,a1,s10
    seqz    a0, a0
              #                    free a1
              #                    free s10
              #                    free a0
              #                          br i1 temp_71_cmp_99, label branch_true_100, label branch_false_100 
              #                    occupy a0 with temp_71_cmp_99
              #                    free a0
              #                    occupy a0 with temp_71_cmp_99
    bnez    a0, .branch_true_100
              #                    free a0
    j       .branch_false_100
              #                    regtab     a0:Freed { symidx: temp_71_cmp_99, tracked: true } |     a1:Freed { symidx: temp_70_array_ele_99, tracked: true } |     a2:Freed { symidx: temp_51_cmp_83, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label branch_true_100: 
.branch_true_100:
              #                          new_var temp_72_ret_of_detect_item_101:i32 
              #                          temp_72_ret_of_detect_item_101 =  Call i32 detect_item_0(6_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_55_array_ele_87 in mem offset legal
    sw      s1,1692(sp)
              #                    release s1 with temp_55_array_ele_87
              #                    store to temp_63_ptr2globl_95 in mem offset legal
    sw      s2,1656(sp)
              #                    release s2 with temp_63_ptr2globl_95
              #                    store to temp_56_cmp_87 in mem offset legal
    sb      s3,1691(sp)
              #                    release s3 with temp_56_cmp_87
              #                    store to temp_64_array_ptr_95 in mem offset legal
    sd      s4,1648(sp)
              #                    release s4 with temp_64_array_ptr_95
              #                    store to temp_60_array_ele_91 in mem offset legal
    sw      s5,1668(sp)
              #                    release s5 with temp_60_array_ele_91
              #                    store to temp_68_ptr2globl_99 in mem offset legal
    sw      s6,1632(sp)
              #                    release s6 with temp_68_ptr2globl_99
              #                    store to temp_61_cmp_91 in mem offset legal
    sb      s7,1667(sp)
              #                    release s7 with temp_61_cmp_91
              #                    store to temp_69_array_ptr_99 in mem offset legal
    sd      s8,1624(sp)
              #                    release s8 with temp_69_array_ptr_99
              #                    store to temp_65_array_ele_95 in mem offset legal
    sw      s9,1644(sp)
              #                    release s9 with temp_65_array_ele_95
              #                    store to temp_66_cmp_95 in mem offset legal
    sb      s11,1643(sp)
              #                    release s11 with temp_66_cmp_95
              #                    store to temp_71_cmp_99 in mem offset legal
    sb      a0,1619(sp)
              #                    release a0 with temp_71_cmp_99
              #                    store to temp_70_array_ele_99 in mem offset legal
    sw      a1,1620(sp)
              #                    release a1 with temp_70_array_ele_99
              #                    store to temp_51_cmp_83 in mem offset legal
    sb      a2,1719(sp)
              #                    release a2 with temp_51_cmp_83
              #                    store to temp_53_ptr2globl_87 in mem offset legal
    sw      a3,1708(sp)
              #                    release a3 with temp_53_ptr2globl_87
              #                    store to temp_54_array_ptr_87 in mem offset legal
    sd      a4,1696(sp)
              #                    release a4 with temp_54_array_ptr_87
              #                    store to temp_58_ptr2globl_91 in mem offset legal
    sw      a5,1680(sp)
              #                    release a5 with temp_58_ptr2globl_91
              #                    store to temp_59_array_ptr_91 in mem offset legal
    sd      a6,1672(sp)
              #                    release a6 with temp_59_array_ptr_91
              #                    store to buf_60 in mem offset legal
    sd      a7,1824(sp)
              #                    release a7 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_6_0_0
    li      a0, 6
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_72_ret_of_detect_item_101 in mem offset legal
    sw      a0,1612(sp)
              #                          ret temp_72_ret_of_detect_item_101 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_72_ret_of_detect_item_101 in mem offset legal
    sw      a0,1612(sp)
              #                    release a0 with temp_72_ret_of_detect_item_101
              #                    occupy a0 with temp_72_ret_of_detect_item_101
              #                    load from temp_72_ret_of_detect_item_101 in mem


    lw      a0,1612(sp)
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_71_cmp_99, tracked: true } |     a1:Freed { symidx: temp_70_array_ele_99, tracked: true } |     a2:Freed { symidx: temp_51_cmp_83, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label branch_false_100: 
.branch_false_100:
              #                          new_var temp_73_ptr2globl_103:i32 
              #                          temp_73_ptr2globl_103 = load *pos_0:ptr->i32 
              #                    occupy s10 with *pos_0
              #                       load label pos as ptr to reg
    la      s10, pos
              #                    occupy reg s10 with *pos_0
              #                    store to temp_71_cmp_99 in mem offset legal
    sb      a0,1619(sp)
              #                    release a0 with temp_71_cmp_99
              #                    occupy a0 with temp_73_ptr2globl_103
    lw      a0,0(s10)
              #                    free a0
              #                    free s10
              #                          new_var temp_74_array_ptr_103:ptr->i32 
              #                          temp_74_array_ptr_103 = getelementptr buf_60:ptr->i32 [Some(temp_73_ptr2globl_103)] 
              #                    occupy s10 with temp_74_array_ptr_103
    li      s10, 0
              #                    store to temp_73_ptr2globl_103 in mem offset legal
    sw      a0,1608(sp)
              #                    release a0 with temp_73_ptr2globl_103
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_70_array_ele_99 in mem offset legal
    sw      a1,1620(sp)
              #                    release a1 with temp_70_array_ele_99
              #                    occupy a1 with temp_73_ptr2globl_103
              #                    load from temp_73_ptr2globl_103 in mem


    lw      a1,1608(sp)
              #                    store to temp_51_cmp_83 in mem offset legal
    sb      a2,1719(sp)
              #                    release a2 with temp_51_cmp_83
              #                    occupy a2 with _anonymous_of_buf_60_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s10,s10,a2
              #                    free a2
    slli s10,s10,2
              #                    occupy a7 with buf_60
    add     s10,s10,a7
              #                    free a7
              #                    free s10
              #                          new_var temp_75_array_ele_103:i32 
              #                          temp_75_array_ele_103 = load temp_74_array_ptr_103:ptr->i32 
              #                    occupy s10 with temp_74_array_ptr_103
              #                    occupy a0 with temp_75_array_ele_103
    lw      a0,0(s10)
              #                    free a0
              #                    free s10
              #                          new_var temp_76_cmp_103:i1 
              #                          temp_76_cmp_103 = icmp i32 Eq temp_75_array_ele_103, 110_0 
              #                    occupy a0 with temp_75_array_ele_103
              #                    occupy a2 with 110_0
    li      a2, 110
              #                    store to temp_73_ptr2globl_103 in mem offset legal
    sw      a1,1608(sp)
              #                    release a1 with temp_73_ptr2globl_103
              #                    occupy a1 with temp_76_cmp_103
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_76_cmp_103, label branch_true_104, label branch_false_104 
              #                    occupy a1 with temp_76_cmp_103
              #                    free a1
              #                    occupy a1 with temp_76_cmp_103
    bnez    a1, .branch_true_104
              #                    free a1
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: temp_75_array_ele_103, tracked: true } |     a1:Freed { symidx: temp_76_cmp_103, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s10:Freed { symidx: temp_74_array_ptr_103, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label branch_true_104: 
.branch_true_104:
              #                          new_var temp_77_ret_of_detect_item_105:i32 
              #                          temp_77_ret_of_detect_item_105 =  Call i32 detect_item_0(7_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_55_array_ele_87 in mem offset legal
    sw      s1,1692(sp)
              #                    release s1 with temp_55_array_ele_87
              #                    store to temp_63_ptr2globl_95 in mem offset legal
    sw      s2,1656(sp)
              #                    release s2 with temp_63_ptr2globl_95
              #                    store to temp_56_cmp_87 in mem offset legal
    sb      s3,1691(sp)
              #                    release s3 with temp_56_cmp_87
              #                    store to temp_64_array_ptr_95 in mem offset legal
    sd      s4,1648(sp)
              #                    release s4 with temp_64_array_ptr_95
              #                    store to temp_60_array_ele_91 in mem offset legal
    sw      s5,1668(sp)
              #                    release s5 with temp_60_array_ele_91
              #                    store to temp_68_ptr2globl_99 in mem offset legal
    sw      s6,1632(sp)
              #                    release s6 with temp_68_ptr2globl_99
              #                    store to temp_61_cmp_91 in mem offset legal
    sb      s7,1667(sp)
              #                    release s7 with temp_61_cmp_91
              #                    store to temp_69_array_ptr_99 in mem offset legal
    sd      s8,1624(sp)
              #                    release s8 with temp_69_array_ptr_99
              #                    store to temp_65_array_ele_95 in mem offset legal
    sw      s9,1644(sp)
              #                    release s9 with temp_65_array_ele_95
              #                    store to temp_74_array_ptr_103 in mem offset legal
    sd      s10,1600(sp)
              #                    release s10 with temp_74_array_ptr_103
              #                    store to temp_66_cmp_95 in mem offset legal
    sb      s11,1643(sp)
              #                    release s11 with temp_66_cmp_95
              #                    store to temp_75_array_ele_103 in mem offset legal
    sw      a0,1596(sp)
              #                    release a0 with temp_75_array_ele_103
              #                    store to temp_76_cmp_103 in mem offset legal
    sb      a1,1595(sp)
              #                    release a1 with temp_76_cmp_103
              #                    store to temp_53_ptr2globl_87 in mem offset legal
    sw      a3,1708(sp)
              #                    release a3 with temp_53_ptr2globl_87
              #                    store to temp_54_array_ptr_87 in mem offset legal
    sd      a4,1696(sp)
              #                    release a4 with temp_54_array_ptr_87
              #                    store to temp_58_ptr2globl_91 in mem offset legal
    sw      a5,1680(sp)
              #                    release a5 with temp_58_ptr2globl_91
              #                    store to temp_59_array_ptr_91 in mem offset legal
    sd      a6,1672(sp)
              #                    release a6 with temp_59_array_ptr_91
              #                    store to buf_60 in mem offset legal
    sd      a7,1824(sp)
              #                    release a7 with buf_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_7_0_0
    li      a0, 7
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_77_ret_of_detect_item_105 in mem offset legal
    sw      a0,1588(sp)
              #                          ret temp_77_ret_of_detect_item_105 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_77_ret_of_detect_item_105 in mem offset legal
    sw      a0,1588(sp)
              #                    release a0 with temp_77_ret_of_detect_item_105
              #                    occupy a0 with temp_77_ret_of_detect_item_105
              #                    load from temp_77_ret_of_detect_item_105 in mem


    lw      a0,1588(sp)
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_75_array_ele_103, tracked: true } |     a1:Freed { symidx: temp_76_cmp_103, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s10:Freed { symidx: temp_74_array_ptr_103, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label branch_false_104: 
.branch_false_104:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_75_array_ele_103 in mem offset legal
    sw      a0,1596(sp)
              #                    release a0 with temp_75_array_ele_103
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_76_cmp_103, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s10:Freed { symidx: temp_74_array_ptr_103, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                    regtab     a1:Freed { symidx: temp_76_cmp_103, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s10:Freed { symidx: temp_74_array_ptr_103, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                    regtab     a1:Freed { symidx: temp_76_cmp_103, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s10:Freed { symidx: temp_74_array_ptr_103, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                    regtab     a1:Freed { symidx: temp_76_cmp_103, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s10:Freed { symidx: temp_74_array_ptr_103, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                    regtab     a1:Freed { symidx: temp_76_cmp_103, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s10:Freed { symidx: temp_74_array_ptr_103, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                    regtab     a1:Freed { symidx: temp_76_cmp_103, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s10:Freed { symidx: temp_74_array_ptr_103, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                    regtab     a1:Freed { symidx: temp_76_cmp_103, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s10:Freed { symidx: temp_74_array_ptr_103, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                    regtab     a1:Freed { symidx: temp_76_cmp_103, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s10:Freed { symidx: temp_74_array_ptr_103, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                    regtab     a1:Freed { symidx: temp_76_cmp_103, tracked: true } |     a3:Freed { symidx: temp_53_ptr2globl_87, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_58_ptr2globl_91, tracked: true } |     a6:Freed { symidx: temp_59_array_ptr_91, tracked: true } |     a7:Freed { symidx: buf_60, tracked: true } |     s10:Freed { symidx: temp_74_array_ptr_103, tracked: true } |     s11:Freed { symidx: temp_66_cmp_95, tracked: true } |     s1:Freed { symidx: temp_55_array_ele_87, tracked: true } |     s2:Freed { symidx: temp_63_ptr2globl_95, tracked: true } |     s3:Freed { symidx: temp_56_cmp_87, tracked: true } |     s4:Freed { symidx: temp_64_array_ptr_95, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_91, tracked: true } |     s6:Freed { symidx: temp_68_ptr2globl_99, tracked: true } |     s7:Freed { symidx: temp_61_cmp_91, tracked: true } |     s8:Freed { symidx: temp_69_array_ptr_99, tracked: true } |     s9:Freed { symidx: temp_65_array_ele_95, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } | 
              #                          label branch_false_69: 
.branch_false_69:
              #                          new_var temp_78_cmp_109:i1 
              #                          temp_78_cmp_109 = icmp i32 Eq type_60, 1_0 
              #                    occupy a0 with type_60
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_78_cmp_109
    xor     a3,a0,a1
    seqz    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                          br i1 temp_78_cmp_109, label branch_true_110, label branch_false_110 
              #                    occupy a3 with temp_78_cmp_109
              #                    free a3
              #                    occupy a3 with temp_78_cmp_109
    bnez    a3, .branch_true_110
              #                    free a3
    j       .branch_false_110
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } | 
              #                          label branch_true_110: 
.branch_true_110:
              #                          new_var temp_79_ptr2globl_112:i32 
              #                          temp_79_ptr2globl_112 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a4 with temp_79_ptr2globl_112
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                          new_var temp_80_array_ptr_112:ptr->i32 
              #                          temp_80_array_ptr_112 = getelementptr buf_60:ptr->i32 [Some(temp_79_ptr2globl_112)] 
              #                    occupy a5 with temp_80_array_ptr_112
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a4 with temp_79_ptr2globl_112
              #                    occupy a7 with _anonymous_of_buf_60_0
    mul     a7,a6,a4
              #                    free a6
              #                    free a4
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with buf_60
              #                    load from buf_60 in mem
    ld      s1,1824(sp)
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_81_array_ele_112:i32 
              #                          temp_81_array_ele_112 = load temp_80_array_ptr_112:ptr->i32 
              #                    occupy a5 with temp_80_array_ptr_112
              #                    occupy s2 with temp_81_array_ele_112
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_82_cmp_112:i1 
              #                          temp_82_cmp_112 = icmp i32 Eq temp_81_array_ele_112, 43_0 
              #                    occupy s2 with temp_81_array_ele_112
              #                    occupy s3 with 43_0
    li      s3, 43
              #                    occupy s4 with temp_82_cmp_112
    xor     s4,s2,s3
    seqz    s4, s4
              #                    free s2
              #                    free s3
              #                    free s4
              #                          br i1 temp_82_cmp_112, label branch_true_113, label branch_false_113 
              #                    occupy s4 with temp_82_cmp_112
              #                    free s4
              #                    occupy s4 with temp_82_cmp_112
    bnez    s4, .branch_true_113
              #                    free s4
    j       .branch_false_113
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_79_ptr2globl_112, tracked: true } |     a5:Freed { symidx: temp_80_array_ptr_112, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_81_array_ele_112, tracked: true } |     s4:Freed { symidx: temp_82_cmp_112, tracked: true } | 
              #                          label branch_true_113: 
.branch_true_113:
              #                          new_var temp_83_ptr2globl_114:i32 
              #                          temp_83_ptr2globl_114 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a6 with temp_83_ptr2globl_114
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          new_var temp_84_arithop_114:i32 
              #                          temp_84_arithop_114 = Add i32 temp_83_ptr2globl_114, 1_0 
              #                    occupy a6 with temp_83_ptr2globl_114
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_84_arithop_114
    add     s3,a6,a7
              #                    free a6
              #                    free a7
              #                    free s3
              #                          store temp_84_arithop_114:i32 *pos_0:ptr->i32 
              #                    occupy s5 with *pos_0
              #                       load label pos as ptr to reg
    la      s5, pos
              #                    occupy reg s5 with *pos_0
              #                    occupy s3 with temp_84_arithop_114
    sw      s3,0(s5)
              #                    free s3
              #                    free s5
              #                          jump label: L15_0 
    j       .L15_0
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_79_ptr2globl_112, tracked: true } |     a5:Freed { symidx: temp_80_array_ptr_112, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_81_array_ele_112, tracked: true } |     s4:Freed { symidx: temp_82_cmp_112, tracked: true } | 
              #                          label branch_false_113: 
.branch_false_113:
              #                          new_var temp_151_ptr2globl_116:i32 
              #                          temp_151_ptr2globl_116 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a6 with temp_151_ptr2globl_116
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          new_var temp_152_array_ptr_116:ptr->i32 
              #                          temp_152_array_ptr_116 = getelementptr buf_60:ptr->i32 [Some(temp_151_ptr2globl_116)] 
              #                    occupy a7 with temp_152_array_ptr_116
    li      a7, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a6 with temp_151_ptr2globl_116
              #                    occupy s5 with _anonymous_of_buf_60_0
    mul     s5,s3,a6
              #                    free s3
              #                    free a6
    add     a7,a7,s5
              #                    free s5
    slli a7,a7,2
              #                    occupy s1 with buf_60
    add     a7,a7,s1
              #                    free s1
              #                    free a7
              #                          new_var temp_153_array_ele_116:i32 
              #                          temp_153_array_ele_116 = load temp_152_array_ptr_116:ptr->i32 
              #                    occupy a7 with temp_152_array_ptr_116
              #                    occupy s6 with temp_153_array_ele_116
    lw      s6,0(a7)
              #                    free s6
              #                    free a7
              #                          new_var temp_154_cmp_116:i1 
              #                          temp_154_cmp_116 = icmp i32 Eq temp_153_array_ele_116, 45_0 
              #                    occupy s6 with temp_153_array_ele_116
              #                    occupy s7 with 45_0
    li      s7, 45
              #                    occupy s8 with temp_154_cmp_116
    xor     s8,s6,s7
    seqz    s8, s8
              #                    free s6
              #                    free s7
              #                    free s8
              #                          br i1 temp_154_cmp_116, label branch_true_117, label branch_false_117 
              #                    occupy s8 with temp_154_cmp_116
              #                    free s8
              #                    occupy s8 with temp_154_cmp_116
    bnez    s8, .branch_true_117
              #                    free s8
    j       .branch_false_117
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_79_ptr2globl_112, tracked: true } |     a5:Freed { symidx: temp_80_array_ptr_112, tracked: true } |     a6:Freed { symidx: temp_151_ptr2globl_116, tracked: true } |     a7:Freed { symidx: temp_152_array_ptr_116, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_81_array_ele_112, tracked: true } |     s4:Freed { symidx: temp_82_cmp_112, tracked: true } |     s6:Freed { symidx: temp_153_array_ele_116, tracked: true } |     s8:Freed { symidx: temp_154_cmp_116, tracked: true } | 
              #                          label branch_true_117: 
.branch_true_117:
              #                          new_var temp_155_ptr2globl_118:i32 
              #                          temp_155_ptr2globl_118 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s3 with temp_155_ptr2globl_118
    lw      s3,0(a1)
              #                    free s3
              #                    free a1
              #                          new_var temp_156_arithop_118:i32 
              #                          temp_156_arithop_118 = Add i32 temp_155_ptr2globl_118, 1_0 
              #                    occupy s3 with temp_155_ptr2globl_118
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s7 with temp_156_arithop_118
    add     s7,s3,s5
              #                    free s3
              #                    free s5
              #                    free s7
              #                          store temp_156_arithop_118:i32 *pos_0:ptr->i32 
              #                    occupy s9 with *pos_0
              #                       load label pos as ptr to reg
    la      s9, pos
              #                    occupy reg s9 with *pos_0
              #                    occupy s7 with temp_156_arithop_118
    sw      s7,0(s9)
              #                    free s7
              #                    free s9
              #                          jump label: branch_false_117 
              #                    store to temp_156_arithop_118 in mem offset legal
    sw      s7,1208(sp)
              #                    release s7 with temp_156_arithop_118
              #                    store to temp_155_ptr2globl_118 in mem offset legal
    sw      s3,1212(sp)
              #                    release s3 with temp_155_ptr2globl_118
    j       .branch_false_117
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_79_ptr2globl_112, tracked: true } |     a5:Freed { symidx: temp_80_array_ptr_112, tracked: true } |     a6:Freed { symidx: temp_151_ptr2globl_116, tracked: true } |     a7:Freed { symidx: temp_152_array_ptr_116, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_81_array_ele_112, tracked: true } |     s4:Freed { symidx: temp_82_cmp_112, tracked: true } |     s6:Freed { symidx: temp_153_array_ele_116, tracked: true } |     s8:Freed { symidx: temp_154_cmp_116, tracked: true } | 
              #                          label branch_false_117: 
.branch_false_117:
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_79_ptr2globl_112, tracked: true } |     a5:Freed { symidx: temp_80_array_ptr_112, tracked: true } |     a6:Freed { symidx: temp_83_ptr2globl_114, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_81_array_ele_112, tracked: true } |     s3:Freed { symidx: temp_84_arithop_114, tracked: true } |     s4:Freed { symidx: temp_82_cmp_112, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_79_ptr2globl_112, tracked: true } |     a5:Freed { symidx: temp_80_array_ptr_112, tracked: true } |     a6:Freed { symidx: temp_83_ptr2globl_114, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_81_array_ele_112, tracked: true } |     s3:Freed { symidx: temp_84_arithop_114, tracked: true } |     s4:Freed { symidx: temp_82_cmp_112, tracked: true } | 
              #                          label L16_0: 
.L16_0:
              #                          new_var temp_85_ptr2globl_120:i32 
              #                          temp_85_ptr2globl_120 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a7 with temp_85_ptr2globl_120
    lw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                          new_var temp_86_cmp_120:i1 
              #                          temp_86_cmp_120 = icmp i32 Sge temp_85_ptr2globl_120, len_60 
              #                    occupy a7 with temp_85_ptr2globl_120
              #                    occupy s5 with len_60
              #                    load from len_60 in mem


    lw      s5,1820(sp)
              #                    occupy s6 with temp_86_cmp_120
    slt     s6,a7,s5
    xori    s6,s6,1
              #                    free a7
              #                    free s5
              #                    free s6
              #                          br i1 temp_86_cmp_120, label branch_true_121, label branch_false_121 
              #                    occupy s6 with temp_86_cmp_120
              #                    free s6
              #                    occupy s6 with temp_86_cmp_120
    bnez    s6, .branch_true_121
              #                    free s6
    j       .branch_false_121
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_79_ptr2globl_112, tracked: true } |     a5:Freed { symidx: temp_80_array_ptr_112, tracked: true } |     a6:Freed { symidx: temp_83_ptr2globl_114, tracked: true } |     a7:Freed { symidx: temp_85_ptr2globl_120, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_81_array_ele_112, tracked: true } |     s3:Freed { symidx: temp_84_arithop_114, tracked: true } |     s4:Freed { symidx: temp_82_cmp_112, tracked: true } |     s5:Freed { symidx: len_60, tracked: true } |     s6:Freed { symidx: temp_86_cmp_120, tracked: true } | 
              #                          label branch_true_121: 
.branch_true_121:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_79_ptr2globl_112, tracked: true } |     a5:Freed { symidx: temp_80_array_ptr_112, tracked: true } |     a6:Freed { symidx: temp_83_ptr2globl_114, tracked: true } |     a7:Freed { symidx: temp_85_ptr2globl_120, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_81_array_ele_112, tracked: true } |     s3:Freed { symidx: temp_84_arithop_114, tracked: true } |     s4:Freed { symidx: temp_82_cmp_112, tracked: true } |     s5:Freed { symidx: len_60, tracked: true } |     s6:Freed { symidx: temp_86_cmp_120, tracked: true } | 
              #                          label branch_false_121: 
.branch_false_121:
              #                          new_var temp_146_ptr2globl_124:i32 
              #                          temp_146_ptr2globl_124 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s7 with temp_146_ptr2globl_124
    lw      s7,0(a1)
              #                    free s7
              #                    free a1
              #                          new_var temp_147_array_ptr_124:ptr->i32 
              #                          temp_147_array_ptr_124 = getelementptr buf_60:ptr->i32 [Some(temp_146_ptr2globl_124)] 
              #                    occupy s8 with temp_147_array_ptr_124
    li      s8, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s7 with temp_146_ptr2globl_124
              #                    occupy s10 with _anonymous_of_buf_60_0
    mul     s10,s9,s7
              #                    free s9
              #                    free s7
    add     s8,s8,s10
              #                    free s10
    slli s8,s8,2
              #                    occupy s1 with buf_60
    add     s8,s8,s1
              #                    free s1
              #                    free s8
              #                          new_var temp_148_array_ele_124:i32 
              #                          temp_148_array_ele_124 = load temp_147_array_ptr_124:ptr->i32 
              #                    occupy s8 with temp_147_array_ptr_124
              #                    occupy s11 with temp_148_array_ele_124
    lw      s11,0(s8)
              #                    free s11
              #                    free s8
              #                          new_var temp_149_ret_of_is_number_124:i32 
              #                          temp_149_ret_of_is_number_124 =  Call i32 is_number_0(temp_148_array_ele_124) 
              #                    saved register dumping to mem
              #                    store to buf_60 in mem offset legal
    sd      s1,1824(sp)
              #                    release s1 with buf_60
              #                    store to temp_81_array_ele_112 in mem offset legal
    sw      s2,1564(sp)
              #                    release s2 with temp_81_array_ele_112
              #                    store to temp_84_arithop_114 in mem offset legal
    sw      s3,1552(sp)
              #                    release s3 with temp_84_arithop_114
              #                    store to temp_82_cmp_112 in mem offset legal
    sb      s4,1563(sp)
              #                    release s4 with temp_82_cmp_112
              #                    store to len_60 in mem offset legal
    sw      s5,1820(sp)
              #                    release s5 with len_60
              #                    store to temp_86_cmp_120 in mem offset legal
    sb      s6,1547(sp)
              #                    release s6 with temp_86_cmp_120
              #                    store to temp_146_ptr2globl_124 in mem offset legal
    sw      s7,1256(sp)
              #                    release s7 with temp_146_ptr2globl_124
              #                    store to temp_147_array_ptr_124 in mem offset legal
    sd      s8,1248(sp)
              #                    release s8 with temp_147_array_ptr_124
              #                    store to temp_148_array_ele_124 in mem offset legal
    sw      s11,1244(sp)
              #                    release s11 with temp_148_array_ele_124
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    store to temp_31_cmp_68 in mem offset legal
    sb      a2,1814(sp)
              #                    release a2 with temp_31_cmp_68
              #                    store to temp_78_cmp_109 in mem offset legal
    sb      a3,1587(sp)
              #                    release a3 with temp_78_cmp_109
              #                    store to temp_79_ptr2globl_112 in mem offset legal
    sw      a4,1580(sp)
              #                    release a4 with temp_79_ptr2globl_112
              #                    store to temp_80_array_ptr_112 in mem offset legal
    sd      a5,1568(sp)
              #                    release a5 with temp_80_array_ptr_112
              #                    store to temp_83_ptr2globl_114 in mem offset legal
    sw      a6,1556(sp)
              #                    release a6 with temp_83_ptr2globl_114
              #                    store to temp_85_ptr2globl_120 in mem offset legal
    sw      a7,1548(sp)
              #                    release a7 with temp_85_ptr2globl_120
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_148_array_ele_124_0
              #                    load from temp_148_array_ele_124 in mem


    lw      a0,1244(sp)
              #                    arg load ended


    call    is_number
              #                    store to temp_149_ret_of_is_number_124 in mem offset legal
    sw      a0,1240(sp)
              #                          new_var temp_150_cmp_124:i1 
              #                          temp_150_cmp_124 = icmp i32 Eq temp_149_ret_of_is_number_124, 0_0 
              #                    occupy a0 with temp_149_ret_of_is_number_124
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_150_cmp_124
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_150_cmp_124, label branch_true_125, label branch_false_125 
              #                    occupy a2 with temp_150_cmp_124
              #                    free a2
              #                    occupy a2 with temp_150_cmp_124
    bnez    a2, .branch_true_125
              #                    free a2
    j       .branch_false_125
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } | 
              #                          label branch_true_125: 
.branch_true_125:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_149_ret_of_is_number_124 in mem offset legal
    sw      a0,1240(sp)
              #                    release a0 with temp_149_ret_of_is_number_124
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } | 
              #                          label branch_false_125: 
.branch_false_125:
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } | 
              #                          label L17_0: 
.L17_0:
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } | 
              #                          label while.head_129: 
.while.head_129:
              #                          new_var temp_87_ptr2globl_128:i32 
              #                          temp_87_ptr2globl_128 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a3 with temp_87_ptr2globl_128
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_88_cmp_128:i1 
              #                          temp_88_cmp_128 = icmp i32 Slt temp_87_ptr2globl_128, len_60 
              #                    occupy a3 with temp_87_ptr2globl_128
              #                    occupy a4 with len_60
              #                    load from len_60 in mem


    lw      a4,1820(sp)
              #                    occupy a5 with temp_88_cmp_128
    slt     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          br i1 temp_88_cmp_128, label while.body_129, label while.exit_129 
              #                    occupy a5 with temp_88_cmp_128
              #                    free a5
              #                    occupy a5 with temp_88_cmp_128
    bnez    a5, .while.body_129
              #                    free a5
    j       .while.exit_129
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } | 
              #                          label while.body_129: 
.while.body_129:
              #                          new_var temp_89_ptr2globl_131:i32 
              #                          temp_89_ptr2globl_131 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a6 with temp_89_ptr2globl_131
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          new_var temp_90_array_ptr_131:ptr->i32 
              #                          temp_90_array_ptr_131 = getelementptr buf_60:ptr->i32 [Some(temp_89_ptr2globl_131)] 
              #                    occupy a7 with temp_90_array_ptr_131
    li      a7, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a6 with temp_89_ptr2globl_131
              #                    occupy s2 with _anonymous_of_buf_60_0
    mul     s2,s1,a6
              #                    free s1
              #                    free a6
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
              #                    occupy s3 with buf_60
              #                    load from buf_60 in mem
    ld      s3,1824(sp)
    add     a7,a7,s3
              #                    free s3
              #                    free a7
              #                          new_var temp_91_array_ele_131:i32 
              #                          temp_91_array_ele_131 = load temp_90_array_ptr_131:ptr->i32 
              #                    occupy a7 with temp_90_array_ptr_131
              #                    occupy s4 with temp_91_array_ele_131
    lw      s4,0(a7)
              #                    free s4
              #                    free a7
              #                          new_var temp_92_ret_of_is_number_131:i32 
              #                          temp_92_ret_of_is_number_131 =  Call i32 is_number_0(temp_91_array_ele_131) 
              #                    saved register dumping to mem
              #                    store to buf_60 in mem offset legal
    sd      s3,1824(sp)
              #                    release s3 with buf_60
              #                    store to temp_91_array_ele_131 in mem offset legal
    sw      s4,1516(sp)
              #                    release s4 with temp_91_array_ele_131
              #                    store to temp_149_ret_of_is_number_124 in mem offset legal
    sw      a0,1240(sp)
              #                    release a0 with temp_149_ret_of_is_number_124
              #                    store to temp_150_cmp_124 in mem offset legal
    sb      a2,1239(sp)
              #                    release a2 with temp_150_cmp_124
              #                    store to temp_87_ptr2globl_128 in mem offset legal
    sw      a3,1540(sp)
              #                    release a3 with temp_87_ptr2globl_128
              #                    store to len_60 in mem offset legal
    sw      a4,1820(sp)
              #                    release a4 with len_60
              #                    store to temp_88_cmp_128 in mem offset legal
    sb      a5,1539(sp)
              #                    release a5 with temp_88_cmp_128
              #                    store to temp_89_ptr2globl_131 in mem offset legal
    sw      a6,1532(sp)
              #                    release a6 with temp_89_ptr2globl_131
              #                    store to temp_90_array_ptr_131 in mem offset legal
    sd      a7,1520(sp)
              #                    release a7 with temp_90_array_ptr_131
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_91_array_ele_131_0
              #                    load from temp_91_array_ele_131 in mem


    lw      a0,1516(sp)
              #                    arg load ended


    call    is_number
              #                    store to temp_92_ret_of_is_number_131 in mem offset legal
    sw      a0,1512(sp)
              #                          new_var temp_93_cmp_131:i1 
              #                          temp_93_cmp_131 = icmp i32 Ne temp_92_ret_of_is_number_131, 1_0 
              #                    occupy a0 with temp_92_ret_of_is_number_131
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_93_cmp_131
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_93_cmp_131, label branch_true_132, label branch_false_132 
              #                    occupy a2 with temp_93_cmp_131
              #                    free a2
              #                    occupy a2 with temp_93_cmp_131
    bnez    a2, .branch_true_132
              #                    free a2
    j       .branch_false_132
              #                    regtab     a0:Freed { symidx: temp_92_ret_of_is_number_131, tracked: true } |     a2:Freed { symidx: temp_93_cmp_131, tracked: true } | 
              #                          label branch_true_132: 
.branch_true_132:
              #                          jump label: while.exit_129 
              #                    store to temp_92_ret_of_is_number_131 in mem offset legal
    sw      a0,1512(sp)
              #                    release a0 with temp_92_ret_of_is_number_131
              #                    store to temp_93_cmp_131 in mem offset legal
    sb      a2,1511(sp)
              #                    release a2 with temp_93_cmp_131
              #                    occupy a0 with _anonymous_of_temp_149_ret_of_is_number_124_0
              #                    load from temp_149_ret_of_is_number_124 in mem


    lw      a0,1240(sp)
              #                    occupy a2 with _anonymous_of_temp_150_cmp_124_0
              #                    load from temp_150_cmp_124 in mem
    lb      a2,1239(sp)
              #                    occupy a5 with _anonymous_of_temp_88_cmp_128_0
              #                    load from temp_88_cmp_128 in mem
    lb      a5,1539(sp)
              #                    occupy a3 with _anonymous_of_temp_87_ptr2globl_128_0
              #                    load from temp_87_ptr2globl_128 in mem


    lw      a3,1540(sp)
              #                    occupy a4 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a4,1820(sp)
    j       .while.exit_129
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } | 
              #                          label while.exit_129: 
.while.exit_129:
              #                          new_var temp_96_ptr2globl_135:i32 
              #                          temp_96_ptr2globl_135 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a6 with temp_96_ptr2globl_135
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          new_var temp_97_cmp_135:i1 
              #                          temp_97_cmp_135 = icmp i32 Slt temp_96_ptr2globl_135, len_60 
              #                    occupy a6 with temp_96_ptr2globl_135
              #                    occupy a4 with len_60
              #                    occupy a7 with temp_97_cmp_135
    slt     a7,a6,a4
              #                    free a6
              #                    free a4
              #                    free a7
              #                          br i1 temp_97_cmp_135, label branch_true_136, label branch_false_136 
              #                    occupy a7 with temp_97_cmp_135
              #                    free a7
              #                    occupy a7 with temp_97_cmp_135
    bnez    a7, .branch_true_136
              #                    free a7
    j       .branch_false_136
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } | 
              #                          label branch_true_136: 
.branch_true_136:
              #                          new_var temp_98_ptr2globl_138:i32 
              #                          temp_98_ptr2globl_138 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s1 with temp_98_ptr2globl_138
    lw      s1,0(a1)
              #                    free s1
              #                    free a1
              #                          new_var temp_99_array_ptr_138:ptr->i32 
              #                          temp_99_array_ptr_138 = getelementptr buf_60:ptr->i32 [Some(temp_98_ptr2globl_138)] 
              #                    occupy s2 with temp_99_array_ptr_138
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s1 with temp_98_ptr2globl_138
              #                    occupy s4 with _anonymous_of_buf_60_0
    mul     s4,s3,s1
              #                    free s3
              #                    free s1
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
              #                    occupy s5 with buf_60
              #                    load from buf_60 in mem
    ld      s5,1824(sp)
    add     s2,s2,s5
              #                    free s5
              #                    free s2
              #                          new_var temp_100_array_ele_138:i32 
              #                          temp_100_array_ele_138 = load temp_99_array_ptr_138:ptr->i32 
              #                    occupy s2 with temp_99_array_ptr_138
              #                    occupy s6 with temp_100_array_ele_138
    lw      s6,0(s2)
              #                    free s6
              #                    free s2
              #                          new_var temp_101_cmp_138:i1 
              #                          temp_101_cmp_138 = icmp i32 Eq temp_100_array_ele_138, 46_0 
              #                    occupy s6 with temp_100_array_ele_138
              #                    occupy s7 with 46_0
    li      s7, 46
              #                    occupy s8 with temp_101_cmp_138
    xor     s8,s6,s7
    seqz    s8, s8
              #                    free s6
              #                    free s7
              #                    free s8
              #                          br i1 temp_101_cmp_138, label branch_true_139, label branch_false_139 
              #                    occupy s8 with temp_101_cmp_138
              #                    free s8
              #                    occupy s8 with temp_101_cmp_138
    bnez    s8, .branch_true_139
              #                    free s8
    j       .branch_false_139
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s1:Freed { symidx: temp_98_ptr2globl_138, tracked: true } |     s2:Freed { symidx: temp_99_array_ptr_138, tracked: true } |     s5:Freed { symidx: buf_60, tracked: true } |     s6:Freed { symidx: temp_100_array_ele_138, tracked: true } |     s8:Freed { symidx: temp_101_cmp_138, tracked: true } | 
              #                          label branch_true_139: 
.branch_true_139:
              #                          new_var temp_102_ptr2globl_140:i32 
              #                          temp_102_ptr2globl_140 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s3 with temp_102_ptr2globl_140
    lw      s3,0(a1)
              #                    free s3
              #                    free a1
              #                          new_var temp_103_arithop_140:i32 
              #                          temp_103_arithop_140 = Add i32 temp_102_ptr2globl_140, 1_0 
              #                    occupy s3 with temp_102_ptr2globl_140
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s7 with temp_103_arithop_140
    add     s7,s3,s4
              #                    free s3
              #                    free s4
              #                    free s7
              #                          store temp_103_arithop_140:i32 *pos_0:ptr->i32 
              #                    occupy s9 with *pos_0
              #                       load label pos as ptr to reg
    la      s9, pos
              #                    occupy reg s9 with *pos_0
              #                    occupy s7 with temp_103_arithop_140
    sw      s7,0(s9)
              #                    free s7
              #                    free s9
              #                          jump label: while.head_143 
    j       .while.head_143
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s1:Freed { symidx: temp_98_ptr2globl_138, tracked: true } |     s2:Freed { symidx: temp_99_array_ptr_138, tracked: true } |     s3:Freed { symidx: temp_102_ptr2globl_140, tracked: true } |     s5:Freed { symidx: buf_60, tracked: true } |     s6:Freed { symidx: temp_100_array_ele_138, tracked: true } |     s7:Freed { symidx: temp_103_arithop_140, tracked: true } |     s8:Freed { symidx: temp_101_cmp_138, tracked: true } | 
              #                          label while.head_143: 
.while.head_143:
              #                          new_var temp_104_ptr2globl_142:i32 
              #                          temp_104_ptr2globl_142 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s4 with temp_104_ptr2globl_142
    lw      s4,0(a1)
              #                    free s4
              #                    free a1
              #                          new_var temp_105_cmp_142:i1 
              #                          temp_105_cmp_142 = icmp i32 Slt temp_104_ptr2globl_142, len_60 
              #                    occupy s4 with temp_104_ptr2globl_142
              #                    occupy a4 with len_60
              #                    occupy s9 with temp_105_cmp_142
    slt     s9,s4,a4
              #                    free s4
              #                    free a4
              #                    free s9
              #                          br i1 temp_105_cmp_142, label while.body_143, label branch_false_139 
              #                    occupy s9 with temp_105_cmp_142
              #                    free s9
              #                    occupy s9 with temp_105_cmp_142
    bnez    s9, .while.body_143
              #                    free s9
              #                    store to temp_103_arithop_140 in mem offset legal
    sw      s7,1464(sp)
              #                    release s7 with temp_103_arithop_140
              #                    store to temp_105_cmp_142 in mem offset legal
    sb      s9,1459(sp)
              #                    release s9 with temp_105_cmp_142
              #                    store to temp_104_ptr2globl_142 in mem offset legal
    sw      s4,1460(sp)
              #                    release s4 with temp_104_ptr2globl_142
              #                    store to temp_102_ptr2globl_140 in mem offset legal
    sw      s3,1468(sp)
              #                    release s3 with temp_102_ptr2globl_140
    j       .branch_false_139
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s1:Freed { symidx: temp_98_ptr2globl_138, tracked: true } |     s2:Freed { symidx: temp_99_array_ptr_138, tracked: true } |     s3:Freed { symidx: temp_102_ptr2globl_140, tracked: true } |     s4:Freed { symidx: temp_104_ptr2globl_142, tracked: true } |     s5:Freed { symidx: buf_60, tracked: true } |     s6:Freed { symidx: temp_100_array_ele_138, tracked: true } |     s7:Freed { symidx: temp_103_arithop_140, tracked: true } |     s8:Freed { symidx: temp_101_cmp_138, tracked: true } |     s9:Freed { symidx: temp_105_cmp_142, tracked: true } | 
              #                          label while.body_143: 
.while.body_143:
              #                          new_var temp_106_ptr2globl_145:i32 
              #                          temp_106_ptr2globl_145 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s10 with temp_106_ptr2globl_145
    lw      s10,0(a1)
              #                    free s10
              #                    free a1
              #                          new_var temp_107_array_ptr_145:ptr->i32 
              #                          temp_107_array_ptr_145 = getelementptr buf_60:ptr->i32 [Some(temp_106_ptr2globl_145)] 
              #                    occupy s11 with temp_107_array_ptr_145
    li      s11, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s10 with temp_106_ptr2globl_145
              #                    store to temp_149_ret_of_is_number_124 in mem offset legal
    sw      a0,1240(sp)
              #                    release a0 with temp_149_ret_of_is_number_124
              #                    occupy a0 with _anonymous_of_buf_60_0
    mul     a0,a1,s10
              #                    free a1
              #                    free s10
    add     s11,s11,a0
              #                    free a0
    slli s11,s11,2
              #                    occupy s5 with buf_60
    add     s11,s11,s5
              #                    free s5
              #                    free s11
              #                          new_var temp_108_array_ele_145:i32 
              #                          temp_108_array_ele_145 = load temp_107_array_ptr_145:ptr->i32 
              #                    occupy s11 with temp_107_array_ptr_145
              #                    occupy a0 with temp_108_array_ele_145
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_109_ret_of_is_number_145:i32 
              #                          temp_109_ret_of_is_number_145 =  Call i32 is_number_0(temp_108_array_ele_145) 
              #                    saved register dumping to mem
              #                    store to temp_98_ptr2globl_138 in mem offset legal
    sw      s1,1488(sp)
              #                    release s1 with temp_98_ptr2globl_138
              #                    store to temp_99_array_ptr_138 in mem offset legal
    sd      s2,1480(sp)
              #                    release s2 with temp_99_array_ptr_138
              #                    store to temp_102_ptr2globl_140 in mem offset legal
    sw      s3,1468(sp)
              #                    release s3 with temp_102_ptr2globl_140
              #                    store to temp_104_ptr2globl_142 in mem offset legal
    sw      s4,1460(sp)
              #                    release s4 with temp_104_ptr2globl_142
              #                    store to buf_60 in mem offset legal
    sd      s5,1824(sp)
              #                    release s5 with buf_60
              #                    store to temp_100_array_ele_138 in mem offset legal
    sw      s6,1476(sp)
              #                    release s6 with temp_100_array_ele_138
              #                    store to temp_103_arithop_140 in mem offset legal
    sw      s7,1464(sp)
              #                    release s7 with temp_103_arithop_140
              #                    store to temp_101_cmp_138 in mem offset legal
    sb      s8,1475(sp)
              #                    release s8 with temp_101_cmp_138
              #                    store to temp_105_cmp_142 in mem offset legal
    sb      s9,1459(sp)
              #                    release s9 with temp_105_cmp_142
              #                    store to temp_106_ptr2globl_145 in mem offset legal
    sw      s10,1452(sp)
              #                    release s10 with temp_106_ptr2globl_145
              #                    store to temp_107_array_ptr_145 in mem offset legal
    sd      s11,1440(sp)
              #                    release s11 with temp_107_array_ptr_145
              #                    store to temp_108_array_ele_145 in mem offset legal
    sw      a0,1436(sp)
              #                    release a0 with temp_108_array_ele_145
              #                    store to temp_150_cmp_124 in mem offset legal
    sb      a2,1239(sp)
              #                    release a2 with temp_150_cmp_124
              #                    store to temp_87_ptr2globl_128 in mem offset legal
    sw      a3,1540(sp)
              #                    release a3 with temp_87_ptr2globl_128
              #                    store to len_60 in mem offset legal
    sw      a4,1820(sp)
              #                    release a4 with len_60
              #                    store to temp_88_cmp_128 in mem offset legal
    sb      a5,1539(sp)
              #                    release a5 with temp_88_cmp_128
              #                    store to temp_96_ptr2globl_135 in mem offset legal
    sw      a6,1496(sp)
              #                    release a6 with temp_96_ptr2globl_135
              #                    store to temp_97_cmp_135 in mem offset legal
    sb      a7,1495(sp)
              #                    release a7 with temp_97_cmp_135
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_108_array_ele_145_0
              #                    load from temp_108_array_ele_145 in mem


    lw      a0,1436(sp)
              #                    arg load ended


    call    is_number
              #                    store to temp_109_ret_of_is_number_145 in mem offset legal
    sw      a0,1432(sp)
              #                          new_var temp_110_cmp_145:i1 
              #                          temp_110_cmp_145 = icmp i32 Ne temp_109_ret_of_is_number_145, 1_0 
              #                    occupy a0 with temp_109_ret_of_is_number_145
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_110_cmp_145
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_110_cmp_145, label branch_true_146, label branch_false_146 
              #                    occupy a2 with temp_110_cmp_145
              #                    free a2
              #                    occupy a2 with temp_110_cmp_145
    bnez    a2, .branch_true_146
              #                    free a2
    j       .branch_false_146
              #                    regtab     a0:Freed { symidx: temp_109_ret_of_is_number_145, tracked: true } |     a2:Freed { symidx: temp_110_cmp_145, tracked: true } | 
              #                          label branch_true_146: 
.branch_true_146:
              #                          jump label: branch_false_139 
              #                    store to temp_109_ret_of_is_number_145 in mem offset legal
    sw      a0,1432(sp)
              #                    release a0 with temp_109_ret_of_is_number_145
              #                    store to temp_110_cmp_145 in mem offset legal
    sb      a2,1431(sp)
              #                    release a2 with temp_110_cmp_145
              #                    occupy s2 with _anonymous_of_temp_99_array_ptr_138_0
              #                    load from temp_99_array_ptr_138 in mem
    ld      s2,1480(sp)
              #                    occupy a6 with _anonymous_of_temp_96_ptr2globl_135_0
              #                    load from temp_96_ptr2globl_135 in mem


    lw      a6,1496(sp)
              #                    occupy a0 with _anonymous_of_temp_149_ret_of_is_number_124_0
              #                    load from temp_149_ret_of_is_number_124 in mem


    lw      a0,1240(sp)
              #                    occupy a2 with _anonymous_of_temp_150_cmp_124_0
              #                    load from temp_150_cmp_124 in mem
    lb      a2,1239(sp)
              #                    occupy a5 with _anonymous_of_temp_88_cmp_128_0
              #                    load from temp_88_cmp_128 in mem
    lb      a5,1539(sp)
              #                    occupy a7 with _anonymous_of_temp_97_cmp_135_0
              #                    load from temp_97_cmp_135 in mem
    lb      a7,1495(sp)
              #                    occupy s6 with _anonymous_of_temp_100_array_ele_138_0
              #                    load from temp_100_array_ele_138 in mem


    lw      s6,1476(sp)
              #                    occupy s8 with _anonymous_of_temp_101_cmp_138_0
              #                    load from temp_101_cmp_138 in mem
    lb      s8,1475(sp)
              #                    occupy s5 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      s5,1824(sp)
              #                    occupy a3 with _anonymous_of_temp_87_ptr2globl_128_0
              #                    load from temp_87_ptr2globl_128 in mem


    lw      a3,1540(sp)
              #                    occupy s1 with _anonymous_of_temp_98_ptr2globl_138_0
              #                    load from temp_98_ptr2globl_138 in mem


    lw      s1,1488(sp)
              #                    occupy a4 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a4,1820(sp)
    j       .branch_false_139
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s1:Freed { symidx: temp_98_ptr2globl_138, tracked: true } |     s2:Freed { symidx: temp_99_array_ptr_138, tracked: true } |     s5:Freed { symidx: buf_60, tracked: true } |     s6:Freed { symidx: temp_100_array_ele_138, tracked: true } |     s8:Freed { symidx: temp_101_cmp_138, tracked: true } | 
              #                          label branch_false_139: 
.branch_false_139:
              #                    regtab     a0:Freed { symidx: temp_109_ret_of_is_number_145, tracked: true } |     a2:Freed { symidx: temp_110_cmp_145, tracked: true } | 
              #                          label branch_false_146: 
.branch_false_146:
              #                    regtab     a0:Freed { symidx: temp_109_ret_of_is_number_145, tracked: true } |     a2:Freed { symidx: temp_110_cmp_145, tracked: true } | 
              #                          label L18_0: 
.L18_0:
              #                          new_var temp_111_ptr2globl_144:i32 
              #                          temp_111_ptr2globl_144 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a3 with temp_111_ptr2globl_144
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_112_arithop_144:i32 
              #                          temp_112_arithop_144 = Add i32 temp_111_ptr2globl_144, 1_0 
              #                    occupy a3 with temp_111_ptr2globl_144
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_112_arithop_144
    add     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          store temp_112_arithop_144:i32 *pos_0:ptr->i32 
              #                    occupy a6 with *pos_0
              #                       load label pos as ptr to reg
    la      a6, pos
              #                    occupy reg a6 with *pos_0
              #                    occupy a5 with temp_112_arithop_144
    sw      a5,0(a6)
              #                    free a5
              #                    free a6
              #                          jump label: while.head_143 
              #                    store to temp_109_ret_of_is_number_145 in mem offset legal
    sw      a0,1432(sp)
              #                    release a0 with temp_109_ret_of_is_number_145
              #                    store to temp_110_cmp_145 in mem offset legal
    sb      a2,1431(sp)
              #                    release a2 with temp_110_cmp_145
              #                    store to temp_112_arithop_144 in mem offset legal
    sw      a5,1420(sp)
              #                    release a5 with temp_112_arithop_144
              #                    store to temp_111_ptr2globl_144 in mem offset legal
    sw      a3,1424(sp)
              #                    release a3 with temp_111_ptr2globl_144
              #                    occupy s7 with _anonymous_of_temp_103_arithop_140_0
              #                    load from temp_103_arithop_140 in mem


    lw      s7,1464(sp)
              #                    occupy s2 with _anonymous_of_temp_99_array_ptr_138_0
              #                    load from temp_99_array_ptr_138 in mem
    ld      s2,1480(sp)
              #                    occupy a6 with _anonymous_of_temp_96_ptr2globl_135_0
              #                    load from temp_96_ptr2globl_135 in mem


    lw      a6,1496(sp)
              #                    occupy a0 with _anonymous_of_temp_149_ret_of_is_number_124_0
              #                    load from temp_149_ret_of_is_number_124 in mem


    lw      a0,1240(sp)
              #                    occupy a2 with _anonymous_of_temp_150_cmp_124_0
              #                    load from temp_150_cmp_124 in mem
    lb      a2,1239(sp)
              #                    occupy a5 with _anonymous_of_temp_88_cmp_128_0
              #                    load from temp_88_cmp_128 in mem
    lb      a5,1539(sp)
              #                    occupy a7 with _anonymous_of_temp_97_cmp_135_0
              #                    load from temp_97_cmp_135 in mem
    lb      a7,1495(sp)
              #                    occupy s6 with _anonymous_of_temp_100_array_ele_138_0
              #                    load from temp_100_array_ele_138 in mem


    lw      s6,1476(sp)
              #                    occupy s8 with _anonymous_of_temp_101_cmp_138_0
              #                    load from temp_101_cmp_138 in mem
    lb      s8,1475(sp)
              #                    occupy s3 with _anonymous_of_temp_102_ptr2globl_140_0
              #                    load from temp_102_ptr2globl_140 in mem


    lw      s3,1468(sp)
              #                    occupy s5 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      s5,1824(sp)
              #                    occupy a3 with _anonymous_of_temp_87_ptr2globl_128_0
              #                    load from temp_87_ptr2globl_128 in mem


    lw      a3,1540(sp)
              #                    occupy s1 with _anonymous_of_temp_98_ptr2globl_138_0
              #                    load from temp_98_ptr2globl_138 in mem


    lw      s1,1488(sp)
              #                    occupy a4 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a4,1820(sp)
    j       .while.head_143
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } | 
              #                          label branch_false_136: 
.branch_false_136:
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } | 
              #                          label L19_0: 
.L19_0:
              #                          new_var temp_113_ptr2globl_149:i32 
              #                          temp_113_ptr2globl_149 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s1 with temp_113_ptr2globl_149
    lw      s1,0(a1)
              #                    free s1
              #                    free a1
              #                          new_var temp_114_cmp_149:i1 
              #                          temp_114_cmp_149 = icmp i32 Slt temp_113_ptr2globl_149, len_60 
              #                    occupy s1 with temp_113_ptr2globl_149
              #                    occupy a4 with len_60
              #                    occupy s2 with temp_114_cmp_149
    slt     s2,s1,a4
              #                    free s1
              #                    free a4
              #                    free s2
              #                          br i1 temp_114_cmp_149, label branch_true_150, label branch_false_150 
              #                    occupy s2 with temp_114_cmp_149
              #                    free s2
              #                    occupy s2 with temp_114_cmp_149
    bnez    s2, .branch_true_150
              #                    free s2
    j       .branch_false_150
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } | 
              #                          label branch_true_150: 
.branch_true_150:
              #                          new_var temp_115_ptr2globl_152:i32 
              #                          temp_115_ptr2globl_152 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s3 with temp_115_ptr2globl_152
    lw      s3,0(a1)
              #                    free s3
              #                    free a1
              #                          new_var temp_116_array_ptr_152:ptr->i32 
              #                          temp_116_array_ptr_152 = getelementptr buf_60:ptr->i32 [Some(temp_115_ptr2globl_152)] 
              #                    occupy s4 with temp_116_array_ptr_152
    li      s4, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s3 with temp_115_ptr2globl_152
              #                    occupy s6 with _anonymous_of_buf_60_0
    mul     s6,s5,s3
              #                    free s5
              #                    free s3
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
              #                    occupy s7 with buf_60
              #                    load from buf_60 in mem
    ld      s7,1824(sp)
    add     s4,s4,s7
              #                    free s7
              #                    free s4
              #                          new_var temp_117_array_ele_152:i32 
              #                          temp_117_array_ele_152 = load temp_116_array_ptr_152:ptr->i32 
              #                    occupy s4 with temp_116_array_ptr_152
              #                    occupy s8 with temp_117_array_ele_152
    lw      s8,0(s4)
              #                    free s8
              #                    free s4
              #                          new_var temp_118_cmp_152:i1 
              #                          temp_118_cmp_152 = icmp i32 Eq temp_117_array_ele_152, 101_0 
              #                    occupy s8 with temp_117_array_ele_152
              #                    occupy s9 with 101_0
    li      s9, 101
              #                    occupy s10 with temp_118_cmp_152
    xor     s10,s8,s9
    seqz    s10, s10
              #                    free s8
              #                    free s9
              #                    free s10
              #                          br i1 temp_118_cmp_152, label branch_true_153, label branch_false_153 
              #                    occupy s10 with temp_118_cmp_152
              #                    free s10
              #                    occupy s10 with temp_118_cmp_152
    bnez    s10, .branch_true_153
              #                    free s10
    j       .branch_false_153
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } | 
              #                          label branch_true_153: 
.branch_true_153:
              #                          new_var temp_119_ptr2globl_154:i32 
              #                          temp_119_ptr2globl_154 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s5 with temp_119_ptr2globl_154
    lw      s5,0(a1)
              #                    free s5
              #                    free a1
              #                          new_var temp_120_arithop_154:i32 
              #                          temp_120_arithop_154 = Add i32 temp_119_ptr2globl_154, 1_0 
              #                    occupy s5 with temp_119_ptr2globl_154
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s9 with temp_120_arithop_154
    add     s9,s5,s6
              #                    free s5
              #                    free s6
              #                    free s9
              #                          store temp_120_arithop_154:i32 *pos_0:ptr->i32 
              #                    occupy s11 with *pos_0
              #                       load label pos as ptr to reg
    la      s11, pos
              #                    occupy reg s11 with *pos_0
              #                    occupy s9 with temp_120_arithop_154
    sw      s9,0(s11)
              #                    free s9
              #                    free s11
              #                          jump label: L20_0 
    j       .L20_0
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s5:Freed { symidx: temp_119_ptr2globl_154, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } |     s9:Freed { symidx: temp_120_arithop_154, tracked: true } | 
              #                          label L20_0: 
.L20_0:
              #                          new_var temp_121_ptr2globl_156:i32 
              #                          temp_121_ptr2globl_156 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s6 with temp_121_ptr2globl_156
    lw      s6,0(a1)
              #                    free s6
              #                    free a1
              #                          new_var temp_122_cmp_156:i1 
              #                          temp_122_cmp_156 = icmp i32 Slt temp_121_ptr2globl_156, len_60 
              #                    occupy s6 with temp_121_ptr2globl_156
              #                    occupy a4 with len_60
              #                    occupy s11 with temp_122_cmp_156
    slt     s11,s6,a4
              #                    free s6
              #                    free a4
              #                    free s11
              #                          br i1 temp_122_cmp_156, label branch_true_157, label branch_false_157 
              #                    occupy s11 with temp_122_cmp_156
              #                    free s11
              #                    occupy s11 with temp_122_cmp_156
    bnez    s11, .branch_true_157
              #                    free s11
    j       .branch_false_157
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s11:Freed { symidx: temp_122_cmp_156, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s5:Freed { symidx: temp_119_ptr2globl_154, tracked: true } |     s6:Freed { symidx: temp_121_ptr2globl_156, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } |     s9:Freed { symidx: temp_120_arithop_154, tracked: true } | 
              #                          label branch_true_157: 
.branch_true_157:
              #                          new_var temp_123_ptr2globl_159:i32 
              #                          temp_123_ptr2globl_159 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    store to temp_149_ret_of_is_number_124 in mem offset legal
    sw      a0,1240(sp)
              #                    release a0 with temp_149_ret_of_is_number_124
              #                    occupy a0 with temp_123_ptr2globl_159
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_124_array_ptr_159:ptr->i32 
              #                          temp_124_array_ptr_159 = getelementptr buf_60:ptr->i32 [Some(temp_123_ptr2globl_159)] 
              #                    occupy a1 with temp_124_array_ptr_159
    li      a1, 0
              #                    store to temp_123_ptr2globl_159 in mem offset legal
    sw      a0,1372(sp)
              #                    release a0 with temp_123_ptr2globl_159
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_150_cmp_124 in mem offset legal
    sb      a2,1239(sp)
              #                    release a2 with temp_150_cmp_124
              #                    occupy a2 with temp_123_ptr2globl_159
              #                    load from temp_123_ptr2globl_159 in mem


    lw      a2,1372(sp)
              #                    store to temp_87_ptr2globl_128 in mem offset legal
    sw      a3,1540(sp)
              #                    release a3 with temp_87_ptr2globl_128
              #                    occupy a3 with _anonymous_of_buf_60_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy s7 with buf_60
    add     a1,a1,s7
              #                    free s7
              #                    free a1
              #                          new_var temp_125_array_ele_159:i32 
              #                          temp_125_array_ele_159 = load temp_124_array_ptr_159:ptr->i32 
              #                    occupy a1 with temp_124_array_ptr_159
              #                    occupy a0 with temp_125_array_ele_159
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_126_cmp_159:i1 
              #                          temp_126_cmp_159 = icmp i32 Eq temp_125_array_ele_159, 43_0 
              #                    occupy a0 with temp_125_array_ele_159
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    store to temp_124_array_ptr_159 in mem offset legal
    sd      a1,1360(sp)
              #                    release a1 with temp_124_array_ptr_159
              #                    occupy a1 with temp_126_cmp_159
    xor     a1,a0,a3
    seqz    a1, a1
              #                    free a0
              #                    free a3
              #                    free a1
              #                          br i1 temp_126_cmp_159, label branch_true_160, label branch_false_160 
              #                    occupy a1 with temp_126_cmp_159
              #                    free a1
              #                    occupy a1 with temp_126_cmp_159
    bnez    a1, .branch_true_160
              #                    free a1
    j       .branch_false_160
              #                    regtab     a0:Freed { symidx: temp_125_array_ele_159, tracked: true } |     a1:Freed { symidx: temp_126_cmp_159, tracked: true } |     a2:Freed { symidx: temp_123_ptr2globl_159, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s11:Freed { symidx: temp_122_cmp_156, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s5:Freed { symidx: temp_119_ptr2globl_154, tracked: true } |     s6:Freed { symidx: temp_121_ptr2globl_156, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } |     s9:Freed { symidx: temp_120_arithop_154, tracked: true } | 
              #                          label branch_true_160: 
.branch_true_160:
              #                          new_var temp_127_ptr2globl_161:i32 
              #                          temp_127_ptr2globl_161 = load *pos_0:ptr->i32 
              #                    occupy a3 with *pos_0
              #                       load label pos as ptr to reg
    la      a3, pos
              #                    occupy reg a3 with *pos_0
              #                    store to temp_125_array_ele_159 in mem offset legal
    sw      a0,1356(sp)
              #                    release a0 with temp_125_array_ele_159
              #                    occupy a0 with temp_127_ptr2globl_161
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_128_arithop_161:i32 
              #                          temp_128_arithop_161 = Add i32 temp_127_ptr2globl_161, 1_0 
              #                    occupy a0 with temp_127_ptr2globl_161
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    store to temp_126_cmp_159 in mem offset legal
    sb      a1,1355(sp)
              #                    release a1 with temp_126_cmp_159
              #                    occupy a1 with temp_128_arithop_161
    add     a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                          store temp_128_arithop_161:i32 *pos_0:ptr->i32 
              #                    occupy a3 with *pos_0
              #                       load label pos as ptr to reg
    la      a3, pos
              #                    occupy reg a3 with *pos_0
              #                    occupy a1 with temp_128_arithop_161
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                          jump label: branch_false_160 
              #                    store to temp_128_arithop_161 in mem offset legal
    sw      a1,1344(sp)
              #                    release a1 with temp_128_arithop_161
              #                    store to temp_127_ptr2globl_161 in mem offset legal
    sw      a0,1348(sp)
              #                    release a0 with temp_127_ptr2globl_161
              #                    occupy a1 with _anonymous_of_temp_126_cmp_159_0
              #                    load from temp_126_cmp_159 in mem
    lb      a1,1355(sp)
              #                    occupy a0 with _anonymous_of_temp_125_array_ele_159_0
              #                    load from temp_125_array_ele_159 in mem


    lw      a0,1356(sp)
    j       .branch_false_160
              #                    regtab     a0:Freed { symidx: temp_125_array_ele_159, tracked: true } |     a1:Freed { symidx: temp_126_cmp_159, tracked: true } |     a2:Freed { symidx: temp_123_ptr2globl_159, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s11:Freed { symidx: temp_122_cmp_156, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s5:Freed { symidx: temp_119_ptr2globl_154, tracked: true } |     s6:Freed { symidx: temp_121_ptr2globl_156, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } |     s9:Freed { symidx: temp_120_arithop_154, tracked: true } | 
              #                          label branch_false_160: 
.branch_false_160:
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s11:Freed { symidx: temp_122_cmp_156, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s5:Freed { symidx: temp_119_ptr2globl_154, tracked: true } |     s6:Freed { symidx: temp_121_ptr2globl_156, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } |     s9:Freed { symidx: temp_120_arithop_154, tracked: true } | 
              #                          label branch_false_157: 
.branch_false_157:
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s11:Freed { symidx: temp_122_cmp_156, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s5:Freed { symidx: temp_119_ptr2globl_154, tracked: true } |     s6:Freed { symidx: temp_121_ptr2globl_156, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } |     s9:Freed { symidx: temp_120_arithop_154, tracked: true } | 
              #                          label L21_0: 
.L21_0:
              #                          new_var temp_129_ptr2globl_163:i32 
              #                          temp_129_ptr2globl_163 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    store to temp_149_ret_of_is_number_124 in mem offset legal
    sw      a0,1240(sp)
              #                    release a0 with temp_149_ret_of_is_number_124
              #                    occupy a0 with temp_129_ptr2globl_163
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_130_cmp_163:i1 
              #                          temp_130_cmp_163 = icmp i32 Slt temp_129_ptr2globl_163, len_60 
              #                    occupy a0 with temp_129_ptr2globl_163
              #                    occupy a4 with len_60
              #                    occupy a1 with temp_130_cmp_163
    slt     a1,a0,a4
              #                    free a0
              #                    free a4
              #                    free a1
              #                          br i1 temp_130_cmp_163, label branch_true_164, label branch_false_164 
              #                    occupy a1 with temp_130_cmp_163
              #                    free a1
              #                    store to buf_60 in mem offset legal
    sd      s7,1824(sp)
              #                    release s7 with buf_60
              #                    occupy a1 with temp_130_cmp_163
    bnez    a1, .branch_true_164
              #                    free a1
    j       .branch_false_164
              #                    regtab     a0:Freed { symidx: temp_129_ptr2globl_163, tracked: true } |     a1:Freed { symidx: temp_130_cmp_163, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s11:Freed { symidx: temp_122_cmp_156, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s5:Freed { symidx: temp_119_ptr2globl_154, tracked: true } |     s6:Freed { symidx: temp_121_ptr2globl_156, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } |     s9:Freed { symidx: temp_120_arithop_154, tracked: true } | 
              #                          label branch_true_164: 
.branch_true_164:
              #                          new_var temp_131_ptr2globl_166:i32 
              #                          temp_131_ptr2globl_166 = load *pos_0:ptr->i32 
              #                    occupy s7 with *pos_0
              #                       load label pos as ptr to reg
    la      s7, pos
              #                    occupy reg s7 with *pos_0
              #                    store to temp_129_ptr2globl_163 in mem offset legal
    sw      a0,1340(sp)
              #                    release a0 with temp_129_ptr2globl_163
              #                    occupy a0 with temp_131_ptr2globl_166
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_132_array_ptr_166:ptr->i32 
              #                          temp_132_array_ptr_166 = getelementptr buf_60:ptr->i32 [Some(temp_131_ptr2globl_166)] 
              #                    occupy s7 with temp_132_array_ptr_166
    li      s7, 0
              #                    store to temp_131_ptr2globl_166 in mem offset legal
    sw      a0,1332(sp)
              #                    release a0 with temp_131_ptr2globl_166
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_130_cmp_163 in mem offset legal
    sb      a1,1339(sp)
              #                    release a1 with temp_130_cmp_163
              #                    occupy a1 with temp_131_ptr2globl_166
              #                    load from temp_131_ptr2globl_166 in mem


    lw      a1,1332(sp)
              #                    store to temp_150_cmp_124 in mem offset legal
    sb      a2,1239(sp)
              #                    release a2 with temp_150_cmp_124
              #                    occupy a2 with _anonymous_of_buf_60_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     s7,s7,a0
              #                    free a0
              #                    free s7
              #                          new_var temp_133_array_ele_166:i32 
              #                          temp_133_array_ele_166 = load temp_132_array_ptr_166:ptr->i32 
              #                    occupy s7 with temp_132_array_ptr_166
              #                    occupy a2 with temp_133_array_ele_166
    lw      a2,0(s7)
              #                    free a2
              #                    free s7
              #                          new_var temp_134_cmp_166:i1 
              #                          temp_134_cmp_166 = icmp i32 Eq temp_133_array_ele_166, 45_0 
              #                    occupy a2 with temp_133_array_ele_166
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with 45_0
    li      a0, 45
              #                    store to temp_131_ptr2globl_166 in mem offset legal
    sw      a1,1332(sp)
              #                    release a1 with temp_131_ptr2globl_166
              #                    occupy a1 with temp_134_cmp_166
    xor     a1,a2,a0
    seqz    a1, a1
              #                    free a2
              #                    free a0
              #                    free a1
              #                          br i1 temp_134_cmp_166, label branch_true_167, label branch_false_167 
              #                    occupy a1 with temp_134_cmp_166
              #                    free a1
              #                    occupy a1 with temp_134_cmp_166
    bnez    a1, .branch_true_167
              #                    free a1
    j       .branch_false_167
              #                    regtab     a1:Freed { symidx: temp_134_cmp_166, tracked: true } |     a2:Freed { symidx: temp_133_array_ele_166, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s11:Freed { symidx: temp_122_cmp_156, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s5:Freed { symidx: temp_119_ptr2globl_154, tracked: true } |     s6:Freed { symidx: temp_121_ptr2globl_156, tracked: true } |     s7:Freed { symidx: temp_132_array_ptr_166, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } |     s9:Freed { symidx: temp_120_arithop_154, tracked: true } | 
              #                          label branch_true_167: 
.branch_true_167:
              #                          new_var temp_135_ptr2globl_168:i32 
              #                          temp_135_ptr2globl_168 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    store to temp_134_cmp_166 in mem offset legal
    sb      a1,1315(sp)
              #                    release a1 with temp_134_cmp_166
              #                    occupy a1 with temp_135_ptr2globl_168
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_136_arithop_168:i32 
              #                          temp_136_arithop_168 = Add i32 temp_135_ptr2globl_168, 1_0 
              #                    occupy a1 with temp_135_ptr2globl_168
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_133_array_ele_166 in mem offset legal
    sw      a2,1316(sp)
              #                    release a2 with temp_133_array_ele_166
              #                    occupy a2 with temp_136_arithop_168
    add     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          store temp_136_arithop_168:i32 *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a2 with temp_136_arithop_168
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          jump label: branch_false_167 
              #                    store to temp_135_ptr2globl_168 in mem offset legal
    sw      a1,1308(sp)
              #                    release a1 with temp_135_ptr2globl_168
              #                    store to temp_136_arithop_168 in mem offset legal
    sw      a2,1304(sp)
              #                    release a2 with temp_136_arithop_168
              #                    occupy a1 with _anonymous_of_temp_134_cmp_166_0
              #                    load from temp_134_cmp_166 in mem
    lb      a1,1315(sp)
              #                    occupy a2 with _anonymous_of_temp_133_array_ele_166_0
              #                    load from temp_133_array_ele_166 in mem


    lw      a2,1316(sp)
    j       .branch_false_167
              #                    regtab     a1:Freed { symidx: temp_134_cmp_166, tracked: true } |     a2:Freed { symidx: temp_133_array_ele_166, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s11:Freed { symidx: temp_122_cmp_156, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s5:Freed { symidx: temp_119_ptr2globl_154, tracked: true } |     s6:Freed { symidx: temp_121_ptr2globl_156, tracked: true } |     s7:Freed { symidx: temp_132_array_ptr_166, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } |     s9:Freed { symidx: temp_120_arithop_154, tracked: true } | 
              #                          label branch_false_167: 
.branch_false_167:
              #                    regtab     a0:Freed { symidx: temp_129_ptr2globl_163, tracked: true } |     a1:Freed { symidx: temp_130_cmp_163, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s11:Freed { symidx: temp_122_cmp_156, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s5:Freed { symidx: temp_119_ptr2globl_154, tracked: true } |     s6:Freed { symidx: temp_121_ptr2globl_156, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } |     s9:Freed { symidx: temp_120_arithop_154, tracked: true } | 
              #                          label branch_false_164: 
.branch_false_164:
              #                    regtab     a0:Freed { symidx: temp_129_ptr2globl_163, tracked: true } |     a1:Freed { symidx: temp_130_cmp_163, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s11:Freed { symidx: temp_122_cmp_156, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s5:Freed { symidx: temp_119_ptr2globl_154, tracked: true } |     s6:Freed { symidx: temp_121_ptr2globl_156, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } |     s9:Freed { symidx: temp_120_arithop_154, tracked: true } | 
              #                          label while.head_171: 
.while.head_171:
              #                          new_var temp_137_ptr2globl_170:i32 
              #                          temp_137_ptr2globl_170 = load *pos_0:ptr->i32 
              #                    occupy s7 with *pos_0
              #                       load label pos as ptr to reg
    la      s7, pos
              #                    occupy reg s7 with *pos_0
              #                    store to temp_129_ptr2globl_163 in mem offset legal
    sw      a0,1340(sp)
              #                    release a0 with temp_129_ptr2globl_163
              #                    occupy a0 with temp_137_ptr2globl_170
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_138_cmp_170:i1 
              #                          temp_138_cmp_170 = icmp i32 Slt temp_137_ptr2globl_170, len_60 
              #                    occupy a0 with temp_137_ptr2globl_170
              #                    occupy a4 with len_60
              #                    occupy s7 with temp_138_cmp_170
    slt     s7,a0,a4
              #                    free a0
              #                    free a4
              #                    free s7
              #                          br i1 temp_138_cmp_170, label while.body_171, label branch_false_153 
              #                    occupy s7 with temp_138_cmp_170
              #                    free s7
              #                    store to temp_138_cmp_170 in mem offset legal
    sb      s7,1299(sp)
              #                    release s7 with temp_138_cmp_170
              #                    occupy s7 with temp_138_cmp_170
              #                    load from temp_138_cmp_170 in mem
    lb      s7,1299(sp)
    bnez    s7, .while.body_171
              #                    free s7
              #                    store to temp_138_cmp_170 in mem offset legal
    sb      s7,1299(sp)
              #                    release s7 with temp_138_cmp_170
              #                    store to temp_130_cmp_163 in mem offset legal
    sb      a1,1339(sp)
              #                    release a1 with temp_130_cmp_163
              #                    store to temp_120_arithop_154 in mem offset legal
    sw      s9,1384(sp)
              #                    release s9 with temp_120_arithop_154
              #                    store to temp_137_ptr2globl_170 in mem offset legal
    sw      a0,1300(sp)
              #                    release a0 with temp_137_ptr2globl_170
              #                    store to temp_121_ptr2globl_156 in mem offset legal
    sw      s6,1380(sp)
              #                    release s6 with temp_121_ptr2globl_156
              #                    store to temp_119_ptr2globl_154 in mem offset legal
    sw      s5,1388(sp)
              #                    release s5 with temp_119_ptr2globl_154
              #                    store to temp_122_cmp_156 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_122_cmp_156
              #                    occupy s7 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      s7,1824(sp)
              #                    occupy a0 with _anonymous_of_temp_149_ret_of_is_number_124_0
              #                    load from temp_149_ret_of_is_number_124 in mem


    lw      a0,1240(sp)
    j       .branch_false_153
              #                    regtab     a0:Freed { symidx: temp_137_ptr2globl_170, tracked: true } |     a1:Freed { symidx: temp_130_cmp_163, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s11:Freed { symidx: temp_122_cmp_156, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s5:Freed { symidx: temp_119_ptr2globl_154, tracked: true } |     s6:Freed { symidx: temp_121_ptr2globl_156, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } |     s9:Freed { symidx: temp_120_arithop_154, tracked: true } | 
              #                          label while.body_171: 
.while.body_171:
              #                          new_var temp_139_ptr2globl_173:i32 
              #                          temp_139_ptr2globl_173 = load *pos_0:ptr->i32 
              #                    occupy s7 with *pos_0
              #                       load label pos as ptr to reg
    la      s7, pos
              #                    occupy reg s7 with *pos_0
              #                    store to temp_137_ptr2globl_170 in mem offset legal
    sw      a0,1300(sp)
              #                    release a0 with temp_137_ptr2globl_170
              #                    occupy a0 with temp_139_ptr2globl_173
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_140_array_ptr_173:ptr->i32 
              #                          temp_140_array_ptr_173 = getelementptr buf_60:ptr->i32 [Some(temp_139_ptr2globl_173)] 
              #                    occupy s7 with temp_140_array_ptr_173
    li      s7, 0
              #                    store to temp_139_ptr2globl_173 in mem offset legal
    sw      a0,1292(sp)
              #                    release a0 with temp_139_ptr2globl_173
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_130_cmp_163 in mem offset legal
    sb      a1,1339(sp)
              #                    release a1 with temp_130_cmp_163
              #                    occupy a1 with temp_139_ptr2globl_173
              #                    load from temp_139_ptr2globl_173 in mem


    lw      a1,1292(sp)
              #                    store to temp_150_cmp_124 in mem offset legal
    sb      a2,1239(sp)
              #                    release a2 with temp_150_cmp_124
              #                    occupy a2 with _anonymous_of_buf_60_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     s7,s7,a0
              #                    free a0
              #                    free s7
              #                          new_var temp_141_array_ele_173:i32 
              #                          temp_141_array_ele_173 = load temp_140_array_ptr_173:ptr->i32 
              #                    occupy s7 with temp_140_array_ptr_173
              #                    occupy a2 with temp_141_array_ele_173
    lw      a2,0(s7)
              #                    free a2
              #                    free s7
              #                          new_var temp_142_ret_of_is_number_173:i32 
              #                          temp_142_ret_of_is_number_173 =  Call i32 is_number_0(temp_141_array_ele_173) 
              #                    saved register dumping to mem
              #                    store to temp_113_ptr2globl_149 in mem offset legal
    sw      s1,1416(sp)
              #                    release s1 with temp_113_ptr2globl_149
              #                    store to temp_114_cmp_149 in mem offset legal
    sb      s2,1415(sp)
              #                    release s2 with temp_114_cmp_149
              #                    store to temp_115_ptr2globl_152 in mem offset legal
    sw      s3,1408(sp)
              #                    release s3 with temp_115_ptr2globl_152
              #                    store to temp_116_array_ptr_152 in mem offset legal
    sd      s4,1400(sp)
              #                    release s4 with temp_116_array_ptr_152
              #                    store to temp_119_ptr2globl_154 in mem offset legal
    sw      s5,1388(sp)
              #                    release s5 with temp_119_ptr2globl_154
              #                    store to temp_121_ptr2globl_156 in mem offset legal
    sw      s6,1380(sp)
              #                    release s6 with temp_121_ptr2globl_156
              #                    store to temp_140_array_ptr_173 in mem offset legal
    sd      s7,1280(sp)
              #                    release s7 with temp_140_array_ptr_173
              #                    store to temp_117_array_ele_152 in mem offset legal
    sw      s8,1396(sp)
              #                    release s8 with temp_117_array_ele_152
              #                    store to temp_120_arithop_154 in mem offset legal
    sw      s9,1384(sp)
              #                    release s9 with temp_120_arithop_154
              #                    store to temp_118_cmp_152 in mem offset legal
    sb      s10,1395(sp)
              #                    release s10 with temp_118_cmp_152
              #                    store to temp_122_cmp_156 in mem offset legal
    sb      s11,1379(sp)
              #                    release s11 with temp_122_cmp_156
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    store to temp_139_ptr2globl_173 in mem offset legal
    sw      a1,1292(sp)
              #                    release a1 with temp_139_ptr2globl_173
              #                    store to temp_141_array_ele_173 in mem offset legal
    sw      a2,1276(sp)
              #                    release a2 with temp_141_array_ele_173
              #                    store to temp_87_ptr2globl_128 in mem offset legal
    sw      a3,1540(sp)
              #                    release a3 with temp_87_ptr2globl_128
              #                    store to len_60 in mem offset legal
    sw      a4,1820(sp)
              #                    release a4 with len_60
              #                    store to temp_88_cmp_128 in mem offset legal
    sb      a5,1539(sp)
              #                    release a5 with temp_88_cmp_128
              #                    store to temp_96_ptr2globl_135 in mem offset legal
    sw      a6,1496(sp)
              #                    release a6 with temp_96_ptr2globl_135
              #                    store to temp_97_cmp_135 in mem offset legal
    sb      a7,1495(sp)
              #                    release a7 with temp_97_cmp_135
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_141_array_ele_173_0
              #                    load from temp_141_array_ele_173 in mem


    lw      a0,1276(sp)
              #                    arg load ended


    call    is_number
              #                    store to temp_142_ret_of_is_number_173 in mem offset legal
    sw      a0,1272(sp)
              #                          new_var temp_143_cmp_173:i1 
              #                          temp_143_cmp_173 = icmp i32 Ne temp_142_ret_of_is_number_173, 1_0 
              #                    occupy a0 with temp_142_ret_of_is_number_173
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_143_cmp_173
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_143_cmp_173, label branch_true_174, label branch_false_174 
              #                    occupy a2 with temp_143_cmp_173
              #                    free a2
              #                    occupy a2 with temp_143_cmp_173
    bnez    a2, .branch_true_174
              #                    free a2
    j       .branch_false_174
              #                    regtab     a0:Freed { symidx: temp_142_ret_of_is_number_173, tracked: true } |     a2:Freed { symidx: temp_143_cmp_173, tracked: true } | 
              #                          label branch_true_174: 
.branch_true_174:
              #                          jump label: branch_false_153 
              #                    store to temp_142_ret_of_is_number_173 in mem offset legal
    sw      a0,1272(sp)
              #                    release a0 with temp_142_ret_of_is_number_173
              #                    store to temp_143_cmp_173 in mem offset legal
    sb      a2,1271(sp)
              #                    release a2 with temp_143_cmp_173
              #                    occupy s7 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      s7,1824(sp)
              #                    occupy s2 with _anonymous_of_temp_114_cmp_149_0
              #                    load from temp_114_cmp_149 in mem
    lb      s2,1415(sp)
              #                    occupy s10 with _anonymous_of_temp_118_cmp_152_0
              #                    load from temp_118_cmp_152 in mem
    lb      s10,1395(sp)
              #                    occupy a6 with _anonymous_of_temp_96_ptr2globl_135_0
              #                    load from temp_96_ptr2globl_135 in mem


    lw      a6,1496(sp)
              #                    occupy a0 with _anonymous_of_temp_149_ret_of_is_number_124_0
              #                    load from temp_149_ret_of_is_number_124 in mem


    lw      a0,1240(sp)
              #                    occupy a2 with _anonymous_of_temp_150_cmp_124_0
              #                    load from temp_150_cmp_124 in mem
    lb      a2,1239(sp)
              #                    occupy a5 with _anonymous_of_temp_88_cmp_128_0
              #                    load from temp_88_cmp_128 in mem
    lb      a5,1539(sp)
              #                    occupy a7 with _anonymous_of_temp_97_cmp_135_0
              #                    load from temp_97_cmp_135 in mem
    lb      a7,1495(sp)
              #                    occupy s8 with _anonymous_of_temp_117_array_ele_152_0
              #                    load from temp_117_array_ele_152 in mem


    lw      s8,1396(sp)
              #                    occupy s4 with _anonymous_of_temp_116_array_ptr_152_0
              #                    load from temp_116_array_ptr_152 in mem
    ld      s4,1400(sp)
              #                    occupy s3 with _anonymous_of_temp_115_ptr2globl_152_0
              #                    load from temp_115_ptr2globl_152 in mem


    lw      s3,1408(sp)
              #                    occupy a3 with _anonymous_of_temp_87_ptr2globl_128_0
              #                    load from temp_87_ptr2globl_128 in mem


    lw      a3,1540(sp)
              #                    occupy s1 with _anonymous_of_temp_113_ptr2globl_149_0
              #                    load from temp_113_ptr2globl_149 in mem


    lw      s1,1416(sp)
              #                    occupy a4 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a4,1820(sp)
    j       .branch_false_153
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s10:Freed { symidx: temp_118_cmp_152, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } |     s3:Freed { symidx: temp_115_ptr2globl_152, tracked: true } |     s4:Freed { symidx: temp_116_array_ptr_152, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_117_array_ele_152, tracked: true } | 
              #                          label branch_false_153: 
.branch_false_153:
              #                    regtab     a0:Freed { symidx: temp_142_ret_of_is_number_173, tracked: true } |     a2:Freed { symidx: temp_143_cmp_173, tracked: true } | 
              #                          label branch_false_174: 
.branch_false_174:
              #                    regtab     a0:Freed { symidx: temp_142_ret_of_is_number_173, tracked: true } |     a2:Freed { symidx: temp_143_cmp_173, tracked: true } | 
              #                          label L22_0: 
.L22_0:
              #                          new_var temp_144_ptr2globl_172:i32 
              #                          temp_144_ptr2globl_172 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a3 with temp_144_ptr2globl_172
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_145_arithop_172:i32 
              #                          temp_145_arithop_172 = Add i32 temp_144_ptr2globl_172, 1_0 
              #                    occupy a3 with temp_144_ptr2globl_172
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_145_arithop_172
    add     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          store temp_145_arithop_172:i32 *pos_0:ptr->i32 
              #                    occupy a6 with *pos_0
              #                       load label pos as ptr to reg
    la      a6, pos
              #                    occupy reg a6 with *pos_0
              #                    occupy a5 with temp_145_arithop_172
    sw      a5,0(a6)
              #                    free a5
              #                    free a6
              #                          jump label: while.head_171 
              #                    store to temp_142_ret_of_is_number_173 in mem offset legal
    sw      a0,1272(sp)
              #                    release a0 with temp_142_ret_of_is_number_173
              #                    store to temp_143_cmp_173 in mem offset legal
    sb      a2,1271(sp)
              #                    release a2 with temp_143_cmp_173
              #                    store to temp_145_arithop_172 in mem offset legal
    sw      a5,1260(sp)
              #                    release a5 with temp_145_arithop_172
              #                    store to temp_144_ptr2globl_172 in mem offset legal
    sw      a3,1264(sp)
              #                    release a3 with temp_144_ptr2globl_172
              #                    occupy s2 with _anonymous_of_temp_114_cmp_149_0
              #                    load from temp_114_cmp_149 in mem
    lb      s2,1415(sp)
              #                    occupy s10 with _anonymous_of_temp_118_cmp_152_0
              #                    load from temp_118_cmp_152 in mem
    lb      s10,1395(sp)
              #                    occupy a1 with _anonymous_of_temp_130_cmp_163_0
              #                    load from temp_130_cmp_163 in mem
    lb      a1,1339(sp)
              #                    occupy s9 with _anonymous_of_temp_120_arithop_154_0
              #                    load from temp_120_arithop_154 in mem


    lw      s9,1384(sp)
              #                    occupy a6 with _anonymous_of_temp_96_ptr2globl_135_0
              #                    load from temp_96_ptr2globl_135 in mem


    lw      a6,1496(sp)
              #                    occupy a0 with _anonymous_of_temp_129_ptr2globl_163_0
              #                    load from temp_129_ptr2globl_163 in mem


    lw      a0,1340(sp)
              #                    occupy a2 with _anonymous_of_temp_150_cmp_124_0
              #                    load from temp_150_cmp_124 in mem
    lb      a2,1239(sp)
              #                    occupy a5 with _anonymous_of_temp_88_cmp_128_0
              #                    load from temp_88_cmp_128 in mem
    lb      a5,1539(sp)
              #                    occupy a7 with _anonymous_of_temp_97_cmp_135_0
              #                    load from temp_97_cmp_135 in mem
    lb      a7,1495(sp)
              #                    occupy s6 with _anonymous_of_temp_121_ptr2globl_156_0
              #                    load from temp_121_ptr2globl_156 in mem


    lw      s6,1380(sp)
              #                    occupy s8 with _anonymous_of_temp_117_array_ele_152_0
              #                    load from temp_117_array_ele_152 in mem


    lw      s8,1396(sp)
              #                    occupy s4 with _anonymous_of_temp_116_array_ptr_152_0
              #                    load from temp_116_array_ptr_152 in mem
    ld      s4,1400(sp)
              #                    occupy s3 with _anonymous_of_temp_115_ptr2globl_152_0
              #                    load from temp_115_ptr2globl_152 in mem


    lw      s3,1408(sp)
              #                    occupy s5 with _anonymous_of_temp_119_ptr2globl_154_0
              #                    load from temp_119_ptr2globl_154 in mem


    lw      s5,1388(sp)
              #                    occupy a3 with _anonymous_of_temp_87_ptr2globl_128_0
              #                    load from temp_87_ptr2globl_128 in mem


    lw      a3,1540(sp)
              #                    occupy s1 with _anonymous_of_temp_113_ptr2globl_149_0
              #                    load from temp_113_ptr2globl_149 in mem


    lw      s1,1416(sp)
              #                    occupy a4 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a4,1820(sp)
              #                    occupy s11 with _anonymous_of_temp_122_cmp_156_0
              #                    load from temp_122_cmp_156 in mem
    lb      s11,1379(sp)
    j       .while.head_171
              #                    regtab     a0:Freed { symidx: temp_149_ret_of_is_number_124, tracked: true } |     a2:Freed { symidx: temp_150_cmp_124, tracked: true } |     a3:Freed { symidx: temp_87_ptr2globl_128, tracked: true } |     a4:Freed { symidx: len_60, tracked: true } |     a5:Freed { symidx: temp_88_cmp_128, tracked: true } |     a6:Freed { symidx: temp_96_ptr2globl_135, tracked: true } |     a7:Freed { symidx: temp_97_cmp_135, tracked: true } |     s1:Freed { symidx: temp_113_ptr2globl_149, tracked: true } |     s2:Freed { symidx: temp_114_cmp_149, tracked: true } | 
              #                          label branch_false_150: 
.branch_false_150:
              #                    regtab     a0:Freed { symidx: temp_92_ret_of_is_number_131, tracked: true } |     a2:Freed { symidx: temp_93_cmp_131, tracked: true } | 
              #                          label branch_false_132: 
.branch_false_132:
              #                    regtab     a0:Freed { symidx: temp_92_ret_of_is_number_131, tracked: true } |     a2:Freed { symidx: temp_93_cmp_131, tracked: true } | 
              #                          label L23_0: 
.L23_0:
              #                          new_var temp_94_ptr2globl_130:i32 
              #                          temp_94_ptr2globl_130 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a3 with temp_94_ptr2globl_130
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_95_arithop_130:i32 
              #                          temp_95_arithop_130 = Add i32 temp_94_ptr2globl_130, 1_0 
              #                    occupy a3 with temp_94_ptr2globl_130
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_95_arithop_130
    add     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          store temp_95_arithop_130:i32 *pos_0:ptr->i32 
              #                    occupy a6 with *pos_0
              #                       load label pos as ptr to reg
    la      a6, pos
              #                    occupy reg a6 with *pos_0
              #                    occupy a5 with temp_95_arithop_130
    sw      a5,0(a6)
              #                    free a5
              #                    free a6
              #                          jump label: while.head_129 
              #                    store to temp_92_ret_of_is_number_131 in mem offset legal
    sw      a0,1512(sp)
              #                    release a0 with temp_92_ret_of_is_number_131
              #                    store to temp_93_cmp_131 in mem offset legal
    sb      a2,1511(sp)
              #                    release a2 with temp_93_cmp_131
              #                    store to temp_95_arithop_130 in mem offset legal
    sw      a5,1500(sp)
              #                    release a5 with temp_95_arithop_130
              #                    store to temp_94_ptr2globl_130 in mem offset legal
    sw      a3,1504(sp)
              #                    release a3 with temp_94_ptr2globl_130
              #                    occupy a0 with _anonymous_of_temp_149_ret_of_is_number_124_0
              #                    load from temp_149_ret_of_is_number_124 in mem


    lw      a0,1240(sp)
              #                    occupy a2 with _anonymous_of_temp_150_cmp_124_0
              #                    load from temp_150_cmp_124 in mem
    lb      a2,1239(sp)
    j       .while.head_129
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } | 
              #                          label branch_false_110: 
.branch_false_110:
              #                          new_var temp_157_cmp_177:i1 
              #                          temp_157_cmp_177 = icmp i32 Eq type_60, 2_0 
              #                    occupy a0 with type_60
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a4 with temp_157_cmp_177
    xor     a4,a0,a1
    seqz    a4, a4
              #                    free a0
              #                    free a1
              #                    free a4
              #                          br i1 temp_157_cmp_177, label branch_true_178, label branch_false_178 
              #                    occupy a4 with temp_157_cmp_177
              #                    free a4
              #                    occupy a4 with temp_157_cmp_177
    bnez    a4, .branch_true_178
              #                    free a4
    j       .branch_false_178
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } | 
              #                          label branch_true_178: 
.branch_true_178:
              #                          new_var temp_158_ptr2globl_179:i32 
              #                          temp_158_ptr2globl_179 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a5 with temp_158_ptr2globl_179
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_159_arithop_179:i32 
              #                          temp_159_arithop_179 = Add i32 temp_158_ptr2globl_179, 1_0 
              #                    occupy a5 with temp_158_ptr2globl_179
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_159_arithop_179
    add     a7,a5,a6
              #                    free a5
              #                    free a6
              #                    free a7
              #                          store temp_159_arithop_179:i32 *pos_0:ptr->i32 
              #                    occupy s1 with *pos_0
              #                       load label pos as ptr to reg
    la      s1, pos
              #                    occupy reg s1 with *pos_0
              #                    occupy a7 with temp_159_arithop_179
    sw      a7,0(s1)
              #                    free a7
              #                    free s1
              #                          jump label: while.head_182 
    j       .while.head_182
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } | 
              #                          label while.head_182: 
.while.head_182:
              #                          new_var temp_160_ptr2globl_181:i32 
              #                          temp_160_ptr2globl_181 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a6 with temp_160_ptr2globl_181
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          new_var temp_161_cmp_181:i1 
              #                          temp_161_cmp_181 = icmp i32 Slt temp_160_ptr2globl_181, len_60 
              #                    occupy a6 with temp_160_ptr2globl_181
              #                    occupy s1 with len_60
              #                    load from len_60 in mem


    lw      s1,1820(sp)
              #                    occupy s2 with temp_161_cmp_181
    slt     s2,a6,s1
              #                    free a6
              #                    free s1
              #                    free s2
              #                          br i1 temp_161_cmp_181, label while.body_182, label while.exit_182 
              #                    occupy s2 with temp_161_cmp_181
              #                    free s2
              #                    occupy s2 with temp_161_cmp_181
    bnez    s2, .while.body_182
              #                    free s2
    j       .while.exit_182
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } | 
              #                          label while.body_182: 
.while.body_182:
              #                          new_var temp_162_ptr2globl_184:i32 
              #                          temp_162_ptr2globl_184 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s3 with temp_162_ptr2globl_184
    lw      s3,0(a1)
              #                    free s3
              #                    free a1
              #                          new_var temp_163_array_ptr_184:ptr->i32 
              #                          temp_163_array_ptr_184 = getelementptr buf_60:ptr->i32 [Some(temp_162_ptr2globl_184)] 
              #                    occupy s4 with temp_163_array_ptr_184
    li      s4, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s3 with temp_162_ptr2globl_184
              #                    occupy s6 with _anonymous_of_buf_60_0
    mul     s6,s5,s3
              #                    free s5
              #                    free s3
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
              #                    occupy s7 with buf_60
              #                    load from buf_60 in mem
    ld      s7,1824(sp)
    add     s4,s4,s7
              #                    free s7
              #                    free s4
              #                          new_var temp_164_array_ele_184:i32 
              #                          temp_164_array_ele_184 = load temp_163_array_ptr_184:ptr->i32 
              #                    occupy s4 with temp_163_array_ptr_184
              #                    occupy s8 with temp_164_array_ele_184
    lw      s8,0(s4)
              #                    free s8
              #                    free s4
              #                          new_var temp_165_cmp_184:i1 
              #                          temp_165_cmp_184 = icmp i32 Eq temp_164_array_ele_184, 34_0 
              #                    occupy s8 with temp_164_array_ele_184
              #                    occupy s9 with 34_0
    li      s9, 34
              #                    occupy s10 with temp_165_cmp_184
    xor     s10,s8,s9
    seqz    s10, s10
              #                    free s8
              #                    free s9
              #                    free s10
              #                          br i1 temp_165_cmp_184, label branch_true_185, label branch_false_185 
              #                    occupy s10 with temp_165_cmp_184
              #                    free s10
              #                    occupy s10 with temp_165_cmp_184
    bnez    s10, .branch_true_185
              #                    free s10
    j       .branch_false_185
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_165_cmp_184, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_162_ptr2globl_184, tracked: true } |     s4:Freed { symidx: temp_163_array_ptr_184, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_164_array_ele_184, tracked: true } | 
              #                          label branch_true_185: 
.branch_true_185:
              #                          jump label: while.exit_182 
              #                    store to buf_60 in mem offset legal
    sd      s7,1824(sp)
              #                    release s7 with buf_60
              #                    store to temp_165_cmp_184 in mem offset legal
    sb      s10,1171(sp)
              #                    release s10 with temp_165_cmp_184
              #                    store to temp_164_array_ele_184 in mem offset legal
    sw      s8,1172(sp)
              #                    release s8 with temp_164_array_ele_184
              #                    store to temp_163_array_ptr_184 in mem offset legal
    sd      s4,1176(sp)
              #                    release s4 with temp_163_array_ptr_184
              #                    store to temp_162_ptr2globl_184 in mem offset legal
    sw      s3,1184(sp)
              #                    release s3 with temp_162_ptr2globl_184
    j       .while.exit_182
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } | 
              #                          label while.exit_182: 
.while.exit_182:
              #                          new_var temp_174_ptr2globl_193:i32 
              #                          temp_174_ptr2globl_193 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s3 with temp_174_ptr2globl_193
    lw      s3,0(a1)
              #                    free s3
              #                    free a1
              #                          new_var temp_175_cmp_193:i1 
              #                          temp_175_cmp_193 = icmp i32 Sge temp_174_ptr2globl_193, len_60 
              #                    occupy s3 with temp_174_ptr2globl_193
              #                    occupy s1 with len_60
              #                    occupy s4 with temp_175_cmp_193
    slt     s4,s3,s1
    xori    s4,s4,1
              #                    free s3
              #                    free s1
              #                    free s4
              #                          br i1 temp_175_cmp_193, label branch_true_194, label branch_false_194 
              #                    occupy s4 with temp_175_cmp_193
              #                    free s4
              #                    occupy s4 with temp_175_cmp_193
    bnez    s4, .branch_true_194
              #                    free s4
    j       .branch_false_194
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_174_ptr2globl_193, tracked: true } |     s4:Freed { symidx: temp_175_cmp_193, tracked: true } | 
              #                          label branch_true_194: 
.branch_true_194:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_174_ptr2globl_193, tracked: true } |     s4:Freed { symidx: temp_175_cmp_193, tracked: true } | 
              #                          label branch_false_194: 
.branch_false_194:
              #                          new_var temp_178_ptr2globl_197:i32 
              #                          temp_178_ptr2globl_197 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s5 with temp_178_ptr2globl_197
    lw      s5,0(a1)
              #                    free s5
              #                    free a1
              #                          new_var temp_179_array_ptr_197:ptr->i32 
              #                          temp_179_array_ptr_197 = getelementptr buf_60:ptr->i32 [Some(temp_178_ptr2globl_197)] 
              #                    occupy s6 with temp_179_array_ptr_197
    li      s6, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s5 with temp_178_ptr2globl_197
              #                    occupy s8 with _anonymous_of_buf_60_0
    mul     s8,s7,s5
              #                    free s7
              #                    free s5
    add     s6,s6,s8
              #                    free s8
    slli s6,s6,2
              #                    occupy s9 with buf_60
              #                    load from buf_60 in mem
    ld      s9,1824(sp)
    add     s6,s6,s9
              #                    free s9
              #                    free s6
              #                          new_var temp_180_array_ele_197:i32 
              #                          temp_180_array_ele_197 = load temp_179_array_ptr_197:ptr->i32 
              #                    occupy s6 with temp_179_array_ptr_197
              #                    occupy s10 with temp_180_array_ele_197
    lw      s10,0(s6)
              #                    free s10
              #                    free s6
              #                          new_var temp_181_cmp_197:i1 
              #                          temp_181_cmp_197 = icmp i32 Ne temp_180_array_ele_197, 34_0 
              #                    occupy s10 with temp_180_array_ele_197
              #                    occupy s11 with 34_0
    li      s11, 34
              #                    occupy a1 with temp_181_cmp_197
    xor     a1,s10,s11
    snez    a1, a1
              #                    free s10
              #                    free s11
              #                    free a1
              #                          br i1 temp_181_cmp_197, label branch_true_198, label branch_false_198 
              #                    occupy a1 with temp_181_cmp_197
              #                    free a1
              #                    occupy a1 with temp_181_cmp_197
    bnez    a1, .branch_true_198
              #                    free a1
    j       .branch_false_198
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_181_cmp_197, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_180_array_ele_197, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_174_ptr2globl_193, tracked: true } |     s4:Freed { symidx: temp_175_cmp_193, tracked: true } |     s5:Freed { symidx: temp_178_ptr2globl_197, tracked: true } |     s6:Freed { symidx: temp_179_array_ptr_197, tracked: true } |     s9:Freed { symidx: buf_60, tracked: true } | 
              #                          label branch_true_198: 
.branch_true_198:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_181_cmp_197, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_180_array_ele_197, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_174_ptr2globl_193, tracked: true } |     s4:Freed { symidx: temp_175_cmp_193, tracked: true } |     s5:Freed { symidx: temp_178_ptr2globl_197, tracked: true } |     s6:Freed { symidx: temp_179_array_ptr_197, tracked: true } |     s9:Freed { symidx: buf_60, tracked: true } | 
              #                          label branch_false_198: 
.branch_false_198:
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_181_cmp_197, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_180_array_ele_197, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_174_ptr2globl_193, tracked: true } |     s4:Freed { symidx: temp_175_cmp_193, tracked: true } |     s5:Freed { symidx: temp_178_ptr2globl_197, tracked: true } |     s6:Freed { symidx: temp_179_array_ptr_197, tracked: true } |     s9:Freed { symidx: buf_60, tracked: true } | 
              #                          label L24_0: 
.L24_0:
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_181_cmp_197, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_180_array_ele_197, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_174_ptr2globl_193, tracked: true } |     s4:Freed { symidx: temp_175_cmp_193, tracked: true } |     s5:Freed { symidx: temp_178_ptr2globl_197, tracked: true } |     s6:Freed { symidx: temp_179_array_ptr_197, tracked: true } |     s9:Freed { symidx: buf_60, tracked: true } | 
              #                          label L25_0: 
.L25_0:
              #                          new_var temp_176_ptr2globl_179:i32 
              #                          temp_176_ptr2globl_179 = load *pos_0:ptr->i32 
              #                    occupy s7 with *pos_0
              #                       load label pos as ptr to reg
    la      s7, pos
              #                    occupy reg s7 with *pos_0
              #                    occupy s8 with temp_176_ptr2globl_179
    lw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                          new_var temp_177_arithop_179:i32 
              #                          temp_177_arithop_179 = Add i32 temp_176_ptr2globl_179, 1_0 
              #                    occupy s8 with temp_176_ptr2globl_179
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy s7 with temp_177_arithop_179
    add     s7,s8,s11
              #                    free s8
              #                    free s11
              #                    free s7
              #                          store temp_177_arithop_179:i32 *pos_0:ptr->i32 
              #                    occupy s11 with *pos_0
              #                       load label pos as ptr to reg
    la      s11, pos
              #                    occupy reg s11 with *pos_0
              #                    occupy s7 with temp_177_arithop_179
    sw      s7,0(s11)
              #                    free s7
              #                    free s11
              #                          jump label: L78_0 
    j       .L78_0
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_165_cmp_184, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_162_ptr2globl_184, tracked: true } |     s4:Freed { symidx: temp_163_array_ptr_184, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_164_array_ele_184, tracked: true } | 
              #                          label branch_false_185: 
.branch_false_185:
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_165_cmp_184, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_162_ptr2globl_184, tracked: true } |     s4:Freed { symidx: temp_163_array_ptr_184, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_164_array_ele_184, tracked: true } | 
              #                          label L26_0: 
.L26_0:
              #                          new_var temp_166_ptr2globl_187:i32 
              #                          temp_166_ptr2globl_187 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s5 with temp_166_ptr2globl_187
    lw      s5,0(a1)
              #                    free s5
              #                    free a1
              #                          new_var temp_167_array_ptr_187:ptr->i32 
              #                          temp_167_array_ptr_187 = getelementptr buf_60:ptr->i32 [Some(temp_166_ptr2globl_187)] 
              #                    occupy s6 with temp_167_array_ptr_187
    li      s6, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s5 with temp_166_ptr2globl_187
              #                    occupy s11 with _anonymous_of_buf_60_0
    mul     s11,s9,s5
              #                    free s9
              #                    free s5
    add     s6,s6,s11
              #                    free s11
    slli s6,s6,2
              #                    occupy s7 with buf_60
    add     s6,s6,s7
              #                    free s7
              #                    free s6
              #                          new_var temp_168_array_ele_187:i32 
              #                          temp_168_array_ele_187 = load temp_167_array_ptr_187:ptr->i32 
              #                    occupy s6 with temp_167_array_ptr_187
              #                    occupy a1 with temp_168_array_ele_187
    lw      a1,0(s6)
              #                    free a1
              #                    free s6
              #                          new_var temp_169_cmp_187:i1 
              #                          temp_169_cmp_187 = icmp i32 Eq temp_168_array_ele_187, 92_0 
              #                    occupy a1 with temp_168_array_ele_187
              #                    occupy s9 with 92_0
    li      s9, 92
              #                    occupy s11 with temp_169_cmp_187
    xor     s11,a1,s9
    seqz    s11, s11
              #                    free a1
              #                    free s9
              #                    free s11
              #                          br i1 temp_169_cmp_187, label branch_true_188, label branch_false_188 
              #                    occupy s11 with temp_169_cmp_187
              #                    free s11
              #                    occupy s11 with temp_169_cmp_187
    bnez    s11, .branch_true_188
              #                    free s11
    j       .branch_false_188
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_168_array_ele_187, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_165_cmp_184, tracked: true } |     s11:Freed { symidx: temp_169_cmp_187, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_162_ptr2globl_184, tracked: true } |     s4:Freed { symidx: temp_163_array_ptr_184, tracked: true } |     s5:Freed { symidx: temp_166_ptr2globl_187, tracked: true } |     s6:Freed { symidx: temp_167_array_ptr_187, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_164_array_ele_184, tracked: true } | 
              #                          label branch_true_188: 
.branch_true_188:
              #                          new_var temp_170_ptr2globl_189:i32 
              #                          temp_170_ptr2globl_189 = load *pos_0:ptr->i32 
              #                    occupy s9 with *pos_0
              #                       load label pos as ptr to reg
    la      s9, pos
              #                    occupy reg s9 with *pos_0
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with temp_170_ptr2globl_189
    lw      a0,0(s9)
              #                    free a0
              #                    free s9
              #                          new_var temp_171_arithop_189:i32 
              #                          temp_171_arithop_189 = Add i32 temp_170_ptr2globl_189, 2_0 
              #                    occupy a0 with temp_170_ptr2globl_189
              #                    occupy s9 with 2_0
    li      s9, 2
              #                    store to temp_168_array_ele_187 in mem offset legal
    sw      a1,1148(sp)
              #                    release a1 with temp_168_array_ele_187
              #                    occupy a1 with temp_171_arithop_189
    add     a1,a0,s9
              #                    free a0
              #                    free s9
              #                    free a1
              #                          store temp_171_arithop_189:i32 *pos_0:ptr->i32 
              #                    occupy s9 with *pos_0
              #                       load label pos as ptr to reg
    la      s9, pos
              #                    occupy reg s9 with *pos_0
              #                    occupy a1 with temp_171_arithop_189
    sw      a1,0(s9)
              #                    free a1
              #                    free s9
              #                          jump label: L27_0 
    j       .L27_0
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_168_array_ele_187, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_165_cmp_184, tracked: true } |     s11:Freed { symidx: temp_169_cmp_187, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_162_ptr2globl_184, tracked: true } |     s4:Freed { symidx: temp_163_array_ptr_184, tracked: true } |     s5:Freed { symidx: temp_166_ptr2globl_187, tracked: true } |     s6:Freed { symidx: temp_167_array_ptr_187, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_164_array_ele_184, tracked: true } | 
              #                          label branch_false_188: 
.branch_false_188:
              #                          new_var temp_172_ptr2globl_191:i32 
              #                          temp_172_ptr2globl_191 = load *pos_0:ptr->i32 
              #                    occupy s9 with *pos_0
              #                       load label pos as ptr to reg
    la      s9, pos
              #                    occupy reg s9 with *pos_0
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with temp_172_ptr2globl_191
    lw      a0,0(s9)
              #                    free a0
              #                    free s9
              #                          new_var temp_173_arithop_191:i32 
              #                          temp_173_arithop_191 = Add i32 temp_172_ptr2globl_191, 1_0 
              #                    occupy a0 with temp_172_ptr2globl_191
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    store to temp_168_array_ele_187 in mem offset legal
    sw      a1,1148(sp)
              #                    release a1 with temp_168_array_ele_187
              #                    occupy a1 with temp_173_arithop_191
    add     a1,a0,s9
              #                    free a0
              #                    free s9
              #                    free a1
              #                          store temp_173_arithop_191:i32 *pos_0:ptr->i32 
              #                    occupy s9 with *pos_0
              #                       load label pos as ptr to reg
    la      s9, pos
              #                    occupy reg s9 with *pos_0
              #                    occupy a1 with temp_173_arithop_191
    sw      a1,0(s9)
              #                    free a1
              #                    free s9
              #                          jump label: L27_0 
              #                    store to temp_173_arithop_191 in mem offset legal
    sw      a1,1128(sp)
              #                    release a1 with temp_173_arithop_191
              #                    store to temp_172_ptr2globl_191 in mem offset legal
    sw      a0,1132(sp)
              #                    release a0 with temp_172_ptr2globl_191
              #                    occupy a1 with _anonymous_of_temp_171_arithop_189_0
              #                    load from temp_171_arithop_189 in mem


    lw      a1,1136(sp)
              #                    occupy a0 with _anonymous_of_temp_170_ptr2globl_189_0
              #                    load from temp_170_ptr2globl_189 in mem


    lw      a0,1140(sp)
    j       .L27_0
              #                    regtab     a0:Freed { symidx: temp_170_ptr2globl_189, tracked: true } |     a1:Freed { symidx: temp_171_arithop_189, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_165_cmp_184, tracked: true } |     s11:Freed { symidx: temp_169_cmp_187, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_162_ptr2globl_184, tracked: true } |     s4:Freed { symidx: temp_163_array_ptr_184, tracked: true } |     s5:Freed { symidx: temp_166_ptr2globl_187, tracked: true } |     s6:Freed { symidx: temp_167_array_ptr_187, tracked: true } |     s7:Freed { symidx: buf_60, tracked: true } |     s8:Freed { symidx: temp_164_array_ele_184, tracked: true } | 
              #                          label L27_0: 
.L27_0:
              #                          jump label: while.head_182 
              #                    store to buf_60 in mem offset legal
    sd      s7,1824(sp)
              #                    release s7 with buf_60
              #                    store to temp_161_cmp_181 in mem offset legal
    sb      s2,1191(sp)
              #                    release s2 with temp_161_cmp_181
              #                    store to temp_165_cmp_184 in mem offset legal
    sb      s10,1171(sp)
              #                    release s10 with temp_165_cmp_184
              #                    store to temp_171_arithop_189 in mem offset legal
    sw      a1,1136(sp)
              #                    release a1 with temp_171_arithop_189
              #                    store to temp_160_ptr2globl_181 in mem offset legal
    sw      a6,1192(sp)
              #                    release a6 with temp_160_ptr2globl_181
              #                    store to temp_170_ptr2globl_189 in mem offset legal
    sw      a0,1140(sp)
              #                    release a0 with temp_170_ptr2globl_189
              #                    store to temp_167_array_ptr_187 in mem offset legal
    sd      s6,1152(sp)
              #                    release s6 with temp_167_array_ptr_187
              #                    store to temp_164_array_ele_184 in mem offset legal
    sw      s8,1172(sp)
              #                    release s8 with temp_164_array_ele_184
              #                    store to temp_163_array_ptr_184 in mem offset legal
    sd      s4,1176(sp)
              #                    release s4 with temp_163_array_ptr_184
              #                    store to temp_162_ptr2globl_184 in mem offset legal
    sw      s3,1184(sp)
              #                    release s3 with temp_162_ptr2globl_184
              #                    store to temp_166_ptr2globl_187 in mem offset legal
    sw      s5,1164(sp)
              #                    release s5 with temp_166_ptr2globl_187
              #                    store to len_60 in mem offset legal
    sw      s1,1820(sp)
              #                    release s1 with len_60
              #                    store to temp_169_cmp_187 in mem offset legal
    sb      s11,1147(sp)
              #                    release s11 with temp_169_cmp_187
              #                    occupy a0 with _anonymous_of_type_60_0
              #                    load from type_60 in mem


    lw      a0,1836(sp)
    j       .while.head_182
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } | 
              #                          label branch_false_178: 
.branch_false_178:
              #                          new_var temp_182_cmp_202:i1 
              #                          temp_182_cmp_202 = icmp i32 Eq type_60, 3_0 
              #                    occupy a0 with type_60
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    occupy a5 with temp_182_cmp_202
    xor     a5,a0,a1
    seqz    a5, a5
              #                    free a0
              #                    free a1
              #                    free a5
              #                          br i1 temp_182_cmp_202, label branch_true_203, label branch_false_203 
              #                    occupy a5 with temp_182_cmp_202
              #                    free a5
              #                    occupy a5 with temp_182_cmp_202
    bnez    a5, .branch_true_203
              #                    free a5
    j       .branch_false_203
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } | 
              #                          label branch_true_203: 
.branch_true_203:
              #                          new_var temp_183_ptr2globl_204:i32 
              #                          temp_183_ptr2globl_204 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a6 with temp_183_ptr2globl_204
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          new_var temp_184_arithop_204:i32 
              #                          temp_184_arithop_204 = Add i32 temp_183_ptr2globl_204, 1_0 
              #                    occupy a6 with temp_183_ptr2globl_204
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_184_arithop_204
    add     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          store temp_184_arithop_204:i32 *pos_0:ptr->i32 
              #                    occupy s2 with *pos_0
              #                       load label pos as ptr to reg
    la      s2, pos
              #                    occupy reg s2 with *pos_0
              #                    occupy s1 with temp_184_arithop_204
    sw      s1,0(s2)
              #                    free s1
              #                    free s2
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_184_arithop_204 in mem offset legal
    sw      s1,1080(sp)
              #                    release s1 with temp_184_arithop_204
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    store to temp_31_cmp_68 in mem offset legal
    sb      a2,1814(sp)
              #                    release a2 with temp_31_cmp_68
              #                    store to temp_78_cmp_109 in mem offset legal
    sb      a3,1587(sp)
              #                    release a3 with temp_78_cmp_109
              #                    store to temp_157_cmp_177 in mem offset legal
    sb      a4,1207(sp)
              #                    release a4 with temp_157_cmp_177
              #                    store to temp_182_cmp_202 in mem offset legal
    sb      a5,1090(sp)
              #                    release a5 with temp_182_cmp_202
              #                    store to temp_183_ptr2globl_204 in mem offset legal
    sw      a6,1084(sp)
              #                    release a6 with temp_183_ptr2globl_204
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: L28_0 
    j       .L28_0
              #                    regtab 
              #                          label L28_0: 
.L28_0:
              #                          new_var temp_185_ptr2globl_207:i32 
              #                          temp_185_ptr2globl_207 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_185_ptr2globl_207
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_186_cmp_207:i1 
              #                          temp_186_cmp_207 = icmp i32 Slt temp_185_ptr2globl_207, len_60 
              #                    occupy a1 with temp_185_ptr2globl_207
              #                    occupy a2 with len_60
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    occupy a3 with temp_186_cmp_207
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_186_cmp_207, label branch_true_208, label branch_false_208 
              #                    occupy a3 with temp_186_cmp_207
              #                    free a3
              #                    occupy a3 with temp_186_cmp_207
    bnez    a3, .branch_true_208
              #                    free a3
    j       .branch_false_208
              #                    regtab     a1:Freed { symidx: temp_185_ptr2globl_207, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_186_cmp_207, tracked: true } | 
              #                          label branch_true_208: 
.branch_true_208:
              #                          new_var temp_187_ptr2globl_210:i32 
              #                          temp_187_ptr2globl_210 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a4 with temp_187_ptr2globl_210
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                          new_var temp_188_array_ptr_210:ptr->i32 
              #                          temp_188_array_ptr_210 = getelementptr buf_60:ptr->i32 [Some(temp_187_ptr2globl_210)] 
              #                    occupy a5 with temp_188_array_ptr_210
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a4 with temp_187_ptr2globl_210
              #                    occupy a7 with _anonymous_of_buf_60_0
    mul     a7,a6,a4
              #                    free a6
              #                    free a4
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with buf_60
              #                    load from buf_60 in mem
    ld      s1,1824(sp)
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_189_array_ele_210:i32 
              #                          temp_189_array_ele_210 = load temp_188_array_ptr_210:ptr->i32 
              #                    occupy a5 with temp_188_array_ptr_210
              #                    occupy s2 with temp_189_array_ele_210
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_190_cmp_210:i1 
              #                          temp_190_cmp_210 = icmp i32 Eq temp_189_array_ele_210, 93_0 
              #                    occupy s2 with temp_189_array_ele_210
              #                    occupy s3 with 93_0
    li      s3, 93
              #                    occupy s4 with temp_190_cmp_210
    xor     s4,s2,s3
    seqz    s4, s4
              #                    free s2
              #                    free s3
              #                    free s4
              #                          br i1 temp_190_cmp_210, label branch_true_211, label branch_false_211 
              #                    occupy s4 with temp_190_cmp_210
              #                    free s4
              #                    occupy s4 with temp_190_cmp_210
    bnez    s4, .branch_true_211
              #                    free s4
    j       .branch_false_211
              #                    regtab     a1:Freed { symidx: temp_185_ptr2globl_207, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_186_cmp_207, tracked: true } |     a4:Freed { symidx: temp_187_ptr2globl_210, tracked: true } |     a5:Freed { symidx: temp_188_array_ptr_210, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_189_array_ele_210, tracked: true } |     s4:Freed { symidx: temp_190_cmp_210, tracked: true } | 
              #                          label branch_true_211: 
.branch_true_211:
              #                          new_var temp_191_ptr2globl_212:i32 
              #                          temp_191_ptr2globl_212 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a6 with temp_191_ptr2globl_212
    lw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                          new_var temp_192_arithop_212:i32 
              #                          temp_192_arithop_212 = Add i32 temp_191_ptr2globl_212, 1_0 
              #                    occupy a6 with temp_191_ptr2globl_212
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_192_arithop_212
    add     s3,a6,a7
              #                    free a6
              #                    free a7
              #                    free s3
              #                          store temp_192_arithop_212:i32 *pos_0:ptr->i32 
              #                    occupy s5 with *pos_0
              #                       load label pos as ptr to reg
    la      s5, pos
              #                    occupy reg s5 with *pos_0
              #                    occupy s3 with temp_192_arithop_212
    sw      s3,0(s5)
              #                    free s3
              #                    free s5
              #                          ret 1_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_185_ptr2globl_207, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_186_cmp_207, tracked: true } |     a4:Freed { symidx: temp_187_ptr2globl_210, tracked: true } |     a5:Freed { symidx: temp_188_array_ptr_210, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_189_array_ele_210, tracked: true } |     s4:Freed { symidx: temp_190_cmp_210, tracked: true } | 
              #                          label branch_false_211: 
.branch_false_211:
              #                    regtab     a1:Freed { symidx: temp_185_ptr2globl_207, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_186_cmp_207, tracked: true } | 
              #                          label branch_false_208: 
.branch_false_208:
              #                    regtab     a1:Freed { symidx: temp_185_ptr2globl_207, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_186_cmp_207, tracked: true } | 
              #                          label L29_0: 
.L29_0:
              #                          new_var temp_193_ret_of_detect_item_215:i32 
              #                          temp_193_ret_of_detect_item_215 =  Call i32 detect_item_0(0_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_185_ptr2globl_207 in mem offset legal
    sw      a1,1076(sp)
              #                    release a1 with temp_185_ptr2globl_207
              #                    store to len_60 in mem offset legal
    sw      a2,1820(sp)
              #                    release a2 with len_60
              #                    store to temp_186_cmp_207 in mem offset legal
    sb      a3,1075(sp)
              #                    release a3 with temp_186_cmp_207
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_193_ret_of_detect_item_215 in mem offset legal
    sw      a0,1036(sp)
              #                          new_var temp_194_cmp_215:i1 
              #                          temp_194_cmp_215 = icmp i32 Eq temp_193_ret_of_detect_item_215, 0_0 
              #                    occupy a0 with temp_193_ret_of_detect_item_215
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_194_cmp_215
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_194_cmp_215, label branch_true_216, label branch_false_216 
              #                    occupy a2 with temp_194_cmp_215
              #                    free a2
              #                    occupy a2 with temp_194_cmp_215
    bnez    a2, .branch_true_216
              #                    free a2
    j       .branch_false_216
              #                    regtab     a0:Freed { symidx: temp_193_ret_of_detect_item_215, tracked: true } |     a2:Freed { symidx: temp_194_cmp_215, tracked: true } | 
              #                          label branch_true_216: 
.branch_true_216:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_193_ret_of_detect_item_215 in mem offset legal
    sw      a0,1036(sp)
              #                    release a0 with temp_193_ret_of_detect_item_215
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_193_ret_of_detect_item_215, tracked: true } |     a2:Freed { symidx: temp_194_cmp_215, tracked: true } | 
              #                          label branch_false_216: 
.branch_false_216:
              #                    regtab     a0:Freed { symidx: temp_193_ret_of_detect_item_215, tracked: true } |     a2:Freed { symidx: temp_194_cmp_215, tracked: true } | 
              #                          label L30_0: 
.L30_0:
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_193_ret_of_detect_item_215 in mem offset legal
    sw      a0,1036(sp)
              #                    release a0 with temp_193_ret_of_detect_item_215
              #                    store to temp_194_cmp_215 in mem offset legal
    sb      a2,1035(sp)
              #                    release a2 with temp_194_cmp_215
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: while.head_221 
    j       .while.head_221
              #                    regtab 
              #                          label while.head_221: 
.while.head_221:
              #                          new_var temp_195_ptr2globl_220:i32 
              #                          temp_195_ptr2globl_220 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_195_ptr2globl_220
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_196_array_ptr_220:ptr->i32 
              #                          temp_196_array_ptr_220 = getelementptr buf_60:ptr->i32 [Some(temp_195_ptr2globl_220)] 
              #                    occupy a2 with temp_196_array_ptr_220
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a1 with temp_195_ptr2globl_220
              #                    occupy a4 with _anonymous_of_buf_60_0
    mul     a4,a3,a1
              #                    free a3
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with buf_60
              #                    load from buf_60 in mem
    ld      a5,1824(sp)
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                          new_var temp_197_array_ele_220:i32 
              #                          temp_197_array_ele_220 = load temp_196_array_ptr_220:ptr->i32 
              #                    occupy a2 with temp_196_array_ptr_220
              #                    occupy a6 with temp_197_array_ele_220
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          new_var temp_198_cmp_220:i1 
              #                          temp_198_cmp_220 = icmp i32 Eq temp_197_array_ele_220, 44_0 
              #                    occupy a6 with temp_197_array_ele_220
              #                    occupy a7 with 44_0
    li      a7, 44
              #                    occupy s1 with temp_198_cmp_220
    xor     s1,a6,a7
    seqz    s1, s1
              #                    free a6
              #                    free a7
              #                    free s1
              #                          br i1 temp_198_cmp_220, label while.body_221, label while.exit_221 
              #                    occupy s1 with temp_198_cmp_220
              #                    free s1
              #                    occupy s1 with temp_198_cmp_220
    bnez    s1, .while.body_221
              #                    free s1
    j       .while.exit_221
              #                    regtab     a1:Freed { symidx: temp_195_ptr2globl_220, tracked: true } |     a2:Freed { symidx: temp_196_array_ptr_220, tracked: true } |     a5:Freed { symidx: buf_60, tracked: true } |     a6:Freed { symidx: temp_197_array_ele_220, tracked: true } |     s1:Freed { symidx: temp_198_cmp_220, tracked: true } | 
              #                          label while.body_221: 
.while.body_221:
              #                          new_var temp_199_ptr2globl_222:i32 
              #                          temp_199_ptr2globl_222 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a3 with temp_199_ptr2globl_222
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                          new_var temp_200_arithop_222:i32 
              #                          temp_200_arithop_222 = Add i32 temp_199_ptr2globl_222, 1_0 
              #                    occupy a3 with temp_199_ptr2globl_222
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a7 with temp_200_arithop_222
    add     a7,a3,a4
              #                    free a3
              #                    free a4
              #                    free a7
              #                          store temp_200_arithop_222:i32 *pos_0:ptr->i32 
              #                    occupy s2 with *pos_0
              #                       load label pos as ptr to reg
    la      s2, pos
              #                    occupy reg s2 with *pos_0
              #                    occupy a7 with temp_200_arithop_222
    sw      a7,0(s2)
              #                    free a7
              #                    free s2
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_198_cmp_220 in mem offset legal
    sb      s1,1011(sp)
              #                    release s1 with temp_198_cmp_220
              #                    store to temp_195_ptr2globl_220 in mem offset legal
    sw      a1,1028(sp)
              #                    release a1 with temp_195_ptr2globl_220
              #                    store to temp_196_array_ptr_220 in mem offset legal
    sd      a2,1016(sp)
              #                    release a2 with temp_196_array_ptr_220
              #                    store to temp_199_ptr2globl_222 in mem offset legal
    sw      a3,1004(sp)
              #                    release a3 with temp_199_ptr2globl_222
              #                    store to buf_60 in mem offset legal
    sd      a5,1824(sp)
              #                    release a5 with buf_60
              #                    store to temp_197_array_ele_220 in mem offset legal
    sw      a6,1012(sp)
              #                    release a6 with temp_197_array_ele_220
              #                    store to temp_200_arithop_222 in mem offset legal
    sw      a7,1000(sp)
              #                    release a7 with temp_200_arithop_222
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: L31_0 
    j       .L31_0
              #                    regtab 
              #                          label L31_0: 
.L31_0:
              #                          new_var temp_201_ret_of_detect_item_225:i32 
              #                          temp_201_ret_of_detect_item_225 =  Call i32 detect_item_0(0_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_201_ret_of_detect_item_225 in mem offset legal
    sw      a0,996(sp)
              #                          new_var temp_202_cmp_225:i1 
              #                          temp_202_cmp_225 = icmp i32 Eq temp_201_ret_of_detect_item_225, 0_0 
              #                    occupy a0 with temp_201_ret_of_detect_item_225
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_202_cmp_225
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_202_cmp_225, label branch_true_226, label branch_false_226 
              #                    occupy a2 with temp_202_cmp_225
              #                    free a2
              #                    occupy a2 with temp_202_cmp_225
    bnez    a2, .branch_true_226
              #                    free a2
    j       .branch_false_226
              #                    regtab     a0:Freed { symidx: temp_201_ret_of_detect_item_225, tracked: true } |     a2:Freed { symidx: temp_202_cmp_225, tracked: true } | 
              #                          label branch_true_226: 
.branch_true_226:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_201_ret_of_detect_item_225 in mem offset legal
    sw      a0,996(sp)
              #                    release a0 with temp_201_ret_of_detect_item_225
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_201_ret_of_detect_item_225, tracked: true } |     a2:Freed { symidx: temp_202_cmp_225, tracked: true } | 
              #                          label branch_false_226: 
.branch_false_226:
              #                    regtab     a0:Freed { symidx: temp_201_ret_of_detect_item_225, tracked: true } |     a2:Freed { symidx: temp_202_cmp_225, tracked: true } | 
              #                          label L32_0: 
.L32_0:
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_201_ret_of_detect_item_225 in mem offset legal
    sw      a0,996(sp)
              #                    release a0 with temp_201_ret_of_detect_item_225
              #                    store to temp_202_cmp_225 in mem offset legal
    sb      a2,995(sp)
              #                    release a2 with temp_202_cmp_225
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: while.head_221 
    j       .while.head_221
              #                    regtab     a1:Freed { symidx: temp_195_ptr2globl_220, tracked: true } |     a2:Freed { symidx: temp_196_array_ptr_220, tracked: true } |     a5:Freed { symidx: buf_60, tracked: true } |     a6:Freed { symidx: temp_197_array_ele_220, tracked: true } |     s1:Freed { symidx: temp_198_cmp_220, tracked: true } | 
              #                          label while.exit_221: 
.while.exit_221:
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_198_cmp_220 in mem offset legal
    sb      s1,1011(sp)
              #                    release s1 with temp_198_cmp_220
              #                    store to temp_195_ptr2globl_220 in mem offset legal
    sw      a1,1028(sp)
              #                    release a1 with temp_195_ptr2globl_220
              #                    store to temp_196_array_ptr_220 in mem offset legal
    sd      a2,1016(sp)
              #                    release a2 with temp_196_array_ptr_220
              #                    store to buf_60 in mem offset legal
    sd      a5,1824(sp)
              #                    release a5 with buf_60
              #                    store to temp_197_array_ele_220 in mem offset legal
    sw      a6,1012(sp)
              #                    release a6 with temp_197_array_ele_220
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: L33_0 
    j       .L33_0
              #                    regtab 
              #                          label L33_0: 
.L33_0:
              #                          new_var temp_203_ptr2globl_231:i32 
              #                          temp_203_ptr2globl_231 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_203_ptr2globl_231
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_204_cmp_231:i1 
              #                          temp_204_cmp_231 = icmp i32 Sge temp_203_ptr2globl_231, len_60 
              #                    occupy a1 with temp_203_ptr2globl_231
              #                    occupy a2 with len_60
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    occupy a3 with temp_204_cmp_231
    slt     a3,a1,a2
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_204_cmp_231, label branch_true_232, label branch_false_232 
              #                    occupy a3 with temp_204_cmp_231
              #                    free a3
              #                    occupy a3 with temp_204_cmp_231
    bnez    a3, .branch_true_232
              #                    free a3
    j       .branch_false_232
              #                    regtab     a1:Freed { symidx: temp_203_ptr2globl_231, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_204_cmp_231, tracked: true } | 
              #                          label branch_true_232: 
.branch_true_232:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_203_ptr2globl_231, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_204_cmp_231, tracked: true } | 
              #                          label branch_false_232: 
.branch_false_232:
              #                    regtab     a1:Freed { symidx: temp_203_ptr2globl_231, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_204_cmp_231, tracked: true } | 
              #                          label L34_0: 
.L34_0:
              #                          new_var temp_205_ptr2globl_235:i32 
              #                          temp_205_ptr2globl_235 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a4 with temp_205_ptr2globl_235
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                          new_var temp_206_array_ptr_235:ptr->i32 
              #                          temp_206_array_ptr_235 = getelementptr buf_60:ptr->i32 [Some(temp_205_ptr2globl_235)] 
              #                    occupy a5 with temp_206_array_ptr_235
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a4 with temp_205_ptr2globl_235
              #                    occupy a7 with _anonymous_of_buf_60_0
    mul     a7,a6,a4
              #                    free a6
              #                    free a4
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with buf_60
              #                    load from buf_60 in mem
    ld      s1,1824(sp)
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_207_array_ele_235:i32 
              #                          temp_207_array_ele_235 = load temp_206_array_ptr_235:ptr->i32 
              #                    occupy a5 with temp_206_array_ptr_235
              #                    occupy s2 with temp_207_array_ele_235
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_208_cmp_235:i1 
              #                          temp_208_cmp_235 = icmp i32 Ne temp_207_array_ele_235, 93_0 
              #                    occupy s2 with temp_207_array_ele_235
              #                    occupy s3 with 93_0
    li      s3, 93
              #                    occupy s4 with temp_208_cmp_235
    xor     s4,s2,s3
    snez    s4, s4
              #                    free s2
              #                    free s3
              #                    free s4
              #                          br i1 temp_208_cmp_235, label branch_true_236, label branch_false_236 
              #                    occupy s4 with temp_208_cmp_235
              #                    free s4
              #                    occupy s4 with temp_208_cmp_235
    bnez    s4, .branch_true_236
              #                    free s4
    j       .branch_false_236
              #                    regtab     a1:Freed { symidx: temp_203_ptr2globl_231, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_204_cmp_231, tracked: true } |     a4:Freed { symidx: temp_205_ptr2globl_235, tracked: true } |     a5:Freed { symidx: temp_206_array_ptr_235, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_207_array_ele_235, tracked: true } |     s4:Freed { symidx: temp_208_cmp_235, tracked: true } | 
              #                          label branch_true_236: 
.branch_true_236:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_203_ptr2globl_231, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_204_cmp_231, tracked: true } |     a4:Freed { symidx: temp_205_ptr2globl_235, tracked: true } |     a5:Freed { symidx: temp_206_array_ptr_235, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_207_array_ele_235, tracked: true } |     s4:Freed { symidx: temp_208_cmp_235, tracked: true } | 
              #                          label branch_false_236: 
.branch_false_236:
              #                    regtab     a1:Freed { symidx: temp_203_ptr2globl_231, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_204_cmp_231, tracked: true } |     a4:Freed { symidx: temp_205_ptr2globl_235, tracked: true } |     a5:Freed { symidx: temp_206_array_ptr_235, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_207_array_ele_235, tracked: true } |     s4:Freed { symidx: temp_208_cmp_235, tracked: true } | 
              #                          label L35_0: 
.L35_0:
              #                          new_var temp_209_ptr2globl_204:i32 
              #                          temp_209_ptr2globl_204 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a6 with temp_209_ptr2globl_204
    lw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                          new_var temp_210_arithop_204:i32 
              #                          temp_210_arithop_204 = Add i32 temp_209_ptr2globl_204, 1_0 
              #                    occupy a6 with temp_209_ptr2globl_204
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_210_arithop_204
    add     s3,a6,a7
              #                    free a6
              #                    free a7
              #                    free s3
              #                          store temp_210_arithop_204:i32 *pos_0:ptr->i32 
              #                    occupy s5 with *pos_0
              #                       load label pos as ptr to reg
    la      s5, pos
              #                    occupy reg s5 with *pos_0
              #                    occupy s3 with temp_210_arithop_204
    sw      s3,0(s5)
              #                    free s3
              #                    free s5
              #                          jump label: L77_0 
    j       .L77_0
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } | 
              #                          label branch_false_203: 
.branch_false_203:
              #                          new_var temp_211_cmp_240:i1 
              #                          temp_211_cmp_240 = icmp i32 Eq type_60, 4_0 
              #                    occupy a0 with type_60
              #                    occupy a1 with 4_0
    li      a1, 4
              #                    occupy a6 with temp_211_cmp_240
    xor     a6,a0,a1
    seqz    a6, a6
              #                    free a0
              #                    free a1
              #                    free a6
              #                          br i1 temp_211_cmp_240, label branch_true_241, label branch_false_241 
              #                    occupy a6 with temp_211_cmp_240
              #                    free a6
              #                    occupy a6 with temp_211_cmp_240
    bnez    a6, .branch_true_241
              #                    free a6
    j       .branch_false_241
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } | 
              #                          label branch_true_241: 
.branch_true_241:
              #                          new_var temp_212_ptr2globl_242:i32 
              #                          temp_212_ptr2globl_242 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a7 with temp_212_ptr2globl_242
    lw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                          new_var temp_213_arithop_242:i32 
              #                          temp_213_arithop_242 = Add i32 temp_212_ptr2globl_242, 1_0 
              #                    occupy a7 with temp_212_ptr2globl_242
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_213_arithop_242
    add     s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                          store temp_213_arithop_242:i32 *pos_0:ptr->i32 
              #                    occupy s3 with *pos_0
              #                       load label pos as ptr to reg
    la      s3, pos
              #                    occupy reg s3 with *pos_0
              #                    occupy s2 with temp_213_arithop_242
    sw      s2,0(s3)
              #                    free s2
              #                    free s3
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_213_arithop_242 in mem offset legal
    sw      s2,940(sp)
              #                    release s2 with temp_213_arithop_242
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    store to temp_31_cmp_68 in mem offset legal
    sb      a2,1814(sp)
              #                    release a2 with temp_31_cmp_68
              #                    store to temp_78_cmp_109 in mem offset legal
    sb      a3,1587(sp)
              #                    release a3 with temp_78_cmp_109
              #                    store to temp_157_cmp_177 in mem offset legal
    sb      a4,1207(sp)
              #                    release a4 with temp_157_cmp_177
              #                    store to temp_182_cmp_202 in mem offset legal
    sb      a5,1090(sp)
              #                    release a5 with temp_182_cmp_202
              #                    store to temp_211_cmp_240 in mem offset legal
    sb      a6,951(sp)
              #                    release a6 with temp_211_cmp_240
              #                    store to temp_212_ptr2globl_242 in mem offset legal
    sw      a7,944(sp)
              #                    release a7 with temp_212_ptr2globl_242
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: L36_0 
    j       .L36_0
              #                    regtab 
              #                          label L36_0: 
.L36_0:
              #                          new_var temp_214_ptr2globl_245:i32 
              #                          temp_214_ptr2globl_245 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_214_ptr2globl_245
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_215_cmp_245:i1 
              #                          temp_215_cmp_245 = icmp i32 Slt temp_214_ptr2globl_245, len_60 
              #                    occupy a1 with temp_214_ptr2globl_245
              #                    occupy a2 with len_60
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    occupy a3 with temp_215_cmp_245
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_215_cmp_245, label branch_true_246, label branch_false_246 
              #                    occupy a3 with temp_215_cmp_245
              #                    free a3
              #                    occupy a3 with temp_215_cmp_245
    bnez    a3, .branch_true_246
              #                    free a3
    j       .branch_false_246
              #                    regtab     a1:Freed { symidx: temp_214_ptr2globl_245, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_215_cmp_245, tracked: true } | 
              #                          label branch_true_246: 
.branch_true_246:
              #                          new_var temp_216_ptr2globl_248:i32 
              #                          temp_216_ptr2globl_248 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a4 with temp_216_ptr2globl_248
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                          new_var temp_217_array_ptr_248:ptr->i32 
              #                          temp_217_array_ptr_248 = getelementptr buf_60:ptr->i32 [Some(temp_216_ptr2globl_248)] 
              #                    occupy a5 with temp_217_array_ptr_248
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a4 with temp_216_ptr2globl_248
              #                    occupy a7 with _anonymous_of_buf_60_0
    mul     a7,a6,a4
              #                    free a6
              #                    free a4
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with buf_60
              #                    load from buf_60 in mem
    ld      s1,1824(sp)
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_218_array_ele_248:i32 
              #                          temp_218_array_ele_248 = load temp_217_array_ptr_248:ptr->i32 
              #                    occupy a5 with temp_217_array_ptr_248
              #                    occupy s2 with temp_218_array_ele_248
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_219_cmp_248:i1 
              #                          temp_219_cmp_248 = icmp i32 Eq temp_218_array_ele_248, 125_0 
              #                    occupy s2 with temp_218_array_ele_248
              #                    occupy s3 with 125_0
    li      s3, 125
              #                    occupy s4 with temp_219_cmp_248
    xor     s4,s2,s3
    seqz    s4, s4
              #                    free s2
              #                    free s3
              #                    free s4
              #                          br i1 temp_219_cmp_248, label branch_true_249, label branch_false_249 
              #                    occupy s4 with temp_219_cmp_248
              #                    free s4
              #                    occupy s4 with temp_219_cmp_248
    bnez    s4, .branch_true_249
              #                    free s4
    j       .branch_false_249
              #                    regtab     a1:Freed { symidx: temp_214_ptr2globl_245, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_215_cmp_245, tracked: true } |     a4:Freed { symidx: temp_216_ptr2globl_248, tracked: true } |     a5:Freed { symidx: temp_217_array_ptr_248, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_218_array_ele_248, tracked: true } |     s4:Freed { symidx: temp_219_cmp_248, tracked: true } | 
              #                          label branch_true_249: 
.branch_true_249:
              #                          new_var temp_220_ptr2globl_250:i32 
              #                          temp_220_ptr2globl_250 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a6 with temp_220_ptr2globl_250
    lw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                          new_var temp_221_arithop_250:i32 
              #                          temp_221_arithop_250 = Add i32 temp_220_ptr2globl_250, 1_0 
              #                    occupy a6 with temp_220_ptr2globl_250
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_221_arithop_250
    add     s3,a6,a7
              #                    free a6
              #                    free a7
              #                    free s3
              #                          store temp_221_arithop_250:i32 *pos_0:ptr->i32 
              #                    occupy s5 with *pos_0
              #                       load label pos as ptr to reg
    la      s5, pos
              #                    occupy reg s5 with *pos_0
              #                    occupy s3 with temp_221_arithop_250
    sw      s3,0(s5)
              #                    free s3
              #                    free s5
              #                          ret 1_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_214_ptr2globl_245, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_215_cmp_245, tracked: true } |     a4:Freed { symidx: temp_216_ptr2globl_248, tracked: true } |     a5:Freed { symidx: temp_217_array_ptr_248, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_218_array_ele_248, tracked: true } |     s4:Freed { symidx: temp_219_cmp_248, tracked: true } | 
              #                          label branch_false_249: 
.branch_false_249:
              #                    regtab     a1:Freed { symidx: temp_214_ptr2globl_245, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_215_cmp_245, tracked: true } | 
              #                          label branch_false_246: 
.branch_false_246:
              #                    regtab     a1:Freed { symidx: temp_214_ptr2globl_245, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_215_cmp_245, tracked: true } | 
              #                          label L37_0: 
.L37_0:
              #                          new_var temp_222_ret_of_detect_item_253:i32 
              #                          temp_222_ret_of_detect_item_253 =  Call i32 detect_item_0(2_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_214_ptr2globl_245 in mem offset legal
    sw      a1,936(sp)
              #                    release a1 with temp_214_ptr2globl_245
              #                    store to len_60 in mem offset legal
    sw      a2,1820(sp)
              #                    release a2 with len_60
              #                    store to temp_215_cmp_245 in mem offset legal
    sb      a3,935(sp)
              #                    release a3 with temp_215_cmp_245
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_222_ret_of_detect_item_253 in mem offset legal
    sw      a0,900(sp)
              #                          new_var temp_223_cmp_253:i1 
              #                          temp_223_cmp_253 = icmp i32 Eq temp_222_ret_of_detect_item_253, 0_0 
              #                    occupy a0 with temp_222_ret_of_detect_item_253
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_223_cmp_253
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_223_cmp_253, label branch_true_254, label branch_false_254 
              #                    occupy a2 with temp_223_cmp_253
              #                    free a2
              #                    occupy a2 with temp_223_cmp_253
    bnez    a2, .branch_true_254
              #                    free a2
    j       .branch_false_254
              #                    regtab     a0:Freed { symidx: temp_222_ret_of_detect_item_253, tracked: true } |     a2:Freed { symidx: temp_223_cmp_253, tracked: true } | 
              #                          label branch_true_254: 
.branch_true_254:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_222_ret_of_detect_item_253 in mem offset legal
    sw      a0,900(sp)
              #                    release a0 with temp_222_ret_of_detect_item_253
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_222_ret_of_detect_item_253, tracked: true } |     a2:Freed { symidx: temp_223_cmp_253, tracked: true } | 
              #                          label branch_false_254: 
.branch_false_254:
              #                    regtab     a0:Freed { symidx: temp_222_ret_of_detect_item_253, tracked: true } |     a2:Freed { symidx: temp_223_cmp_253, tracked: true } | 
              #                          label L38_0: 
.L38_0:
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_222_ret_of_detect_item_253 in mem offset legal
    sw      a0,900(sp)
              #                    release a0 with temp_222_ret_of_detect_item_253
              #                    store to temp_223_cmp_253 in mem offset legal
    sb      a2,899(sp)
              #                    release a2 with temp_223_cmp_253
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: L39_0 
    j       .L39_0
              #                    regtab 
              #                          label L39_0: 
.L39_0:
              #                          new_var temp_224_ptr2globl_258:i32 
              #                          temp_224_ptr2globl_258 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_224_ptr2globl_258
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_225_cmp_258:i1 
              #                          temp_225_cmp_258 = icmp i32 Sge temp_224_ptr2globl_258, len_60 
              #                    occupy a1 with temp_224_ptr2globl_258
              #                    occupy a2 with len_60
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    occupy a3 with temp_225_cmp_258
    slt     a3,a1,a2
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_225_cmp_258, label branch_true_259, label branch_false_259 
              #                    occupy a3 with temp_225_cmp_258
              #                    free a3
              #                    occupy a3 with temp_225_cmp_258
    bnez    a3, .branch_true_259
              #                    free a3
    j       .branch_false_259
              #                    regtab     a1:Freed { symidx: temp_224_ptr2globl_258, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_225_cmp_258, tracked: true } | 
              #                          label branch_true_259: 
.branch_true_259:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_224_ptr2globl_258, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_225_cmp_258, tracked: true } | 
              #                          label branch_false_259: 
.branch_false_259:
              #                    regtab     a1:Freed { symidx: temp_224_ptr2globl_258, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_225_cmp_258, tracked: true } | 
              #                          label L40_0: 
.L40_0:
              #                          new_var temp_226_ptr2globl_262:i32 
              #                          temp_226_ptr2globl_262 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a4 with temp_226_ptr2globl_262
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                          new_var temp_227_array_ptr_262:ptr->i32 
              #                          temp_227_array_ptr_262 = getelementptr buf_60:ptr->i32 [Some(temp_226_ptr2globl_262)] 
              #                    occupy a5 with temp_227_array_ptr_262
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a4 with temp_226_ptr2globl_262
              #                    occupy a7 with _anonymous_of_buf_60_0
    mul     a7,a6,a4
              #                    free a6
              #                    free a4
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with buf_60
              #                    load from buf_60 in mem
    ld      s1,1824(sp)
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_228_array_ele_262:i32 
              #                          temp_228_array_ele_262 = load temp_227_array_ptr_262:ptr->i32 
              #                    occupy a5 with temp_227_array_ptr_262
              #                    occupy s2 with temp_228_array_ele_262
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_229_cmp_262:i1 
              #                          temp_229_cmp_262 = icmp i32 Ne temp_228_array_ele_262, 58_0 
              #                    occupy s2 with temp_228_array_ele_262
              #                    occupy s3 with 58_0
    li      s3, 58
              #                    occupy s4 with temp_229_cmp_262
    xor     s4,s2,s3
    snez    s4, s4
              #                    free s2
              #                    free s3
              #                    free s4
              #                          br i1 temp_229_cmp_262, label branch_true_263, label branch_false_263 
              #                    occupy s4 with temp_229_cmp_262
              #                    free s4
              #                    occupy s4 with temp_229_cmp_262
    bnez    s4, .branch_true_263
              #                    free s4
    j       .branch_false_263
              #                    regtab     a1:Freed { symidx: temp_224_ptr2globl_258, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_225_cmp_258, tracked: true } |     a4:Freed { symidx: temp_226_ptr2globl_262, tracked: true } |     a5:Freed { symidx: temp_227_array_ptr_262, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_228_array_ele_262, tracked: true } |     s4:Freed { symidx: temp_229_cmp_262, tracked: true } | 
              #                          label branch_true_263: 
.branch_true_263:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_224_ptr2globl_258, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_225_cmp_258, tracked: true } |     a4:Freed { symidx: temp_226_ptr2globl_262, tracked: true } |     a5:Freed { symidx: temp_227_array_ptr_262, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_228_array_ele_262, tracked: true } |     s4:Freed { symidx: temp_229_cmp_262, tracked: true } | 
              #                          label branch_false_263: 
.branch_false_263:
              #                    regtab     a1:Freed { symidx: temp_224_ptr2globl_258, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_225_cmp_258, tracked: true } |     a4:Freed { symidx: temp_226_ptr2globl_262, tracked: true } |     a5:Freed { symidx: temp_227_array_ptr_262, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_228_array_ele_262, tracked: true } |     s4:Freed { symidx: temp_229_cmp_262, tracked: true } | 
              #                          label L41_0: 
.L41_0:
              #                          new_var temp_230_ptr2globl_242:i32 
              #                          temp_230_ptr2globl_242 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a6 with temp_230_ptr2globl_242
    lw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                          new_var temp_231_arithop_242:i32 
              #                          temp_231_arithop_242 = Add i32 temp_230_ptr2globl_242, 1_0 
              #                    occupy a6 with temp_230_ptr2globl_242
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_231_arithop_242
    add     s3,a6,a7
              #                    free a6
              #                    free a7
              #                    free s3
              #                          store temp_231_arithop_242:i32 *pos_0:ptr->i32 
              #                    occupy s5 with *pos_0
              #                       load label pos as ptr to reg
    la      s5, pos
              #                    occupy reg s5 with *pos_0
              #                    occupy s3 with temp_231_arithop_242
    sw      s3,0(s5)
              #                    free s3
              #                    free s5
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to buf_60 in mem offset legal
    sd      s1,1824(sp)
              #                    release s1 with buf_60
              #                    store to temp_228_array_ele_262 in mem offset legal
    sw      s2,868(sp)
              #                    release s2 with temp_228_array_ele_262
              #                    store to temp_231_arithop_242 in mem offset legal
    sw      s3,856(sp)
              #                    release s3 with temp_231_arithop_242
              #                    store to temp_229_cmp_262 in mem offset legal
    sb      s4,867(sp)
              #                    release s4 with temp_229_cmp_262
              #                    store to temp_224_ptr2globl_258 in mem offset legal
    sw      a1,892(sp)
              #                    release a1 with temp_224_ptr2globl_258
              #                    store to len_60 in mem offset legal
    sw      a2,1820(sp)
              #                    release a2 with len_60
              #                    store to temp_225_cmp_258 in mem offset legal
    sb      a3,891(sp)
              #                    release a3 with temp_225_cmp_258
              #                    store to temp_226_ptr2globl_262 in mem offset legal
    sw      a4,884(sp)
              #                    release a4 with temp_226_ptr2globl_262
              #                    store to temp_227_array_ptr_262 in mem offset legal
    sd      a5,872(sp)
              #                    release a5 with temp_227_array_ptr_262
              #                    store to temp_230_ptr2globl_242 in mem offset legal
    sw      a6,860(sp)
              #                    release a6 with temp_230_ptr2globl_242
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: L42_0 
    j       .L42_0
              #                    regtab 
              #                          label L42_0: 
.L42_0:
              #                          new_var temp_232_ret_of_detect_item_268:i32 
              #                          temp_232_ret_of_detect_item_268 =  Call i32 detect_item_0(0_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_232_ret_of_detect_item_268 in mem offset legal
    sw      a0,852(sp)
              #                          new_var temp_233_cmp_268:i1 
              #                          temp_233_cmp_268 = icmp i32 Eq temp_232_ret_of_detect_item_268, 0_0 
              #                    occupy a0 with temp_232_ret_of_detect_item_268
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_233_cmp_268
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_233_cmp_268, label branch_true_269, label branch_false_269 
              #                    occupy a2 with temp_233_cmp_268
              #                    free a2
              #                    occupy a2 with temp_233_cmp_268
    bnez    a2, .branch_true_269
              #                    free a2
    j       .branch_false_269
              #                    regtab     a0:Freed { symidx: temp_232_ret_of_detect_item_268, tracked: true } |     a2:Freed { symidx: temp_233_cmp_268, tracked: true } | 
              #                          label branch_true_269: 
.branch_true_269:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_232_ret_of_detect_item_268 in mem offset legal
    sw      a0,852(sp)
              #                    release a0 with temp_232_ret_of_detect_item_268
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_232_ret_of_detect_item_268, tracked: true } |     a2:Freed { symidx: temp_233_cmp_268, tracked: true } | 
              #                          label branch_false_269: 
.branch_false_269:
              #                    regtab     a0:Freed { symidx: temp_232_ret_of_detect_item_268, tracked: true } |     a2:Freed { symidx: temp_233_cmp_268, tracked: true } | 
              #                          label L43_0: 
.L43_0:
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_232_ret_of_detect_item_268 in mem offset legal
    sw      a0,852(sp)
              #                    release a0 with temp_232_ret_of_detect_item_268
              #                    store to temp_233_cmp_268 in mem offset legal
    sb      a2,851(sp)
              #                    release a2 with temp_233_cmp_268
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: while.head_274 
    j       .while.head_274
              #                    regtab 
              #                          label while.head_274: 
.while.head_274:
              #                          new_var temp_234_ptr2globl_273:i32 
              #                          temp_234_ptr2globl_273 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_234_ptr2globl_273
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_235_array_ptr_273:ptr->i32 
              #                          temp_235_array_ptr_273 = getelementptr buf_60:ptr->i32 [Some(temp_234_ptr2globl_273)] 
              #                    occupy a2 with temp_235_array_ptr_273
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a1 with temp_234_ptr2globl_273
              #                    occupy a4 with _anonymous_of_buf_60_0
    mul     a4,a3,a1
              #                    free a3
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with buf_60
              #                    load from buf_60 in mem
    ld      a5,1824(sp)
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                          new_var temp_236_array_ele_273:i32 
              #                          temp_236_array_ele_273 = load temp_235_array_ptr_273:ptr->i32 
              #                    occupy a2 with temp_235_array_ptr_273
              #                    occupy a6 with temp_236_array_ele_273
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          new_var temp_237_cmp_273:i1 
              #                          temp_237_cmp_273 = icmp i32 Eq temp_236_array_ele_273, 44_0 
              #                    occupy a6 with temp_236_array_ele_273
              #                    occupy a7 with 44_0
    li      a7, 44
              #                    occupy s1 with temp_237_cmp_273
    xor     s1,a6,a7
    seqz    s1, s1
              #                    free a6
              #                    free a7
              #                    free s1
              #                          br i1 temp_237_cmp_273, label while.body_274, label while.exit_274 
              #                    occupy s1 with temp_237_cmp_273
              #                    free s1
              #                    occupy s1 with temp_237_cmp_273
    bnez    s1, .while.body_274
              #                    free s1
    j       .while.exit_274
              #                    regtab     a1:Freed { symidx: temp_234_ptr2globl_273, tracked: true } |     a2:Freed { symidx: temp_235_array_ptr_273, tracked: true } |     a5:Freed { symidx: buf_60, tracked: true } |     a6:Freed { symidx: temp_236_array_ele_273, tracked: true } |     s1:Freed { symidx: temp_237_cmp_273, tracked: true } | 
              #                          label while.body_274: 
.while.body_274:
              #                          new_var temp_238_ptr2globl_275:i32 
              #                          temp_238_ptr2globl_275 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a3 with temp_238_ptr2globl_275
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                          new_var temp_239_arithop_275:i32 
              #                          temp_239_arithop_275 = Add i32 temp_238_ptr2globl_275, 1_0 
              #                    occupy a3 with temp_238_ptr2globl_275
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a7 with temp_239_arithop_275
    add     a7,a3,a4
              #                    free a3
              #                    free a4
              #                    free a7
              #                          store temp_239_arithop_275:i32 *pos_0:ptr->i32 
              #                    occupy s2 with *pos_0
              #                       load label pos as ptr to reg
    la      s2, pos
              #                    occupy reg s2 with *pos_0
              #                    occupy a7 with temp_239_arithop_275
    sw      a7,0(s2)
              #                    free a7
              #                    free s2
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_237_cmp_273 in mem offset legal
    sb      s1,827(sp)
              #                    release s1 with temp_237_cmp_273
              #                    store to temp_234_ptr2globl_273 in mem offset legal
    sw      a1,844(sp)
              #                    release a1 with temp_234_ptr2globl_273
              #                    store to temp_235_array_ptr_273 in mem offset legal
    sd      a2,832(sp)
              #                    release a2 with temp_235_array_ptr_273
              #                    store to temp_238_ptr2globl_275 in mem offset legal
    sw      a3,820(sp)
              #                    release a3 with temp_238_ptr2globl_275
              #                    store to buf_60 in mem offset legal
    sd      a5,1824(sp)
              #                    release a5 with buf_60
              #                    store to temp_236_array_ele_273 in mem offset legal
    sw      a6,828(sp)
              #                    release a6 with temp_236_array_ele_273
              #                    store to temp_239_arithop_275 in mem offset legal
    sw      a7,816(sp)
              #                    release a7 with temp_239_arithop_275
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: L44_0 
    j       .L44_0
              #                    regtab 
              #                          label L44_0: 
.L44_0:
              #                          new_var temp_240_ret_of_detect_item_278:i32 
              #                          temp_240_ret_of_detect_item_278 =  Call i32 detect_item_0(2_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_240_ret_of_detect_item_278 in mem offset legal
    sw      a0,812(sp)
              #                          new_var temp_241_cmp_278:i1 
              #                          temp_241_cmp_278 = icmp i32 Eq temp_240_ret_of_detect_item_278, 0_0 
              #                    occupy a0 with temp_240_ret_of_detect_item_278
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_241_cmp_278
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_241_cmp_278, label branch_true_279, label branch_false_279 
              #                    occupy a2 with temp_241_cmp_278
              #                    free a2
              #                    occupy a2 with temp_241_cmp_278
    bnez    a2, .branch_true_279
              #                    free a2
    j       .branch_false_279
              #                    regtab     a0:Freed { symidx: temp_240_ret_of_detect_item_278, tracked: true } |     a2:Freed { symidx: temp_241_cmp_278, tracked: true } | 
              #                          label branch_true_279: 
.branch_true_279:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_240_ret_of_detect_item_278 in mem offset legal
    sw      a0,812(sp)
              #                    release a0 with temp_240_ret_of_detect_item_278
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_240_ret_of_detect_item_278, tracked: true } |     a2:Freed { symidx: temp_241_cmp_278, tracked: true } | 
              #                          label branch_false_279: 
.branch_false_279:
              #                    regtab     a0:Freed { symidx: temp_240_ret_of_detect_item_278, tracked: true } |     a2:Freed { symidx: temp_241_cmp_278, tracked: true } | 
              #                          label L45_0: 
.L45_0:
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_240_ret_of_detect_item_278 in mem offset legal
    sw      a0,812(sp)
              #                    release a0 with temp_240_ret_of_detect_item_278
              #                    store to temp_241_cmp_278 in mem offset legal
    sb      a2,811(sp)
              #                    release a2 with temp_241_cmp_278
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: L46_0 
    j       .L46_0
              #                    regtab 
              #                          label L46_0: 
.L46_0:
              #                          new_var temp_242_ptr2globl_283:i32 
              #                          temp_242_ptr2globl_283 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_242_ptr2globl_283
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_243_cmp_283:i1 
              #                          temp_243_cmp_283 = icmp i32 Sge temp_242_ptr2globl_283, len_60 
              #                    occupy a1 with temp_242_ptr2globl_283
              #                    occupy a2 with len_60
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    occupy a3 with temp_243_cmp_283
    slt     a3,a1,a2
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_243_cmp_283, label branch_true_284, label branch_false_284 
              #                    occupy a3 with temp_243_cmp_283
              #                    free a3
              #                    occupy a3 with temp_243_cmp_283
    bnez    a3, .branch_true_284
              #                    free a3
    j       .branch_false_284
              #                    regtab     a1:Freed { symidx: temp_242_ptr2globl_283, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_243_cmp_283, tracked: true } | 
              #                          label branch_true_284: 
.branch_true_284:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_242_ptr2globl_283, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_243_cmp_283, tracked: true } | 
              #                          label branch_false_284: 
.branch_false_284:
              #                    regtab     a1:Freed { symidx: temp_242_ptr2globl_283, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_243_cmp_283, tracked: true } | 
              #                          label L47_0: 
.L47_0:
              #                          new_var temp_244_ptr2globl_287:i32 
              #                          temp_244_ptr2globl_287 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a4 with temp_244_ptr2globl_287
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                          new_var temp_245_array_ptr_287:ptr->i32 
              #                          temp_245_array_ptr_287 = getelementptr buf_60:ptr->i32 [Some(temp_244_ptr2globl_287)] 
              #                    occupy a5 with temp_245_array_ptr_287
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a4 with temp_244_ptr2globl_287
              #                    occupy a7 with _anonymous_of_buf_60_0
    mul     a7,a6,a4
              #                    free a6
              #                    free a4
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with buf_60
              #                    load from buf_60 in mem
    ld      s1,1824(sp)
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_246_array_ele_287:i32 
              #                          temp_246_array_ele_287 = load temp_245_array_ptr_287:ptr->i32 
              #                    occupy a5 with temp_245_array_ptr_287
              #                    occupy s2 with temp_246_array_ele_287
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_247_cmp_287:i1 
              #                          temp_247_cmp_287 = icmp i32 Ne temp_246_array_ele_287, 58_0 
              #                    occupy s2 with temp_246_array_ele_287
              #                    occupy s3 with 58_0
    li      s3, 58
              #                    occupy s4 with temp_247_cmp_287
    xor     s4,s2,s3
    snez    s4, s4
              #                    free s2
              #                    free s3
              #                    free s4
              #                          br i1 temp_247_cmp_287, label branch_true_288, label branch_false_288 
              #                    occupy s4 with temp_247_cmp_287
              #                    free s4
              #                    occupy s4 with temp_247_cmp_287
    bnez    s4, .branch_true_288
              #                    free s4
    j       .branch_false_288
              #                    regtab     a1:Freed { symidx: temp_242_ptr2globl_283, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_243_cmp_283, tracked: true } |     a4:Freed { symidx: temp_244_ptr2globl_287, tracked: true } |     a5:Freed { symidx: temp_245_array_ptr_287, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_246_array_ele_287, tracked: true } |     s4:Freed { symidx: temp_247_cmp_287, tracked: true } | 
              #                          label branch_true_288: 
.branch_true_288:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_242_ptr2globl_283, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_243_cmp_283, tracked: true } |     a4:Freed { symidx: temp_244_ptr2globl_287, tracked: true } |     a5:Freed { symidx: temp_245_array_ptr_287, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_246_array_ele_287, tracked: true } |     s4:Freed { symidx: temp_247_cmp_287, tracked: true } | 
              #                          label branch_false_288: 
.branch_false_288:
              #                    regtab     a1:Freed { symidx: temp_242_ptr2globl_283, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_243_cmp_283, tracked: true } |     a4:Freed { symidx: temp_244_ptr2globl_287, tracked: true } |     a5:Freed { symidx: temp_245_array_ptr_287, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_246_array_ele_287, tracked: true } |     s4:Freed { symidx: temp_247_cmp_287, tracked: true } | 
              #                          label L48_0: 
.L48_0:
              #                          new_var temp_248_ptr2globl_275:i32 
              #                          temp_248_ptr2globl_275 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a6 with temp_248_ptr2globl_275
    lw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                          new_var temp_249_arithop_275:i32 
              #                          temp_249_arithop_275 = Add i32 temp_248_ptr2globl_275, 1_0 
              #                    occupy a6 with temp_248_ptr2globl_275
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_249_arithop_275
    add     s3,a6,a7
              #                    free a6
              #                    free a7
              #                    free s3
              #                          store temp_249_arithop_275:i32 *pos_0:ptr->i32 
              #                    occupy s5 with *pos_0
              #                       load label pos as ptr to reg
    la      s5, pos
              #                    occupy reg s5 with *pos_0
              #                    occupy s3 with temp_249_arithop_275
    sw      s3,0(s5)
              #                    free s3
              #                    free s5
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to buf_60 in mem offset legal
    sd      s1,1824(sp)
              #                    release s1 with buf_60
              #                    store to temp_246_array_ele_287 in mem offset legal
    sw      s2,780(sp)
              #                    release s2 with temp_246_array_ele_287
              #                    store to temp_249_arithop_275 in mem offset legal
    sw      s3,768(sp)
              #                    release s3 with temp_249_arithop_275
              #                    store to temp_247_cmp_287 in mem offset legal
    sb      s4,779(sp)
              #                    release s4 with temp_247_cmp_287
              #                    store to temp_242_ptr2globl_283 in mem offset legal
    sw      a1,804(sp)
              #                    release a1 with temp_242_ptr2globl_283
              #                    store to len_60 in mem offset legal
    sw      a2,1820(sp)
              #                    release a2 with len_60
              #                    store to temp_243_cmp_283 in mem offset legal
    sb      a3,803(sp)
              #                    release a3 with temp_243_cmp_283
              #                    store to temp_244_ptr2globl_287 in mem offset legal
    sw      a4,796(sp)
              #                    release a4 with temp_244_ptr2globl_287
              #                    store to temp_245_array_ptr_287 in mem offset legal
    sd      a5,784(sp)
              #                    release a5 with temp_245_array_ptr_287
              #                    store to temp_248_ptr2globl_275 in mem offset legal
    sw      a6,772(sp)
              #                    release a6 with temp_248_ptr2globl_275
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: L49_0 
    j       .L49_0
              #                    regtab 
              #                          label L49_0: 
.L49_0:
              #                          new_var temp_250_ret_of_detect_item_293:i32 
              #                          temp_250_ret_of_detect_item_293 =  Call i32 detect_item_0(0_0, buf_60, len_60) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a1,1824(sp)
              #                    occupy a2 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    arg load ended


    call    detect_item
              #                    store to temp_250_ret_of_detect_item_293 in mem offset legal
    sw      a0,764(sp)
              #                          new_var temp_251_cmp_293:i1 
              #                          temp_251_cmp_293 = icmp i32 Eq temp_250_ret_of_detect_item_293, 0_0 
              #                    occupy a0 with temp_250_ret_of_detect_item_293
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_251_cmp_293
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_251_cmp_293, label branch_true_294, label branch_false_294 
              #                    occupy a2 with temp_251_cmp_293
              #                    free a2
              #                    occupy a2 with temp_251_cmp_293
    bnez    a2, .branch_true_294
              #                    free a2
    j       .branch_false_294
              #                    regtab     a0:Freed { symidx: temp_250_ret_of_detect_item_293, tracked: true } |     a2:Freed { symidx: temp_251_cmp_293, tracked: true } | 
              #                          label branch_true_294: 
.branch_true_294:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_250_ret_of_detect_item_293 in mem offset legal
    sw      a0,764(sp)
              #                    release a0 with temp_250_ret_of_detect_item_293
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_250_ret_of_detect_item_293, tracked: true } |     a2:Freed { symidx: temp_251_cmp_293, tracked: true } | 
              #                          label branch_false_294: 
.branch_false_294:
              #                    regtab     a0:Freed { symidx: temp_250_ret_of_detect_item_293, tracked: true } |     a2:Freed { symidx: temp_251_cmp_293, tracked: true } | 
              #                          label L50_0: 
.L50_0:
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_250_ret_of_detect_item_293 in mem offset legal
    sw      a0,764(sp)
              #                    release a0 with temp_250_ret_of_detect_item_293
              #                    store to temp_251_cmp_293 in mem offset legal
    sb      a2,763(sp)
              #                    release a2 with temp_251_cmp_293
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: while.head_274 
    j       .while.head_274
              #                    regtab     a1:Freed { symidx: temp_234_ptr2globl_273, tracked: true } |     a2:Freed { symidx: temp_235_array_ptr_273, tracked: true } |     a5:Freed { symidx: buf_60, tracked: true } |     a6:Freed { symidx: temp_236_array_ele_273, tracked: true } |     s1:Freed { symidx: temp_237_cmp_273, tracked: true } | 
              #                          label while.exit_274: 
.while.exit_274:
              #                           Call void skip_space_0(buf_60, len_60) 
              #                    saved register dumping to mem
              #                    store to temp_237_cmp_273 in mem offset legal
    sb      s1,827(sp)
              #                    release s1 with temp_237_cmp_273
              #                    store to temp_234_ptr2globl_273 in mem offset legal
    sw      a1,844(sp)
              #                    release a1 with temp_234_ptr2globl_273
              #                    store to temp_235_array_ptr_273 in mem offset legal
    sd      a2,832(sp)
              #                    release a2 with temp_235_array_ptr_273
              #                    store to buf_60 in mem offset legal
    sd      a5,1824(sp)
              #                    release a5 with buf_60
              #                    store to temp_236_array_ele_273 in mem offset legal
    sw      a6,828(sp)
              #                    release a6 with temp_236_array_ele_273
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_buf_60_0
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
              #                    occupy a1 with _anonymous_of_len_60_0
              #                    load from len_60 in mem


    lw      a1,1820(sp)
              #                    arg load ended


    call    skip_space
              #                          jump label: L51_0 
    j       .L51_0
              #                    regtab 
              #                          label L51_0: 
.L51_0:
              #                          new_var temp_252_ptr2globl_299:i32 
              #                          temp_252_ptr2globl_299 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a1 with temp_252_ptr2globl_299
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_253_cmp_299:i1 
              #                          temp_253_cmp_299 = icmp i32 Sge temp_252_ptr2globl_299, len_60 
              #                    occupy a1 with temp_252_ptr2globl_299
              #                    occupy a2 with len_60
              #                    load from len_60 in mem


    lw      a2,1820(sp)
              #                    occupy a3 with temp_253_cmp_299
    slt     a3,a1,a2
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_253_cmp_299, label branch_true_300, label branch_false_300 
              #                    occupy a3 with temp_253_cmp_299
              #                    free a3
              #                    occupy a3 with temp_253_cmp_299
    bnez    a3, .branch_true_300
              #                    free a3
    j       .branch_false_300
              #                    regtab     a1:Freed { symidx: temp_252_ptr2globl_299, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_253_cmp_299, tracked: true } | 
              #                          label branch_true_300: 
.branch_true_300:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_252_ptr2globl_299, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_253_cmp_299, tracked: true } | 
              #                          label branch_false_300: 
.branch_false_300:
              #                          new_var temp_256_ptr2globl_303:i32 
              #                          temp_256_ptr2globl_303 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a4 with temp_256_ptr2globl_303
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                          new_var temp_257_array_ptr_303:ptr->i32 
              #                          temp_257_array_ptr_303 = getelementptr buf_60:ptr->i32 [Some(temp_256_ptr2globl_303)] 
              #                    occupy a5 with temp_257_array_ptr_303
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a4 with temp_256_ptr2globl_303
              #                    occupy a7 with _anonymous_of_buf_60_0
    mul     a7,a6,a4
              #                    free a6
              #                    free a4
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with buf_60
              #                    load from buf_60 in mem
    ld      s1,1824(sp)
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_258_array_ele_303:i32 
              #                          temp_258_array_ele_303 = load temp_257_array_ptr_303:ptr->i32 
              #                    occupy a5 with temp_257_array_ptr_303
              #                    occupy s2 with temp_258_array_ele_303
    lw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                          new_var temp_259_cmp_303:i1 
              #                          temp_259_cmp_303 = icmp i32 Ne temp_258_array_ele_303, 125_0 
              #                    occupy s2 with temp_258_array_ele_303
              #                    occupy s3 with 125_0
    li      s3, 125
              #                    occupy s4 with temp_259_cmp_303
    xor     s4,s2,s3
    snez    s4, s4
              #                    free s2
              #                    free s3
              #                    free s4
              #                          br i1 temp_259_cmp_303, label branch_true_304, label branch_false_304 
              #                    occupy s4 with temp_259_cmp_303
              #                    free s4
              #                    occupy s4 with temp_259_cmp_303
    bnez    s4, .branch_true_304
              #                    free s4
    j       .branch_false_304
              #                    regtab     a1:Freed { symidx: temp_252_ptr2globl_299, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_253_cmp_299, tracked: true } |     a4:Freed { symidx: temp_256_ptr2globl_303, tracked: true } |     a5:Freed { symidx: temp_257_array_ptr_303, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_258_array_ele_303, tracked: true } |     s4:Freed { symidx: temp_259_cmp_303, tracked: true } | 
              #                          label branch_true_304: 
.branch_true_304:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_252_ptr2globl_299, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_253_cmp_299, tracked: true } |     a4:Freed { symidx: temp_256_ptr2globl_303, tracked: true } |     a5:Freed { symidx: temp_257_array_ptr_303, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_258_array_ele_303, tracked: true } |     s4:Freed { symidx: temp_259_cmp_303, tracked: true } | 
              #                          label branch_false_304: 
.branch_false_304:
              #                    regtab     a1:Freed { symidx: temp_252_ptr2globl_299, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_253_cmp_299, tracked: true } |     a4:Freed { symidx: temp_256_ptr2globl_303, tracked: true } |     a5:Freed { symidx: temp_257_array_ptr_303, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_258_array_ele_303, tracked: true } |     s4:Freed { symidx: temp_259_cmp_303, tracked: true } | 
              #                          label L52_0: 
.L52_0:
              #                    regtab     a1:Freed { symidx: temp_252_ptr2globl_299, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_253_cmp_299, tracked: true } |     a4:Freed { symidx: temp_256_ptr2globl_303, tracked: true } |     a5:Freed { symidx: temp_257_array_ptr_303, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_258_array_ele_303, tracked: true } |     s4:Freed { symidx: temp_259_cmp_303, tracked: true } | 
              #                          label L53_0: 
.L53_0:
              #                          new_var temp_254_ptr2globl_242:i32 
              #                          temp_254_ptr2globl_242 = load *pos_0:ptr->i32 
              #                    occupy a0 with *pos_0
              #                       load label pos as ptr to reg
    la      a0, pos
              #                    occupy reg a0 with *pos_0
              #                    occupy a6 with temp_254_ptr2globl_242
    lw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                          new_var temp_255_arithop_242:i32 
              #                          temp_255_arithop_242 = Add i32 temp_254_ptr2globl_242, 1_0 
              #                    occupy a6 with temp_254_ptr2globl_242
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_255_arithop_242
    add     s3,a6,a7
              #                    free a6
              #                    free a7
              #                    free s3
              #                          store temp_255_arithop_242:i32 *pos_0:ptr->i32 
              #                    occupy s5 with *pos_0
              #                       load label pos as ptr to reg
    la      s5, pos
              #                    occupy reg s5 with *pos_0
              #                    occupy s3 with temp_255_arithop_242
    sw      s3,0(s5)
              #                    free s3
              #                    free s5
              #                          jump label: L76_0 
    j       .L76_0
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } | 
              #                          label branch_false_241: 
.branch_false_241:
              #                          new_var temp_260_cmp_308:i1 
              #                          temp_260_cmp_308 = icmp i32 Eq type_60, 5_0 
              #                    occupy a0 with type_60
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a7 with temp_260_cmp_308
    xor     a7,a0,a1
    seqz    a7, a7
              #                    free a0
              #                    free a1
              #                    free a7
              #                          br i1 temp_260_cmp_308, label branch_true_309, label branch_false_309 
              #                    occupy a7 with temp_260_cmp_308
              #                    free a7
              #                    occupy a7 with temp_260_cmp_308
    bnez    a7, .branch_true_309
              #                    free a7
    j       .branch_false_309
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } | 
              #                          label branch_true_309: 
.branch_true_309:
              #                          new_var mTrue_310:Array:i32:[Some(4_0)] 
              #                          new_var temp_261_array_init_ptr_310:ptr->i32 
              #                          temp_261_array_init_ptr_310 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(1_0)] 
              #                    occupy a1 with temp_261_array_init_ptr_310
    li      a1, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with _anonymous_of_mTrue_310_0
    mul     s3,s1,s2
              #                    free s1
              #                    free s2
    add     a1,a1,s3
              #                    free s3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,672
              #                    free a1
              #                          store 114_0:i32 temp_261_array_init_ptr_310:ptr->i32 
              #                    occupy a1 with temp_261_array_init_ptr_310
              #                    occupy s4 with 114_0
    li      s4, 114
    sw      s4,0(a1)
              #                    free s4
              #                    free a1
              #                          mu mTrue_310:1143 
              #                          mTrue_310 = chi mTrue_310:1143 
              #                          new_var temp_262_array_init_ptr_310:ptr->i32 
              #                          temp_262_array_init_ptr_310 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(2_0)] 
              #                    occupy s5 with temp_262_array_init_ptr_310
    li      s5, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s6 with 2_0
    li      s6, 2
              #                    occupy s7 with _anonymous_of_mTrue_310_0
    mul     s7,s2,s6
              #                    free s2
              #                    free s6
    add     s5,s5,s7
              #                    free s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,672
              #                    free s5
              #                          store 117_0:i32 temp_262_array_init_ptr_310:ptr->i32 
              #                    occupy s5 with temp_262_array_init_ptr_310
              #                    occupy s8 with 117_0
    li      s8, 117
    sw      s8,0(s5)
              #                    free s8
              #                    free s5
              #                          mu mTrue_310:1149 
              #                          mTrue_310 = chi mTrue_310:1149 
              #                          new_var temp_263_array_init_ptr_310:ptr->i32 
              #                          temp_263_array_init_ptr_310 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(0_0)] 
              #                    occupy s9 with temp_263_array_init_ptr_310
    li      s9, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with _anonymous_of_mTrue_310_0
    mul     s11,s2,s10
              #                    free s2
              #                    free s10
    add     s9,s9,s11
              #                    free s11
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,672
              #                    free s9
              #                          store 116_0:i32 temp_263_array_init_ptr_310:ptr->i32 
              #                    occupy s9 with temp_263_array_init_ptr_310
              #                    occupy s1 with 116_0
    li      s1, 116
    sw      s1,0(s9)
              #                    free s1
              #                    free s9
              #                          mu mTrue_310:1155 
              #                          mTrue_310 = chi mTrue_310:1155 
              #                          new_var temp_264_array_init_ptr_310:ptr->i32 
              #                          temp_264_array_init_ptr_310 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(3_0)] 
              #                    occupy s1 with temp_264_array_init_ptr_310
    li      s1, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s3 with 3_0
    li      s3, 3
              #                    occupy s4 with _anonymous_of_mTrue_310_0
    mul     s4,s2,s3
              #                    free s2
              #                    free s3
    add     s1,s1,s4
              #                    free s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,672
              #                    free s1
              #                          store 101_0:i32 temp_264_array_init_ptr_310:ptr->i32 
              #                    occupy s1 with temp_264_array_init_ptr_310
              #                    occupy s2 with 101_0
    li      s2, 101
    sw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          mu mTrue_310:1161 
              #                          mTrue_310 = chi mTrue_310:1161 
              #                          jump label: L54_0 
    j       .L54_0
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_261_array_init_ptr_310, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label L54_0: 
.L54_0:
              #                          new_var temp_265_ptr2globl_312:i32 
              #                          temp_265_ptr2globl_312 = load *pos_0:ptr->i32 
              #                    occupy s2 with *pos_0
              #                       load label pos as ptr to reg
    la      s2, pos
              #                    occupy reg s2 with *pos_0
              #                    occupy s3 with temp_265_ptr2globl_312
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_266_arithop_312:i32 
              #                          temp_266_arithop_312 = Add i32 temp_265_ptr2globl_312, 3_0 
              #                    occupy s3 with temp_265_ptr2globl_312
              #                    occupy s4 with 3_0
    li      s4, 3
              #                    occupy s6 with temp_266_arithop_312
    add     s6,s3,s4
              #                    free s3
              #                    free s4
              #                    free s6
              #                          new_var temp_267_cmp_312:i1 
              #                          temp_267_cmp_312 = icmp i32 Sge temp_266_arithop_312, len_60 
              #                    occupy s6 with temp_266_arithop_312
              #                    occupy s7 with len_60
              #                    load from len_60 in mem


    lw      s7,1820(sp)
              #                    occupy s8 with temp_267_cmp_312
    slt     s8,s6,s7
    xori    s8,s8,1
              #                    free s6
              #                    free s7
              #                    free s8
              #                          br i1 temp_267_cmp_312, label branch_true_313, label branch_false_313 
              #                    occupy s8 with temp_267_cmp_312
              #                    free s8
              #                    occupy s8 with temp_267_cmp_312
    bnez    s8, .branch_true_313
              #                    free s8
    j       .branch_false_313
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_261_array_init_ptr_310, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s7:Freed { symidx: len_60, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label branch_true_313: 
.branch_true_313:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_261_array_init_ptr_310, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s7:Freed { symidx: len_60, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label branch_false_313: 
.branch_false_313:
              #                          new_var temp_270_array_ptr_316:ptr->i32 
              #                          temp_270_array_ptr_316 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(0_0)] 
              #                    occupy s2 with temp_270_array_ptr_316
    li      s2, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with _anonymous_of_mTrue_310_0
    mul     s11,s4,s10
              #                    free s4
              #                    free s10
    add     s2,s2,s11
              #                    free s11
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,672
              #                    free s2
              #                          new_var temp_271_array_ele_316:i32 
              #                          temp_271_array_ele_316 = load temp_270_array_ptr_316:ptr->i32 
              #                    occupy s2 with temp_270_array_ptr_316
              #                    occupy s4 with temp_271_array_ele_316
    lw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                          new_var temp_272_ptr2globl_316:i32 
              #                          temp_272_ptr2globl_316 = load *pos_0:ptr->i32 
              #                    occupy s10 with *pos_0
              #                       load label pos as ptr to reg
    la      s10, pos
              #                    occupy reg s10 with *pos_0
              #                    occupy s11 with temp_272_ptr2globl_316
    lw      s11,0(s10)
              #                    free s11
              #                    free s10
              #                          new_var temp_273_array_ptr_316:ptr->i32 
              #                          temp_273_array_ptr_316 = getelementptr buf_60:ptr->i32 [Some(temp_272_ptr2globl_316)] 
              #                    occupy s10 with temp_273_array_ptr_316
    li      s10, 0
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s11 with temp_272_ptr2globl_316
              #                    store to temp_261_array_init_ptr_310 in mem offset legal
    sd      a1,712(sp)
              #                    release a1 with temp_261_array_init_ptr_310
              #                    occupy a1 with _anonymous_of_buf_60_0
    mul     a1,a0,s11
              #                    free a0
              #                    free s11
    add     s10,s10,a1
              #                    free a1
    slli s10,s10,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     s10,s10,a0
              #                    free a0
              #                    free s10
              #                          new_var temp_274_array_ele_316:i32 
              #                          temp_274_array_ele_316 = load temp_273_array_ptr_316:ptr->i32 
              #                    occupy s10 with temp_273_array_ptr_316
              #                    occupy a1 with temp_274_array_ele_316
    lw      a1,0(s10)
              #                    free a1
              #                    free s10
              #                          new_var temp_275_cmp_316:i1 
              #                          temp_275_cmp_316 = icmp i32 Ne temp_274_array_ele_316, temp_271_array_ele_316 
              #                    occupy a1 with temp_274_array_ele_316
              #                    occupy s4 with temp_271_array_ele_316
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_275_cmp_316
    xor     a0,a1,s4
    snez    a0, a0
              #                    free a1
              #                    free s4
              #                    free a0
              #                          br i1 temp_275_cmp_316, label branch_true_317, label branch_false_317 
              #                    occupy a0 with temp_275_cmp_316
              #                    free a0
              #                    store to len_60 in mem offset legal
    sw      s7,1820(sp)
              #                    release s7 with len_60
              #                    occupy a0 with temp_275_cmp_316
    bnez    a0, .branch_true_317
              #                    free a0
    j       .branch_false_317
              #                    regtab     a0:Freed { symidx: temp_275_cmp_316, tracked: true } |     a1:Freed { symidx: temp_274_array_ele_316, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label branch_true_317: 
.branch_true_317:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_275_cmp_316 in mem offset legal
    sb      a0,619(sp)
              #                    release a0 with temp_275_cmp_316
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_275_cmp_316, tracked: true } |     a1:Freed { symidx: temp_274_array_ele_316, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label branch_false_317: 
.branch_false_317:
              #                          new_var temp_276_array_ptr_320:ptr->i32 
              #                          temp_276_array_ptr_320 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(1_0)] 
              #                    occupy s7 with temp_276_array_ptr_320
    li      s7, 0
              #                    store to temp_275_cmp_316 in mem offset legal
    sb      a0,619(sp)
              #                    release a0 with temp_275_cmp_316
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_274_array_ele_316 in mem offset legal
    sw      a1,620(sp)
              #                    release a1 with temp_274_array_ele_316
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_31_cmp_68 in mem offset legal
    sb      a2,1814(sp)
              #                    release a2 with temp_31_cmp_68
              #                    occupy a2 with _anonymous_of_mTrue_310_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,672
              #                    free s7
              #                          new_var temp_277_array_ele_320:i32 
              #                          temp_277_array_ele_320 = load temp_276_array_ptr_320:ptr->i32 
              #                    occupy s7 with temp_276_array_ptr_320
              #                    occupy a0 with temp_277_array_ele_320
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_278_ptr2globl_320:i32 
              #                          temp_278_ptr2globl_320 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_278_ptr2globl_320
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_279_arithop_320:i32 
              #                          temp_279_arithop_320 = Add i32 temp_278_ptr2globl_320, 1_0 
              #                    occupy a2 with temp_278_ptr2globl_320
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_277_array_ele_320 in mem offset legal
    sw      a0,604(sp)
              #                    release a0 with temp_277_array_ele_320
              #                    occupy a0 with temp_279_arithop_320
    add     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_280_array_ptr_320:ptr->i32 
              #                          temp_280_array_ptr_320 = getelementptr buf_60:ptr->i32 [Some(temp_279_arithop_320)] 
              #                    occupy a1 with temp_280_array_ptr_320
    li      a1, 0
              #                    store to temp_279_arithop_320 in mem offset legal
    sw      a0,596(sp)
              #                    release a0 with temp_279_arithop_320
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_278_ptr2globl_320 in mem offset legal
    sw      a2,600(sp)
              #                    release a2 with temp_278_ptr2globl_320
              #                    occupy a2 with temp_279_arithop_320
              #                    load from temp_279_arithop_320 in mem


    lw      a2,596(sp)
              #                    store to temp_78_cmp_109 in mem offset legal
    sb      a3,1587(sp)
              #                    release a3 with temp_78_cmp_109
              #                    occupy a3 with _anonymous_of_buf_60_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_281_array_ele_320:i32 
              #                          temp_281_array_ele_320 = load temp_280_array_ptr_320:ptr->i32 
              #                    occupy a1 with temp_280_array_ptr_320
              #                    occupy a3 with temp_281_array_ele_320
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_282_cmp_320:i1 
              #                          temp_282_cmp_320 = icmp i32 Ne temp_281_array_ele_320, temp_277_array_ele_320 
              #                    occupy a3 with temp_281_array_ele_320
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_277_array_ele_320
              #                    load from temp_277_array_ele_320 in mem


    lw      a0,604(sp)
              #                    store to temp_280_array_ptr_320 in mem offset legal
    sd      a1,584(sp)
              #                    release a1 with temp_280_array_ptr_320
              #                    occupy a1 with temp_282_cmp_320
    xor     a1,a3,a0
    snez    a1, a1
              #                    free a3
              #                    free a0
              #                    free a1
              #                          br i1 temp_282_cmp_320, label branch_true_321, label branch_false_321 
              #                    occupy a1 with temp_282_cmp_320
              #                    free a1
              #                    store to temp_276_array_ptr_320 in mem offset legal
    sd      s7,608(sp)
              #                    release s7 with temp_276_array_ptr_320
              #                    occupy a1 with temp_282_cmp_320
    bnez    a1, .branch_true_321
              #                    free a1
    j       .branch_false_321
              #                    regtab     a0:Freed { symidx: temp_277_array_ele_320, tracked: true } |     a1:Freed { symidx: temp_282_cmp_320, tracked: true } |     a2:Freed { symidx: temp_279_arithop_320, tracked: true } |     a3:Freed { symidx: temp_281_array_ele_320, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label branch_true_321: 
.branch_true_321:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_277_array_ele_320 in mem offset legal
    sw      a0,604(sp)
              #                    release a0 with temp_277_array_ele_320
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_277_array_ele_320, tracked: true } |     a1:Freed { symidx: temp_282_cmp_320, tracked: true } |     a2:Freed { symidx: temp_279_arithop_320, tracked: true } |     a3:Freed { symidx: temp_281_array_ele_320, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label branch_false_321: 
.branch_false_321:
              #                          new_var temp_283_array_ptr_324:ptr->i32 
              #                          temp_283_array_ptr_324 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(2_0)] 
              #                    occupy s7 with temp_283_array_ptr_324
    li      s7, 0
              #                    store to temp_277_array_ele_320 in mem offset legal
    sw      a0,604(sp)
              #                    release a0 with temp_277_array_ele_320
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_282_cmp_320 in mem offset legal
    sb      a1,579(sp)
              #                    release a1 with temp_282_cmp_320
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    store to temp_279_arithop_320 in mem offset legal
    sw      a2,596(sp)
              #                    release a2 with temp_279_arithop_320
              #                    occupy a2 with _anonymous_of_mTrue_310_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,672
              #                    free s7
              #                          new_var temp_284_array_ele_324:i32 
              #                          temp_284_array_ele_324 = load temp_283_array_ptr_324:ptr->i32 
              #                    occupy s7 with temp_283_array_ptr_324
              #                    occupy a0 with temp_284_array_ele_324
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_285_ptr2globl_324:i32 
              #                          temp_285_ptr2globl_324 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_285_ptr2globl_324
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_286_arithop_324:i32 
              #                          temp_286_arithop_324 = Add i32 temp_285_ptr2globl_324, 2_0 
              #                    occupy a2 with temp_285_ptr2globl_324
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    store to temp_284_array_ele_324 in mem offset legal
    sw      a0,564(sp)
              #                    release a0 with temp_284_array_ele_324
              #                    occupy a0 with temp_286_arithop_324
    add     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_287_array_ptr_324:ptr->i32 
              #                          temp_287_array_ptr_324 = getelementptr buf_60:ptr->i32 [Some(temp_286_arithop_324)] 
              #                    occupy a1 with temp_287_array_ptr_324
    li      a1, 0
              #                    store to temp_286_arithop_324 in mem offset legal
    sw      a0,556(sp)
              #                    release a0 with temp_286_arithop_324
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_285_ptr2globl_324 in mem offset legal
    sw      a2,560(sp)
              #                    release a2 with temp_285_ptr2globl_324
              #                    occupy a2 with temp_286_arithop_324
              #                    load from temp_286_arithop_324 in mem


    lw      a2,556(sp)
              #                    store to temp_281_array_ele_320 in mem offset legal
    sw      a3,580(sp)
              #                    release a3 with temp_281_array_ele_320
              #                    occupy a3 with _anonymous_of_buf_60_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_288_array_ele_324:i32 
              #                          temp_288_array_ele_324 = load temp_287_array_ptr_324:ptr->i32 
              #                    occupy a1 with temp_287_array_ptr_324
              #                    occupy a3 with temp_288_array_ele_324
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_289_cmp_324:i1 
              #                          temp_289_cmp_324 = icmp i32 Ne temp_288_array_ele_324, temp_284_array_ele_324 
              #                    occupy a3 with temp_288_array_ele_324
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_284_array_ele_324
              #                    load from temp_284_array_ele_324 in mem


    lw      a0,564(sp)
              #                    store to temp_287_array_ptr_324 in mem offset legal
    sd      a1,544(sp)
              #                    release a1 with temp_287_array_ptr_324
              #                    occupy a1 with temp_289_cmp_324
    xor     a1,a3,a0
    snez    a1, a1
              #                    free a3
              #                    free a0
              #                    free a1
              #                          br i1 temp_289_cmp_324, label branch_true_325, label branch_false_325 
              #                    occupy a1 with temp_289_cmp_324
              #                    free a1
              #                    store to temp_283_array_ptr_324 in mem offset legal
    sd      s7,568(sp)
              #                    release s7 with temp_283_array_ptr_324
              #                    occupy a1 with temp_289_cmp_324
    bnez    a1, .branch_true_325
              #                    free a1
    j       .branch_false_325
              #                    regtab     a0:Freed { symidx: temp_284_array_ele_324, tracked: true } |     a1:Freed { symidx: temp_289_cmp_324, tracked: true } |     a2:Freed { symidx: temp_286_arithop_324, tracked: true } |     a3:Freed { symidx: temp_288_array_ele_324, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label branch_true_325: 
.branch_true_325:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_284_array_ele_324 in mem offset legal
    sw      a0,564(sp)
              #                    release a0 with temp_284_array_ele_324
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_284_array_ele_324, tracked: true } |     a1:Freed { symidx: temp_289_cmp_324, tracked: true } |     a2:Freed { symidx: temp_286_arithop_324, tracked: true } |     a3:Freed { symidx: temp_288_array_ele_324, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label branch_false_325: 
.branch_false_325:
              #                          new_var temp_290_array_ptr_328:ptr->i32 
              #                          temp_290_array_ptr_328 = getelementptr mTrue_310:Array:i32:[Some(4_0)] [Some(3_0)] 
              #                    occupy s7 with temp_290_array_ptr_328
    li      s7, 0
              #                    store to temp_284_array_ele_324 in mem offset legal
    sw      a0,564(sp)
              #                    release a0 with temp_284_array_ele_324
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_289_cmp_324 in mem offset legal
    sb      a1,539(sp)
              #                    release a1 with temp_289_cmp_324
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    store to temp_286_arithop_324 in mem offset legal
    sw      a2,556(sp)
              #                    release a2 with temp_286_arithop_324
              #                    occupy a2 with _anonymous_of_mTrue_310_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,672
              #                    free s7
              #                          new_var temp_291_array_ele_328:i32 
              #                          temp_291_array_ele_328 = load temp_290_array_ptr_328:ptr->i32 
              #                    occupy s7 with temp_290_array_ptr_328
              #                    occupy a0 with temp_291_array_ele_328
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_292_ptr2globl_328:i32 
              #                          temp_292_ptr2globl_328 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_292_ptr2globl_328
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_293_arithop_328:i32 
              #                          temp_293_arithop_328 = Add i32 temp_292_ptr2globl_328, 3_0 
              #                    occupy a2 with temp_292_ptr2globl_328
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    store to temp_291_array_ele_328 in mem offset legal
    sw      a0,524(sp)
              #                    release a0 with temp_291_array_ele_328
              #                    occupy a0 with temp_293_arithop_328
    add     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_294_array_ptr_328:ptr->i32 
              #                          temp_294_array_ptr_328 = getelementptr buf_60:ptr->i32 [Some(temp_293_arithop_328)] 
              #                    occupy a1 with temp_294_array_ptr_328
    li      a1, 0
              #                    store to temp_293_arithop_328 in mem offset legal
    sw      a0,516(sp)
              #                    release a0 with temp_293_arithop_328
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_292_ptr2globl_328 in mem offset legal
    sw      a2,520(sp)
              #                    release a2 with temp_292_ptr2globl_328
              #                    occupy a2 with temp_293_arithop_328
              #                    load from temp_293_arithop_328 in mem


    lw      a2,516(sp)
              #                    store to temp_288_array_ele_324 in mem offset legal
    sw      a3,540(sp)
              #                    release a3 with temp_288_array_ele_324
              #                    occupy a3 with _anonymous_of_buf_60_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_295_array_ele_328:i32 
              #                          temp_295_array_ele_328 = load temp_294_array_ptr_328:ptr->i32 
              #                    occupy a1 with temp_294_array_ptr_328
              #                    occupy a3 with temp_295_array_ele_328
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_296_cmp_328:i1 
              #                          temp_296_cmp_328 = icmp i32 Ne temp_295_array_ele_328, temp_291_array_ele_328 
              #                    occupy a3 with temp_295_array_ele_328
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_291_array_ele_328
              #                    load from temp_291_array_ele_328 in mem


    lw      a0,524(sp)
              #                    store to temp_294_array_ptr_328 in mem offset legal
    sd      a1,504(sp)
              #                    release a1 with temp_294_array_ptr_328
              #                    occupy a1 with temp_296_cmp_328
    xor     a1,a3,a0
    snez    a1, a1
              #                    free a3
              #                    free a0
              #                    free a1
              #                          br i1 temp_296_cmp_328, label branch_true_329, label branch_false_329 
              #                    occupy a1 with temp_296_cmp_328
              #                    free a1
              #                    store to temp_290_array_ptr_328 in mem offset legal
    sd      s7,528(sp)
              #                    release s7 with temp_290_array_ptr_328
              #                    occupy a1 with temp_296_cmp_328
    bnez    a1, .branch_true_329
              #                    free a1
    j       .branch_false_329
              #                    regtab     a0:Freed { symidx: temp_291_array_ele_328, tracked: true } |     a1:Freed { symidx: temp_296_cmp_328, tracked: true } |     a2:Freed { symidx: temp_293_arithop_328, tracked: true } |     a3:Freed { symidx: temp_295_array_ele_328, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label branch_true_329: 
.branch_true_329:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_291_array_ele_328 in mem offset legal
    sw      a0,524(sp)
              #                    release a0 with temp_291_array_ele_328
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_291_array_ele_328, tracked: true } |     a1:Freed { symidx: temp_296_cmp_328, tracked: true } |     a2:Freed { symidx: temp_293_arithop_328, tracked: true } |     a3:Freed { symidx: temp_295_array_ele_328, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label branch_false_329: 
.branch_false_329:
              #                    regtab     a0:Freed { symidx: temp_291_array_ele_328, tracked: true } |     a1:Freed { symidx: temp_296_cmp_328, tracked: true } |     a2:Freed { symidx: temp_293_arithop_328, tracked: true } |     a3:Freed { symidx: temp_295_array_ele_328, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label L55_0: 
.L55_0:
              #                    regtab     a0:Freed { symidx: temp_291_array_ele_328, tracked: true } |     a1:Freed { symidx: temp_296_cmp_328, tracked: true } |     a2:Freed { symidx: temp_293_arithop_328, tracked: true } |     a3:Freed { symidx: temp_295_array_ele_328, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label L56_0: 
.L56_0:
              #                    regtab     a0:Freed { symidx: temp_291_array_ele_328, tracked: true } |     a1:Freed { symidx: temp_296_cmp_328, tracked: true } |     a2:Freed { symidx: temp_293_arithop_328, tracked: true } |     a3:Freed { symidx: temp_295_array_ele_328, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label L57_0: 
.L57_0:
              #                    regtab     a0:Freed { symidx: temp_291_array_ele_328, tracked: true } |     a1:Freed { symidx: temp_296_cmp_328, tracked: true } |     a2:Freed { symidx: temp_293_arithop_328, tracked: true } |     a3:Freed { symidx: temp_295_array_ele_328, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label L58_0: 
.L58_0:
              #                    regtab     a0:Freed { symidx: temp_291_array_ele_328, tracked: true } |     a1:Freed { symidx: temp_296_cmp_328, tracked: true } |     a2:Freed { symidx: temp_293_arithop_328, tracked: true } |     a3:Freed { symidx: temp_295_array_ele_328, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label L59_0: 
.L59_0:
              #                          new_var temp_268_ptr2globl_310:i32 
              #                          temp_268_ptr2globl_310 = load *pos_0:ptr->i32 
              #                    occupy s7 with *pos_0
              #                       load label pos as ptr to reg
    la      s7, pos
              #                    occupy reg s7 with *pos_0
              #                    store to temp_291_array_ele_328 in mem offset legal
    sw      a0,524(sp)
              #                    release a0 with temp_291_array_ele_328
              #                    occupy a0 with temp_268_ptr2globl_310
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_269_arithop_310:i32 
              #                          temp_269_arithop_310 = Add i32 temp_268_ptr2globl_310, 4_0 
              #                    occupy a0 with temp_268_ptr2globl_310
              #                    occupy s7 with 4_0
    li      s7, 4
              #                    store to temp_296_cmp_328 in mem offset legal
    sb      a1,499(sp)
              #                    release a1 with temp_296_cmp_328
              #                    occupy a1 with temp_269_arithop_310
    add     a1,a0,s7
              #                    free a0
              #                    free s7
              #                    free a1
              #                          store temp_269_arithop_310:i32 *pos_0:ptr->i32 
              #                    occupy s7 with *pos_0
              #                       load label pos as ptr to reg
    la      s7, pos
              #                    occupy reg s7 with *pos_0
              #                    occupy a1 with temp_269_arithop_310
    sw      a1,0(s7)
              #                    free a1
              #                    free s7
              #                          jump label: L75_0 
    j       .L75_0
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } | 
              #                          label branch_false_309: 
.branch_false_309:
              #                          new_var temp_297_cmp_333:i1 
              #                          temp_297_cmp_333 = icmp i32 Eq type_60, 6_0 
              #                    occupy a0 with type_60
              #                    occupy a1 with 6_0
    li      a1, 6
              #                    occupy s1 with temp_297_cmp_333
    xor     s1,a0,a1
    seqz    s1, s1
              #                    free a0
              #                    free a1
              #                    free s1
              #                          br i1 temp_297_cmp_333, label branch_true_334, label branch_false_334 
              #                    occupy s1 with temp_297_cmp_333
              #                    free s1
              #                    occupy s1 with temp_297_cmp_333
    bnez    s1, .branch_true_334
              #                    free s1
    j       .branch_false_334
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } | 
              #                          label branch_true_334: 
.branch_true_334:
              #                          new_var mFalse_335:Array:i32:[Some(5_0)] 
              #                          new_var temp_298_array_init_ptr_335:ptr->i32 
              #                          temp_298_array_init_ptr_335 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(2_0)] 
              #                    occupy a1 with temp_298_array_init_ptr_335
    li      a1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with 2_0
    li      s3, 2
              #                    occupy s4 with _anonymous_of_mFalse_335_0
    mul     s4,s2,s3
              #                    free s2
              #                    free s3
    add     a1,a1,s4
              #                    free s4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,436
              #                    free a1
              #                          store 108_0:i32 temp_298_array_init_ptr_335:ptr->i32 
              #                    occupy a1 with temp_298_array_init_ptr_335
              #                    occupy s5 with 108_0
    li      s5, 108
    sw      s5,0(a1)
              #                    free s5
              #                    free a1
              #                          mu mFalse_335:1297 
              #                          mFalse_335 = chi mFalse_335:1297 
              #                          new_var temp_299_array_init_ptr_335:ptr->i32 
              #                          temp_299_array_init_ptr_335 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(4_0)] 
              #                    occupy s6 with temp_299_array_init_ptr_335
    li      s6, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s7 with 4_0
    li      s7, 4
              #                    occupy s8 with _anonymous_of_mFalse_335_0
    mul     s8,s2,s7
              #                    free s2
              #                    free s7
    add     s6,s6,s8
              #                    free s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,436
              #                    free s6
              #                          store 101_0:i32 temp_299_array_init_ptr_335:ptr->i32 
              #                    occupy s6 with temp_299_array_init_ptr_335
              #                    occupy s9 with 101_0
    li      s9, 101
    sw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          mu mFalse_335:1303 
              #                          mFalse_335 = chi mFalse_335:1303 
              #                          new_var temp_300_array_init_ptr_335:ptr->i32 
              #                          temp_300_array_init_ptr_335 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(0_0)] 
              #                    occupy s10 with temp_300_array_init_ptr_335
    li      s10, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    occupy s3 with _anonymous_of_mFalse_335_0
    mul     s3,s2,s11
              #                    free s2
              #                    free s11
    add     s10,s10,s3
              #                    free s3
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,436
              #                    free s10
              #                          store 102_0:i32 temp_300_array_init_ptr_335:ptr->i32 
              #                    occupy s10 with temp_300_array_init_ptr_335
              #                    occupy s2 with 102_0
    li      s2, 102
    sw      s2,0(s10)
              #                    free s2
              #                    free s10
              #                          mu mFalse_335:1309 
              #                          mFalse_335 = chi mFalse_335:1309 
              #                          new_var temp_301_array_init_ptr_335:ptr->i32 
              #                          temp_301_array_init_ptr_335 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(1_0)] 
              #                    occupy s2 with temp_301_array_init_ptr_335
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with _anonymous_of_mFalse_335_0
    mul     s5,s3,s4
              #                    free s3
              #                    free s4
    add     s2,s2,s5
              #                    free s5
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,436
              #                    free s2
              #                          store 97_0:i32 temp_301_array_init_ptr_335:ptr->i32 
              #                    occupy s2 with temp_301_array_init_ptr_335
              #                    occupy s3 with 97_0
    li      s3, 97
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          mu mFalse_335:1315 
              #                          mFalse_335 = chi mFalse_335:1315 
              #                          new_var temp_302_array_init_ptr_335:ptr->i32 
              #                          temp_302_array_init_ptr_335 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(3_0)] 
              #                    occupy s3 with temp_302_array_init_ptr_335
    li      s3, 0
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s5 with 3_0
    li      s5, 3
              #                    occupy s7 with _anonymous_of_mFalse_335_0
    mul     s7,s4,s5
              #                    free s4
              #                    free s5
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,436
              #                    free s3
              #                          store 115_0:i32 temp_302_array_init_ptr_335:ptr->i32 
              #                    occupy s3 with temp_302_array_init_ptr_335
              #                    occupy s4 with 115_0
    li      s4, 115
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          mu mFalse_335:1321 
              #                          mFalse_335 = chi mFalse_335:1321 
              #                          jump label: L60_0 
    j       .L60_0
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_298_array_init_ptr_335, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } | 
              #                          label L60_0: 
.L60_0:
              #                          new_var temp_303_ptr2globl_337:i32 
              #                          temp_303_ptr2globl_337 = load *pos_0:ptr->i32 
              #                    occupy s4 with *pos_0
              #                       load label pos as ptr to reg
    la      s4, pos
              #                    occupy reg s4 with *pos_0
              #                    occupy s5 with temp_303_ptr2globl_337
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_304_arithop_337:i32 
              #                          temp_304_arithop_337 = Add i32 temp_303_ptr2globl_337, 4_0 
              #                    occupy s5 with temp_303_ptr2globl_337
              #                    occupy s7 with 4_0
    li      s7, 4
              #                    occupy s8 with temp_304_arithop_337
    add     s8,s5,s7
              #                    free s5
              #                    free s7
              #                    free s8
              #                          new_var temp_305_cmp_337:i1 
              #                          temp_305_cmp_337 = icmp i32 Sge temp_304_arithop_337, len_60 
              #                    occupy s8 with temp_304_arithop_337
              #                    occupy s9 with len_60
              #                    load from len_60 in mem


    lw      s9,1820(sp)
              #                    occupy s11 with temp_305_cmp_337
    slt     s11,s8,s9
    xori    s11,s11,1
              #                    free s8
              #                    free s9
              #                    free s11
              #                          br i1 temp_305_cmp_337, label branch_true_338, label branch_false_338 
              #                    occupy s11 with temp_305_cmp_337
              #                    free s11
              #                    occupy s11 with temp_305_cmp_337
    bnez    s11, .branch_true_338
              #                    free s11
    j       .branch_false_338
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_298_array_init_ptr_335, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_true_338: 
.branch_true_338:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_298_array_init_ptr_335, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_false_338: 
.branch_false_338:
              #                          new_var temp_308_array_ptr_341:ptr->i32 
              #                          temp_308_array_ptr_341 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(0_0)] 
              #                    occupy s4 with temp_308_array_ptr_341
    li      s4, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    store to temp_298_array_init_ptr_335 in mem offset legal
    sd      a1,488(sp)
              #                    release a1 with temp_298_array_init_ptr_335
              #                    occupy a1 with _anonymous_of_mFalse_335_0
    mul     a1,s7,a0
              #                    free s7
              #                    free a0
    add     s4,s4,a1
              #                    free a1
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,436
              #                    free s4
              #                          new_var temp_309_array_ele_341:i32 
              #                          temp_309_array_ele_341 = load temp_308_array_ptr_341:ptr->i32 
              #                    occupy s4 with temp_308_array_ptr_341
              #                    occupy a0 with temp_309_array_ele_341
    lw      a0,0(s4)
              #                    free a0
              #                    free s4
              #                          new_var temp_310_ptr2globl_341:i32 
              #                          temp_310_ptr2globl_341 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s7 with temp_310_ptr2globl_341
    lw      s7,0(a1)
              #                    free s7
              #                    free a1
              #                          new_var temp_311_array_ptr_341:ptr->i32 
              #                          temp_311_array_ptr_341 = getelementptr buf_60:ptr->i32 [Some(temp_310_ptr2globl_341)] 
              #                    occupy a1 with temp_311_array_ptr_341
    li      a1, 0
              #                    store to temp_309_array_ele_341 in mem offset legal
    sw      a0,404(sp)
              #                    release a0 with temp_309_array_ele_341
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s7 with temp_310_ptr2globl_341
              #                    store to temp_31_cmp_68 in mem offset legal
    sb      a2,1814(sp)
              #                    release a2 with temp_31_cmp_68
              #                    occupy a2 with _anonymous_of_buf_60_0
    mul     a2,a0,s7
              #                    free a0
              #                    free s7
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_312_array_ele_341:i32 
              #                          temp_312_array_ele_341 = load temp_311_array_ptr_341:ptr->i32 
              #                    occupy a1 with temp_311_array_ptr_341
              #                    occupy a2 with temp_312_array_ele_341
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_313_cmp_341:i1 
              #                          temp_313_cmp_341 = icmp i32 Ne temp_312_array_ele_341, temp_309_array_ele_341 
              #                    occupy a2 with temp_312_array_ele_341
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_309_array_ele_341
              #                    load from temp_309_array_ele_341 in mem


    lw      a0,404(sp)
              #                    store to temp_311_array_ptr_341 in mem offset legal
    sd      a1,392(sp)
              #                    release a1 with temp_311_array_ptr_341
              #                    occupy a1 with temp_313_cmp_341
    xor     a1,a2,a0
    snez    a1, a1
              #                    free a2
              #                    free a0
              #                    free a1
              #                          br i1 temp_313_cmp_341, label branch_true_342, label branch_false_342 
              #                    occupy a1 with temp_313_cmp_341
              #                    free a1
              #                    store to temp_310_ptr2globl_341 in mem offset legal
    sw      s7,400(sp)
              #                    release s7 with temp_310_ptr2globl_341
              #                    occupy a1 with temp_313_cmp_341
    bnez    a1, .branch_true_342
              #                    free a1
    j       .branch_false_342
              #                    regtab     a0:Freed { symidx: temp_309_array_ele_341, tracked: true } |     a1:Freed { symidx: temp_313_cmp_341, tracked: true } |     a2:Freed { symidx: temp_312_array_ele_341, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_true_342: 
.branch_true_342:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_309_array_ele_341 in mem offset legal
    sw      a0,404(sp)
              #                    release a0 with temp_309_array_ele_341
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_309_array_ele_341, tracked: true } |     a1:Freed { symidx: temp_313_cmp_341, tracked: true } |     a2:Freed { symidx: temp_312_array_ele_341, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_false_342: 
.branch_false_342:
              #                          new_var temp_314_array_ptr_345:ptr->i32 
              #                          temp_314_array_ptr_345 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(1_0)] 
              #                    occupy s7 with temp_314_array_ptr_345
    li      s7, 0
              #                    store to temp_309_array_ele_341 in mem offset legal
    sw      a0,404(sp)
              #                    release a0 with temp_309_array_ele_341
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_313_cmp_341 in mem offset legal
    sb      a1,387(sp)
              #                    release a1 with temp_313_cmp_341
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_312_array_ele_341 in mem offset legal
    sw      a2,388(sp)
              #                    release a2 with temp_312_array_ele_341
              #                    occupy a2 with _anonymous_of_mFalse_335_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,436
              #                    free s7
              #                          new_var temp_315_array_ele_345:i32 
              #                          temp_315_array_ele_345 = load temp_314_array_ptr_345:ptr->i32 
              #                    occupy s7 with temp_314_array_ptr_345
              #                    occupy a0 with temp_315_array_ele_345
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_316_ptr2globl_345:i32 
              #                          temp_316_ptr2globl_345 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_316_ptr2globl_345
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_317_arithop_345:i32 
              #                          temp_317_arithop_345 = Add i32 temp_316_ptr2globl_345, 1_0 
              #                    occupy a2 with temp_316_ptr2globl_345
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_315_array_ele_345 in mem offset legal
    sw      a0,372(sp)
              #                    release a0 with temp_315_array_ele_345
              #                    occupy a0 with temp_317_arithop_345
    add     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_318_array_ptr_345:ptr->i32 
              #                          temp_318_array_ptr_345 = getelementptr buf_60:ptr->i32 [Some(temp_317_arithop_345)] 
              #                    occupy a1 with temp_318_array_ptr_345
    li      a1, 0
              #                    store to temp_317_arithop_345 in mem offset legal
    sw      a0,364(sp)
              #                    release a0 with temp_317_arithop_345
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_316_ptr2globl_345 in mem offset legal
    sw      a2,368(sp)
              #                    release a2 with temp_316_ptr2globl_345
              #                    occupy a2 with temp_317_arithop_345
              #                    load from temp_317_arithop_345 in mem


    lw      a2,364(sp)
              #                    store to temp_78_cmp_109 in mem offset legal
    sb      a3,1587(sp)
              #                    release a3 with temp_78_cmp_109
              #                    occupy a3 with _anonymous_of_buf_60_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_319_array_ele_345:i32 
              #                          temp_319_array_ele_345 = load temp_318_array_ptr_345:ptr->i32 
              #                    occupy a1 with temp_318_array_ptr_345
              #                    occupy a3 with temp_319_array_ele_345
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_320_cmp_345:i1 
              #                          temp_320_cmp_345 = icmp i32 Ne temp_319_array_ele_345, temp_315_array_ele_345 
              #                    occupy a3 with temp_319_array_ele_345
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_315_array_ele_345
              #                    load from temp_315_array_ele_345 in mem


    lw      a0,372(sp)
              #                    store to temp_318_array_ptr_345 in mem offset legal
    sd      a1,352(sp)
              #                    release a1 with temp_318_array_ptr_345
              #                    occupy a1 with temp_320_cmp_345
    xor     a1,a3,a0
    snez    a1, a1
              #                    free a3
              #                    free a0
              #                    free a1
              #                          br i1 temp_320_cmp_345, label branch_true_346, label branch_false_346 
              #                    occupy a1 with temp_320_cmp_345
              #                    free a1
              #                    store to temp_314_array_ptr_345 in mem offset legal
    sd      s7,376(sp)
              #                    release s7 with temp_314_array_ptr_345
              #                    occupy a1 with temp_320_cmp_345
    bnez    a1, .branch_true_346
              #                    free a1
    j       .branch_false_346
              #                    regtab     a0:Freed { symidx: temp_315_array_ele_345, tracked: true } |     a1:Freed { symidx: temp_320_cmp_345, tracked: true } |     a2:Freed { symidx: temp_317_arithop_345, tracked: true } |     a3:Freed { symidx: temp_319_array_ele_345, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_true_346: 
.branch_true_346:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_315_array_ele_345 in mem offset legal
    sw      a0,372(sp)
              #                    release a0 with temp_315_array_ele_345
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_315_array_ele_345, tracked: true } |     a1:Freed { symidx: temp_320_cmp_345, tracked: true } |     a2:Freed { symidx: temp_317_arithop_345, tracked: true } |     a3:Freed { symidx: temp_319_array_ele_345, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_false_346: 
.branch_false_346:
              #                          new_var temp_321_array_ptr_349:ptr->i32 
              #                          temp_321_array_ptr_349 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(2_0)] 
              #                    occupy s7 with temp_321_array_ptr_349
    li      s7, 0
              #                    store to temp_315_array_ele_345 in mem offset legal
    sw      a0,372(sp)
              #                    release a0 with temp_315_array_ele_345
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_320_cmp_345 in mem offset legal
    sb      a1,347(sp)
              #                    release a1 with temp_320_cmp_345
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    store to temp_317_arithop_345 in mem offset legal
    sw      a2,364(sp)
              #                    release a2 with temp_317_arithop_345
              #                    occupy a2 with _anonymous_of_mFalse_335_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,436
              #                    free s7
              #                          new_var temp_322_array_ele_349:i32 
              #                          temp_322_array_ele_349 = load temp_321_array_ptr_349:ptr->i32 
              #                    occupy s7 with temp_321_array_ptr_349
              #                    occupy a0 with temp_322_array_ele_349
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_323_ptr2globl_349:i32 
              #                          temp_323_ptr2globl_349 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_323_ptr2globl_349
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_324_arithop_349:i32 
              #                          temp_324_arithop_349 = Add i32 temp_323_ptr2globl_349, 2_0 
              #                    occupy a2 with temp_323_ptr2globl_349
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    store to temp_322_array_ele_349 in mem offset legal
    sw      a0,332(sp)
              #                    release a0 with temp_322_array_ele_349
              #                    occupy a0 with temp_324_arithop_349
    add     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_325_array_ptr_349:ptr->i32 
              #                          temp_325_array_ptr_349 = getelementptr buf_60:ptr->i32 [Some(temp_324_arithop_349)] 
              #                    occupy a1 with temp_325_array_ptr_349
    li      a1, 0
              #                    store to temp_324_arithop_349 in mem offset legal
    sw      a0,324(sp)
              #                    release a0 with temp_324_arithop_349
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_323_ptr2globl_349 in mem offset legal
    sw      a2,328(sp)
              #                    release a2 with temp_323_ptr2globl_349
              #                    occupy a2 with temp_324_arithop_349
              #                    load from temp_324_arithop_349 in mem


    lw      a2,324(sp)
              #                    store to temp_319_array_ele_345 in mem offset legal
    sw      a3,348(sp)
              #                    release a3 with temp_319_array_ele_345
              #                    occupy a3 with _anonymous_of_buf_60_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_326_array_ele_349:i32 
              #                          temp_326_array_ele_349 = load temp_325_array_ptr_349:ptr->i32 
              #                    occupy a1 with temp_325_array_ptr_349
              #                    occupy a3 with temp_326_array_ele_349
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_327_cmp_349:i1 
              #                          temp_327_cmp_349 = icmp i32 Ne temp_326_array_ele_349, temp_322_array_ele_349 
              #                    occupy a3 with temp_326_array_ele_349
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_322_array_ele_349
              #                    load from temp_322_array_ele_349 in mem


    lw      a0,332(sp)
              #                    store to temp_325_array_ptr_349 in mem offset legal
    sd      a1,312(sp)
              #                    release a1 with temp_325_array_ptr_349
              #                    occupy a1 with temp_327_cmp_349
    xor     a1,a3,a0
    snez    a1, a1
              #                    free a3
              #                    free a0
              #                    free a1
              #                          br i1 temp_327_cmp_349, label branch_true_350, label branch_false_350 
              #                    occupy a1 with temp_327_cmp_349
              #                    free a1
              #                    store to temp_321_array_ptr_349 in mem offset legal
    sd      s7,336(sp)
              #                    release s7 with temp_321_array_ptr_349
              #                    occupy a1 with temp_327_cmp_349
    bnez    a1, .branch_true_350
              #                    free a1
    j       .branch_false_350
              #                    regtab     a0:Freed { symidx: temp_322_array_ele_349, tracked: true } |     a1:Freed { symidx: temp_327_cmp_349, tracked: true } |     a2:Freed { symidx: temp_324_arithop_349, tracked: true } |     a3:Freed { symidx: temp_326_array_ele_349, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_true_350: 
.branch_true_350:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_322_array_ele_349 in mem offset legal
    sw      a0,332(sp)
              #                    release a0 with temp_322_array_ele_349
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_322_array_ele_349, tracked: true } |     a1:Freed { symidx: temp_327_cmp_349, tracked: true } |     a2:Freed { symidx: temp_324_arithop_349, tracked: true } |     a3:Freed { symidx: temp_326_array_ele_349, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_false_350: 
.branch_false_350:
              #                          new_var temp_328_array_ptr_353:ptr->i32 
              #                          temp_328_array_ptr_353 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(3_0)] 
              #                    occupy s7 with temp_328_array_ptr_353
    li      s7, 0
              #                    store to temp_322_array_ele_349 in mem offset legal
    sw      a0,332(sp)
              #                    release a0 with temp_322_array_ele_349
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_327_cmp_349 in mem offset legal
    sb      a1,307(sp)
              #                    release a1 with temp_327_cmp_349
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    store to temp_324_arithop_349 in mem offset legal
    sw      a2,324(sp)
              #                    release a2 with temp_324_arithop_349
              #                    occupy a2 with _anonymous_of_mFalse_335_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,436
              #                    free s7
              #                          new_var temp_329_array_ele_353:i32 
              #                          temp_329_array_ele_353 = load temp_328_array_ptr_353:ptr->i32 
              #                    occupy s7 with temp_328_array_ptr_353
              #                    occupy a0 with temp_329_array_ele_353
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_330_ptr2globl_353:i32 
              #                          temp_330_ptr2globl_353 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_330_ptr2globl_353
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_331_arithop_353:i32 
              #                          temp_331_arithop_353 = Add i32 temp_330_ptr2globl_353, 3_0 
              #                    occupy a2 with temp_330_ptr2globl_353
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    store to temp_329_array_ele_353 in mem offset legal
    sw      a0,292(sp)
              #                    release a0 with temp_329_array_ele_353
              #                    occupy a0 with temp_331_arithop_353
    add     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_332_array_ptr_353:ptr->i32 
              #                          temp_332_array_ptr_353 = getelementptr buf_60:ptr->i32 [Some(temp_331_arithop_353)] 
              #                    occupy a1 with temp_332_array_ptr_353
    li      a1, 0
              #                    store to temp_331_arithop_353 in mem offset legal
    sw      a0,284(sp)
              #                    release a0 with temp_331_arithop_353
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_330_ptr2globl_353 in mem offset legal
    sw      a2,288(sp)
              #                    release a2 with temp_330_ptr2globl_353
              #                    occupy a2 with temp_331_arithop_353
              #                    load from temp_331_arithop_353 in mem


    lw      a2,284(sp)
              #                    store to temp_326_array_ele_349 in mem offset legal
    sw      a3,308(sp)
              #                    release a3 with temp_326_array_ele_349
              #                    occupy a3 with _anonymous_of_buf_60_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_333_array_ele_353:i32 
              #                          temp_333_array_ele_353 = load temp_332_array_ptr_353:ptr->i32 
              #                    occupy a1 with temp_332_array_ptr_353
              #                    occupy a3 with temp_333_array_ele_353
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_334_cmp_353:i1 
              #                          temp_334_cmp_353 = icmp i32 Ne temp_333_array_ele_353, temp_329_array_ele_353 
              #                    occupy a3 with temp_333_array_ele_353
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_329_array_ele_353
              #                    load from temp_329_array_ele_353 in mem


    lw      a0,292(sp)
              #                    store to temp_332_array_ptr_353 in mem offset legal
    sd      a1,272(sp)
              #                    release a1 with temp_332_array_ptr_353
              #                    occupy a1 with temp_334_cmp_353
    xor     a1,a3,a0
    snez    a1, a1
              #                    free a3
              #                    free a0
              #                    free a1
              #                          br i1 temp_334_cmp_353, label branch_true_354, label branch_false_354 
              #                    occupy a1 with temp_334_cmp_353
              #                    free a1
              #                    store to temp_328_array_ptr_353 in mem offset legal
    sd      s7,296(sp)
              #                    release s7 with temp_328_array_ptr_353
              #                    occupy a1 with temp_334_cmp_353
    bnez    a1, .branch_true_354
              #                    free a1
    j       .branch_false_354
              #                    regtab     a0:Freed { symidx: temp_329_array_ele_353, tracked: true } |     a1:Freed { symidx: temp_334_cmp_353, tracked: true } |     a2:Freed { symidx: temp_331_arithop_353, tracked: true } |     a3:Freed { symidx: temp_333_array_ele_353, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_true_354: 
.branch_true_354:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_329_array_ele_353 in mem offset legal
    sw      a0,292(sp)
              #                    release a0 with temp_329_array_ele_353
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_329_array_ele_353, tracked: true } |     a1:Freed { symidx: temp_334_cmp_353, tracked: true } |     a2:Freed { symidx: temp_331_arithop_353, tracked: true } |     a3:Freed { symidx: temp_333_array_ele_353, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_false_354: 
.branch_false_354:
              #                          new_var temp_335_array_ptr_357:ptr->i32 
              #                          temp_335_array_ptr_357 = getelementptr mFalse_335:Array:i32:[Some(5_0)] [Some(4_0)] 
              #                    occupy s7 with temp_335_array_ptr_357
    li      s7, 0
              #                    store to temp_329_array_ele_353 in mem offset legal
    sw      a0,292(sp)
              #                    release a0 with temp_329_array_ele_353
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_334_cmp_353 in mem offset legal
    sb      a1,267(sp)
              #                    release a1 with temp_334_cmp_353
              #                    occupy a1 with 4_0
    li      a1, 4
              #                    store to temp_331_arithop_353 in mem offset legal
    sw      a2,284(sp)
              #                    release a2 with temp_331_arithop_353
              #                    occupy a2 with _anonymous_of_mFalse_335_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,436
              #                    free s7
              #                          new_var temp_336_array_ele_357:i32 
              #                          temp_336_array_ele_357 = load temp_335_array_ptr_357:ptr->i32 
              #                    occupy s7 with temp_335_array_ptr_357
              #                    occupy a0 with temp_336_array_ele_357
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_337_ptr2globl_357:i32 
              #                          temp_337_ptr2globl_357 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_337_ptr2globl_357
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_338_arithop_357:i32 
              #                          temp_338_arithop_357 = Add i32 temp_337_ptr2globl_357, 4_0 
              #                    occupy a2 with temp_337_ptr2globl_357
              #                    occupy a1 with 4_0
    li      a1, 4
              #                    store to temp_336_array_ele_357 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with temp_336_array_ele_357
              #                    occupy a0 with temp_338_arithop_357
    add     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_339_array_ptr_357:ptr->i32 
              #                          temp_339_array_ptr_357 = getelementptr buf_60:ptr->i32 [Some(temp_338_arithop_357)] 
              #                    occupy a1 with temp_339_array_ptr_357
    li      a1, 0
              #                    store to temp_338_arithop_357 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with temp_338_arithop_357
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_337_ptr2globl_357 in mem offset legal
    sw      a2,248(sp)
              #                    release a2 with temp_337_ptr2globl_357
              #                    occupy a2 with temp_338_arithop_357
              #                    load from temp_338_arithop_357 in mem


    lw      a2,244(sp)
              #                    store to temp_333_array_ele_353 in mem offset legal
    sw      a3,268(sp)
              #                    release a3 with temp_333_array_ele_353
              #                    occupy a3 with _anonymous_of_buf_60_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_340_array_ele_357:i32 
              #                          temp_340_array_ele_357 = load temp_339_array_ptr_357:ptr->i32 
              #                    occupy a1 with temp_339_array_ptr_357
              #                    occupy a3 with temp_340_array_ele_357
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_341_cmp_357:i1 
              #                          temp_341_cmp_357 = icmp i32 Ne temp_340_array_ele_357, temp_336_array_ele_357 
              #                    occupy a3 with temp_340_array_ele_357
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_336_array_ele_357
              #                    load from temp_336_array_ele_357 in mem


    lw      a0,252(sp)
              #                    store to temp_339_array_ptr_357 in mem offset legal
    sd      a1,232(sp)
              #                    release a1 with temp_339_array_ptr_357
              #                    occupy a1 with temp_341_cmp_357
    xor     a1,a3,a0
    snez    a1, a1
              #                    free a3
              #                    free a0
              #                    free a1
              #                          br i1 temp_341_cmp_357, label branch_true_358, label branch_false_358 
              #                    occupy a1 with temp_341_cmp_357
              #                    free a1
              #                    store to temp_335_array_ptr_357 in mem offset legal
    sd      s7,256(sp)
              #                    release s7 with temp_335_array_ptr_357
              #                    occupy a1 with temp_341_cmp_357
    bnez    a1, .branch_true_358
              #                    free a1
    j       .branch_false_358
              #                    regtab     a0:Freed { symidx: temp_336_array_ele_357, tracked: true } |     a1:Freed { symidx: temp_341_cmp_357, tracked: true } |     a2:Freed { symidx: temp_338_arithop_357, tracked: true } |     a3:Freed { symidx: temp_340_array_ele_357, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_true_358: 
.branch_true_358:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_336_array_ele_357 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with temp_336_array_ele_357
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_336_array_ele_357, tracked: true } |     a1:Freed { symidx: temp_341_cmp_357, tracked: true } |     a2:Freed { symidx: temp_338_arithop_357, tracked: true } |     a3:Freed { symidx: temp_340_array_ele_357, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_false_358: 
.branch_false_358:
              #                    regtab     a0:Freed { symidx: temp_336_array_ele_357, tracked: true } |     a1:Freed { symidx: temp_341_cmp_357, tracked: true } |     a2:Freed { symidx: temp_338_arithop_357, tracked: true } |     a3:Freed { symidx: temp_340_array_ele_357, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L61_0: 
.L61_0:
              #                    regtab     a0:Freed { symidx: temp_336_array_ele_357, tracked: true } |     a1:Freed { symidx: temp_341_cmp_357, tracked: true } |     a2:Freed { symidx: temp_338_arithop_357, tracked: true } |     a3:Freed { symidx: temp_340_array_ele_357, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L62_0: 
.L62_0:
              #                    regtab     a0:Freed { symidx: temp_336_array_ele_357, tracked: true } |     a1:Freed { symidx: temp_341_cmp_357, tracked: true } |     a2:Freed { symidx: temp_338_arithop_357, tracked: true } |     a3:Freed { symidx: temp_340_array_ele_357, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L63_0: 
.L63_0:
              #                    regtab     a0:Freed { symidx: temp_336_array_ele_357, tracked: true } |     a1:Freed { symidx: temp_341_cmp_357, tracked: true } |     a2:Freed { symidx: temp_338_arithop_357, tracked: true } |     a3:Freed { symidx: temp_340_array_ele_357, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L64_0: 
.L64_0:
              #                    regtab     a0:Freed { symidx: temp_336_array_ele_357, tracked: true } |     a1:Freed { symidx: temp_341_cmp_357, tracked: true } |     a2:Freed { symidx: temp_338_arithop_357, tracked: true } |     a3:Freed { symidx: temp_340_array_ele_357, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L65_0: 
.L65_0:
              #                    regtab     a0:Freed { symidx: temp_336_array_ele_357, tracked: true } |     a1:Freed { symidx: temp_341_cmp_357, tracked: true } |     a2:Freed { symidx: temp_338_arithop_357, tracked: true } |     a3:Freed { symidx: temp_340_array_ele_357, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L66_0: 
.L66_0:
              #                          new_var temp_306_ptr2globl_335:i32 
              #                          temp_306_ptr2globl_335 = load *pos_0:ptr->i32 
              #                    occupy s7 with *pos_0
              #                       load label pos as ptr to reg
    la      s7, pos
              #                    occupy reg s7 with *pos_0
              #                    store to temp_336_array_ele_357 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with temp_336_array_ele_357
              #                    occupy a0 with temp_306_ptr2globl_335
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_307_arithop_335:i32 
              #                          temp_307_arithop_335 = Add i32 temp_306_ptr2globl_335, 5_0 
              #                    occupy a0 with temp_306_ptr2globl_335
              #                    occupy s7 with 5_0
    li      s7, 5
              #                    store to temp_341_cmp_357 in mem offset legal
    sb      a1,227(sp)
              #                    release a1 with temp_341_cmp_357
              #                    occupy a1 with temp_307_arithop_335
    add     a1,a0,s7
              #                    free a0
              #                    free s7
              #                    free a1
              #                          store temp_307_arithop_335:i32 *pos_0:ptr->i32 
              #                    occupy s7 with *pos_0
              #                       load label pos as ptr to reg
    la      s7, pos
              #                    occupy reg s7 with *pos_0
              #                    occupy a1 with temp_307_arithop_335
    sw      a1,0(s7)
              #                    free a1
              #                    free s7
              #                          jump label: L74_0 
    j       .L74_0
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } | 
              #                          label branch_false_334: 
.branch_false_334:
              #                          new_var temp_342_cmp_362:i1 
              #                          temp_342_cmp_362 = icmp i32 Eq type_60, 7_0 
              #                    occupy a0 with type_60
              #                    occupy a1 with 7_0
    li      a1, 7
              #                    occupy s2 with temp_342_cmp_362
    xor     s2,a0,a1
    seqz    s2, s2
              #                    free a0
              #                    free a1
              #                    free s2
              #                          br i1 temp_342_cmp_362, label branch_true_363, label branch_false_363 
              #                    occupy s2 with temp_342_cmp_362
              #                    free s2
              #                    occupy s2 with temp_342_cmp_362
    bnez    s2, .branch_true_363
              #                    free s2
    j       .branch_false_363
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } | 
              #                          label branch_true_363: 
.branch_true_363:
              #                          new_var mNull_364:Array:i32:[Some(4_0)] 
              #                          new_var temp_343_array_init_ptr_364:ptr->i32 
              #                          temp_343_array_init_ptr_364 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(2_0)] 
              #                    occupy a1 with temp_343_array_init_ptr_364
    li      a1, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with 2_0
    li      s4, 2
              #                    occupy s5 with _anonymous_of_mNull_364_0
    mul     s5,s3,s4
              #                    free s3
              #                    free s4
    add     a1,a1,s5
              #                    free s5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,176
              #                    free a1
              #                          store 108_0:i32 temp_343_array_init_ptr_364:ptr->i32 
              #                    occupy a1 with temp_343_array_init_ptr_364
              #                    occupy s6 with 108_0
    li      s6, 108
    sw      s6,0(a1)
              #                    free s6
              #                    free a1
              #                          mu mNull_364:1483 
              #                          mNull_364 = chi mNull_364:1483 
              #                          new_var temp_344_array_init_ptr_364:ptr->i32 
              #                          temp_344_array_init_ptr_364 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(3_0)] 
              #                    occupy s7 with temp_344_array_init_ptr_364
    li      s7, 0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s8 with 3_0
    li      s8, 3
              #                    occupy s9 with _anonymous_of_mNull_364_0
    mul     s9,s3,s8
              #                    free s3
              #                    free s8
    add     s7,s7,s9
              #                    free s9
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,176
              #                    free s7
              #                          store 108_0:i32 temp_344_array_init_ptr_364:ptr->i32 
              #                    occupy s7 with temp_344_array_init_ptr_364
              #                    found literal reg Some(s6) already exist with 108_0
              #                    occupy s6 with 108_0
    sw      s6,0(s7)
              #                    free s6
              #                    free s7
              #                          mu mNull_364:1489 
              #                          mNull_364 = chi mNull_364:1489 
              #                          new_var temp_345_array_init_ptr_364:ptr->i32 
              #                          temp_345_array_init_ptr_364 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(0_0)] 
              #                    occupy s10 with temp_345_array_init_ptr_364
    li      s10, 0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    occupy s4 with _anonymous_of_mNull_364_0
    mul     s4,s3,s11
              #                    free s3
              #                    free s11
    add     s10,s10,s4
              #                    free s4
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,176
              #                    free s10
              #                          store 110_0:i32 temp_345_array_init_ptr_364:ptr->i32 
              #                    occupy s10 with temp_345_array_init_ptr_364
              #                    occupy s3 with 110_0
    li      s3, 110
    sw      s3,0(s10)
              #                    free s3
              #                    free s10
              #                          mu mNull_364:1495 
              #                          mNull_364 = chi mNull_364:1495 
              #                          new_var temp_346_array_init_ptr_364:ptr->i32 
              #                          temp_346_array_init_ptr_364 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(1_0)] 
              #                    occupy s3 with temp_346_array_init_ptr_364
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with _anonymous_of_mNull_364_0
    mul     s6,s4,s5
              #                    free s4
              #                    free s5
    add     s3,s3,s6
              #                    free s6
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,176
              #                    free s3
              #                          store 117_0:i32 temp_346_array_init_ptr_364:ptr->i32 
              #                    occupy s3 with temp_346_array_init_ptr_364
              #                    occupy s4 with 117_0
    li      s4, 117
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          mu mNull_364:1501 
              #                          mNull_364 = chi mNull_364:1501 
              #                          jump label: L67_0 
    j       .L67_0
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_343_array_init_ptr_364, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s7:Freed { symidx: temp_344_array_init_ptr_364, tracked: true } | 
              #                          label L67_0: 
.L67_0:
              #                          new_var temp_347_ptr2globl_366:i32 
              #                          temp_347_ptr2globl_366 = load *pos_0:ptr->i32 
              #                    occupy s4 with *pos_0
              #                       load label pos as ptr to reg
    la      s4, pos
              #                    occupy reg s4 with *pos_0
              #                    occupy s5 with temp_347_ptr2globl_366
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_348_arithop_366:i32 
              #                          temp_348_arithop_366 = Add i32 temp_347_ptr2globl_366, 3_0 
              #                    occupy s5 with temp_347_ptr2globl_366
              #                    occupy s6 with 3_0
    li      s6, 3
              #                    occupy s8 with temp_348_arithop_366
    add     s8,s5,s6
              #                    free s5
              #                    free s6
              #                    free s8
              #                          new_var temp_349_cmp_366:i1 
              #                          temp_349_cmp_366 = icmp i32 Sge temp_348_arithop_366, len_60 
              #                    occupy s8 with temp_348_arithop_366
              #                    occupy s9 with len_60
              #                    load from len_60 in mem


    lw      s9,1820(sp)
              #                    occupy s11 with temp_349_cmp_366
    slt     s11,s8,s9
    xori    s11,s11,1
              #                    free s8
              #                    free s9
              #                    free s11
              #                          br i1 temp_349_cmp_366, label branch_true_367, label branch_false_367 
              #                    occupy s11 with temp_349_cmp_366
              #                    free s11
              #                    occupy s11 with temp_349_cmp_366
    bnez    s11, .branch_true_367
              #                    free s11
    j       .branch_false_367
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_343_array_init_ptr_364, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s7:Freed { symidx: temp_344_array_init_ptr_364, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_true_367: 
.branch_true_367:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_343_array_init_ptr_364, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s7:Freed { symidx: temp_344_array_init_ptr_364, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_false_367: 
.branch_false_367:
              #                          new_var temp_352_array_ptr_370:ptr->i32 
              #                          temp_352_array_ptr_370 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(0_0)] 
              #                    occupy s4 with temp_352_array_ptr_370
    li      s4, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    store to temp_343_array_init_ptr_364 in mem offset legal
    sd      a1,216(sp)
              #                    release a1 with temp_343_array_init_ptr_364
              #                    occupy a1 with _anonymous_of_mNull_364_0
    mul     a1,s6,a0
              #                    free s6
              #                    free a0
    add     s4,s4,a1
              #                    free a1
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,176
              #                    free s4
              #                          new_var temp_353_array_ele_370:i32 
              #                          temp_353_array_ele_370 = load temp_352_array_ptr_370:ptr->i32 
              #                    occupy s4 with temp_352_array_ptr_370
              #                    occupy a0 with temp_353_array_ele_370
    lw      a0,0(s4)
              #                    free a0
              #                    free s4
              #                          new_var temp_354_ptr2globl_370:i32 
              #                          temp_354_ptr2globl_370 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy s6 with temp_354_ptr2globl_370
    lw      s6,0(a1)
              #                    free s6
              #                    free a1
              #                          new_var temp_355_array_ptr_370:ptr->i32 
              #                          temp_355_array_ptr_370 = getelementptr buf_60:ptr->i32 [Some(temp_354_ptr2globl_370)] 
              #                    occupy a1 with temp_355_array_ptr_370
    li      a1, 0
              #                    store to temp_353_array_ele_370 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_353_array_ele_370
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s6 with temp_354_ptr2globl_370
              #                    store to temp_31_cmp_68 in mem offset legal
    sb      a2,1814(sp)
              #                    release a2 with temp_31_cmp_68
              #                    occupy a2 with _anonymous_of_buf_60_0
    mul     a2,a0,s6
              #                    free a0
              #                    free s6
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_356_array_ele_370:i32 
              #                          temp_356_array_ele_370 = load temp_355_array_ptr_370:ptr->i32 
              #                    occupy a1 with temp_355_array_ptr_370
              #                    occupy a2 with temp_356_array_ele_370
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_357_cmp_370:i1 
              #                          temp_357_cmp_370 = icmp i32 Ne temp_356_array_ele_370, temp_353_array_ele_370 
              #                    occupy a2 with temp_356_array_ele_370
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_353_array_ele_370
              #                    load from temp_353_array_ele_370 in mem


    lw      a0,140(sp)
              #                    store to temp_355_array_ptr_370 in mem offset legal
    sd      a1,128(sp)
              #                    release a1 with temp_355_array_ptr_370
              #                    occupy a1 with temp_357_cmp_370
    xor     a1,a2,a0
    snez    a1, a1
              #                    free a2
              #                    free a0
              #                    free a1
              #                          br i1 temp_357_cmp_370, label branch_true_371, label branch_false_371 
              #                    occupy a1 with temp_357_cmp_370
              #                    free a1
              #                    store to temp_344_array_init_ptr_364 in mem offset legal
    sd      s7,208(sp)
              #                    release s7 with temp_344_array_init_ptr_364
              #                    occupy a1 with temp_357_cmp_370
    bnez    a1, .branch_true_371
              #                    free a1
    j       .branch_false_371
              #                    regtab     a0:Freed { symidx: temp_353_array_ele_370, tracked: true } |     a1:Freed { symidx: temp_357_cmp_370, tracked: true } |     a2:Freed { symidx: temp_356_array_ele_370, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_true_371: 
.branch_true_371:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_353_array_ele_370 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_353_array_ele_370
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_353_array_ele_370, tracked: true } |     a1:Freed { symidx: temp_357_cmp_370, tracked: true } |     a2:Freed { symidx: temp_356_array_ele_370, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_false_371: 
.branch_false_371:
              #                          new_var temp_358_array_ptr_374:ptr->i32 
              #                          temp_358_array_ptr_374 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(1_0)] 
              #                    occupy s7 with temp_358_array_ptr_374
    li      s7, 0
              #                    store to temp_353_array_ele_370 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_353_array_ele_370
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_357_cmp_370 in mem offset legal
    sb      a1,123(sp)
              #                    release a1 with temp_357_cmp_370
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_356_array_ele_370 in mem offset legal
    sw      a2,124(sp)
              #                    release a2 with temp_356_array_ele_370
              #                    occupy a2 with _anonymous_of_mNull_364_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,176
              #                    free s7
              #                          new_var temp_359_array_ele_374:i32 
              #                          temp_359_array_ele_374 = load temp_358_array_ptr_374:ptr->i32 
              #                    occupy s7 with temp_358_array_ptr_374
              #                    occupy a0 with temp_359_array_ele_374
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_360_ptr2globl_374:i32 
              #                          temp_360_ptr2globl_374 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_360_ptr2globl_374
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_361_arithop_374:i32 
              #                          temp_361_arithop_374 = Add i32 temp_360_ptr2globl_374, 1_0 
              #                    occupy a2 with temp_360_ptr2globl_374
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_359_array_ele_374 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_359_array_ele_374
              #                    occupy a0 with temp_361_arithop_374
    add     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_362_array_ptr_374:ptr->i32 
              #                          temp_362_array_ptr_374 = getelementptr buf_60:ptr->i32 [Some(temp_361_arithop_374)] 
              #                    occupy a1 with temp_362_array_ptr_374
    li      a1, 0
              #                    store to temp_361_arithop_374 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_361_arithop_374
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_360_ptr2globl_374 in mem offset legal
    sw      a2,104(sp)
              #                    release a2 with temp_360_ptr2globl_374
              #                    occupy a2 with temp_361_arithop_374
              #                    load from temp_361_arithop_374 in mem


    lw      a2,100(sp)
              #                    store to temp_78_cmp_109 in mem offset legal
    sb      a3,1587(sp)
              #                    release a3 with temp_78_cmp_109
              #                    occupy a3 with _anonymous_of_buf_60_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_363_array_ele_374:i32 
              #                          temp_363_array_ele_374 = load temp_362_array_ptr_374:ptr->i32 
              #                    occupy a1 with temp_362_array_ptr_374
              #                    occupy a3 with temp_363_array_ele_374
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_364_cmp_374:i1 
              #                          temp_364_cmp_374 = icmp i32 Ne temp_363_array_ele_374, temp_359_array_ele_374 
              #                    occupy a3 with temp_363_array_ele_374
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_359_array_ele_374
              #                    load from temp_359_array_ele_374 in mem


    lw      a0,108(sp)
              #                    store to temp_362_array_ptr_374 in mem offset legal
    sd      a1,88(sp)
              #                    release a1 with temp_362_array_ptr_374
              #                    occupy a1 with temp_364_cmp_374
    xor     a1,a3,a0
    snez    a1, a1
              #                    free a3
              #                    free a0
              #                    free a1
              #                          br i1 temp_364_cmp_374, label branch_true_375, label branch_false_375 
              #                    occupy a1 with temp_364_cmp_374
              #                    free a1
              #                    store to temp_358_array_ptr_374 in mem offset legal
    sd      s7,112(sp)
              #                    release s7 with temp_358_array_ptr_374
              #                    occupy a1 with temp_364_cmp_374
    bnez    a1, .branch_true_375
              #                    free a1
    j       .branch_false_375
              #                    regtab     a0:Freed { symidx: temp_359_array_ele_374, tracked: true } |     a1:Freed { symidx: temp_364_cmp_374, tracked: true } |     a2:Freed { symidx: temp_361_arithop_374, tracked: true } |     a3:Freed { symidx: temp_363_array_ele_374, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_true_375: 
.branch_true_375:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_359_array_ele_374 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_359_array_ele_374
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_359_array_ele_374, tracked: true } |     a1:Freed { symidx: temp_364_cmp_374, tracked: true } |     a2:Freed { symidx: temp_361_arithop_374, tracked: true } |     a3:Freed { symidx: temp_363_array_ele_374, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_false_375: 
.branch_false_375:
              #                          new_var temp_365_array_ptr_378:ptr->i32 
              #                          temp_365_array_ptr_378 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(2_0)] 
              #                    occupy s7 with temp_365_array_ptr_378
    li      s7, 0
              #                    store to temp_359_array_ele_374 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_359_array_ele_374
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_364_cmp_374 in mem offset legal
    sb      a1,83(sp)
              #                    release a1 with temp_364_cmp_374
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    store to temp_361_arithop_374 in mem offset legal
    sw      a2,100(sp)
              #                    release a2 with temp_361_arithop_374
              #                    occupy a2 with _anonymous_of_mNull_364_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,176
              #                    free s7
              #                          new_var temp_366_array_ele_378:i32 
              #                          temp_366_array_ele_378 = load temp_365_array_ptr_378:ptr->i32 
              #                    occupy s7 with temp_365_array_ptr_378
              #                    occupy a0 with temp_366_array_ele_378
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_367_ptr2globl_378:i32 
              #                          temp_367_ptr2globl_378 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_367_ptr2globl_378
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_368_arithop_378:i32 
              #                          temp_368_arithop_378 = Add i32 temp_367_ptr2globl_378, 2_0 
              #                    occupy a2 with temp_367_ptr2globl_378
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    store to temp_366_array_ele_378 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_366_array_ele_378
              #                    occupy a0 with temp_368_arithop_378
    add     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_369_array_ptr_378:ptr->i32 
              #                          temp_369_array_ptr_378 = getelementptr buf_60:ptr->i32 [Some(temp_368_arithop_378)] 
              #                    occupy a1 with temp_369_array_ptr_378
    li      a1, 0
              #                    store to temp_368_arithop_378 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_368_arithop_378
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_367_ptr2globl_378 in mem offset legal
    sw      a2,64(sp)
              #                    release a2 with temp_367_ptr2globl_378
              #                    occupy a2 with temp_368_arithop_378
              #                    load from temp_368_arithop_378 in mem


    lw      a2,60(sp)
              #                    store to temp_363_array_ele_374 in mem offset legal
    sw      a3,84(sp)
              #                    release a3 with temp_363_array_ele_374
              #                    occupy a3 with _anonymous_of_buf_60_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_370_array_ele_378:i32 
              #                          temp_370_array_ele_378 = load temp_369_array_ptr_378:ptr->i32 
              #                    occupy a1 with temp_369_array_ptr_378
              #                    occupy a3 with temp_370_array_ele_378
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_371_cmp_378:i1 
              #                          temp_371_cmp_378 = icmp i32 Ne temp_370_array_ele_378, temp_366_array_ele_378 
              #                    occupy a3 with temp_370_array_ele_378
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_366_array_ele_378
              #                    load from temp_366_array_ele_378 in mem


    lw      a0,68(sp)
              #                    store to temp_369_array_ptr_378 in mem offset legal
    sd      a1,48(sp)
              #                    release a1 with temp_369_array_ptr_378
              #                    occupy a1 with temp_371_cmp_378
    xor     a1,a3,a0
    snez    a1, a1
              #                    free a3
              #                    free a0
              #                    free a1
              #                          br i1 temp_371_cmp_378, label branch_true_379, label branch_false_379 
              #                    occupy a1 with temp_371_cmp_378
              #                    free a1
              #                    store to temp_365_array_ptr_378 in mem offset legal
    sd      s7,72(sp)
              #                    release s7 with temp_365_array_ptr_378
              #                    occupy a1 with temp_371_cmp_378
    bnez    a1, .branch_true_379
              #                    free a1
    j       .branch_false_379
              #                    regtab     a0:Freed { symidx: temp_366_array_ele_378, tracked: true } |     a1:Freed { symidx: temp_371_cmp_378, tracked: true } |     a2:Freed { symidx: temp_368_arithop_378, tracked: true } |     a3:Freed { symidx: temp_370_array_ele_378, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_true_379: 
.branch_true_379:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_366_array_ele_378 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_366_array_ele_378
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_366_array_ele_378, tracked: true } |     a1:Freed { symidx: temp_371_cmp_378, tracked: true } |     a2:Freed { symidx: temp_368_arithop_378, tracked: true } |     a3:Freed { symidx: temp_370_array_ele_378, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_false_379: 
.branch_false_379:
              #                          new_var temp_372_array_ptr_382:ptr->i32 
              #                          temp_372_array_ptr_382 = getelementptr mNull_364:Array:i32:[Some(4_0)] [Some(3_0)] 
              #                    occupy s7 with temp_372_array_ptr_382
    li      s7, 0
              #                    store to temp_366_array_ele_378 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_366_array_ele_378
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_371_cmp_378 in mem offset legal
    sb      a1,43(sp)
              #                    release a1 with temp_371_cmp_378
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    store to temp_368_arithop_378 in mem offset legal
    sw      a2,60(sp)
              #                    release a2 with temp_368_arithop_378
              #                    occupy a2 with _anonymous_of_mNull_364_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s7,s7,a2
              #                    free a2
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,176
              #                    free s7
              #                          new_var temp_373_array_ele_382:i32 
              #                          temp_373_array_ele_382 = load temp_372_array_ptr_382:ptr->i32 
              #                    occupy s7 with temp_372_array_ptr_382
              #                    occupy a0 with temp_373_array_ele_382
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_374_ptr2globl_382:i32 
              #                          temp_374_ptr2globl_382 = load *pos_0:ptr->i32 
              #                    occupy a1 with *pos_0
              #                       load label pos as ptr to reg
    la      a1, pos
              #                    occupy reg a1 with *pos_0
              #                    occupy a2 with temp_374_ptr2globl_382
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_375_arithop_382:i32 
              #                          temp_375_arithop_382 = Add i32 temp_374_ptr2globl_382, 3_0 
              #                    occupy a2 with temp_374_ptr2globl_382
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    store to temp_373_array_ele_382 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_373_array_ele_382
              #                    occupy a0 with temp_375_arithop_382
    add     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_376_array_ptr_382:ptr->i32 
              #                          temp_376_array_ptr_382 = getelementptr buf_60:ptr->i32 [Some(temp_375_arithop_382)] 
              #                    occupy a1 with temp_376_array_ptr_382
    li      a1, 0
              #                    store to temp_375_arithop_382 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_375_arithop_382
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_374_ptr2globl_382 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with temp_374_ptr2globl_382
              #                    occupy a2 with temp_375_arithop_382
              #                    load from temp_375_arithop_382 in mem


    lw      a2,20(sp)
              #                    store to temp_370_array_ele_378 in mem offset legal
    sw      a3,44(sp)
              #                    release a3 with temp_370_array_ele_378
              #                    occupy a3 with _anonymous_of_buf_60_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with buf_60
              #                    load from buf_60 in mem
    ld      a0,1824(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_377_array_ele_382:i32 
              #                          temp_377_array_ele_382 = load temp_376_array_ptr_382:ptr->i32 
              #                    occupy a1 with temp_376_array_ptr_382
              #                    occupy a3 with temp_377_array_ele_382
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_378_cmp_382:i1 
              #                          temp_378_cmp_382 = icmp i32 Ne temp_377_array_ele_382, temp_373_array_ele_382 
              #                    occupy a3 with temp_377_array_ele_382
              #                    store to buf_60 in mem offset legal
    sd      a0,1824(sp)
              #                    release a0 with buf_60
              #                    occupy a0 with temp_373_array_ele_382
              #                    load from temp_373_array_ele_382 in mem


    lw      a0,28(sp)
              #                    store to temp_376_array_ptr_382 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_376_array_ptr_382
              #                    occupy a1 with temp_378_cmp_382
    xor     a1,a3,a0
    snez    a1, a1
              #                    free a3
              #                    free a0
              #                    free a1
              #                          br i1 temp_378_cmp_382, label branch_true_383, label branch_false_383 
              #                    occupy a1 with temp_378_cmp_382
              #                    free a1
              #                    store to temp_372_array_ptr_382 in mem offset legal
    sd      s7,32(sp)
              #                    release s7 with temp_372_array_ptr_382
              #                    occupy a1 with temp_378_cmp_382
    bnez    a1, .branch_true_383
              #                    free a1
    j       .branch_false_383
              #                    regtab     a0:Freed { symidx: temp_373_array_ele_382, tracked: true } |     a1:Freed { symidx: temp_378_cmp_382, tracked: true } |     a2:Freed { symidx: temp_375_arithop_382, tracked: true } |     a3:Freed { symidx: temp_377_array_ele_382, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_true_383: 
.branch_true_383:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to temp_373_array_ele_382 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_373_array_ele_382
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_373_array_ele_382, tracked: true } |     a1:Freed { symidx: temp_378_cmp_382, tracked: true } |     a2:Freed { symidx: temp_375_arithop_382, tracked: true } |     a3:Freed { symidx: temp_377_array_ele_382, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label branch_false_383: 
.branch_false_383:
              #                    regtab     a0:Freed { symidx: temp_373_array_ele_382, tracked: true } |     a1:Freed { symidx: temp_378_cmp_382, tracked: true } |     a2:Freed { symidx: temp_375_arithop_382, tracked: true } |     a3:Freed { symidx: temp_377_array_ele_382, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L68_0: 
.L68_0:
              #                    regtab     a0:Freed { symidx: temp_373_array_ele_382, tracked: true } |     a1:Freed { symidx: temp_378_cmp_382, tracked: true } |     a2:Freed { symidx: temp_375_arithop_382, tracked: true } |     a3:Freed { symidx: temp_377_array_ele_382, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L69_0: 
.L69_0:
              #                    regtab     a0:Freed { symidx: temp_373_array_ele_382, tracked: true } |     a1:Freed { symidx: temp_378_cmp_382, tracked: true } |     a2:Freed { symidx: temp_375_arithop_382, tracked: true } |     a3:Freed { symidx: temp_377_array_ele_382, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L70_0: 
.L70_0:
              #                    regtab     a0:Freed { symidx: temp_373_array_ele_382, tracked: true } |     a1:Freed { symidx: temp_378_cmp_382, tracked: true } |     a2:Freed { symidx: temp_375_arithop_382, tracked: true } |     a3:Freed { symidx: temp_377_array_ele_382, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L71_0: 
.L71_0:
              #                    regtab     a0:Freed { symidx: temp_373_array_ele_382, tracked: true } |     a1:Freed { symidx: temp_378_cmp_382, tracked: true } |     a2:Freed { symidx: temp_375_arithop_382, tracked: true } |     a3:Freed { symidx: temp_377_array_ele_382, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L72_0: 
.L72_0:
              #                          new_var temp_350_ptr2globl_364:i32 
              #                          temp_350_ptr2globl_364 = load *pos_0:ptr->i32 
              #                    occupy s7 with *pos_0
              #                       load label pos as ptr to reg
    la      s7, pos
              #                    occupy reg s7 with *pos_0
              #                    store to temp_373_array_ele_382 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_373_array_ele_382
              #                    occupy a0 with temp_350_ptr2globl_364
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_351_arithop_364:i32 
              #                          temp_351_arithop_364 = Add i32 temp_350_ptr2globl_364, 4_0 
              #                    occupy a0 with temp_350_ptr2globl_364
              #                    occupy s7 with 4_0
    li      s7, 4
              #                    store to temp_378_cmp_382 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_378_cmp_382
              #                    occupy a1 with temp_351_arithop_364
    add     a1,a0,s7
              #                    free a0
              #                    free s7
              #                    free a1
              #                          store temp_351_arithop_364:i32 *pos_0:ptr->i32 
              #                    occupy s7 with *pos_0
              #                       load label pos as ptr to reg
    la      s7, pos
              #                    occupy reg s7 with *pos_0
              #                    occupy a1 with temp_351_arithop_364
    sw      a1,0(s7)
              #                    free a1
              #                    free s7
              #                          jump label: L73_0 
    j       .L73_0
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } | 
              #                          label branch_false_363: 
.branch_false_363:
              #                          ret 0_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_350_ptr2globl_364, tracked: true } |     a1:Freed { symidx: temp_351_arithop_364, tracked: true } |     a2:Freed { symidx: temp_375_arithop_382, tracked: true } |     a3:Freed { symidx: temp_377_array_ele_382, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_345_array_init_ptr_364, tracked: true } |     s11:Freed { symidx: temp_349_cmp_366, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_342_cmp_362, tracked: true } |     s3:Freed { symidx: temp_346_array_init_ptr_364, tracked: true } |     s4:Freed { symidx: temp_352_array_ptr_370, tracked: true } |     s5:Freed { symidx: temp_347_ptr2globl_366, tracked: true } |     s6:Freed { symidx: temp_354_ptr2globl_370, tracked: true } |     s8:Freed { symidx: temp_348_arithop_366, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L73_0: 
.L73_0:
              #                    regtab     a0:Freed { symidx: temp_306_ptr2globl_335, tracked: true } |     a1:Freed { symidx: temp_307_arithop_335, tracked: true } |     a2:Freed { symidx: temp_338_arithop_357, tracked: true } |     a3:Freed { symidx: temp_340_array_ele_357, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_300_array_init_ptr_335, tracked: true } |     s11:Freed { symidx: temp_305_cmp_337, tracked: true } |     s1:Freed { symidx: temp_297_cmp_333, tracked: true } |     s2:Freed { symidx: temp_301_array_init_ptr_335, tracked: true } |     s3:Freed { symidx: temp_302_array_init_ptr_335, tracked: true } |     s4:Freed { symidx: temp_308_array_ptr_341, tracked: true } |     s5:Freed { symidx: temp_303_ptr2globl_337, tracked: true } |     s6:Freed { symidx: temp_299_array_init_ptr_335, tracked: true } |     s8:Freed { symidx: temp_304_arithop_337, tracked: true } |     s9:Freed { symidx: len_60, tracked: true } | 
              #                          label L74_0: 
.L74_0:
              #                    regtab     a0:Freed { symidx: temp_268_ptr2globl_310, tracked: true } |     a1:Freed { symidx: temp_269_arithop_310, tracked: true } |     a2:Freed { symidx: temp_293_arithop_328, tracked: true } |     a3:Freed { symidx: temp_295_array_ele_328, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_182_cmp_202, tracked: true } |     a6:Freed { symidx: temp_211_cmp_240, tracked: true } |     a7:Freed { symidx: temp_260_cmp_308, tracked: true } |     s10:Freed { symidx: temp_273_array_ptr_316, tracked: true } |     s11:Freed { symidx: temp_272_ptr2globl_316, tracked: true } |     s1:Freed { symidx: temp_264_array_init_ptr_310, tracked: true } |     s2:Freed { symidx: temp_270_array_ptr_316, tracked: true } |     s3:Freed { symidx: temp_265_ptr2globl_312, tracked: true } |     s4:Freed { symidx: temp_271_array_ele_316, tracked: true } |     s5:Freed { symidx: temp_262_array_init_ptr_310, tracked: true } |     s6:Freed { symidx: temp_266_arithop_312, tracked: true } |     s8:Freed { symidx: temp_267_cmp_312, tracked: true } |     s9:Freed { symidx: temp_263_array_init_ptr_310, tracked: true } | 
              #                          label L75_0: 
.L75_0:
              #                    regtab     a1:Freed { symidx: temp_252_ptr2globl_299, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_253_cmp_299, tracked: true } |     a4:Freed { symidx: temp_256_ptr2globl_303, tracked: true } |     a5:Freed { symidx: temp_257_array_ptr_303, tracked: true } |     a6:Freed { symidx: temp_254_ptr2globl_242, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_258_array_ele_303, tracked: true } |     s3:Freed { symidx: temp_255_arithop_242, tracked: true } |     s4:Freed { symidx: temp_259_cmp_303, tracked: true } | 
              #                          label L76_0: 
.L76_0:
              #                    regtab     a1:Freed { symidx: temp_203_ptr2globl_231, tracked: true } |     a2:Freed { symidx: len_60, tracked: true } |     a3:Freed { symidx: temp_204_cmp_231, tracked: true } |     a4:Freed { symidx: temp_205_ptr2globl_235, tracked: true } |     a5:Freed { symidx: temp_206_array_ptr_235, tracked: true } |     a6:Freed { symidx: temp_209_ptr2globl_204, tracked: true } |     s1:Freed { symidx: buf_60, tracked: true } |     s2:Freed { symidx: temp_207_array_ele_235, tracked: true } |     s3:Freed { symidx: temp_210_arithop_204, tracked: true } |     s4:Freed { symidx: temp_208_cmp_235, tracked: true } | 
              #                          label L77_0: 
.L77_0:
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_181_cmp_197, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_180_array_ele_197, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_174_ptr2globl_193, tracked: true } |     s4:Freed { symidx: temp_175_cmp_193, tracked: true } |     s5:Freed { symidx: temp_178_ptr2globl_197, tracked: true } |     s6:Freed { symidx: temp_179_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_177_arithop_179, tracked: true } |     s8:Freed { symidx: temp_176_ptr2globl_179, tracked: true } |     s9:Freed { symidx: buf_60, tracked: true } | 
              #                          label L78_0: 
.L78_0:
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_181_cmp_197, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_180_array_ele_197, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_174_ptr2globl_193, tracked: true } |     s4:Freed { symidx: temp_175_cmp_193, tracked: true } |     s5:Freed { symidx: temp_178_ptr2globl_197, tracked: true } |     s6:Freed { symidx: temp_179_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_177_arithop_179, tracked: true } |     s8:Freed { symidx: temp_176_ptr2globl_179, tracked: true } |     s9:Freed { symidx: buf_60, tracked: true } | 
              #                          label L79_0: 
.L79_0:
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_181_cmp_197, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_180_array_ele_197, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_174_ptr2globl_193, tracked: true } |     s4:Freed { symidx: temp_175_cmp_193, tracked: true } |     s5:Freed { symidx: temp_178_ptr2globl_197, tracked: true } |     s6:Freed { symidx: temp_179_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_177_arithop_179, tracked: true } |     s8:Freed { symidx: temp_176_ptr2globl_179, tracked: true } |     s9:Freed { symidx: buf_60, tracked: true } | 
              #                          label L80_0: 
.L80_0:
              #                    regtab     a0:Freed { symidx: type_60, tracked: true } |     a1:Freed { symidx: temp_181_cmp_197, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_180_array_ele_197, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_174_ptr2globl_193, tracked: true } |     s4:Freed { symidx: temp_175_cmp_193, tracked: true } |     s5:Freed { symidx: temp_178_ptr2globl_197, tracked: true } |     s6:Freed { symidx: temp_179_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_177_arithop_179, tracked: true } |     s8:Freed { symidx: temp_176_ptr2globl_179, tracked: true } |     s9:Freed { symidx: buf_60, tracked: true } | 
              #                          label L81_0: 
.L81_0:
              #                          ret 1_0 
              #                    load from ra_detect_item_0 in mem
    ld      ra,1848(sp)
              #                    load from s0_detect_item_0 in mem
    ld      s0,1840(sp)
              #                    store to type_60 in mem offset legal
    sw      a0,1836(sp)
              #                    release a0 with type_60
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,1856
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_181_cmp_197, tracked: true } |     a2:Freed { symidx: temp_31_cmp_68, tracked: true } |     a3:Freed { symidx: temp_78_cmp_109, tracked: true } |     a4:Freed { symidx: temp_157_cmp_177, tracked: true } |     a5:Freed { symidx: temp_158_ptr2globl_179, tracked: true } |     a6:Freed { symidx: temp_160_ptr2globl_181, tracked: true } |     a7:Freed { symidx: temp_159_arithop_179, tracked: true } |     s10:Freed { symidx: temp_180_array_ele_197, tracked: true } |     s1:Freed { symidx: len_60, tracked: true } |     s2:Freed { symidx: temp_161_cmp_181, tracked: true } |     s3:Freed { symidx: temp_174_ptr2globl_193, tracked: true } |     s4:Freed { symidx: temp_175_cmp_193, tracked: true } |     s5:Freed { symidx: temp_178_ptr2globl_197, tracked: true } |     s6:Freed { symidx: temp_179_array_ptr_197, tracked: true } |     s7:Freed { symidx: temp_177_arithop_179, tracked: true } |     s8:Freed { symidx: temp_176_ptr2globl_179, tracked: true } |     s9:Freed { symidx: buf_60, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 600000056|s0_main:8 at 600000048|temp_379_ret_of_getch:4 at 600000044|get:4 at 600000040|i:4 at 600000036|temp_380_cmp:1 at 600000035|none:3 at 600000032|temp_381_index_ptr:8 at 600000024|temp_382_arithop:4 at 600000020|temp_383_ret_of_getch:4 at 600000016|temp_384_ptr2globl:200000000 at 400000016|temp_385_ptr2globl:200000000 at 200000016|temp_386_ret_of_detect_item:4 at 200000012|res:4 at 200000008|temp_387_ptr2globl:200000000 at 8|temp_388_cmp:1 at 7|none:7 at 0
              #                    occupy a0 with -600000064_0
    li      a0, -600000064
    li      a0, -600000064
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 600000056_0
    li      a1, 600000056
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 600000048_0
    li      a2, 600000048
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 600000064_0
    li      a3, 600000064
    li      a3, 600000064
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 temp_379_ret_of_getch_391 
              #                          alloc i32 get_391 
              #                          alloc i32 i_391 
              #                          alloc i1 temp_380_cmp_394 
              #                          alloc ptr->i32 temp_381_index_ptr_396 
              #                          alloc i32 temp_382_arithop_396 
              #                          alloc i32 temp_383_ret_of_getch_396 
              #                          alloc Array:i32:[Some(50000000_0)] temp_384_ptr2globl_391 
              #                          alloc Array:i32:[Some(50000000_0)] temp_385_ptr2globl_391 
              #                          alloc i32 temp_386_ret_of_detect_item_391 
              #                          alloc i32 res_391 
              #                          alloc Array:i32:[Some(50000000_0)] temp_387_ptr2globl_391 
              #                          alloc i1 temp_388_cmp_403 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_379_ret_of_getch_391:i32 
              #                          temp_379_ret_of_getch_391 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_379_ret_of_getch_391 in mem offset_illegal
              #                    occupy a0 with 600000044_0
    li      a0, 600000044
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          get_391 = i32 temp_379_ret_of_getch_391 
              #                    occupy a0 with temp_379_ret_of_getch_391
              #                    occupy a1 with get_391
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_391 = i32 0_0 
              #                    occupy a2 with i_391
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_395 
    j       .while.head_395
              #                    regtab     a0:Freed { symidx: temp_379_ret_of_getch_391, tracked: true } |     a1:Freed { symidx: get_391, tracked: true } |     a2:Freed { symidx: i_391, tracked: true } | 
              #                          label while.head_395: 
.while.head_395:
              #                          new_var temp_380_cmp_394:i1 
              #                          temp_380_cmp_394 = icmp i32 Ne get_391, 35_0 
              #                    occupy a1 with get_391
              #                    occupy a3 with 35_0
    li      a3, 35
              #                    occupy a4 with temp_380_cmp_394
    xor     a4,a1,a3
    snez    a4, a4
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_380_cmp_394, label while.body_395, label while.exit_395 
              #                    occupy a4 with temp_380_cmp_394
              #                    free a4
              #                    occupy a4 with temp_380_cmp_394
    bnez    a4, .while.body_395
              #                    free a4
    j       .while.exit_395
              #                    regtab     a0:Freed { symidx: temp_379_ret_of_getch_391, tracked: true } |     a1:Freed { symidx: get_391, tracked: true } |     a2:Freed { symidx: i_391, tracked: true } |     a4:Freed { symidx: temp_380_cmp_394, tracked: true } | 
              #                          label while.body_395: 
.while.body_395:
              #                          new_var temp_381_index_ptr_396:ptr->i32 
              #                          temp_381_index_ptr_396 = getelementptr buffer_0:Array:i32:[Some(50000000_0)] [Some(i_391)] 
              #                    occupy a3 with temp_381_index_ptr_396
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_391
              #                    occupy a6 with _anonymous_of_buffer_0_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
              #                    occupy a7 with _anonymous_of_buffer_0_0
    la      a7, buffer
    add     a3,a3,a7
              #                    free a7
              #                    free a3
              #                          store get_391:i32 temp_381_index_ptr_396:ptr->i32 
              #                    occupy a3 with temp_381_index_ptr_396
              #                    occupy a1 with get_391
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                          mu buffer_0:1647 
              #                          buffer_0 = chi buffer_0:1647 
              #                          new_var temp_382_arithop_396:i32 
              #                          temp_382_arithop_396 = Add i32 i_391, 1_0 
              #                    occupy a2 with i_391
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s1 with temp_382_arithop_396
    add     s1,a2,a5
              #                    free a2
              #                    free a5
              #                    free s1
              #                          i_391 = i32 temp_382_arithop_396 
              #                    occupy s1 with temp_382_arithop_396
              #                    occupy a2 with i_391
    mv      a2, s1
              #                    free s1
              #                    free a2
              #                          new_var temp_383_ret_of_getch_396:i32 
              #                          temp_383_ret_of_getch_396 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_382_arithop_396 in mem offset_illegal
              #                    occupy s1 with 600000020_0
    li      s1, 600000020
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_382_arithop_396
              #                    store to temp_379_ret_of_getch_391 in mem offset_illegal
              #                    occupy a0 with 600000044_0
    li      a0, 600000044
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_379_ret_of_getch_391
              #                    store to get_391 in mem offset_illegal
              #                    occupy a0 with 600000040_0
    li      a0, 600000040
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with get_391
              #                    store to i_391 in mem offset_illegal
              #                    occupy a1 with 600000036_0
    li      a1, 600000036
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with i_391
              #                    store to temp_381_index_ptr_396 in mem offset_illegal
              #                    occupy a2 with 600000024_0
    li      a2, 600000024
    add     a2,sp,a2
    sd      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_381_index_ptr_396
              #                    store to temp_380_cmp_394 in mem offset_illegal
              #                    occupy a3 with 600000035_0
    li      a3, 600000035
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_380_cmp_394
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_383_ret_of_getch_396 in mem offset_illegal
              #                    occupy a0 with 600000016_0
    li      a0, 600000016
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          get_391 = i32 temp_383_ret_of_getch_396 
              #                    occupy a0 with temp_383_ret_of_getch_396
              #                    occupy a4 with get_391
    mv      a4, a0
              #                    free a0
              #                    free a4
              #                          jump label: while.head_395 
              #                    store to get_391 in mem offset_illegal
              #                    occupy a4 with 600000040_0
    li      a4, 600000040
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with get_391
              #                    store to temp_383_ret_of_getch_396 in mem offset_illegal
              #                    occupy a0 with 600000016_0
    li      a0, 600000016
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_383_ret_of_getch_396
              #                    occupy a1 with _anonymous_of_get_391_0
              #                    load from get_391 in mem

              #                    occupy a0 with get_391
    li      a0, 600000040
    add     a0,sp,a0
    lw      a1,0(a0)
              #                    free a0
              #                    store to get_391 in mem offset_illegal
              #                    occupy a0 with 600000040_0
    li      a0, 600000040
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with get_391
              #                    occupy a0 with _anonymous_of_temp_379_ret_of_getch_391_0
              #                    load from temp_379_ret_of_getch_391 in mem

              #                    occupy a2 with temp_379_ret_of_getch_391
    li      a2, 600000044
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    store to temp_379_ret_of_getch_391 in mem offset_illegal
              #                    occupy a2 with 600000044_0
    li      a2, 600000044
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_379_ret_of_getch_391
              #                    occupy a2 with _anonymous_of_i_391_0
              #                    load from i_391 in mem

              #                    occupy a3 with i_391
    li      a3, 600000036
    add     a3,sp,a3
    lw      a2,0(a3)
              #                    free a3
    j       .while.head_395
              #                    regtab     a0:Freed { symidx: temp_379_ret_of_getch_391, tracked: true } |     a1:Freed { symidx: get_391, tracked: true } |     a2:Freed { symidx: i_391, tracked: true } |     a4:Freed { symidx: temp_380_cmp_394, tracked: true } | 
              #                          label while.exit_395: 
.while.exit_395:
              #                          new_var temp_384_ptr2globl_391:Array:i32:[Some(50000000_0)] 
              #                          temp_384_ptr2globl_391 = load *buffer_0:ptr->i32 
              #                    occupy a3 with *buffer_0
              #                       load label buffer as ptr to reg
    la      a3, buffer
              #                    occupy reg a3 with *buffer_0
              #                    occupy a5 with temp_384_ptr2globl_391
    lw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                           Call void skip_space_0(temp_384_ptr2globl_391, i_391) 
              #                    saved register dumping to mem
              #                    store to temp_379_ret_of_getch_391 in mem offset_illegal
              #                    occupy a0 with 600000044_0
    li      a0, 600000044
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_379_ret_of_getch_391
              #                    store to get_391 in mem offset_illegal
              #                    occupy a0 with 600000040_0
    li      a0, 600000040
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with get_391
              #                    store to i_391 in mem offset_illegal
              #                    occupy a1 with 600000036_0
    li      a1, 600000036
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with i_391
              #                    store to temp_380_cmp_394 in mem offset_illegal
              #                    occupy a2 with 600000035_0
    li      a2, 600000035
    add     a2,sp,a2
    sb      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_380_cmp_394
              #                    store to temp_384_ptr2globl_391 in mem offset_illegal
              #                    occupy a3 with 400000016_0
    li      a3, 400000016
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_384_ptr2globl_391
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_384_ptr2globl_391_0
              #                    load from temp_384_ptr2globl_391 in mem
              #                    occupy a4 with temp_384_ptr2globl_391
    li      a4, 400000016
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    occupy a1 with _anonymous_of_i_391_0
              #                    load from i_391 in mem

              #                    occupy a5 with i_391
    li      a5, 600000036
    add     a5,sp,a5
    lw      a1,0(a5)
              #                    free a5
              #                    arg load ended


    call    skip_space
              #                          new_var temp_385_ptr2globl_391:Array:i32:[Some(50000000_0)] 
              #                          temp_385_ptr2globl_391 = load *buffer_0:ptr->i32 
              #                    occupy a0 with *buffer_0
              #                       load label buffer as ptr to reg
    la      a0, buffer
              #                    occupy reg a0 with *buffer_0
              #                    occupy a1 with temp_385_ptr2globl_391
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_386_ret_of_detect_item_391:i32 
              #                          temp_386_ret_of_detect_item_391 =  Call i32 detect_item_0(0_0, temp_385_ptr2globl_391, i_391) 
              #                    saved register dumping to mem
              #                    store to temp_385_ptr2globl_391 in mem offset_illegal
              #                    occupy a0 with 200000016_0
    li      a0, 200000016
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_385_ptr2globl_391
              #                    store to temp_384_ptr2globl_391 in mem offset_illegal
              #                    occupy a1 with 400000016_0
    li      a1, 400000016
    add     a1,sp,a1
    sw      a4,0(a1)
              #                    free a1
              #                    release a4 with temp_384_ptr2globl_391
              #                    store to i_391 in mem offset_illegal
              #                    occupy a2 with 600000036_0
    li      a2, 600000036
    add     a2,sp,a2
    sw      a5,0(a2)
              #                    free a2
              #                    release a5 with i_391
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_385_ptr2globl_391_0
              #                    load from temp_385_ptr2globl_391 in mem
              #                    occupy a3 with temp_385_ptr2globl_391
    li      a3, 200000016
    add     a3,sp,a3
    lw      a1,0(a3)
              #                    free a3
              #                    occupy a2 with _anonymous_of_i_391_0
              #                    load from i_391 in mem

              #                    occupy a4 with i_391
    li      a4, 600000036
    add     a4,sp,a4
    lw      a2,0(a4)
              #                    free a4
              #                    arg load ended


    call    detect_item
              #                    store to temp_386_ret_of_detect_item_391 in mem offset_illegal
              #                    occupy a0 with 200000012_0
    li      a0, 200000012
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          res_391 = i32 temp_386_ret_of_detect_item_391 
              #                    occupy a0 with temp_386_ret_of_detect_item_391
              #                    occupy a1 with res_391
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_387_ptr2globl_391:Array:i32:[Some(50000000_0)] 
              #                          temp_387_ptr2globl_391 = load *buffer_0:ptr->i32 
              #                    occupy a2 with *buffer_0
              #                       load label buffer as ptr to reg
    la      a2, buffer
              #                    occupy reg a2 with *buffer_0
              #                    occupy a5 with temp_387_ptr2globl_391
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                           Call void skip_space_0(temp_387_ptr2globl_391, i_391) 
              #                    saved register dumping to mem
              #                    store to temp_386_ret_of_detect_item_391 in mem offset_illegal
              #                    occupy a0 with 200000012_0
    li      a0, 200000012
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_386_ret_of_detect_item_391
              #                    store to res_391 in mem offset_illegal
              #                    occupy a0 with 200000008_0
    li      a0, 200000008
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with res_391
              #                    store to temp_385_ptr2globl_391 in mem offset_illegal
              #                    occupy a1 with 200000016_0
    li      a1, 200000016
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_385_ptr2globl_391
              #                    store to i_391 in mem offset_illegal
              #                    occupy a2 with 600000036_0
    li      a2, 600000036
    add     a2,sp,a2
    sw      a4,0(a2)
              #                    free a2
              #                    release a4 with i_391
              #                    store to temp_387_ptr2globl_391 in mem offset legal
    sw      a5,8(sp)
              #                    release a5 with temp_387_ptr2globl_391
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_387_ptr2globl_391_0
              #                    load from temp_387_ptr2globl_391 in mem
    lw      a0,8(sp)
              #                    occupy a1 with _anonymous_of_i_391_0
              #                    load from i_391 in mem

              #                    occupy a3 with i_391
    li      a3, 600000036
    add     a3,sp,a3
    lw      a1,0(a3)
              #                    free a3
              #                    arg load ended


    call    skip_space
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a3:Freed { symidx: i_391, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_388_cmp_403:i1 
              #                          temp_388_cmp_403 = icmp i32 Ne res_391, 0_0 
              #                    occupy a0 with res_391
              #                    load from res_391 in mem

              #                    occupy a0 with res_391
    add     a0,sp,a0
    lw      a0,0(a0)
              #                    free a0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_388_cmp_403
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_388_cmp_403, label branch_true_404, label branch_false_404 
              #                    occupy a2 with temp_388_cmp_403
              #                    free a2
              #                    occupy a2 with temp_388_cmp_403
    bnez    a2, .branch_true_404
              #                    free a2
    j       .branch_false_404
              #                    regtab     a0:Freed { symidx: res_391, tracked: true } |     a2:Freed { symidx: temp_388_cmp_403, tracked: true } |     a3:Freed { symidx: i_391, tracked: true } | 
              #                          label branch_true_404: 
.branch_true_404:
              #                           Call void putch_0(111_0) 
              #                    saved register dumping to mem
              #                    store to res_391 in mem offset_illegal
              #                    occupy a0 with 200000008_0
    li      a0, 200000008
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with res_391
              #                    store to temp_388_cmp_403 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_388_cmp_403
              #                    store to i_391 in mem offset_illegal
              #                    occupy a0 with 600000036_0
    li      a0, 600000036
    add     a0,sp,a0
    sw      a3,0(a0)
              #                    free a0
              #                    release a3 with i_391
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_111_0_0
    li      a0, 111
              #                    arg load ended


    call    putch
              #                           Call void putch_0(107_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_107_0_0
    li      a0, 107
              #                    arg load ended


    call    putch
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with ra_main_0
    li      a0, 600000056
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy a1 with s0_main_0
    li      a1, 600000048
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a0 with 600000056_0
    li      a0, 600000056
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with ra_main_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with 600000064_0
    li      a2, 600000064
    li      a2, 600000064
    add     sp,a2,sp
              #                    free a2
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: res_391, tracked: true } |     a2:Freed { symidx: temp_388_cmp_403, tracked: true } |     a3:Freed { symidx: i_391, tracked: true } | 
              #                          label branch_false_404: 
.branch_false_404:
              #                           Call void putch_0(110_0) 
              #                    saved register dumping to mem
              #                    store to res_391 in mem offset_illegal
              #                    occupy a0 with 200000008_0
    li      a0, 200000008
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with res_391
              #                    store to temp_388_cmp_403 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_388_cmp_403
              #                    store to i_391 in mem offset_illegal
              #                    occupy a0 with 600000036_0
    li      a0, 600000036
    add     a0,sp,a0
    sw      a3,0(a0)
              #                    free a0
              #                    release a3 with i_391
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_110_0_0
    li      a0, 110
              #                    arg load ended


    call    putch
              #                           Call void putch_0(111_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_111_0_0
    li      a0, 111
              #                    arg load ended


    call    putch
              #                           Call void putch_0(116_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_116_0_0
    li      a0, 116
              #                    arg load ended


    call    putch
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                           Call void putch_0(111_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_111_0_0
    li      a0, 111
              #                    arg load ended


    call    putch
              #                           Call void putch_0(107_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_107_0_0
    li      a0, 107
              #                    arg load ended


    call    putch
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          ret 1_0 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with ra_main_0
    li      a0, 600000056
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy a1 with s0_main_0
    li      a1, 600000048
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a0 with 600000056_0
    li      a0, 600000056
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with ra_main_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with 600000064_0
    li      a2, 600000064
    li      a2, 600000064
    add     sp,a2,sp
              #                    free a2
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: s0_main_0, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a1:Freed { symidx: s0_main_0, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl buffer
              #                          global Array:i32:[Some(50000000_0)] buffer_0 
    .type buffer,@object
buffer:
    .zero 200000000
    .align 4
    .globl pos
              #                          global i32 pos_0 
    .type pos,@object
pos:
    .word 0
