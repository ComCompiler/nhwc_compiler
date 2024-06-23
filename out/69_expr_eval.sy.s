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
              #                          Define next_char_0 [] -> next_char_ret_0 
    .globl next_char
    .type next_char,@function
next_char:
              #                    mem layout:|ra_next_char:8 at 16|s0_next_char:8 at 8|temp_0_ret_of_getch:4 at 4|temp_1_ptr2globl:4 at 0
    addi    sp,sp,-24
              #                    store to ra_next_char_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_next_char_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_0_ret_of_getch_20 
              #                          alloc i32 temp_1_ptr2globl_20 
              #                    regtab 
              #                          label L28_0: 
.L28_0:
              #                          new_var temp_0_ret_of_getch_20:i32 
              #                          temp_0_ret_of_getch_20 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_0_ret_of_getch_20 in mem offset legal
    sw      a0,4(sp)
              #                          store temp_0_ret_of_getch_20:i32 *last_char_0:ptr->i32 
              #                    occupy a1 with *last_char_0
              #                       load label last_char as ptr to reg
    la      a1, last_char
              #                    occupy reg a1 with *last_char_0
              #                    occupy a0 with temp_0_ret_of_getch_20
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_1_ptr2globl_20:i32 
              #                          temp_1_ptr2globl_20 = load *last_char_0:ptr->i32 
              #                    occupy a2 with *last_char_0
              #                       load label last_char as ptr to reg
    la      a2, last_char
              #                    occupy reg a2 with *last_char_0
              #                    occupy a3 with temp_1_ptr2globl_20
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          ret temp_1_ptr2globl_20 
              #                    load from ra_next_char_0 in mem
    ld      ra,16(sp)
              #                    load from s0_next_char_0 in mem
    ld      s0,8(sp)
              #                    store to temp_1_ptr2globl_20 in mem offset legal
    sw      a3,0(sp)
              #                    release a3 with temp_1_ptr2globl_20
              #                    store to temp_0_ret_of_getch_20 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_0_ret_of_getch_20
              #                    occupy a0 with temp_1_ptr2globl_20
              #                    load from temp_1_ptr2globl_20 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
              #                    regtab 
              #                          Define is_space_0 [c_23] -> is_space_ret_0 
    .globl is_space
    .type is_space,@function
is_space:
              #                    mem layout:|ra_is_space:8 at 16|s0_is_space:8 at 8|c:4 at 4|temp_2_cmp:1 at 3|temp_3_cmp:1 at 2|temp_4_logic:1 at 1|none:1 at 0
    addi    sp,sp,-24
              #                    store to ra_is_space_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_is_space_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i1 temp_2_cmp_26 
              #                          alloc i1 temp_3_cmp_26 
              #                          alloc i1 temp_4_logic_26 
              #                    regtab     a0:Freed { symidx: c_23, tracked: true } | 
              #                          label L26_0: 
.L26_0:
              #                          new_var temp_2_cmp_26:i1 
              #                          temp_2_cmp_26 = icmp i32 Eq c_23, 10_0 
              #                    occupy a0 with c_23
              #                    occupy a1 with 10_0
    li      a1, 10
              #                    occupy a2 with temp_2_cmp_26
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_3_cmp_26:i1 
              #                          temp_3_cmp_26 = icmp i32 Eq c_23, 32_0 
              #                    occupy a0 with c_23
              #                    occupy a3 with 32_0
    li      a3, 32
              #                    occupy a4 with temp_3_cmp_26
    xor     a4,a0,a3
    seqz    a4, a4
              #                    free a0
              #                    free a3
              #                    free a4
              #                          new_var temp_4_logic_26:i1 
              #                          temp_4_logic_26 = Or i1 temp_3_cmp_26, temp_2_cmp_26 
              #                    occupy a4 with temp_3_cmp_26
              #                    occupy a2 with temp_2_cmp_26
              #                    occupy a2 with temp_2_cmp_26
              #                    free a4
              #                    free a2
              #                    free a2
              #                          br i1 temp_4_logic_26, label branch_true_27, label branch_false_27 
              #                    occupy a5 with temp_4_logic_26
              #                    load from temp_4_logic_26 in mem
    lb      a5,1(sp)
              #                    free a5
              #                    occupy a5 with temp_4_logic_26
    bnez    a5, .branch_true_27
              #                    free a5
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: c_23, tracked: true } |     a2:Freed { symidx: temp_2_cmp_26, tracked: true } |     a4:Freed { symidx: temp_3_cmp_26, tracked: true } |     a5:Freed { symidx: temp_4_logic_26, tracked: true } | 
              #                          label branch_true_27: 
.branch_true_27:
              #                          ret 1_0 
              #                    load from ra_is_space_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_space_0 in mem
    ld      s0,8(sp)
              #                    store to c_23 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with c_23
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: c_23, tracked: true } |     a2:Freed { symidx: temp_2_cmp_26, tracked: true } |     a4:Freed { symidx: temp_3_cmp_26, tracked: true } |     a5:Freed { symidx: temp_4_logic_26, tracked: true } | 
              #                          label branch_false_27: 
.branch_false_27:
              #                          ret 0_0 
              #                    load from ra_is_space_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_space_0 in mem
    ld      s0,8(sp)
              #                    store to c_23 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with c_23
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_2_cmp_26, tracked: true } |     a4:Freed { symidx: temp_3_cmp_26, tracked: true } |     a5:Freed { symidx: temp_4_logic_26, tracked: true } | 
              #                          label L27_0: 
.L27_0:
              #                    regtab     a2:Freed { symidx: temp_2_cmp_26, tracked: true } |     a4:Freed { symidx: temp_3_cmp_26, tracked: true } |     a5:Freed { symidx: temp_4_logic_26, tracked: true } | 
              #                    regtab 
              #                          Define is_num_0 [c_32] -> is_num_ret_0 
    .globl is_num
    .type is_num,@function
is_num:
              #                    mem layout:|ra_is_num:8 at 16|s0_is_num:8 at 8|c:4 at 4|temp_5_cmp:1 at 3|temp_6_cmp:1 at 2|temp_7_logic:1 at 1|none:1 at 0
    addi    sp,sp,-24
              #                    store to ra_is_num_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_is_num_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i1 temp_5_cmp_35 
              #                          alloc i1 temp_6_cmp_35 
              #                          alloc i1 temp_7_logic_35 
              #                    regtab     a0:Freed { symidx: c_32, tracked: true } | 
              #                          label L24_0: 
.L24_0:
              #                          new_var temp_5_cmp_35:i1 
              #                          temp_5_cmp_35 = icmp i32 Sle c_32, 57_0 
              #                    occupy a0 with c_32
              #                    occupy a1 with 57_0
    li      a1, 57
              #                    occupy a2 with temp_5_cmp_35
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_6_cmp_35:i1 
              #                          temp_6_cmp_35 = icmp i32 Sge c_32, 48_0 
              #                    occupy a0 with c_32
              #                    occupy a3 with 48_0
    li      a3, 48
              #                    occupy a4 with temp_6_cmp_35
    slt     a4,a0,a3
    xori    a4,a4,1
              #                    free a0
              #                    free a3
              #                    free a4
              #                          new_var temp_7_logic_35:i1 
              #                          temp_7_logic_35 = And i1 temp_6_cmp_35, temp_5_cmp_35 
              #                    occupy a4 with temp_6_cmp_35
              #                    occupy a2 with temp_5_cmp_35
              #                    occupy a5 with temp_7_logic_35
    and     a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                          br i1 temp_7_logic_35, label branch_true_36, label branch_false_36 
              #                    occupy a5 with temp_7_logic_35
              #                    free a5
              #                    occupy a5 with temp_7_logic_35
    bnez    a5, .branch_true_36
              #                    free a5
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: c_32, tracked: true } |     a2:Freed { symidx: temp_5_cmp_35, tracked: true } |     a4:Freed { symidx: temp_6_cmp_35, tracked: true } |     a5:Freed { symidx: temp_7_logic_35, tracked: true } | 
              #                          label branch_true_36: 
.branch_true_36:
              #                          ret 1_0 
              #                    load from ra_is_num_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_num_0 in mem
    ld      s0,8(sp)
              #                    store to c_32 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with c_32
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: c_32, tracked: true } |     a2:Freed { symidx: temp_5_cmp_35, tracked: true } |     a4:Freed { symidx: temp_6_cmp_35, tracked: true } |     a5:Freed { symidx: temp_7_logic_35, tracked: true } | 
              #                          label branch_false_36: 
.branch_false_36:
              #                          ret 0_0 
              #                    load from ra_is_num_0 in mem
    ld      ra,16(sp)
              #                    load from s0_is_num_0 in mem
    ld      s0,8(sp)
              #                    store to c_32 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with c_32
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_5_cmp_35, tracked: true } |     a4:Freed { symidx: temp_6_cmp_35, tracked: true } |     a5:Freed { symidx: temp_7_logic_35, tracked: true } | 
              #                          label L25_0: 
.L25_0:
              #                    regtab     a2:Freed { symidx: temp_5_cmp_35, tracked: true } |     a4:Freed { symidx: temp_6_cmp_35, tracked: true } |     a5:Freed { symidx: temp_7_logic_35, tracked: true } | 
              #                    regtab 
              #                          Define next_token_0 [] -> next_token_ret_0 
    .globl next_token
    .type next_token,@function
next_token:
              #                    mem layout:|ra_next_token:8 at 88|s0_next_token:8 at 80|temp_8_ptr2globl:4 at 76|temp_9_ret_of_is_space:4 at 72|temp_10_:1 at 71|none:3 at 68|temp_11_ret_of_next_char:4 at 64|temp_12_ptr2globl:4 at 60|temp_13_ret_of_is_num:4 at 56|temp_14_:1 at 55|none:3 at 52|temp_15_ptr2globl:4 at 48|temp_16_arithop:4 at 44|temp_17_ret_of_next_char:4 at 40|temp_18_ret_of_is_num:4 at 36|temp_19_:1 at 35|none:3 at 32|temp_20_ptr2globl:4 at 28|temp_21_ptr2globl:4 at 24|temp_22_arithop:4 at 20|temp_23_arithop:4 at 16|temp_24_arithop:4 at 12|temp_25_ptr2globl:4 at 8|temp_26_ptr2globl:4 at 4|temp_27_ret_of_next_char:4 at 0
    addi    sp,sp,-96
              #                    store to ra_next_token_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_next_token_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                          alloc i32 temp_8_ptr2globl_43 
              #                          alloc i32 temp_9_ret_of_is_space_43 
              #                          alloc i1 temp_10__494 
              #                          alloc i32 temp_11_ret_of_next_char_42 
              #                          alloc i32 temp_12_ptr2globl_46 
              #                          alloc i32 temp_13_ret_of_is_num_46 
              #                          alloc i1 temp_14__565 
              #                          alloc i32 temp_15_ptr2globl_48 
              #                          alloc i32 temp_16_arithop_48 
              #                          alloc i32 temp_17_ret_of_next_char_50 
              #                          alloc i32 temp_18_ret_of_is_num_50 
              #                          alloc i1 temp_19__651 
              #                          alloc i32 temp_20_ptr2globl_52 
              #                          alloc i32 temp_21_ptr2globl_52 
              #                          alloc i32 temp_22_arithop_52 
              #                          alloc i32 temp_23_arithop_52 
              #                          alloc i32 temp_24_arithop_52 
              #                          alloc i32 temp_25_ptr2globl_42 
              #                          alloc i32 temp_26_ptr2globl_55 
              #                          alloc i32 temp_27_ret_of_next_char_55 
              #                    regtab 
              #                          label while.head_44: 
.while.head_44:
              #                          new_var temp_8_ptr2globl_43:i32 
              #                          temp_8_ptr2globl_43 = load *last_char_0:ptr->i32 
              #                    occupy a0 with *last_char_0
              #                       load label last_char as ptr to reg
    la      a0, last_char
              #                    occupy reg a0 with *last_char_0
              #                    occupy a1 with temp_8_ptr2globl_43
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_9_ret_of_is_space_43:i32 
              #                          temp_9_ret_of_is_space_43 =  Call i32 is_space_0(temp_8_ptr2globl_43) 
              #                    saved register dumping to mem
              #                    store to temp_8_ptr2globl_43 in mem offset legal
    sw      a1,76(sp)
              #                    release a1 with temp_8_ptr2globl_43
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_8_ptr2globl_43_0
              #                    load from temp_8_ptr2globl_43 in mem


    lw      a0,76(sp)
              #                    arg load ended


    call    is_space
              #                    store to temp_9_ret_of_is_space_43 in mem offset legal
    sw      a0,72(sp)
              #                          new_var temp_10__494:i1 
              #                          temp_10__494 = icmp i32 Ne temp_9_ret_of_is_space_43, 0_0 
              #                    occupy a0 with temp_9_ret_of_is_space_43
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_10__494
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_10__494, label while.body_44, label while.exit_44 
              #                    occupy a2 with temp_10__494
              #                    free a2
              #                    occupy a2 with temp_10__494
    bnez    a2, .while.body_44
              #                    free a2
    j       .while.exit_44
              #                    regtab     a0:Freed { symidx: temp_9_ret_of_is_space_43, tracked: true } |     a2:Freed { symidx: temp_10__494, tracked: true } | 
              #                          label while.body_44: 
.while.body_44:
              #                          new_var temp_11_ret_of_next_char_42:i32 
              #                          temp_11_ret_of_next_char_42 =  Call i32 next_char_0() 
              #                    saved register dumping to mem
              #                    store to temp_9_ret_of_is_space_43 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_9_ret_of_is_space_43
              #                    store to temp_10__494 in mem offset legal
    sb      a2,71(sp)
              #                    release a2 with temp_10__494
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_char
              #                    store to temp_11_ret_of_next_char_42 in mem offset legal
    sw      a0,64(sp)
              #                          jump label: while.head_44 
              #                    store to temp_11_ret_of_next_char_42 in mem offset legal
    sw      a0,64(sp)
              #                    release a0 with temp_11_ret_of_next_char_42
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: temp_9_ret_of_is_space_43, tracked: true } |     a2:Freed { symidx: temp_10__494, tracked: true } | 
              #                          label while.exit_44: 
