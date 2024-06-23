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
              #                          Define EightWhile_0 [] -> EightWhile_ret_0 
    .globl EightWhile
    .type EightWhile,@function
EightWhile:
              #                    mem layout:|ra_EightWhile:8 at 208|s0_EightWhile:8 at 200|a:4 at 196|b:4 at 192|c:4 at 188|d:4 at 184|temp_0_cmp:1 at 183|none:3 at 180|temp_1_arithop:4 at 176|temp_2_cmp:1 at 175|none:3 at 172|temp_3_arithop:4 at 168|temp_4_cmp:1 at 167|none:3 at 164|temp_5_arithop:4 at 160|temp_6_cmp:1 at 159|none:3 at 156|temp_7_arithop:4 at 152|temp_8_ptr2globl:4 at 148|temp_9_cmp:1 at 147|none:3 at 144|temp_10_ptr2globl:4 at 140|temp_11_arithop:4 at 136|temp_12_ptr2globl:4 at 132|temp_13_cmp:1 at 131|none:3 at 128|temp_14_ptr2globl:4 at 124|temp_15_arithop:4 at 120|temp_16_ptr2globl:4 at 116|temp_17_cmp:1 at 115|none:3 at 112|temp_18_ptr2globl:4 at 108|temp_19_arithop:4 at 104|temp_20_ptr2globl:4 at 100|temp_21_cmp:1 at 99|none:3 at 96|temp_22_ptr2globl:4 at 92|temp_23_arithop:4 at 88|temp_24_ptr2globl:4 at 84|temp_25_arithop:4 at 80|temp_26_ptr2globl:4 at 76|temp_27_arithop:4 at 72|temp_28_ptr2globl:4 at 68|temp_29_arithop:4 at 64|temp_30_ptr2globl:4 at 60|temp_31_arithop:4 at 56|temp_32_arithop:4 at 52|temp_33_arithop:4 at 48|temp_34_arithop:4 at 44|temp_35_ptr2globl:4 at 40|temp_36_ptr2globl:4 at 36|temp_37_ptr2globl:4 at 32|temp_38_arithop:4 at 28|temp_39_arithop:4 at 24|temp_40_arithop:4 at 20|temp_41_arithop:4 at 16|temp_42_arithop:4 at 12|temp_43_arithop:4 at 8|temp_44_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-216
              #                    store to ra_EightWhile_0 in mem offset legal
    sd      ra,208(sp)
              #                    store to s0_EightWhile_0 in mem offset legal
    sd      s0,200(sp)
    addi    s0,sp,216
              #                          alloc i32 a_21 
              #                          alloc i32 b_21 
              #                          alloc i32 c_21 
              #                          alloc i32 d_21 
              #                          alloc i1 temp_0_cmp_30 
              #                          alloc i32 temp_1_arithop_32 
              #                          alloc i1 temp_2_cmp_34 
              #                          alloc i32 temp_3_arithop_36 
              #                          alloc i1 temp_4_cmp_38 
              #                          alloc i32 temp_5_arithop_40 
              #                          alloc i1 temp_6_cmp_42 
              #                          alloc i32 temp_7_arithop_44 
              #                          alloc i32 temp_8_ptr2globl_46 
              #                          alloc i1 temp_9_cmp_46 
              #                          alloc i32 temp_10_ptr2globl_48 
              #                          alloc i32 temp_11_arithop_48 
              #                          alloc i32 temp_12_ptr2globl_50 
              #                          alloc i1 temp_13_cmp_50 
              #                          alloc i32 temp_14_ptr2globl_52 
              #                          alloc i32 temp_15_arithop_52 
              #                          alloc i32 temp_16_ptr2globl_54 
              #                          alloc i1 temp_17_cmp_54 
              #                          alloc i32 temp_18_ptr2globl_56 
              #                          alloc i32 temp_19_arithop_56 
              #                          alloc i32 temp_20_ptr2globl_58 
              #                          alloc i1 temp_21_cmp_58 
              #                          alloc i32 temp_22_ptr2globl_60 
              #                          alloc i32 temp_23_arithop_60 
              #                          alloc i32 temp_24_ptr2globl_56 
              #                          alloc i32 temp_25_arithop_56 
              #                          alloc i32 temp_26_ptr2globl_52 
              #                          alloc i32 temp_27_arithop_52 
              #                          alloc i32 temp_28_ptr2globl_48 
              #                          alloc i32 temp_29_arithop_48 
              #                          alloc i32 temp_30_ptr2globl_44 
              #                          alloc i32 temp_31_arithop_44 
              #                          alloc i32 temp_32_arithop_40 
              #                          alloc i32 temp_33_arithop_36 
              #                          alloc i32 temp_34_arithop_32 
              #                          alloc i32 temp_35_ptr2globl_21 
              #                          alloc i32 temp_36_ptr2globl_21 
              #                          alloc i32 temp_37_ptr2globl_21 
              #                          alloc i32 temp_38_arithop_21 
              #                          alloc i32 temp_39_arithop_21 
              #                          alloc i32 temp_40_arithop_21 
              #                          alloc i32 temp_41_arithop_21 
              #                          alloc i32 temp_42_arithop_21 
              #                          alloc i32 temp_43_arithop_21 
              #                          alloc i32 temp_44_arithop_21 
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          new_var a_21:i32 
              #                          a_21 = i32 5_0 
              #                    occupy a0 with a_21
    li      a0, 5
              #                    free a0
              #                          new_var b_21:i32 
              #                          new_var c_21:i32 
              #                          b_21 = i32 6_0 
              #                    occupy a1 with b_21
    li      a1, 6
              #                    free a1
              #                          c_21 = i32 7_0 
              #                    occupy a2 with c_21
    li      a2, 7
              #                    free a2
              #                          new_var d_21:i32 
              #                          d_21 = i32 10_0 
              #                    occupy a3 with d_21
    li      a3, 10
              #                    free a3
              #                          jump label: while.head_31 
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } | 
              #                          label while.head_31: 
