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
              #                          Define FourWhile_0 [] -> FourWhile_ret_0 
    .globl FourWhile
    .type FourWhile,@function
FourWhile:
              #                    mem layout:|ra_FourWhile:8 at 80|s0_FourWhile:8 at 72|a:4 at 68|b:4 at 64|c:4 at 60|d:4 at 56|temp_0_cmp:1 at 55|none:3 at 52|temp_1_arithop:4 at 48|temp_2_cmp:1 at 47|none:3 at 44|temp_3_arithop:4 at 40|temp_4_cmp:1 at 39|none:3 at 36|temp_5_arithop:4 at 32|temp_6_cmp:1 at 31|none:3 at 28|temp_7_arithop:4 at 24|temp_8_arithop:4 at 20|temp_9_arithop:4 at 16|temp_10_arithop:4 at 12|temp_11_arithop:4 at 8|temp_12_arithop:4 at 4|temp_13_arithop:4 at 0
    addi    sp,sp,-88
              #                    store to ra_FourWhile_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_FourWhile_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i32 c_17 
              #                          alloc i32 d_17 
              #                          alloc i1 temp_0_cmp_26 
              #                          alloc i32 temp_1_arithop_28 
              #                          alloc i1 temp_2_cmp_30 
              #                          alloc i32 temp_3_arithop_32 
              #                          alloc i1 temp_4_cmp_34 
              #                          alloc i32 temp_5_arithop_36 
              #                          alloc i1 temp_6_cmp_38 
              #                          alloc i32 temp_7_arithop_40 
              #                          alloc i32 temp_8_arithop_36 
              #                          alloc i32 temp_9_arithop_32 
              #                          alloc i32 temp_10_arithop_28 
              #                          alloc i32 temp_11_arithop_17 
              #                          alloc i32 temp_12_arithop_17 
              #                          alloc i32 temp_13_arithop_17 
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          new_var a_17:i32 
              #                          a_17 = i32 5_0 
              #                    occupy a0 with a_17
    li      a0, 5
              #                    free a0
              #                          new_var b_17:i32 
              #                          new_var c_17:i32 
              #                          b_17 = i32 6_0 
              #                    occupy a1 with b_17
    li      a1, 6
              #                    free a1
              #                          c_17 = i32 7_0 
              #                    occupy a2 with c_17
    li      a2, 7
              #                    free a2
              #                          new_var d_17:i32 
              #                          d_17 = i32 10_0 
              #                    occupy a3 with d_17
    li      a3, 10
              #                    free a3
              #                          jump label: while.head_27 
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } | 
              #                          label while.head_27: 
.while.head_27:
              #                          new_var temp_0_cmp_26:i1 
              #                          temp_0_cmp_26 = icmp i32 Slt a_17, 20_0 
              #                    occupy a0 with a_17
              #                    occupy a4 with 20_0
    li      a4, 20
              #                    occupy a5 with temp_0_cmp_26
    slt     a5,a0,a4
              #                    free a0
              #                    free a4
              #                    free a5
              #                          br i1 temp_0_cmp_26, label while.body_27, label while.exit_27 
              #                    occupy a5 with temp_0_cmp_26
              #                    free a5
              #                    occupy a5 with temp_0_cmp_26
    bnez    a5, .while.body_27
              #                    free a5
    j       .while.exit_27
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } | 
              #                          label while.body_27: 
.while.body_27:
              #                          new_var temp_1_arithop_28:i32 
              #                          temp_1_arithop_28 = Add i32 a_17, 3_0 
              #                    occupy a0 with a_17
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a6 with temp_1_arithop_28
    add     a6,a0,a4
              #                    free a0
              #                    free a4
              #                    free a6
              #                          a_17 = i32 temp_1_arithop_28 
              #                    occupy a6 with temp_1_arithop_28
              #                    occupy a0 with a_17
    mv      a0, a6
              #                    free a6
              #                    free a0
              #                          jump label: while.head_31 
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_1_arithop_28, tracked: true } | 
              #                          label while.head_31: 