.while.exit_44:
              #                          new_var temp_12_ptr2globl_46:i32 
              #                          temp_12_ptr2globl_46 = load *last_char_0:ptr->i32 
              #                    occupy a1 with *last_char_0
              #                       load label last_char as ptr to reg
    la      a1, last_char
              #                    occupy reg a1 with *last_char_0
              #                    occupy a3 with temp_12_ptr2globl_46
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_13_ret_of_is_num_46:i32 
              #                          temp_13_ret_of_is_num_46 =  Call i32 is_num_0(temp_12_ptr2globl_46) 
              #                    saved register dumping to mem
              #                    store to temp_9_ret_of_is_space_43 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_9_ret_of_is_space_43
              #                    store to temp_10__494 in mem offset legal
    sb      a2,71(sp)
              #                    release a2 with temp_10__494
              #                    store to temp_12_ptr2globl_46 in mem offset legal
    sw      a3,60(sp)
              #                    release a3 with temp_12_ptr2globl_46
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_12_ptr2globl_46_0
              #                    load from temp_12_ptr2globl_46 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    is_num
              #                    store to temp_13_ret_of_is_num_46 in mem offset legal
    sw      a0,56(sp)
              #                          new_var temp_14__565:i1 
              #                          temp_14__565 = icmp i32 Ne temp_13_ret_of_is_num_46, 0_0 
              #                    occupy a0 with temp_13_ret_of_is_num_46
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_14__565
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_14__565, label branch_true_47, label branch_false_47 
              #                    occupy a2 with temp_14__565
              #                    free a2
              #                    occupy a2 with temp_14__565
    bnez    a2, .branch_true_47
              #                    free a2
    j       .branch_false_47
              #                    regtab     a0:Freed { symidx: temp_13_ret_of_is_num_46, tracked: true } |     a2:Freed { symidx: temp_14__565, tracked: true } | 
              #                          label branch_true_47: 
.branch_true_47:
              #                          new_var temp_15_ptr2globl_48:i32 
              #                          temp_15_ptr2globl_48 = load *last_char_0:ptr->i32 
              #                    occupy a1 with *last_char_0
              #                       load label last_char as ptr to reg
    la      a1, last_char
              #                    occupy reg a1 with *last_char_0
              #                    occupy a3 with temp_15_ptr2globl_48
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_16_arithop_48:i32 
              #                          temp_16_arithop_48 = Sub i32 temp_15_ptr2globl_48, 48_0 
              #                    occupy a3 with temp_15_ptr2globl_48
              #                    occupy a4 with 48_0
    li      a4, 48
              #                    occupy a5 with temp_16_arithop_48
              #                    regtab:    a0:Freed { symidx: temp_13_ret_of_is_num_46, tracked: true } |     a1:Freed { symidx: *last_char_0, tracked: false } |     a2:Freed { symidx: temp_14__565, tracked: true } |     a3:Occupied { symidx: temp_15_ptr2globl_48, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     a5:Occupied { symidx: temp_16_arithop_48, tracked: true, occupy_count: 1 } | 


    sub     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          store temp_16_arithop_48:i32 *num_0:ptr->i32 
              #                    occupy a6 with *num_0
              #                       load label num as ptr to reg
    la      a6, num
              #                    occupy reg a6 with *num_0
              #                    occupy a5 with temp_16_arithop_48
    sw      a5,0(a6)
              #                    free a5
              #                    free a6
              #                          jump label: while.head_51 
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: temp_13_ret_of_is_num_46, tracked: true } |     a2:Freed { symidx: temp_14__565, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_48, tracked: true } |     a5:Freed { symidx: temp_16_arithop_48, tracked: true } | 
              #                          label while.head_51: 
.while.head_51:
              #                          new_var temp_17_ret_of_next_char_50:i32 
              #                          temp_17_ret_of_next_char_50 =  Call i32 next_char_0() 
              #                    saved register dumping to mem
              #                    store to temp_13_ret_of_is_num_46 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_13_ret_of_is_num_46
              #                    store to temp_14__565 in mem offset legal
    sb      a2,55(sp)
              #                    release a2 with temp_14__565
              #                    store to temp_15_ptr2globl_48 in mem offset legal
    sw      a3,48(sp)
              #                    release a3 with temp_15_ptr2globl_48
              #                    store to temp_16_arithop_48 in mem offset legal
    sw      a5,44(sp)
              #                    release a5 with temp_16_arithop_48
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_char
              #                    store to temp_17_ret_of_next_char_50 in mem offset legal
    sw      a0,40(sp)
              #                          new_var temp_18_ret_of_is_num_50:i32 
              #                          temp_18_ret_of_is_num_50 =  Call i32 is_num_0(temp_17_ret_of_next_char_50) 
              #                    saved register dumping to mem
              #                    store to temp_17_ret_of_next_char_50 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_17_ret_of_next_char_50
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_17_ret_of_next_char_50_0
              #                    load from temp_17_ret_of_next_char_50 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    is_num
              #                    store to temp_18_ret_of_is_num_50 in mem offset legal
    sw      a0,36(sp)
              #                          new_var temp_19__651:i1 
              #                          temp_19__651 = icmp i32 Ne temp_18_ret_of_is_num_50, 0_0 
              #                    occupy a0 with temp_18_ret_of_is_num_50
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_19__651
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_19__651, label while.body_51, label while.exit_51 
              #                    occupy a2 with temp_19__651
              #                    free a2
              #                    occupy a2 with temp_19__651
    bnez    a2, .while.body_51
              #                    free a2
    j       .while.exit_51
              #                    regtab     a0:Freed { symidx: temp_18_ret_of_is_num_50, tracked: true } |     a2:Freed { symidx: temp_19__651, tracked: true } | 
              #                          label while.body_51: 
.while.body_51:
              #                          new_var temp_20_ptr2globl_52:i32 
              #                          temp_20_ptr2globl_52 = load *last_char_0:ptr->i32 
              #                    occupy a1 with *last_char_0
              #                       load label last_char as ptr to reg
    la      a1, last_char
              #                    occupy reg a1 with *last_char_0
              #                    occupy a3 with temp_20_ptr2globl_52
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_21_ptr2globl_52:i32 
              #                          temp_21_ptr2globl_52 = load *num_0:ptr->i32 
              #                    occupy a4 with *num_0
              #                       load label num as ptr to reg
    la      a4, num
              #                    occupy reg a4 with *num_0
              #                    occupy a5 with temp_21_ptr2globl_52
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_22_arithop_52:i32 
              #                          temp_22_arithop_52 = Mul i32 temp_21_ptr2globl_52, 10_0 
              #                    occupy a5 with temp_21_ptr2globl_52
              #                    occupy a6 with 10_0
    li      a6, 10
              #                    occupy a7 with temp_22_arithop_52
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
              #                    free a7
              #                          new_var temp_23_arithop_52:i32 
              #                          temp_23_arithop_52 = Add i32 temp_22_arithop_52, temp_20_ptr2globl_52 
              #                    occupy a7 with temp_22_arithop_52
              #                    occupy a3 with temp_20_ptr2globl_52
              #                    occupy s1 with temp_23_arithop_52
    add     s1,a7,a3
              #                    free a7
              #                    free a3
              #                    free s1
              #                          new_var temp_24_arithop_52:i32 
              #                          temp_24_arithop_52 = Sub i32 temp_23_arithop_52, 48_0 
              #                    occupy s1 with temp_23_arithop_52
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_24_arithop_52
              #                    regtab:    a0:Freed { symidx: temp_18_ret_of_is_num_50, tracked: true } |     a1:Freed { symidx: *last_char_0, tracked: false } |     a2:Freed { symidx: temp_19__651, tracked: true } |     a3:Freed { symidx: temp_20_ptr2globl_52, tracked: true } |     a4:Freed { symidx: *num_0, tracked: false } |     a5:Freed { symidx: temp_21_ptr2globl_52, tracked: true } |     a6:Freed { symidx: 10_0, tracked: false } |     a7:Freed { symidx: temp_22_arithop_52, tracked: true } |     s1:Occupied { symidx: temp_23_arithop_52, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_24_arithop_52, tracked: true, occupy_count: 1 } | 


    sub     s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                          store temp_24_arithop_52:i32 *num_0:ptr->i32 
              #                    occupy s4 with *num_0
              #                       load label num as ptr to reg
    la      s4, num
              #                    occupy reg s4 with *num_0
              #                    occupy s3 with temp_24_arithop_52
    sw      s3,0(s4)
              #                    free s3
              #                    free s4
              #                          jump label: while.head_51 
              #                    store to temp_20_ptr2globl_52 in mem offset legal
    sw      a3,28(sp)
              #                    release a3 with temp_20_ptr2globl_52
              #                    store to temp_24_arithop_52 in mem offset legal
    sw      s3,12(sp)
              #                    release s3 with temp_24_arithop_52
              #                    store to temp_22_arithop_52 in mem offset legal
    sw      a7,20(sp)
              #                    release a7 with temp_22_arithop_52
              #                    store to temp_21_ptr2globl_52 in mem offset legal
    sw      a5,24(sp)
              #                    release a5 with temp_21_ptr2globl_52
              #                    store to temp_23_arithop_52 in mem offset legal
    sw      s1,16(sp)
              #                    release s1 with temp_23_arithop_52
              #                    store to temp_18_ret_of_is_num_50 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_18_ret_of_is_num_50
              #                    store to temp_19__651 in mem offset legal
    sb      a2,35(sp)
              #                    release a2 with temp_19__651
              #                    occupy a3 with _anonymous_of_temp_15_ptr2globl_48_0
              #                    load from temp_15_ptr2globl_48 in mem


    lw      a3,48(sp)
              #                    occupy a5 with _anonymous_of_temp_16_arithop_48_0
              #                    load from temp_16_arithop_48 in mem


    lw      a5,44(sp)
              #                    occupy a0 with _anonymous_of_temp_13_ret_of_is_num_46_0
              #                    load from temp_13_ret_of_is_num_46 in mem


    lw      a0,56(sp)
              #                    occupy a2 with _anonymous_of_temp_14__565_0
              #                    load from temp_14__565 in mem
    lb      a2,55(sp)
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: temp_18_ret_of_is_num_50, tracked: true } |     a2:Freed { symidx: temp_19__651, tracked: true } | 
              #                          label while.exit_51: 
.while.exit_51:
              #                          store 0_0:i32 *cur_token_0:ptr->i32 
              #                    occupy a1 with *cur_token_0
              #                       load label cur_token as ptr to reg
    la      a1, cur_token
              #                    occupy reg a1 with *cur_token_0
              #                    occupy a3 with 0_0
    li      a3, 0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          jump label: L22_0 
    j       .L22_0
              #                    regtab     a0:Freed { symidx: temp_13_ret_of_is_num_46, tracked: true } |     a2:Freed { symidx: temp_14__565, tracked: true } | 
              #                          label branch_false_47: 
.branch_false_47:
              #                          new_var temp_26_ptr2globl_55:i32 
              #                          temp_26_ptr2globl_55 = load *last_char_0:ptr->i32 
              #                    occupy a1 with *last_char_0
              #                       load label last_char as ptr to reg
    la      a1, last_char
              #                    occupy reg a1 with *last_char_0
              #                    occupy a3 with temp_26_ptr2globl_55
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          store temp_26_ptr2globl_55:i32 *other_0:ptr->i32 
              #                    occupy a4 with *other_0
              #                       load label other as ptr to reg
    la      a4, other
              #                    occupy reg a4 with *other_0
              #                    occupy a3 with temp_26_ptr2globl_55
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          new_var temp_27_ret_of_next_char_55:i32 
              #                          temp_27_ret_of_next_char_55 =  Call i32 next_char_0() 
              #                    saved register dumping to mem
              #                    store to temp_13_ret_of_is_num_46 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_13_ret_of_is_num_46
              #                    store to temp_14__565 in mem offset legal
    sb      a2,55(sp)
              #                    release a2 with temp_14__565
              #                    store to temp_26_ptr2globl_55 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_26_ptr2globl_55
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_char
              #                    store to temp_27_ret_of_next_char_55 in mem offset legal
    sw      a0,0(sp)
              #                          store 1_0:i32 *cur_token_0:ptr->i32 
              #                    occupy a1 with *cur_token_0
              #                       load label cur_token as ptr to reg
    la      a1, cur_token
              #                    occupy reg a1 with *cur_token_0
              #                    occupy a2 with 1_0
    li      a2, 1
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          jump label: L22_0 
              #                    store to temp_27_ret_of_next_char_55 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_27_ret_of_next_char_55
              #                    occupy a0 with _anonymous_of_temp_18_ret_of_is_num_50_0
              #                    load from temp_18_ret_of_is_num_50 in mem


    lw      a0,36(sp)
              #                    occupy a2 with _anonymous_of_temp_19__651_0
              #                    load from temp_19__651 in mem
    lb      a2,35(sp)
    j       .L22_0
              #                    regtab     a0:Freed { symidx: temp_18_ret_of_is_num_50, tracked: true } |     a2:Freed { symidx: temp_19__651, tracked: true } | 
              #                          label L22_0: 
.L22_0:
              #                    regtab     a0:Freed { symidx: temp_18_ret_of_is_num_50, tracked: true } |     a2:Freed { symidx: temp_19__651, tracked: true } | 
              #                          label L23_0: 
.L23_0:
              #                          new_var temp_25_ptr2globl_42:i32 
              #                          temp_25_ptr2globl_42 = load *cur_token_0:ptr->i32 
              #                    occupy a1 with *cur_token_0
              #                       load label cur_token as ptr to reg
    la      a1, cur_token
              #                    occupy reg a1 with *cur_token_0
              #                    occupy a3 with temp_25_ptr2globl_42
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          ret temp_25_ptr2globl_42 
              #                    load from ra_next_token_0 in mem
    ld      ra,88(sp)
              #                    load from s0_next_token_0 in mem
    ld      s0,80(sp)
              #                    store to temp_25_ptr2globl_42 in mem offset legal
    sw      a3,8(sp)
              #                    release a3 with temp_25_ptr2globl_42
              #                    store to temp_18_ret_of_is_num_50 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_18_ret_of_is_num_50
              #                    occupy a0 with temp_25_ptr2globl_42
              #                    load from temp_25_ptr2globl_42 in mem


    lw      a0,8(sp)
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_19__651, tracked: true } | 
              #                    regtab 
              #                          Define panic_0 [] -> panic_ret_0 
    .globl panic
    .type panic,@function
panic:
              #                    mem layout:|ra_panic:8 at 16|s0_panic:8 at 8|temp_28_:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_panic_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_panic_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_28__61 
              #                    regtab 
              #                          label L21_0: 