.while.head_31:
              #                          new_var temp_0_cmp_30:i1 
              #                          temp_0_cmp_30 = icmp i32 Slt a_21, 20_0 
              #                    occupy a0 with a_21
              #                    occupy a4 with 20_0
    li      a4, 20
              #                    occupy a5 with temp_0_cmp_30
    slt     a5,a0,a4
              #                    free a0
              #                    free a4
              #                    free a5
              #                          br i1 temp_0_cmp_30, label while.body_31, label while.exit_31 
              #                    occupy a5 with temp_0_cmp_30
              #                    free a5
              #                    occupy a5 with temp_0_cmp_30
    bnez    a5, .while.body_31
              #                    free a5
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } | 
              #                          label while.body_31: 
.while.body_31:
              #                          new_var temp_1_arithop_32:i32 
              #                          temp_1_arithop_32 = Add i32 a_21, 3_0 
              #                    occupy a0 with a_21
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a6 with temp_1_arithop_32
    add     a6,a0,a4
              #                    free a0
              #                    free a4
              #                    free a6
              #                          a_21 = i32 temp_1_arithop_32 
              #                    occupy a6 with temp_1_arithop_32
              #                    occupy a0 with a_21
    mv      a0, a6
              #                    free a6
              #                    free a0
              #                          jump label: while.head_35 
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } | 
              #                          label while.head_35: 
.while.head_35:
              #                          new_var temp_2_cmp_34:i1 
              #                          temp_2_cmp_34 = icmp i32 Slt b_21, 10_0 
              #                    occupy a1 with b_21
              #                    occupy a4 with 10_0
    li      a4, 10
              #                    occupy a7 with temp_2_cmp_34
    slt     a7,a1,a4
              #                    free a1
              #                    free a4
              #                    free a7
              #                          br i1 temp_2_cmp_34, label while.body_35, label while.exit_35 
              #                    occupy a7 with temp_2_cmp_34
              #                    free a7
              #                    occupy a7 with temp_2_cmp_34
    bnez    a7, .while.body_35
              #                    free a7
    j       .while.exit_35
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } | 
              #                          label while.body_35: 
.while.body_35:
              #                          new_var temp_3_arithop_36:i32 
              #                          temp_3_arithop_36 = Add i32 b_21, 1_0 
              #                    occupy a1 with b_21
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s1 with temp_3_arithop_36
    add     s1,a1,a4
              #                    free a1
              #                    free a4
              #                    free s1
              #                          b_21 = i32 temp_3_arithop_36 
              #                    occupy s1 with temp_3_arithop_36
              #                    occupy a1 with b_21
    mv      a1, s1
              #                    free s1
              #                    free a1
              #                          jump label: while.head_39 
    j       .while.head_39
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } | 
              #                          label while.head_39: 
.while.head_39:
              #                          new_var temp_4_cmp_38:i1 
              #                          temp_4_cmp_38 = icmp i32 Eq c_21, 7_0 
              #                    occupy a2 with c_21
              #                    occupy a4 with 7_0
    li      a4, 7
              #                    occupy s2 with temp_4_cmp_38
    xor     s2,a2,a4
    seqz    s2, s2
              #                    free a2
              #                    free a4
              #                    free s2
              #                          br i1 temp_4_cmp_38, label while.body_39, label while.exit_39 
              #                    occupy s2 with temp_4_cmp_38
              #                    free s2
              #                    occupy s2 with temp_4_cmp_38
    bnez    s2, .while.body_39
              #                    free s2
    j       .while.exit_39
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } | 
              #                          label while.body_39: 
.while.body_39:
              #                          new_var temp_5_arithop_40:i32 
              #                          temp_5_arithop_40 = Sub i32 c_21, 1_0 
              #                    occupy a2 with c_21
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s3 with temp_5_arithop_40
              #                    regtab:    a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Occupied { symidx: c_21, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Occupied { symidx: temp_5_arithop_40, tracked: true, occupy_count: 1 } | 


    sub     s3,a2,a4
              #                    free a2
              #                    free a4
              #                    free s3
              #                          c_21 = i32 temp_5_arithop_40 
              #                    occupy s3 with temp_5_arithop_40
              #                    occupy a2 with c_21
    mv      a2, s3
              #                    free s3
              #                    free a2
              #                          jump label: while.head_43 
    j       .while.head_43
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } | 
              #                          label while.head_43: 
.while.head_43:
              #                          new_var temp_6_cmp_42:i1 
              #                          temp_6_cmp_42 = icmp i32 Slt d_21, 20_0 
              #                    occupy a3 with d_21
              #                    occupy a4 with 20_0
    li      a4, 20
              #                    occupy s4 with temp_6_cmp_42
    slt     s4,a3,a4
              #                    free a3
              #                    free a4
              #                    free s4
              #                          br i1 temp_6_cmp_42, label while.body_43, label while.exit_43 
              #                    occupy s4 with temp_6_cmp_42
              #                    free s4
              #                    occupy s4 with temp_6_cmp_42
    bnez    s4, .while.body_43
              #                    free s4
    j       .while.exit_43
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } | 
              #                          label while.body_43: 
.while.body_43:
              #                          new_var temp_7_arithop_44:i32 
              #                          temp_7_arithop_44 = Add i32 d_21, 3_0 
              #                    occupy a3 with d_21
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy s5 with temp_7_arithop_44
    add     s5,a3,a4
              #                    free a3
              #                    free a4
              #                    free s5
              #                          d_21 = i32 temp_7_arithop_44 
              #                    occupy s5 with temp_7_arithop_44
              #                    occupy a3 with d_21
    mv      a3, s5
              #                    free s5
              #                    free a3
              #                          jump label: while.head_47 
    j       .while.head_47
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } | 
              #                          label while.head_47: 
