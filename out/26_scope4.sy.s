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
              #                          Define getA_0 [] -> getA_ret_0 
    .globl getA
    .type getA,@function
getA:
              #                    mem layout:|ra_getA:8 at 24|s0_getA:8 at 16|temp_0_ptr2globl:4 at 12|temp_1_arithop:4 at 8|temp_2_ptr2globl:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_getA_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_getA_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                          alloc i32 temp_0_ptr2globl_20 
              #                          alloc i32 temp_1_arithop_20 
              #                          alloc i32 temp_2_ptr2globl_20 
              #                    regtab 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_0_ptr2globl_20:i32 
              #                          temp_0_ptr2globl_20 = load *count_0:ptr->i32 
              #                    occupy a0 with *count_0
              #                       load label count as ptr to reg
    la      a0, count
              #                    occupy reg a0 with *count_0
              #                    occupy a1 with temp_0_ptr2globl_20
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_1_arithop_20:i32 
              #                          temp_1_arithop_20 = Add i32 temp_0_ptr2globl_20, 1_0 
              #                    occupy a1 with temp_0_ptr2globl_20
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_1_arithop_20
    add     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_1_arithop_20:i32 *count_0:ptr->i32 
              #                    occupy a4 with *count_0
              #                       load label count as ptr to reg
    la      a4, count
              #                    occupy reg a4 with *count_0
              #                    occupy a3 with temp_1_arithop_20
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          new_var temp_2_ptr2globl_20:i32 
              #                          temp_2_ptr2globl_20 = load *count_0:ptr->i32 
              #                    occupy a5 with *count_0
              #                       load label count as ptr to reg
    la      a5, count
              #                    occupy reg a5 with *count_0
              #                    occupy a6 with temp_2_ptr2globl_20
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          ret temp_2_ptr2globl_20 
              #                    load from ra_getA_0 in mem
    ld      ra,24(sp)
              #                    load from s0_getA_0 in mem
    ld      s0,16(sp)
              #                    store to temp_2_ptr2globl_20 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_2_ptr2globl_20
              #                    occupy a0 with temp_2_ptr2globl_20
              #                    load from temp_2_ptr2globl_20 in mem


    lw      a0,4(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a3:Freed { symidx: temp_1_arithop_20, tracked: true } | 
              #                    regtab 
              #                          Define f1_0 [a_23] -> f1_ret_0 
    .globl f1
    .type f1,@function
f1:
              #                    mem layout:|ra_f1:8 at 72|s0_f1:8 at 64|a:4 at 60|temp_3_ptr2globl:4 at 56|temp_4_arithop:4 at 52|temp_5_ret_of_getA:4 at 48|temp_6_ptr2globl:4 at 44|temp_7_arithop:4 at 40|temp_8_:1 at 39|none:3 at 36|temp_9_ret_of_getA:4 at 32|a:4 at 28|temp_10_ptr2globl:4 at 24|temp_11_arithop:4 at 20|temp_12_ptr2globl:4 at 16|temp_13_arithop:4 at 12|temp_14_ptr2globl:4 at 8|temp_15_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-80
              #                    store to ra_f1_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_f1_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          alloc i32 temp_3_ptr2globl_25 
              #                          alloc i32 temp_4_arithop_25 
              #                          alloc i32 temp_5_ret_of_getA_25 
              #                          alloc i32 temp_6_ptr2globl_25 
              #                          alloc i32 temp_7_arithop_25 
              #                          alloc i1 temp_8__274 
              #                          alloc i32 temp_9_ret_of_getA_32 
              #                          alloc i32 a_32 
              #                          alloc i32 temp_10_ptr2globl_32 
              #                          alloc i32 temp_11_arithop_32 
              #                          alloc i32 temp_12_ptr2globl_29 
              #                          alloc i32 temp_13_arithop_29 
              #                          alloc i32 temp_14_ptr2globl_25 
              #                          alloc i32 temp_15_arithop_25 
              #                    regtab     a0:Freed { symidx: a_23, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_3_ptr2globl_25:i32 
              #                          temp_3_ptr2globl_25 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a2 with temp_3_ptr2globl_25
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_4_arithop_25:i32 
              #                          temp_4_arithop_25 = Add i32 temp_3_ptr2globl_25, a_23 
              #                    occupy a2 with temp_3_ptr2globl_25
              #                    occupy a0 with a_23
              #                    occupy a3 with temp_4_arithop_25
    add     a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                          store temp_4_arithop_25:i32 *sum_0:ptr->i32 
              #                    occupy a4 with *sum_0
              #                       load label sum as ptr to reg
    la      a4, sum
              #                    occupy reg a4 with *sum_0
              #                    occupy a3 with temp_4_arithop_25
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          new_var temp_5_ret_of_getA_25:i32 
              #                          temp_5_ret_of_getA_25 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    store to a_23 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with a_23
              #                    store to temp_3_ptr2globl_25 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with temp_3_ptr2globl_25
              #                    store to temp_4_arithop_25 in mem offset legal
    sw      a3,52(sp)
              #                    release a3 with temp_4_arithop_25
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_5_ret_of_getA_25 in mem offset legal
    sw      a0,48(sp)
              #                          a_23 = i32 temp_5_ret_of_getA_25 
              #                    occupy a0 with temp_5_ret_of_getA_25
              #                    occupy a1 with a_23
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_6_ptr2globl_25:i32 
              #                          temp_6_ptr2globl_25 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_6_ptr2globl_25
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_7_arithop_25:i32 
              #                          temp_7_arithop_25 = Add i32 temp_6_ptr2globl_25, a_23 
              #                    occupy a3 with temp_6_ptr2globl_25
              #                    occupy a1 with a_23
              #                    occupy a4 with temp_7_arithop_25
    add     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          store temp_7_arithop_25:i32 *sum_0:ptr->i32 
              #                    occupy a5 with *sum_0
              #                       load label sum as ptr to reg
    la      a5, sum
              #                    occupy reg a5 with *sum_0
              #                    occupy a4 with temp_7_arithop_25
    sw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getA_25, tracked: true } |     a1:Freed { symidx: a_23, tracked: true } |     a3:Freed { symidx: temp_6_ptr2globl_25, tracked: true } |     a4:Freed { symidx: temp_7_arithop_25, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_8__274:i1 
              #                          temp_8__274 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_8__274
    xor     a6,a2,a5
    snez    a6, a6
              #                    free a2
              #                    free a5
              #                    free a6
              #                          br i1 temp_8__274, label branch_true_31, label branch_false_31 
              #                    occupy a6 with temp_8__274
              #                    free a6
              #                    occupy a6 with temp_8__274
    bnez    a6, .branch_true_31
              #                    free a6
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getA_25, tracked: true } |     a1:Freed { symidx: a_23, tracked: true } |     a3:Freed { symidx: temp_6_ptr2globl_25, tracked: true } |     a4:Freed { symidx: temp_7_arithop_25, tracked: true } |     a6:Freed { symidx: temp_8__274, tracked: true } | 
              #                          label branch_true_31: 