.L21_0:
              #                           Call void putch_0(112_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_112_0_0
    li      a0, 112
              #                    arg load ended


    call    putch
              #                           Call void putch_0(97_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_97_0_0
    li      a0, 97
              #                    arg load ended


    call    putch
              #                           Call void putch_0(110_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_110_0_0
    li      a0, 110
              #                    arg load ended


    call    putch
              #                           Call void putch_0(105_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_105_0_0
    li      a0, 105
              #                    arg load ended


    call    putch
              #                           Call void putch_0(99_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_99_0_0
    li      a0, 99
              #                    arg load ended


    call    putch
              #                           Call void putch_0(33_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_33_0_0
    li      a0, 33
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
              #                          new_var temp_28__61:i32 
              #                          temp_28__61 = Sub i32 0_0, 1_0 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_28__61
              #                    regtab:    a0:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_28__61, tracked: true, occupy_count: 1 } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          ret temp_28__61 
              #                    load from ra_panic_0 in mem
    ld      ra,16(sp)
              #                    load from s0_panic_0 in mem
    ld      s0,8(sp)
              #                    store to temp_28__61 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_28__61
              #                    occupy a0 with temp_28__61
              #                    load from temp_28__61 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
              #                    regtab 
              #                          Define get_op_prec_0 [op_70] -> get_op_prec_ret_0 
    .globl get_op_prec
    .type get_op_prec,@function
get_op_prec:
              #                    mem layout:|ra_get_op_prec:8 at 24|s0_get_op_prec:8 at 16|op:4 at 12|temp_29_cmp:1 at 11|temp_30_cmp:1 at 10|temp_31_logic:1 at 9|temp_32_cmp:1 at 8|temp_33_cmp:1 at 7|temp_34_logic:1 at 6|temp_35_cmp:1 at 5|temp_36_logic:1 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_get_op_prec_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_get_op_prec_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                          alloc i1 temp_29_cmp_73 
              #                          alloc i1 temp_30_cmp_73 
              #                          alloc i1 temp_31_logic_73 
              #                          alloc i1 temp_32_cmp_76 
              #                          alloc i1 temp_33_cmp_76 
              #                          alloc i1 temp_34_logic_76 
              #                          alloc i1 temp_35_cmp_76 
              #                          alloc i1 temp_36_logic_76 
              #                    regtab     a0:Freed { symidx: op_70, tracked: true } | 
              #                          label L18_0: 
.L18_0:
              #                          new_var temp_29_cmp_73:i1 
              #                          temp_29_cmp_73 = icmp i32 Eq op_70, 45_0 
              #                    occupy a0 with op_70
              #                    occupy a1 with 45_0
    li      a1, 45
              #                    occupy a2 with temp_29_cmp_73
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_30_cmp_73:i1 
              #                          temp_30_cmp_73 = icmp i32 Eq op_70, 43_0 
              #                    occupy a0 with op_70
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    occupy a4 with temp_30_cmp_73
    xor     a4,a0,a3
    seqz    a4, a4
              #                    free a0
              #                    free a3
              #                    free a4
              #                          new_var temp_31_logic_73:i1 
              #                          temp_31_logic_73 = Or i1 temp_30_cmp_73, temp_29_cmp_73 
              #                    occupy a4 with temp_30_cmp_73
              #                    occupy a2 with temp_29_cmp_73
              #                    occupy a2 with temp_29_cmp_73
              #                    free a4
              #                    free a2
              #                    free a2
              #                          br i1 temp_31_logic_73, label branch_true_74, label branch_false_74 
              #                    occupy a5 with temp_31_logic_73
              #                    load from temp_31_logic_73 in mem
    lb      a5,9(sp)
              #                    free a5
              #                    occupy a5 with temp_31_logic_73
    bnez    a5, .branch_true_74
              #                    free a5
    j       .branch_false_74
              #                    regtab     a0:Freed { symidx: op_70, tracked: true } |     a2:Freed { symidx: temp_29_cmp_73, tracked: true } |     a4:Freed { symidx: temp_30_cmp_73, tracked: true } |     a5:Freed { symidx: temp_31_logic_73, tracked: true } | 
              #                          label branch_true_74: 
.branch_true_74:
              #                          ret 10_0 
              #                    load from ra_get_op_prec_0 in mem
    ld      ra,24(sp)
              #                    load from s0_get_op_prec_0 in mem
    ld      s0,16(sp)
              #                    store to op_70 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with op_70
              #                    occupy a0 with 10_0
    li      a0, 10
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_70, tracked: true } |     a2:Freed { symidx: temp_29_cmp_73, tracked: true } |     a4:Freed { symidx: temp_30_cmp_73, tracked: true } |     a5:Freed { symidx: temp_31_logic_73, tracked: true } | 
              #                          label branch_false_74: 
.branch_false_74:
              #                    regtab     a0:Freed { symidx: op_70, tracked: true } |     a2:Freed { symidx: temp_29_cmp_73, tracked: true } |     a4:Freed { symidx: temp_30_cmp_73, tracked: true } |     a5:Freed { symidx: temp_31_logic_73, tracked: true } | 
              #                          label L19_0: 
.L19_0:
              #                          new_var temp_32_cmp_76:i1 
              #                          temp_32_cmp_76 = icmp i32 Eq op_70, 37_0 
              #                    occupy a0 with op_70
              #                    occupy a1 with 37_0
    li      a1, 37
              #                    occupy a3 with temp_32_cmp_76
    xor     a3,a0,a1
    seqz    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                          new_var temp_33_cmp_76:i1 
              #                          temp_33_cmp_76 = icmp i32 Eq op_70, 47_0 
              #                    occupy a0 with op_70
              #                    occupy a6 with 47_0
    li      a6, 47
              #                    occupy a7 with temp_33_cmp_76
    xor     a7,a0,a6
    seqz    a7, a7
              #                    free a0
              #                    free a6
              #                    free a7
              #                          new_var temp_34_logic_76:i1 
              #                          temp_34_logic_76 = Or i1 temp_33_cmp_76, temp_32_cmp_76 
              #                    occupy a7 with temp_33_cmp_76
              #                    occupy a3 with temp_32_cmp_76
              #                    occupy a3 with temp_32_cmp_76
              #                    free a7
              #                    free a3
              #                    free a3
              #                          new_var temp_35_cmp_76:i1 
              #                          temp_35_cmp_76 = icmp i32 Eq op_70, 42_0 
              #                    occupy a0 with op_70
              #                    occupy s1 with 42_0
    li      s1, 42
              #                    occupy s2 with temp_35_cmp_76
    xor     s2,a0,s1
    seqz    s2, s2
              #                    free a0
              #                    free s1
              #                    free s2
              #                          new_var temp_36_logic_76:i1 
              #                          temp_36_logic_76 = Or i1 temp_35_cmp_76, temp_34_logic_76 
              #                    occupy s2 with temp_35_cmp_76
              #                    occupy s3 with temp_34_logic_76
              #                    load from temp_34_logic_76 in mem
    lb      s3,6(sp)
              #                    occupy s3 with temp_34_logic_76
              #                    free s2
              #                    free s3
              #                    free s3
              #                          br i1 temp_36_logic_76, label branch_true_77, label branch_false_77 
              #                    occupy s4 with temp_36_logic_76
              #                    load from temp_36_logic_76 in mem
    lb      s4,4(sp)
              #                    free s4
              #                    occupy s4 with temp_36_logic_76
    bnez    s4, .branch_true_77
              #                    free s4
    j       .branch_false_77
              #                    regtab     a0:Freed { symidx: op_70, tracked: true } |     a2:Freed { symidx: temp_29_cmp_73, tracked: true } |     a3:Freed { symidx: temp_32_cmp_76, tracked: true } |     a4:Freed { symidx: temp_30_cmp_73, tracked: true } |     a5:Freed { symidx: temp_31_logic_73, tracked: true } |     a7:Freed { symidx: temp_33_cmp_76, tracked: true } |     s2:Freed { symidx: temp_35_cmp_76, tracked: true } |     s3:Freed { symidx: temp_34_logic_76, tracked: true } |     s4:Freed { symidx: temp_36_logic_76, tracked: true } | 
              #                          label branch_true_77: 
.branch_true_77:
              #                          ret 20_0 
              #                    load from ra_get_op_prec_0 in mem
    ld      ra,24(sp)
              #                    load from s0_get_op_prec_0 in mem
    ld      s0,16(sp)
              #                    store to op_70 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with op_70
              #                    occupy a0 with 20_0
    li      a0, 20
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_70, tracked: true } |     a2:Freed { symidx: temp_29_cmp_73, tracked: true } |     a3:Freed { symidx: temp_32_cmp_76, tracked: true } |     a4:Freed { symidx: temp_30_cmp_73, tracked: true } |     a5:Freed { symidx: temp_31_logic_73, tracked: true } |     a7:Freed { symidx: temp_33_cmp_76, tracked: true } |     s2:Freed { symidx: temp_35_cmp_76, tracked: true } |     s3:Freed { symidx: temp_34_logic_76, tracked: true } |     s4:Freed { symidx: temp_36_logic_76, tracked: true } | 
              #                          label branch_false_77: 
.branch_false_77:
              #                    regtab     a0:Freed { symidx: op_70, tracked: true } |     a2:Freed { symidx: temp_29_cmp_73, tracked: true } |     a3:Freed { symidx: temp_32_cmp_76, tracked: true } |     a4:Freed { symidx: temp_30_cmp_73, tracked: true } |     a5:Freed { symidx: temp_31_logic_73, tracked: true } |     a7:Freed { symidx: temp_33_cmp_76, tracked: true } |     s2:Freed { symidx: temp_35_cmp_76, tracked: true } |     s3:Freed { symidx: temp_34_logic_76, tracked: true } |     s4:Freed { symidx: temp_36_logic_76, tracked: true } | 
              #                          label L20_0: 
.L20_0:
              #                          ret 0_0 
              #                    load from ra_get_op_prec_0 in mem
    ld      ra,24(sp)
              #                    load from s0_get_op_prec_0 in mem
    ld      s0,16(sp)
              #                    store to op_70 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with op_70
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_29_cmp_73, tracked: true } |     a3:Freed { symidx: temp_32_cmp_76, tracked: true } |     a4:Freed { symidx: temp_30_cmp_73, tracked: true } |     a5:Freed { symidx: temp_31_logic_73, tracked: true } |     a7:Freed { symidx: temp_33_cmp_76, tracked: true } |     s2:Freed { symidx: temp_35_cmp_76, tracked: true } |     s3:Freed { symidx: temp_34_logic_76, tracked: true } |     s4:Freed { symidx: temp_36_logic_76, tracked: true } | 
              #                    regtab 
              #                          Define stack_push_0 [s_80, v_80] -> stack_push_ret_0 
    .globl stack_push
    .type stack_push,@function
stack_push:
              #                    mem layout:|ra_stack_push:8 at 72|s0_stack_push:8 at 64|s:8 at 56|v:4 at 52|none:4 at 48|temp_37_index_ptr:8 at 40|temp_38_array_ptr:8 at 32|temp_39_array_ele:4 at 28|temp_40_arithop:4 at 24|temp_41_array_ptr:8 at 16|temp_42_array_ele:4 at 12|none:4 at 8|temp_43_index_ptr:8 at 0
    addi    sp,sp,-80
              #                    store to ra_stack_push_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_stack_push_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          new_var s_80:ptr->i32 
              #                          alloc ptr->i32 temp_37_index_ptr_82 
              #                          alloc ptr->i32 temp_38_array_ptr_82 
              #                          alloc i32 temp_39_array_ele_82 
              #                          alloc i32 temp_40_arithop_82 
              #                          alloc ptr->i32 temp_41_array_ptr_82 
              #                          alloc i32 temp_42_array_ele_82 
              #                          alloc ptr->i32 temp_43_index_ptr_82 
              #                    regtab     a0:Freed { symidx: s_80, tracked: true } |     a1:Freed { symidx: v_80, tracked: true } | 
              #                          label L17_0: 
.L17_0:
              #                          new_var temp_37_index_ptr_82:ptr->i32 
              #                          temp_37_index_ptr_82 = getelementptr s_80:ptr->i32 [Some(0_0)] 
              #                    occupy a2 with temp_37_index_ptr_82
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a0 with s_80
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_38_array_ptr_82:ptr->i32 
              #                          temp_38_array_ptr_82 = getelementptr s_80:ptr->i32 [Some(0_0)] 
              #                    occupy a6 with temp_38_array_ptr_82
    li      a6, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a3,a4
              #                    free a3
              #                    free a4
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy a0 with s_80
    add     a6,a6,a0
              #                    free a0
              #                    free a6
              #                          new_var temp_39_array_ele_82:i32 
              #                          temp_39_array_ele_82 = load temp_38_array_ptr_82:ptr->i32 
              #                    occupy a6 with temp_38_array_ptr_82
              #                    occupy s1 with temp_39_array_ele_82
    lw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                          new_var temp_40_arithop_82:i32 
              #                          temp_40_arithop_82 = Add i32 temp_39_array_ele_82, 1_0 
              #                    occupy s1 with temp_39_array_ele_82
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy s2 with temp_40_arithop_82
    add     s2,s1,a3
              #                    free s1
              #                    free a3
              #                    free s2
              #                          store temp_40_arithop_82:i32 temp_37_index_ptr_82:ptr->i32 
              #                    occupy a2 with temp_37_index_ptr_82
              #                    occupy s2 with temp_40_arithop_82
    sw      s2,0(a2)
              #                    free s2
              #                    free a2
              #                          mu s_80:222 
              #                          s_80 = chi s_80:222 
              #                          new_var temp_41_array_ptr_82:ptr->i32 
              #                          temp_41_array_ptr_82 = getelementptr s_80:ptr->i32 [Some(0_0)] 
              #                    occupy s3 with temp_41_array_ptr_82
    li      s3, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a3,a4
              #                    free a3
              #                    free a4
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with s_80
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          new_var temp_42_array_ele_82:i32 
              #                          temp_42_array_ele_82 = load temp_41_array_ptr_82:ptr->i32 
              #                    occupy s3 with temp_41_array_ptr_82
              #                    occupy s5 with temp_42_array_ele_82
    lw      s5,0(s3)
              #                    free s5
              #                    free s3
              #                          new_var temp_43_index_ptr_82:ptr->i32 
              #                          temp_43_index_ptr_82 = getelementptr s_80:ptr->i32 [Some(temp_42_array_ele_82)] 
              #                    occupy s6 with temp_43_index_ptr_82
    li      s6, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy s5 with temp_42_array_ele_82
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a3,s5
              #                    free a3
              #                    free s5
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy a0 with s_80
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          store v_80:i32 temp_43_index_ptr_82:ptr->i32 
              #                    occupy s6 with temp_43_index_ptr_82
              #                    occupy a1 with v_80
    sw      a1,0(s6)
              #                    free a1
              #                    free s6
              #                          mu s_80:234 
              #                          s_80 = chi s_80:234 
              #                    regtab     a0:Freed { symidx: s_80, tracked: true } |     a1:Freed { symidx: v_80, tracked: true } |     a2:Freed { symidx: temp_37_index_ptr_82, tracked: true } |     a6:Freed { symidx: temp_38_array_ptr_82, tracked: true } |     s1:Freed { symidx: temp_39_array_ele_82, tracked: true } |     s2:Freed { symidx: temp_40_arithop_82, tracked: true } |     s3:Freed { symidx: temp_41_array_ptr_82, tracked: true } |     s5:Freed { symidx: temp_42_array_ele_82, tracked: true } |     s6:Freed { symidx: temp_43_index_ptr_82, tracked: true } | 
              #                    regtab 
              #                          Define stack_pop_0 [s_85] -> stack_pop_ret_0 
    .globl stack_pop
    .type stack_pop,@function