.while.head_31:
              #                          new_var temp_2_cmp_30:i1 
              #                          temp_2_cmp_30 = icmp i32 Slt b_17, 10_0 
              #                    occupy a1 with b_17
              #                    occupy a4 with 10_0
    li      a4, 10
              #                    occupy a7 with temp_2_cmp_30
    slt     a7,a1,a4
              #                    free a1
              #                    free a4
              #                    free a7
              #                          br i1 temp_2_cmp_30, label while.body_31, label while.exit_31 
              #                    occupy a7 with temp_2_cmp_30
              #                    free a7
              #                    occupy a7 with temp_2_cmp_30
    bnez    a7, .while.body_31
              #                    free a7
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_1_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } | 
              #                          label while.body_31: 
.while.body_31:
              #                          new_var temp_3_arithop_32:i32 
              #                          temp_3_arithop_32 = Add i32 b_17, 1_0 
              #                    occupy a1 with b_17
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s1 with temp_3_arithop_32
    add     s1,a1,a4
              #                    free a1
              #                    free a4
              #                    free s1
              #                          b_17 = i32 temp_3_arithop_32 
              #                    occupy s1 with temp_3_arithop_32
              #                    occupy a1 with b_17
    mv      a1, s1
              #                    free s1
              #                    free a1
              #                          jump label: while.head_35 
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_1_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } |     s1:Freed { symidx: temp_3_arithop_32, tracked: true } | 
              #                          label while.head_35: 
.while.head_35:
              #                          new_var temp_4_cmp_34:i1 
              #                          temp_4_cmp_34 = icmp i32 Eq c_17, 7_0 
              #                    occupy a2 with c_17
              #                    occupy a4 with 7_0
    li      a4, 7
              #                    occupy s2 with temp_4_cmp_34
    xor     s2,a2,a4
    seqz    s2, s2
              #                    free a2
              #                    free a4
              #                    free s2
              #                          br i1 temp_4_cmp_34, label while.body_35, label while.exit_35 
              #                    occupy s2 with temp_4_cmp_34
              #                    free s2
              #                    occupy s2 with temp_4_cmp_34
    bnez    s2, .while.body_35
              #                    free s2
    j       .while.exit_35
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_1_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } |     s1:Freed { symidx: temp_3_arithop_32, tracked: true } |     s2:Freed { symidx: temp_4_cmp_34, tracked: true } | 
              #                          label while.body_35: 
.while.body_35:
              #                          new_var temp_5_arithop_36:i32 
              #                          temp_5_arithop_36 = Sub i32 c_17, 1_0 
              #                    occupy a2 with c_17
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s3 with temp_5_arithop_36
              #                    regtab:    a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Occupied { symidx: c_17, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_1_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } |     s1:Freed { symidx: temp_3_arithop_32, tracked: true } |     s2:Freed { symidx: temp_4_cmp_34, tracked: true } |     s3:Occupied { symidx: temp_5_arithop_36, tracked: true, occupy_count: 1 } | 


    sub     s3,a2,a4
              #                    free a2
              #                    free a4
              #                    free s3
              #                          c_17 = i32 temp_5_arithop_36 
              #                    occupy s3 with temp_5_arithop_36
              #                    occupy a2 with c_17
    mv      a2, s3
              #                    free s3
              #                    free a2
              #                          jump label: while.head_39 
    j       .while.head_39
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_1_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } |     s1:Freed { symidx: temp_3_arithop_32, tracked: true } |     s2:Freed { symidx: temp_4_cmp_34, tracked: true } |     s3:Freed { symidx: temp_5_arithop_36, tracked: true } | 
              #                          label while.head_39: 
.while.head_39:
              #                          new_var temp_6_cmp_38:i1 
              #                          temp_6_cmp_38 = icmp i32 Slt d_17, 20_0 
              #                    occupy a3 with d_17
              #                    occupy a4 with 20_0
    li      a4, 20
              #                    occupy s4 with temp_6_cmp_38
    slt     s4,a3,a4
              #                    free a3
              #                    free a4
              #                    free s4
              #                          br i1 temp_6_cmp_38, label while.body_39, label while.exit_39 
              #                    occupy s4 with temp_6_cmp_38
              #                    free s4
              #                    occupy s4 with temp_6_cmp_38
    bnez    s4, .while.body_39
              #                    free s4
    j       .while.exit_39
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_1_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } |     s1:Freed { symidx: temp_3_arithop_32, tracked: true } |     s2:Freed { symidx: temp_4_cmp_34, tracked: true } |     s3:Freed { symidx: temp_5_arithop_36, tracked: true } |     s4:Freed { symidx: temp_6_cmp_38, tracked: true } | 
              #                          label while.body_39: 