.while.head_47:
              #                          new_var temp_8_ptr2globl_46:i32 
              #                          temp_8_ptr2globl_46 = load *e_0:ptr->i32 
              #                    occupy a4 with *e_0
              #                       load label e as ptr to reg
    la      a4, e
              #                    occupy reg a4 with *e_0
              #                    occupy s6 with temp_8_ptr2globl_46
    lw      s6,0(a4)
              #                    free s6
              #                    free a4
              #                          new_var temp_9_cmp_46:i1 
              #                          temp_9_cmp_46 = icmp i32 Sgt temp_8_ptr2globl_46, 1_0 
              #                    occupy s6 with temp_8_ptr2globl_46
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with temp_9_cmp_46
    slt     s8,s7,s6
              #                    free s6
              #                    free s7
              #                    free s8
              #                          br i1 temp_9_cmp_46, label while.body_47, label while.exit_47 
              #                    occupy s8 with temp_9_cmp_46
              #                    free s8
              #                    occupy s8 with temp_9_cmp_46
    bnez    s8, .while.body_47
              #                    free s8
    j       .while.exit_47
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } | 
              #                          label while.body_47: 
.while.body_47:
              #                          new_var temp_10_ptr2globl_48:i32 
              #                          temp_10_ptr2globl_48 = load *e_0:ptr->i32 
              #                    occupy a4 with *e_0
              #                       load label e as ptr to reg
    la      a4, e
              #                    occupy reg a4 with *e_0
              #                    occupy s7 with temp_10_ptr2globl_48
    lw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                          new_var temp_11_arithop_48:i32 
              #                          temp_11_arithop_48 = Sub i32 temp_10_ptr2globl_48, 1_0 
              #                    occupy s7 with temp_10_ptr2globl_48
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with temp_11_arithop_48
              #                    regtab:    a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: *e_0, tracked: false } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Occupied { symidx: temp_11_arithop_48, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Occupied { symidx: temp_10_ptr2globl_48, tracked: true, occupy_count: 1 } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } |     s9:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } | 


    sub     s10,s7,s9
              #                    free s7
              #                    free s9
              #                    free s10
              #                          store temp_11_arithop_48:i32 *e_0:ptr->i32 
              #                    occupy s11 with *e_0
              #                       load label e as ptr to reg
    la      s11, e
              #                    occupy reg s11 with *e_0
              #                    occupy s10 with temp_11_arithop_48
    sw      s10,0(s11)
              #                    free s10
              #                    free s11
              #                          jump label: while.head_51 
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Freed { symidx: temp_11_arithop_48, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Freed { symidx: temp_10_ptr2globl_48, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } | 
              #                          label while.head_51: 
.while.head_51:
              #                          new_var temp_12_ptr2globl_50:i32 
              #                          temp_12_ptr2globl_50 = load *f_0:ptr->i32 
              #                    occupy a4 with *f_0
              #                       load label f as ptr to reg
    la      a4, f
              #                    occupy reg a4 with *f_0
              #                    occupy s9 with temp_12_ptr2globl_50
    lw      s9,0(a4)
              #                    free s9
              #                    free a4
              #                          new_var temp_13_cmp_50:i1 
              #                          temp_13_cmp_50 = icmp i32 Sgt temp_12_ptr2globl_50, 2_0 
              #                    occupy s9 with temp_12_ptr2globl_50
              #                    occupy s11 with 2_0
    li      s11, 2
              #                    occupy a4 with temp_13_cmp_50
    slt     a4,s11,s9
              #                    free s9
              #                    free s11
              #                    free a4
              #                          br i1 temp_13_cmp_50, label while.body_51, label while.exit_51 
              #                    occupy a4 with temp_13_cmp_50
              #                    free a4
              #                    occupy a4 with temp_13_cmp_50
    bnez    a4, .while.body_51
              #                    free a4
    j       .while.exit_51
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: temp_13_cmp_50, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Freed { symidx: temp_11_arithop_48, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Freed { symidx: temp_10_ptr2globl_48, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } |     s9:Freed { symidx: temp_12_ptr2globl_50, tracked: true } | 
              #                          label while.body_51: 
.while.body_51:
              #                          new_var temp_14_ptr2globl_52:i32 
              #                          temp_14_ptr2globl_52 = load *f_0:ptr->i32 
              #                    occupy s11 with *f_0
              #                       load label f as ptr to reg
    la      s11, f
              #                    occupy reg s11 with *f_0
              #                    store to a_21 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with a_21
              #                    occupy a0 with temp_14_ptr2globl_52
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_15_arithop_52:i32 
              #                          temp_15_arithop_52 = Sub i32 temp_14_ptr2globl_52, 2_0 
              #                    occupy a0 with temp_14_ptr2globl_52
              #                    occupy s11 with 2_0
    li      s11, 2
              #                    store to b_21 in mem offset legal
    sw      a1,192(sp)
              #                    release a1 with b_21
              #                    occupy a1 with temp_15_arithop_52
              #                    regtab:    a0:Occupied { symidx: temp_14_ptr2globl_52, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_15_arithop_52, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: temp_13_cmp_50, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Freed { symidx: temp_11_arithop_48, tracked: true } |     s11:Occupied { symidx: 2_0, tracked: false, occupy_count: 1 } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Freed { symidx: temp_10_ptr2globl_48, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } |     s9:Freed { symidx: temp_12_ptr2globl_50, tracked: true } | 


    sub     a1,a0,s11
              #                    free a0
              #                    free s11
              #                    free a1
              #                          store temp_15_arithop_52:i32 *f_0:ptr->i32 
              #                    occupy s11 with *f_0
              #                       load label f as ptr to reg
    la      s11, f
              #                    occupy reg s11 with *f_0
              #                    occupy a1 with temp_15_arithop_52
    sw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          jump label: while.head_55 
    j       .while.head_55
              #                    regtab     a0:Freed { symidx: temp_14_ptr2globl_52, tracked: true } |     a1:Freed { symidx: temp_15_arithop_52, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: temp_13_cmp_50, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Freed { symidx: temp_11_arithop_48, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Freed { symidx: temp_10_ptr2globl_48, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } |     s9:Freed { symidx: temp_12_ptr2globl_50, tracked: true } | 
              #                          label while.head_55: 
.while.head_55:
              #                          new_var temp_16_ptr2globl_54:i32 
              #                          temp_16_ptr2globl_54 = load *g_0:ptr->i32 
              #                    occupy s11 with *g_0
              #                       load label g as ptr to reg
    la      s11, g
              #                    occupy reg s11 with *g_0
              #                    store to temp_14_ptr2globl_52 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_14_ptr2globl_52
              #                    occupy a0 with temp_16_ptr2globl_54
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_17_cmp_54:i1 
              #                          temp_17_cmp_54 = icmp i32 Slt temp_16_ptr2globl_54, 3_0 
              #                    occupy a0 with temp_16_ptr2globl_54
              #                    occupy s11 with 3_0
    li      s11, 3
              #                    store to temp_15_arithop_52 in mem offset legal
    sw      a1,120(sp)
              #                    release a1 with temp_15_arithop_52
              #                    occupy a1 with temp_17_cmp_54
    slt     a1,a0,s11
              #                    free a0
              #                    free s11
              #                    free a1
              #                          br i1 temp_17_cmp_54, label while.body_55, label while.exit_55 
              #                    occupy a1 with temp_17_cmp_54
              #                    free a1
              #                    occupy a1 with temp_17_cmp_54
    bnez    a1, .while.body_55
              #                    free a1
    j       .while.exit_55
              #                    regtab     a0:Freed { symidx: temp_16_ptr2globl_54, tracked: true } |     a1:Freed { symidx: temp_17_cmp_54, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: temp_13_cmp_50, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Freed { symidx: temp_11_arithop_48, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Freed { symidx: temp_10_ptr2globl_48, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } |     s9:Freed { symidx: temp_12_ptr2globl_50, tracked: true } | 
              #                          label while.body_55: 
.while.body_55:
              #                          new_var temp_18_ptr2globl_56:i32 
              #                          temp_18_ptr2globl_56 = load *g_0:ptr->i32 
              #                    occupy s11 with *g_0
              #                       load label g as ptr to reg
    la      s11, g
              #                    occupy reg s11 with *g_0
              #                    store to temp_16_ptr2globl_54 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_16_ptr2globl_54
              #                    occupy a0 with temp_18_ptr2globl_56
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_19_arithop_56:i32 
              #                          temp_19_arithop_56 = Add i32 temp_18_ptr2globl_56, 10_0 
              #                    occupy a0 with temp_18_ptr2globl_56
              #                    occupy s11 with 10_0
    li      s11, 10
              #                    store to temp_17_cmp_54 in mem offset legal
    sb      a1,115(sp)
              #                    release a1 with temp_17_cmp_54
              #                    occupy a1 with temp_19_arithop_56
    add     a1,a0,s11
              #                    free a0
              #                    free s11
              #                    free a1
              #                          store temp_19_arithop_56:i32 *g_0:ptr->i32 
              #                    occupy s11 with *g_0
              #                       load label g as ptr to reg
    la      s11, g
              #                    occupy reg s11 with *g_0
              #                    occupy a1 with temp_19_arithop_56
    sw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          jump label: while.head_59 
    j       .while.head_59
              #                    regtab     a0:Freed { symidx: temp_18_ptr2globl_56, tracked: true } |     a1:Freed { symidx: temp_19_arithop_56, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: temp_13_cmp_50, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Freed { symidx: temp_11_arithop_48, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Freed { symidx: temp_10_ptr2globl_48, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } |     s9:Freed { symidx: temp_12_ptr2globl_50, tracked: true } | 
              #                          label while.head_59: 
.while.head_59:
              #                          new_var temp_20_ptr2globl_58:i32 
              #                          temp_20_ptr2globl_58 = load *h_0:ptr->i32 
              #                    occupy s11 with *h_0
              #                       load label h as ptr to reg
    la      s11, h
              #                    occupy reg s11 with *h_0
              #                    store to temp_18_ptr2globl_56 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_18_ptr2globl_56
              #                    occupy a0 with temp_20_ptr2globl_58
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_21_cmp_58:i1 
              #                          temp_21_cmp_58 = icmp i32 Slt temp_20_ptr2globl_58, 10_0 
              #                    occupy a0 with temp_20_ptr2globl_58
              #                    occupy s11 with 10_0
    li      s11, 10
              #                    store to temp_19_arithop_56 in mem offset legal
    sw      a1,104(sp)
              #                    release a1 with temp_19_arithop_56
              #                    occupy a1 with temp_21_cmp_58
    slt     a1,a0,s11
              #                    free a0
              #                    free s11
              #                    free a1
              #                          br i1 temp_21_cmp_58, label while.body_59, label while.exit_59 
              #                    occupy a1 with temp_21_cmp_58
              #                    free a1
              #                    occupy a1 with temp_21_cmp_58
    bnez    a1, .while.body_59
              #                    free a1
    j       .while.exit_59
              #                    regtab     a0:Freed { symidx: temp_20_ptr2globl_58, tracked: true } |     a1:Freed { symidx: temp_21_cmp_58, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: temp_13_cmp_50, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Freed { symidx: temp_11_arithop_48, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Freed { symidx: temp_10_ptr2globl_48, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } |     s9:Freed { symidx: temp_12_ptr2globl_50, tracked: true } | 
              #                          label while.body_59: 
.while.body_59:
              #                          new_var temp_22_ptr2globl_60:i32 
              #                          temp_22_ptr2globl_60 = load *h_0:ptr->i32 
              #                    occupy s11 with *h_0
              #                       load label h as ptr to reg
    la      s11, h
              #                    occupy reg s11 with *h_0
              #                    store to temp_20_ptr2globl_58 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_20_ptr2globl_58
              #                    occupy a0 with temp_22_ptr2globl_60
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_23_arithop_60:i32 
              #                          temp_23_arithop_60 = Add i32 temp_22_ptr2globl_60, 8_0 
              #                    occupy a0 with temp_22_ptr2globl_60
              #                    occupy s11 with 8_0
    li      s11, 8
              #                    store to temp_21_cmp_58 in mem offset legal
    sb      a1,99(sp)
              #                    release a1 with temp_21_cmp_58
              #                    occupy a1 with temp_23_arithop_60
    add     a1,a0,s11
              #                    free a0
              #                    free s11
              #                    free a1
              #                          store temp_23_arithop_60:i32 *h_0:ptr->i32 
              #                    occupy s11 with *h_0
              #                       load label h as ptr to reg
    la      s11, h
              #                    occupy reg s11 with *h_0
              #                    occupy a1 with temp_23_arithop_60
    sw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          jump label: while.head_59 
              #                    store to temp_23_arithop_60 in mem offset legal
    sw      a1,88(sp)
              #                    release a1 with temp_23_arithop_60
              #                    store to temp_22_ptr2globl_60 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_22_ptr2globl_60
              #                    occupy a1 with _anonymous_of_temp_19_arithop_56_0
              #                    load from temp_19_arithop_56 in mem


    lw      a1,104(sp)
              #                    occupy a0 with _anonymous_of_temp_18_ptr2globl_56_0
              #                    load from temp_18_ptr2globl_56 in mem


    lw      a0,108(sp)
    j       .while.head_59
              #                    regtab     a0:Freed { symidx: temp_20_ptr2globl_58, tracked: true } |     a1:Freed { symidx: temp_21_cmp_58, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: temp_13_cmp_50, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Freed { symidx: temp_11_arithop_48, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Freed { symidx: temp_10_ptr2globl_48, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } |     s9:Freed { symidx: temp_12_ptr2globl_50, tracked: true } | 
              #                          label while.exit_59: 
.while.exit_59:
              #                          new_var temp_24_ptr2globl_56:i32 
              #                          temp_24_ptr2globl_56 = load *h_0:ptr->i32 
              #                    occupy s11 with *h_0
              #                       load label h as ptr to reg
    la      s11, h
              #                    occupy reg s11 with *h_0
              #                    store to temp_20_ptr2globl_58 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_20_ptr2globl_58
              #                    occupy a0 with temp_24_ptr2globl_56
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_25_arithop_56:i32 
              #                          temp_25_arithop_56 = Sub i32 temp_24_ptr2globl_56, 1_0 
              #                    occupy a0 with temp_24_ptr2globl_56
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to temp_21_cmp_58 in mem offset legal
    sb      a1,99(sp)
              #                    release a1 with temp_21_cmp_58
              #                    occupy a1 with temp_25_arithop_56
              #                    regtab:    a0:Occupied { symidx: temp_24_ptr2globl_56, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_25_arithop_56, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: temp_13_cmp_50, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Freed { symidx: temp_11_arithop_48, tracked: true } |     s11:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Freed { symidx: temp_10_ptr2globl_48, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } |     s9:Freed { symidx: temp_12_ptr2globl_50, tracked: true } | 


    sub     a1,a0,s11
              #                    free a0
              #                    free s11
              #                    free a1
              #                          store temp_25_arithop_56:i32 *h_0:ptr->i32 
              #                    occupy s11 with *h_0
              #                       load label h as ptr to reg
    la      s11, h
              #                    occupy reg s11 with *h_0
              #                    occupy a1 with temp_25_arithop_56
    sw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          jump label: while.head_55 
              #                    store to temp_25_arithop_56 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with temp_25_arithop_56
              #                    store to temp_24_ptr2globl_56 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_24_ptr2globl_56
              #                    occupy a1 with _anonymous_of_temp_15_arithop_52_0
              #                    load from temp_15_arithop_52 in mem


    lw      a1,120(sp)
              #                    occupy a0 with _anonymous_of_temp_14_ptr2globl_52_0
              #                    load from temp_14_ptr2globl_52 in mem


    lw      a0,124(sp)
    j       .while.head_55
              #                    regtab     a0:Freed { symidx: temp_16_ptr2globl_54, tracked: true } |     a1:Freed { symidx: temp_17_cmp_54, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: temp_13_cmp_50, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Freed { symidx: temp_11_arithop_48, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Freed { symidx: temp_10_ptr2globl_48, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } |     s9:Freed { symidx: temp_12_ptr2globl_50, tracked: true } | 
              #                          label while.exit_55: 
.while.exit_55:
              #                          new_var temp_26_ptr2globl_52:i32 
              #                          temp_26_ptr2globl_52 = load *g_0:ptr->i32 
              #                    occupy s11 with *g_0
              #                       load label g as ptr to reg
    la      s11, g
              #                    occupy reg s11 with *g_0
              #                    store to temp_16_ptr2globl_54 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_16_ptr2globl_54
              #                    occupy a0 with temp_26_ptr2globl_52
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_27_arithop_52:i32 
              #                          temp_27_arithop_52 = Sub i32 temp_26_ptr2globl_52, 8_0 
              #                    occupy a0 with temp_26_ptr2globl_52
              #                    occupy s11 with 8_0
    li      s11, 8
              #                    store to temp_17_cmp_54 in mem offset legal
    sb      a1,115(sp)
              #                    release a1 with temp_17_cmp_54
              #                    occupy a1 with temp_27_arithop_52
              #                    regtab:    a0:Occupied { symidx: temp_26_ptr2globl_52, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_27_arithop_52, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: temp_13_cmp_50, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Freed { symidx: temp_11_arithop_48, tracked: true } |     s11:Occupied { symidx: 8_0, tracked: false, occupy_count: 1 } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Freed { symidx: temp_10_ptr2globl_48, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } |     s9:Freed { symidx: temp_12_ptr2globl_50, tracked: true } | 


    sub     a1,a0,s11
              #                    free a0
              #                    free s11
              #                    free a1
              #                          store temp_27_arithop_52:i32 *g_0:ptr->i32 
              #                    occupy s11 with *g_0
              #                       load label g as ptr to reg
    la      s11, g
              #                    occupy reg s11 with *g_0
              #                    occupy a1 with temp_27_arithop_52
    sw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          jump label: while.head_51 
              #                    store to temp_12_ptr2globl_50 in mem offset legal
    sw      s9,132(sp)
              #                    release s9 with temp_12_ptr2globl_50
              #                    store to temp_13_cmp_50 in mem offset legal
    sb      a4,131(sp)
              #                    release a4 with temp_13_cmp_50
              #                    store to temp_27_arithop_52 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with temp_27_arithop_52
              #                    store to temp_26_ptr2globl_52 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_26_ptr2globl_52
              #                    occupy a1 with _anonymous_of_b_21_0
              #                    load from b_21 in mem


    lw      a1,192(sp)
              #                    occupy a0 with _anonymous_of_a_21_0
              #                    load from a_21 in mem


    lw      a0,196(sp)
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: temp_13_cmp_50, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s10:Freed { symidx: temp_11_arithop_48, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s7:Freed { symidx: temp_10_ptr2globl_48, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } |     s9:Freed { symidx: temp_12_ptr2globl_50, tracked: true } | 
              #                          label while.exit_51: 
.while.exit_51:
              #                          new_var temp_28_ptr2globl_48:i32 
              #                          temp_28_ptr2globl_48 = load *f_0:ptr->i32 
              #                    occupy s11 with *f_0
              #                       load label f as ptr to reg
    la      s11, f
              #                    occupy reg s11 with *f_0
              #                    store to a_21 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with a_21
              #                    occupy a0 with temp_28_ptr2globl_48
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_29_arithop_48:i32 
              #                          temp_29_arithop_48 = Add i32 temp_28_ptr2globl_48, 1_0 
              #                    occupy a0 with temp_28_ptr2globl_48
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to b_21 in mem offset legal
    sw      a1,192(sp)
              #                    release a1 with b_21
              #                    occupy a1 with temp_29_arithop_48
    add     a1,a0,s11
              #                    free a0
              #                    free s11
              #                    free a1
              #                          store temp_29_arithop_48:i32 *f_0:ptr->i32 
              #                    occupy s11 with *f_0
              #                       load label f as ptr to reg
    la      s11, f
              #                    occupy reg s11 with *f_0
              #                    occupy a1 with temp_29_arithop_48
    sw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          jump label: while.head_47 
              #                    store to temp_11_arithop_48 in mem offset legal
    sw      s10,136(sp)
              #                    release s10 with temp_11_arithop_48
              #                    store to temp_8_ptr2globl_46 in mem offset legal
    sw      s6,148(sp)
              #                    release s6 with temp_8_ptr2globl_46
              #                    store to temp_9_cmp_46 in mem offset legal
    sb      s8,147(sp)
              #                    release s8 with temp_9_cmp_46
              #                    store to temp_12_ptr2globl_50 in mem offset legal
    sw      s9,132(sp)
              #                    release s9 with temp_12_ptr2globl_50
              #                    store to temp_13_cmp_50 in mem offset legal
    sb      a4,131(sp)
              #                    release a4 with temp_13_cmp_50
              #                    store to temp_10_ptr2globl_48 in mem offset legal
    sw      s7,140(sp)
              #                    release s7 with temp_10_ptr2globl_48
              #                    store to temp_29_arithop_48 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with temp_29_arithop_48
              #                    store to temp_28_ptr2globl_48 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_28_ptr2globl_48
              #                    occupy a1 with _anonymous_of_b_21_0
              #                    load from b_21 in mem


    lw      a1,192(sp)
              #                    occupy a0 with _anonymous_of_a_21_0
              #                    load from a_21 in mem


    lw      a0,196(sp)
    j       .while.head_47
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Freed { symidx: temp_7_arithop_44, tracked: true } |     s6:Freed { symidx: temp_8_ptr2globl_46, tracked: true } |     s8:Freed { symidx: temp_9_cmp_46, tracked: true } | 
              #                          label while.exit_47: 
.while.exit_47:
              #                          new_var temp_30_ptr2globl_44:i32 
              #                          temp_30_ptr2globl_44 = load *e_0:ptr->i32 
              #                    occupy a4 with *e_0
              #                       load label e as ptr to reg
    la      a4, e
              #                    occupy reg a4 with *e_0
              #                    occupy s7 with temp_30_ptr2globl_44
    lw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                          new_var temp_31_arithop_44:i32 
              #                          temp_31_arithop_44 = Add i32 temp_30_ptr2globl_44, 1_0 
              #                    occupy s7 with temp_30_ptr2globl_44
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with temp_31_arithop_44
    add     s10,s7,s9
              #                    free s7
              #                    free s9
              #                    free s10
              #                          store temp_31_arithop_44:i32 *e_0:ptr->i32 
              #                    occupy s11 with *e_0
              #                       load label e as ptr to reg
    la      s11, e
              #                    occupy reg s11 with *e_0
              #                    occupy s10 with temp_31_arithop_44
    sw      s10,0(s11)
              #                    free s10
              #                    free s11
              #                          jump label: while.head_43 
              #                    store to temp_7_arithop_44 in mem offset legal
    sw      s5,152(sp)
              #                    release s5 with temp_7_arithop_44
              #                    store to temp_31_arithop_44 in mem offset legal
    sw      s10,56(sp)
              #                    release s10 with temp_31_arithop_44
              #                    store to temp_8_ptr2globl_46 in mem offset legal
    sw      s6,148(sp)
              #                    release s6 with temp_8_ptr2globl_46
              #                    store to temp_9_cmp_46 in mem offset legal
    sb      s8,147(sp)
              #                    release s8 with temp_9_cmp_46
              #                    store to temp_30_ptr2globl_44 in mem offset legal
    sw      s7,60(sp)
              #                    release s7 with temp_30_ptr2globl_44
              #                    store to temp_6_cmp_42 in mem offset legal
    sb      s4,159(sp)
              #                    release s4 with temp_6_cmp_42
    j       .while.head_43
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } | 
              #                          label while.exit_43: 
.while.exit_43:
              #                          new_var temp_32_arithop_40:i32 
              #                          temp_32_arithop_40 = Sub i32 d_21, 1_0 
              #                    occupy a3 with d_21
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s5 with temp_32_arithop_40
              #                    regtab:    a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Occupied { symidx: d_21, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } |     s3:Freed { symidx: temp_5_arithop_40, tracked: true } |     s4:Freed { symidx: temp_6_cmp_42, tracked: true } |     s5:Occupied { symidx: temp_32_arithop_40, tracked: true, occupy_count: 1 } | 


    sub     s5,a3,a4
              #                    free a3
              #                    free a4
              #                    free s5
              #                          d_21 = i32 temp_32_arithop_40 
              #                    occupy s5 with temp_32_arithop_40
              #                    occupy a3 with d_21
    mv      a3, s5
              #                    free s5
              #                    free a3
              #                          jump label: while.head_39 
              #                    store to temp_32_arithop_40 in mem offset legal
    sw      s5,52(sp)
              #                    release s5 with temp_32_arithop_40
              #                    store to temp_5_arithop_40 in mem offset legal
    sw      s3,160(sp)
              #                    release s3 with temp_5_arithop_40
              #                    store to temp_4_cmp_38 in mem offset legal
    sb      s2,167(sp)
              #                    release s2 with temp_4_cmp_38
              #                    store to temp_6_cmp_42 in mem offset legal
    sb      s4,159(sp)
              #                    release s4 with temp_6_cmp_42
    j       .while.head_39
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s1:Freed { symidx: temp_3_arithop_36, tracked: true } |     s2:Freed { symidx: temp_4_cmp_38, tracked: true } | 
              #                          label while.exit_39: 
.while.exit_39:
              #                          new_var temp_33_arithop_36:i32 
              #                          temp_33_arithop_36 = Add i32 c_21, 1_0 
              #                    occupy a2 with c_21
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s3 with temp_33_arithop_36
    add     s3,a2,a4
              #                    free a2
              #                    free a4
              #                    free s3
              #                          c_21 = i32 temp_33_arithop_36 
              #                    occupy s3 with temp_33_arithop_36
              #                    occupy a2 with c_21
    mv      a2, s3
              #                    free s3
              #                    free a2
              #                          jump label: while.head_35 
              #                    store to temp_33_arithop_36 in mem offset legal
    sw      s3,48(sp)
              #                    release s3 with temp_33_arithop_36
              #                    store to temp_2_cmp_34 in mem offset legal
    sb      a7,175(sp)
              #                    release a7 with temp_2_cmp_34
              #                    store to temp_4_cmp_38 in mem offset legal
    sb      s2,167(sp)
              #                    release s2 with temp_4_cmp_38
              #                    store to temp_3_arithop_36 in mem offset legal
    sw      s1,168(sp)
              #                    release s1 with temp_3_arithop_36
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } | 
              #                          label while.exit_35: 
.while.exit_35:
              #                          new_var temp_34_arithop_32:i32 
              #                          temp_34_arithop_32 = Sub i32 b_21, 2_0 
              #                    occupy a1 with b_21
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    occupy s1 with temp_34_arithop_32
              #                    regtab:    a0:Freed { symidx: a_21, tracked: true } |     a1:Occupied { symidx: b_21, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Occupied { symidx: 2_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_1_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_34, tracked: true } |     s1:Occupied { symidx: temp_34_arithop_32, tracked: true, occupy_count: 1 } | 


    sub     s1,a1,a4
              #                    free a1
              #                    free a4
              #                    free s1
              #                          b_21 = i32 temp_34_arithop_32 
              #                    occupy s1 with temp_34_arithop_32
              #                    occupy a1 with b_21
    mv      a1, s1
              #                    free s1
              #                    free a1
              #                          jump label: while.head_31 
              #                    store to temp_1_arithop_32 in mem offset legal
    sw      a6,176(sp)
              #                    release a6 with temp_1_arithop_32
              #                    store to temp_2_cmp_34 in mem offset legal
    sb      a7,175(sp)
              #                    release a7 with temp_2_cmp_34
              #                    store to temp_34_arithop_32 in mem offset legal
    sw      s1,44(sp)
              #                    release s1 with temp_34_arithop_32
              #                    store to temp_0_cmp_30 in mem offset legal
    sb      a5,183(sp)
              #                    release a5 with temp_0_cmp_30
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } | 
              #                          label while.exit_31: 