stack_pop:
              #                    mem layout:|ra_stack_pop:8 at 72|s0_stack_pop:8 at 64|s:8 at 56|temp_44_array_ptr:8 at 48|temp_45_array_ele:4 at 44|none:4 at 40|temp_46_array_ptr:8 at 32|temp_47_array_ele:4 at 28|last:4 at 24|temp_48_index_ptr:8 at 16|temp_49_array_ptr:8 at 8|temp_50_array_ele:4 at 4|temp_51_arithop:4 at 0
    addi    sp,sp,-80
              #                    store to ra_stack_pop_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_stack_pop_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          new_var s_85:ptr->i32 
              #                          alloc ptr->i32 temp_44_array_ptr_87 
              #                          alloc i32 temp_45_array_ele_87 
              #                          alloc ptr->i32 temp_46_array_ptr_87 
              #                          alloc i32 temp_47_array_ele_87 
              #                          alloc i32 last_87 
              #                          alloc ptr->i32 temp_48_index_ptr_87 
              #                          alloc ptr->i32 temp_49_array_ptr_87 
              #                          alloc i32 temp_50_array_ele_87 
              #                          alloc i32 temp_51_arithop_87 
              #                    regtab     a0:Freed { symidx: s_85, tracked: true } | 
              #                          label L16_0: 
.L16_0:
              #                          new_var temp_44_array_ptr_87:ptr->i32 
              #                          temp_44_array_ptr_87 = getelementptr s_85:ptr->i32 [Some(0_0)] 
              #                    occupy a1 with temp_44_array_ptr_87
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a0 with s_85
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_45_array_ele_87:i32 
              #                          temp_45_array_ele_87 = load temp_44_array_ptr_87:ptr->i32 
              #                    occupy a1 with temp_44_array_ptr_87
              #                    occupy a5 with temp_45_array_ele_87
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_46_array_ptr_87:ptr->i32 
              #                          temp_46_array_ptr_87 = getelementptr s_85:ptr->i32 [Some(temp_45_array_ele_87)] 
              #                    occupy a6 with temp_46_array_ptr_87
    li      a6, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a5 with temp_45_array_ele_87
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a2,a5
              #                    free a2
              #                    free a5
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy a0 with s_85
    add     a6,a6,a0
              #                    free a0
              #                    free a6
              #                          new_var temp_47_array_ele_87:i32 
              #                          temp_47_array_ele_87 = load temp_46_array_ptr_87:ptr->i32 
              #                    occupy a6 with temp_46_array_ptr_87
              #                    occupy s1 with temp_47_array_ele_87
    lw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                          last_87 = i32 temp_47_array_ele_87 
              #                    occupy s1 with temp_47_array_ele_87
              #                    occupy s2 with last_87
    mv      s2, s1
              #                    free s1
              #                    free s2
              #                          new_var temp_48_index_ptr_87:ptr->i32 
              #                          temp_48_index_ptr_87 = getelementptr s_85:ptr->i32 [Some(0_0)] 
              #                    occupy s3 with temp_48_index_ptr_87
    li      s3, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    found literal reg Some(a3) already exist with 0_0
              #                    occupy a3 with 0_0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a2,a3
              #                    free a2
              #                    free a3
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with s_85
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          new_var temp_49_array_ptr_87:ptr->i32 
              #                          temp_49_array_ptr_87 = getelementptr s_85:ptr->i32 [Some(0_0)] 
              #                    occupy s5 with temp_49_array_ptr_87
    li      s5, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    found literal reg Some(a3) already exist with 0_0
              #                    occupy a3 with 0_0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a2,a3
              #                    free a2
              #                    free a3
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a0 with s_85
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                          new_var temp_50_array_ele_87:i32 
              #                          temp_50_array_ele_87 = load temp_49_array_ptr_87:ptr->i32 
              #                    occupy s5 with temp_49_array_ptr_87
              #                    occupy s7 with temp_50_array_ele_87
    lw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          new_var temp_51_arithop_87:i32 
              #                          temp_51_arithop_87 = Sub i32 temp_50_array_ele_87, 1_0 
              #                    occupy s7 with temp_50_array_ele_87
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy s8 with temp_51_arithop_87
              #                    regtab:    a0:Freed { symidx: s_85, tracked: true } |     a1:Freed { symidx: temp_44_array_ptr_87, tracked: true } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: 0_0, tracked: false } |     a4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a5:Freed { symidx: temp_45_array_ele_87, tracked: true } |     a6:Freed { symidx: temp_46_array_ptr_87, tracked: true } |     a7:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s1:Freed { symidx: temp_47_array_ele_87, tracked: true } |     s2:Freed { symidx: last_87, tracked: true } |     s3:Freed { symidx: temp_48_index_ptr_87, tracked: true } |     s4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s5:Freed { symidx: temp_49_array_ptr_87, tracked: true } |     s6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s7:Occupied { symidx: temp_50_array_ele_87, tracked: true, occupy_count: 1 } |     s8:Occupied { symidx: temp_51_arithop_87, tracked: true, occupy_count: 1 } | 


    sub     s8,s7,a2
              #                    free s7
              #                    free a2
              #                    free s8
              #                          store temp_51_arithop_87:i32 temp_48_index_ptr_87:ptr->i32 
              #                    occupy s3 with temp_48_index_ptr_87
              #                    occupy s8 with temp_51_arithop_87
    sw      s8,0(s3)
              #                    free s8
              #                    free s3
              #                          mu s_85:263 
              #                          s_85 = chi s_85:263 
              #                          ret last_87 
              #                    load from ra_stack_pop_0 in mem
    ld      ra,72(sp)
              #                    load from s0_stack_pop_0 in mem
    ld      s0,64(sp)
              #                    store to last_87 in mem offset legal
    sw      s2,24(sp)
              #                    release s2 with last_87
              #                    store to s_85 in mem offset legal
    sd      a0,56(sp)
              #                    release a0 with s_85
              #                    occupy a0 with last_87
              #                    load from last_87 in mem


    lw      a0,24(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_44_array_ptr_87, tracked: true } |     a5:Freed { symidx: temp_45_array_ele_87, tracked: true } |     a6:Freed { symidx: temp_46_array_ptr_87, tracked: true } |     s1:Freed { symidx: temp_47_array_ele_87, tracked: true } |     s3:Freed { symidx: temp_48_index_ptr_87, tracked: true } |     s5:Freed { symidx: temp_49_array_ptr_87, tracked: true } |     s7:Freed { symidx: temp_50_array_ele_87, tracked: true } |     s8:Freed { symidx: temp_51_arithop_87, tracked: true } | 
              #                    regtab 
              #                          Define stack_peek_0 [s_91] -> stack_peek_ret_0 
    .globl stack_peek
    .type stack_peek,@function
stack_peek:
              #                    mem layout:|ra_stack_peek:8 at 48|s0_stack_peek:8 at 40|s:8 at 32|temp_52_array_ptr:8 at 24|temp_53_array_ele:4 at 20|none:4 at 16|temp_54_array_ptr:8 at 8|temp_55_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-56
              #                    store to ra_stack_peek_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_stack_peek_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          new_var s_91:ptr->i32 
              #                          alloc ptr->i32 temp_52_array_ptr_93 
              #                          alloc i32 temp_53_array_ele_93 
              #                          alloc ptr->i32 temp_54_array_ptr_93 
              #                          alloc i32 temp_55_array_ele_93 
              #                    regtab     a0:Freed { symidx: s_91, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                          new_var temp_52_array_ptr_93:ptr->i32 
              #                          temp_52_array_ptr_93 = getelementptr s_91:ptr->i32 [Some(0_0)] 
              #                    occupy a1 with temp_52_array_ptr_93
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a0 with s_91
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_53_array_ele_93:i32 
              #                          temp_53_array_ele_93 = load temp_52_array_ptr_93:ptr->i32 
              #                    occupy a1 with temp_52_array_ptr_93
              #                    occupy a5 with temp_53_array_ele_93
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_54_array_ptr_93:ptr->i32 
              #                          temp_54_array_ptr_93 = getelementptr s_91:ptr->i32 [Some(temp_53_array_ele_93)] 
              #                    occupy a6 with temp_54_array_ptr_93
    li      a6, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a5 with temp_53_array_ele_93
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a2,a5
              #                    free a2
              #                    free a5
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy a0 with s_91
    add     a6,a6,a0
              #                    free a0
              #                    free a6
              #                          new_var temp_55_array_ele_93:i32 
              #                          temp_55_array_ele_93 = load temp_54_array_ptr_93:ptr->i32 
              #                    occupy a6 with temp_54_array_ptr_93
              #                    occupy s1 with temp_55_array_ele_93
    lw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                          ret temp_55_array_ele_93 
              #                    load from ra_stack_peek_0 in mem
    ld      ra,48(sp)
              #                    load from s0_stack_peek_0 in mem
    ld      s0,40(sp)
              #                    store to temp_55_array_ele_93 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_55_array_ele_93
              #                    store to s_91 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with s_91
              #                    occupy a0 with temp_55_array_ele_93
              #                    load from temp_55_array_ele_93 in mem


    lw      a0,4(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_52_array_ptr_93, tracked: true } |     a5:Freed { symidx: temp_53_array_ele_93, tracked: true } |     a6:Freed { symidx: temp_54_array_ptr_93, tracked: true } | 
              #                    regtab 
              #                          Define stack_size_0 [s_95] -> stack_size_ret_0 
    .globl stack_size
    .type stack_size,@function
stack_size:
              #                    mem layout:|ra_stack_size:8 at 32|s0_stack_size:8 at 24|s:8 at 16|temp_56_array_ptr:8 at 8|temp_57_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_stack_size_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_stack_size_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          new_var s_95:ptr->i32 
              #                          alloc ptr->i32 temp_56_array_ptr_97 
              #                          alloc i32 temp_57_array_ele_97 
              #                    regtab     a0:Freed { symidx: s_95, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          new_var temp_56_array_ptr_97:ptr->i32 
              #                          temp_56_array_ptr_97 = getelementptr s_95:ptr->i32 [Some(0_0)] 
              #                    occupy a1 with temp_56_array_ptr_97
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a0 with s_95
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_57_array_ele_97:i32 
              #                          temp_57_array_ele_97 = load temp_56_array_ptr_97:ptr->i32 
              #                    occupy a1 with temp_56_array_ptr_97
              #                    occupy a5 with temp_57_array_ele_97
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          ret temp_57_array_ele_97 
              #                    load from ra_stack_size_0 in mem
    ld      ra,32(sp)
              #                    load from s0_stack_size_0 in mem
    ld      s0,24(sp)
              #                    store to temp_57_array_ele_97 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_57_array_ele_97
              #                    store to s_95 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with s_95
              #                    occupy a0 with temp_57_array_ele_97
              #                    load from temp_57_array_ele_97 in mem


    lw      a0,4(sp)
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_56_array_ptr_97, tracked: true } | 
              #                    regtab 
              #                          Define eval_op_0 [op_99, lhs_99, rhs_99] -> eval_op_ret_0 
    .globl eval_op
    .type eval_op,@function
eval_op:
              #                    mem layout:|ra_eval_op:8 at 64|s0_eval_op:8 at 56|op:4 at 52|lhs:4 at 48|rhs:4 at 44|temp_58_cmp:1 at 43|none:3 at 40|temp_59_arithop:4 at 36|temp_60_cmp:1 at 35|none:3 at 32|temp_61_arithop:4 at 28|temp_62_cmp:1 at 27|none:3 at 24|temp_63_arithop:4 at 20|temp_64_cmp:1 at 19|none:3 at 16|temp_65_arithop:4 at 12|temp_66_cmp:1 at 11|none:3 at 8|temp_67_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_eval_op_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_eval_op_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc i1 temp_58_cmp_102 
              #                          alloc i32 temp_59_arithop_102 
              #                          alloc i1 temp_60_cmp_105 
              #                          alloc i32 temp_61_arithop_105 
              #                          alloc i1 temp_62_cmp_108 
              #                          alloc i32 temp_63_arithop_108 
              #                          alloc i1 temp_64_cmp_111 
              #                          alloc i32 temp_65_arithop_111 
              #                          alloc i1 temp_66_cmp_114 
              #                          alloc i32 temp_67_arithop_114 
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_58_cmp_102:i1 
              #                          temp_58_cmp_102 = icmp i32 Eq op_99, 43_0 
              #                    occupy a0 with op_99
              #                    occupy a3 with 43_0
    li      a3, 43
              #                    occupy a4 with temp_58_cmp_102
    xor     a4,a0,a3
    seqz    a4, a4
              #                    free a0
              #                    free a3
              #                    free a4
              #                          br i1 temp_58_cmp_102, label branch_true_103, label branch_false_103 
              #                    occupy a4 with temp_58_cmp_102
              #                    free a4
              #                    occupy a4 with temp_58_cmp_102
    bnez    a4, .branch_true_103
              #                    free a4
    j       .branch_false_103
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } | 
              #                          label branch_true_103: 