.while.body_39:
              #                          new_var temp_7_arithop_40:i32 
              #                          temp_7_arithop_40 = Add i32 d_17, 3_0 
              #                    occupy a3 with d_17
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy s5 with temp_7_arithop_40
    add     s5,a3,a4
              #                    free a3
              #                    free a4
              #                    free s5
              #                          d_17 = i32 temp_7_arithop_40 
              #                    occupy s5 with temp_7_arithop_40
              #                    occupy a3 with d_17
    mv      a3, s5
              #                    free s5
              #                    free a3
              #                          jump label: while.head_39 
              #                    store to temp_6_cmp_38 in mem offset legal
    sb      s4,31(sp)
              #                    release s4 with temp_6_cmp_38
              #                    store to temp_7_arithop_40 in mem offset legal
    sw      s5,24(sp)
              #                    release s5 with temp_7_arithop_40
    j       .while.head_39
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_1_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } |     s1:Freed { symidx: temp_3_arithop_32, tracked: true } |     s2:Freed { symidx: temp_4_cmp_34, tracked: true } |     s3:Freed { symidx: temp_5_arithop_36, tracked: true } |     s4:Freed { symidx: temp_6_cmp_38, tracked: true } | 
              #                          label while.exit_39: 
.while.exit_39:
              #                          new_var temp_8_arithop_36:i32 
              #                          temp_8_arithop_36 = Sub i32 d_17, 1_0 
              #                    occupy a3 with d_17
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s5 with temp_8_arithop_36
              #                    regtab:    a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Occupied { symidx: d_17, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_1_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } |     s1:Freed { symidx: temp_3_arithop_32, tracked: true } |     s2:Freed { symidx: temp_4_cmp_34, tracked: true } |     s3:Freed { symidx: temp_5_arithop_36, tracked: true } |     s4:Freed { symidx: temp_6_cmp_38, tracked: true } |     s5:Occupied { symidx: temp_8_arithop_36, tracked: true, occupy_count: 1 } | 


    sub     s5,a3,a4
              #                    free a3
              #                    free a4
              #                    free s5
              #                          d_17 = i32 temp_8_arithop_36 
              #                    occupy s5 with temp_8_arithop_36
              #                    occupy a3 with d_17
    mv      a3, s5
              #                    free s5
              #                    free a3
              #                          jump label: while.head_35 
              #                    store to temp_5_arithop_36 in mem offset legal
    sw      s3,32(sp)
              #                    release s3 with temp_5_arithop_36
              #                    store to temp_6_cmp_38 in mem offset legal
    sb      s4,31(sp)
              #                    release s4 with temp_6_cmp_38
              #                    store to temp_4_cmp_34 in mem offset legal
    sb      s2,39(sp)
              #                    release s2 with temp_4_cmp_34
              #                    store to temp_8_arithop_36 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_8_arithop_36
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_1_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } |     s1:Freed { symidx: temp_3_arithop_32, tracked: true } |     s2:Freed { symidx: temp_4_cmp_34, tracked: true } | 
              #                          label while.exit_35: 
.while.exit_35:
              #                          new_var temp_9_arithop_32:i32 
              #                          temp_9_arithop_32 = Add i32 c_17, 1_0 
              #                    occupy a2 with c_17
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s3 with temp_9_arithop_32
    add     s3,a2,a4
              #                    free a2
              #                    free a4
              #                    free s3
              #                          c_17 = i32 temp_9_arithop_32 
              #                    occupy s3 with temp_9_arithop_32
              #                    occupy a2 with c_17
    mv      a2, s3
              #                    free s3
              #                    free a2
              #                          jump label: while.head_31 
              #                    store to temp_3_arithop_32 in mem offset legal
    sw      s1,40(sp)
              #                    release s1 with temp_3_arithop_32
              #                    store to temp_2_cmp_30 in mem offset legal
    sb      a7,47(sp)
              #                    release a7 with temp_2_cmp_30
              #                    store to temp_9_arithop_32 in mem offset legal
    sw      s3,16(sp)
              #                    release s3 with temp_9_arithop_32
              #                    store to temp_4_cmp_34 in mem offset legal
    sb      s2,39(sp)
              #                    release s2 with temp_4_cmp_34
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_1_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } | 
              #                          label while.exit_31: 