.branch_true_31:
              #                          new_var temp_9_ret_of_getA_32:i32 
              #                          temp_9_ret_of_getA_32 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    store to temp_5_ret_of_getA_25 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_5_ret_of_getA_25
              #                    store to a_23 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with a_23
              #                    store to temp_6_ptr2globl_25 in mem offset legal
    sw      a3,44(sp)
              #                    release a3 with temp_6_ptr2globl_25
              #                    store to temp_7_arithop_25 in mem offset legal
    sw      a4,40(sp)
              #                    release a4 with temp_7_arithop_25
              #                    store to temp_8__274 in mem offset legal
    sb      a6,39(sp)
              #                    release a6 with temp_8__274
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_9_ret_of_getA_32 in mem offset legal
    sw      a0,32(sp)
              #                          a_32 = i32 temp_9_ret_of_getA_32 
              #                    occupy a0 with temp_9_ret_of_getA_32
              #                    occupy a1 with a_32
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_10_ptr2globl_32:i32 
              #                          temp_10_ptr2globl_32 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_10_ptr2globl_32
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_11_arithop_32:i32 
              #                          temp_11_arithop_32 = Add i32 temp_10_ptr2globl_32, a_32 
              #                    occupy a3 with temp_10_ptr2globl_32
              #                    occupy a1 with a_32
              #                    occupy a4 with temp_11_arithop_32
    add     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          store temp_11_arithop_32:i32 *sum_0:ptr->i32 
              #                    occupy a5 with *sum_0
              #                       load label sum as ptr to reg
    la      a5, sum
              #                    occupy reg a5 with *sum_0
              #                    occupy a4 with temp_11_arithop_32
    sw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                          jump label: branch_false_31 
              #                    store to a_32 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with a_32
              #                    store to temp_9_ret_of_getA_32 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_9_ret_of_getA_32
              #                    store to temp_11_arithop_32 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_11_arithop_32
              #                    store to temp_10_ptr2globl_32 in mem offset legal
    sw      a3,24(sp)
              #                    release a3 with temp_10_ptr2globl_32
              #                    occupy a1 with _anonymous_of_a_23_0
              #                    load from a_23 in mem


    lw      a1,60(sp)
              #                    occupy a0 with _anonymous_of_temp_5_ret_of_getA_25_0
              #                    load from temp_5_ret_of_getA_25 in mem


    lw      a0,48(sp)
              #                    occupy a4 with _anonymous_of_temp_7_arithop_25_0
              #                    load from temp_7_arithop_25 in mem


    lw      a4,40(sp)
              #                    occupy a6 with _anonymous_of_temp_8__274_0
              #                    load from temp_8__274 in mem
    lb      a6,39(sp)
              #                    occupy a3 with _anonymous_of_temp_6_ptr2globl_25_0
              #                    load from temp_6_ptr2globl_25 in mem


    lw      a3,44(sp)
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getA_25, tracked: true } |     a1:Freed { symidx: a_23, tracked: true } |     a3:Freed { symidx: temp_6_ptr2globl_25, tracked: true } |     a4:Freed { symidx: temp_7_arithop_25, tracked: true } |     a6:Freed { symidx: temp_8__274, tracked: true } | 
              #                          label branch_false_31: 
.branch_false_31:
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getA_25, tracked: true } |     a1:Freed { symidx: a_23, tracked: true } |     a3:Freed { symidx: temp_6_ptr2globl_25, tracked: true } |     a4:Freed { symidx: temp_7_arithop_25, tracked: true } |     a6:Freed { symidx: temp_8__274, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_12_ptr2globl_29:i32 
              #                          temp_12_ptr2globl_29 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a5 with temp_12_ptr2globl_29
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          new_var temp_13_arithop_29:i32 
              #                          temp_13_arithop_29 = Add i32 temp_12_ptr2globl_29, a_23 
              #                    occupy a5 with temp_12_ptr2globl_29
              #                    occupy a1 with a_23
              #                    occupy a7 with temp_13_arithop_29
    add     a7,a5,a1
              #                    free a5
              #                    free a1
              #                    free a7
              #                          store temp_13_arithop_29:i32 *sum_0:ptr->i32 
              #                    occupy s1 with *sum_0
              #                       load label sum as ptr to reg
    la      s1, sum
              #                    occupy reg s1 with *sum_0
              #                    occupy a7 with temp_13_arithop_29
    sw      a7,0(s1)
              #                    free a7
              #                    free s1
              #                          new_var temp_14_ptr2globl_25:i32 
              #                          temp_14_ptr2globl_25 = load *sum_0:ptr->i32 
              #                    occupy s2 with *sum_0
              #                       load label sum as ptr to reg
    la      s2, sum
              #                    occupy reg s2 with *sum_0
              #                    occupy s3 with temp_14_ptr2globl_25
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_15_arithop_25:i32 
              #                          temp_15_arithop_25 = Add i32 temp_14_ptr2globl_25, a_23 
              #                    occupy s3 with temp_14_ptr2globl_25
              #                    occupy a1 with a_23
              #                    occupy s4 with temp_15_arithop_25
    add     s4,s3,a1
              #                    free s3
              #                    free a1
              #                    free s4
              #                          store temp_15_arithop_25:i32 *sum_0:ptr->i32 
              #                    occupy s5 with *sum_0
              #                       load label sum as ptr to reg
    la      s5, sum
              #                    occupy reg s5 with *sum_0
              #                    occupy s4 with temp_15_arithop_25
    sw      s4,0(s5)
              #                    free s4
              #                    free s5
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getA_25, tracked: true } |     a1:Freed { symidx: a_23, tracked: true } |     a3:Freed { symidx: temp_6_ptr2globl_25, tracked: true } |     a4:Freed { symidx: temp_7_arithop_25, tracked: true } |     a5:Freed { symidx: temp_12_ptr2globl_29, tracked: true } |     a6:Freed { symidx: temp_8__274, tracked: true } |     a7:Freed { symidx: temp_13_arithop_29, tracked: true } |     s3:Freed { symidx: temp_14_ptr2globl_25, tracked: true } |     s4:Freed { symidx: temp_15_arithop_25, tracked: true } | 
              #                    regtab 
              #                          Define f2_0 [] -> f2_ret_0 
    .globl f2
    .type f2,@function