.while.exit_31:
              #                          new_var temp_35_ptr2globl_21:i32 
              #                          temp_35_ptr2globl_21 = load *h_0:ptr->i32 
              #                    occupy a4 with *h_0
              #                       load label h as ptr to reg
    la      a4, h
              #                    occupy reg a4 with *h_0
              #                    occupy a6 with temp_35_ptr2globl_21
    lw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                          new_var temp_36_ptr2globl_21:i32 
              #                          temp_36_ptr2globl_21 = load *g_0:ptr->i32 
              #                    occupy a7 with *g_0
              #                       load label g as ptr to reg
    la      a7, g
              #                    occupy reg a7 with *g_0
              #                    occupy s1 with temp_36_ptr2globl_21
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_37_ptr2globl_21:i32 
              #                          temp_37_ptr2globl_21 = load *e_0:ptr->i32 
              #                    occupy s2 with *e_0
              #                       load label e as ptr to reg
    la      s2, e
              #                    occupy reg s2 with *e_0
              #                    occupy s3 with temp_37_ptr2globl_21
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_38_arithop_21:i32 
              #                          temp_38_arithop_21 = Add i32 temp_37_ptr2globl_21, d_21 
              #                    occupy s3 with temp_37_ptr2globl_21
              #                    occupy a3 with d_21
              #                    occupy s4 with temp_38_arithop_21
    add     s4,s3,a3
              #                    free s3
              #                    free a3
              #                    free s4
              #                          new_var temp_39_arithop_21:i32 
              #                          temp_39_arithop_21 = Sub i32 temp_38_arithop_21, temp_36_ptr2globl_21 
              #                    occupy s4 with temp_38_arithop_21
              #                    occupy s1 with temp_36_ptr2globl_21
              #                    occupy s5 with temp_39_arithop_21
              #                    regtab:    a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: *h_0, tracked: false } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_35_ptr2globl_21, tracked: true } |     a7:Freed { symidx: *g_0, tracked: false } |     s1:Occupied { symidx: temp_36_ptr2globl_21, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: *e_0, tracked: false } |     s3:Freed { symidx: temp_37_ptr2globl_21, tracked: true } |     s4:Occupied { symidx: temp_38_arithop_21, tracked: true, occupy_count: 1 } |     s5:Occupied { symidx: temp_39_arithop_21, tracked: true, occupy_count: 1 } | 


    sub     s5,s4,s1
              #                    free s4
              #                    free s1
              #                    free s5
              #                          new_var temp_40_arithop_21:i32 
              #                          temp_40_arithop_21 = Add i32 temp_39_arithop_21, temp_35_ptr2globl_21 
              #                    occupy s5 with temp_39_arithop_21
              #                    occupy a6 with temp_35_ptr2globl_21
              #                    occupy s6 with temp_40_arithop_21
    add     s6,s5,a6
              #                    free s5
              #                    free a6
              #                    free s6
              #                          new_var temp_41_arithop_21:i32 
              #                          temp_41_arithop_21 = Add i32 b_21, d_21 
              #                    occupy a1 with b_21
              #                    occupy a3 with d_21
              #                    occupy s7 with temp_41_arithop_21
    add     s7,a1,a3
              #                    free a1
              #                    free a3
              #                    free s7
              #                          new_var temp_42_arithop_21:i32 
              #                          temp_42_arithop_21 = Add i32 a_21, temp_41_arithop_21 
              #                    occupy a0 with a_21
              #                    occupy s7 with temp_41_arithop_21
              #                    occupy s8 with temp_42_arithop_21
    add     s8,a0,s7
              #                    free a0
              #                    free s7
              #                    free s8
              #                          new_var temp_43_arithop_21:i32 
              #                          temp_43_arithop_21 = Add i32 temp_42_arithop_21, c_21 
              #                    occupy s8 with temp_42_arithop_21
              #                    occupy a2 with c_21
              #                    occupy s9 with temp_43_arithop_21
    add     s9,s8,a2
              #                    free s8
              #                    free a2
              #                    free s9
              #                          new_var temp_44_arithop_21:i32 
              #                          temp_44_arithop_21 = Sub i32 temp_43_arithop_21, temp_40_arithop_21 
              #                    occupy s9 with temp_43_arithop_21
              #                    occupy s6 with temp_40_arithop_21
              #                    occupy s10 with temp_44_arithop_21
              #                    regtab:    a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a4:Freed { symidx: *h_0, tracked: false } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_35_ptr2globl_21, tracked: true } |     a7:Freed { symidx: *g_0, tracked: false } |     s10:Occupied { symidx: temp_44_arithop_21, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_36_ptr2globl_21, tracked: true } |     s2:Freed { symidx: *e_0, tracked: false } |     s3:Freed { symidx: temp_37_ptr2globl_21, tracked: true } |     s4:Freed { symidx: temp_38_arithop_21, tracked: true } |     s5:Freed { symidx: temp_39_arithop_21, tracked: true } |     s6:Occupied { symidx: temp_40_arithop_21, tracked: true, occupy_count: 1 } |     s7:Freed { symidx: temp_41_arithop_21, tracked: true } |     s8:Freed { symidx: temp_42_arithop_21, tracked: true } |     s9:Occupied { symidx: temp_43_arithop_21, tracked: true, occupy_count: 1 } | 


    sub     s10,s9,s6
              #                    free s9
              #                    free s6
              #                    free s10
              #                          ret temp_44_arithop_21 
              #                    load from ra_EightWhile_0 in mem
    ld      ra,208(sp)
              #                    load from s0_EightWhile_0 in mem
    ld      s0,200(sp)
              #                    store to temp_44_arithop_21 in mem offset legal
    sw      s10,4(sp)
              #                    release s10 with temp_44_arithop_21
              #                    store to a_21 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with a_21
              #                    occupy a0 with temp_44_arithop_21
              #                    load from temp_44_arithop_21 in mem


    lw      a0,4(sp)
    addi    sp,sp,216
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: c_21, tracked: true } |     a3:Freed { symidx: d_21, tracked: true } |     a5:Freed { symidx: temp_0_cmp_30, tracked: true } |     a6:Freed { symidx: temp_35_ptr2globl_21, tracked: true } |     s1:Freed { symidx: temp_36_ptr2globl_21, tracked: true } |     s3:Freed { symidx: temp_37_ptr2globl_21, tracked: true } |     s4:Freed { symidx: temp_38_arithop_21, tracked: true } |     s5:Freed { symidx: temp_39_arithop_21, tracked: true } |     s6:Freed { symidx: temp_40_arithop_21, tracked: true } |     s7:Freed { symidx: temp_41_arithop_21, tracked: true } |     s8:Freed { symidx: temp_42_arithop_21, tracked: true } |     s9:Freed { symidx: temp_43_arithop_21, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_45_ret_of_EightWhile:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_45_ret_of_EightWhile_71 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          store 1_0:i32 *g_0:ptr->i32 
              #                    occupy a0 with *g_0
              #                       load label g as ptr to reg
    la      a0, g
              #                    occupy reg a0 with *g_0
              #                    occupy a1 with 1_0
    li      a1, 1
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          store 2_0:i32 *h_0:ptr->i32 
              #                    occupy a2 with *h_0
              #                       load label h as ptr to reg
    la      a2, h
              #                    occupy reg a2 with *h_0
              #                    occupy a3 with 2_0
    li      a3, 2
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          store 4_0:i32 *e_0:ptr->i32 
              #                    occupy a4 with *e_0
              #                       load label e as ptr to reg
    la      a4, e
              #                    occupy reg a4 with *e_0
              #                    occupy a5 with 4_0
    li      a5, 4
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          store 6_0:i32 *f_0:ptr->i32 
              #                    occupy a6 with *f_0
              #                       load label f as ptr to reg
    la      a6, f
              #                    occupy reg a6 with *f_0
              #                    occupy a7 with 6_0
    li      a7, 6
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_45_ret_of_EightWhile_71:i32 
              #                          temp_45_ret_of_EightWhile_71 =  Call i32 EightWhile_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    EightWhile
              #                    store to temp_45_ret_of_EightWhile_71 in mem offset legal
    sw      a0,4(sp)
              #                          ret temp_45_ret_of_EightWhile_71 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to temp_45_ret_of_EightWhile_71 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_45_ret_of_EightWhile_71
              #                    occupy a0 with temp_45_ret_of_EightWhile_71
              #                    load from temp_45_ret_of_EightWhile_71 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
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
    .word 0
    .align 4
    .globl f
              #                          global i32 f_0 
    .type f,@object
f:
    .word 0
    .align 4
    .globl h
              #                          global i32 h_0 
    .type h,@object
h:
    .word 0
    .align 4
    .globl g
              #                          global i32 g_0 
    .type g,@object
g:
    .word 0