.branch_true_103:
              #                          new_var temp_59_arithop_102:i32 
              #                          temp_59_arithop_102 = Add i32 lhs_99, rhs_99 
              #                    occupy a1 with lhs_99
              #                    occupy a2 with rhs_99
              #                    occupy a3 with temp_59_arithop_102
    add     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          ret temp_59_arithop_102 
              #                    load from ra_eval_op_0 in mem
    ld      ra,64(sp)
              #                    load from s0_eval_op_0 in mem
    ld      s0,56(sp)
              #                    store to temp_59_arithop_102 in mem offset legal
    sw      a3,36(sp)
              #                    release a3 with temp_59_arithop_102
              #                    store to op_99 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with op_99
              #                    occupy a0 with temp_59_arithop_102
              #                    load from temp_59_arithop_102 in mem


    lw      a0,36(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } | 
              #                          label branch_false_103: 
.branch_false_103:
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_60_cmp_105:i1 
              #                          temp_60_cmp_105 = icmp i32 Eq op_99, 45_0 
              #                    occupy a0 with op_99
              #                    occupy a3 with 45_0
    li      a3, 45
              #                    occupy a5 with temp_60_cmp_105
    xor     a5,a0,a3
    seqz    a5, a5
              #                    free a0
              #                    free a3
              #                    free a5
              #                          br i1 temp_60_cmp_105, label branch_true_106, label branch_false_106 
              #                    occupy a5 with temp_60_cmp_105
              #                    free a5
              #                    occupy a5 with temp_60_cmp_105
    bnez    a5, .branch_true_106
              #                    free a5
    j       .branch_false_106
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } | 
              #                          label branch_true_106: 
.branch_true_106:
              #                          new_var temp_61_arithop_105:i32 
              #                          temp_61_arithop_105 = Sub i32 lhs_99, rhs_99 
              #                    occupy a1 with lhs_99
              #                    occupy a2 with rhs_99
              #                    occupy a3 with temp_61_arithop_105
              #                    regtab:    a0:Freed { symidx: op_99, tracked: true } |     a1:Occupied { symidx: lhs_99, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: rhs_99, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: temp_61_arithop_105, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } | 


    sub     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          ret temp_61_arithop_105 
              #                    load from ra_eval_op_0 in mem
    ld      ra,64(sp)
              #                    load from s0_eval_op_0 in mem
    ld      s0,56(sp)
              #                    store to temp_61_arithop_105 in mem offset legal
    sw      a3,28(sp)
              #                    release a3 with temp_61_arithop_105
              #                    store to op_99 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with op_99
              #                    occupy a0 with temp_61_arithop_105
              #                    load from temp_61_arithop_105 in mem


    lw      a0,28(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } | 
              #                          label branch_false_106: 
.branch_false_106:
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_62_cmp_108:i1 
              #                          temp_62_cmp_108 = icmp i32 Eq op_99, 42_0 
              #                    occupy a0 with op_99
              #                    occupy a3 with 42_0
    li      a3, 42
              #                    occupy a6 with temp_62_cmp_108
    xor     a6,a0,a3
    seqz    a6, a6
              #                    free a0
              #                    free a3
              #                    free a6
              #                          br i1 temp_62_cmp_108, label branch_true_109, label branch_false_109 
              #                    occupy a6 with temp_62_cmp_108
              #                    free a6
              #                    occupy a6 with temp_62_cmp_108
    bnez    a6, .branch_true_109
              #                    free a6
    j       .branch_false_109
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } |     a6:Freed { symidx: temp_62_cmp_108, tracked: true } | 
              #                          label branch_true_109: 
.branch_true_109:
              #                          new_var temp_63_arithop_108:i32 
              #                          temp_63_arithop_108 = Mul i32 lhs_99, rhs_99 
              #                    occupy a1 with lhs_99
              #                    occupy a2 with rhs_99
              #                    occupy a3 with temp_63_arithop_108
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          ret temp_63_arithop_108 
              #                    load from ra_eval_op_0 in mem
    ld      ra,64(sp)
              #                    load from s0_eval_op_0 in mem
    ld      s0,56(sp)
              #                    store to temp_63_arithop_108 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_63_arithop_108
              #                    store to op_99 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with op_99
              #                    occupy a0 with temp_63_arithop_108
              #                    load from temp_63_arithop_108 in mem


    lw      a0,20(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } |     a6:Freed { symidx: temp_62_cmp_108, tracked: true } | 
              #                          label branch_false_109: 
.branch_false_109:
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } |     a6:Freed { symidx: temp_62_cmp_108, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_64_cmp_111:i1 
              #                          temp_64_cmp_111 = icmp i32 Eq op_99, 47_0 
              #                    occupy a0 with op_99
              #                    occupy a3 with 47_0
    li      a3, 47
              #                    occupy a7 with temp_64_cmp_111
    xor     a7,a0,a3
    seqz    a7, a7
              #                    free a0
              #                    free a3
              #                    free a7
              #                          br i1 temp_64_cmp_111, label branch_true_112, label branch_false_112 
              #                    occupy a7 with temp_64_cmp_111
              #                    free a7
              #                    occupy a7 with temp_64_cmp_111
    bnez    a7, .branch_true_112
              #                    free a7
    j       .branch_false_112
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } |     a6:Freed { symidx: temp_62_cmp_108, tracked: true } |     a7:Freed { symidx: temp_64_cmp_111, tracked: true } | 
              #                          label branch_true_112: 
.branch_true_112:
              #                          new_var temp_65_arithop_111:i32 
              #                          temp_65_arithop_111 = Div i32 lhs_99, rhs_99 
              #                    occupy a1 with lhs_99
              #                    occupy a2 with rhs_99
              #                    occupy a3 with temp_65_arithop_111
    div     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          ret temp_65_arithop_111 
              #                    load from ra_eval_op_0 in mem
    ld      ra,64(sp)
              #                    load from s0_eval_op_0 in mem
    ld      s0,56(sp)
              #                    store to temp_65_arithop_111 in mem offset legal
    sw      a3,12(sp)
              #                    release a3 with temp_65_arithop_111
              #                    store to op_99 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with op_99
              #                    occupy a0 with temp_65_arithop_111
              #                    load from temp_65_arithop_111 in mem


    lw      a0,12(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } |     a6:Freed { symidx: temp_62_cmp_108, tracked: true } |     a7:Freed { symidx: temp_64_cmp_111, tracked: true } | 
              #                          label branch_false_112: 
.branch_false_112:
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } |     a6:Freed { symidx: temp_62_cmp_108, tracked: true } |     a7:Freed { symidx: temp_64_cmp_111, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_66_cmp_114:i1 
              #                          temp_66_cmp_114 = icmp i32 Eq op_99, 37_0 
              #                    occupy a0 with op_99
              #                    occupy a3 with 37_0
    li      a3, 37
              #                    occupy s1 with temp_66_cmp_114
    xor     s1,a0,a3
    seqz    s1, s1
              #                    free a0
              #                    free a3
              #                    free s1
              #                          br i1 temp_66_cmp_114, label branch_true_115, label branch_false_115 
              #                    occupy s1 with temp_66_cmp_114
              #                    free s1
              #                    occupy s1 with temp_66_cmp_114
    bnez    s1, .branch_true_115
              #                    free s1
    j       .branch_false_115
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } |     a6:Freed { symidx: temp_62_cmp_108, tracked: true } |     a7:Freed { symidx: temp_64_cmp_111, tracked: true } |     s1:Freed { symidx: temp_66_cmp_114, tracked: true } | 
              #                          label branch_true_115: 
.branch_true_115:
              #                          new_var temp_67_arithop_114:i32 
              #                          temp_67_arithop_114 = Mod i32 lhs_99, rhs_99 
              #                    occupy a1 with lhs_99
              #                    occupy a2 with rhs_99
              #                    occupy a3 with temp_67_arithop_114
              #                    load from temp_67_arithop_114 in mem


    lw      a3,4(sp)
    rem     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          ret temp_67_arithop_114 
              #                    load from ra_eval_op_0 in mem
    ld      ra,64(sp)
              #                    load from s0_eval_op_0 in mem
    ld      s0,56(sp)
              #                    store to temp_67_arithop_114 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_67_arithop_114
              #                    store to op_99 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with op_99
              #                    occupy a0 with temp_67_arithop_114
              #                    load from temp_67_arithop_114 in mem


    lw      a0,4(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } |     a6:Freed { symidx: temp_62_cmp_108, tracked: true } |     a7:Freed { symidx: temp_64_cmp_111, tracked: true } |     s1:Freed { symidx: temp_66_cmp_114, tracked: true } | 
              #                          label branch_false_115: 
.branch_false_115:
              #                    regtab     a0:Freed { symidx: op_99, tracked: true } |     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } |     a6:Freed { symidx: temp_62_cmp_108, tracked: true } |     a7:Freed { symidx: temp_64_cmp_111, tracked: true } |     s1:Freed { symidx: temp_66_cmp_114, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                          ret 0_0 
              #                    load from ra_eval_op_0 in mem
    ld      ra,64(sp)
              #                    load from s0_eval_op_0 in mem
    ld      s0,56(sp)
              #                    store to op_99 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with op_99
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: lhs_99, tracked: true } |     a2:Freed { symidx: rhs_99, tracked: true } |     a4:Freed { symidx: temp_58_cmp_102, tracked: true } |     a5:Freed { symidx: temp_60_cmp_105, tracked: true } |     a6:Freed { symidx: temp_62_cmp_108, tracked: true } |     a7:Freed { symidx: temp_64_cmp_111, tracked: true } |     s1:Freed { symidx: temp_66_cmp_114, tracked: true } | 
              #                    regtab 
              #                          Define eval_0 [] -> eval_ret_0 
    .globl eval
    .type eval,@function