f2:
              #                    mem layout:|ra_f2:8 at 40|s0_f2:8 at 32|temp_16_ptr2globl:4 at 28|temp_17_ptr2globl:4 at 24|temp_18_arithop:4 at 20|temp_19_ret_of_getA:4 at 16|a:4 at 12|temp_20_ptr2globl:4 at 8|temp_21_ptr2globl:4 at 4|temp_22_arithop:4 at 0
    addi    sp,sp,-48
              #                    store to ra_f2_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_f2_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 temp_16_ptr2globl_38 
              #                          alloc i32 temp_17_ptr2globl_38 
              #                          alloc i32 temp_18_arithop_38 
              #                          alloc i32 temp_19_ret_of_getA_42 
              #                          alloc i32 a_42 
              #                          alloc i32 temp_20_ptr2globl_40 
              #                          alloc i32 temp_21_ptr2globl_40 
              #                          alloc i32 temp_22_arithop_40 
              #                    regtab 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_16_ptr2globl_38:i32 
              #                          temp_16_ptr2globl_38 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with temp_16_ptr2globl_38
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_17_ptr2globl_38:i32 
              #                          temp_17_ptr2globl_38 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_17_ptr2globl_38
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_18_arithop_38:i32 
              #                          temp_18_arithop_38 = Add i32 temp_17_ptr2globl_38, temp_16_ptr2globl_38 
              #                    occupy a3 with temp_17_ptr2globl_38
              #                    occupy a1 with temp_16_ptr2globl_38
              #                    occupy a4 with temp_18_arithop_38
    add     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          store temp_18_arithop_38:i32 *sum_0:ptr->i32 
              #                    occupy a5 with *sum_0
              #                       load label sum as ptr to reg
    la      a5, sum
              #                    occupy reg a5 with *sum_0
              #                    occupy a4 with temp_18_arithop_38
    sw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                          new_var temp_19_ret_of_getA_42:i32 
              #                          temp_19_ret_of_getA_42 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    store to temp_16_ptr2globl_38 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with temp_16_ptr2globl_38
              #                    store to temp_17_ptr2globl_38 in mem offset legal
    sw      a3,24(sp)
              #                    release a3 with temp_17_ptr2globl_38
              #                    store to temp_18_arithop_38 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_18_arithop_38
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_19_ret_of_getA_42 in mem offset legal
    sw      a0,16(sp)
              #                          a_42 = i32 temp_19_ret_of_getA_42 
              #                    occupy a0 with temp_19_ret_of_getA_42
              #                    occupy a1 with a_42
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_20_ptr2globl_40:i32 
              #                          temp_20_ptr2globl_40 = load *a_0:ptr->i32 
              #                    occupy a2 with *a_0
              #                       load label a as ptr to reg
    la      a2, a
              #                    occupy reg a2 with *a_0
              #                    occupy a3 with temp_20_ptr2globl_40
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_21_ptr2globl_40:i32 
              #                          temp_21_ptr2globl_40 = load *sum_0:ptr->i32 
              #                    occupy a4 with *sum_0
              #                       load label sum as ptr to reg
    la      a4, sum
              #                    occupy reg a4 with *sum_0
              #                    occupy a5 with temp_21_ptr2globl_40
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_22_arithop_40:i32 
              #                          temp_22_arithop_40 = Add i32 temp_21_ptr2globl_40, temp_20_ptr2globl_40 
              #                    occupy a5 with temp_21_ptr2globl_40
              #                    occupy a3 with temp_20_ptr2globl_40
              #                    occupy a6 with temp_22_arithop_40
    add     a6,a5,a3
              #                    free a5
              #                    free a3
              #                    free a6
              #                          store temp_22_arithop_40:i32 *sum_0:ptr->i32 
              #                    occupy a7 with *sum_0
              #                       load label sum as ptr to reg
    la      a7, sum
              #                    occupy reg a7 with *sum_0
              #                    occupy a6 with temp_22_arithop_40
    sw      a6,0(a7)
              #                    free a6
              #                    free a7
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_getA_42, tracked: true } |     a1:Freed { symidx: a_42, tracked: true } |     a3:Freed { symidx: temp_20_ptr2globl_40, tracked: true } |     a5:Freed { symidx: temp_21_ptr2globl_40, tracked: true } |     a6:Freed { symidx: temp_22_arithop_40, tracked: true } | 
              #                    regtab 
              #                          Define f3_0 [] -> f3_ret_0 
    .globl f3
    .type f3,@function
