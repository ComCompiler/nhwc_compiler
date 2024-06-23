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
              #                          Define inc_a_0 [] -> inc_a_ret_0 
    .globl inc_a
    .type inc_a,@function
inc_a:
              #                    mem layout:|ra_inc_a:8 at 24|s0_inc_a:8 at 16|temp_0_ptr2globl:4 at 12|b:4 at 8|temp_1_arithop:4 at 4|temp_2_ptr2globl:4 at 0
    addi    sp,sp,-32
              #                    store to ra_inc_a_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_inc_a_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                          alloc i32 temp_0_ptr2globl_18 
              #                          alloc i32 b_18 
              #                          alloc i32 temp_1_arithop_18 
              #                          alloc i32 temp_2_ptr2globl_18 
              #                    regtab 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_0_ptr2globl_18:i32 
              #                          temp_0_ptr2globl_18 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with temp_0_ptr2globl_18
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          b_18 = i32 temp_0_ptr2globl_18 
              #                    occupy a1 with temp_0_ptr2globl_18
              #                    occupy a2 with b_18
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          new_var temp_1_arithop_18:i32 
              #                          temp_1_arithop_18 = Add i32 b_18, 1_0 
              #                    occupy a2 with b_18
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_1_arithop_18
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          b_18 = i32 temp_1_arithop_18 
              #                    occupy a4 with temp_1_arithop_18
              #                    occupy a2 with b_18
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          store b_18:i32 *a_0:ptr->i32 
              #                    occupy a5 with *a_0
              #                       load label a as ptr to reg
    la      a5, a
              #                    occupy reg a5 with *a_0
              #                    occupy a2 with b_18
    sw      a2,0(a5)
              #                    free a2
              #                    free a5
              #                          new_var temp_2_ptr2globl_18:i32 
              #                          temp_2_ptr2globl_18 = load *a_0:ptr->i32 
              #                    occupy a6 with *a_0
              #                       load label a as ptr to reg
    la      a6, a
              #                    occupy reg a6 with *a_0
              #                    occupy a7 with temp_2_ptr2globl_18
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          ret temp_2_ptr2globl_18 
              #                    load from ra_inc_a_0 in mem
    ld      ra,24(sp)
              #                    load from s0_inc_a_0 in mem
    ld      s0,16(sp)
              #                    store to temp_2_ptr2globl_18 in mem offset legal
    sw      a7,0(sp)
              #                    release a7 with temp_2_ptr2globl_18
              #                    occupy a0 with temp_2_ptr2globl_18
              #                    load from temp_2_ptr2globl_18 in mem


    lw      a0,0(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_18, tracked: true } |     a2:Freed { symidx: b_18, tracked: true } |     a4:Freed { symidx: temp_1_arithop_18, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 112|s0_main:8 at 104|k:4 at 100|temp_3_cmp:1 at 99|none:3 at 96|temp_4_ret_of_inc_a:4 at 92|temp_5_ret_of_inc_a:4 at 88|temp_6_:1 at 87|temp_7_:1 at 86|temp_8_logic:1 at 85|none:1 at 84|temp_9_ret_of_inc_a:4 at 80|temp_10_:1 at 79|temp_11_logic:1 at 78|none:2 at 76|temp_12_ptr2globl:4 at 72|temp_13_ptr2globl:4 at 68|temp_14_ret_of_inc_a:4 at 64|temp_15_ret_of_inc_a:4 at 60|temp_16_arithop:4 at 56|temp_17_arithop:4 at 52|temp_18_ret_of_inc_a:4 at 48|temp_19_:1 at 47|temp_20_:1 at 46|temp_21_logic:1 at 45|none:1 at 44|temp_22_ret_of_inc_a:4 at 40|temp_23_cmp:1 at 39|temp_24_logic:1 at 38|none:2 at 36|temp_25_ptr2globl:4 at 32|temp_26_ptr2globl:4 at 28|temp_27_arithop:4 at 24|temp_28_arithop:4 at 20|temp_29_ret_of_inc_a:4 at 16|temp_30_ptr2globl:4 at 12|temp_31_ptr2globl:4 at 8|temp_32_ptr2globl:4 at 4|none:4 at 0
    addi    sp,sp,-120
              #                    store to ra_main_0 in mem offset legal
    sd      ra,112(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,104(sp)
    addi    s0,sp,120
              #                          alloc i32 k_24 
              #                          alloc i1 temp_3_cmp_26 
              #                          alloc i32 temp_4_ret_of_inc_a_29 
              #                          alloc i32 temp_5_ret_of_inc_a_29 
              #                          alloc i1 temp_6__29 
              #                          alloc i1 temp_7__29 
              #                          alloc i1 temp_8_logic_29 
              #                          alloc i32 temp_9_ret_of_inc_a_29 
              #                          alloc i1 temp_10__29 
              #                          alloc i1 temp_11_logic_29 
              #                          alloc i32 temp_12_ptr2globl_31 
              #                          alloc i32 temp_13_ptr2globl_31 
              #                          alloc i32 temp_14_ret_of_inc_a_36 
              #                          alloc i32 temp_15_ret_of_inc_a_36 
              #                          alloc i32 temp_16_arithop_36 
              #                          alloc i32 temp_17_arithop_36 
              #                          alloc i32 temp_18_ret_of_inc_a_36 
              #                          alloc i1 temp_19__36 
              #                          alloc i1 temp_20__36 
              #                          alloc i1 temp_21_logic_36 
              #                          alloc i32 temp_22_ret_of_inc_a_36 
              #                          alloc i1 temp_23_cmp_36 
              #                          alloc i1 temp_24_logic_36 
              #                          alloc i32 temp_25_ptr2globl_38 
              #                          alloc i32 temp_26_ptr2globl_38 
              #                          alloc i32 temp_27_arithop_38 
              #                          alloc i32 temp_28_arithop_28 
              #                          alloc i32 temp_29_ret_of_inc_a_42 
              #                          alloc i32 temp_30_ptr2globl_24 
              #                          alloc i32 temp_31_ptr2globl_24 
              #                          alloc i32 temp_32_ptr2globl_24 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          k_24 = i32 5_0 
              #                    occupy a0 with k_24
    li      a0, 5
              #                    free a0
              #                          jump label: while.head_27 
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: k_24, tracked: true } | 
              #                          label while.head_27: 
.while.head_27:
              #                          new_var temp_3_cmp_26:i1 
              #                          temp_3_cmp_26 = icmp i32 Sge k_24, 0_0 
              #                    occupy a0 with k_24
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_3_cmp_26
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_3_cmp_26, label while.body_27, label while.exit_27 
              #                    occupy a2 with temp_3_cmp_26
              #                    free a2
              #                    occupy a2 with temp_3_cmp_26
    bnez    a2, .while.body_27
              #                    free a2
    j       .while.exit_27
              #                    regtab     a0:Freed { symidx: k_24, tracked: true } |     a2:Freed { symidx: temp_3_cmp_26, tracked: true } | 
              #                          label while.body_27: 
.while.body_27:
              #                          new_var temp_4_ret_of_inc_a_29:i32 
              #                          temp_4_ret_of_inc_a_29 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    store to k_24 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with k_24
              #                    store to temp_3_cmp_26 in mem offset legal
    sb      a2,99(sp)
              #                    release a2 with temp_3_cmp_26
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                    store to temp_4_ret_of_inc_a_29 in mem offset legal
    sw      a0,92(sp)
              #                          new_var temp_5_ret_of_inc_a_29:i32 
              #                          temp_5_ret_of_inc_a_29 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    store to temp_4_ret_of_inc_a_29 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_4_ret_of_inc_a_29
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                    store to temp_5_ret_of_inc_a_29 in mem offset legal
    sw      a0,88(sp)
              #                          new_var temp_6__29:i1 
              #                          temp_6__29 = icmp i32 Ne temp_5_ret_of_inc_a_29, 0_0 
              #                    occupy a0 with temp_5_ret_of_inc_a_29
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_6__29
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_7__29:i1 
              #                          temp_6__29 = icmp i32 Ne temp_4_ret_of_inc_a_29, 0_0 
              #                    occupy a3 with temp_4_ret_of_inc_a_29
              #                    load from temp_4_ret_of_inc_a_29 in mem


    lw      a3,92(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_6__29
              #                    free a3
              #                    free a1
              #                    free a2
              #                          new_var temp_8_logic_29:i1 
              #                          temp_8_logic_29 = And i1 temp_6__29, temp_7__29 
              #                    occupy a2 with temp_6__29
              #                    occupy a4 with temp_7__29
              #                    load from temp_7__29 in mem
    lb      a4,86(sp)
              #                    occupy a5 with temp_8_logic_29
    and     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          new_var temp_9_ret_of_inc_a_29:i32 
              #                          temp_9_ret_of_inc_a_29 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    store to temp_5_ret_of_inc_a_29 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_5_ret_of_inc_a_29
              #                    store to temp_6__29 in mem offset legal
    sb      a2,87(sp)
              #                    release a2 with temp_6__29
              #                    store to temp_4_ret_of_inc_a_29 in mem offset legal
    sw      a3,92(sp)
              #                    release a3 with temp_4_ret_of_inc_a_29
              #                    store to temp_7__29 in mem offset legal
    sb      a4,86(sp)
              #                    release a4 with temp_7__29
              #                    store to temp_8_logic_29 in mem offset legal
    sb      a5,85(sp)
              #                    release a5 with temp_8_logic_29
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                    store to temp_9_ret_of_inc_a_29 in mem offset legal
    sw      a0,80(sp)
              #                          new_var temp_10__29:i1 
              #                          temp_10__29 = icmp i32 Ne temp_9_ret_of_inc_a_29, 0_0 
              #                    occupy a0 with temp_9_ret_of_inc_a_29
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_10__29
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_11_logic_29:i1 
              #                          temp_11_logic_29 = And i1 temp_10__29, temp_8_logic_29 
              #                    occupy a2 with temp_10__29
              #                    occupy a3 with temp_8_logic_29
              #                    load from temp_8_logic_29 in mem
    lb      a3,85(sp)
              #                    occupy a4 with temp_11_logic_29
    and     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_11_logic_29, label branch_true_30, label branch_false_30 
              #                    occupy a4 with temp_11_logic_29
              #                    free a4
              #                    occupy a4 with temp_11_logic_29
    bnez    a4, .branch_true_30
              #                    free a4
    j       .branch_false_30
              #                    regtab     a0:Freed { symidx: temp_9_ret_of_inc_a_29, tracked: true } |     a2:Freed { symidx: temp_10__29, tracked: true } |     a3:Freed { symidx: temp_8_logic_29, tracked: true } |     a4:Freed { symidx: temp_11_logic_29, tracked: true } | 
              #                          label branch_true_30: 
.branch_true_30:
              #                          new_var temp_12_ptr2globl_31:i32 
              #                          temp_12_ptr2globl_31 = load *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a5 with temp_12_ptr2globl_31
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                           Call void putint_0(temp_12_ptr2globl_31) 
              #                    saved register dumping to mem
              #                    store to temp_9_ret_of_inc_a_29 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with temp_9_ret_of_inc_a_29
              #                    store to temp_10__29 in mem offset legal
    sb      a2,79(sp)
              #                    release a2 with temp_10__29
              #                    store to temp_8_logic_29 in mem offset legal
    sb      a3,85(sp)
              #                    release a3 with temp_8_logic_29
              #                    store to temp_11_logic_29 in mem offset legal
    sb      a4,78(sp)
              #                    release a4 with temp_11_logic_29
              #                    store to temp_12_ptr2globl_31 in mem offset legal
    sw      a5,72(sp)
              #                    release a5 with temp_12_ptr2globl_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_12_ptr2globl_31_0
              #                    load from temp_12_ptr2globl_31 in mem


    lw      a0,72(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          new_var temp_13_ptr2globl_31:i32 
              #                          temp_13_ptr2globl_31 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_13_ptr2globl_31
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                           Call void putint_0(temp_13_ptr2globl_31) 
              #                    saved register dumping to mem
              #                    store to temp_13_ptr2globl_31 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with temp_13_ptr2globl_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_13_ptr2globl_31_0
              #                    load from temp_13_ptr2globl_31 in mem


    lw      a0,68(sp)
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
              #                          jump label: branch_false_30 
              #                    occupy a0 with _anonymous_of_temp_9_ret_of_inc_a_29_0
              #                    load from temp_9_ret_of_inc_a_29 in mem


    lw      a0,80(sp)
              #                    occupy a2 with _anonymous_of_temp_10__29_0
              #                    load from temp_10__29 in mem
    lb      a2,79(sp)
              #                    occupy a3 with _anonymous_of_temp_8_logic_29_0
              #                    load from temp_8_logic_29 in mem
    lb      a3,85(sp)
              #                    occupy a4 with _anonymous_of_temp_11_logic_29_0
              #                    load from temp_11_logic_29 in mem
    lb      a4,78(sp)
    j       .branch_false_30
              #                    regtab     a0:Freed { symidx: temp_9_ret_of_inc_a_29, tracked: true } |     a2:Freed { symidx: temp_10__29, tracked: true } |     a3:Freed { symidx: temp_8_logic_29, tracked: true } |     a4:Freed { symidx: temp_11_logic_29, tracked: true } | 
              #                          label branch_false_30: 
.branch_false_30:
              #                    regtab     a0:Freed { symidx: temp_9_ret_of_inc_a_29, tracked: true } |     a2:Freed { symidx: temp_10__29, tracked: true } |     a3:Freed { symidx: temp_8_logic_29, tracked: true } |     a4:Freed { symidx: temp_11_logic_29, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_14_ret_of_inc_a_36:i32 
              #                          temp_14_ret_of_inc_a_36 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    store to temp_9_ret_of_inc_a_29 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with temp_9_ret_of_inc_a_29
              #                    store to temp_10__29 in mem offset legal
    sb      a2,79(sp)
              #                    release a2 with temp_10__29
              #                    store to temp_8_logic_29 in mem offset legal
    sb      a3,85(sp)
              #                    release a3 with temp_8_logic_29
              #                    store to temp_11_logic_29 in mem offset legal
    sb      a4,78(sp)
              #                    release a4 with temp_11_logic_29
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                    store to temp_14_ret_of_inc_a_36 in mem offset legal
    sw      a0,64(sp)
              #                          new_var temp_15_ret_of_inc_a_36:i32 
              #                          temp_15_ret_of_inc_a_36 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    store to temp_14_ret_of_inc_a_36 in mem offset legal
    sw      a0,64(sp)
              #                    release a0 with temp_14_ret_of_inc_a_36
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                    store to temp_15_ret_of_inc_a_36 in mem offset legal
    sw      a0,60(sp)
              #                          new_var temp_16_arithop_36:i32 
              #                          temp_16_arithop_36 = Sub i32 temp_15_ret_of_inc_a_36, temp_14_ret_of_inc_a_36 
              #                    occupy a0 with temp_15_ret_of_inc_a_36
              #                    occupy a1 with temp_14_ret_of_inc_a_36
              #                    load from temp_14_ret_of_inc_a_36 in mem


    lw      a1,64(sp)
              #                    occupy a2 with temp_16_arithop_36
              #                    regtab:    a0:Occupied { symidx: temp_15_ret_of_inc_a_36, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_14_ret_of_inc_a_36, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_16_arithop_36, tracked: true, occupy_count: 1 } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_17_arithop_36:i32 
              #                          temp_17_arithop_36 = Add i32 temp_16_arithop_36, 1_0 
              #                    occupy a2 with temp_16_arithop_36
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_17_arithop_36
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_18_ret_of_inc_a_36:i32 
              #                          temp_18_ret_of_inc_a_36 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    store to temp_15_ret_of_inc_a_36 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_15_ret_of_inc_a_36
              #                    store to temp_14_ret_of_inc_a_36 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with temp_14_ret_of_inc_a_36
              #                    store to temp_16_arithop_36 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with temp_16_arithop_36
              #                    store to temp_17_arithop_36 in mem offset legal
    sw      a4,52(sp)
              #                    release a4 with temp_17_arithop_36
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                    store to temp_18_ret_of_inc_a_36 in mem offset legal
    sw      a0,48(sp)
              #                          new_var temp_19__36:i1 
              #                          temp_19__36 = icmp i32 Ne temp_18_ret_of_inc_a_36, 0_0 
              #                    occupy a0 with temp_18_ret_of_inc_a_36
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_19__36
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_20__36:i1 
              #                          temp_19__36 = icmp i32 Ne temp_17_arithop_36, 0_0 
              #                    occupy a3 with temp_17_arithop_36
              #                    load from temp_17_arithop_36 in mem


    lw      a3,52(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_19__36
              #                    free a3
              #                    free a1
              #                    free a2
              #                          new_var temp_21_logic_36:i1 
              #                          temp_21_logic_36 = And i1 temp_19__36, temp_20__36 
              #                    occupy a2 with temp_19__36
              #                    occupy a4 with temp_20__36
              #                    load from temp_20__36 in mem
    lb      a4,46(sp)
              #                    occupy a5 with temp_21_logic_36
    and     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          new_var temp_22_ret_of_inc_a_36:i32 
              #                          temp_22_ret_of_inc_a_36 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    store to temp_18_ret_of_inc_a_36 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_18_ret_of_inc_a_36
              #                    store to temp_19__36 in mem offset legal
    sb      a2,47(sp)
              #                    release a2 with temp_19__36
              #                    store to temp_17_arithop_36 in mem offset legal
    sw      a3,52(sp)
              #                    release a3 with temp_17_arithop_36
              #                    store to temp_20__36 in mem offset legal
    sb      a4,46(sp)
              #                    release a4 with temp_20__36
              #                    store to temp_21_logic_36 in mem offset legal
    sb      a5,45(sp)
              #                    release a5 with temp_21_logic_36
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                    store to temp_22_ret_of_inc_a_36 in mem offset legal
    sw      a0,40(sp)
              #                          new_var temp_23_cmp_36:i1 
              #                          temp_23_cmp_36 = icmp i32 Slt temp_22_ret_of_inc_a_36, 14_0 
              #                    occupy a0 with temp_22_ret_of_inc_a_36
              #                    occupy a1 with 14_0
    li      a1, 14
              #                    occupy a2 with temp_23_cmp_36
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_24_logic_36:i1 
              #                          temp_24_logic_36 = Or i1 temp_23_cmp_36, temp_21_logic_36 
              #                    occupy a2 with temp_23_cmp_36
              #                    occupy a3 with temp_21_logic_36
              #                    load from temp_21_logic_36 in mem
    lb      a3,45(sp)
              #                    occupy a3 with temp_21_logic_36
              #                    free a2
              #                    free a3
              #                    free a3
              #                          br i1 temp_24_logic_36, label branch_true_37, label branch_false_37 
              #                    occupy a4 with temp_24_logic_36
              #                    load from temp_24_logic_36 in mem
    lb      a4,38(sp)
              #                    free a4
              #                    occupy a4 with temp_24_logic_36
    bnez    a4, .branch_true_37
              #                    free a4
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: temp_22_ret_of_inc_a_36, tracked: true } |     a2:Freed { symidx: temp_23_cmp_36, tracked: true } |     a3:Freed { symidx: temp_21_logic_36, tracked: true } |     a4:Freed { symidx: temp_24_logic_36, tracked: true } | 
              #                          label branch_true_37: 
.branch_true_37:
              #                          new_var temp_25_ptr2globl_38:i32 
              #                          temp_25_ptr2globl_38 = load *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a5 with temp_25_ptr2globl_38
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                           Call void putint_0(temp_25_ptr2globl_38) 
              #                    saved register dumping to mem
              #                    store to temp_22_ret_of_inc_a_36 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_22_ret_of_inc_a_36
              #                    store to temp_23_cmp_36 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_23_cmp_36
              #                    store to temp_21_logic_36 in mem offset legal
    sb      a3,45(sp)
              #                    release a3 with temp_21_logic_36
              #                    store to temp_24_logic_36 in mem offset legal
    sb      a4,38(sp)
              #                    release a4 with temp_24_logic_36
              #                    store to temp_25_ptr2globl_38 in mem offset legal
    sw      a5,32(sp)
              #                    release a5 with temp_25_ptr2globl_38
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_25_ptr2globl_38_0
              #                    load from temp_25_ptr2globl_38 in mem


    lw      a0,32(sp)
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
              #                          new_var temp_26_ptr2globl_38:i32 
              #                          temp_26_ptr2globl_38 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_26_ptr2globl_38
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_27_arithop_38:i32 
              #                          temp_27_arithop_38 = Mul i32 temp_26_ptr2globl_38, 2_0 
              #                    occupy a1 with temp_26_ptr2globl_38
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with temp_27_arithop_38
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_27_arithop_38:i32 *b_0:ptr->i32 
              #                    occupy a4 with *b_0
              #                       load label b as ptr to reg
    la      a4, b
              #                    occupy reg a4 with *b_0
              #                    occupy a3 with temp_27_arithop_38
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_22_ret_of_inc_a_36, tracked: true } |     a2:Freed { symidx: temp_23_cmp_36, tracked: true } |     a3:Freed { symidx: temp_21_logic_36, tracked: true } |     a4:Freed { symidx: temp_24_logic_36, tracked: true } | 
              #                          label branch_false_37: 
.branch_false_37:
              #                          new_var temp_29_ret_of_inc_a_42:i32 
              #                          temp_29_ret_of_inc_a_42 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    store to temp_22_ret_of_inc_a_36 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_22_ret_of_inc_a_36
              #                    store to temp_23_cmp_36 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_23_cmp_36
              #                    store to temp_21_logic_36 in mem offset legal
    sb      a3,45(sp)
              #                    release a3 with temp_21_logic_36
              #                    store to temp_24_logic_36 in mem offset legal
    sb      a4,38(sp)
              #                    release a4 with temp_24_logic_36
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                    store to temp_29_ret_of_inc_a_42 in mem offset legal
    sw      a0,16(sp)
              #                          jump label: L2_0 
              #                    store to temp_29_ret_of_inc_a_42 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_29_ret_of_inc_a_42
              #                    occupy a1 with _anonymous_of_temp_26_ptr2globl_38_0
              #                    load from temp_26_ptr2globl_38 in mem


    lw      a1,28(sp)
              #                    occupy a3 with _anonymous_of_temp_27_arithop_38_0
              #                    load from temp_27_arithop_38 in mem


    lw      a3,24(sp)
    j       .L2_0
              #                    regtab     a1:Freed { symidx: temp_26_ptr2globl_38, tracked: true } |     a3:Freed { symidx: temp_27_arithop_38, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a1:Freed { symidx: temp_26_ptr2globl_38, tracked: true } |     a3:Freed { symidx: temp_27_arithop_38, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_28_arithop_28:i32 
              #                          temp_28_arithop_28 = Sub i32 k_24, 1_0 
              #                    occupy a0 with k_24
              #                    load from k_24 in mem


    lw      a0,100(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_28_arithop_28
              #                    regtab:    a0:Occupied { symidx: k_24, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_26_ptr2globl_38, tracked: true } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: temp_27_arithop_38, tracked: true } |     a4:Occupied { symidx: temp_28_arithop_28, tracked: true, occupy_count: 1 } | 


    sub     a4,a0,a2
              #                    free a0
              #                    free a2
              #                    free a4
              #                          k_24 = i32 temp_28_arithop_28 
              #                    occupy a4 with temp_28_arithop_28
              #                    occupy a0 with k_24
    mv      a0, a4
              #                    free a4
              #                    free a0
              #                          jump label: while.head_27 
              #                    store to temp_26_ptr2globl_38 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with temp_26_ptr2globl_38
              #                    store to temp_27_arithop_38 in mem offset legal
    sw      a3,24(sp)
              #                    release a3 with temp_27_arithop_38
              #                    store to temp_28_arithop_28 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_28_arithop_28
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: k_24, tracked: true } |     a2:Freed { symidx: temp_3_cmp_26, tracked: true } | 
              #                          label while.exit_27: 
.while.exit_27:
              #                          new_var temp_30_ptr2globl_24:i32 
              #                          temp_30_ptr2globl_24 = load *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a3 with temp_30_ptr2globl_24
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                           Call void putint_0(temp_30_ptr2globl_24) 
              #                    saved register dumping to mem
              #                    store to k_24 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with k_24
              #                    store to temp_3_cmp_26 in mem offset legal
    sb      a2,99(sp)
              #                    release a2 with temp_3_cmp_26
              #                    store to temp_30_ptr2globl_24 in mem offset legal
    sw      a3,12(sp)
              #                    release a3 with temp_30_ptr2globl_24
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_ptr2globl_24_0
              #                    load from temp_30_ptr2globl_24 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          new_var temp_31_ptr2globl_24:i32 
              #                          temp_31_ptr2globl_24 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_31_ptr2globl_24
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                           Call void putint_0(temp_31_ptr2globl_24) 
              #                    saved register dumping to mem
              #                    store to temp_31_ptr2globl_24 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_31_ptr2globl_24
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_31_ptr2globl_24_0
              #                    load from temp_31_ptr2globl_24 in mem


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
              #                          new_var temp_32_ptr2globl_24:i32 
              #                          temp_32_ptr2globl_24 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with temp_32_ptr2globl_24
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          ret temp_32_ptr2globl_24 
              #                    load from ra_main_0 in mem
    ld      ra,112(sp)
              #                    load from s0_main_0 in mem
    ld      s0,104(sp)
              #                    store to temp_32_ptr2globl_24 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_32_ptr2globl_24
              #                    occupy a0 with temp_32_ptr2globl_24
              #                    load from temp_32_ptr2globl_24 in mem


    lw      a0,4(sp)
    addi    sp,sp,120
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl b
              #                          global i32 b_0 
    .type b,@object
b:
    .word 1
    .align 4
    .globl a
              #                          global i32 a_0 
    .type a,@object
a:
    .word -1