eval:
              #                    mem layout:|ra_eval:8 at 2240|s0_eval:8 at 2232|temp_68_array_init_ptr:8 at 2224|oprs:1024 at 1200|temp_69_array_init_ptr:8 at 1192|ops:1024 at 168|temp_70_ptr2globl:4 at 164|temp_71_cmp:1 at 163|none:3 at 160|temp_72_ret_of_panic:4 at 156|temp_73_ptr2globl:4 at 152|temp_74_ret_of_next_token:4 at 148|temp_75_ptr2globl:4 at 144|temp_76_cmp:1 at 143|none:3 at 140|temp_77_ptr2globl:4 at 136|op:4 at 132|temp_78_ret_of_get_op_prec:4 at 128|temp_79_booltrans:1 at 127|temp_80_logicnot:1 at 126|none:2 at 124|temp_81_ret_of_next_token:4 at 120|temp_82_ret_of_get_op_prec:4 at 116|temp_83_ret_of_stack_peek:4 at 112|temp_84_ret_of_get_op_prec:4 at 108|temp_85_cmp:1 at 107|none:3 at 104|temp_86_ret_of_stack_size:4 at 100|temp_87_:1 at 99|temp_88_logic:1 at 98|none:2 at 96|temp_89_ret_of_stack_pop:4 at 92|cur_op:4 at 88|temp_90_ret_of_stack_pop:4 at 84|rhs:4 at 80|temp_91_ret_of_stack_pop:4 at 76|lhs:4 at 72|temp_92_ret_of_eval_op:4 at 68|temp_93_ptr2globl:4 at 64|temp_94_cmp:1 at 63|none:3 at 60|temp_95_ret_of_panic:4 at 56|temp_96_ptr2globl:4 at 52|temp_97_ret_of_next_token:4 at 48|temp_98_ret_of_next_token:4 at 44|temp_99_ret_of_stack_size:4 at 40|temp_100_:1 at 39|none:3 at 36|temp_101_ret_of_stack_pop:4 at 32|cur_op:4 at 28|temp_102_ret_of_stack_pop:4 at 24|rhs:4 at 20|temp_103_ret_of_stack_pop:4 at 16|lhs:4 at 12|temp_104_ret_of_eval_op:4 at 8|temp_105_ret_of_stack_peek:4 at 4|none:4 at 0
              #                    occupy a0 with -2248_0
    li      a0, -2248
    li      a0, -2248
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_eval_0 in mem offset_illegal
              #                    occupy a1 with 2240_0
    li      a1, 2240
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_eval_0 in mem offset_illegal
              #                    occupy a2 with 2232_0
    li      a2, 2232
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 2248_0
    li      a3, 2248
    li      a3, 2248
    add     s0,a3,sp
              #                    free a3
              #                          alloc ptr->i32 temp_68_array_init_ptr_119 
              #                          alloc Array:i32:[Some(256_0)] oprs_119 
              #                          alloc ptr->i32 temp_69_array_init_ptr_119 
              #                          alloc Array:i32:[Some(256_0)] ops_119 
              #                          alloc i32 temp_70_ptr2globl_121 
              #                          alloc i1 temp_71_cmp_121 
              #                          alloc i32 temp_72_ret_of_panic_121 
              #                          alloc i32 temp_73_ptr2globl_119 
              #                          alloc i32 temp_74_ret_of_next_token_119 
              #                          alloc i32 temp_75_ptr2globl_126 
              #                          alloc i1 temp_76_cmp_126 
              #                          alloc i32 temp_77_ptr2globl_128 
              #                          alloc i32 op_128 
              #                          alloc i32 temp_78_ret_of_get_op_prec_130 
              #                          alloc i1 temp_79_booltrans_130 
              #                          alloc i1 temp_80_logicnot_130 
              #                          alloc i32 temp_81_ret_of_next_token_128 
              #                          alloc i32 temp_82_ret_of_get_op_prec_134 
              #                          alloc i32 temp_83_ret_of_stack_peek_134 
              #                          alloc i32 temp_84_ret_of_get_op_prec_134 
              #                          alloc i1 temp_85_cmp_134 
              #                          alloc i32 temp_86_ret_of_stack_size_134 
              #                          alloc i1 temp_87__134 
              #                          alloc i1 temp_88_logic_134 
              #                          alloc i32 temp_89_ret_of_stack_pop_136 
              #                          alloc i32 cur_op_136 
              #                          alloc i32 temp_90_ret_of_stack_pop_136 
              #                          alloc i32 rhs_136 
              #                          alloc i32 temp_91_ret_of_stack_pop_136 
              #                          alloc i32 lhs_136 
              #                          alloc i32 temp_92_ret_of_eval_op_136 
              #                          alloc i32 temp_93_ptr2globl_141 
              #                          alloc i1 temp_94_cmp_141 
              #                          alloc i32 temp_95_ret_of_panic_141 
              #                          alloc i32 temp_96_ptr2globl_128 
              #                          alloc i32 temp_97_ret_of_next_token_128 
              #                          alloc i32 temp_98_ret_of_next_token_119 
              #                          alloc i32 temp_99_ret_of_stack_size_147 
              #                          alloc i1 temp_100__3459 
              #                          alloc i32 temp_101_ret_of_stack_pop_149 
              #                          alloc i32 cur_op_149 
              #                          alloc i32 temp_102_ret_of_stack_pop_149 
              #                          alloc i32 rhs_149 
              #                          alloc i32 temp_103_ret_of_stack_pop_149 
              #                          alloc i32 lhs_149 
              #                          alloc i32 temp_104_ret_of_eval_op_149 
              #                          alloc i32 temp_105_ret_of_stack_peek_119 
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          new_var oprs_119:Array:i32:[Some(256_0)] 
              #                          new_var temp_68_array_init_ptr_119:ptr->i32 
              #                          temp_68_array_init_ptr_119 = getelementptr oprs_119:Array:i32:[Some(256_0)] [] 
              #                    occupy a0 with temp_68_array_init_ptr_119
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1200
              #                    free a0
              #                           Call void memset_0(temp_68_array_init_ptr_119, 0_0, 1024_0) 
              #                    saved register dumping to mem
              #                    store to temp_68_array_init_ptr_119 in mem offset_illegal
              #                    occupy a0 with 2224_0
    li      a0, 2224
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_68_array_init_ptr_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_68_array_init_ptr_119_0
              #                    load from temp_68_array_init_ptr_119 in mem
              #                    occupy a1 with temp_68_array_init_ptr_119
    li      a1, 2224
    add     a1,sp,a1
    ld      a0,0(a1)
              #                    free a1
              #                    store to temp_68_array_init_ptr_119 in mem offset_illegal
              #                    occupy a1 with 2224_0
    li      a1, 2224
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_68_array_init_ptr_119
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_1024_0_0
    li      a2, 1024
              #                    arg load ended


    call    memset
              #                          new_var ops_119:Array:i32:[Some(256_0)] 
              #                          new_var temp_69_array_init_ptr_119:ptr->i32 
              #                          temp_69_array_init_ptr_119 = getelementptr ops_119:Array:i32:[Some(256_0)] [] 
              #                    occupy a0 with temp_69_array_init_ptr_119
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,168
              #                    free a0
              #                           Call void memset_0(temp_69_array_init_ptr_119, 0_0, 1024_0) 
              #                    saved register dumping to mem
              #                    store to temp_69_array_init_ptr_119 in mem offset legal
    sd      a0,1192(sp)
              #                    release a0 with temp_69_array_init_ptr_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_69_array_init_ptr_119_0
              #                    load from temp_69_array_init_ptr_119 in mem
    ld      a0,1192(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_1024_0_0
    li      a2, 1024
              #                    arg load ended


    call    memset
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_70_ptr2globl_121:i32 
              #                          temp_70_ptr2globl_121 = load *cur_token_0:ptr->i32 
              #                    occupy a0 with *cur_token_0
              #                       load label cur_token as ptr to reg
    la      a0, cur_token
              #                    occupy reg a0 with *cur_token_0
              #                    occupy a1 with temp_70_ptr2globl_121
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_71_cmp_121:i1 
              #                          temp_71_cmp_121 = icmp i32 Ne temp_70_ptr2globl_121, 0_0 
              #                    occupy a1 with temp_70_ptr2globl_121
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_71_cmp_121
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_71_cmp_121, label branch_true_122, label branch_false_122 
              #                    occupy a3 with temp_71_cmp_121
              #                    free a3
              #                    occupy a3 with temp_71_cmp_121
    bnez    a3, .branch_true_122
              #                    free a3
    j       .branch_false_122
              #                    regtab     a1:Freed { symidx: temp_70_ptr2globl_121, tracked: true } |     a3:Freed { symidx: temp_71_cmp_121, tracked: true } | 
              #                          label branch_true_122: 
.branch_true_122:
              #                          new_var temp_72_ret_of_panic_121:i32 
              #                          temp_72_ret_of_panic_121 =  Call i32 panic_0() 
              #                    saved register dumping to mem
              #                    store to temp_70_ptr2globl_121 in mem offset legal
    sw      a1,164(sp)
              #                    release a1 with temp_70_ptr2globl_121
              #                    store to temp_71_cmp_121 in mem offset legal
    sb      a3,163(sp)
              #                    release a3 with temp_71_cmp_121
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    panic
              #                    store to temp_72_ret_of_panic_121 in mem offset legal
    sw      a0,156(sp)
              #                          ret temp_72_ret_of_panic_121 
              #                    load from ra_eval_0 in mem
              #                    occupy a1 with ra_eval_0
    li      a1, 2240
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_eval_0 in mem
              #                    occupy a2 with s0_eval_0
    li      a2, 2232
    add     a2,sp,a2
    ld      s0,0(a2)
              #                    free a2
              #                    store to temp_72_ret_of_panic_121 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with temp_72_ret_of_panic_121
              #                    occupy a0 with temp_72_ret_of_panic_121
              #                    load from temp_72_ret_of_panic_121 in mem


    lw      a0,156(sp)
              #                    occupy a3 with 2248_0
    li      a3, 2248
    li      a3, 2248
    add     sp,a3,sp
              #                    free a3
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_70_ptr2globl_121, tracked: true } |     a3:Freed { symidx: temp_71_cmp_121, tracked: true } | 
              #                          label branch_false_122: 
.branch_false_122:
              #                    regtab     a1:Freed { symidx: temp_70_ptr2globl_121, tracked: true } |     a3:Freed { symidx: temp_71_cmp_121, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_73_ptr2globl_119:i32 
              #                          temp_73_ptr2globl_119 = load *num_0:ptr->i32 
              #                    occupy a0 with *num_0
              #                       load label num as ptr to reg
    la      a0, num
              #                    occupy reg a0 with *num_0
              #                    occupy a2 with temp_73_ptr2globl_119
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                           Call void stack_push_0(oprs_119, temp_73_ptr2globl_119) 
              #                    saved register dumping to mem
              #                    store to temp_70_ptr2globl_121 in mem offset legal
    sw      a1,164(sp)
              #                    release a1 with temp_70_ptr2globl_121
              #                    store to temp_73_ptr2globl_119 in mem offset legal
    sw      a2,152(sp)
              #                    release a2 with temp_73_ptr2globl_119
              #                    store to temp_71_cmp_121 in mem offset legal
    sb      a3,163(sp)
              #                    release a3 with temp_71_cmp_121
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_oprs_119_0
              #                    load from oprs_119 in mem
    lw      a0,1200(sp)
              #                    occupy a1 with _anonymous_of_temp_73_ptr2globl_119_0
              #                    load from temp_73_ptr2globl_119 in mem


    lw      a1,152(sp)
              #                    arg load ended


    call    stack_push
              #                          new_var temp_74_ret_of_next_token_119:i32 
              #                          temp_74_ret_of_next_token_119 =  Call i32 next_token_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_token
              #                    store to temp_74_ret_of_next_token_119 in mem offset legal
    sw      a0,148(sp)
              #                          jump label: while.head_127 
    j       .while.head_127
              #                    regtab     a0:Freed { symidx: temp_74_ret_of_next_token_119, tracked: true } | 
              #                          label while.head_127: 
.while.head_127:
              #                          new_var temp_75_ptr2globl_126:i32 
              #                          temp_75_ptr2globl_126 = load *cur_token_0:ptr->i32 
              #                    occupy a1 with *cur_token_0
              #                       load label cur_token as ptr to reg
    la      a1, cur_token
              #                    occupy reg a1 with *cur_token_0
              #                    occupy a2 with temp_75_ptr2globl_126
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_76_cmp_126:i1 
              #                          temp_76_cmp_126 = icmp i32 Eq temp_75_ptr2globl_126, 1_0 
              #                    occupy a2 with temp_75_ptr2globl_126
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_76_cmp_126
    xor     a4,a2,a3
    seqz    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_76_cmp_126, label while.body_127, label while.exit_127 
              #                    occupy a4 with temp_76_cmp_126
              #                    free a4
              #                    occupy a4 with temp_76_cmp_126
    bnez    a4, .while.body_127
              #                    free a4
    j       .while.exit_127
              #                    regtab     a0:Freed { symidx: temp_74_ret_of_next_token_119, tracked: true } |     a2:Freed { symidx: temp_75_ptr2globl_126, tracked: true } |     a4:Freed { symidx: temp_76_cmp_126, tracked: true } | 
              #                          label while.body_127: 
.while.body_127:
              #                          new_var temp_77_ptr2globl_128:i32 
              #                          temp_77_ptr2globl_128 = load *other_0:ptr->i32 
              #                    occupy a1 with *other_0
              #                       load label other as ptr to reg
    la      a1, other
              #                    occupy reg a1 with *other_0
              #                    occupy a3 with temp_77_ptr2globl_128
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          op_128 = i32 temp_77_ptr2globl_128 
              #                    occupy a3 with temp_77_ptr2globl_128
              #                    occupy a5 with op_128
    mv      a5, a3
              #                    free a3
              #                    free a5
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_74_ret_of_next_token_119, tracked: true } |     a2:Freed { symidx: temp_75_ptr2globl_126, tracked: true } |     a3:Freed { symidx: temp_77_ptr2globl_128, tracked: true } |     a4:Freed { symidx: temp_76_cmp_126, tracked: true } |     a5:Freed { symidx: op_128, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_78_ret_of_get_op_prec_130:i32 
              #                          temp_78_ret_of_get_op_prec_130 =  Call i32 get_op_prec_0(op_128) 
              #                    saved register dumping to mem
              #                    store to temp_74_ret_of_next_token_119 in mem offset legal
    sw      a0,148(sp)
              #                    release a0 with temp_74_ret_of_next_token_119
              #                    store to temp_75_ptr2globl_126 in mem offset legal
    sw      a2,144(sp)
              #                    release a2 with temp_75_ptr2globl_126
              #                    store to temp_77_ptr2globl_128 in mem offset legal
    sw      a3,136(sp)
              #                    release a3 with temp_77_ptr2globl_128
              #                    store to temp_76_cmp_126 in mem offset legal
    sb      a4,143(sp)
              #                    release a4 with temp_76_cmp_126
              #                    store to op_128 in mem offset legal
    sw      a5,132(sp)
              #                    release a5 with op_128
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_op_128_0
              #                    load from op_128 in mem


    lw      a0,132(sp)
              #                    arg load ended


    call    get_op_prec
              #                    store to temp_78_ret_of_get_op_prec_130 in mem offset legal
    sw      a0,128(sp)
              #                          new_var temp_79_booltrans_130:i1 
              #                          temp_79_booltrans_130 = icmp i1 Ne temp_78_ret_of_get_op_prec_130, 0_0 
              #                    occupy a0 with temp_78_ret_of_get_op_prec_130
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_79_booltrans_130
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_80_logicnot_130:i1 
              #                          temp_80_logicnot_130 = xor i1 temp_79_booltrans_130, true 
              #                    occupy a2 with temp_79_booltrans_130
              #                    occupy a3 with temp_80_logicnot_130
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          br i1 temp_80_logicnot_130, label branch_true_131, label branch_false_131 
              #                    occupy a3 with temp_80_logicnot_130
              #                    free a3
              #                    occupy a3 with temp_80_logicnot_130
    bnez    a3, .branch_true_131
              #                    free a3
    j       .branch_false_131
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_get_op_prec_130, tracked: true } |     a2:Freed { symidx: temp_79_booltrans_130, tracked: true } |     a3:Freed { symidx: temp_80_logicnot_130, tracked: true } | 
              #                          label branch_true_131: 
.branch_true_131:
              #                          jump label: while.exit_127 
              #                    store to temp_79_booltrans_130 in mem offset legal
    sb      a2,127(sp)
              #                    release a2 with temp_79_booltrans_130
              #                    store to temp_80_logicnot_130 in mem offset legal
    sb      a3,126(sp)
              #                    release a3 with temp_80_logicnot_130
              #                    store to temp_78_ret_of_get_op_prec_130 in mem offset legal
    sw      a0,128(sp)
              #                    release a0 with temp_78_ret_of_get_op_prec_130
              #                    occupy a4 with _anonymous_of_temp_76_cmp_126_0
              #                    load from temp_76_cmp_126 in mem
    lb      a4,143(sp)
              #                    occupy a2 with _anonymous_of_temp_75_ptr2globl_126_0
              #                    load from temp_75_ptr2globl_126 in mem


    lw      a2,144(sp)
              #                    occupy a0 with _anonymous_of_temp_74_ret_of_next_token_119_0
              #                    load from temp_74_ret_of_next_token_119 in mem


    lw      a0,148(sp)
    j       .while.exit_127
              #                    regtab     a0:Freed { symidx: temp_74_ret_of_next_token_119, tracked: true } |     a2:Freed { symidx: temp_75_ptr2globl_126, tracked: true } |     a4:Freed { symidx: temp_76_cmp_126, tracked: true } | 
              #                          label while.exit_127: 
.while.exit_127:
              #                          new_var temp_98_ret_of_next_token_119:i32 
              #                          temp_98_ret_of_next_token_119 =  Call i32 next_token_0() 
              #                    saved register dumping to mem
              #                    store to temp_74_ret_of_next_token_119 in mem offset legal
    sw      a0,148(sp)
              #                    release a0 with temp_74_ret_of_next_token_119
              #                    store to temp_75_ptr2globl_126 in mem offset legal
    sw      a2,144(sp)
              #                    release a2 with temp_75_ptr2globl_126
              #                    store to temp_76_cmp_126 in mem offset legal
    sb      a4,143(sp)
              #                    release a4 with temp_76_cmp_126
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_token
              #                    store to temp_98_ret_of_next_token_119 in mem offset legal
    sw      a0,44(sp)
              #                          jump label: while.head_148 
    j       .while.head_148
              #                    regtab     a0:Freed { symidx: temp_98_ret_of_next_token_119, tracked: true } | 
              #                          label while.head_148: 