f3:
              #                    mem layout:|ra_f3:8 at 56|s0_f3:8 at 48|temp_23_ret_of_getA:4 at 44|a:4 at 40|temp_24_ptr2globl:4 at 36|temp_25_arithop:4 at 32|temp_26_ret_of_getA:4 at 28|temp_27_ptr2globl:4 at 24|temp_28_arithop:4 at 20|temp_29_ret_of_getA:4 at 16|a:4 at 12|temp_30_ptr2globl:4 at 8|temp_31_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-64
              #                    store to ra_f3_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_f3_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                          alloc i32 temp_23_ret_of_getA_46 
              #                          alloc i32 a_46 
              #                          alloc i32 temp_24_ptr2globl_46 
              #                          alloc i32 temp_25_arithop_46 
              #                          alloc i32 temp_26_ret_of_getA_51 
              #                          alloc i32 temp_27_ptr2globl_50 
              #                          alloc i32 temp_28_arithop_50 
              #                          alloc i32 temp_29_ret_of_getA_50 
              #                          alloc i32 a_50 
              #                          alloc i32 temp_30_ptr2globl_49 
              #                          alloc i32 temp_31_arithop_49 
              #                    regtab 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_23_ret_of_getA_46:i32 
              #                          temp_23_ret_of_getA_46 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_23_ret_of_getA_46 in mem offset legal
    sw      a0,44(sp)
              #                          a_46 = i32 temp_23_ret_of_getA_46 
              #                    occupy a0 with temp_23_ret_of_getA_46
              #                    occupy a1 with a_46
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_24_ptr2globl_46:i32 
              #                          temp_24_ptr2globl_46 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_24_ptr2globl_46
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_25_arithop_46:i32 
              #                          temp_25_arithop_46 = Add i32 temp_24_ptr2globl_46, a_46 
              #                    occupy a3 with temp_24_ptr2globl_46
              #                    occupy a1 with a_46
              #                    occupy a4 with temp_25_arithop_46
    add     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          store temp_25_arithop_46:i32 *sum_0:ptr->i32 
              #                    occupy a5 with *sum_0
              #                       load label sum as ptr to reg
    la      a5, sum
              #                    occupy reg a5 with *sum_0
              #                    occupy a4 with temp_25_arithop_46
    sw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                          new_var temp_26_ret_of_getA_51:i32 
              #                          temp_26_ret_of_getA_51 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    store to temp_23_ret_of_getA_46 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_23_ret_of_getA_46
              #                    store to a_46 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with a_46
              #                    store to temp_24_ptr2globl_46 in mem offset legal
    sw      a3,36(sp)
              #                    release a3 with temp_24_ptr2globl_46
              #                    store to temp_25_arithop_46 in mem offset legal
    sw      a4,32(sp)
              #                    release a4 with temp_25_arithop_46
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_26_ret_of_getA_51 in mem offset legal
    sw      a0,28(sp)
              #                          a_46 = i32 temp_26_ret_of_getA_51 
              #                    occupy a0 with temp_26_ret_of_getA_51
              #                    occupy a1 with a_46
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_27_ptr2globl_50:i32 
              #                          temp_27_ptr2globl_50 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_27_ptr2globl_50
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_28_arithop_50:i32 
              #                          temp_28_arithop_50 = Add i32 temp_27_ptr2globl_50, a_46 
              #                    occupy a3 with temp_27_ptr2globl_50
              #                    occupy a1 with a_46
              #                    occupy a4 with temp_28_arithop_50
    add     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          store temp_28_arithop_50:i32 *sum_0:ptr->i32 
              #                    occupy a5 with *sum_0
              #                       load label sum as ptr to reg
    la      a5, sum
              #                    occupy reg a5 with *sum_0
              #                    occupy a4 with temp_28_arithop_50
    sw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                          new_var temp_29_ret_of_getA_50:i32 
              #                          temp_29_ret_of_getA_50 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    store to temp_26_ret_of_getA_51 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_26_ret_of_getA_51
              #                    store to a_46 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with a_46
              #                    store to temp_27_ptr2globl_50 in mem offset legal
    sw      a3,24(sp)
              #                    release a3 with temp_27_ptr2globl_50
              #                    store to temp_28_arithop_50 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_28_arithop_50
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_29_ret_of_getA_50 in mem offset legal
    sw      a0,16(sp)
              #                          a_50 = i32 temp_29_ret_of_getA_50 
              #                    occupy a0 with temp_29_ret_of_getA_50
              #                    occupy a1 with a_50
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_30_ptr2globl_49:i32 
              #                          temp_30_ptr2globl_49 = load *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_30_ptr2globl_49
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_31_arithop_49:i32 
              #                          temp_31_arithop_49 = Add i32 temp_30_ptr2globl_49, a_46 
              #                    occupy a3 with temp_30_ptr2globl_49
              #                    occupy a4 with a_46
              #                    load from a_46 in mem


    lw      a4,40(sp)
              #                    occupy a5 with temp_31_arithop_49
    add     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          store temp_31_arithop_49:i32 *sum_0:ptr->i32 
              #                    occupy a6 with *sum_0
              #                       load label sum as ptr to reg
    la      a6, sum
              #                    occupy reg a6 with *sum_0
              #                    occupy a5 with temp_31_arithop_49
    sw      a5,0(a6)
              #                    free a5
              #                    free a6
              #                    regtab     a0:Freed { symidx: temp_29_ret_of_getA_50, tracked: true } |     a1:Freed { symidx: a_50, tracked: true } |     a3:Freed { symidx: temp_30_ptr2globl_49, tracked: true } |     a4:Freed { symidx: a_46, tracked: true } |     a5:Freed { symidx: temp_31_arithop_49, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 112|s0_main:8 at 104|temp_32_ret_of_getA:4 at 100|temp_33_ptr2globl:4 at 96|temp_34_ptr2globl:4 at 92|temp_35_arithop:4 at 88|temp_36_ret_of_getA:4 at 84|a:4 at 80|temp_37_ret_of_getA:4 at 76|a:4 at 72|temp_38_ret_of_getA:4 at 68|a:4 at 64|temp_39_ret_of_getA:4 at 60|a:4 at 56|temp_40_ret_of_getA:4 at 52|a:4 at 48|temp_41_ret_of_getA:4 at 44|temp_42_:1 at 43|temp_43_:1 at 42|none:2 at 40|i:4 at 36|temp_44_cmp:1 at 35|temp_45_:1 at 34|temp_46_:1 at 33|none:1 at 32|temp_47_ret_of_getA:4 at 28|temp_48_cmp:1 at 27|none:3 at 24|temp_49_ret_of_getA:4 at 20|a:4 at 16|temp_50_arithop:4 at 12|temp_51_ret_of_getA:4 at 8|temp_52_arithop:4 at 4|temp_53_ptr2globl:4 at 0
    addi    sp,sp,-120
              #                    store to ra_main_0 in mem offset legal
    sd      ra,112(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,104(sp)
    addi    s0,sp,120
              #                          alloc i32 temp_32_ret_of_getA_57 
              #                          alloc i32 temp_33_ptr2globl_57 
              #                          alloc i32 temp_34_ptr2globl_57 
              #                          alloc i32 temp_35_arithop_57 
              #                          alloc i32 temp_36_ret_of_getA_57 
              #                          alloc i32 a_57 
              #                          alloc i32 temp_37_ret_of_getA_66 
              #                          alloc i32 a_66 
              #                          alloc i32 temp_38_ret_of_getA_74 
              #                          alloc i32 a_74 
              #                          alloc i32 temp_39_ret_of_getA_76 
              #                          alloc i32 a_76 
              #                          alloc i32 temp_40_ret_of_getA_78 
              #                          alloc i32 a_78 
              #                          alloc i32 temp_41_ret_of_getA_86 
              #                          alloc i1 temp_42__1857 
              #                          alloc i1 temp_43__1886 
              #                          alloc i32 i_99 
              #                          alloc i1 temp_44_cmp_101 
              #                          alloc i1 temp_45__1984 
              #                          alloc i1 temp_46__2013 
              #                          alloc i32 temp_47_ret_of_getA_106 
              #                          alloc i1 temp_48_cmp_116 
              #                          alloc i32 temp_49_ret_of_getA_118 
              #                          alloc i32 a_118 
              #                          alloc i32 temp_50_arithop_118 
              #                          alloc i32 temp_51_ret_of_getA_115 
              #                          alloc i32 temp_52_arithop_103 
              #                          alloc i32 temp_53_ptr2globl_57 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          store 0_0:i32 *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_32_ret_of_getA_57:i32 
              #                          temp_32_ret_of_getA_57 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_32_ret_of_getA_57 in mem offset legal
    sw      a0,100(sp)
              #                          store temp_32_ret_of_getA_57:i32 *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a0 with temp_32_ret_of_getA_57
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_33_ptr2globl_57:i32 
              #                          temp_33_ptr2globl_57 = load *a_0:ptr->i32 
              #                    occupy a2 with *a_0
              #                       load label a as ptr to reg
    la      a2, a
              #                    occupy reg a2 with *a_0
              #                    occupy a3 with temp_33_ptr2globl_57
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_34_ptr2globl_57:i32 
              #                          temp_34_ptr2globl_57 = load *sum_0:ptr->i32 
              #                    occupy a4 with *sum_0
              #                       load label sum as ptr to reg
    la      a4, sum
              #                    occupy reg a4 with *sum_0
              #                    occupy a5 with temp_34_ptr2globl_57
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_35_arithop_57:i32 
              #                          temp_35_arithop_57 = Add i32 temp_34_ptr2globl_57, temp_33_ptr2globl_57 
              #                    occupy a5 with temp_34_ptr2globl_57
              #                    occupy a3 with temp_33_ptr2globl_57
              #                    occupy a6 with temp_35_arithop_57
    add     a6,a5,a3
              #                    free a5
              #                    free a3
              #                    free a6
              #                          store temp_35_arithop_57:i32 *sum_0:ptr->i32 
              #                    occupy a7 with *sum_0
              #                       load label sum as ptr to reg
    la      a7, sum
              #                    occupy reg a7 with *sum_0
              #                    occupy a6 with temp_35_arithop_57
    sw      a6,0(a7)
              #                    free a6
              #                    free a7
              #                          new_var temp_36_ret_of_getA_57:i32 
              #                          temp_36_ret_of_getA_57 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    store to temp_32_ret_of_getA_57 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_32_ret_of_getA_57
              #                    store to temp_33_ptr2globl_57 in mem offset legal
    sw      a3,96(sp)
              #                    release a3 with temp_33_ptr2globl_57
              #                    store to temp_34_ptr2globl_57 in mem offset legal
    sw      a5,92(sp)
              #                    release a5 with temp_34_ptr2globl_57
              #                    store to temp_35_arithop_57 in mem offset legal
    sw      a6,88(sp)
              #                    release a6 with temp_35_arithop_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_36_ret_of_getA_57 in mem offset legal
    sw      a0,84(sp)
              #                          a_57 = i32 temp_36_ret_of_getA_57 
              #                    occupy a0 with temp_36_ret_of_getA_57
              #                    occupy a1 with a_57
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void f1_0(a_57) 
              #                    saved register dumping to mem
              #                    store to temp_36_ret_of_getA_57 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_36_ret_of_getA_57
              #                    store to a_57 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with a_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_57_0
              #                    load from a_57 in mem


    lw      a0,80(sp)
              #                    arg load ended


    call    f1
              #                           Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                           Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                           Call void f1_0(a_57) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_57_0
              #                    load from a_57 in mem


    lw      a0,80(sp)
              #                    arg load ended


    call    f1
              #                           Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                           Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                          new_var temp_37_ret_of_getA_66:i32 
              #                          temp_37_ret_of_getA_66 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_37_ret_of_getA_66 in mem offset legal
    sw      a0,76(sp)
              #                          a_66 = i32 temp_37_ret_of_getA_66 
              #                    occupy a0 with temp_37_ret_of_getA_66
              #                    occupy a1 with a_66
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void f1_0(a_57) 
              #                    saved register dumping to mem
              #                    store to temp_37_ret_of_getA_66 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_37_ret_of_getA_66
              #                    store to a_66 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with a_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_57_0
              #                    load from a_57 in mem


    lw      a0,80(sp)
              #                    arg load ended


    call    f1
              #                           Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                           Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                          new_var temp_38_ret_of_getA_74:i32 
              #                          temp_38_ret_of_getA_74 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_38_ret_of_getA_74 in mem offset legal
    sw      a0,68(sp)
              #                          a_74 = i32 temp_38_ret_of_getA_74 
              #                    occupy a0 with temp_38_ret_of_getA_74
              #                    occupy a1 with a_74
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_39_ret_of_getA_76:i32 
              #                          temp_39_ret_of_getA_76 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    store to temp_38_ret_of_getA_74 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_38_ret_of_getA_74
              #                    store to a_74 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with a_74
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_39_ret_of_getA_76 in mem offset legal
    sw      a0,60(sp)
              #                          a_76 = i32 temp_39_ret_of_getA_76 
              #                    occupy a0 with temp_39_ret_of_getA_76
              #                    occupy a1 with a_76
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void f1_0(a_76) 
              #                    saved register dumping to mem
              #                    store to temp_39_ret_of_getA_76 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_39_ret_of_getA_76
              #                    store to a_76 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with a_76
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_76_0
              #                    load from a_76 in mem


    lw      a0,56(sp)
              #                    arg load ended


    call    f1
              #                           Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                           Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                          new_var temp_40_ret_of_getA_78:i32 
              #                          temp_40_ret_of_getA_78 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_40_ret_of_getA_78 in mem offset legal
    sw      a0,52(sp)
              #                          a_78 = i32 temp_40_ret_of_getA_78 
              #                    occupy a0 with temp_40_ret_of_getA_78
              #                    occupy a1 with a_78
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void f1_0(a_78) 
              #                    saved register dumping to mem
              #                    store to temp_40_ret_of_getA_78 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_40_ret_of_getA_78
              #                    store to a_78 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with a_78
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_78_0
              #                    load from a_78 in mem


    lw      a0,48(sp)
              #                    arg load ended


    call    f1
              #                           Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                           Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                          new_var temp_41_ret_of_getA_86:i32 
              #                          temp_41_ret_of_getA_86 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_41_ret_of_getA_86 in mem offset legal
    sw      a0,44(sp)
              #                          a_78 = i32 temp_41_ret_of_getA_86 
              #                    occupy a0 with temp_41_ret_of_getA_86
              #                    occupy a1 with a_78
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void f1_0(a_78) 
              #                    saved register dumping to mem
              #                    store to temp_41_ret_of_getA_86 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_41_ret_of_getA_86
              #                    store to a_78 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with a_78
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_78_0
              #                    load from a_78 in mem


    lw      a0,48(sp)
              #                    arg load ended


    call    f1
              #                           Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                           Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                           Call void f1_0(a_57) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_57_0
              #                    load from a_57 in mem


    lw      a0,80(sp)
              #                    arg load ended


    call    f1
              #                           Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                           Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                          jump label: while.head_95 
    j       .while.head_95
              #                    regtab 
              #                          label while.head_95: 
.while.head_95:
              #                          new_var temp_42__1857:i1 
              #                          temp_42__1857 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_42__1857
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_42__1857, label while.body_95, label while.exit_95 
              #                    occupy a2 with temp_42__1857
              #                    free a2
              #                    occupy a2 with temp_42__1857
    bnez    a2, .while.body_95
              #                    free a2
    j       .while.exit_95
              #                    regtab     a2:Freed { symidx: temp_42__1857, tracked: true } | 
              #                          label while.body_95: 
.while.body_95:
              #                          new_var temp_43__1886:i1 
              #                          temp_43__1886 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a3 with temp_43__1886
    xor     a3,a0,a1
    snez    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                          br i1 temp_43__1886, label while.body_98, label while.exit_98 
              #                    occupy a3 with temp_43__1886
              #                    free a3
              #                    occupy a3 with temp_43__1886
    bnez    a3, .while.body_98
              #                    free a3
    j       .while.exit_98
              #                    regtab     a2:Freed { symidx: temp_42__1857, tracked: true } |     a3:Freed { symidx: temp_43__1886, tracked: true } | 
              #                          label while.body_98: 
.while.body_98:
              #                          i_99 = i32 0_0 
              #                    occupy a0 with i_99
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_102 
    j       .while.head_102
              #                    regtab     a0:Freed { symidx: i_99, tracked: true } |     a2:Freed { symidx: temp_42__1857, tracked: true } |     a3:Freed { symidx: temp_43__1886, tracked: true } | 
              #                          label while.head_102: 
.while.head_102:
              #                          new_var temp_44_cmp_101:i1 
              #                          temp_44_cmp_101 = icmp i32 Slt i_99, 3_0 
              #                    occupy a0 with i_99
              #                    occupy a1 with 3_0
    li      a1, 3
              #                    occupy a4 with temp_44_cmp_101
    slt     a4,a0,a1
              #                    free a0
              #                    free a1
              #                    free a4
              #                          br i1 temp_44_cmp_101, label while.body_102, label while.exit_102 
              #                    occupy a4 with temp_44_cmp_101
              #                    free a4
              #                    occupy a4 with temp_44_cmp_101
    bnez    a4, .while.body_102
              #                    free a4
    j       .while.exit_102
              #                    regtab     a0:Freed { symidx: i_99, tracked: true } |     a2:Freed { symidx: temp_42__1857, tracked: true } |     a3:Freed { symidx: temp_43__1886, tracked: true } |     a4:Freed { symidx: temp_44_cmp_101, tracked: true } | 
              #                          label while.body_102: 
.while.body_102:
              #                          new_var temp_45__1984:i1 
              #                          temp_45__1984 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_45__1984
    xor     a6,a1,a5
    snez    a6, a6
              #                    free a1
              #                    free a5
              #                    free a6
              #                          br i1 temp_45__1984, label while.body_105, label while.exit_105 
              #                    occupy a6 with temp_45__1984
              #                    free a6
              #                    occupy a6 with temp_45__1984
    bnez    a6, .while.body_105
              #                    free a6
    j       .while.exit_105
              #                    regtab     a0:Freed { symidx: i_99, tracked: true } |     a2:Freed { symidx: temp_42__1857, tracked: true } |     a3:Freed { symidx: temp_43__1886, tracked: true } |     a4:Freed { symidx: temp_44_cmp_101, tracked: true } |     a6:Freed { symidx: temp_45__1984, tracked: true } | 
              #                          label while.body_105: 
.while.body_105:
              #                          new_var temp_46__2013:i1 
              #                          temp_46__2013 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a7 with temp_46__2013
    xor     a7,a1,a5
    snez    a7, a7
              #                    free a1
              #                    free a5
              #                    free a7
              #                          br i1 temp_46__2013, label branch_true_108, label branch_false_108 
              #                    occupy a7 with temp_46__2013
              #                    free a7
              #                    occupy a7 with temp_46__2013
    bnez    a7, .branch_true_108
              #                    free a7
    j       .branch_false_108
              #                    regtab     a0:Freed { symidx: i_99, tracked: true } |     a2:Freed { symidx: temp_42__1857, tracked: true } |     a3:Freed { symidx: temp_43__1886, tracked: true } |     a4:Freed { symidx: temp_44_cmp_101, tracked: true } |     a6:Freed { symidx: temp_45__1984, tracked: true } |     a7:Freed { symidx: temp_46__2013, tracked: true } | 
              #                          label branch_true_108: 
.branch_true_108:
              #                           Call void f1_0(a_57) 
              #                    saved register dumping to mem
              #                    store to i_99 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_99
              #                    store to temp_42__1857 in mem offset legal
    sb      a2,43(sp)
              #                    release a2 with temp_42__1857
              #                    store to temp_43__1886 in mem offset legal
    sb      a3,42(sp)
              #                    release a3 with temp_43__1886
              #                    store to temp_44_cmp_101 in mem offset legal
    sb      a4,35(sp)
              #                    release a4 with temp_44_cmp_101
              #                    store to temp_45__1984 in mem offset legal
    sb      a6,34(sp)
              #                    release a6 with temp_45__1984
              #                    store to temp_46__2013 in mem offset legal
    sb      a7,33(sp)
              #                    release a7 with temp_46__2013
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_57_0
              #                    load from a_57 in mem


    lw      a0,80(sp)
              #                    arg load ended


    call    f1
              #                           Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                           Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                          jump label: while.exit_105 
              #                    occupy a3 with _anonymous_of_temp_43__1886_0
              #                    load from temp_43__1886 in mem
    lb      a3,42(sp)
              #                    occupy a6 with _anonymous_of_temp_45__1984_0
              #                    load from temp_45__1984 in mem
    lb      a6,34(sp)
              #                    occupy a0 with _anonymous_of_i_99_0
              #                    load from i_99 in mem


    lw      a0,36(sp)
              #                    occupy a4 with _anonymous_of_temp_44_cmp_101_0
              #                    load from temp_44_cmp_101 in mem
    lb      a4,35(sp)
              #                    occupy a2 with _anonymous_of_temp_42__1857_0
              #                    load from temp_42__1857 in mem
    lb      a2,43(sp)
    j       .while.exit_105
              #                    regtab     a0:Freed { symidx: i_99, tracked: true } |     a2:Freed { symidx: temp_42__1857, tracked: true } |     a3:Freed { symidx: temp_43__1886, tracked: true } |     a4:Freed { symidx: temp_44_cmp_101, tracked: true } |     a6:Freed { symidx: temp_45__1984, tracked: true } | 
              #                          label while.exit_105: 
.while.exit_105:
              #                          new_var temp_48_cmp_116:i1 
              #                          temp_48_cmp_116 = icmp i32 Eq i_99, 1_0 
              #                    occupy a0 with i_99
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a5 with temp_48_cmp_116
    xor     a5,a0,a1
    seqz    a5, a5
              #                    free a0
              #                    free a1
              #                    free a5
              #                          br i1 temp_48_cmp_116, label branch_true_117, label branch_false_117 
              #                    occupy a5 with temp_48_cmp_116
              #                    free a5
              #                    occupy a5 with temp_48_cmp_116
    bnez    a5, .branch_true_117
              #                    free a5
    j       .branch_false_117
              #                    regtab     a0:Freed { symidx: i_99, tracked: true } |     a2:Freed { symidx: temp_42__1857, tracked: true } |     a3:Freed { symidx: temp_43__1886, tracked: true } |     a4:Freed { symidx: temp_44_cmp_101, tracked: true } |     a5:Freed { symidx: temp_48_cmp_116, tracked: true } |     a6:Freed { symidx: temp_45__1984, tracked: true } | 
              #                          label branch_true_117: 
.branch_true_117:
              #                          new_var temp_49_ret_of_getA_118:i32 
              #                          temp_49_ret_of_getA_118 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    store to i_99 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_99
              #                    store to temp_42__1857 in mem offset legal
    sb      a2,43(sp)
              #                    release a2 with temp_42__1857
              #                    store to temp_43__1886 in mem offset legal
    sb      a3,42(sp)
              #                    release a3 with temp_43__1886
              #                    store to temp_44_cmp_101 in mem offset legal
    sb      a4,35(sp)
              #                    release a4 with temp_44_cmp_101
              #                    store to temp_48_cmp_116 in mem offset legal
    sb      a5,27(sp)
              #                    release a5 with temp_48_cmp_116
              #                    store to temp_45__1984 in mem offset legal
    sb      a6,34(sp)
              #                    release a6 with temp_45__1984
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_49_ret_of_getA_118 in mem offset legal
    sw      a0,20(sp)
              #                          a_118 = i32 temp_49_ret_of_getA_118 
              #                    occupy a0 with temp_49_ret_of_getA_118
              #                    occupy a1 with a_118
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void f1_0(a_118) 
              #                    saved register dumping to mem
              #                    store to temp_49_ret_of_getA_118 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_49_ret_of_getA_118
              #                    store to a_118 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with a_118
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_118_0
              #                    load from a_118 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    f1
              #                           Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                           Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                          new_var temp_50_arithop_118:i32 
              #                          temp_50_arithop_118 = Add i32 i_99, 1_0 
              #                    occupy a0 with i_99
              #                    load from i_99 in mem


    lw      a0,36(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_50_arithop_118
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_99 = i32 temp_50_arithop_118 
              #                    occupy a2 with temp_50_arithop_118
              #                    occupy a0 with i_99
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.exit_105 
              #                    store to temp_50_arithop_118 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_50_arithop_118
              #                    occupy a3 with _anonymous_of_temp_43__1886_0
              #                    load from temp_43__1886 in mem
    lb      a3,42(sp)
              #                    occupy a6 with _anonymous_of_temp_45__1984_0
              #                    load from temp_45__1984 in mem
    lb      a6,34(sp)
              #                    occupy a4 with _anonymous_of_temp_44_cmp_101_0
              #                    load from temp_44_cmp_101 in mem
    lb      a4,35(sp)
              #                    occupy a2 with _anonymous_of_temp_42__1857_0
              #                    load from temp_42__1857 in mem
    lb      a2,43(sp)
    j       .while.exit_105
              #                    regtab     a0:Freed { symidx: i_99, tracked: true } |     a2:Freed { symidx: temp_42__1857, tracked: true } |     a3:Freed { symidx: temp_43__1886, tracked: true } |     a4:Freed { symidx: temp_44_cmp_101, tracked: true } |     a5:Freed { symidx: temp_48_cmp_116, tracked: true } |     a6:Freed { symidx: temp_45__1984, tracked: true } | 
              #                          label branch_false_117: 
.branch_false_117:
              #                           Call void f1_0(a_57) 
              #                    saved register dumping to mem
              #                    store to i_99 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_99
              #                    store to temp_42__1857 in mem offset legal
    sb      a2,43(sp)
              #                    release a2 with temp_42__1857
              #                    store to temp_43__1886 in mem offset legal
    sb      a3,42(sp)
              #                    release a3 with temp_43__1886
              #                    store to temp_44_cmp_101 in mem offset legal
    sb      a4,35(sp)
              #                    release a4 with temp_44_cmp_101
              #                    store to temp_48_cmp_116 in mem offset legal
    sb      a5,27(sp)
              #                    release a5 with temp_48_cmp_116
              #                    store to temp_45__1984 in mem offset legal
    sb      a6,34(sp)
              #                    release a6 with temp_45__1984
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_57_0
              #                    load from a_57 in mem


    lw      a0,80(sp)
              #                    arg load ended


    call    f1
              #                           Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                           Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                    regtab 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_51_ret_of_getA_115:i32 
              #                          temp_51_ret_of_getA_115 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_51_ret_of_getA_115 in mem offset legal
    sw      a0,8(sp)
              #                          a_57 = i32 temp_51_ret_of_getA_115 
              #                    occupy a0 with temp_51_ret_of_getA_115
              #                    occupy a1 with a_57
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_52_arithop_103:i32 
              #                          temp_52_arithop_103 = Add i32 i_99, 1_0 
              #                    occupy a2 with i_99
              #                    load from i_99 in mem


    lw      a2,36(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_52_arithop_103
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_99 = i32 temp_52_arithop_103 
              #                    occupy a4 with temp_52_arithop_103
              #                    occupy a2 with i_99
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_102 
              #                    store to temp_51_ret_of_getA_115 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_51_ret_of_getA_115
              #                    store to temp_52_arithop_103 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_52_arithop_103
              #                    store to a_57 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with a_57
              #                    store to i_99 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_99
              #                    occupy a3 with _anonymous_of_temp_43__1886_0
              #                    load from temp_43__1886 in mem
    lb      a3,42(sp)
              #                    occupy a0 with _anonymous_of_i_99_0
              #                    load from i_99 in mem


    lw      a0,36(sp)
              #                    occupy a2 with _anonymous_of_temp_42__1857_0
              #                    load from temp_42__1857 in mem
    lb      a2,43(sp)
    j       .while.head_102
              #                    regtab     a0:Freed { symidx: i_99, tracked: true } |     a2:Freed { symidx: temp_42__1857, tracked: true } |     a3:Freed { symidx: temp_43__1886, tracked: true } |     a4:Freed { symidx: temp_44_cmp_101, tracked: true } |     a6:Freed { symidx: temp_45__1984, tracked: true } |     a7:Freed { symidx: temp_46__2013, tracked: true } | 
              #                          label branch_false_108: 
.branch_false_108:
              #                    regtab     a0:Freed { symidx: i_99, tracked: true } |     a2:Freed { symidx: temp_42__1857, tracked: true } |     a3:Freed { symidx: temp_43__1886, tracked: true } |     a4:Freed { symidx: temp_44_cmp_101, tracked: true } |     a6:Freed { symidx: temp_45__1984, tracked: true } |     a7:Freed { symidx: temp_46__2013, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_47_ret_of_getA_106:i32 
              #                          temp_47_ret_of_getA_106 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    store to i_99 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_99
              #                    store to temp_42__1857 in mem offset legal
    sb      a2,43(sp)
              #                    release a2 with temp_42__1857
              #                    store to temp_43__1886 in mem offset legal
    sb      a3,42(sp)
              #                    release a3 with temp_43__1886
              #                    store to temp_44_cmp_101 in mem offset legal
    sb      a4,35(sp)
              #                    release a4 with temp_44_cmp_101
              #                    store to temp_45__1984 in mem offset legal
    sb      a6,34(sp)
              #                    release a6 with temp_45__1984
              #                    store to temp_46__2013 in mem offset legal
    sb      a7,33(sp)
              #                    release a7 with temp_46__2013
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                    store to temp_47_ret_of_getA_106 in mem offset legal
    sw      a0,28(sp)
              #                          a_57 = i32 temp_47_ret_of_getA_106 
              #                    occupy a0 with temp_47_ret_of_getA_106
              #                    occupy a1 with a_57
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.body_102 
              #                    store to temp_47_ret_of_getA_106 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_47_ret_of_getA_106
              #                    store to a_57 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with a_57
              #                    occupy a3 with _anonymous_of_temp_43__1886_0
              #                    load from temp_43__1886 in mem
    lb      a3,42(sp)
              #                    occupy a0 with _anonymous_of_i_99_0
              #                    load from i_99 in mem


    lw      a0,36(sp)
              #                    occupy a4 with _anonymous_of_temp_44_cmp_101_0
              #                    load from temp_44_cmp_101 in mem
    lb      a4,35(sp)
              #                    occupy a2 with _anonymous_of_temp_42__1857_0
              #                    load from temp_42__1857 in mem
    lb      a2,43(sp)
    j       .while.body_102
              #                    regtab     a0:Freed { symidx: i_99, tracked: true } |     a2:Freed { symidx: temp_42__1857, tracked: true } |     a3:Freed { symidx: temp_43__1886, tracked: true } |     a4:Freed { symidx: temp_44_cmp_101, tracked: true } | 
              #                          label while.exit_102: 
.while.exit_102:
              #                          jump label: while.exit_102 
    j       .while.exit_102
              #                    regtab     a2:Freed { symidx: temp_42__1857, tracked: true } |     a3:Freed { symidx: temp_43__1886, tracked: true } | 
              #                          label while.exit_98: 
.while.exit_98:
              #                          jump label: while.exit_98 
    j       .while.exit_98
              #                    regtab     a2:Freed { symidx: temp_42__1857, tracked: true } | 
              #                          label while.exit_95: 
.while.exit_95:
              #                          new_var temp_53_ptr2globl_57:i32 
              #                          temp_53_ptr2globl_57 = load *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a1 with temp_53_ptr2globl_57
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                           Call void putint_0(temp_53_ptr2globl_57) 
              #                    saved register dumping to mem
              #                    store to temp_53_ptr2globl_57 in mem offset legal
    sw      a1,0(sp)
              #                    release a1 with temp_53_ptr2globl_57
              #                    store to temp_42__1857 in mem offset legal
    sb      a2,43(sp)
              #                    release a2 with temp_42__1857
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_53_ptr2globl_57_0
              #                    load from temp_53_ptr2globl_57 in mem


    lw      a0,0(sp)
              #                    arg load ended


    call    putint
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,112(sp)
              #                    load from s0_main_0 in mem
    ld      s0,104(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,120
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl count
              #                          global i32 count_0 
    .type count,@object
count:
    .word 0
    .align 4
    .globl sum
              #                          global i32 sum_0 
    .type sum,@object
sum:
    .word 0
    .align 4
    .globl a
              #                          global i32 a_0 
    .type a,@object
a:
    .word 0
