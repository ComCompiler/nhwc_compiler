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
              #                    mem layout:|ra_main:8 at 72|s0_main:8 at 64|temp_0_ptr2globl:4 at 60|temp_1_cmp:1 at 59|none:3 at 56|temp_2_ptr2globl:4 at 52|temp_3_arithop:4 at 48|k:4 at 44|temp_4_cmp:1 at 43|none:3 at 40|temp_5_arithop:4 at 36|temp_6_cmp:1 at 35|none:3 at 32|g:4 at 28|l:4 at 24|temp_7_arithop:4 at 20|g:4 at 16|temp_8_arithop:4 at 12|temp_9_arithop:4 at 8|temp_10_ptr2globl:4 at 4|none:4 at 0
    addi    sp,sp,-80
              #                    store to ra_main_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          alloc i32 temp_0_ptr2globl_20 
              #                          alloc i1 temp_1_cmp_20 
              #                          alloc i32 temp_2_ptr2globl_22 
              #                          alloc i32 temp_3_arithop_22 
              #                          alloc i32 k_22 
              #                          alloc i1 temp_4_cmp_25 
              #                          alloc i32 temp_5_arithop_27 
              #                          alloc i1 temp_6_cmp_29 
              #                          alloc i32 g_31 
              #                          alloc i32 l_33 
              #                          alloc i32 temp_7_arithop_35 
              #                          alloc i32 g_35 
              #                          alloc i32 temp_8_arithop_35 
              #                          alloc i32 temp_9_arithop_35 
              #                          alloc i32 temp_10_ptr2globl_18 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          store 3389_0:i32 *k_0:ptr->i32 
              #                    occupy a0 with *k_0
              #                       load label k as ptr to reg
    la      a0, k
              #                    occupy reg a0 with *k_0
              #                    occupy a1 with 3389_0
    li      a1, 3389
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_0_ptr2globl_20:i32 
              #                          temp_0_ptr2globl_20 = load *k_0:ptr->i32 
              #                    occupy a0 with *k_0
              #                       load label k as ptr to reg
    la      a0, k
              #                    occupy reg a0 with *k_0
              #                    occupy a1 with temp_0_ptr2globl_20
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_1_cmp_20:i1 
              #                          temp_1_cmp_20 = icmp i32 Slt temp_0_ptr2globl_20, 10000_0 
              #                    occupy a1 with temp_0_ptr2globl_20
              #                    occupy a2 with 10000_0
    li      a2, 10000
              #                    occupy a3 with temp_1_cmp_20
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_1_cmp_20, label branch_true_21, label branch_false_21 
              #                    occupy a3 with temp_1_cmp_20
              #                    free a3
              #                    occupy a3 with temp_1_cmp_20
    bnez    a3, .branch_true_21
              #                    free a3
    j       .branch_false_21
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a3:Freed { symidx: temp_1_cmp_20, tracked: true } | 
              #                          label branch_true_21: 
.branch_true_21:
              #                          new_var temp_2_ptr2globl_22:i32 
              #                          temp_2_ptr2globl_22 = load *k_0:ptr->i32 
              #                    occupy a0 with *k_0
              #                       load label k as ptr to reg
    la      a0, k
              #                    occupy reg a0 with *k_0
              #                    occupy a2 with temp_2_ptr2globl_22
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_3_arithop_22:i32 
              #                          temp_3_arithop_22 = Add i32 temp_2_ptr2globl_22, 1_0 
              #                    occupy a2 with temp_2_ptr2globl_22
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_3_arithop_22
    add     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          store temp_3_arithop_22:i32 *k_0:ptr->i32 
              #                    occupy a6 with *k_0
              #                       load label k as ptr to reg
    la      a6, k
              #                    occupy reg a6 with *k_0
              #                    occupy a5 with temp_3_arithop_22
    sw      a5,0(a6)
              #                    free a5
              #                    free a6
              #                          k_22 = i32 112_0 
              #                    occupy a7 with k_22
    li      a7, 112
              #                    free a7
              #                          jump label: while.head_26 
    j       .while.head_26
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_22, tracked: true } |     a3:Freed { symidx: temp_1_cmp_20, tracked: true } |     a5:Freed { symidx: temp_3_arithop_22, tracked: true } |     a7:Freed { symidx: k_22, tracked: true } | 
              #                          label while.head_26: 
.while.head_26:
              #                          new_var temp_4_cmp_25:i1 
              #                          temp_4_cmp_25 = icmp i32 Sgt k_22, 10_0 
              #                    occupy a7 with k_22
              #                    occupy a0 with 10_0
    li      a0, 10
              #                    occupy a4 with temp_4_cmp_25
    slt     a4,a0,a7
              #                    free a7
              #                    free a0
              #                    free a4
              #                          br i1 temp_4_cmp_25, label while.body_26, label while.exit_26 
              #                    occupy a4 with temp_4_cmp_25
              #                    free a4
              #                    occupy a4 with temp_4_cmp_25
    bnez    a4, .while.body_26
              #                    free a4
    j       .while.exit_26
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_22, tracked: true } |     a3:Freed { symidx: temp_1_cmp_20, tracked: true } |     a4:Freed { symidx: temp_4_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_arithop_22, tracked: true } |     a7:Freed { symidx: k_22, tracked: true } | 
              #                          label while.body_26: 