.while.head_148:
              #                          new_var temp_99_ret_of_stack_size_147:i32 
              #                          temp_99_ret_of_stack_size_147 =  Call i32 stack_size_0(ops_119) 
              #                    saved register dumping to mem
              #                    store to temp_98_ret_of_next_token_119 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_98_ret_of_next_token_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_ops_119_0
              #                    load from ops_119 in mem
    lw      a0,168(sp)
              #                    arg load ended


    call    stack_size
              #                    store to temp_99_ret_of_stack_size_147 in mem offset legal
    sw      a0,40(sp)
              #                          new_var temp_100__3459:i1 
              #                          temp_100__3459 = icmp i32 Ne temp_99_ret_of_stack_size_147, 0_0 
              #                    occupy a0 with temp_99_ret_of_stack_size_147
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_100__3459
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_100__3459, label while.body_148, label while.exit_148 
              #                    occupy a2 with temp_100__3459
              #                    free a2
              #                    occupy a2 with temp_100__3459
    bnez    a2, .while.body_148
              #                    free a2
    j       .while.exit_148
              #                    regtab     a0:Freed { symidx: temp_99_ret_of_stack_size_147, tracked: true } |     a2:Freed { symidx: temp_100__3459, tracked: true } | 
              #                          label while.body_148: 
.while.body_148:
              #                          new_var temp_101_ret_of_stack_pop_149:i32 
              #                          temp_101_ret_of_stack_pop_149 =  Call i32 stack_pop_0(ops_119) 
              #                    saved register dumping to mem
              #                    store to temp_99_ret_of_stack_size_147 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_99_ret_of_stack_size_147
              #                    store to temp_100__3459 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_100__3459
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_ops_119_0
              #                    load from ops_119 in mem
    lw      a0,168(sp)
              #                    arg load ended


    call    stack_pop
              #                    store to temp_101_ret_of_stack_pop_149 in mem offset legal
    sw      a0,32(sp)
              #                          cur_op_149 = i32 temp_101_ret_of_stack_pop_149 
              #                    occupy a0 with temp_101_ret_of_stack_pop_149
              #                    occupy a1 with cur_op_149
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_102_ret_of_stack_pop_149:i32 
              #                          temp_102_ret_of_stack_pop_149 =  Call i32 stack_pop_0(oprs_119) 
              #                    saved register dumping to mem
              #                    store to temp_101_ret_of_stack_pop_149 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_101_ret_of_stack_pop_149
              #                    store to cur_op_149 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with cur_op_149
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_oprs_119_0
              #                    load from oprs_119 in mem
    lw      a0,1200(sp)
              #                    arg load ended


    call    stack_pop
              #                    store to temp_102_ret_of_stack_pop_149 in mem offset legal
    sw      a0,24(sp)
              #                          rhs_149 = i32 temp_102_ret_of_stack_pop_149 
              #                    occupy a0 with temp_102_ret_of_stack_pop_149
              #                    occupy a1 with rhs_149
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_103_ret_of_stack_pop_149:i32 
              #                          temp_103_ret_of_stack_pop_149 =  Call i32 stack_pop_0(oprs_119) 
              #                    saved register dumping to mem
              #                    store to temp_102_ret_of_stack_pop_149 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_102_ret_of_stack_pop_149
              #                    store to rhs_149 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with rhs_149
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_oprs_119_0
              #                    load from oprs_119 in mem
    lw      a0,1200(sp)
              #                    arg load ended


    call    stack_pop
              #                    store to temp_103_ret_of_stack_pop_149 in mem offset legal
    sw      a0,16(sp)
              #                          lhs_149 = i32 temp_103_ret_of_stack_pop_149 
              #                    occupy a0 with temp_103_ret_of_stack_pop_149
              #                    occupy a1 with lhs_149
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_104_ret_of_eval_op_149:i32 
              #                          temp_104_ret_of_eval_op_149 =  Call i32 eval_op_0(cur_op_149, lhs_149, rhs_149) 
              #                    saved register dumping to mem
              #                    store to temp_103_ret_of_stack_pop_149 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_103_ret_of_stack_pop_149
              #                    store to lhs_149 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with lhs_149
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_cur_op_149_0
              #                    load from cur_op_149 in mem


    lw      a0,28(sp)
              #                    occupy a1 with _anonymous_of_lhs_149_0
              #                    load from lhs_149 in mem


    lw      a1,12(sp)
              #                    occupy a2 with _anonymous_of_rhs_149_0
              #                    load from rhs_149 in mem


    lw      a2,20(sp)
              #                    arg load ended


    call    eval_op
              #                    store to temp_104_ret_of_eval_op_149 in mem offset legal
    sw      a0,8(sp)
              #                           Call void stack_push_0(oprs_119, temp_104_ret_of_eval_op_149) 
              #                    saved register dumping to mem
              #                    store to temp_104_ret_of_eval_op_149 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_104_ret_of_eval_op_149
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_oprs_119_0
              #                    load from oprs_119 in mem
    lw      a0,1200(sp)
              #                    occupy a1 with _anonymous_of_temp_104_ret_of_eval_op_149_0
              #                    load from temp_104_ret_of_eval_op_149 in mem


    lw      a1,8(sp)
              #                    arg load ended


    call    stack_push
              #                          jump label: while.head_148 
              #                    occupy a0 with _anonymous_of_temp_98_ret_of_next_token_119_0
              #                    load from temp_98_ret_of_next_token_119 in mem


    lw      a0,44(sp)
    j       .while.head_148
              #                    regtab     a0:Freed { symidx: temp_99_ret_of_stack_size_147, tracked: true } |     a2:Freed { symidx: temp_100__3459, tracked: true } | 
              #                          label while.exit_148: 
.while.exit_148:
              #                          new_var temp_105_ret_of_stack_peek_119:i32 
              #                          temp_105_ret_of_stack_peek_119 =  Call i32 stack_peek_0(oprs_119) 
              #                    saved register dumping to mem
              #                    store to temp_99_ret_of_stack_size_147 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_99_ret_of_stack_size_147
              #                    store to temp_100__3459 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_100__3459
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_oprs_119_0
              #                    load from oprs_119 in mem
    lw      a0,1200(sp)
              #                    arg load ended


    call    stack_peek
              #                    store to temp_105_ret_of_stack_peek_119 in mem offset legal
    sw      a0,4(sp)
              #                          ret temp_105_ret_of_stack_peek_119 
              #                    load from ra_eval_0 in mem
              #                    occupy a1 with ra_eval_0
    li      a1, 2240
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_eval_0 in mem
              #                    occupy a2 with s0_eval_0
    li      a2, 2232
    add     a2,sp,a2
    ld      s0,0(a2)
              #                    free a2
              #                    store to temp_105_ret_of_stack_peek_119 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_105_ret_of_stack_peek_119
              #                    occupy a0 with temp_105_ret_of_stack_peek_119
              #                    load from temp_105_ret_of_stack_peek_119 in mem


    lw      a0,4(sp)
              #                    occupy a3 with 2248_0
    li      a3, 2248
    li      a3, 2248
    add     sp,a3,sp
              #                    free a3
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ra_eval_0, tracked: true } |     a2:Freed { symidx: s0_eval_0, tracked: true } | 
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_get_op_prec_130, tracked: true } |     a2:Freed { symidx: temp_79_booltrans_130, tracked: true } |     a3:Freed { symidx: temp_80_logicnot_130, tracked: true } | 
              #                          label branch_false_131: 
.branch_false_131:
              #                    regtab     a0:Freed { symidx: temp_78_ret_of_get_op_prec_130, tracked: true } |     a2:Freed { symidx: temp_79_booltrans_130, tracked: true } |     a3:Freed { symidx: temp_80_logicnot_130, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_81_ret_of_next_token_128:i32 
              #                          temp_81_ret_of_next_token_128 =  Call i32 next_token_0() 
              #                    saved register dumping to mem
              #                    store to temp_78_ret_of_get_op_prec_130 in mem offset legal
    sw      a0,128(sp)
              #                    release a0 with temp_78_ret_of_get_op_prec_130
              #                    store to temp_79_booltrans_130 in mem offset legal
    sb      a2,127(sp)
              #                    release a2 with temp_79_booltrans_130
              #                    store to temp_80_logicnot_130 in mem offset legal
    sb      a3,126(sp)
              #                    release a3 with temp_80_logicnot_130
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_token
              #                    store to temp_81_ret_of_next_token_128 in mem offset legal
    sw      a0,120(sp)
              #                          jump label: while.head_135 
    j       .while.head_135
              #                    regtab     a0:Freed { symidx: temp_81_ret_of_next_token_128, tracked: true } | 
              #                          label while.head_135: 
.while.head_135:
              #                          new_var temp_82_ret_of_get_op_prec_134:i32 
              #                          temp_82_ret_of_get_op_prec_134 =  Call i32 get_op_prec_0(op_128) 
              #                    saved register dumping to mem
              #                    store to temp_81_ret_of_next_token_128 in mem offset legal
    sw      a0,120(sp)
              #                    release a0 with temp_81_ret_of_next_token_128
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_op_128_0
              #                    load from op_128 in mem


    lw      a0,132(sp)
              #                    arg load ended


    call    get_op_prec
              #                    store to temp_82_ret_of_get_op_prec_134 in mem offset legal
    sw      a0,116(sp)
              #                          new_var temp_83_ret_of_stack_peek_134:i32 
              #                          temp_83_ret_of_stack_peek_134 =  Call i32 stack_peek_0(ops_119) 
              #                    saved register dumping to mem
              #                    store to temp_82_ret_of_get_op_prec_134 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_82_ret_of_get_op_prec_134
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_ops_119_0
              #                    load from ops_119 in mem
    lw      a0,168(sp)
              #                    arg load ended


    call    stack_peek
              #                    store to temp_83_ret_of_stack_peek_134 in mem offset legal
    sw      a0,112(sp)
              #                          new_var temp_84_ret_of_get_op_prec_134:i32 
              #                          temp_84_ret_of_get_op_prec_134 =  Call i32 get_op_prec_0(temp_83_ret_of_stack_peek_134) 
              #                    saved register dumping to mem
              #                    store to temp_83_ret_of_stack_peek_134 in mem offset legal
    sw      a0,112(sp)
              #                    release a0 with temp_83_ret_of_stack_peek_134
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_83_ret_of_stack_peek_134_0
              #                    load from temp_83_ret_of_stack_peek_134 in mem


    lw      a0,112(sp)
              #                    arg load ended


    call    get_op_prec
              #                    store to temp_84_ret_of_get_op_prec_134 in mem offset legal
    sw      a0,108(sp)
              #                          new_var temp_85_cmp_134:i1 
              #                          temp_85_cmp_134 = icmp i32 Sge temp_84_ret_of_get_op_prec_134, temp_82_ret_of_get_op_prec_134 
              #                    occupy a0 with temp_84_ret_of_get_op_prec_134
              #                    occupy a1 with temp_82_ret_of_get_op_prec_134
              #                    load from temp_82_ret_of_get_op_prec_134 in mem


    lw      a1,116(sp)
              #                    occupy a2 with temp_85_cmp_134
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_86_ret_of_stack_size_134:i32 
              #                          temp_86_ret_of_stack_size_134 =  Call i32 stack_size_0(ops_119) 
              #                    saved register dumping to mem
              #                    store to temp_84_ret_of_get_op_prec_134 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_84_ret_of_get_op_prec_134
              #                    store to temp_82_ret_of_get_op_prec_134 in mem offset legal
    sw      a1,116(sp)
              #                    release a1 with temp_82_ret_of_get_op_prec_134
              #                    store to temp_85_cmp_134 in mem offset legal
    sb      a2,107(sp)
              #                    release a2 with temp_85_cmp_134
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_ops_119_0
              #                    load from ops_119 in mem
    lw      a0,168(sp)
              #                    arg load ended


    call    stack_size
              #                    store to temp_86_ret_of_stack_size_134 in mem offset legal
    sw      a0,100(sp)
              #                          new_var temp_87__134:i1 
              #                          temp_87__134 = icmp i32 Ne temp_86_ret_of_stack_size_134, 0_0 
              #                    occupy a0 with temp_86_ret_of_stack_size_134
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_87__134
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_88_logic_134:i1 
              #                          temp_88_logic_134 = And i1 temp_87__134, temp_85_cmp_134 
              #                    occupy a2 with temp_87__134
              #                    occupy a3 with temp_85_cmp_134
              #                    load from temp_85_cmp_134 in mem
    lb      a3,107(sp)
              #                    occupy a4 with temp_88_logic_134
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_88_logic_134, label while.body_135, label while.exit_135 
              #                    occupy a4 with temp_88_logic_134
              #                    free a4
              #                    occupy a4 with temp_88_logic_134
    bnez    a4, .while.body_135
              #                    free a4
    j       .while.exit_135
              #                    regtab     a0:Freed { symidx: temp_86_ret_of_stack_size_134, tracked: true } |     a2:Freed { symidx: temp_87__134, tracked: true } |     a3:Freed { symidx: temp_85_cmp_134, tracked: true } |     a4:Freed { symidx: temp_88_logic_134, tracked: true } | 
              #                          label while.body_135: 
