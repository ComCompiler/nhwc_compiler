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
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 152|s0_main:8 at 144|temp_0_ret_of_getint:4 at 140|temp_1_ret_of_getint:4 at 136|temp_2_ret_of_getint:4 at 132|temp_3_ret_of_getint:4 at 128|temp_4_ret_of_getint:4 at 124|flag:4 at 120|temp_5_ptr2globl:4 at 116|temp_6_ptr2globl:4 at 112|temp_7_arithop:4 at 108|temp_8_ptr2globl:4 at 104|temp_9_ptr2globl:4 at 100|temp_10_ptr2globl:4 at 96|temp_11_arithop:4 at 92|temp_12_arithop:4 at 88|temp_13_cmp:1 at 87|none:3 at 84|temp_14_ptr2globl:4 at 80|temp_15_ptr2globl:4 at 76|temp_16_arithop:4 at 72|temp_17_ptr2globl:4 at 68|temp_18_ptr2globl:4 at 64|temp_19_ptr2globl:4 at 60|temp_20_arithop:4 at 56|temp_21_arithop:4 at 52|temp_22_cmp:1 at 51|temp_23_logic:1 at 50|none:2 at 48|temp_24_ptr2globl:4 at 44|temp_25_ptr2globl:4 at 40|temp_26_arithop:4 at 36|temp_27_ptr2globl:4 at 32|temp_28_arithop:4 at 28|temp_29_ptr2globl:4 at 24|temp_30_ptr2globl:4 at 20|temp_31_arithop:4 at 16|temp_32_ptr2globl:4 at 12|temp_33_arithop:4 at 8|temp_34_cmp:1 at 7|temp_35_logic:1 at 6|none:6 at 0
    addi    sp,sp,-160
              #                    store to ra_main_0 in mem offset legal
    sd      ra,152(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,144(sp)
    addi    s0,sp,160
              #                          alloc i32 temp_0_ret_of_getint_22 
              #                          alloc i32 temp_1_ret_of_getint_22 
              #                          alloc i32 temp_2_ret_of_getint_22 
              #                          alloc i32 temp_3_ret_of_getint_22 
              #                          alloc i32 temp_4_ret_of_getint_22 
              #                          alloc i32 flag_22 
              #                          alloc i32 temp_5_ptr2globl_29 
              #                          alloc i32 temp_6_ptr2globl_29 
              #                          alloc i32 temp_7_arithop_29 
              #                          alloc i32 temp_8_ptr2globl_29 
              #                          alloc i32 temp_9_ptr2globl_29 
              #                          alloc i32 temp_10_ptr2globl_29 
              #                          alloc i32 temp_11_arithop_29 
              #                          alloc i32 temp_12_arithop_29 
              #                          alloc i1 temp_13_cmp_29 
              #                          alloc i32 temp_14_ptr2globl_29 
              #                          alloc i32 temp_15_ptr2globl_29 
              #                          alloc i32 temp_16_arithop_29 
              #                          alloc i32 temp_17_ptr2globl_29 
              #                          alloc i32 temp_18_ptr2globl_29 
              #                          alloc i32 temp_19_ptr2globl_29 
              #                          alloc i32 temp_20_arithop_29 
              #                          alloc i32 temp_21_arithop_29 
              #                          alloc i1 temp_22_cmp_29 
              #                          alloc i1 temp_23_logic_29 
              #                          alloc i32 temp_24_ptr2globl_29 
              #                          alloc i32 temp_25_ptr2globl_29 
              #                          alloc i32 temp_26_arithop_29 
              #                          alloc i32 temp_27_ptr2globl_29 
              #                          alloc i32 temp_28_arithop_29 
              #                          alloc i32 temp_29_ptr2globl_29 
              #                          alloc i32 temp_30_ptr2globl_29 
              #                          alloc i32 temp_31_arithop_29 
              #                          alloc i32 temp_32_ptr2globl_29 
              #                          alloc i32 temp_33_arithop_29 
              #                          alloc i1 temp_34_cmp_29 
              #                          alloc i1 temp_35_logic_29 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_0_ret_of_getint_22:i32 
              #                          temp_0_ret_of_getint_22 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_0_ret_of_getint_22 in mem offset legal
    sw      a0,140(sp)
              #                          store temp_0_ret_of_getint_22:i32 *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a0 with temp_0_ret_of_getint_22
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_1_ret_of_getint_22:i32 
              #                          temp_1_ret_of_getint_22 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_0_ret_of_getint_22 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_0_ret_of_getint_22
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_1_ret_of_getint_22 in mem offset legal
    sw      a0,136(sp)
              #                          store temp_1_ret_of_getint_22:i32 *b_0:ptr->i32 
              #                    occupy a1 with *b_0
              #                       load label b as ptr to reg
    la      a1, b
              #                    occupy reg a1 with *b_0
              #                    occupy a0 with temp_1_ret_of_getint_22
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_2_ret_of_getint_22:i32 
              #                          temp_2_ret_of_getint_22 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_1_ret_of_getint_22 in mem offset legal
    sw      a0,136(sp)
              #                    release a0 with temp_1_ret_of_getint_22
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_2_ret_of_getint_22 in mem offset legal
    sw      a0,132(sp)
              #                          store temp_2_ret_of_getint_22:i32 *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a0 with temp_2_ret_of_getint_22
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_3_ret_of_getint_22:i32 
              #                          temp_3_ret_of_getint_22 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_2_ret_of_getint_22 in mem offset legal
    sw      a0,132(sp)
              #                    release a0 with temp_2_ret_of_getint_22
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_3_ret_of_getint_22 in mem offset legal
    sw      a0,128(sp)
              #                          store temp_3_ret_of_getint_22:i32 *d_0:ptr->i32 
              #                    occupy a1 with *d_0
              #                       load label d as ptr to reg
    la      a1, d
              #                    occupy reg a1 with *d_0
              #                    occupy a0 with temp_3_ret_of_getint_22
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_4_ret_of_getint_22:i32 
              #                          temp_4_ret_of_getint_22 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_ret_of_getint_22 in mem offset legal
    sw      a0,128(sp)
              #                    release a0 with temp_3_ret_of_getint_22
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_4_ret_of_getint_22 in mem offset legal
    sw      a0,124(sp)
              #                          store temp_4_ret_of_getint_22:i32 *e_0:ptr->i32 
              #                    occupy a1 with *e_0
              #                       load label e as ptr to reg
    la      a1, e
              #                    occupy reg a1 with *e_0
              #                    occupy a0 with temp_4_ret_of_getint_22
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          flag_22 = i32 0_0 
              #                    occupy a2 with flag_22
    li      a2, 0
              #                    free a2
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_getint_22, tracked: true } |     a2:Freed { symidx: flag_22, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_5_ptr2globl_29:i32 
              #                          temp_5_ptr2globl_29 = load *e_0:ptr->i32 
              #                    occupy a1 with *e_0
              #                       load label e as ptr to reg
    la      a1, e
              #                    occupy reg a1 with *e_0
              #                    occupy a3 with temp_5_ptr2globl_29
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_6_ptr2globl_29:i32 
              #                          temp_6_ptr2globl_29 = load *d_0:ptr->i32 
              #                    occupy a4 with *d_0
              #                       load label d as ptr to reg
    la      a4, d
              #                    occupy reg a4 with *d_0
              #                    occupy a5 with temp_6_ptr2globl_29
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_7_arithop_29:i32 
              #                          temp_7_arithop_29 = Add i32 temp_6_ptr2globl_29, temp_5_ptr2globl_29 
              #                    occupy a5 with temp_6_ptr2globl_29
              #                    occupy a3 with temp_5_ptr2globl_29
              #                    occupy a6 with temp_7_arithop_29
    add     a6,a5,a3
              #                    free a5
              #                    free a3
              #                    free a6
              #                          new_var temp_8_ptr2globl_29:i32 
              #                          temp_8_ptr2globl_29 = load *c_0:ptr->i32 
              #                    occupy a7 with *c_0
              #                       load label c as ptr to reg
    la      a7, c
              #                    occupy reg a7 with *c_0
              #                    occupy s1 with temp_8_ptr2globl_29
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_9_ptr2globl_29:i32 
              #                          temp_9_ptr2globl_29 = load *b_0:ptr->i32 
              #                    occupy s2 with *b_0
              #                       load label b as ptr to reg
    la      s2, b
              #                    occupy reg s2 with *b_0
              #                    occupy s3 with temp_9_ptr2globl_29
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_10_ptr2globl_29:i32 
              #                          temp_10_ptr2globl_29 = load *a_0:ptr->i32 
              #                    occupy s4 with *a_0
              #                       load label a as ptr to reg
    la      s4, a
              #                    occupy reg s4 with *a_0
              #                    occupy s5 with temp_10_ptr2globl_29
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_11_arithop_29:i32 
              #                          temp_11_arithop_29 = Add i32 temp_10_ptr2globl_29, temp_9_ptr2globl_29 
              #                    occupy s5 with temp_10_ptr2globl_29
              #                    occupy s3 with temp_9_ptr2globl_29
              #                    occupy s6 with temp_11_arithop_29
    add     s6,s5,s3
              #                    free s5
              #                    free s3
              #                    free s6
              #                          new_var temp_12_arithop_29:i32 
              #                          temp_12_arithop_29 = Add i32 temp_11_arithop_29, temp_8_ptr2globl_29 
              #                    occupy s6 with temp_11_arithop_29
              #                    occupy s1 with temp_8_ptr2globl_29
              #                    occupy s7 with temp_12_arithop_29
    add     s7,s6,s1
              #                    free s6
              #                    free s1
              #                    free s7
              #                          new_var temp_13_cmp_29:i1 
              #                          temp_13_cmp_29 = icmp i32 Eq temp_12_arithop_29, temp_7_arithop_29 
              #                    occupy s7 with temp_12_arithop_29
              #                    occupy a6 with temp_7_arithop_29
              #                    occupy s8 with temp_13_cmp_29
    xor     s8,s7,a6
    seqz    s8, s8
              #                    free s7
              #                    free a6
              #                    free s8
              #                          new_var temp_14_ptr2globl_29:i32 
              #                          temp_14_ptr2globl_29 = load *d_0:ptr->i32 
              #                    occupy s9 with *d_0
              #                       load label d as ptr to reg
    la      s9, d
              #                    occupy reg s9 with *d_0
              #                    occupy s10 with temp_14_ptr2globl_29
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          new_var temp_15_ptr2globl_29:i32 
              #                          temp_15_ptr2globl_29 = load *e_0:ptr->i32 
              #                    occupy s11 with *e_0
              #                       load label e as ptr to reg
    la      s11, e
              #                    occupy reg s11 with *e_0
              #                    occupy a1 with temp_15_ptr2globl_29
    lw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          new_var temp_16_arithop_29:i32 
              #                          temp_16_arithop_29 = Add i32 temp_15_ptr2globl_29, temp_14_ptr2globl_29 
              #                    occupy a1 with temp_15_ptr2globl_29
              #                    occupy s10 with temp_14_ptr2globl_29
              #                    occupy a4 with temp_16_arithop_29
    add     a4,a1,s10
              #                    free a1
              #                    free s10
              #                    free a4
              #                          new_var temp_17_ptr2globl_29:i32 
              #                          temp_17_ptr2globl_29 = load *c_0:ptr->i32 
              #                    occupy a7 with *c_0
              #                       load label c as ptr to reg
    la      a7, c
              #                    occupy reg a7 with *c_0
              #                    occupy s2 with temp_17_ptr2globl_29
    lw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          new_var temp_18_ptr2globl_29:i32 
              #                          temp_18_ptr2globl_29 = load *b_0:ptr->i32 
              #                    occupy a7 with *b_0
              #                       load label b as ptr to reg
    la      a7, b
              #                    occupy reg a7 with *b_0
              #                    occupy s4 with temp_18_ptr2globl_29
    lw      s4,0(a7)
              #                    free s4
              #                    free a7
              #                          new_var temp_19_ptr2globl_29:i32 
              #                          temp_19_ptr2globl_29 = load *a_0:ptr->i32 
              #                    occupy a7 with *a_0
              #                       load label a as ptr to reg
    la      a7, a
              #                    occupy reg a7 with *a_0
              #                    occupy s9 with temp_19_ptr2globl_29
    lw      s9,0(a7)
              #                    free s9
              #                    free a7
              #                          new_var temp_20_arithop_29:i32 
              #                          temp_20_arithop_29 = Mul i32 temp_19_ptr2globl_29, temp_18_ptr2globl_29 
              #                    occupy s9 with temp_19_ptr2globl_29
              #                    occupy s4 with temp_18_ptr2globl_29
              #                    occupy a7 with temp_20_arithop_29
    mul     a7,s9,s4
              #                    free s9
              #                    free s4
              #                    free a7
              #                          new_var temp_21_arithop_29:i32 
              #                          temp_21_arithop_29 = Div i32 temp_20_arithop_29, temp_17_ptr2globl_29 
              #                    occupy a7 with temp_20_arithop_29
              #                    occupy s2 with temp_17_ptr2globl_29
              #                    occupy s11 with temp_21_arithop_29
    div     s11,a7,s2
              #                    free a7
              #                    free s2
              #                    free s11
              #                          new_var temp_22_cmp_29:i1 
              #                          temp_22_cmp_29 = icmp i32 Eq temp_21_arithop_29, temp_16_arithop_29 
              #                    occupy s11 with temp_21_arithop_29
              #                    occupy a4 with temp_16_arithop_29
              #                    store to temp_4_ret_of_getint_22 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_4_ret_of_getint_22
              #                    occupy a0 with temp_22_cmp_29
    xor     a0,s11,a4
    seqz    a0, a0
              #                    free s11
              #                    free a4
              #                    free a0
              #                          new_var temp_23_logic_29:i1 
              #                          temp_23_logic_29 = Or i1 temp_22_cmp_29, temp_13_cmp_29 
              #                    occupy a0 with temp_22_cmp_29
              #                    occupy s8 with temp_13_cmp_29
              #                    occupy s8 with temp_13_cmp_29
              #                    free a0
              #                    free s8
              #                    free s8
              #                          new_var temp_24_ptr2globl_29:i32 
              #                          temp_24_ptr2globl_29 = load *c_0:ptr->i32 
              #                    store to temp_22_cmp_29 in mem offset legal
    sb      a0,51(sp)
              #                    release a0 with temp_22_cmp_29
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
              #                    store to temp_15_ptr2globl_29 in mem offset legal
    sw      a1,76(sp)
              #                    release a1 with temp_15_ptr2globl_29
              #                    occupy a1 with temp_24_ptr2globl_29
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_25_ptr2globl_29:i32 
              #                          temp_25_ptr2globl_29 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    store to temp_24_ptr2globl_29 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with temp_24_ptr2globl_29
              #                    occupy a1 with temp_25_ptr2globl_29
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_26_arithop_29:i32 
              #                          temp_26_arithop_29 = Div i32 temp_25_ptr2globl_29, temp_24_ptr2globl_29 
              #                    occupy a1 with temp_25_ptr2globl_29
              #                    occupy a0 with temp_24_ptr2globl_29
              #                    load from temp_24_ptr2globl_29 in mem


    lw      a0,44(sp)
              #                    store to flag_22 in mem offset legal
    sw      a2,120(sp)
              #                    release a2 with flag_22
              #                    occupy a2 with temp_26_arithop_29
    div     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_27_ptr2globl_29:i32 
              #                          temp_27_ptr2globl_29 = load *d_0:ptr->i32 
              #                    store to temp_24_ptr2globl_29 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_24_ptr2globl_29
              #                    occupy a0 with *d_0
              #                       load label d as ptr to reg
    la      a0, d
              #                    occupy reg a0 with *d_0
              #                    store to temp_25_ptr2globl_29 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with temp_25_ptr2globl_29
              #                    occupy a1 with temp_27_ptr2globl_29
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_28_arithop_29:i32 
              #                          temp_28_arithop_29 = Sub i32 temp_27_ptr2globl_29, temp_26_arithop_29 
              #                    occupy a1 with temp_27_ptr2globl_29
              #                    occupy a2 with temp_26_arithop_29
              #                    occupy a0 with temp_28_arithop_29
              #                    regtab:    a0:Occupied { symidx: temp_28_arithop_29, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_27_ptr2globl_29, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_26_arithop_29, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_5_ptr2globl_29, tracked: true } |     a4:Freed { symidx: temp_16_arithop_29, tracked: true } |     a5:Freed { symidx: temp_6_ptr2globl_29, tracked: true } |     a6:Freed { symidx: temp_7_arithop_29, tracked: true } |     a7:Freed { symidx: temp_20_arithop_29, tracked: true } |     s10:Freed { symidx: temp_14_ptr2globl_29, tracked: true } |     s11:Freed { symidx: temp_21_arithop_29, tracked: true } |     s1:Freed { symidx: temp_8_ptr2globl_29, tracked: true } |     s2:Freed { symidx: temp_17_ptr2globl_29, tracked: true } |     s3:Freed { symidx: temp_9_ptr2globl_29, tracked: true } |     s4:Freed { symidx: temp_18_ptr2globl_29, tracked: true } |     s5:Freed { symidx: temp_10_ptr2globl_29, tracked: true } |     s6:Freed { symidx: temp_11_arithop_29, tracked: true } |     s7:Freed { symidx: temp_12_arithop_29, tracked: true } |     s8:Freed { symidx: temp_13_cmp_29, tracked: true } |     s9:Freed { symidx: temp_19_ptr2globl_29, tracked: true } | 


    sub     a0,a1,a2
              #                    free a1
              #                    free a2
              #                    free a0
              #                          new_var temp_29_ptr2globl_29:i32 
              #                          temp_29_ptr2globl_29 = load *c_0:ptr->i32 
              #                    store to temp_28_arithop_29 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_28_arithop_29
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
              #                    store to temp_27_ptr2globl_29 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with temp_27_ptr2globl_29
              #                    occupy a1 with temp_29_ptr2globl_29
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_30_ptr2globl_29:i32 
              #                          temp_30_ptr2globl_29 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    store to temp_29_ptr2globl_29 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with temp_29_ptr2globl_29
              #                    occupy a1 with temp_30_ptr2globl_29
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_31_arithop_29:i32 
              #                          temp_31_arithop_29 = Mul i32 temp_30_ptr2globl_29, temp_29_ptr2globl_29 
              #                    occupy a1 with temp_30_ptr2globl_29
              #                    occupy a0 with temp_29_ptr2globl_29
              #                    load from temp_29_ptr2globl_29 in mem


    lw      a0,24(sp)
              #                    store to temp_26_arithop_29 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_26_arithop_29
              #                    occupy a2 with temp_31_arithop_29
    mul     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_32_ptr2globl_29:i32 
              #                          temp_32_ptr2globl_29 = load *a_0:ptr->i32 
              #                    store to temp_29_ptr2globl_29 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_29_ptr2globl_29
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    store to temp_30_ptr2globl_29 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_30_ptr2globl_29
              #                    occupy a1 with temp_32_ptr2globl_29
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_33_arithop_29:i32 
              #                          temp_33_arithop_29 = Sub i32 temp_32_ptr2globl_29, temp_31_arithop_29 
              #                    occupy a1 with temp_32_ptr2globl_29
              #                    occupy a2 with temp_31_arithop_29
              #                    occupy a0 with temp_33_arithop_29
              #                    regtab:    a0:Occupied { symidx: temp_33_arithop_29, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_32_ptr2globl_29, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_31_arithop_29, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_5_ptr2globl_29, tracked: true } |     a4:Freed { symidx: temp_16_arithop_29, tracked: true } |     a5:Freed { symidx: temp_6_ptr2globl_29, tracked: true } |     a6:Freed { symidx: temp_7_arithop_29, tracked: true } |     a7:Freed { symidx: temp_20_arithop_29, tracked: true } |     s10:Freed { symidx: temp_14_ptr2globl_29, tracked: true } |     s11:Freed { symidx: temp_21_arithop_29, tracked: true } |     s1:Freed { symidx: temp_8_ptr2globl_29, tracked: true } |     s2:Freed { symidx: temp_17_ptr2globl_29, tracked: true } |     s3:Freed { symidx: temp_9_ptr2globl_29, tracked: true } |     s4:Freed { symidx: temp_18_ptr2globl_29, tracked: true } |     s5:Freed { symidx: temp_10_ptr2globl_29, tracked: true } |     s6:Freed { symidx: temp_11_arithop_29, tracked: true } |     s7:Freed { symidx: temp_12_arithop_29, tracked: true } |     s8:Freed { symidx: temp_13_cmp_29, tracked: true } |     s9:Freed { symidx: temp_19_ptr2globl_29, tracked: true } | 


    sub     a0,a1,a2
              #                    free a1
              #                    free a2
              #                    free a0
              #                          new_var temp_34_cmp_29:i1 
              #                          temp_34_cmp_29 = icmp i32 Ne temp_33_arithop_29, temp_28_arithop_29 
              #                    occupy a0 with temp_33_arithop_29
              #                    store to temp_32_ptr2globl_29 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_32_ptr2globl_29
              #                    occupy a1 with temp_28_arithop_29
              #                    load from temp_28_arithop_29 in mem


    lw      a1,28(sp)
              #                    store to temp_31_arithop_29 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_31_arithop_29
              #                    occupy a2 with temp_34_cmp_29
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_35_logic_29:i1 
              #                          temp_35_logic_29 = Or i1 temp_34_cmp_29, temp_23_logic_29 
              #                    occupy a2 with temp_34_cmp_29
              #                    store to temp_33_arithop_29 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_33_arithop_29
              #                    occupy a0 with temp_23_logic_29
              #                    load from temp_23_logic_29 in mem
    lb      a0,50(sp)
              #                    occupy a0 with temp_23_logic_29
              #                    free a2
              #                    free a0
              #                    free a0
              #                          br i1 temp_35_logic_29, label branch_true_30, label branch_false_30 
              #                    store to temp_23_logic_29 in mem offset legal
    sb      a0,50(sp)
              #                    release a0 with temp_23_logic_29
              #                    occupy a0 with temp_35_logic_29
              #                    load from temp_35_logic_29 in mem
    lb      a0,6(sp)
              #                    free a0
              #                    store to temp_14_ptr2globl_29 in mem offset legal
    sw      s10,80(sp)
              #                    release s10 with temp_14_ptr2globl_29
              #                    occupy a0 with temp_35_logic_29
    bnez    a0, .branch_true_30
              #                    free a0
    j       .branch_false_30
              #                    regtab     a0:Freed { symidx: temp_35_logic_29, tracked: true } |     a1:Freed { symidx: temp_28_arithop_29, tracked: true } |     a2:Freed { symidx: temp_34_cmp_29, tracked: true } |     a3:Freed { symidx: temp_5_ptr2globl_29, tracked: true } |     a4:Freed { symidx: temp_16_arithop_29, tracked: true } |     a5:Freed { symidx: temp_6_ptr2globl_29, tracked: true } |     a6:Freed { symidx: temp_7_arithop_29, tracked: true } |     a7:Freed { symidx: temp_20_arithop_29, tracked: true } |     s11:Freed { symidx: temp_21_arithop_29, tracked: true } |     s1:Freed { symidx: temp_8_ptr2globl_29, tracked: true } |     s2:Freed { symidx: temp_17_ptr2globl_29, tracked: true } |     s3:Freed { symidx: temp_9_ptr2globl_29, tracked: true } |     s4:Freed { symidx: temp_18_ptr2globl_29, tracked: true } |     s5:Freed { symidx: temp_10_ptr2globl_29, tracked: true } |     s6:Freed { symidx: temp_11_arithop_29, tracked: true } |     s7:Freed { symidx: temp_12_arithop_29, tracked: true } |     s8:Freed { symidx: temp_13_cmp_29, tracked: true } |     s9:Freed { symidx: temp_19_ptr2globl_29, tracked: true } | 
              #                          label branch_true_30: 
.branch_true_30:
              #                          flag_22 = i32 1_0 
              #                    occupy s10 with flag_22
    li      s10, 1
              #                    free s10
              #                          jump label: branch_false_30 
              #                    store to flag_22 in mem offset legal
    sw      s10,120(sp)
              #                    release s10 with flag_22
    j       .branch_false_30
              #                    regtab     a0:Freed { symidx: temp_35_logic_29, tracked: true } |     a1:Freed { symidx: temp_28_arithop_29, tracked: true } |     a2:Freed { symidx: temp_34_cmp_29, tracked: true } |     a3:Freed { symidx: temp_5_ptr2globl_29, tracked: true } |     a4:Freed { symidx: temp_16_arithop_29, tracked: true } |     a5:Freed { symidx: temp_6_ptr2globl_29, tracked: true } |     a6:Freed { symidx: temp_7_arithop_29, tracked: true } |     a7:Freed { symidx: temp_20_arithop_29, tracked: true } |     s11:Freed { symidx: temp_21_arithop_29, tracked: true } |     s1:Freed { symidx: temp_8_ptr2globl_29, tracked: true } |     s2:Freed { symidx: temp_17_ptr2globl_29, tracked: true } |     s3:Freed { symidx: temp_9_ptr2globl_29, tracked: true } |     s4:Freed { symidx: temp_18_ptr2globl_29, tracked: true } |     s5:Freed { symidx: temp_10_ptr2globl_29, tracked: true } |     s6:Freed { symidx: temp_11_arithop_29, tracked: true } |     s7:Freed { symidx: temp_12_arithop_29, tracked: true } |     s8:Freed { symidx: temp_13_cmp_29, tracked: true } |     s9:Freed { symidx: temp_19_ptr2globl_29, tracked: true } | 
              #                          label branch_false_30: 
.branch_false_30:
              #                    regtab     a0:Freed { symidx: temp_35_logic_29, tracked: true } |     a1:Freed { symidx: temp_28_arithop_29, tracked: true } |     a2:Freed { symidx: temp_34_cmp_29, tracked: true } |     a3:Freed { symidx: temp_5_ptr2globl_29, tracked: true } |     a4:Freed { symidx: temp_16_arithop_29, tracked: true } |     a5:Freed { symidx: temp_6_ptr2globl_29, tracked: true } |     a6:Freed { symidx: temp_7_arithop_29, tracked: true } |     a7:Freed { symidx: temp_20_arithop_29, tracked: true } |     s11:Freed { symidx: temp_21_arithop_29, tracked: true } |     s1:Freed { symidx: temp_8_ptr2globl_29, tracked: true } |     s2:Freed { symidx: temp_17_ptr2globl_29, tracked: true } |     s3:Freed { symidx: temp_9_ptr2globl_29, tracked: true } |     s4:Freed { symidx: temp_18_ptr2globl_29, tracked: true } |     s5:Freed { symidx: temp_10_ptr2globl_29, tracked: true } |     s6:Freed { symidx: temp_11_arithop_29, tracked: true } |     s7:Freed { symidx: temp_12_arithop_29, tracked: true } |     s8:Freed { symidx: temp_13_cmp_29, tracked: true } |     s9:Freed { symidx: temp_19_ptr2globl_29, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          ret flag_22 
              #                    load from ra_main_0 in mem
    ld      ra,152(sp)
              #                    load from s0_main_0 in mem
    ld      s0,144(sp)
              #                    store to temp_35_logic_29 in mem offset legal
    sb      a0,6(sp)
              #                    release a0 with temp_35_logic_29
              #                    occupy a0 with flag_22
              #                    load from flag_22 in mem


    lw      a0,120(sp)
    addi    sp,sp,160
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_28_arithop_29, tracked: true } |     a2:Freed { symidx: temp_34_cmp_29, tracked: true } |     a3:Freed { symidx: temp_5_ptr2globl_29, tracked: true } |     a4:Freed { symidx: temp_16_arithop_29, tracked: true } |     a5:Freed { symidx: temp_6_ptr2globl_29, tracked: true } |     a6:Freed { symidx: temp_7_arithop_29, tracked: true } |     a7:Freed { symidx: temp_20_arithop_29, tracked: true } |     s11:Freed { symidx: temp_21_arithop_29, tracked: true } |     s1:Freed { symidx: temp_8_ptr2globl_29, tracked: true } |     s2:Freed { symidx: temp_17_ptr2globl_29, tracked: true } |     s3:Freed { symidx: temp_9_ptr2globl_29, tracked: true } |     s4:Freed { symidx: temp_18_ptr2globl_29, tracked: true } |     s5:Freed { symidx: temp_10_ptr2globl_29, tracked: true } |     s6:Freed { symidx: temp_11_arithop_29, tracked: true } |     s7:Freed { symidx: temp_12_arithop_29, tracked: true } |     s8:Freed { symidx: temp_13_cmp_29, tracked: true } |     s9:Freed { symidx: temp_19_ptr2globl_29, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl e
              #                          global i32 e_0 
    .type e,@object
e:
    .word 0
    .align 4
    .globl d
              #                          global i32 d_0 
    .type d,@object
d:
    .word 0
    .align 4
    .globl c
              #                          global i32 c_0 
    .type c,@object
c:
    .word 0
    .align 4
    .globl b
              #                          global i32 b_0 
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
              #                          global i32 a_0 
    .type a,@object
a:
    .word 0