.while.body_26:
              #                          new_var temp_5_arithop_27:i32 
              #                          temp_5_arithop_27 = Sub i32 k_22, 88_0 
              #                    occupy a7 with k_22
              #                    occupy a0 with 88_0
    li      a0, 88
              #                    occupy a6 with temp_5_arithop_27
              #                    regtab:    a0:Occupied { symidx: 88_0, tracked: false, occupy_count: 1 } |     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_22, tracked: true } |     a3:Freed { symidx: temp_1_cmp_20, tracked: true } |     a4:Freed { symidx: temp_4_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_arithop_22, tracked: true } |     a6:Occupied { symidx: temp_5_arithop_27, tracked: true, occupy_count: 1 } |     a7:Occupied { symidx: k_22, tracked: true, occupy_count: 1 } | 


    sub     a6,a7,a0
              #                    free a7
              #                    free a0
              #                    free a6
              #                          k_22 = i32 temp_5_arithop_27 
              #                    occupy a6 with temp_5_arithop_27
              #                    occupy a7 with k_22
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_22, tracked: true } |     a3:Freed { symidx: temp_1_cmp_20, tracked: true } |     a4:Freed { symidx: temp_4_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_arithop_22, tracked: true } |     a6:Freed { symidx: temp_5_arithop_27, tracked: true } |     a7:Freed { symidx: k_22, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_6_cmp_29:i1 
              #                          temp_6_cmp_29 = icmp i32 Slt k_22, 1000_0 
              #                    occupy a7 with k_22
              #                    occupy a0 with 1000_0
    li      a0, 1000
              #                    occupy s1 with temp_6_cmp_29
    slt     s1,a7,a0
              #                    free a7
              #                    free a0
              #                    free s1
              #                          br i1 temp_6_cmp_29, label branch_true_30, label branch_false_30 
              #                    occupy s1 with temp_6_cmp_29
              #                    free s1
              #                    occupy s1 with temp_6_cmp_29
    bnez    s1, .branch_true_30
              #                    free s1
    j       .branch_false_30
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_22, tracked: true } |     a3:Freed { symidx: temp_1_cmp_20, tracked: true } |     a4:Freed { symidx: temp_4_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_arithop_22, tracked: true } |     a6:Freed { symidx: temp_5_arithop_27, tracked: true } |     a7:Freed { symidx: k_22, tracked: true } |     s1:Freed { symidx: temp_6_cmp_29, tracked: true } | 
              #                          label branch_true_30: 
.branch_true_30:
              #                          g_31 = i32 9_0 
              #                    occupy a0 with g_31
    li      a0, 9
              #                    free a0
              #                          l_33 = i32 11_0 
              #                    occupy s2 with l_33
    li      s2, 11
              #                    free s2
              #                          g_31 = i32 10_0 
              #                    occupy a0 with g_31
    li      a0, 10
              #                    free a0
              #                          new_var temp_7_arithop_35:i32 
              #                          temp_7_arithop_35 = Sub i32 k_22, g_31 
              #                    occupy a7 with k_22
              #                    occupy a0 with g_31
              #                    occupy s3 with temp_7_arithop_35
              #                    regtab:    a0:Occupied { symidx: g_31, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_22, tracked: true } |     a3:Freed { symidx: temp_1_cmp_20, tracked: true } |     a4:Freed { symidx: temp_4_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_arithop_22, tracked: true } |     a6:Freed { symidx: temp_5_arithop_27, tracked: true } |     a7:Occupied { symidx: k_22, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_6_cmp_29, tracked: true } |     s2:Freed { symidx: l_33, tracked: true } |     s3:Occupied { symidx: temp_7_arithop_35, tracked: true, occupy_count: 1 } | 


    sub     s3,a7,a0
              #                    free a7
              #                    free a0
              #                    free s3
              #                          k_22 = i32 temp_7_arithop_35 
              #                    occupy s3 with temp_7_arithop_35
              #                    occupy a7 with k_22
    mv      a7, s3
              #                    free s3
              #                    free a7
              #                          g_35 = i32 11_0 
              #                    occupy s4 with g_35
    li      s4, 11
              #                    free s4
              #                          new_var temp_8_arithop_35:i32 
              #                          temp_8_arithop_35 = Add i32 k_22, g_35 
              #                    occupy a7 with k_22
              #                    occupy s4 with g_35
              #                    occupy s5 with temp_8_arithop_35
    add     s5,a7,s4
              #                    free a7
              #                    free s4
              #                    free s5
              #                          new_var temp_9_arithop_35:i32 
              #                          temp_9_arithop_35 = Add i32 temp_8_arithop_35, l_33 
              #                    occupy s5 with temp_8_arithop_35
              #                    occupy s2 with l_33
              #                    occupy s6 with temp_9_arithop_35
    add     s6,s5,s2
              #                    free s5
              #                    free s2
              #                    free s6
              #                          k_22 = i32 temp_9_arithop_35 
              #                    occupy s6 with temp_9_arithop_35
              #                    occupy a7 with k_22
    mv      a7, s6
              #                    free s6
              #                    free a7
              #                          jump label: branch_false_30 
              #                    store to l_33 in mem offset legal
    sw      s2,24(sp)
              #                    release s2 with l_33
              #                    store to g_35 in mem offset legal
    sw      s4,16(sp)
              #                    release s4 with g_35
              #                    store to g_31 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with g_31
              #                    store to temp_7_arithop_35 in mem offset legal
    sw      s3,20(sp)
              #                    release s3 with temp_7_arithop_35
              #                    store to temp_9_arithop_35 in mem offset legal
    sw      s6,8(sp)
              #                    release s6 with temp_9_arithop_35
              #                    store to temp_8_arithop_35 in mem offset legal
    sw      s5,12(sp)
              #                    release s5 with temp_8_arithop_35
    j       .branch_false_30
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_22, tracked: true } |     a3:Freed { symidx: temp_1_cmp_20, tracked: true } |     a4:Freed { symidx: temp_4_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_arithop_22, tracked: true } |     a6:Freed { symidx: temp_5_arithop_27, tracked: true } |     a7:Freed { symidx: k_22, tracked: true } |     s1:Freed { symidx: temp_6_cmp_29, tracked: true } | 
              #                          label branch_false_30: 