.while.body_135:
              #                          new_var temp_89_ret_of_stack_pop_136:i32 
              #                          temp_89_ret_of_stack_pop_136 =  Call i32 stack_pop_0(ops_119) 
              #                    saved register dumping to mem
              #                    store to temp_86_ret_of_stack_size_134 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_86_ret_of_stack_size_134
              #                    store to temp_87__134 in mem offset legal
    sb      a2,99(sp)
              #                    release a2 with temp_87__134
              #                    store to temp_85_cmp_134 in mem offset legal
    sb      a3,107(sp)
              #                    release a3 with temp_85_cmp_134
              #                    store to temp_88_logic_134 in mem offset legal
    sb      a4,98(sp)
              #                    release a4 with temp_88_logic_134
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_ops_119_0
              #                    load from ops_119 in mem
    lw      a0,168(sp)
              #                    arg load ended


    call    stack_pop
              #                    store to temp_89_ret_of_stack_pop_136 in mem offset legal
    sw      a0,92(sp)
              #                          cur_op_136 = i32 temp_89_ret_of_stack_pop_136 
              #                    occupy a0 with temp_89_ret_of_stack_pop_136
              #                    occupy a1 with cur_op_136
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_90_ret_of_stack_pop_136:i32 
              #                          temp_90_ret_of_stack_pop_136 =  Call i32 stack_pop_0(oprs_119) 
              #                    saved register dumping to mem
              #                    store to temp_89_ret_of_stack_pop_136 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_89_ret_of_stack_pop_136
              #                    store to cur_op_136 in mem offset legal
    sw      a1,88(sp)
              #                    release a1 with cur_op_136
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_oprs_119_0
              #                    load from oprs_119 in mem
    lw      a0,1200(sp)
              #                    arg load ended


    call    stack_pop
              #                    store to temp_90_ret_of_stack_pop_136 in mem offset legal
    sw      a0,84(sp)
              #                          rhs_136 = i32 temp_90_ret_of_stack_pop_136 
              #                    occupy a0 with temp_90_ret_of_stack_pop_136
              #                    occupy a1 with rhs_136
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_91_ret_of_stack_pop_136:i32 
              #                          temp_91_ret_of_stack_pop_136 =  Call i32 stack_pop_0(oprs_119) 
              #                    saved register dumping to mem
              #                    store to temp_90_ret_of_stack_pop_136 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_90_ret_of_stack_pop_136
              #                    store to rhs_136 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with rhs_136
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_oprs_119_0
              #                    load from oprs_119 in mem
    lw      a0,1200(sp)
              #                    arg load ended


    call    stack_pop
              #                    store to temp_91_ret_of_stack_pop_136 in mem offset legal
    sw      a0,76(sp)
              #                          lhs_136 = i32 temp_91_ret_of_stack_pop_136 
              #                    occupy a0 with temp_91_ret_of_stack_pop_136
              #                    occupy a1 with lhs_136
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_92_ret_of_eval_op_136:i32 
              #                          temp_92_ret_of_eval_op_136 =  Call i32 eval_op_0(cur_op_136, lhs_136, rhs_136) 
              #                    saved register dumping to mem
              #                    store to temp_91_ret_of_stack_pop_136 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_91_ret_of_stack_pop_136
              #                    store to lhs_136 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with lhs_136
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_cur_op_136_0
              #                    load from cur_op_136 in mem


    lw      a0,88(sp)
              #                    occupy a1 with _anonymous_of_lhs_136_0
              #                    load from lhs_136 in mem


    lw      a1,72(sp)
              #                    occupy a2 with _anonymous_of_rhs_136_0
              #                    load from rhs_136 in mem


    lw      a2,80(sp)
              #                    arg load ended


    call    eval_op
              #                    store to temp_92_ret_of_eval_op_136 in mem offset legal
    sw      a0,68(sp)
              #                           Call void stack_push_0(oprs_119, temp_92_ret_of_eval_op_136) 
              #                    saved register dumping to mem
              #                    store to temp_92_ret_of_eval_op_136 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_92_ret_of_eval_op_136
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_oprs_119_0
              #                    load from oprs_119 in mem
    lw      a0,1200(sp)
              #                    occupy a1 with _anonymous_of_temp_92_ret_of_eval_op_136_0
              #                    load from temp_92_ret_of_eval_op_136 in mem


    lw      a1,68(sp)
              #                    arg load ended


    call    stack_push
              #                          jump label: while.head_135 
              #                    occupy a0 with _anonymous_of_temp_81_ret_of_next_token_128_0
              #                    load from temp_81_ret_of_next_token_128 in mem


    lw      a0,120(sp)
    j       .while.head_135
              #                    regtab     a0:Freed { symidx: temp_86_ret_of_stack_size_134, tracked: true } |     a2:Freed { symidx: temp_87__134, tracked: true } |     a3:Freed { symidx: temp_85_cmp_134, tracked: true } |     a4:Freed { symidx: temp_88_logic_134, tracked: true } | 
              #                          label while.exit_135: 
.while.exit_135:
              #                           Call void stack_push_0(ops_119, op_128) 
              #                    saved register dumping to mem
              #                    store to temp_86_ret_of_stack_size_134 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_86_ret_of_stack_size_134
              #                    store to temp_87__134 in mem offset legal
    sb      a2,99(sp)
              #                    release a2 with temp_87__134
              #                    store to temp_85_cmp_134 in mem offset legal
    sb      a3,107(sp)
              #                    release a3 with temp_85_cmp_134
              #                    store to temp_88_logic_134 in mem offset legal
    sb      a4,98(sp)
              #                    release a4 with temp_88_logic_134
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_ops_119_0
              #                    load from ops_119 in mem
    lw      a0,168(sp)
              #                    occupy a1 with _anonymous_of_op_128_0
              #                    load from op_128 in mem


    lw      a1,132(sp)
              #                    arg load ended


    call    stack_push
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_93_ptr2globl_141:i32 
              #                          temp_93_ptr2globl_141 = load *cur_token_0:ptr->i32 
              #                    occupy a0 with *cur_token_0
              #                       load label cur_token as ptr to reg
    la      a0, cur_token
              #                    occupy reg a0 with *cur_token_0
              #                    occupy a1 with temp_93_ptr2globl_141
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_94_cmp_141:i1 
              #                          temp_94_cmp_141 = icmp i32 Ne temp_93_ptr2globl_141, 0_0 
              #                    occupy a1 with temp_93_ptr2globl_141
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_94_cmp_141
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_94_cmp_141, label branch_true_142, label branch_false_142 
              #                    occupy a3 with temp_94_cmp_141
              #                    free a3
              #                    occupy a3 with temp_94_cmp_141
    bnez    a3, .branch_true_142
              #                    free a3
    j       .branch_false_142
              #                    regtab     a1:Freed { symidx: temp_93_ptr2globl_141, tracked: true } |     a3:Freed { symidx: temp_94_cmp_141, tracked: true } | 
              #                          label branch_true_142: 
.branch_true_142:
              #                          new_var temp_95_ret_of_panic_141:i32 
              #                          temp_95_ret_of_panic_141 =  Call i32 panic_0() 
              #                    saved register dumping to mem
              #                    store to temp_93_ptr2globl_141 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with temp_93_ptr2globl_141
              #                    store to temp_94_cmp_141 in mem offset legal
    sb      a3,63(sp)
              #                    release a3 with temp_94_cmp_141
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    panic
              #                    store to temp_95_ret_of_panic_141 in mem offset legal
    sw      a0,56(sp)
              #                          ret temp_95_ret_of_panic_141 
              #                    load from ra_eval_0 in mem
              #                    occupy a1 with ra_eval_0
    li      a1, 2240
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_eval_0 in mem
              #                    occupy a2 with s0_eval_0
    li      a2, 2232
    add     a2,sp,a2
    ld      s0,0(a2)
              #                    free a2
              #                    store to temp_95_ret_of_panic_141 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_95_ret_of_panic_141
              #                    occupy a0 with temp_95_ret_of_panic_141
              #                    load from temp_95_ret_of_panic_141 in mem


    lw      a0,56(sp)
              #                    occupy a3 with 2248_0
    li      a3, 2248
    li      a3, 2248
    add     sp,a3,sp
              #                    free a3
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_93_ptr2globl_141, tracked: true } |     a3:Freed { symidx: temp_94_cmp_141, tracked: true } | 
              #                          label branch_false_142: 
.branch_false_142:
              #                    regtab     a1:Freed { symidx: temp_93_ptr2globl_141, tracked: true } |     a3:Freed { symidx: temp_94_cmp_141, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_96_ptr2globl_128:i32 
              #                          temp_96_ptr2globl_128 = load *num_0:ptr->i32 
              #                    occupy a0 with *num_0
              #                       load label num as ptr to reg
    la      a0, num
              #                    occupy reg a0 with *num_0
              #                    occupy a2 with temp_96_ptr2globl_128
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                           Call void stack_push_0(oprs_119, temp_96_ptr2globl_128) 
              #                    saved register dumping to mem
              #                    store to temp_93_ptr2globl_141 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with temp_93_ptr2globl_141
              #                    store to temp_96_ptr2globl_128 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_96_ptr2globl_128
              #                    store to temp_94_cmp_141 in mem offset legal
    sb      a3,63(sp)
              #                    release a3 with temp_94_cmp_141
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_oprs_119_0
              #                    load from oprs_119 in mem
    lw      a0,1200(sp)
              #                    occupy a1 with _anonymous_of_temp_96_ptr2globl_128_0
              #                    load from temp_96_ptr2globl_128 in mem


    lw      a1,52(sp)
              #                    arg load ended


    call    stack_push
              #                          new_var temp_97_ret_of_next_token_128:i32 
              #                          temp_97_ret_of_next_token_128 =  Call i32 next_token_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_token
              #                    store to temp_97_ret_of_next_token_128 in mem offset legal
    sw      a0,48(sp)
              #                          jump label: while.head_127 
              #                    store to temp_97_ret_of_next_token_128 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_97_ret_of_next_token_128
              #                    occupy a0 with _anonymous_of_temp_74_ret_of_next_token_119_0
              #                    load from temp_74_ret_of_next_token_119 in mem


    lw      a0,148(sp)
    j       .while.head_127
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 40|s0_main:8 at 32|temp_106_ret_of_getint:4 at 28|count:4 at 24|temp_107_ret_of_getch:4 at 20|temp_108_ret_of_next_token:4 at 16|temp_109_:1 at 15|none:3 at 12|temp_110_ret_of_eval:4 at 8|temp_111_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_main_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 temp_106_ret_of_getint_155 
              #                          alloc i32 count_155 
              #                          alloc i32 temp_107_ret_of_getch_155 
              #                          alloc i32 temp_108_ret_of_next_token_155 
              #                          alloc i1 temp_109__3925 
              #                          alloc i32 temp_110_ret_of_eval_161 
              #                          alloc i32 temp_111_arithop_161 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_106_ret_of_getint_155:i32 
              #                          temp_106_ret_of_getint_155 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_106_ret_of_getint_155 in mem offset legal
    sw      a0,28(sp)
              #                          count_155 = i32 temp_106_ret_of_getint_155 
              #                    occupy a0 with temp_106_ret_of_getint_155
              #                    occupy a1 with count_155
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_107_ret_of_getch_155:i32 
              #                          temp_107_ret_of_getch_155 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_106_ret_of_getint_155 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_106_ret_of_getint_155
              #                    store to count_155 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with count_155
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_107_ret_of_getch_155 in mem offset legal
    sw      a0,20(sp)
              #                          new_var temp_108_ret_of_next_token_155:i32 
              #                          temp_108_ret_of_next_token_155 =  Call i32 next_token_0() 
              #                    saved register dumping to mem
              #                    store to temp_107_ret_of_getch_155 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_107_ret_of_getch_155
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    next_token
              #                    store to temp_108_ret_of_next_token_155 in mem offset legal
    sw      a0,16(sp)
              #                          jump label: while.head_160 
    j       .while.head_160
              #                    regtab     a0:Freed { symidx: temp_108_ret_of_next_token_155, tracked: true } | 
              #                          label while.head_160: 
.while.head_160:
              #                          new_var temp_109__3925:i1 
              #                          temp_109__3925 = icmp i32 Ne count_155, 0_0 
              #                    occupy a1 with count_155
              #                    load from count_155 in mem


    lw      a1,24(sp)
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_109__3925
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_109__3925, label while.body_160, label while.exit_160 
              #                    occupy a3 with temp_109__3925
              #                    free a3
              #                    occupy a3 with temp_109__3925
    bnez    a3, .while.body_160
              #                    free a3
    j       .while.exit_160
              #                    regtab     a0:Freed { symidx: temp_108_ret_of_next_token_155, tracked: true } |     a1:Freed { symidx: count_155, tracked: true } |     a3:Freed { symidx: temp_109__3925, tracked: true } | 
              #                          label while.body_160: 
.while.body_160:
              #                          new_var temp_110_ret_of_eval_161:i32 
              #                          temp_110_ret_of_eval_161 =  Call i32 eval_0() 
              #                    saved register dumping to mem
              #                    store to temp_108_ret_of_next_token_155 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_108_ret_of_next_token_155
              #                    store to count_155 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with count_155
              #                    store to temp_109__3925 in mem offset legal
    sb      a3,15(sp)
              #                    release a3 with temp_109__3925
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    eval
              #                    store to temp_110_ret_of_eval_161 in mem offset legal
    sw      a0,8(sp)
              #                           Call void putint_0(temp_110_ret_of_eval_161) 
              #                    saved register dumping to mem
              #                    store to temp_110_ret_of_eval_161 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_110_ret_of_eval_161
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_110_ret_of_eval_161_0
              #                    load from temp_110_ret_of_eval_161 in mem


    lw      a0,8(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          new_var temp_111_arithop_161:i32 
              #                          temp_111_arithop_161 = Sub i32 count_155, 1_0 
              #                    occupy a0 with count_155
              #                    load from count_155 in mem


    lw      a0,24(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_111_arithop_161
              #                    regtab:    a0:Occupied { symidx: count_155, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_111_arithop_161, tracked: true, occupy_count: 1 } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          count_155 = i32 temp_111_arithop_161 
              #                    occupy a2 with temp_111_arithop_161
              #                    occupy a0 with count_155
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_160 
              #                    store to temp_111_arithop_161 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_111_arithop_161
              #                    store to count_155 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with count_155
              #                    occupy a0 with _anonymous_of_temp_108_ret_of_next_token_155_0
              #                    load from temp_108_ret_of_next_token_155 in mem


    lw      a0,16(sp)
    j       .while.head_160
              #                    regtab     a0:Freed { symidx: temp_108_ret_of_next_token_155, tracked: true } |     a1:Freed { symidx: count_155, tracked: true } |     a3:Freed { symidx: temp_109__3925, tracked: true } | 
              #                          label while.exit_160: 
.while.exit_160:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,40(sp)
              #                    load from s0_main_0 in mem
    ld      s0,32(sp)
              #                    store to temp_108_ret_of_next_token_155 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_108_ret_of_next_token_155
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: count_155, tracked: true } |     a3:Freed { symidx: temp_109__3925, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl cur_token
              #                          global i32 cur_token_0 
    .type cur_token,@object
cur_token:
    .word 0
    .align 4
    .globl other
              #                          global i32 other_0 
    .type other,@object
other:
    .word 0
    .align 4
    .globl num
              #                          global i32 num_0 
    .type num,@object
num:
    .word 0
    .align 4
    .globl last_char
              #                          global i32 last_char_0 
    .type last_char,@object
last_char:
    .word 32
    .align 4
    .globl TOKEN_OTHER
              #                          global i32 TOKEN_OTHER_0 
    .type TOKEN_OTHER,@object
TOKEN_OTHER:
    .word 1
    .align 4
    .globl TOKEN_NUM
              #                          global i32 TOKEN_NUM_0 
    .type TOKEN_NUM,@object
TOKEN_NUM:
    .word 0
