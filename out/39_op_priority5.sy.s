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
              #                    mem layout:|ra_main:8 at 136|s0_main:8 at 128|flag:4 at 124|temp_0_ptr2globl:4 at 120|temp_1_ptr2globl:4 at 116|temp_2_arithop:4 at 112|temp_3_ptr2globl:4 at 108|temp_4_arithop:4 at 104|temp_5_ptr2globl:4 at 100|temp_6_ptr2globl:4 at 96|temp_7_arithop:4 at 92|temp_8_ptr2globl:4 at 88|temp_9_arithop:4 at 84|temp_10_cmp:1 at 83|none:3 at 80|temp_11_ptr2globl:4 at 76|temp_12_ptr2globl:4 at 72|temp_13_arithop:4 at 68|temp_14_ptr2globl:4 at 64|temp_15_ptr2globl:4 at 60|temp_16_ptr2globl:4 at 56|temp_17_arithop:4 at 52|temp_18_ptr2globl:4 at 48|temp_19_arithop:4 at 44|temp_20_arithop:4 at 40|temp_21_cmp:1 at 39|none:3 at 36|temp_22_ptr2globl:4 at 32|temp_23_ptr2globl:4 at 28|temp_24_arithop:4 at 24|temp_25_ptr2globl:4 at 20|temp_26_ptr2globl:4 at 16|temp_27_ptr2globl:4 at 12|temp_28_arithop:4 at 8|temp_29_arithop:4 at 4|temp_30_cmp:1 at 3|temp_31_logic:1 at 2|temp_32_logic:1 at 1|none:1 at 0
    addi    sp,sp,-144
              #                    store to ra_main_0 in mem offset legal
    sd      ra,136(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,128(sp)
    addi    s0,sp,144
              #                          alloc i32 flag_22 
              #                          alloc i32 temp_0_ptr2globl_24 
              #                          alloc i32 temp_1_ptr2globl_24 
              #                          alloc i32 temp_2_arithop_24 
              #                          alloc i32 temp_3_ptr2globl_24 
              #                          alloc i32 temp_4_arithop_24 
              #                          alloc i32 temp_5_ptr2globl_24 
              #                          alloc i32 temp_6_ptr2globl_24 
              #                          alloc i32 temp_7_arithop_24 
              #                          alloc i32 temp_8_ptr2globl_24 
              #                          alloc i32 temp_9_arithop_24 
              #                          alloc i1 temp_10_cmp_24 
              #                          alloc i32 temp_11_ptr2globl_24 
              #                          alloc i32 temp_12_ptr2globl_24 
              #                          alloc i32 temp_13_arithop_24 
              #                          alloc i32 temp_14_ptr2globl_24 
              #                          alloc i32 temp_15_ptr2globl_24 
              #                          alloc i32 temp_16_ptr2globl_24 
              #                          alloc i32 temp_17_arithop_24 
              #                          alloc i32 temp_18_ptr2globl_24 
              #                          alloc i32 temp_19_arithop_24 
              #                          alloc i32 temp_20_arithop_24 
              #                          alloc i1 temp_21_cmp_24 
              #                          alloc i32 temp_22_ptr2globl_24 
              #                          alloc i32 temp_23_ptr2globl_24 
              #                          alloc i32 temp_24_arithop_24 
              #                          alloc i32 temp_25_ptr2globl_24 
              #                          alloc i32 temp_26_ptr2globl_24 
              #                          alloc i32 temp_27_ptr2globl_24 
              #                          alloc i32 temp_28_arithop_24 
              #                          alloc i32 temp_29_arithop_24 
              #                          alloc i1 temp_30_cmp_24 
              #                          alloc i1 temp_31_logic_24 
              #                          alloc i1 temp_32_logic_24 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          flag_22 = i32 0_0 
              #                    occupy a0 with flag_22
    li      a0, 0
              #                    free a0
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: flag_22, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_0_ptr2globl_24:i32 
              #                          temp_0_ptr2globl_24 = load *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a2 with temp_0_ptr2globl_24
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_1_ptr2globl_24:i32 
              #                          temp_1_ptr2globl_24 = load *a_0:ptr->i32 
              #                    occupy a3 with *a_0
              #                       load label a as ptr to reg
    la      a3, a
              #                    occupy reg a3 with *a_0
              #                    occupy a4 with temp_1_ptr2globl_24
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          new_var temp_2_arithop_24:i32 
              #                          temp_2_arithop_24 = Div i32 temp_1_ptr2globl_24, temp_0_ptr2globl_24 
              #                    occupy a4 with temp_1_ptr2globl_24
              #                    occupy a2 with temp_0_ptr2globl_24
              #                    occupy a5 with temp_2_arithop_24
    div     a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                          new_var temp_3_ptr2globl_24:i32 
              #                          temp_3_ptr2globl_24 = load *d_0:ptr->i32 
              #                    occupy a6 with *d_0
              #                       load label d as ptr to reg
    la      a6, d
              #                    occupy reg a6 with *d_0
              #                    occupy a7 with temp_3_ptr2globl_24
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_4_arithop_24:i32 
              #                          temp_4_arithop_24 = Sub i32 temp_3_ptr2globl_24, temp_2_arithop_24 
              #                    occupy a7 with temp_3_ptr2globl_24
              #                    occupy a5 with temp_2_arithop_24
              #                    occupy s1 with temp_4_arithop_24
              #                    regtab:    a0:Freed { symidx: flag_22, tracked: true } |     a1:Freed { symidx: *c_0, tracked: false } |     a2:Freed { symidx: temp_0_ptr2globl_24, tracked: true } |     a3:Freed { symidx: *a_0, tracked: false } |     a4:Freed { symidx: temp_1_ptr2globl_24, tracked: true } |     a5:Occupied { symidx: temp_2_arithop_24, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: *d_0, tracked: false } |     a7:Occupied { symidx: temp_3_ptr2globl_24, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: temp_4_arithop_24, tracked: true, occupy_count: 1 } | 


    sub     s1,a7,a5
              #                    free a7
              #                    free a5
              #                    free s1
              #                          new_var temp_5_ptr2globl_24:i32 
              #                          temp_5_ptr2globl_24 = load *c_0:ptr->i32 
              #                    occupy s2 with *c_0
              #                       load label c as ptr to reg
    la      s2, c
              #                    occupy reg s2 with *c_0
              #                    occupy s3 with temp_5_ptr2globl_24
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_6_ptr2globl_24:i32 
              #                          temp_6_ptr2globl_24 = load *b_0:ptr->i32 
              #                    occupy s4 with *b_0
              #                       load label b as ptr to reg
    la      s4, b
              #                    occupy reg s4 with *b_0
              #                    occupy s5 with temp_6_ptr2globl_24
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_7_arithop_24:i32 
              #                          temp_7_arithop_24 = Mul i32 temp_6_ptr2globl_24, temp_5_ptr2globl_24 
              #                    occupy s5 with temp_6_ptr2globl_24
              #                    occupy s3 with temp_5_ptr2globl_24
              #                    occupy s6 with temp_7_arithop_24
    mul     s6,s5,s3
              #                    free s5
              #                    free s3
              #                    free s6
              #                          new_var temp_8_ptr2globl_24:i32 
              #                          temp_8_ptr2globl_24 = load *a_0:ptr->i32 
              #                    occupy s7 with *a_0
              #                       load label a as ptr to reg
    la      s7, a
              #                    occupy reg s7 with *a_0
              #                    occupy s8 with temp_8_ptr2globl_24
    lw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                          new_var temp_9_arithop_24:i32 
              #                          temp_9_arithop_24 = Sub i32 temp_8_ptr2globl_24, temp_7_arithop_24 
              #                    occupy s8 with temp_8_ptr2globl_24
              #                    occupy s6 with temp_7_arithop_24
              #                    occupy s9 with temp_9_arithop_24
              #                    regtab:    a0:Freed { symidx: flag_22, tracked: true } |     a1:Freed { symidx: *c_0, tracked: false } |     a2:Freed { symidx: temp_0_ptr2globl_24, tracked: true } |     a3:Freed { symidx: *a_0, tracked: false } |     a4:Freed { symidx: temp_1_ptr2globl_24, tracked: true } |     a5:Freed { symidx: temp_2_arithop_24, tracked: true } |     a6:Freed { symidx: *d_0, tracked: false } |     a7:Freed { symidx: temp_3_ptr2globl_24, tracked: true } |     s1:Freed { symidx: temp_4_arithop_24, tracked: true } |     s2:Freed { symidx: *c_0, tracked: false } |     s3:Freed { symidx: temp_5_ptr2globl_24, tracked: true } |     s4:Freed { symidx: *b_0, tracked: false } |     s5:Freed { symidx: temp_6_ptr2globl_24, tracked: true } |     s6:Occupied { symidx: temp_7_arithop_24, tracked: true, occupy_count: 1 } |     s7:Freed { symidx: *a_0, tracked: false } |     s8:Occupied { symidx: temp_8_ptr2globl_24, tracked: true, occupy_count: 1 } |     s9:Occupied { symidx: temp_9_arithop_24, tracked: true, occupy_count: 1 } | 


    sub     s9,s8,s6
              #                    free s8
              #                    free s6
              #                    free s9
              #                          new_var temp_10_cmp_24:i1 
              #                          temp_10_cmp_24 = icmp i32 Eq temp_9_arithop_24, temp_4_arithop_24 
              #                    occupy s9 with temp_9_arithop_24
              #                    occupy s1 with temp_4_arithop_24
              #                    occupy s10 with temp_10_cmp_24
    xor     s10,s9,s1
    seqz    s10, s10
              #                    free s9
              #                    free s1
              #                    free s10
              #                          new_var temp_11_ptr2globl_24:i32 
              #                          temp_11_ptr2globl_24 = load *e_0:ptr->i32 
              #                    occupy s11 with *e_0
              #                       load label e as ptr to reg
    la      s11, e
              #                    occupy reg s11 with *e_0
              #                    occupy a1 with temp_11_ptr2globl_24
    lw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          new_var temp_12_ptr2globl_24:i32 
              #                          temp_12_ptr2globl_24 = load *d_0:ptr->i32 
              #                    occupy a3 with *d_0
              #                       load label d as ptr to reg
    la      a3, d
              #                    occupy reg a3 with *d_0
              #                    occupy a6 with temp_12_ptr2globl_24
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                          new_var temp_13_arithop_24:i32 
              #                          temp_13_arithop_24 = Add i32 temp_12_ptr2globl_24, temp_11_ptr2globl_24 
              #                    occupy a6 with temp_12_ptr2globl_24
              #                    occupy a1 with temp_11_ptr2globl_24
              #                    occupy a3 with temp_13_arithop_24
    add     a3,a6,a1
              #                    free a6
              #                    free a1
              #                    free a3
              #                          new_var temp_14_ptr2globl_24:i32 
              #                          temp_14_ptr2globl_24 = load *c_0:ptr->i32 
              #                    occupy s2 with *c_0
              #                       load label c as ptr to reg
    la      s2, c
              #                    occupy reg s2 with *c_0
              #                    occupy s4 with temp_14_ptr2globl_24
    lw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                          new_var temp_15_ptr2globl_24:i32 
              #                          temp_15_ptr2globl_24 = load *b_0:ptr->i32 
              #                    occupy s2 with *b_0
              #                       load label b as ptr to reg
    la      s2, b
              #                    occupy reg s2 with *b_0
              #                    occupy s7 with temp_15_ptr2globl_24
    lw      s7,0(s2)
              #                    free s7
              #                    free s2
              #                          new_var temp_16_ptr2globl_24:i32 
              #                          temp_16_ptr2globl_24 = load *a_0:ptr->i32 
              #                    occupy s2 with *a_0
              #                       load label a as ptr to reg
    la      s2, a
              #                    occupy reg s2 with *a_0
              #                    occupy s11 with temp_16_ptr2globl_24
    lw      s11,0(s2)
              #                    free s11
              #                    free s2
              #                          new_var temp_17_arithop_24:i32 
              #                          temp_17_arithop_24 = Add i32 temp_16_ptr2globl_24, temp_15_ptr2globl_24 
              #                    occupy s11 with temp_16_ptr2globl_24
              #                    occupy s7 with temp_15_ptr2globl_24
              #                    occupy s2 with temp_17_arithop_24
    add     s2,s11,s7
              #                    free s11
              #                    free s7
              #                    free s2
              #                          new_var temp_18_ptr2globl_24:i32 
              #                          temp_18_ptr2globl_24 = load *a_0:ptr->i32 
              #                    store to flag_22 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with flag_22
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    store to temp_11_ptr2globl_24 in mem offset legal
    sw      a1,76(sp)
              #                    release a1 with temp_11_ptr2globl_24
              #                    occupy a1 with temp_18_ptr2globl_24
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_19_arithop_24:i32 
              #                          temp_19_arithop_24 = Mul i32 temp_18_ptr2globl_24, temp_17_arithop_24 
              #                    occupy a1 with temp_18_ptr2globl_24
              #                    occupy s2 with temp_17_arithop_24
              #                    occupy a0 with temp_19_arithop_24
    mul     a0,a1,s2
              #                    free a1
              #                    free s2
              #                    free a0
              #                          new_var temp_20_arithop_24:i32 
              #                          temp_20_arithop_24 = Add i32 temp_19_arithop_24, temp_14_ptr2globl_24 
              #                    occupy a0 with temp_19_arithop_24
              #                    occupy s4 with temp_14_ptr2globl_24
              #                    store to temp_18_ptr2globl_24 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with temp_18_ptr2globl_24
              #                    occupy a1 with temp_20_arithop_24
    add     a1,a0,s4
              #                    free a0
              #                    free s4
              #                    free a1
              #                          new_var temp_21_cmp_24:i1 
              #                          temp_21_cmp_24 = icmp i32 Sle temp_20_arithop_24, temp_13_arithop_24 
              #                    occupy a1 with temp_20_arithop_24
              #                    occupy a3 with temp_13_arithop_24
              #                    store to temp_19_arithop_24 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_19_arithop_24
              #                    occupy a0 with temp_21_cmp_24
    slt     a0,a3,a1
    xori    a0,a0,1
              #                    free a1
              #                    free a3
              #                    free a0
              #                          new_var temp_22_ptr2globl_24:i32 
              #                          temp_22_ptr2globl_24 = load *d_0:ptr->i32 
              #                    store to temp_21_cmp_24 in mem offset legal
    sb      a0,39(sp)
              #                    release a0 with temp_21_cmp_24
              #                    occupy a0 with *d_0
              #                       load label d as ptr to reg
    la      a0, d
              #                    occupy reg a0 with *d_0
              #                    store to temp_20_arithop_24 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with temp_20_arithop_24
              #                    occupy a1 with temp_22_ptr2globl_24
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_23_ptr2globl_24:i32 
              #                          temp_23_ptr2globl_24 = load *e_0:ptr->i32 
              #                    occupy a0 with *e_0
              #                       load label e as ptr to reg
    la      a0, e
              #                    occupy reg a0 with *e_0
              #                    store to temp_22_ptr2globl_24 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with temp_22_ptr2globl_24
              #                    occupy a1 with temp_23_ptr2globl_24
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_24_arithop_24:i32 
              #                          temp_24_arithop_24 = Add i32 temp_23_ptr2globl_24, temp_22_ptr2globl_24 
              #                    occupy a1 with temp_23_ptr2globl_24
              #                    occupy a0 with temp_22_ptr2globl_24
              #                    load from temp_22_ptr2globl_24 in mem


    lw      a0,32(sp)
              #                    store to temp_0_ptr2globl_24 in mem offset legal
    sw      a2,120(sp)
              #                    release a2 with temp_0_ptr2globl_24
              #                    occupy a2 with temp_24_arithop_24
    add     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_25_ptr2globl_24:i32 
              #                          temp_25_ptr2globl_24 = load *c_0:ptr->i32 
              #                    store to temp_22_ptr2globl_24 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_22_ptr2globl_24
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
              #                    store to temp_23_ptr2globl_24 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with temp_23_ptr2globl_24
              #                    occupy a1 with temp_25_ptr2globl_24
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_26_ptr2globl_24:i32 
              #                          temp_26_ptr2globl_24 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    store to temp_25_ptr2globl_24 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_25_ptr2globl_24
              #                    occupy a1 with temp_26_ptr2globl_24
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_27_ptr2globl_24:i32 
              #                          temp_27_ptr2globl_24 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    store to temp_26_ptr2globl_24 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_26_ptr2globl_24
              #                    occupy a1 with temp_27_ptr2globl_24
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_28_arithop_24:i32 
              #                          temp_28_arithop_24 = Mul i32 temp_27_ptr2globl_24, temp_26_ptr2globl_24 
              #                    occupy a1 with temp_27_ptr2globl_24
              #                    occupy a0 with temp_26_ptr2globl_24
              #                    load from temp_26_ptr2globl_24 in mem


    lw      a0,16(sp)
              #                    store to temp_24_arithop_24 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with temp_24_arithop_24
              #                    occupy a2 with temp_28_arithop_24
    mul     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_29_arithop_24:i32 
              #                          temp_29_arithop_24 = Div i32 temp_28_arithop_24, temp_25_ptr2globl_24 
              #                    occupy a2 with temp_28_arithop_24
              #                    store to temp_26_ptr2globl_24 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_26_ptr2globl_24
              #                    occupy a0 with temp_25_ptr2globl_24
              #                    load from temp_25_ptr2globl_24 in mem


    lw      a0,20(sp)
              #                    store to temp_27_ptr2globl_24 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_27_ptr2globl_24
              #                    occupy a1 with temp_29_arithop_24
    div     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_30_cmp_24:i1 
              #                          temp_30_cmp_24 = icmp i32 Eq temp_29_arithop_24, temp_24_arithop_24 
              #                    occupy a1 with temp_29_arithop_24
              #                    store to temp_25_ptr2globl_24 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_25_ptr2globl_24
              #                    occupy a0 with temp_24_arithop_24
              #                    load from temp_24_arithop_24 in mem


    lw      a0,24(sp)
              #                    store to temp_28_arithop_24 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_28_arithop_24
              #                    occupy a2 with temp_30_cmp_24
    xor     a2,a1,a0
    seqz    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_31_logic_24:i1 
              #                          temp_31_logic_24 = And i1 temp_30_cmp_24, temp_21_cmp_24 
              #                    occupy a2 with temp_30_cmp_24
              #                    store to temp_24_arithop_24 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_24_arithop_24
              #                    occupy a0 with temp_21_cmp_24
              #                    load from temp_21_cmp_24 in mem
    lb      a0,39(sp)
              #                    store to temp_29_arithop_24 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_29_arithop_24
              #                    occupy a1 with temp_31_logic_24
    and     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_32_logic_24:i1 
              #                          temp_32_logic_24 = Or i1 temp_31_logic_24, temp_10_cmp_24 
              #                    occupy a1 with temp_31_logic_24
              #                    occupy s10 with temp_10_cmp_24
              #                    occupy s10 with temp_10_cmp_24
              #                    free a1
              #                    free s10
              #                    free s10
              #                          br i1 temp_32_logic_24, label branch_true_25, label branch_false_25 
              #                    store to temp_21_cmp_24 in mem offset legal
    sb      a0,39(sp)
              #                    release a0 with temp_21_cmp_24
              #                    occupy a0 with temp_32_logic_24
              #                    load from temp_32_logic_24 in mem
    lb      a0,1(sp)
              #                    free a0
              #                    store to temp_17_arithop_24 in mem offset legal
    sw      s2,52(sp)
              #                    release s2 with temp_17_arithop_24
              #                    occupy a0 with temp_32_logic_24
    bnez    a0, .branch_true_25
              #                    free a0
    j       .branch_false_25
              #                    regtab     a0:Freed { symidx: temp_32_logic_24, tracked: true } |     a1:Freed { symidx: temp_31_logic_24, tracked: true } |     a2:Freed { symidx: temp_30_cmp_24, tracked: true } |     a3:Freed { symidx: temp_13_arithop_24, tracked: true } |     a4:Freed { symidx: temp_1_ptr2globl_24, tracked: true } |     a5:Freed { symidx: temp_2_arithop_24, tracked: true } |     a6:Freed { symidx: temp_12_ptr2globl_24, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_24, tracked: true } |     s10:Freed { symidx: temp_10_cmp_24, tracked: true } |     s11:Freed { symidx: temp_16_ptr2globl_24, tracked: true } |     s1:Freed { symidx: temp_4_arithop_24, tracked: true } |     s3:Freed { symidx: temp_5_ptr2globl_24, tracked: true } |     s4:Freed { symidx: temp_14_ptr2globl_24, tracked: true } |     s5:Freed { symidx: temp_6_ptr2globl_24, tracked: true } |     s6:Freed { symidx: temp_7_arithop_24, tracked: true } |     s7:Freed { symidx: temp_15_ptr2globl_24, tracked: true } |     s8:Freed { symidx: temp_8_ptr2globl_24, tracked: true } |     s9:Freed { symidx: temp_9_arithop_24, tracked: true } | 
              #                          label branch_true_25: 
.branch_true_25:
              #                          flag_22 = i32 1_0 
              #                    occupy s2 with flag_22
    li      s2, 1
              #                    free s2
              #                          jump label: branch_false_25 
              #                    store to flag_22 in mem offset legal
    sw      s2,124(sp)
              #                    release s2 with flag_22
    j       .branch_false_25
              #                    regtab     a0:Freed { symidx: temp_32_logic_24, tracked: true } |     a1:Freed { symidx: temp_31_logic_24, tracked: true } |     a2:Freed { symidx: temp_30_cmp_24, tracked: true } |     a3:Freed { symidx: temp_13_arithop_24, tracked: true } |     a4:Freed { symidx: temp_1_ptr2globl_24, tracked: true } |     a5:Freed { symidx: temp_2_arithop_24, tracked: true } |     a6:Freed { symidx: temp_12_ptr2globl_24, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_24, tracked: true } |     s10:Freed { symidx: temp_10_cmp_24, tracked: true } |     s11:Freed { symidx: temp_16_ptr2globl_24, tracked: true } |     s1:Freed { symidx: temp_4_arithop_24, tracked: true } |     s3:Freed { symidx: temp_5_ptr2globl_24, tracked: true } |     s4:Freed { symidx: temp_14_ptr2globl_24, tracked: true } |     s5:Freed { symidx: temp_6_ptr2globl_24, tracked: true } |     s6:Freed { symidx: temp_7_arithop_24, tracked: true } |     s7:Freed { symidx: temp_15_ptr2globl_24, tracked: true } |     s8:Freed { symidx: temp_8_ptr2globl_24, tracked: true } |     s9:Freed { symidx: temp_9_arithop_24, tracked: true } | 
              #                          label branch_false_25: 
.branch_false_25:
              #                    regtab     a0:Freed { symidx: temp_32_logic_24, tracked: true } |     a1:Freed { symidx: temp_31_logic_24, tracked: true } |     a2:Freed { symidx: temp_30_cmp_24, tracked: true } |     a3:Freed { symidx: temp_13_arithop_24, tracked: true } |     a4:Freed { symidx: temp_1_ptr2globl_24, tracked: true } |     a5:Freed { symidx: temp_2_arithop_24, tracked: true } |     a6:Freed { symidx: temp_12_ptr2globl_24, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_24, tracked: true } |     s10:Freed { symidx: temp_10_cmp_24, tracked: true } |     s11:Freed { symidx: temp_16_ptr2globl_24, tracked: true } |     s1:Freed { symidx: temp_4_arithop_24, tracked: true } |     s3:Freed { symidx: temp_5_ptr2globl_24, tracked: true } |     s4:Freed { symidx: temp_14_ptr2globl_24, tracked: true } |     s5:Freed { symidx: temp_6_ptr2globl_24, tracked: true } |     s6:Freed { symidx: temp_7_arithop_24, tracked: true } |     s7:Freed { symidx: temp_15_ptr2globl_24, tracked: true } |     s8:Freed { symidx: temp_8_ptr2globl_24, tracked: true } |     s9:Freed { symidx: temp_9_arithop_24, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                           Call void putint_0(flag_22) 
              #                    saved register dumping to mem
              #                    store to temp_4_arithop_24 in mem offset legal
    sw      s1,104(sp)
              #                    release s1 with temp_4_arithop_24
              #                    store to temp_5_ptr2globl_24 in mem offset legal
    sw      s3,100(sp)
              #                    release s3 with temp_5_ptr2globl_24
              #                    store to temp_14_ptr2globl_24 in mem offset legal
    sw      s4,64(sp)
              #                    release s4 with temp_14_ptr2globl_24
              #                    store to temp_6_ptr2globl_24 in mem offset legal
    sw      s5,96(sp)
              #                    release s5 with temp_6_ptr2globl_24
              #                    store to temp_7_arithop_24 in mem offset legal
    sw      s6,92(sp)
              #                    release s6 with temp_7_arithop_24
              #                    store to temp_15_ptr2globl_24 in mem offset legal
    sw      s7,60(sp)
              #                    release s7 with temp_15_ptr2globl_24
              #                    store to temp_8_ptr2globl_24 in mem offset legal
    sw      s8,88(sp)
              #                    release s8 with temp_8_ptr2globl_24
              #                    store to temp_9_arithop_24 in mem offset legal
    sw      s9,84(sp)
              #                    release s9 with temp_9_arithop_24
              #                    store to temp_10_cmp_24 in mem offset legal
    sb      s10,83(sp)
              #                    release s10 with temp_10_cmp_24
              #                    store to temp_16_ptr2globl_24 in mem offset legal
    sw      s11,56(sp)
              #                    release s11 with temp_16_ptr2globl_24
              #                    store to temp_32_logic_24 in mem offset legal
    sb      a0,1(sp)
              #                    release a0 with temp_32_logic_24
              #                    store to temp_31_logic_24 in mem offset legal
    sb      a1,2(sp)
              #                    release a1 with temp_31_logic_24
              #                    store to temp_30_cmp_24 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_30_cmp_24
              #                    store to temp_13_arithop_24 in mem offset legal
    sw      a3,68(sp)
              #                    release a3 with temp_13_arithop_24
              #                    store to temp_1_ptr2globl_24 in mem offset legal
    sw      a4,116(sp)
              #                    release a4 with temp_1_ptr2globl_24
              #                    store to temp_2_arithop_24 in mem offset legal
    sw      a5,112(sp)
              #                    release a5 with temp_2_arithop_24
              #                    store to temp_12_ptr2globl_24 in mem offset legal
    sw      a6,72(sp)
              #                    release a6 with temp_12_ptr2globl_24
              #                    store to temp_3_ptr2globl_24 in mem offset legal
    sw      a7,108(sp)
              #                    release a7 with temp_3_ptr2globl_24
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_flag_22_0
              #                    load from flag_22 in mem


    lw      a0,124(sp)
              #                    arg load ended


    call    putint
              #                          ret flag_22 
              #                    load from ra_main_0 in mem
    ld      ra,136(sp)
              #                    load from s0_main_0 in mem
    ld      s0,128(sp)
              #                    occupy a0 with flag_22
              #                    load from flag_22 in mem


    lw      a0,124(sp)
    addi    sp,sp,144
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl e
              #                          global i32 e_0 
    .type e,@object
e:
    .word 4
    .align 4
    .globl d
              #                          global i32 d_0 
    .type d,@object
d:
    .word 2
    .align 4
    .globl c
              #                          global i32 c_0 
    .type c,@object
c:
    .word 1
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
    .word 1