.branch_false_30:
              #                          jump label: while.head_26 
              #                    store to temp_5_arithop_27 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with temp_5_arithop_27
              #                    store to temp_6_cmp_29 in mem offset legal
    sb      s1,35(sp)
              #                    release s1 with temp_6_cmp_29
              #                    store to temp_4_cmp_25 in mem offset legal
    sb      a4,43(sp)
              #                    release a4 with temp_4_cmp_25
    j       .while.head_26
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_22, tracked: true } |     a3:Freed { symidx: temp_1_cmp_20, tracked: true } |     a4:Freed { symidx: temp_4_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_arithop_22, tracked: true } |     a7:Freed { symidx: k_22, tracked: true } | 
              #                          label while.exit_26: 
.while.exit_26:
              #                           Call void putint_0(k_22) 
              #                    saved register dumping to mem
              #                    store to temp_0_ptr2globl_20 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with temp_0_ptr2globl_20
              #                    store to temp_2_ptr2globl_22 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_2_ptr2globl_22
              #                    store to temp_1_cmp_20 in mem offset legal
    sb      a3,59(sp)
              #                    release a3 with temp_1_cmp_20
              #                    store to temp_4_cmp_25 in mem offset legal
    sb      a4,43(sp)
              #                    release a4 with temp_4_cmp_25
              #                    store to temp_3_arithop_22 in mem offset legal
    sw      a5,48(sp)
              #                    release a5 with temp_3_arithop_22
              #                    store to k_22 in mem offset legal
    sw      a7,44(sp)
              #                    release a7 with k_22
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_k_22_0
              #                    load from k_22 in mem


    lw      a0,44(sp)
              #                    arg load ended


    call    putint
              #                          jump label: branch_false_21 
              #                    occupy a3 with _anonymous_of_temp_1_cmp_20_0
              #                    load from temp_1_cmp_20 in mem
    lb      a3,59(sp)
              #                    occupy a1 with _anonymous_of_temp_0_ptr2globl_20_0
              #                    load from temp_0_ptr2globl_20 in mem


    lw      a1,60(sp)
    j       .branch_false_21
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a3:Freed { symidx: temp_1_cmp_20, tracked: true } | 
              #                          label branch_false_21: 
.branch_false_21:
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a3:Freed { symidx: temp_1_cmp_20, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_10_ptr2globl_18:i32 
              #                          temp_10_ptr2globl_18 = load *k_0:ptr->i32 
              #                    occupy a0 with *k_0
              #                       load label k as ptr to reg
    la      a0, k
              #                    occupy reg a0 with *k_0
              #                    occupy a2 with temp_10_ptr2globl_18
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          ret temp_10_ptr2globl_18 
              #                    load from ra_main_0 in mem
    ld      ra,72(sp)
              #                    load from s0_main_0 in mem
    ld      s0,64(sp)
              #                    store to temp_10_ptr2globl_18 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_10_ptr2globl_18
              #                    occupy a0 with temp_10_ptr2globl_18
              #                    load from temp_10_ptr2globl_18 in mem


    lw      a0,4(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_20, tracked: true } |     a3:Freed { symidx: temp_1_cmp_20, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl k
              #                          global i32 k_0 
    .type k,@object
k:
    .word 0
