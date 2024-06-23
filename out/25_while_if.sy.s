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
              #                          Define get_one_0 [a_16] -> get_one_ret_0 
    .globl get_one
    .type get_one,@function
get_one:
              #                    mem layout:|ra_get_one:8 at 16|s0_get_one:8 at 8|a:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_get_one_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_get_one_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          ret 1_0 
              #                    load from ra_get_one_0 in mem
    ld      ra,16(sp)
              #                    load from s0_get_one_0 in mem
    ld      s0,8(sp)
              #                    store to a_16 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with a_16
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
              #                    regtab 
              #                          Define deepWhileBr_0 [a_20, b_20] -> deepWhileBr_ret_0 
    .globl deepWhileBr
    .type deepWhileBr,@function
deepWhileBr:
              #                    mem layout:|ra_deepWhileBr:8 at 64|s0_deepWhileBr:8 at 56|a:4 at 52|b:4 at 48|c:4 at 44|temp_0_arithop:4 at 40|temp_1_cmp:1 at 39|none:3 at 36|d:4 at 32|temp_2_cmp:1 at 31|none:3 at 28|temp_3_arithop:4 at 24|temp_4_cmp:1 at 23|none:3 at 20|e:4 at 16|temp_5_arithop:4 at 12|temp_6_ret_of_get_one:4 at 8|temp_7_cmp:1 at 7|none:3 at 4|temp_8_arithop:4 at 0
    addi    sp,sp,-72
              #                    store to ra_deepWhileBr_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_deepWhileBr_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc i32 c_22 
              #                          alloc i32 temp_0_arithop_22 
              #                          alloc i1 temp_1_cmp_25 
              #                          alloc i32 d_27 
              #                          alloc i1 temp_2_cmp_30 
              #                          alloc i32 temp_3_arithop_32 
              #                          alloc i1 temp_4_cmp_34 
              #                          alloc i32 e_36 
              #                          alloc i32 temp_5_arithop_36 
              #                          alloc i32 temp_6_ret_of_get_one_39 
              #                          alloc i1 temp_7_cmp_39 
              #                          alloc i32 temp_8_arithop_41 
              #                    regtab     a0:Freed { symidx: a_20, tracked: true } |     a1:Freed { symidx: b_20, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var c_22:i32 
              #                          new_var temp_0_arithop_22:i32 
              #                          temp_0_arithop_22 = Add i32 a_20, b_20 
              #                    occupy a0 with a_20
              #                    occupy a1 with b_20
              #                    occupy a2 with temp_0_arithop_22
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          c_22 = i32 temp_0_arithop_22 
              #                    occupy a2 with temp_0_arithop_22
              #                    occupy a3 with c_22
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: while.head_26 
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: a_20, tracked: true } |     a1:Freed { symidx: b_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a3:Freed { symidx: c_22, tracked: true } | 
              #                          label while.head_26: 
.while.head_26:
              #                          new_var temp_1_cmp_25:i1 
              #                          temp_1_cmp_25 = icmp i32 Slt c_22, 75_0 
              #                    occupy a3 with c_22
              #                    occupy a4 with 75_0
    li      a4, 75
              #                    occupy a5 with temp_1_cmp_25
    slt     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          br i1 temp_1_cmp_25, label while.body_26, label while.exit_26 
              #                    occupy a5 with temp_1_cmp_25
              #                    free a5
              #                    occupy a5 with temp_1_cmp_25
    bnez    a5, .while.body_26
              #                    free a5
    j       .while.exit_26
              #                    regtab     a0:Freed { symidx: a_20, tracked: true } |     a1:Freed { symidx: b_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a3:Freed { symidx: c_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label while.body_26: 
.while.body_26:
              #                          new_var d_27:i32 
              #                          d_27 = i32 42_0 
              #                    occupy a4 with d_27
    li      a4, 42
              #                    free a4
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_20, tracked: true } |     a1:Freed { symidx: b_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a3:Freed { symidx: c_22, tracked: true } |     a4:Freed { symidx: d_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_2_cmp_30:i1 
              #                          temp_2_cmp_30 = icmp i32 Slt c_22, 100_0 
              #                    occupy a3 with c_22
              #                    occupy a6 with 100_0
    li      a6, 100
              #                    occupy a7 with temp_2_cmp_30
    slt     a7,a3,a6
              #                    free a3
              #                    free a6
              #                    free a7
              #                          br i1 temp_2_cmp_30, label branch_true_31, label branch_false_31 
              #                    occupy a7 with temp_2_cmp_30
              #                    free a7
              #                    occupy a7 with temp_2_cmp_30
    bnez    a7, .branch_true_31
              #                    free a7
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: a_20, tracked: true } |     a1:Freed { symidx: b_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a3:Freed { symidx: c_22, tracked: true } |     a4:Freed { symidx: d_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } | 
              #                          label branch_true_31: 
.branch_true_31:
              #                          new_var temp_3_arithop_32:i32 
              #                          temp_3_arithop_32 = Add i32 c_22, d_27 
              #                    occupy a3 with c_22
              #                    occupy a4 with d_27
              #                    occupy a6 with temp_3_arithop_32
    add     a6,a3,a4
              #                    free a3
              #                    free a4
              #                    free a6
              #                          c_22 = i32 temp_3_arithop_32 
              #                    occupy a6 with temp_3_arithop_32
              #                    occupy a3 with c_22
    mv      a3, a6
              #                    free a6
              #                    free a3
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: a_20, tracked: true } |     a1:Freed { symidx: b_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a3:Freed { symidx: c_22, tracked: true } |     a4:Freed { symidx: d_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_3_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_4_cmp_34:i1 
              #                          temp_4_cmp_34 = icmp i32 Sgt c_22, 99_0 
              #                    occupy a3 with c_22
              #                    occupy s1 with 99_0
    li      s1, 99
              #                    occupy s2 with temp_4_cmp_34
    slt     s2,s1,a3
              #                    free a3
              #                    free s1
              #                    free s2
              #                          br i1 temp_4_cmp_34, label branch_true_35, label branch_false_35 
              #                    occupy s2 with temp_4_cmp_34
              #                    free s2
              #                    occupy s2 with temp_4_cmp_34
    bnez    s2, .branch_true_35
              #                    free s2
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: a_20, tracked: true } |     a1:Freed { symidx: b_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a3:Freed { symidx: c_22, tracked: true } |     a4:Freed { symidx: d_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_3_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } |     s2:Freed { symidx: temp_4_cmp_34, tracked: true } | 
              #                          label branch_true_35: 
.branch_true_35:
              #                          new_var e_36:i32 
              #                          new_var temp_5_arithop_36:i32 
              #                          temp_5_arithop_36 = Mul i32 d_27, 2_0 
              #                    occupy a4 with d_27
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy s3 with temp_5_arithop_36
    mul     s3,a4,s1
              #                    free a4
              #                    free s1
              #                    free s3
              #                          e_36 = i32 temp_5_arithop_36 
              #                    occupy s3 with temp_5_arithop_36
              #                    occupy s4 with e_36
    mv      s4, s3
              #                    free s3
              #                    free s4
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: a_20, tracked: true } |     a1:Freed { symidx: b_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a3:Freed { symidx: c_22, tracked: true } |     a4:Freed { symidx: d_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_3_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } |     s2:Freed { symidx: temp_4_cmp_34, tracked: true } |     s3:Freed { symidx: temp_5_arithop_36, tracked: true } |     s4:Freed { symidx: e_36, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_6_ret_of_get_one_39:i32 
              #                          temp_6_ret_of_get_one_39 =  Call i32 get_one_0(0_0) 
              #                    saved register dumping to mem
              #                    store to temp_4_cmp_34 in mem offset legal
    sb      s2,23(sp)
              #                    release s2 with temp_4_cmp_34
              #                    store to temp_5_arithop_36 in mem offset legal
    sw      s3,12(sp)
              #                    release s3 with temp_5_arithop_36
              #                    store to e_36 in mem offset legal
    sw      s4,16(sp)
              #                    release s4 with e_36
              #                    store to a_20 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with a_20
              #                    store to b_20 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with b_20
              #                    store to temp_0_arithop_22 in mem offset legal
    sw      a2,40(sp)
              #                    release a2 with temp_0_arithop_22
              #                    store to c_22 in mem offset legal
    sw      a3,44(sp)
              #                    release a3 with c_22
              #                    store to d_27 in mem offset legal
    sw      a4,32(sp)
              #                    release a4 with d_27
              #                    store to temp_1_cmp_25 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_25
              #                    store to temp_3_arithop_32 in mem offset legal
    sw      a6,24(sp)
              #                    release a6 with temp_3_arithop_32
              #                    store to temp_2_cmp_30 in mem offset legal
    sb      a7,31(sp)
              #                    release a7 with temp_2_cmp_30
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    get_one
              #                    store to temp_6_ret_of_get_one_39 in mem offset legal
    sw      a0,8(sp)
              #                          new_var temp_7_cmp_39:i1 
              #                          temp_7_cmp_39 = icmp i32 Eq temp_6_ret_of_get_one_39, 1_0 
              #                    occupy a0 with temp_6_ret_of_get_one_39
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_7_cmp_39
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_7_cmp_39, label branch_true_40, label branch_false_40 
              #                    occupy a2 with temp_7_cmp_39
              #                    free a2
              #                    occupy a2 with temp_7_cmp_39
    bnez    a2, .branch_true_40
              #                    free a2
    j       .branch_false_40
              #                    regtab     a0:Freed { symidx: temp_6_ret_of_get_one_39, tracked: true } |     a2:Freed { symidx: temp_7_cmp_39, tracked: true } | 
              #                          label branch_true_40: 
.branch_true_40:
              #                          new_var temp_8_arithop_41:i32 
              #                          temp_8_arithop_41 = Mul i32 e_36, 2_0 
              #                    occupy a1 with e_36
              #                    load from e_36 in mem


    lw      a1,16(sp)
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a4 with temp_8_arithop_41
    mul     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          c_22 = i32 temp_8_arithop_41 
              #                    occupy a4 with temp_8_arithop_41
              #                    occupy a5 with c_22
    mv      a5, a4
              #                    free a4
              #                    free a5
              #                          jump label: branch_false_40 
              #                    store to e_36 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with e_36
              #                    store to c_22 in mem offset legal
    sw      a5,44(sp)
              #                    release a5 with c_22
              #                    store to temp_8_arithop_41 in mem offset legal
    sw      a4,0(sp)
              #                    release a4 with temp_8_arithop_41
    j       .branch_false_40
              #                    regtab     a0:Freed { symidx: temp_6_ret_of_get_one_39, tracked: true } |     a2:Freed { symidx: temp_7_cmp_39, tracked: true } | 
              #                          label branch_false_40: 
.branch_false_40:
              #                    regtab     a0:Freed { symidx: a_20, tracked: true } |     a1:Freed { symidx: b_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a3:Freed { symidx: c_22, tracked: true } |     a4:Freed { symidx: d_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_3_arithop_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } |     s2:Freed { symidx: temp_4_cmp_34, tracked: true } | 
              #                          label branch_false_35: 
.branch_false_35:
              #                    regtab     a0:Freed { symidx: a_20, tracked: true } |     a1:Freed { symidx: b_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a3:Freed { symidx: c_22, tracked: true } |     a4:Freed { symidx: d_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a7:Freed { symidx: temp_2_cmp_30, tracked: true } | 
              #                          label branch_false_31: 
.branch_false_31:
              #                          jump label: while.head_26 
              #                    store to temp_1_cmp_25 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_25
              #                    store to temp_2_cmp_30 in mem offset legal
    sb      a7,31(sp)
              #                    release a7 with temp_2_cmp_30
              #                    store to d_27 in mem offset legal
    sw      a4,32(sp)
              #                    release a4 with d_27
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: a_20, tracked: true } |     a1:Freed { symidx: b_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a3:Freed { symidx: c_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label while.exit_26: 
.while.exit_26:
              #                          ret c_22 
              #                    load from ra_deepWhileBr_0 in mem
    ld      ra,64(sp)
              #                    load from s0_deepWhileBr_0 in mem
    ld      s0,56(sp)
              #                    store to c_22 in mem offset legal
    sw      a3,44(sp)
              #                    release a3 with c_22
              #                    store to a_20 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with a_20
              #                    occupy a0 with c_22
              #                    load from c_22 in mem


    lw      a0,44(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|p:4 at 4|temp_9_ret_of_deepWhileBr:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 p_45 
              #                          alloc i32 temp_9_ret_of_deepWhileBr_45 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var p_45:i32 
              #                          p_45 = i32 2_0 
              #                    occupy a0 with p_45
    li      a0, 2
              #                    free a0
              #                          new_var temp_9_ret_of_deepWhileBr_45:i32 
              #                          temp_9_ret_of_deepWhileBr_45 =  Call i32 deepWhileBr_0(p_45, p_45) 
              #                    saved register dumping to mem
              #                    store to p_45 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with p_45
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_p_45_0
              #                    load from p_45 in mem


    lw      a0,4(sp)
              #                    occupy a1 with _anonymous_of_p_45_0
              #                    load from p_45 in mem


    lw      a1,4(sp)
              #                    arg load ended


    call    deepWhileBr
              #                    store to temp_9_ret_of_deepWhileBr_45 in mem offset legal
    sw      a0,0(sp)
              #                          p_45 = i32 temp_9_ret_of_deepWhileBr_45 
              #                    occupy a0 with temp_9_ret_of_deepWhileBr_45
              #                    occupy a1 with p_45
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void putint_0(p_45) 
              #                    saved register dumping to mem
              #                    store to temp_9_ret_of_deepWhileBr_45 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_9_ret_of_deepWhileBr_45
              #                    store to p_45 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with p_45
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_p_45_0
              #                    load from p_45 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