.while.exit_31:
              #                          new_var temp_10_arithop_28:i32 
              #                          temp_10_arithop_28 = Sub i32 b_17, 2_0 
              #                    occupy a1 with b_17
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    occupy s1 with temp_10_arithop_28
              #                    regtab:    a0:Freed { symidx: a_17, tracked: true } |     a1:Occupied { symidx: b_17, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Occupied { symidx: 2_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_1_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } |     s1:Occupied { symidx: temp_10_arithop_28, tracked: true, occupy_count: 1 } | 


    sub     s1,a1,a4
              #                    free a1
              #                    free a4
              #                    free s1
              #                          b_17 = i32 temp_10_arithop_28 
              #                    occupy s1 with temp_10_arithop_28
              #                    occupy a1 with b_17
    mv      a1, s1
              #                    free s1
              #                    free a1
              #                          jump label: while.head_27 
              #                    store to temp_10_arithop_28 in mem offset legal
    sw      s1,12(sp)
              #                    release s1 with temp_10_arithop_28
              #                    store to temp_2_cmp_30 in mem offset legal
    sb      a7,47(sp)
              #                    release a7 with temp_2_cmp_30
              #                    store to temp_0_cmp_26 in mem offset legal
    sb      a5,55(sp)
              #                    release a5 with temp_0_cmp_26
              #                    store to temp_1_arithop_28 in mem offset legal
    sw      a6,48(sp)
              #                    release a6 with temp_1_arithop_28
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } | 
              #                          label while.exit_27: 
.while.exit_27:
              #                          new_var temp_11_arithop_17:i32 
              #                          temp_11_arithop_17 = Add i32 b_17, d_17 
              #                    occupy a1 with b_17
              #                    occupy a3 with d_17
              #                    occupy a4 with temp_11_arithop_17
    add     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          new_var temp_12_arithop_17:i32 
              #                          temp_12_arithop_17 = Add i32 a_17, temp_11_arithop_17 
              #                    occupy a0 with a_17
              #                    occupy a4 with temp_11_arithop_17
              #                    occupy a6 with temp_12_arithop_17
    add     a6,a0,a4
              #                    free a0
              #                    free a4
              #                    free a6
              #                          new_var temp_13_arithop_17:i32 
              #                          temp_13_arithop_17 = Add i32 temp_12_arithop_17, c_17 
              #                    occupy a6 with temp_12_arithop_17
              #                    occupy a2 with c_17
              #                    occupy a7 with temp_13_arithop_17
    add     a7,a6,a2
              #                    free a6
              #                    free a2
              #                    free a7
              #                          ret temp_13_arithop_17 
              #                    load from ra_FourWhile_0 in mem
    ld      ra,80(sp)
              #                    load from s0_FourWhile_0 in mem
    ld      s0,72(sp)
              #                    store to temp_13_arithop_17 in mem offset legal
    sw      a7,0(sp)
              #                    release a7 with temp_13_arithop_17
              #                    store to a_17 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with a_17
              #                    occupy a0 with temp_13_arithop_17
              #                    load from temp_13_arithop_17 in mem


    lw      a0,0(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: temp_11_arithop_17, tracked: true } |     a5:Freed { symidx: temp_0_cmp_26, tracked: true } |     a6:Freed { symidx: temp_12_arithop_17, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_14_ret_of_FourWhile:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_14_ret_of_FourWhile_47 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_14_ret_of_FourWhile_47:i32 
              #                          temp_14_ret_of_FourWhile_47 =  Call i32 FourWhile_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    FourWhile
              #                    store to temp_14_ret_of_FourWhile_47 in mem offset legal
    sw      a0,4(sp)
              #                          ret temp_14_ret_of_FourWhile_47 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to temp_14_ret_of_FourWhile_47 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_14_ret_of_FourWhile_47
              #                    occupy a0 with temp_14_ret_of_FourWhile_47
              #                    load from temp_14_ret_of_FourWhile_47 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
